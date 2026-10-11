"""Local-only browser fixtures for real startup error handling (no asset uploads)."""
import importlib.util
import json
import re
from http.server import ThreadingHTTPServer
from pathlib import Path
from urllib.parse import urlsplit

root = Path(__file__).resolve().parent.parent
spec = importlib.util.spec_from_file_location('local_server', root / 'serve_local.py')
local = importlib.util.module_from_spec(spec)
spec.loader.exec_module(local)
build = local.ROOT / 'b/8b0b5899ed'
requests = []


class Handler(local.Handler):
    def respond(self, body, content_type):
        data = body.encode()
        self.send_response(200)
        self.send_header('Content-Type', content_type)
        self.send_header('Content-Length', str(len(data)))
        self.end_headers()
        self.wfile.write(data)

    def do_GET(self):
        path = urlsplit(self.path).path
        requests.append(path)
        match = re.fullmatch(r'/qa/(api|adapter|timeout)\.html', path)
        if match:
            mode = match[1]
            page = (local.ROOT / 'index.html').read_text(encoding='utf-8')
            page = page.replace('const RUNTIME = BASE;', f'const RUNTIME = "/qa/{mode}";')
            if mode == 'api':
                page = page.replace('<script type="module">', '<script>Object.defineProperty(navigator,"gpu",{value:undefined});</script><script type="module">', 1)
            return self.respond(page, 'text/html; charset=utf-8')
        if path == '/qa/requests':
            return self.respond(json.dumps(requests), 'application/json')
        if path == '/qa/check.html':
            return self.respond('''<!doctype html><title>Graphics preflight QA</title>
<p id="result">Checking actual worker/device, with high-performance selection forced to return null…</p>
<script>
const worker=new Worker('/qa/fallback/wgpu_worker.js?bufferArena=0');
worker.onmessage=({data})=>{
 if(data.loaded) worker.postMessage({graphicsCheck:true});
 if(data.graphicsReady || data.graphicsError) {
   document.getElementById('result').textContent=data.graphicsReady?'PASS: browser-default adapter created the real device; no game data requested.':'FAIL: '+data.graphicsError;
   worker.terminate();
 }
};
</script>''', 'text/html; charset=utf-8')
        match = re.fullmatch(r'/qa/(adapter|timeout|fallback)/(loader|wgpu_worker|geometry-buffer-arena)\.js', path)
        if match:
            mode, script = match.groups()
            source = (build / (script + '.js')).read_text(encoding='utf-8')
            if script == 'wgpu_worker':
                if mode == 'adapter':
                    prefix = 'Object.defineProperty(navigator,"gpu",{value:{requestAdapter:async()=>null}});\n'
                elif mode == 'timeout':
                    prefix = 'Object.defineProperty(navigator,"gpu",{value:{requestAdapter:()=>new Promise(()=>{})}});\n'
                else:
                    prefix = 'const nativeGpu=navigator.gpu; Object.defineProperty(navigator,"gpu",{value:{requestAdapter:options=>options?.powerPreference==="high-performance"?Promise.resolve(null):nativeGpu.requestAdapter(options),getPreferredCanvasFormat:()=>nativeGpu.getPreferredCanvasFormat()}});\n'
                source = prefix + source
            return self.respond(source, 'text/javascript; charset=utf-8')
        super().do_GET()


if __name__ == '__main__':
    server = ThreadingHTTPServer(('127.0.0.1', 8877), Handler)
    print('Graphics QA at http://localhost:8877/qa/adapter.html', flush=True)
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass
    finally:
        server.server_close()
