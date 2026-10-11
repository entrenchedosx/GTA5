"""Local real-worker metadata/cache QA; no engine, asset prefetch or save writes."""
import argparse
import importlib.util
import json
from http.server import ThreadingHTTPServer
from pathlib import Path
from urllib.parse import urlsplit

root=Path(__file__).resolve().parent.parent
spec=importlib.util.spec_from_file_location('local_server',root/'serve_local.py')
local=importlib.util.module_from_spec(spec);spec.loader.exec_module(local)
build=local.ROOT/'b/8b0b5899ed'
requests=[]


class Handler(local.Handler):
    def respond(self,body,kind):
        body=body.encode();self.send_response(200)
        self.send_header('Content-Type',kind);self.send_header('Content-Length',str(len(body)))
        self.end_headers();self.wfile.write(body)

    def translate_path(self,path):
        relative=urlsplit(path).path.lstrip('/')
        candidate=stage/relative
        if candidate.is_file() and candidate.resolve().is_relative_to(stage.resolve()):return str(candidate)
        return super().translate_path(path)

    def end_headers(self):
        path=urlsplit(self.path).path
        if path.startswith('/data/packs/'):
            self.send_header('Cache-Control','public, max-age=31536000, immutable, no-transform')
        elif path.startswith('/data/'):
            self.send_header('Cache-Control','no-cache')
        super().end_headers()

    def do_GET(self):
        path=urlsplit(self.path).path;requests.append(path)
        if capture_reads and path.endswith('/io_worker.js'):
            source=Path(self.translate_path(self.path)).read_text(encoding='utf-8')
            return self.respond(source + '''
// Local fixture only: retain normal prefetch/cache behavior and record reads.
const actualInit=init;
init=async m=>{const result=await actualInit(m);recording=true;return result;};
const actualLog=log;
log=text=>{
 if(text.startsWith('[bootset] ')) new BroadcastChannel('game-read-capture').postMessage({dataVersion,reads:JSON.parse(text.slice(10))});
 else actualLog(text);
};
''','text/javascript; charset=utf-8')
        if capture_reads and path=='/index.html':
            page=Path(self.translate_path(self.path)).read_text(encoding='utf-8')
            capture='''<pre id="read-footprint" hidden></pre><script>
new BroadcastChannel('game-read-capture').onmessage=e=>document.getElementById('read-footprint').textContent=JSON.stringify(e.data);
</script>'''
            return self.respond(page.replace('<script type="module">',capture+'<script type="module">',1),'text/html; charset=utf-8')
        if path=='/qa/requests':return self.respond(json.dumps(requests),'application/json')
        if path=='/qa/io-worker.js':
            source=(build/'io_worker.js').read_text(encoding='utf-8')
            return self.respond('''const actualFetch=self.fetch;
const metadataCalls=[];
self.fetch=(url,options)=>{metadataCalls.push(String(url));return actualFetch(url,options);};
''' + source + '''
// Disable only prefetch in this local fixture; run actual metadata/cache init.
prefetchPacks=()=>{};
const actualPost=self.postMessage.bind(self);
self.postMessage=m=>{
 const {manifestBytes,...status}=m;
 actualPost(m.ready?{...status,manifestByteLength:manifestBytes?.byteLength || 0,metadataCalls,resources:performance.getEntriesByType('resource').filter(r=>r.name.includes('/data/')).map(r=>({url:r.name,transferBytes:r.transferSize,decodedBytes:r.decodedBodySize}))}:m);
};
''','text/javascript; charset=utf-8')
        if path=='/qa/delivery-packs.js':return self.respond((build/'delivery-packs.js').read_text(encoding='utf-8'),'text/javascript; charset=utf-8')
        if path=='/qa/metadata.html':
            return self.respond('''<!doctype html><title>Startup metadata QA</title>
<button data-case="legacy">Test legacy metadata</button>
<button data-case="frozen">Test combined metadata</button>
<p id="result">Choose a metadata test. No engine or game assets will load.</p>
<pre id="details"></pre><script>
const bootstrapURL='''+json.dumps(bootstrap_url)+''';
for(const button of document.querySelectorAll('button')) button.onclick=()=>{
 const frozen=button.dataset.case==='frozen';
 const worker=new Worker('/qa/io-worker.js');
 document.getElementById('result').textContent='Initializing actual IO worker…';
 worker.onmessage=({data})=>{if(data.ready || data.error){
   document.getElementById('result').textContent=data.ready?'PASS: '+(frozen?'combined':'legacy')+' metadata ready; '+data.metadataCalls.length+' fetch attempts.':'FAIL: '+data.error;
   document.getElementById('details').textContent=JSON.stringify(data,null,2);worker.terminate();
 }};
 worker.postMessage({init:true,base:location.origin+'/data/',packIndex:'/data/delivery.json',bootstrapURL:frozen?bootstrapURL:'',bootset:'bootset.json',cacheNamespace:frozen?'metadata-frozen':'metadata-legacy'});
};
</script>''','text/html; charset=utf-8')
        super().do_GET()


if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--stage',type=Path,default=root/'.downloads/static-bootstrap')
    parser.add_argument('--plan',type=Path,default=root/'.downloads/static-bootstrap-plan.json')
    parser.add_argument('--capture-reads',action='store_true',help='Record actual engine reads after normal IO initialization; local fixture only')
    args=parser.parse_args();stage=args.stage
    capture_reads=args.capture_reads
    bootstrap_url=json.loads(args.plan.read_text())['bootstrap']
    server=ThreadingHTTPServer(('127.0.0.1',8891),Handler)
    print('Metadata QA: http://localhost:8891/qa/metadata.html',flush=True)
    try:server.serve_forever()
    except KeyboardInterrupt:pass
    finally:server.server_close()
