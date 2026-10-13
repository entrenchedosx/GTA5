"""Check modified workers/modules and inline scripts without a WASM rebuild."""
from html.parser import HTMLParser
from pathlib import Path
import os, shutil, subprocess

node = os.environ.get('NODE_BINARY') or shutil.which('node')
if not node:
    raise SystemExit('Node.js is required. Install it or set NODE_BINARY to its executable.')
build = Path('mirror/playgta5.com/b/8b0b5899ed')
class Scripts(HTMLParser):
    def __init__(self):
        super().__init__(); self.active=False; self.current=[]; self.scripts=[]
    def handle_starttag(self, tag, attrs):
        if tag=='script': self.active='src' not in dict(attrs); self.current=[]
    def handle_data(self, data):
        if self.active: self.current.append(data)
    def handle_endtag(self, tag):
        if tag=='script' and self.active: self.scripts.append(''.join(self.current)); self.active=False

count=0
for name in ['quality-profile.js','loader.js','io_worker.js','wgpu_worker.js','performance-profiler.js','performance-page.js','geometry-buffer-arena.js', 'delivery-packs.js', 'delivery-page.js', 'delivery-audit.js', 'web-radio.js','cpu-rasterizer.js','cpu_worker.js','cpu-check-worker.js']:
    subprocess.run([str(node),'--check',str(build/name)],check=True); count+=1
for page in [Path('mirror/playgta5.com/index.html'),Path('mirror/playgta5.com/cpu-renderer-check.html'),build/'geometry-arena-test.html',build/'fullscreen-test.html']:
    parser=Scripts(); parser.feed(page.read_text(encoding='utf-8'))
    for i,script in enumerate(parser.scripts):
        temporary=Path('performance')/f'.syntax-{page.stem}-{i}.mjs'
        temporary.write_text(script,encoding='utf-8')
        try: subprocess.run([str(node),'--check',str(temporary)],check=True); count+=1
        finally: temporary.unlink()
print(f'PASS: {count} JavaScript files/inline scripts checked')
