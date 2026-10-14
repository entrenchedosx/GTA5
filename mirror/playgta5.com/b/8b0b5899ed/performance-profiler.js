'use strict';

// Opt-in diagnostics only. Timings describe this JS consumer, not the WASM
// producer. Pass timestamps are sampled, resolved asynchronously, and bounded.
class GamePerformanceProfiler {
  constructor(device, info, options = {}) {
    this.device = device;
    this.info = info;
    this.every = options.gpuSampleEvery || 30;
    this.capacity = 2048;
    this.maxFrames = 7200;
    this.frames = [];
    this.current = this.empty();
    this.lastPresent = 0;
    this.cpuStart = 0;
    this.frameNumber = 0;
    this.lastReport = 0;
    this.readyAt = 0;
    this.droppedSamples = 0;
    this.gpuErrors = 0;
    this.readbacks = [];
    this.sampledCpu = new Map();
    this.cacheStats = { resets: 0, fastChecks: 0, fastHits: 0, resourceEpochMisses: 0, packCalls: 0, packHits: 0, packBytes: 0, bgSlowPaths: 0, bgFastEntryAllocations: 0, bgFastEntryReuses: 0 };
    this.channel = new BroadcastChannel('game-performance');
    this.slots = device.features.has('timestamp-query') ? Array.from({ length: 3 }, () => ({
      query: device.createQuerySet({ type: 'timestamp', count: this.capacity }),
      resolve: device.createBuffer({ size: this.capacity * 8, usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC }),
      read: device.createBuffer({ size: this.capacity * 8, usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST }),
      busy: false
    })) : [];
    this.sample = null;
  }
  empty() {
    return { cpuMs: 0, idleMs: 0, syncWaitMs: 0, yieldWaitMs: 0, shaderWaitMs: 0,
      draws: 0, indirectDraws: 0, verticesOrIndices: 0, triangles: 0,
      renderPasses: 0, computePasses: 0, gpuMs: null, gpuSpanMs: null, gpuPasses: null };
  }
  startComparison(label) {
    this.comparison = { label, start: performance.now(), cacheStart: { ...this.cacheStats } };
    this.sampledCpu.clear();
  }
  enterCpu() { this.cpuStart = performance.now(); }
  leaveCpu() {
    if (this.cpuStart) this.current.cpuMs += performance.now() - this.cpuStart;
    this.cpuStart = 0;
  }
  async wait(kind, operation) {
    this.leaveCpu();
    const now = performance.now();
    try { return await operation(); }
    finally { this.current[kind] += performance.now() - now; this.enterCpu(); }
  }
  wrapEncoder(enc) {
    for (const [method, kind, counter] of [['beginRenderPass', 'render', 'renderPasses'], ['beginComputePass', 'compute', 'computePasses']]) {
      const original = enc[method].bind(enc);
      enc[method] = (descriptor = {}) => {
        this.current[counter]++;
        const s = this.sample;
        if (s && s.used + 2 <= this.capacity) {
          const first = s.used; s.used += 2;
          s.labels.push(kind);
          descriptor = { ...descriptor, timestampWrites: { querySet: s.query, beginningOfPassWriteIndex: first, endOfPassWriteIndex: first + 1 } };
        } else if (s) s.overflow = true;
        return original(descriptor);
      };
    }
    return enc;
  }
  draw(count, instances, topology, indirect = false) {
    this.current.draws++;
    if (indirect) { this.current.indirectDraws++; return; }
    this.current.verticesOrIndices += count * instances;
    this.current.triangles += (topology === 4 ? Math.floor(count / 3) : topology === 5 ? Math.max(0, count - 2) : 0) * instances;
  }
  recordCpu(name, ms) {
    const e = this.sampledCpu.get(name) || { calls: 0, ms: 0 };
    e.calls++; e.ms += ms;
    this.sampledCpu.set(name, e);
  }
  noteReadback(entry) {
    this.readbacks.push({ ...entry, timeMs: performance.now() });
    if (this.readbacks.length > 256) this.readbacks.shift();
  }
  resolveSample(frame) {
    const s = this.sample;
    this.sample = null;
    if (!s) return;
    if (!s.used) { s.busy = false; return; }
    const enc = this.device.createCommandEncoder();
    enc.resolveQuerySet(s.query, 0, s.used, s.resolve, 0);
    enc.copyBufferToBuffer(s.resolve, 0, s.read, 0, s.used * 8);
    this.device.queue.submit([enc.finish()]);
    // Do not await this on the command-consumer path or use queue completion as
    // an estimate of GPU duration. A busy slot is never reused until unmapping.
    s.read.mapAsync(GPUMapMode.READ).then(() => {
      const values = new BigUint64Array(s.read.getMappedRange());
      let sum = 0n, first = null, last = 0n;
      const byKind = { render: 0, compute: 0 };
      for (let i = 0; i < s.used; i += 2) {
        const a = values[i], b = values[i + 1];
        if (b < a) { this.gpuErrors++; return; }
        sum += b - a;
        byKind[s.labels[i / 2]] += Number(b - a) / 1e6;
        if (first === null || a < first) first = a;
        if (b > last) last = b;
      }
      if (!s.overflow) {
        frame.gpuMs = Number(sum) / 1e6;
        frame.gpuSpanMs = Number(last - first) / 1e6;
        frame.gpuPasses = byKind;
      } else this.droppedSamples++;
    }).catch(() => { this.gpuErrors++; }).finally(() => {
      if (s.read.mapState === 'mapped') s.read.unmap();
      s.busy = false;
    });
  }
  present(extra) {
    this.leaveCpu();
    const now = performance.now();
    const frame = { ...this.current, ...extra, comparisonLabel: this.comparison?.label || null, n: this.frameNumber++, timeMs: now,
      frameMs: this.lastPresent ? now - this.lastPresent : null };
    this.lastPresent = now;
    if (extra.worldReady && !this.readyAt) this.readyAt = now;
    this.frames.push(frame);
    if (this.frames.length > this.maxFrames) this.frames.shift();
    this.resolveSample(frame);
    this.current = this.empty();
    if (this.frameNumber % this.every === 0 && this.slots.length) {
      const s = this.slots.find(s => !s.busy);
      if (s) { s.busy = true; s.used = 0; s.labels = []; s.overflow = false; this.sample = s; }
      else this.droppedSamples++;
    }
    if (now - this.lastReport >= 2000) {
      this.lastReport = now;
      this.channel.postMessage(this.report(now));
    }
    this.enterCpu();
  }
  report(now = performance.now()) {
    const stats = (frames, key) => {
      const a = frames.map(f => f[key]).filter(v => typeof v === 'number' && Number.isFinite(v)).sort((a, b) => a - b);
      if (!a.length) return null;
      const mean = a.reduce((a, b) => a + b, 0) / a.length;
      const q = p => a[Math.max(0, Math.ceil(p * a.length) - 1)];
      return { samples: a.length, mean, median: q(.5), p95: q(.95), max: a[a.length - 1] };
    };
    const summarize = frames => {
      const result = { frames: frames.length };
      for (const key of ['frameMs', 'cpuMs', 'idleMs', 'syncWaitMs', 'yieldWaitMs', 'shaderWaitMs', 'gpuMs', 'gpuSpanMs', 'draws', 'triangles', 'verticesOrIndices', 'renderPasses', 'computePasses', 'uploadBytes', 'submits', 'pipelineCpuMs', 'moduleCpuMs', 'uploadCpuMs', 'flushCpuMs', 'newPipelines', 'skippedDraws', 'newBindGroups']) result[key] = stats(frames, key);
      result.fps = result.frameMs ? 1000 / result.frameMs.mean : null;
      result.framesOver100Ms = frames.filter(f => f.frameMs > 100).length;
      result.memory = frames.length ? frames[frames.length - 1].memory : null;
      return result;
    };
    const steady = this.frames.filter(f => this.readyAt && f.timeMs >= this.readyAt + 15000 && f.timeMs >= now - 30000 && f.frameMs !== null);
    const c = this.comparison;
    const comparison = c ? { label: c.label, startMs: c.start, endMs: now, elapsedMs: now - c.start,
      results: summarize(this.frames.filter(f => f.timeMs >= c.start + 5000 && f.frameMs !== null)),
      cacheDelta: Object.fromEntries(Object.entries(this.cacheStats).map(([k, v]) => [k, v - c.cacheStart[k]])),
      sampledCpuFunctions: Object.fromEntries(this.sampledCpu) } : null;
    return { version: 1, environment: this.info, timestampQuery: !!this.slots.length,
      comparison,
      gpuSampleEvery: this.every, droppedGpuSamples: this.droppedSamples, gpuErrors: this.gpuErrors,
      sampledCpuFunctions: Object.fromEntries(this.sampledCpu),
      cacheStats: { ...this.cacheStats },
      recentReadbacks: this.readbacks.filter(r => r.timeMs >= now - 30000),
      worstRecentFrames: this.frames.filter(f => f.timeMs >= now - 30000 && f.frameMs > 40).sort((a, b) => b.frameMs - a.frameMs).slice(0, 8),
      worldReadyAtMs: this.readyAt, elapsedAfterReadyMs: this.readyAt ? now - this.readyAt : null,
      limitations: ['CPU is JS rendering-worker active wall time, excluding explicit awaits; WASM simulation and physics are not separable without engine source.', 'GPU sum measures timed render/compute passes; span includes GPU idle gaps and copies between passes. It is not CPU time.', 'Indirect geometry counts and engine entity/visibility counts are unavailable.', 'Memory is capacity/accounting, not physical residency.'],
      recent: summarize(this.frames.filter(f => f.timeMs >= now - 30000 && f.frameMs !== null)),
      steady: summarize(steady), latest: this.frames[this.frames.length - 1] };
  }
}
if (typeof module !== 'undefined') module.exports = { GamePerformanceProfiler };
