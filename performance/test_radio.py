import hashlib
import importlib.util
import tempfile
import re
import xml.etree.ElementTree as ET
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
spec = importlib.util.spec_from_file_location('radio_prepare_site', ROOT / 'cloudflare/prepare_site.py')
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)

for logo in (ROOT / 'mirror/playgta5.com/radio').glob('*.svg'):
    data = logo.read_bytes()
    assert logo.stem.endswith('.' + hashlib.sha256(data).hexdigest()[:16])
    root = ET.fromstring(data)
    assert root.attrib['viewBox'] == '0 0 480 240'
    assert len(root.findall('.//{http://www.w3.org/2000/svg}text')) >= 2
    assert not re.search(rb'<script\b|(?:href|src)=["\']https?://', data, re.I)

with tempfile.TemporaryDirectory() as temp:
    base = Path(temp)
    audio = base / 'audio'; audio.mkdir()
    originals = {}
    for index, name in enumerate(module.RADIO_SOURCES):
        path = audio / name
        originals[name] = bytes([index + 65]) * (43 + index)
        path.write_bytes(originals[name])
    output = base / 'stage'
    module.prepare(ROOT, output, audio)
    staged = sorted((output / 'site/radio/audio').glob('*.mp3'))
    assert len(staged) == 2
    assert sum(f.stat().st_size for f in staged) == sum(map(len, originals.values()))
    for file in staged:
        data = file.read_bytes()
        assert file.stem.endswith('.' + hashlib.sha256(data).hexdigest()[:16])
    assert {name: (audio / name).read_bytes() for name in originals} == originals
print('PASS: logo SVGs are safe, balanced, and content-addressed; explicit audio staging preserves the source files and emits hashed names')
