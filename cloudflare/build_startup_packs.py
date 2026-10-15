"""Add bounded recorded metadata/header packs; keep original assets/packs."""
import argparse,gzip,hashlib,json,re,io
from collections import OrderedDict
from pathlib import Path
from build_packs import fingerprint
BS=4096
LIMIT=1048576
META=re.compile(r'\.(fxc|meta|xml|dat|ymt|txt|csv|gfx|json|sps|cfg)$',re.I)
def build(manifest,index,source,output,original_packs=None):
    if index['fileFingerprint']!=fingerprint(manifest['files']) or str(index['dataVersion'])!=str(manifest['version']):raise ValueError('Manifest/index mismatch')
    heads={};original_heads={};verified=OrderedDict()
    for packs in index['profiles'].values():
        for pack in packs:
            for fid,start,n,_ in pack['runs']:
                if start==0 and n>heads.get(fid,0):heads[fid]=n;original_heads[fid]=(pack,_)
    selected=[]
    for fid,n in heads.items():
        path,size,*_=manifest['files'][fid]
        if META.search(path) and size<=LIMIT and n>=size:length=size;group='metadata/'+path.split('/')[0]
        elif path.lower().endswith('.rpf'):length=min(n,65536);group='headers/'+path.split('/')[0]
        else:continue
        if length%BS and length!=size:length-=length%BS
        if length:selected.append((group,fid,path,length))
    output.mkdir(parents=True,exist_ok=False)
    descriptors=[];content=bytearray();runs=[];category=None
    def flush():
        nonlocal content,runs
        if not runs:return
        raw=bytes(content);packed=gzip.compress(raw,compresslevel=6,mtime=0);sha=hashlib.sha256(packed).hexdigest()
        (output/(sha+'.bin')).write_bytes(packed)
        descriptors.append({'url':'/data/packs/'+sha+'.bin','encodedBytes':len(packed),'bytes':len(raw),'sha256':sha,'decodedSha256':hashlib.sha256(raw).hexdigest(),'runs':runs,'prefetch':False})
        content=bytearray();runs=[]
    for group,fid,path,length in sorted(selected):
        if group!=category or len(content)+length>LIMIT:flush()
        category=group;file=(source/path).resolve()
        if not file.is_relative_to(source.resolve()):raise ValueError('Source traversal')
        with file.open('rb') as f:data=f.read(length)
        if len(data)!=length:raise ValueError('Truncated original '+path)
        if original_packs is not None:
            original,offset=original_heads[fid];key=original['sha256']
            if key not in verified:
                encoded=(original_packs/Path(original['url']).name).read_bytes()
                if len(encoded)!=original['encodedBytes'] or hashlib.sha256(encoded).hexdigest()!=key:raise ValueError('Corrupt original pack')
                if not 0<original['bytes']<=8*LIMIT:raise ValueError('Oversized original pack')
                with gzip.GzipFile(fileobj=io.BytesIO(encoded)) as gz:raw=gz.read(original['bytes']+1)
                if len(raw)!=original['bytes'] or hashlib.sha256(raw).hexdigest()!=original['decodedSha256']:raise ValueError('Corrupt decoded original pack')
                verified[key]=raw
                if len(verified)>8:verified.popitem(last=False)
            verified.move_to_end(key)
            if data!=verified[key][offset:offset+length]:raise ValueError('Source differs from recorded pack: '+path)
        runs.append([fid,0,length,len(content)]);content.extend(data)
    flush()
    extended={**index,'startupPacks':descriptors};encoded=json.dumps(extended,separators=(',',':'),ensure_ascii=False).encode();name='index-'+hashlib.sha256(encoded).hexdigest()+'.json'
    (output/name).write_bytes(encoded)
    print(json.dumps({'index':name,'packs':len(descriptors),'decodedBytes':sum(p['bytes'] for p in descriptors),'encodedBytes':sum(p['encodedBytes'] for p in descriptors),'prefetch':False}))
    return extended,name
if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    for name in ['manifest','index','source','output']:p.add_argument('--'+name,type=Path,required=True)
    p.add_argument('--original-packs',type=Path,help='Validate new bytes against retained original hash-verified packs')
    a=p.parse_args();build(json.loads(a.manifest.read_text()),json.loads(a.index.read_text()),a.source,a.output,a.original_packs)
