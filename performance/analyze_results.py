"""Summarize exported controlled browser comparisons without averaging FPS."""
import json, math, sys
from pathlib import Path
path = Path(sys.argv[1])
r = json.loads(path.read_text(encoding='utf-8-sig'))
rows=[]
for c in r.get('comparisons', []):
 s=c['results']
 rows.append({'label': c['label'], 'frames':s['frames'], 'fps':s['fps'],
  'mean_ms':s['frameMs']['mean'],'median_ms':s['frameMs']['median'],'p95_ms':s['frameMs']['p95'], 'max_ms':s['frameMs']['max'],
  'over100ms':s['framesOver100Ms'], 'renderer_cpu_ms':s['cpuMs']['mean'],
  'gpu_pass_ms':s['gpuMs']['mean'] if s['gpuMs'] else None,
  'draws':s['draws']['mean'],'triangles':s['triangles']['mean'], 'upload_cpu_ms':s['uploadCpuMs']['mean'],
  'input_events':c.get('inputEventsAfterWarmup'), 'memory':s['memory'], 'cache_counts':c['cacheDelta']})
print(json.dumps(rows,indent=2))
raw=r.get('capturedFrames',[])
if raw and rows:
 print('Captured frames:',len(raw))
 for c in r['comparisons']:
  f=[f for f in raw if c['startMs']+5000 <= f['timeMs'] <= c['endMs']]
  worst=sorted(f,key=lambda f:f.get('frameMs') or 0,reverse=True)[:3]
  print(c['label'],'worst frames:',json.dumps([{k:x.get(k) for k in ['frameMs','cpuMs','idleMs','yieldWaitMs','uploadCpuMs','uploadBytes','draws','gpuMs','newPipelines']} for x in worst]))
out=path.with_suffix('.summary.json')
out.write_text(json.dumps(rows,indent=2))
