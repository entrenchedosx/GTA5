"""Exercise the real Windows installer using tiny local archives, without downloads."""
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import zipfile

repo = Path(__file__).resolve().parent.parent
shell = shutil.which('pwsh') or shutil.which('powershell')
if sys.platform != 'win32' or not shell:
    raise SystemExit('This installer test requires Windows and PowerShell.')

def digest(data):
    return hashlib.sha256(data).hexdigest()

def fixture(folder, destination=None, unsafe=False):
    folder.mkdir()
    shutil.copyfile(repo / 'Download-Game.ps1', folder / 'Download-Game.ps1')
    shutil.copyfile(repo / 'verify_game.py', folder / 'verify_game.py')
    current = {'README.md': b'current documentation', 'LICENSE_NOTICE.md': b'notice',
               'Launch-Local.cmd': b'launcher', 'Start-Local.ps1': b'start',
               'serve_local.py': b'server', 'Download-Game.cmd': b'download',
               'Verify-Game.cmd': b'verify', 'mirror/playgta5.com/index.html': b'current page',
               'mirror/playgta5.com/b/8b0b5899ed/loader.js': b'current loader'}
    for name, data in current.items():
        path = folder / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(data)
    entries = {'README.md': b'old documentation',
               'mirror/playgta5.com/b/8b0b5899ed/loader.js': b'old loader',
               'mirror/playgta5.com/data/test.bin': b'asset contents',
               'runtime/LICENSE.txt': b'runtime license'}
    if unsafe:
        entries['mirror/playgta5.com/data/../../../../escape.txt'] = b'unsafe'
    target = destination or folder
    cache = target / '.downloads'
    cache.mkdir(parents=True, exist_ok=True)
    archive = cache / 'fixture.zip'
    with zipfile.ZipFile(archive, 'w') as stream:
        for name, data in entries.items():
            stream.writestr(name, data)
    manifest = {'install_prefixes': ['mirror/playgta5.com/data/', 'runtime/'], 'install_files': [],
                'parts': [{'name': archive.name, 'sha256': digest(archive.read_bytes()),
                           'url': 'https://invalid.example/never-used'}]}
    inventory = {'files': [{'path': name, 'bytes': len(data), 'sha256': digest(data), 'part': archive.name}
                           for name, data in entries.items()]}
    (folder / 'download-manifest.json').write_text(json.dumps(manifest))
    (folder / 'file-inventory.json').write_text(json.dumps(inventory))
    return current

def run(folder, destination=None):
    args = [shell, '-NoProfile', '-File', str(folder / 'Download-Game.ps1')]
    if destination:
        args += ['-Destination', str(destination)]
    return subprocess.run(args, capture_output=True, text=True)

with tempfile.TemporaryDirectory(prefix='gta5-installer-', dir=repo / 'performance') as temporary:
    base = Path(temporary).resolve()
    assert base.is_relative_to((repo / 'performance').resolve())
    folder = base / 'default'
    current = fixture(folder)
    result = run(folder)
    assert result.returncode == 0, result.stderr
    for name, data in current.items():
        assert (folder / name).read_bytes() == data, name
    assert (folder / 'mirror/playgta5.com/data/test.bin').read_bytes() == b'asset contents'
    assert not (folder / '.downloads/fixture.zip').exists()
    assert run(folder).returncode == 0, 'receipt-based resume failed'
    assert subprocess.run([sys.executable, str(folder / 'verify_game.py')], capture_output=True).returncode == 0
    (folder / 'mirror/playgta5.com/data/test.bin').write_bytes(b'wrong contents')
    assert subprocess.run([sys.executable, str(folder / 'verify_game.py')], capture_output=True).returncode != 0

    conflict = base / 'conflict'
    fixture(conflict)
    asset = conflict / 'mirror/playgta5.com/data/test.bin'
    asset.parent.mkdir(parents=True)
    asset.write_bytes(b'changed')
    result = run(conflict)
    assert result.returncode != 0 and 'Existing file differs' in result.stderr
    assert asset.read_bytes() == b'changed'

    unsafe = base / 'unsafe'
    fixture(unsafe, unsafe=True)
    result = run(unsafe)
    assert result.returncode != 0 and 'Unsafe archive path rejected' in result.stderr
    assert not (base / 'escape.txt').exists()

    source, destination = base / 'source', base / 'destination'
    current = fixture(source, destination=destination)
    result = run(source, destination)
    assert result.returncode == 0, result.stderr
    for name, data in current.items():
        assert (destination / name).read_bytes() == data, name
    assert (destination / 'mirror/playgta5.com/data/test.bin').read_bytes() == b'asset contents'

print('PASS: installer preserves fork code, installs/verifies assets, resumes, rejects conflicts/traversal, and supports custom destinations')
