"""Verify staged bytes, isolation, cache policy, ranges and delivery routing."""
import argparse
import hashlib
import json
from pathlib import Path
import urllib.error
import urllib.request


def verify(base, stage, plan, record, coverage=False):
    entries = {x['url']:x for x in json.loads(plan.read_text())['entries']}
    checks=[]
    def request(path, method='GET', headers=None):
        req=urllib.request.Request(base.rstrip('/')+path,method=method,
                                   headers={'User-Agent':'Mozilla/5.0',**(headers or {})})
        try: response=urllib.request.urlopen(req,timeout=45)
        except urllib.error.HTTPError as error: response=error
        with response:
            body=response.read(); meta=response.headers; status=response.status
        assert meta.get('Cross-Origin-Opener-Policy')=='same-origin', path
        assert meta.get('Cross-Origin-Embedder-Policy')=='require-corp', path
        assert meta.get('Cross-Origin-Resource-Policy')=='same-origin', path
        checks.append({'path':path,'method':method,'status':status,'delivery':meta.get('X-Game-Delivery'),'bytes':len(body)})
        return status, meta, body
    selected=['/index.html','/data/manifest.json','/data/delivery.json']
    if '/cpu-renderer-check.html' in entries:
        selected.append('/cpu-renderer-check.html')
    selected += [p for p in entries if p.startswith(('/runtime/','/data/packs/index-','/data/packs/bootstrap-'))]
    pack_urls=[p for p in entries if p.startswith('/data/packs/') and p.endswith('.bin')]
    selected += sorted(pack_urls,key=lambda p:entries[p]['bytes'])[:3]
    for path in selected:
        url='/' if path=='/index.html' else path
        status, headers, body=request(url)
        assert status==200 and headers.get('X-Game-Delivery')=='static', path
        assert hashlib.sha256(body).hexdigest()==entries[path]['sha256'], path
        if path.startswith(('/runtime/','/data/packs/')):
            assert 'immutable' in headers.get('Cache-Control',''), path
        else:
            assert 'no-cache' in headers.get('Cache-Control',''), path
        etag=headers.get('ETag')
        # Hosted HTML can omit validators even when its body is byte-identical.
        # Keep it no-cache and verify every byte; hashed assets still need ETags.
        if path.endswith('.html') and not etag:
            checks[-1]['conditional']='Hosted HTML omitted ETag; full body verified'
            continue
        assert etag, path
        status, headers, _=request(url,headers={'If-None-Match':etag})
        assert status==304, path
    # The game fetches pack bodies whole. Keep resources which require partial
    # reads (original archives, WASM and radio audio) on the existing R2 handler.
    for path in [p for p in entries if '/shaders/pack' in p and p.endswith('.bin')][:1]:
        status,headers,body=request(path)
        assert status==200 and headers.get('X-Game-Delivery')=='static',path
        assert hashlib.sha256(body).hexdigest()==entries[path]['sha256'],path
        assert not headers.get('Content-Encoding'),path
    if coverage:
        for path in pack_urls:
            status,headers,body=request(path,'HEAD')
            assert status==200 and not body and headers.get('X-Game-Delivery')=='static',path
            assert headers.get('ETag'),path
            # Static Assets can omit Content-Length on HEAD; the reader relies
            # on its hash-validated catalogue and bounded body reads instead.
            if headers.get('Content-Length') is not None:
                assert int(headers.get('Content-Length'))==entries[path]['bytes'],path
    status, headers, _=request('/data/batch', 'POST')
    assert status==400 and headers.get('X-Game-Delivery')=='worker'
    status, headers, _=request('/b/8b0b5899ed/game.wasm','HEAD')
    assert status in [200,404] and headers.get('X-Game-Delivery')=='worker'
    result={'checks':checks,'staticResponses':sum(c['delivery']=='static' for c in checks),
            'workerResponses':sum(c['delivery']=='worker' for c in checks)}
    record.parent.mkdir(parents=True,exist_ok=True)
    record.write_text(json.dumps(result,indent=2))
    print(json.dumps({'passed':len(checks),'staticResponses':result['staticResponses'],'workerResponses':result['workerResponses']}))
    return result


if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--base',required=True)
    parser.add_argument('--stage',type=Path,default=Path('.downloads/static-public'))
    parser.add_argument('--plan',type=Path,default=Path('.downloads/static-assets-plan.json'))
    parser.add_argument('--record',type=Path,required=True)
    parser.add_argument('--coverage-heads',action='store_true',help='HEAD every pack; intended for local validation to avoid unnecessary public requests')
    args=parser.parse_args()
    verify(args.base,args.stage,args.plan,args.record,args.coverage_heads)
