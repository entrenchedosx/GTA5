// Fresh diagnostic stores never erase gamedata or IndexedDB saves.
const deliveryOutput = document.createElement('pre');
deliveryOutput.id = 'delivery-results'; deliveryOutput.hidden = true; document.body.append(deliveryOutput);
const badge = document.createElement('div');
badge.style.cssText = 'position:fixed;right:8px;bottom:8px;z-index:25;background:#000c;color:white;padding:8px;font:12px monospace;pointer-events:none;white-space:pre';
document.body.append(badge);
const report = { scenario: location.search, browser: navigator.userAgent, viewport: [innerWidth, innerHeight],
  isolated: crossOriginIsolated, worldReadyMs: null, workers: {}, io: null, page: {}, milestones: {} };
function deliverySnapshot() {
  return { elapsedMs: performance.now(), io: report.io && {...report.io},
    workers: Object.fromEntries(Object.entries(report.workers).map(([role, stats]) => [role, {...stats, timings: undefined}])) };
}
function publishDelivery() {
  const entries = performance.getEntriesByType('resource');
  report.page = { resources: entries.length, encodedBytes: entries.reduce((n, e) => n + e.encodedBodySize, 0) };
  report.elapsedMs = performance.now();
  if (report.worldReadyMs !== null && !report.milestones.worldReady) report.milestones.worldReady = deliverySnapshot();
  if (report.elapsedMs >= 60000 && !report.milestones.minute) report.milestones.minute = deliverySnapshot();
  deliveryOutput.textContent = JSON.stringify(report);
  const io = report.workers.io;
  badge.textContent = `Delivery: ${io?.requests || 0} data fetches | ${io?.failed || 0} failures\nWorld ready: ${report.worldReadyMs ? (report.worldReadyMs / 1000).toFixed(1) + ' s' : 'loading'}\n${((io?.transferBytes || 0) / 1048576).toFixed(1)} MiB resource transfers (browser estimate)`;
}
new BroadcastChannel('game-delivery-audit').onmessage = e => { report.workers[e.data.role] = e.data; publishDelivery(); };
new BroadcastChannel('game-performance-io').onmessage = e => { report.io = e.data; publishDelivery(); };
new BroadcastChannel('game-progress').onmessage = e => {
  if (e.data.world && report.worldReadyMs === null) report.worldReadyMs = performance.now();
  if (e.data.error) report.error = e.data.error;
  publishDelivery();
};
setInterval(publishDelivery, 1000);
