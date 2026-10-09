"""Check the Git file list for upload limits, local artifacts and credential patterns."""
from pathlib import Path
import json
import re
import subprocess

root = Path(__file__).resolve().parent.parent
files = subprocess.check_output(['git', 'ls-files', '-z'], cwd=root).decode().split('\0')[:-1]
forbidden = ('runtime/', '.downloads/', '.installed-parts/', 'media/',
             'mirror/playgta5.com/data/', 'mirror/playgta5.com/b/8b0b5899ed/title/',
             'performance/original/', 'userdata/', 'savegames/')
patterns = {
    'GitHub token': rb'\b(?:gh[pousr]_[A-Za-z0-9]{30,}|github_pat_[A-Za-z0-9_]{60,})\b',
    'AWS access key': rb'\b(?:AKIA|ASIA)[A-Z0-9]{16}\b',
    'Google API key': rb'\bAIza[A-Za-z0-9_-]{35}\b',
    'Slack token': rb'\bxox[baprs]-[A-Za-z0-9-]{20,}\b',
    'live payment key': rb'\bsk_live_[A-Za-z0-9]{20,}\b',
    # Parser delimiter strings alone are common in compiled crypto libraries.
    'private key': rb'-----BEGIN (?:RSA |EC |DSA |OPENSSH |ENCRYPTED )?PRIVATE KEY-----[A-Za-z0-9+/=\r\n ]{32,}-----END (?:RSA |EC |DSA |OPENSSH |ENCRYPTED )?PRIVATE KEY-----',
    'machine home path': rb'[A-Za-z]:[/\\]Users[/\\][A-Za-z0-9_.-]+',
}
rules = {name: re.compile(pattern) for name, pattern in patterns.items()}
issues, total = [], 0
for name in files:
    path = root / name
    size = path.stat().st_size
    total += size
    if name.startswith(forbidden) or '__pycache__' in path.parts or path.suffix in {'.log', '.pyc', '.partial', '.rpf'}:
        issues.append({'file': name, 'rule': 'local artifact'})
    if name.startswith('performance/') and path.suffix in {'.json', '.jsonl', '.png'} and name != 'performance/benchmark-summary.json':
        issues.append({'file': name, 'rule': 'raw benchmark artifact'})
    if size >= 100 * 1024 * 1024:
        issues.append({'file': name, 'rule': '100 MiB file limit'})
    found = set()
    with path.open('rb') as source:
        overlap = b''
        while chunk := source.read(1024 * 1024):
            data = overlap + chunk
            for label, rule in rules.items():
                checked = data.replace(bytes([92,110]), bytes([10])).replace(bytes([92,114]), bytes([13])) if label == 'private key' else data
                if label not in found and rule.search(checked):
                    issues.append({'file': name, 'rule': label})
                    found.add(label)
            overlap = data[-16384:]
print(json.dumps({'trackedFiles': len(files), 'trackedBytes': total, 'issues': issues}, indent=2))
raise SystemExit(bool(issues))
