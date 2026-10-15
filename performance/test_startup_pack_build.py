"""Bounded startup overlay: original bytes, deterministic output and no prefetch."""
import gzip,hashlib,json,sys,tempfile
from pathlib import Path
root=Path(__file__).resolve().parent.parent
sys.path.insert(0,str(root/'cloudflare'))
import build_startup_packs as builder
with tempfile.TemporaryDirectory() as temporary:
    base=Path(temporary);source=base/'source';source.mkdir()
    bodies={'audio.rpf':bytes(range(256))*4096,'shader.fxc':b'original shader'*1200,'large.meta':b'large'*(builder.LIMIT//5+1),'unrecorded.rpf':b'not selected'*100}
    for name,b in bodies.items():(source/name).write_bytes(b)
    manifest={'version':'1','files':[[name,len(b)] for name,b in bodies.items()]}
    index={'schema':1,'dataVersion':'1','fileFingerprint':builder.fingerprint(manifest['files']),'profiles':{'bootset.json':[{'runs':[[0,0,65536,0],[1,0,len(bodies['shader.fxc']),65536],[2,0,4096,0]]}],'bootset_low.json':[]}}
    original=json.dumps(index,sort_keys=True)
    a,name=builder.build(manifest,index,source,base/'a');b,name2=builder.build(manifest,index,source,base/'b')
    assert name==name2 and (base/'a'/name).read_bytes()==(base/'b'/name2).read_bytes()
    assert json.dumps(index,sort_keys=True)==original
    selected=[]
    for p in a['startupPacks']:
        encoded=(base/'a'/Path(p['url']).name).read_bytes();decoded=gzip.decompress(encoded)
        assert len(decoded)<=builder.LIMIT and p['prefetch'] is False
        assert hashlib.sha256(encoded).hexdigest()==p['sha256']
        assert hashlib.sha256(decoded).hexdigest()==p['decodedSha256']
        for fid,start,n,off in p['runs']:
            file=manifest['files'][fid][0];assert decoded[off:off+n]==bodies[file][start:start+n];selected.append(fid)
    assert sorted(selected)==[0,1]
    assert all((source/name).read_bytes()==b for name,b in bodies.items())
    try:builder.build({**manifest,'version':'wrong'},index,source,base/'bad')
    except ValueError:pass
    else:raise AssertionError('Mismatched data version accepted')
    # Validate the optional original-pack provenance check and reject changed
    # local bytes even when names/sizes still match the manifest fingerprint.
    raw=bodies['audio.rpf'][:65536]+bodies['shader.fxc']+bodies['large.meta'][:4096]
    encoded=gzip.compress(raw,mtime=0);digest=hashlib.sha256(encoded).hexdigest()
    origin=base/'original-packs';origin.mkdir();(origin/(digest+'.bin')).write_bytes(encoded)
    original_pack=index['profiles']['bootset.json'][0]
    original_pack.update(url='/data/packs/'+digest+'.bin',sha256=digest,encodedBytes=len(encoded),bytes=len(raw),decodedSha256=hashlib.sha256(raw).hexdigest())
    original_pack['runs'][2][3]=65536+len(bodies['shader.fxc'])
    verified,verified_name=builder.build(manifest,index,source,base/'verified',origin)
    assert verified['startupPacks']==a['startupPacks']
    (source/'shader.fxc').write_bytes(b'X'+bodies['shader.fxc'][1:])
    try:builder.build(manifest,index,source,base/'changed-source',origin)
    except ValueError as e:assert 'differs from recorded pack' in str(e)
    else:raise AssertionError('Changed original source accepted')
    (source/'shader.fxc').write_bytes(bodies['shader.fxc'])
print('PASS: bounded recorded startup overlay, hashes, exact bytes, deterministic build, no source/index mutation or prefetch')
