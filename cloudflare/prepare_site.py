"""Stage changed runtime code under a content hash; never rewrite old URLs."""
import argparse
import hashlib
import json
from pathlib import Path

RADIO_SOURCES = {
    'cachalot #2016 [prod. onda andar].mp3': 'cachalot-onda-andar',
    'ONDA ANDAR – type london.mp3': 'type-london-onda-andar',
}

def prepare(root, output, audio_dir=None):
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
    diagnostic = site / 'cpu-renderer-check.html'
    if diagnostic.is_file():
        (output / 'site/cpu-renderer-check.html').write_text(diagnostic.read_text(encoding='utf-8').replace('const RUNTIME = BASE;', 'const RUNTIME = ' + json.dumps(prefix) + ';'), encoding='utf-8')
    artwork = site / 'radio'
    logos = sorted(artwork.glob('*.svg'))
    for file in logos:
        digest = hashlib.sha256(file.read_bytes()).hexdigest()[:16]
        if not file.stem.endswith('.' + digest):
            raise ValueError(f'Radio logo filename is not content-addressed: {file.name}')
        target = output / 'site/radio' / file.name
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(file.read_bytes())
    staged_audio = 0
    if audio_dir is not None:
        for source_name, slug in RADIO_SOURCES.items():
            source_file = audio_dir / source_name
            if not source_file.is_file():
                raise FileNotFoundError(f'Required local radio source is missing: {source_file.name}')
            data = source_file.read_bytes()
            digest = hashlib.sha256(data).hexdigest()[:16]
            target = output / 'site/radio/audio' / f'{slug}.{digest}.mp3'
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(data)
            staged_audio += 1
    print(json.dumps({'runtime': prefix, 'files': len(files), 'radioLogos': len(logos), 'radioAudioStaged': staged_audio}))
    return prefix

if __name__ == '__main__':
    root = Path(__file__).resolve().parent.parent
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, default=root / '.downloads/delivery-site')
    parser.add_argument('--audio-dir', type=Path, help='Local folder containing both licensed MP3 source files; copies them to ignored staging only.')
    args = parser.parse_args()
    prepare(root, args.output, args.audio_dir)
