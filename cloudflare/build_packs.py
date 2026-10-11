"""Deterministic bounded packs of recorded boot reads. Originals are read only."""
import argparse
import gzip
import hashlib
import json
import re
from pathlib import Path

BS = 4096
PACK_BYTES = 8 * 1024 * 1024
COMPRESSIBLE = re.compile(r'\.(fxc|meta|xml|dat|ymt|txt|csv|gfx|json|sps|cfg)$', re.I)

def encoded(value):
    return json.dumps(value, separators=(',', ':'), ensure_ascii=False).encode()

def fingerprint(files):
    return hashlib.sha256(encoded([[f[0], f[1]] for f in files])).hexdigest()

def planned_runs(manifest, bootset):
    lookup = {f[0]: (i, f[1]) for i, f in enumerate(manifest['files'])}
    for path, ranges in bootset:
        if path not in lookup:
            continue
        fid, size = lookup[path]
        if not size:
            continue
        last = (size + BS - 1) // BS - 1
        if COMPRESSIBLE.search(path) and size <= PACK_BYTES:
            selected = [[0, last]]
        else:
            selected = []
            for x, y in sorted(ranges):
                a, b = x // BS, min(y // BS, last)
                if a > b:
                    continue
                if selected and a <= selected[-1][1] + 64:
                    selected[-1][1] = max(b, selected[-1][1])
                else:
                    selected.append([a, b])
        for a, b in selected:
            yield fid, a * BS, min(size, (b + 1) * BS) - a * BS

def subtract_runs(runs, covered):
    """Remove already packed blocks without expanding the world into a block map."""
    by_file = {}
    for fid, start, length in covered:
        by_file.setdefault(fid, []).append((start, start + length))
    for spans in by_file.values(): spans.sort()
    for fid, start, length in runs:
        end, cursor = start + length, start
        for a, b in by_file.get(fid, []):
            if b <= cursor: continue
            if a >= end: break
            if a > cursor: yield fid, cursor, a - cursor
            cursor = max(cursor, b)
            if cursor >= end: break
        if cursor < end: yield fid, cursor, end - cursor

def build(data, output, pack_bytes=PACK_BYTES, demand_reads=None):
    if pack_bytes < BS or pack_bytes > PACK_BYTES or pack_bytes % BS:
        raise ValueError('Pack bound must be a multiple of 4096, at most 8 MiB')
    manifest = json.loads((data / 'manifest.json').read_text())
    if demand_reads and str(demand_reads['dataVersion']) != str(manifest['version']):
        raise ValueError('Demand-read plan belongs to another data version')
    output.mkdir(parents=True, exist_ok=True)
    result = {'schema': 1, 'dataVersion': str(manifest['version']),
              'fileFingerprint': fingerprint(manifest['files']), 'profiles': {}}
    for name in ['bootset.json', 'bootset_low.json']:
        bootset = json.loads((data / name).read_text())
        boot_runs = list(planned_runs(manifest, bootset))
        # Measured normal-graphics footprints of both maps. Low-memory startup
        # remains its original recorded set; ordinary range fallback still works.
        extra_runs = list(subtract_runs(planned_runs(manifest, demand_reads['reads']), boot_runs)) if demand_reads and name == 'bootset.json' else []
        phases = [(True, boot_runs), (False, extra_runs)]
        # Append measured coverage in separate phases: previously published pack
        # boundaries/hashes stay intact, and repeated traces cannot duplicate blocks.
        covered = boot_runs + extra_runs
        for extension in (demand_reads.get('extensions', []) if demand_reads and name == 'bootset.json' else []):
            if str(extension.get('dataVersion')) != str(manifest['version']):
                raise ValueError('Demand extension belongs to another data version')
            runs = list(subtract_runs(planned_runs(manifest, extension['reads']), covered))
            phases.append((False, runs))
            covered.extend(runs)
        packs, payload, slices = [], bytearray(), []
        def flush():
            if not payload:
                return
            compressed = gzip.compress(bytes(payload), compresslevel=3, mtime=0)
            sha = hashlib.sha256(compressed).hexdigest()
            target = output / (sha + '.bin')
            if target.exists():
                if hashlib.sha256(target.read_bytes()).hexdigest() != sha:
                    raise ValueError('Corrupt generated pack: ' + target.name)
            else:
                partial = target.with_suffix('.bin.partial')
                partial.write_bytes(compressed)
                partial.replace(target)
            descriptor = {'url': '/data/packs/' + target.name, 'encodedBytes': len(compressed),
                          'bytes': len(payload), 'sha256': sha,
                          'decodedSha256': hashlib.sha256(payload).hexdigest(), 'runs': list(slices)}
            if not prefetch: descriptor['prefetch'] = False
            packs.append(descriptor)
            payload.clear()
            slices.clear()
        for prefetch, selected_runs in phases:
            for fid, start, length in selected_runs:
                path, size = manifest['files'][fid][:2]
                source = (data / path).resolve()
                if not source.is_relative_to(data.resolve()) or source.stat().st_size != size:
                    raise ValueError('Missing/changed source: ' + path)
                with source.open('rb') as stream:
                    stream.seek(start)
                    while length:
                        n = min(length, pack_bytes - len(payload))
                        # Split inside a file only at a file block boundary.
                        if n < length: n -= n % BS
                        if not n: flush(); continue
                        part = stream.read(n)
                        if len(part) != n: raise ValueError('Short source: ' + path)
                        slices.append([fid, start, n, len(payload)])
                        payload.extend(part)
                        start += n
                        length -= n
                        if len(payload) >= pack_bytes or pack_bytes - len(payload) < BS: flush()
            flush()
        result['profiles'][name] = packs
    body = encoded(result)
    target = output / ('index-' + hashlib.sha256(body).hexdigest() + '.json')
    target.write_bytes(body)
    (output / 'delivery.json').write_bytes(encoded({'schema': 1,
        'index': '/data/packs/' + target.name, 'dataVersion': str(manifest['version'])}))
    print(json.dumps({'index': target.name, 'profiles': {name: {
        'packs': len(packs), 'encodedBytes': sum(p['encodedBytes'] for p in packs),
        'startupPacks': sum(p.get('prefetch', True) for p in packs),
        'decodedBytes': sum(p['bytes'] for p in packs)} for name, packs in result['profiles'].items()},
        'uniquePacks': len({p['sha256'] for packs in result['profiles'].values() for p in packs})}))
    return result, target

if __name__ == '__main__':
    root = Path(__file__).resolve().parent.parent
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--data', type=Path, default=root / 'mirror/playgta5.com/data')
    parser.add_argument('--output', type=Path, default=root / '.downloads/delivery-packs')
    parser.add_argument('--demand-reads', type=Path, default=root / 'cloudflare/demand-reads.json')
    args = parser.parse_args()
    reads = json.loads(args.demand_reads.read_text()) if args.demand_reads.is_file() else None
    build(args.data, args.output, demand_reads=reads)
