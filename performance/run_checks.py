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
for test in ['test_io_shutdown.cjs', 'test_pack_timeouts.cjs', 'test_pack_priority.cjs', 'test_session_lock.cjs', 'test_queued_streaming.cjs', 'test_quality.cjs', 'test_quality_page.cjs', 'test_bc_decoder.cjs', 'test_geometry_arena.cjs', 'test_worker_buffers.cjs', 'test_renderer_cache.cjs', 'test_texture_lifetime.cjs', 'test_resize.cjs',
             'test_profiler.cjs', 'test_input.cjs', 'test_benchmark.cjs', 'test_startup.cjs', 'test_graphics_startup.cjs', 'test_delivery.cjs', 'test_cloudflare.cjs', 'test_shader_delivery.cjs', 'test_radio.cjs','test_cpu_rasterizer.cjs','test_cpu_shader_ports.cjs','test_stream_recovery.cjs','test_runtime_compatibility.cjs','test_memory_packs.cjs']:
    subprocess.run([node, str(root / 'performance' / test)], cwd=root, check=True)
subprocess.run([sys.executable, str(root / 'performance/check_syntax.py')], cwd=root, check=True)
subprocess.run([sys.executable, str(root / 'performance/check_social_links.py')], cwd=root, check=True)
subprocess.run([sys.executable, str(root / 'performance/test_pack_build.py')], cwd=root, check=True)
subprocess.run([sys.executable, str(root / 'performance/test_startup_pack_build.py')], cwd=root, check=True)
subprocess.run([sys.executable, str(root / 'performance/test_static_build.py')], cwd=root, check=True)
subprocess.run([sys.executable, str(root / 'performance/test_radio.py')], cwd=root, check=True)
if sys.platform == 'win32':
    subprocess.run([sys.executable, str(root / 'performance/test_installer.py')], cwd=root, check=True)
print('PASS: all code-only checks')
