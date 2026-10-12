"""Upload only new/changed delivery artifacts. Defaults to a reviewable dry run.

Uses environment R2_ENDPOINT_URL, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY.
Never deletes objects or uploads original game data. Requires boto3.
"""
import argparse
import hashlib
import json
import mimetypes
import os
from pathlib import Path
import re
import boto3

def immutable_key(key):
    return key.startswith(('data/packs/', 'site/runtime/')) or bool(re.fullmatch(r'site/radio/(?:audio/)?[a-z0-9-]+\.[a-f0-9]{16}\.(?:mp3|svg)', key))

def publish(site=None, packs=None, entry='site/index.html', execute=False, record=None):
    if entry != 'site/index.html' and not (entry.startswith('site/delivery-') and entry.endswith('.html') and '/' not in entry[5:]):
        raise ValueError('Only entry HTML/canary may replace an existing key')
    client = boto3.client('s3', endpoint_url=os.environ['R2_ENDPOINT_URL'], region_name='auto')
    bucket = os.environ.get('R2_BUCKET', 'gta5-browser')
    selected = []
    if site:
        for file in sorted(site.rglob('*')):
            if not file.is_file(): continue
            key = file.relative_to(site).as_posix()
            if key == 'site/index.html': key = entry
            if key != entry and key != 'site/cpu-renderer-check.html' and not key.startswith(('site/runtime/', 'site/radio/')): raise ValueError('Unsafe site key')
            selected.append((key, file))
    if packs:
        for file in sorted(packs.iterdir()):
            if file.suffix not in ['.json', '.bin']: continue
            key = 'data/delivery.json' if file.name == 'delivery.json' else 'data/packs/' + file.name
            selected.append((key, file))
    changes = []
    for key, file in selected:
        sha = hashlib.sha256(file.read_bytes()).hexdigest()
        if key.startswith('site/radio/'):
            match = re.fullmatch(r'site/radio/(?:audio/)?[a-z0-9-]+\.([a-f0-9]{16})\.(?:mp3|svg)', key)
            if not match or match.group(1) != sha[:16]:
                raise ValueError('Radio asset key must carry its content SHA-256 prefix: ' + key)
        try:
            old = client.head_object(Bucket=bucket, Key=key)
            same = old.get('Metadata', {}).get('sha256') == sha
            exists = True
        except client.exceptions.ClientError as e:
            if e.response['Error']['Code'] not in ['404', 'NoSuchKey']: raise
            same = exists = False
        if same: continue
        immutable = immutable_key(key)
        if immutable and exists: raise ValueError('Immutable key already exists with a different/missing hash: ' + key)
        changes.append({'key': key, 'bytes': file.stat().st_size, 'sha256': sha, 'replaces': exists})
    # Publish dependencies first and switch public pointers/entry HTML last.
    changes.sort(key=lambda c: 3 if c['key'] in [entry, 'site/cpu-renderer-check.html'] else 2 if c['key'] == 'data/delivery.json'
                 else 1 if '/packs/index-' in c['key'] else 0)
    if record:
        record.parent.mkdir(parents=True, exist_ok=True)
        record.write_text(json.dumps({'execute': execute, 'changes': changes}, indent=2))
    # Save exact plan before doing any PUT. Review the dry run first.
    if execute:
        lookup = dict(selected)
        for change in changes:
            key, file = change['key'], lookup[change['key']]
            mime = {'.bin': 'application/octet-stream', '.mp3': 'audio/mpeg', '.svg': 'image/svg+xml'}.get(file.suffix.lower()) or mimetypes.guess_type(file.name)[0] or 'application/octet-stream'
            client.upload_file(str(file), bucket, key, ExtraArgs={'ContentType': mime,
                'CacheControl': 'public, max-age=31536000, immutable' if immutable_key(key) else 'no-cache',
                'Metadata': {'sha256': change['sha256']}})
    print(json.dumps({'uploaded' if execute else 'planned': len(changes), 'bytes': sum(x['bytes'] for x in changes),
                      'replacedKeys': [x['key'] for x in changes if x['replaces']]}))
    return changes

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--site', type=Path)
    parser.add_argument('--packs', type=Path)
    parser.add_argument('--entry', default='site/index.html')
    parser.add_argument('--record', type=Path, required=True)
    parser.add_argument('--execute', action='store_true')
    args = parser.parse_args()
    publish(args.site, args.packs, args.entry, args.execute, args.record)
