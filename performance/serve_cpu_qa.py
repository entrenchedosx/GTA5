"""Probe the real browser's software WebGPU device without loading game data."""
import importlib.util
import json
from http.server import ThreadingHTTPServer
from pathlib import Path
from urllib.parse import urlsplit

root = Path(__file__).resolve().parent.parent
spec = importlib.util.spec_from_file_location('local_server', root / 'serve_local.py')
local = importlib.util.module_from_spec(spec)
spec.loader.exec_module(local)
requests = []


class Handler(local.Handler):
    def respond(self, text, content_type):
        body = text.encode()
        self.send_response(200)
        self.send_header('Content-Type', content_type)
        self.send_header('Content-Length', str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def do_GET(self):
        path = urlsplit(self.path).path
        requests.append(path)
        if path == '/qa/requests':
            return self.respond(json.dumps(requests), 'application/json')
        if path == '/qa/cpu-worker.js':
            source = (local.ROOT / 'b/8b0b5899ed/wgpu_worker.js').read_text(encoding='utf-8')
            return self.respond(source + '''
const actualPost = self.postMessage.bind(self);
self.postMessage = m => actualPost(m.graphicsReady ? {...m, cpu: {
  fallback: adapter.info?.isFallbackAdapter ?? adapter.isFallbackAdapter ?? null,
  bcTextures: adapter.features.has('texture-compression-bc')
}} : m);
''', 'text/javascript; charset=utf-8')
        if path == '/qa/cpu-check.html':
            return self.respond('''<!doctype html><title>CPU rendering check</title>
<p id="result">Checking the actual software adapter and game device requirements…</p>
<pre id="details"></pre><script>
const worker = new Worker('/qa/cpu-worker.js?renderer=cpu&bufferArena=0');
const deadline = setTimeout(() => {
  document.getElementById('result').textContent = 'FAIL: software adapter timed out.';
  worker.terminate();
}, 30000);
worker.onmessage = ({data}) => {
  if (data.loaded) worker.postMessage({graphicsCheck: true});
  if (data.graphicsReady || data.graphicsError) {
    clearTimeout(deadline);
    document.getElementById('result').textContent = data.graphicsReady
      ? 'PASS: real software WebGPU device created; no game data requested.'
      : 'UNAVAILABLE: ' + data.graphicsError;
    document.getElementById('details').textContent = JSON.stringify(data, null, 2);
    worker.terminate();
  }
};
</script>''', 'text/html; charset=utf-8')
        super().do_GET()


if __name__ == '__main__':
    server = ThreadingHTTPServer(('127.0.0.1', 8878), Handler)
    print('CPU QA: http://localhost:8878/qa/cpu-check.html', flush=True)
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass
    finally:
        server.server_close()
