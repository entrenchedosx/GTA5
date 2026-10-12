"""Stage an explicit public asset catalogue for unmetered Workers Static Assets.

Never scans the original world-data tree, credentials, caches or saves. Original
archives and the oversized WASM stay in private R2 behind the existing Worker.
Use a fresh output directory; old versions remain available for rollback.
"""
import argparse
import hashlib
import json
import re
import shutil
from pathlib import Path

MAX_FILE = 25 * 1048576
MAX_FILES = 20000
HEADERS = '''/*
  Cross-Origin-Opener-Policy: same-origin
  Cross-Origin-Embedder-Policy: require-corp
  Cross-Origin-Resource-Policy: same-origin
  X-Game-Delivery: static

/
  Cache-Control: no-cache
/index.html
  Cache-Control: no-cache
/cpu-renderer-check.html
  Cache-Control: no-cache
/cpu-renderer-check
  Cache-Control: no-cache
/data/manifest.json
  Cache-Control: no-cache
/data/delivery.json
  Cache-Control: no-cache
/runtime/*
  Cache-Control: public, max-age=31536000, immutable, no-transform
/data/packs/*
  Cache-Control: public, max-age=31536000, immutable, no-transform
/radio/*
  Cache-Control: public, max-age=31536000, immutable, no-transform
/b/8b0b5899ed/shaders/pack*
  Cache-Control: public, max-age=31536000, immutable, no-transform
'''


def sha(file):
    with file.open('rb') as source:
        return hashlib.file_digest(source, 'sha256').hexdigest()


def select(root, site, packs, radio=None):
    selected = {}
    def add(url, file):
        if not file.is_file() or file.is_symlink() or file.stat().st_size > MAX_FILE:
            raise ValueError(f'Missing, linked or oversized asset: {url}')
        if url in selected and sha(selected[url]) != sha(file):
            raise ValueError(f'Conflicting asset: {url}')
        selected[url] = file

    add('/index.html', site / 'site/index.html')
    if (site / 'site/cpu-renderer-check.html').is_file():
        add('/cpu-renderer-check.html', site / 'site/cpu-renderer-check.html')
    page = selected['/index.html'].read_text(encoding='utf-8')
    runtime = re.search(r'const RUNTIME = "(/runtime/[a-f0-9]{64})";', page)
    if not runtime:
        raise ValueError('Prepare a content-addressed site first')
    runtime = runtime[1]
    scripts = sorted((site / ('site' + runtime)).glob('*.js'))
    digest = hashlib.sha256()
    for file in scripts:
        digest.update(file.name.encode() + b'\0' + file.read_bytes())
        add(runtime + '/' + file.name, file)
    if digest.hexdigest() != runtime.rsplit('/', 1)[1]:
        raise ValueError('Runtime fingerprint mismatch')

    data = root / 'mirror/playgta5.com/data'
    for name in ['manifest.json', 'bootset.json', 'bootset_low.json']:
        add('/data/' + name, data / name)
    add('/data/delivery.json', packs / 'delivery.json')
    pointer = json.loads((packs / 'delivery.json').read_text())
    index_url = pointer.get('index', '')
    match = re.fullmatch(r'/data/packs/index-([a-f0-9]{64})\.json', index_url)
    if not match:
        raise ValueError('Invalid pack pointer')
    index_file = packs / Path(index_url).name
    if sha(index_file) != match[1]:
        raise ValueError('Pack index hash mismatch')
    index = json.loads(index_file.read_text())
    manifest = json.loads((data / 'manifest.json').read_text())
    if index['dataVersion'] != str(manifest['version']) or pointer['dataVersion'] != index['dataVersion']:
        raise ValueError('Pack catalogue and installed data versions differ')
    fingerprint = hashlib.sha256(json.dumps([[f[0], f[1]] for f in manifest['files']], separators=(',', ':'), ensure_ascii=False).encode()).hexdigest()
    if index.get('fileFingerprint') != fingerprint:
        raise ValueError('Pack file catalogue fingerprint mismatch')
    add(index_url, index_file)
    for profile in index['profiles'].values():
        for pack in profile:
            url = pack['url']
            if not re.fullmatch(r'/data/packs/[a-f0-9]{64}\.bin', url) or Path(url).stem != pack['sha256']:
                raise ValueError('Invalid pack path/hash')
            file = packs / Path(url).name
            if file.stat().st_size != pack['encodedBytes'] or sha(file) != pack['sha256']:
                raise ValueError('Pack bytes differ from index')
            add(url, file)

    shaders = root / 'mirror/playgta5.com/b/8b0b5899ed/shaders'
    for file in sorted(shaders.iterdir()):
        if not file.is_file() or file.suffix not in ['.wgsl', '.json', '.bin']:
            continue
        if file.suffix == '.bin':
            match = re.fullmatch(r'pack\d+\.([a-f0-9]{8})\.bin', file.name)
            with file.open('rb') as source:
                digest = hashlib.file_digest(source, 'sha1').hexdigest()
            if not match or digest[:8] != match[1]:
                raise ValueError('Shader pack fingerprint mismatch')
        add('/b/8b0b5899ed/shaders/' + file.name, file)
    for folder in [site / 'site/radio', radio]:
        if folder is None or not folder.is_dir():
            continue
        for file in folder.rglob('*'):
            # Audio retains the private-R2 handler's tested Range/If-Range path.
            # Static Assets may ignore Range and return the complete file.
            if not file.is_file() or file.suffix != '.svg':
                continue
            relative = file.relative_to(folder).as_posix()
            match = re.fullmatch(r'(?:audio/)?[a-z0-9-]+\.([a-f0-9]{16})\.(svg|mp3)', relative)
            if not match or sha(file)[:16] != match[1]:
                raise ValueError('Radio asset fingerprint mismatch')
            add('/radio/' + relative, file)
    if len(selected) > MAX_FILES:
        raise ValueError('Static asset file limit exceeded')
    return selected


def build(root, site, packs, output, record, radio=None):
    selected = select(root, site, packs, radio)
    manifest = json.loads(selected['/data/manifest.json'].read_text())
    pointer = json.loads(selected['/data/delivery.json'].read_text())
    catalogue = json.loads(selected[pointer['index']].read_text())
    bootstrap = json.dumps({'schema':1,'manifest':manifest,'index':catalogue}, separators=(',', ':'), ensure_ascii=False).encode()
    if len(bootstrap) > 4 * 1048576:
        raise ValueError('Combined startup metadata exceeds client bound')
    bootstrap_url = '/data/packs/bootstrap-' + hashlib.sha256(bootstrap).hexdigest() + '.json'
    if len(selected) + 1 > MAX_FILES:
        raise ValueError('Static asset file limit exceeded')
    page = selected['/index.html'].read_text(encoding='utf-8')
    if "const DATA_BOOTSTRAP = '';" not in page:
        raise ValueError('Client lacks the bootstrap URL placeholder')
    page = page.replace("const DATA_BOOTSTRAP = '';", 'const DATA_BOOTSTRAP = ' + json.dumps(bootstrap_url) + ';')
    # Validate the whole selection before creating any output. Copy only explicit
    # client paths, never a recursive copy of the project or private game data.
    if output.exists():
        raise ValueError('Use a fresh output directory; preserve the previous stage for rollback')
    output.mkdir(parents=True)
    entries = []
    for url, file in sorted(selected.items()):
        target = output / url.lstrip('/')
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(file, target)
        if url == '/index.html':
            target.write_text(page, encoding='utf-8')
        entries.append({'url':url,'bytes':target.stat().st_size,'sha256':sha(target)})
    target = output / bootstrap_url.lstrip('/')
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_bytes(bootstrap)
    entries.append({'url':bootstrap_url,'bytes':len(bootstrap),'sha256':sha(target)})
    (output / '_headers').write_text(HEADERS, encoding='utf-8')
    report = {'files':len(entries),'bytes':sum(x['bytes'] for x in entries),'bootstrap':bootstrap_url,
              'maximumBytes':max(x['bytes'] for x in entries),'entries':entries}
    record.parent.mkdir(parents=True, exist_ok=True)
    record.write_text(json.dumps(report, indent=2), encoding='utf-8')
    print(json.dumps({k:report[k] for k in ['files','bytes','maximumBytes']}))
    return report


if __name__ == '__main__':
    root = Path(__file__).resolve().parent.parent
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--site', type=Path, required=True)
    parser.add_argument('--packs', type=Path, required=True)
    parser.add_argument('--radio', type=Path)
    parser.add_argument('--output', type=Path, default=root / '.downloads/static-public')
    parser.add_argument('--record', type=Path, default=root / '.downloads/static-assets-plan.json')
    args = parser.parse_args()
    build(root, args.site, args.packs, args.output, args.record, args.radio)
