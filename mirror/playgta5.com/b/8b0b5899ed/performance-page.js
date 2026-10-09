// Only imported with ?profile=1. Diagnostic snapshots stay on this page.
const q = new URLSearchParams(location.search);
const environment = { browser: navigator.userAgent, viewport: [innerWidth, innerHeight],
  devicePixelRatio, crossOriginIsolated, settings: Object.fromEntries(q), visibility: document.visibilityState };
const output = document.createElement('pre');
output.id = 'performance-results';
output.hidden = true;
document.body.append(output);
const badge = document.createElement('div');
badge.id = 'performance-summary';
badge.style.cssText = 'position:fixed;right:8px;top:8px;z-index:20;color:#fff;background:#000b;padding:8px;font:12px monospace;pointer-events:none;white-space:pre';
document.body.append(badge);
let gpu = null, io = null;
const history = [];
const logs = [];
const engineDiagnostics = [];
let capturedFrames = [];
let capturedResources = null;
let inputEvents = 0, phaseInputStart = null;
// Only event counts, never typed text or key identities. Camera movement also
// changes the workload when pointer lock is off in the existing input layer.
for (const type of ['keydown', 'keyup', 'mousemove', 'wheel']) addEventListener(type, () => inputEvents++);
const save = document.createElement('button');
save.dataset.performanceControl = 'true';
save.textContent = 'Save performance report';
save.style.cssText = 'position:fixed;right:8px;top:70px;z-index:20';
document.body.append(save);
function downloadReport() {
  const url = URL.createObjectURL(new Blob([output.textContent], { type: 'application/json' }));
  const link = document.createElement('a');
  link.href = url; link.download = 'performance-' + (q.get('revision') || 'report') + '.json';
  link.click(); setTimeout(() => URL.revokeObjectURL(url), 10000);
}
save.onclick = () => { control.postMessage({ capture: true }); };
new BroadcastChannel('game-performance-capture').onmessage = e => {
  capturedFrames = e.data.frames; capturedResources = e.data.resources; publish(); downloadReport(); capturedFrames = []; capturedResources = null;
};
const compare = document.createElement('button');
compare.dataset.performanceControl = 'true';
const geometryBenchmark = q.get('benchmark') === 'geometry';
compare.textContent = geometryBenchmark ? 'Run stationary benchmark' : 'Run cache A/B/A test';
compare.style.cssText = 'position:fixed;right:8px;top:100px;z-index:20';
document.body.append(compare);
const picture = document.createElement('button');
picture.dataset.performanceControl = 'true'; picture.textContent = 'Save scene image';
picture.style.cssText = 'position:fixed;right:8px;top:130px;z-index:20'; document.body.append(picture);
picture.onclick = () => document.querySelector('canvas').toBlob(blob => {
  if (!blob) { picture.textContent = 'Scene image unavailable'; return; }
  const url = URL.createObjectURL(blob), link = document.createElement('a');
  link.href = url; link.download = 'scene-' + (q.get('revision') || 'report') + '.png'; link.click();
  setTimeout(() => URL.revokeObjectURL(url), 10000);
});
// The original game routes unlocked mouse movement to the camera. Diagnostic
// controls must not rotate that camera when starting or saving a benchmark.
for (const type of ['mousemove', 'mousedown', 'mouseup', 'wheel']) addEventListener(type, e => {
  if (e.target.closest?.('[data-performance-control]')) e.stopImmediatePropagation();
}, { capture: true });
const control = new BroadcastChannel('game-performance-control');
const comparisons = [];
const phaseSeconds = Math.max(15, Math.min(120, Number(q.get('benchmarkSeconds')) || 35));
let comparisonIndex = -1;
let comparisonWatchdog = null;
let automaticBenchmarkStarted = false;
const phases = geometryBenchmark ? [ { label: q.get('bufferArena') !== '0' ? 'geometry-arena' : 'dedicated-buffers', bindingOptimizationEnabled: false } ] : [ { label: 'original-A', bindingOptimizationEnabled: false },
  { label: 'optimized-B', bindingOptimizationEnabled: true }, { label: 'original-A2', bindingOptimizationEnabled: false } ];
function cancelBenchmark() {
  if (comparisonIndex < 0 && (q.get('autoBenchmark') !== '1' || automaticBenchmarkStarted)) return;
  automaticBenchmarkStarted = true;
  comparisonIndex = -1; compare.disabled = false; compare.textContent = 'Benchmark cancelled; run again';
  clearTimeout(comparisonWatchdog);
  dispatchEvent(new CustomEvent('performance-benchmark-input', { detail: { locked: false } }));
}
addEventListener('keydown', e => { if (e.code === 'Escape') cancelBenchmark(); });
if (q.get('autoBenchmark') === '1') comparisonWatchdog = setTimeout(cancelBenchmark, 240000);
compare.onclick = () => {
  if (!gpu?.worldReadyAtMs || gpu.elapsedAfterReadyMs < 45000) { compare.textContent = 'Wait for 45 s after world ready'; return; }
  comparisons.length = 0; comparisonIndex = 0; compare.disabled = true;
  phaseInputStart = null;
  dispatchEvent(new CustomEvent('performance-benchmark-input', { detail: { locked: true } }));
  clearTimeout(comparisonWatchdog);
  comparisonWatchdog = setTimeout(cancelBenchmark, phaseSeconds * 3000 + 30000);
  control.postMessage(phases[comparisonIndex]);
  if (q.get('autoBenchmark') === '1') picture.onclick();
};
function publish() {
  environment.visibility = document.visibilityState;
  const report = { environment, gpu, io, history, logs, engineDiagnostics, comparisons, capturedFrames, capturedResources };
  output.textContent = JSON.stringify(report);
  const s = gpu?.steady;
  badge.textContent = s?.frameMs ? `${s.fps.toFixed(1)} FPS | median ${s.frameMs.median.toFixed(1)} ms | p95 ${s.frameMs.p95.toFixed(1)} ms\nCPU renderer ${s.cpuMs.mean.toFixed(1)} ms | GPU passes ${s.gpuMs ? s.gpuMs.mean.toFixed(1) : '?'} ms\n${s.frames} steady frames | ready +${(gpu.elapsedAfterReadyMs / 1000).toFixed(0)} s` : 'Profiling: waiting for world and 15 s warm-up';
  if (comparisonIndex >= 0) badge.textContent += '\nStationary benchmark: player controls temporarily held';
  else if (q.get('autoBenchmark') === '1' && !automaticBenchmarkStarted) badge.textContent += '\nBenchmark warm-up: controls held; Escape cancels';
}
new BroadcastChannel('game-performance').onmessage = e => {
  gpu = e.data;
  if (q.get('autoBenchmark') === '1' && !automaticBenchmarkStarted && gpu.elapsedAfterReadyMs >= 70000) {
    automaticBenchmarkStarted = true; compare.onclick();
  }
  if (comparisonIndex >= 0 && gpu.comparison?.label === phases[comparisonIndex]?.label) {
    if (gpu.comparison.elapsedMs >= 5000 && phaseInputStart === null) phaseInputStart = inputEvents;
    gpu.comparison.inputEventsAfterWarmup = phaseInputStart === null ? 0 : inputEvents - phaseInputStart;
    gpu.comparison.playerInputLocked = true;
    compare.textContent = gpu.comparison.label + ': ' + (gpu.comparison.elapsedMs / 1000).toFixed(0) + '/' + phaseSeconds + ' s';
    if (gpu.comparison.elapsedMs >= phaseSeconds * 1000) {
      comparisons.push(gpu.comparison); comparisonIndex++; phaseInputStart = null;
      if (comparisonIndex < phases.length) control.postMessage(phases[comparisonIndex]);
      else { comparisonIndex = -1; clearTimeout(comparisonWatchdog); compare.textContent = geometryBenchmark ? 'Stationary benchmark complete' : 'Cache A/B/A test complete'; compare.disabled = false; dispatchEvent(new CustomEvent('performance-benchmark-input', { detail: { locked: false } })); }
    }
  }
  history.push({ elapsedAfterReadyMs: gpu.elapsedAfterReadyMs, recent: gpu.recent, steady: gpu.steady });
  if (history.length > 60) history.shift();
  publish();
};
new BroadcastChannel('game-performance-io').onmessage = e => { io = e.data; publish(); };
new BroadcastChannel('game-performance-log').onmessage = e => { logs.push(e.data); if (logs.length > 40) logs.shift(); };
new BroadcastChannel('game-progress').onmessage = e => {
  for (const line of e.data.lines || []) if (/\[wasm\].*(freeze|engine waits|threads|frame)/.test(line)) {
    engineDiagnostics.push(line); if (engineDiagnostics.length > 40) engineDiagnostics.shift();
  }
};
publish();
