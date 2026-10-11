"""Stage changed runtime code under a content hash; never rewrite old URLs."""
import argparse
import hashlib
import json
from pathlib import Path

def prepare(root, output):
    site = root / 'mirror/playgta5.com'
    source = site / 'b/8b0b5899ed'
    files = list(sorted(source.glob('*.js')))
    digest = hashlib.sha256()
    for file in files: digest.update(file.name.encode() + b'\0' + file.read_bytes())
    prefix = '/runtime/' + digest.hexdigest()
    runtime = output / ('site' + prefix)
    runtime.mkdir(parents=True, exist_ok=True)
    for file in files: (runtime / file.name).write_bytes(file.read_bytes())
    page = (site / 'index.html').read_text(encoding='utf-8')
    page = page.replace('const RUNTIME = BASE;', 'const RUNTIME = ' + json.dumps(prefix) + ';')
    (output / 'site/index.html').write_text(page, encoding='utf-8')
    print(json.dumps({'runtime': prefix, 'files': len(files)}))
    return prefix

if __name__ == '__main__':
    root = Path(__file__).resolve().parent.parent
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, default=root / '.downloads/delivery-site')
    args = parser.parse_args()
    prepare(root, args.output)
