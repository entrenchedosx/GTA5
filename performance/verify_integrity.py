"""Check preserved runtime backups and every unchanged snapshot file."""
import hashlib, json
from pathlib import Path
BASE = Path(__file__).resolve().parent.parent
ROOT = BASE / 'mirror/playgta5.com'
modified = {'/index.html', '/b/8b0b5899ed/loader.js', '/b/8b0b5899ed/io_worker.js', '/b/8b0b5899ed/wgpu_worker.js'}
records = json.loads((BASE / 'snapshot/manifest-sha256.json').read_text())
failures = []
for rec in records:
    rel = rec['path']
    path = BASE / 'performance/original' / Path(rel).name if rel in modified else ROOT / rel.lstrip('/')
    digest = hashlib.sha256()
    try:
        with path.open('rb') as src:
            for chunk in iter(lambda: src.read(4 * 1024 * 1024), b''):
                digest.update(chunk)
        if path.stat().st_size != rec['bytes'] or digest.hexdigest() != rec['sha256']:
            failures.append(rel)
    except OSError as error:
        failures.append({'path': rel, 'error': str(error)})
result = {'checked_files': len(records), 'checked_bytes': sum(r['bytes'] for r in records),
          'preserved_source_backups': sorted(modified), 'failures': failures}
(BASE / 'performance/integrity-results.json').write_text(json.dumps(result, indent=2))
print(json.dumps(result, indent=2))
assert not failures, 'unchanged snapshot or original backup differs'
