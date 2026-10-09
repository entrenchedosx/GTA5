const assert = require('node:assert/strict');
const { GamePerformanceProfiler } = require('../mirror/playgta5.com/b/8b0b5899ed/performance-profiler.js');
class Channel { postMessage() {} }
global.BroadcastChannel = Channel;
global.GPUBufferUsage = { QUERY_RESOLVE: 1, COPY_SRC: 2, MAP_READ: 4, COPY_DST: 8 };
global.GPUMapMode = { READ: 1 };
let pending = [], submits = 0;
const buffers = [];
const device = {
  features: new Set(['timestamp-query']),
  createQuerySet(d) { return d; },
  createBuffer(d) {
    const b = { size: d.size, mapState: 'unmapped', values: new BigUint64Array([1000000n, 3000000n, 4000000n, 5000000n]),
      mapAsync() { this.mapState = 'pending'; return new Promise(resolve => pending.push(() => { this.mapState = 'mapped'; resolve(); })); },
      getMappedRange() { return this.values.buffer; }, unmap() { this.mapState = 'unmapped'; } };
    buffers.push(b); return b;
  },
  createCommandEncoder() { return { resolveQuerySet() {}, copyBufferToBuffer() {}, finish() { return {}; } }; },
  queue: { submit() { submits++; } }
};
async function main() {
  const p = new GamePerformanceProfiler(device, { api: 'test' });
  assert.equal(p.slots.length, 3);
  assert.equal(buffers.length, 6, 'timestamp buffers are bounded');
  const s = p.slots[0]; s.busy = true; s.used = 4; s.labels = ['render', 'compute']; p.sample = s;
  const frame = {};
  p.resolveSample(frame);
  assert.equal(submits, 1);
  assert.equal(frame.gpuMs, undefined, 'CPU consumer does not wait for GPU mapping');
  assert.equal(s.busy, true, 'a mapping in flight cannot be recycled');
  pending.shift()(); await new Promise(resolve => setImmediate(resolve));
  assert.equal(frame.gpuMs, 3, 'sum excludes the gap between passes');
  assert.equal(frame.gpuSpanMs, 4, 'span includes the gap');
  assert.deepEqual(frame.gpuPasses, { render: 2, compute: 1 });
  assert.equal(s.busy, false); assert.equal(s.read.mapState, 'unmapped');
  s.busy = true; s.used = 2; s.labels = ['render']; s.overflow = true; p.sample = s;
  const incomplete = {}; p.resolveSample(incomplete);
  pending.shift()(); await new Promise(resolve => setImmediate(resolve));
  assert.equal(incomplete.gpuMs, undefined, 'overflow never reports partial GPU work as full timing');
  assert.equal(p.droppedSamples, 1);
  p.readyAt = 1;
  p.frames = Array.from({ length: 100 }, (_, i) => ({ timeMs: 16001 + i, frameMs: i + 1, cpuMs: 1, memory: {} }));
  const report = p.report(17000);
  assert.equal(report.steady.frameMs.median, 50); assert.equal(report.steady.frameMs.p95, 95);
  assert.equal(report.steady.fps, 1000 / 50.5, 'FPS derives from total time, not a mean of per-frame FPS');
  const fallback = new GamePerformanceProfiler({ features: new Set() }, {});
  assert.equal(fallback.slots.length, 0, 'unsupported timestamp queries allocate no resources');
  assert.equal(fallback.report().timestampQuery, false);
  console.log('PASS: asynchronous GPU timings, slot lifetime, overflow, pass sum/span, percentile/FPS calculations, unsupported-feature fallback');
}
main().catch(error => { console.error(error); process.exitCode = 1; });
