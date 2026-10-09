"""Compare the same interval after world-ready, retaining workload evidence."""
import json, math, sys
from pathlib import Path

def stats(values):
    values = sorted(v for v in values if v is not None)
    if not values:
        return None
    count = len(values)
    return dict(samples=count, mean=sum(values)/count, median=values[(count-1)//2] if count%2 else (values[count//2-1]+values[count//2])/2,
                p95=values[max(0,math.ceil(count*.95)-1)], max=values[-1])

rows = []
for name in sys.argv[1:]:
    path = Path(name)
    report = json.loads(path.read_text(encoding='utf-8-sig'))
    ready = report['gpu']['worldReadyAtMs']
    frames = [f for f in report['capturedFrames'] if 80000 <= f['timeMs']-ready < 130000]
    row = dict(file=path.name, after_ready_seconds=[80,130], frames=len(frames))
    for key in ['frameMs','cpuMs','gpuMs','draws','triangles','renderPasses','uploadCpuMs','uploadBytes','idleMs','yieldWaitMs']:
        row[key] = stats([f.get(key) for f in frames])
    row['fps'] = 1000/row['frameMs']['mean'] if row['frameMs'] else None
    row['framesOver100Ms'] = sum(f['frameMs']>100 for f in frames)
    row['resources'] = report.get('capturedResources')
    row['benchmark'] = [dict(label=c['label'], inputEvents=c.get('inputEventsAfterWarmup'), playerInputLocked=c.get('playerInputLocked')) for c in report['comparisons']]
    rows.append(row)
print(json.dumps(rows,indent=2))
Path('performance/geometry-comparison.json').write_text(json.dumps(rows,indent=2))
