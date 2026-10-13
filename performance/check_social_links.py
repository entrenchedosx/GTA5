"""Reject social URLs in served UI sources, including promotional SVG assets."""
from pathlib import Path
import re
root=Path(__file__).resolve().parent.parent/'mirror/playgta5.com'
social=re.compile(r'(?:https?:)?//(?:[\w-]+\.)*(?:discord(?:app)?\.(?:com|gg)|youtu(?:be\.com|\.be)|twitter\.com|x\.com|instagram\.com|tiktok\.com|facebook\.com|fb\.com|reddit\.com|t\.me|twitch\.tv|snapchat\.com)(?:[/:?#\s"\'<>]|$)',re.I)
checked=0;bad=[]
for p in root.rglob('*'):
    if p.suffix.lower() not in {'.html','.js','.css','.svg'} or 'data' in p.relative_to(root).parts: continue
    checked+=1
    if social.search(p.read_text(encoding='utf-8',errors='replace')): bad.append(p.relative_to(root).as_posix())
if bad: raise SystemExit('Social links found in: '+', '.join(bad))
print(f'PASS: {checked} served UI source files contain no social-media URLs')
