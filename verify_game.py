"""Verify downloaded game files without changing them."""
import hashlib
import json
from pathlib import Path

root = Path(__file__).resolve().parent
inventory = json.loads((root / 'file-inventory.json').read_text(encoding='utf-8'))
manifest = json.loads((root / 'download-manifest.json').read_text(encoding='utf-8'))
records = [r for r in inventory['files'] if r['path'] in manifest['install_files']
           or any(r['path'].startswith(prefix) for prefix in manifest['install_prefixes'])]
failures = []
for index, record in enumerate(records, 1):
    path = root / record['path']
    try:
        if not path.is_file() or path.stat().st_size != record['bytes']:
            raise ValueError('missing file or wrong size')
        with path.open('rb') as source:
            digest = hashlib.file_digest(source, 'sha256').hexdigest()
        if digest != record['sha256']:
            raise ValueError('SHA-256 mismatch')
    except (OSError, ValueError) as error:
        failures.append(record['path'])
        print(f"FAIL {record['path']}: {error}", flush=True)
    if index % 500 == 0:
        print(f"Checked {index}/{len(records)}")
print(f"Checked {len(records)} downloaded asset/runtime files; {len(failures)} failed.")
raise SystemExit(bool(failures))
