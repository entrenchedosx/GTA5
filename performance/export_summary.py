"""Publish aggregate measurements without raw frames, logs or scene captures."""
import json
from pathlib import Path

root = Path(__file__).resolve().parent
names = ['gta6-baseline-protected', 'gta6-baseline-protected-repeat',
         'gta6-arena-protected', 'gta6-arena-protected-repeat', 'gta5-arena-default']
summary = {
    'date': '2026-10-09',
    'environment': {'gpu': 'NVIDIA RTX 5060', 'cpu': 'AMD Ryzen 5 7500F',
                    'usableRamGiB': 15.5, 'browser': 'Microsoft Edge 154',
                    'api': 'WebGPU', 'resolution': [1920, 1080], 'low': 0},
    'limitations': [
        'Camera directions and streaming workloads varied despite held player input.',
        'These timings do not isolate an exact FPS gain or establish 60 FPS.',
        'CPU is renderer-worker active wall time; native simulation timing is unavailable.',
        'GPU is sampled pass execution, excluding copies; memory accounting is not VRAM residency.',
        'Short tests do not establish long-traversal memory bounds.',
    ],
    'runs': [],
    'hostMemorySnapshots': [],
}
for name in names:
    report = json.loads((root / (name + '.json')).read_text(encoding='utf-8-sig'))
    resources = report['capturedResources']
    for comparison in report['comparisons']:
        stats = comparison['results']
        summary['runs'].append({
            'name': name,
            'map': 'GTA V' if name.startswith('gta5') else 'GTA VI env_test',
            'implementation': 'shared geometry' if resources['arena'] else 'dedicated buffers',
            'captureLabel': comparison['label'],
            'frames': stats['frames'], 'fps': stats['fps'],
            'frameMs': stats['frameMs'], 'rendererCpuMs': stats['cpuMs'],
            'gpuPassMs': stats['gpuMs'], 'draws': stats['draws'], 'triangles': stats['triangles'],
            'uploadCpuMs': stats['uploadCpuMs'], 'uploadBytes': stats['uploadBytes'],
            'framesOver100Ms': stats['framesOver100Ms'],
            'memory': stats['memory'],
            'logicalGpuBuffers': resources['gpuBuffers'],
            'physicalGpuBuffers': resources['physicalGpuBuffers'], 'arena': resources['arena'],
            'gpuValidationErrors': report['gpu']['gpuErrors'],
            'inputEvents': comparison.get('inputEventsAfterWarmup'),
            'pipelineCreations': round(stats['newPipelines']['mean'] * stats['frames']),
            'skippedDraws': round(stats['skippedDraws']['mean'] * stats['frames']),
        })
for line in (root / 'host-memory.jsonl').read_text(encoding='utf-8-sig').splitlines():
    snapshot = json.loads(line)
    if 'protected' in snapshot['label']:
        summary['hostMemorySnapshots'].append(snapshot)
(root / 'benchmark-summary.json').write_text(json.dumps(summary, indent=2) + '\n', encoding='utf-8')
print('Published aggregate summary:', len(summary['runs']), 'runs')
