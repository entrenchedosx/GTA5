"""Local graphics-contract capture, or an allowlisted CPU-only fixture server.

Default: actual game on loopback 8879, with transient command metadata capture.
--cpu-only --bind <local IPv4>: only the diagnostic and its two scripts on 8880.
A non-loopback HTTP origin makes WebGPU unavailable without browser flags or
API mocks. This is an API-absence test, not a physical GPU-less-machine claim.
"""
import argparse
import importlib.util
import json
import uuid
from http.server import ThreadingHTTPServer
from pathlib import Path
from urllib.parse import urlsplit

root = Path(__file__).resolve().parent.parent
spec = importlib.util.spec_from_file_location('local_server', root / 'serve_local.py')
local = importlib.util.module_from_spec(spec)
spec.loader.exec_module(local)
request_paths = []
CPU_FILES = {'/cpu-renderer-check.html': 'cpu-renderer-check.html',
             '/b/8b0b5899ed/cpu-check-worker.js': 'b/8b0b5899ed/cpu-check-worker.js',
             '/b/8b0b5899ed/cpu-rasterizer.js': 'b/8b0b5899ed/cpu-rasterizer.js'}
CAPTURE = r'''
const cpuContract={token:new URLSearchParams(self.location.search).get('captureToken'),operations:{},formats:{},shaderPairs:{},compute:{},frames:0};
const captureStarted=performance.now();
const countedCommands=runCommands;
runCommands=async function(tail,head){
  let cursor=tail,guard=0;
  while(cursor!==head&&guard++<ringSize/8){
    const base=ringW+cursor/4,op=u32[base],n=u32[base+1];
    cpuContract.operations[op]=(cpuContract.operations[op]||0)+1;
    if(op===1)cursor=RING_DATA;else cursor+=8+n*4;
  }
  return countedCommands(tail,head);
};
const countedTexture=createTexture;
createTexture=function(...args){const format=mapFormat(args[7],args[8]).format;cpuContract.formats[format]=(cpuContract.formats[format]||0)+1;return countedTexture(...args);};
const countedDraw=doDraw;
doDraw=function(p){if(worldSent){const a=objs.get(S.shader[0]),b=objs.get(S.shader[1]),key=(a?.hash||'none')+':'+(b?.hash||'none');cpuContract.shaderPairs[key]=(cpuContract.shaderPairs[key]||0)+1;}return countedDraw(p);};
const countedDispatch=doDispatch;
doDispatch=function(x,y,z){if(worldSent){const shader=objs.get(S.shader[2]),key=shader?.hash||'none';cpuContract.compute[key]=(cpuContract.compute[key]||0)+1;}return countedDispatch(x,y,z);};
const captureBC=new BroadcastChannel('cpu-contract-capture');
setInterval(()=>{cpuContract.frames=presentCount;cpuContract.worldReady=worldSent;cpuContract.elapsedMs=performance.now()-captureStarted;
  captureBC.postMessage(cpuContract);},2000);
'''
PAGE_CAPTURE = '''<pre id="cpu-contract" hidden></pre><script>
new BroadcastChannel('cpu-contract-capture').onmessage=({data})=>{
 if(data.token==='CAPTURE_TOKEN')document.getElementById('cpu-contract').textContent=JSON.stringify(data);
};</script>'''


class Handler(local.Handler):
    cpu_only = False
    stage = None

    def translate_path(self, path):
        if self.stage is not None:
            candidate = self.stage / urlsplit(path).path.lstrip('/')
            if candidate.is_file() and candidate.resolve().is_relative_to(self.stage.resolve()):
                return str(candidate)
        return super().translate_path(path)

    def respond(self, data, mime='application/json'):
        self.send_response(200)
        self.send_header('Content-Type', mime)
        self.send_header('Content-Length', str(len(data)))
        self.end_headers()
        self.wfile.write(data)

    def do_GET(self):
        path = urlsplit(self.path).path
        request_paths.append(path)
        if path == '/qa/requests':
            return self.respond(json.dumps(request_paths).encode())
        if self.cpu_only:
            relative = CPU_FILES.get(path)
            if not relative:
                self.send_error(404)
                return
            file = local.ROOT / relative
            return self.respond(file.read_bytes(), 'text/html; charset=utf-8' if file.suffix == '.html' else 'text/javascript; charset=utf-8')
        if path in ['/', '/index.html']:
            token = uuid.uuid4().hex
            page = Path(self.translate_path('/index.html')).read_text(encoding='utf-8')
            page = page.replace('worker.postMessage({', 'worker.postMessage({contractToken:' + json.dumps(token) + ',', 1)
            return self.respond((page + PAGE_CAPTURE.replace('CAPTURE_TOKEN', token)).encode(), 'text/html; charset=utf-8')
        if path.endswith('/loader.js'):
            source = Path(self.translate_path(self.path)).read_text(encoding='utf-8')
            source = source.replace("gq.set('bufferArena',", "gq.set('captureToken',m.contractToken||'');\n\tgq.set('bufferArena',", 1)
            return self.respond(source.encode(), 'text/javascript; charset=utf-8')
        if path.endswith('/wgpu_worker.js'):
            return self.respond(Path(self.translate_path(self.path)).read_bytes() + CAPTURE.encode(), 'text/javascript; charset=utf-8')
        super().do_GET()

    def do_POST(self):
        if self.cpu_only:
            self.send_error(404)
            return
        super().do_POST()

    def do_HEAD(self):
        path = urlsplit(self.path).path
        if self.cpu_only and path not in CPU_FILES:
            self.send_error(404)
            return
        super().do_HEAD()


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--cpu-only', action='store_true')
    parser.add_argument('--bind', default='127.0.0.1')
    parser.add_argument('--stage', type=Path, help='Optional explicit release stage for the real game')
    parser.add_argument('--port', type=int)
    args = parser.parse_args()
    if not args.cpu_only and args.bind != '127.0.0.1':
        raise SystemExit('Game/contract capture must stay on loopback.')
    Handler.cpu_only = args.cpu_only
    Handler.stage = args.stage
    port = args.port or (8880 if args.cpu_only else 8879)
    server = ThreadingHTTPServer((args.bind, port), Handler)
    print(f'CPU contract QA: http://{args.bind}:{port}', flush=True)
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass
    finally:
        server.server_close()
