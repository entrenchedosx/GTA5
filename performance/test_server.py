"""Exercise the actual local browser server after performance edits."""
import gzip, json, threading
from urllib.request import Request, urlopen
from http.server import ThreadingHTTPServer
import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
from serve_local import Handler, ROOT
class QuietHandler(Handler):
 def log_message(self, *args): pass
server = ThreadingHTTPServer(('127.0.0.1', 0), QuietHandler)
thread = threading.Thread(target=server.serve_forever, daemon=True)
thread.start()
origin = 'http://127.0.0.1:%d' % server.server_port
try:
 for path in ['/', '/b/8b0b5899ed/performance-profiler.js', '/b/8b0b5899ed/performance-page.js',
              '/b/8b0b5899ed/geometry-buffer-arena.js', '/b/8b0b5899ed/geometry-arena-test.html',
              '/b/8b0b5899ed/fullscreen-test.html']:
  with urlopen(origin + path) as response:
   assert response.status == 200
   assert response.headers['Cross-Origin-Opener-Policy'] == 'same-origin'
   assert response.headers['Cross-Origin-Embedder-Policy'] == 'require-corp'
   assert response.headers['Cross-Origin-Resource-Policy'] == 'same-origin'
   assert response.headers['Cache-Control'] == 'no-cache'
   assert response.read() == (ROOT / ('index.html' if path == '/' else path.lstrip('/'))).read_bytes()
 with urlopen(Request(origin + '/b/8b0b5899ed/game.wasm', headers={'Range':'bytes=0-7'})) as response:
  assert response.status == 206 and response.read() == b'\0asm\x01\0\0\0'
 name = 'common/data/Clouds.xml'
 data = (ROOT / 'data' / name).read_bytes()
 request = json.dumps([[name,0,63],[name,100,131]]).encode()
 for suffix in ['', '?gz=1']:
  with urlopen(Request(origin + '/data/batch' + suffix, data=request)) as response:
   body = response.read()
   if suffix: body = gzip.decompress(body)
   assert body == data[:64] + data[100:132]
   assert response.headers['X-Run-Lengths'] == '64,32'
 print('PASS: served modified page/profiler bytes, isolation headers, WASM range, plain/gzip asset batches')
finally:
 server.shutdown(); server.server_close(); thread.join()
