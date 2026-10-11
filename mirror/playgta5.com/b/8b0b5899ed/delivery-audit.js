// Opt-in measurements stay in the page; no file contents or user telemetry.
(function () {
  const q = new URLSearchParams(self.location.search);
  if (q.get('deliveryAudit') !== '1') return;
  const channel = new BroadcastChannel('game-delivery-audit');
  const stats = { role: q.get('role') || 'worker', requests: 0, failed: 0, classes: {}, timings: [], encodedBytes: 0, decodedBytes: 0, networkResources: 0, transferBytes: 0, browserCacheHits: 0 };
  const original = self.fetch.bind(self);
  self.fetch = async function (url, init) {
    const path = new URL(typeof url === 'string' ? url : url.url, self.location.href).pathname;
    const kind = path.includes('/packs/') ? 'pack' : path.includes('/batchc/') ? 'batch-cache' : path.endsWith('/batch') ? 'batch-post' : path.startsWith('/data/') ? 'data' : path.includes('/shaders/') ? 'shader' : 'code';
    stats.requests++; stats.classes[kind] = (stats.classes[kind] || 0) + 1;
    try { const response = await original(url, init); if (!response.ok) stats.failed++; return response; }
    catch (e) { stats.failed++; throw e; }
  };
  performance.setResourceTimingBufferSize(20000);
  new PerformanceObserver(list => {
    for (const e of list.getEntries()) {
      stats.encodedBytes += e.encodedBodySize; stats.decodedBytes += e.decodedBodySize;
      if (e.transferSize > 0) { stats.networkResources++; stats.transferBytes += e.transferSize; }
      if (e.transferSize === 0 && e.decodedBodySize > 0) stats.browserCacheHits++;
      // Cached worker imports sometimes expose responseStart=0; negative
      // durations cannot measure network waits and must not enter the totals.
      if (e.responseStart >= e.startTime && e.responseEnd >= e.responseStart && stats.timings.length < 20000) stats.timings.push([e.startTime, e.responseStart - e.startTime, e.responseEnd - e.responseStart]);
    }
  }).observe({ type: 'resource', buffered: true });
  setInterval(() => channel.postMessage({ ...stats, elapsedMs: performance.now() }), 1000);
})();
