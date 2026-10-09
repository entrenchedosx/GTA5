"""Run the portable code-only regression suite from any working directory."""
from pathlib import Path
import os
import shutil
import subprocess
import sys

root = Path(__file__).resolve().parent.parent
node = os.environ.get('NODE_BINARY') or shutil.which('node')
if not node:
    raise SystemExit('Node.js is required. Install it or set NODE_BINARY to its executable.')
for test in ['test_geometry_arena.cjs', 'test_worker_buffers.cjs', 'test_renderer_cache.cjs',
             'test_profiler.cjs', 'test_input.cjs', 'test_benchmark.cjs']:
    subprocess.run([node, str(root / 'performance' / test)], cwd=root, check=True)
subprocess.run([sys.executable, str(root / 'performance/check_syntax.py')], cwd=root, check=True)
if sys.platform == 'win32':
    subprocess.run([sys.executable, str(root / 'performance/test_installer.py')], cwd=root, check=True)
print('PASS: all code-only checks')
