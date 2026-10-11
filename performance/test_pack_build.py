"""Determinism, coverage, bounded sizes and original-file preservation."""
import gzip
import hashlib
import importlib.util
import json
from pathlib import Path
import tempfile
root = Path(__file__).resolve().parent.parent
spec = importlib.util.spec_from_file_location('pack_builder', root / 'cloudflare/build_packs.py')
builder = importlib.util.module_from_spec(spec)
spec.loader.exec_module(builder)
with tempfile.TemporaryDirectory() as temporary:
    base = Path(temporary); data = base / 'data'; data.mkdir()
    sources = {'a.rpf': bytes(range(256)) * 256, 'b.meta': b'original metadata' * 1001,
               'c.rpf': b'abcdef' * 1700}
    manifest = {'version': 'test-1', 'files': [[p, len(b)] for p, b in sources.items()]}
    (data / 'manifest.json').write_text(json.dumps(manifest))
    boot = [['a.rpf', [[0, 8191], [4096, 16383]]], ['b.meta', [[0, 7]]], ['c.rpf', [[0, 10199]]]]
    for name in ['bootset.json', 'bootset_low.json']:
        (data / name).write_text(json.dumps(boot))
    for p, body in sources.items(): (data / p).write_bytes(body)
    before = {p.name: p.read_bytes() for p in data.iterdir()}
    first, index = builder.build(data, base / 'first', 8192)
    second, index2 = builder.build(data, base / 'second', 8192)
    assert index.name == index2.name and index.read_bytes() == index2.read_bytes()
    for packs in first['profiles'].values():
        seen = set()
        for pack in packs:
            encoded = (base / 'first' / Path(pack['url']).name).read_bytes()
            decoded = gzip.decompress(encoded)
            assert len(decoded) == pack['bytes'] <= 8192
            assert hashlib.sha256(encoded).hexdigest() == pack['sha256']
            for fid, start, length, offset in pack['runs']:
                assert decoded[offset:offset+length] == sources[manifest['files'][fid][0]][start:start+length]
                for block in range(start // 4096, (start + length - 1) // 4096 + 1):
                    assert (fid, block) not in seen
                    seen.add((fid, block))
        expected = {(fid, b) for fid, start, n in builder.planned_runs(manifest, boot)
                    for b in range(start // 4096, (start + n - 1) // 4096 + 1)}
        assert seen == expected
    assert before == {p.name: p.read_bytes() for p in data.iterdir()}
    damaged = base / 'first' / Path(first['profiles']['bootset.json'][0]['url']).name
    damaged.write_bytes(b'interrupted generated output')
    try: builder.build(data, base / 'first', 8192)
    except ValueError as error: assert 'Corrupt generated pack' in str(error)
    else: raise AssertionError('Corrupt generated output must not be reused')
    demand = {'dataVersion':'test-1','reads':[['a.rpf',[[8192,32767]]]]}
    extended, _ = builder.build(data, base / 'extended', 8192, demand)
    extras = [p for p in extended['profiles']['bootset.json'] if p.get('prefetch') is False]
    assert extras and sum(p['bytes'] for p in extras) == 16384
    assert all(start >= 16384 for p in extras for _,start,_,_ in p['runs'])
    assert all(p.get('prefetch',True) for p in extended['profiles']['bootset_low.json'])
    demand['extensions']=[{'dataVersion':'test-1','reads':[['a.rpf',[[0,49151]]]]},
                          {'dataVersion':'test-1','reads':[['a.rpf',[[0,49151]]]]}]
    appended, _ = builder.build(data,base/'appended',8192,demand)
    old=extended['profiles']['bootset.json'];new=appended['profiles']['bootset.json']
    assert new[:len(old)]==old,'new captures must preserve every previously published pack descriptor'
    assert sum(p['bytes'] for p in new[len(old):])==16384,'overlapping captures add each missing block once'
    assert appended['profiles']['bootset_low.json']==extended['profiles']['bootset_low.json']
    for pack in old:
        filename=Path(pack['url']).name
        assert (base/'extended'/filename).read_bytes()==(base/'appended'/filename).read_bytes()
    demand['extensions'][0]['dataVersion']='stale'
    try: builder.build(data,base/'stale',8192,demand)
    except ValueError: pass
    else: raise AssertionError('stale extension accepted')
    assert list(builder.subtract_runs([(0,0,32768)], [(0,4096,4096),(0,16384,8192)])) == [(0,0,4096),(0,8192,8192),(0,24576,8192)]
    assert before == {p.name: p.read_bytes() for p in data.iterdir()}
print('PASS: reproducible pack bytes/index, overlap merging, exact source bytes/coverage, final partial blocks, bounded packs and unchanged originals')
