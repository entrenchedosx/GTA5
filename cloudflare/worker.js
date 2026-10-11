// Read-only delivery from the existing private R2 bucket. No upload/admin route.
const MAX_BATCH_BODY = 1048576, MAX_BATCH_RUNS = 1000, MAX_BATCH_TOTAL = 64 * 1048576;
const MIME = { html: 'text/html; charset=utf-8', js: 'text/javascript; charset=utf-8', mjs: 'text/javascript; charset=utf-8', wasm: 'application/wasm', json: 'application/json', wgsl: 'text/plain; charset=utf-8', css: 'text/css; charset=utf-8', png: 'image/png', webp: 'image/webp', svg: 'image/svg+xml', mp3: 'audio/mpeg', ico: 'image/x-icon', woff: 'font/woff', woff2: 'font/woff2', txt: 'text/plain; charset=utf-8', xml: 'application/xml', csv: 'text/csv' };
const isolation = { 'Cross-Origin-Opener-Policy': 'same-origin', 'Cross-Origin-Embedder-Policy': 'require-corp', 'Cross-Origin-Resource-Policy': 'same-origin', 'Accept-Ranges': 'bytes', 'X-Game-Delivery': 'worker' };
function error(status, message, extra = {}) {
  return new Response(message ? message + '\n' : null, { status, headers: { ...isolation, 'Cache-Control': 'no-store', 'Content-Type': 'text/plain', ...extra } });
}
function safeName(name) {
  if (typeof name !== 'string' || !name || name.length > 1024 || /[\\:\x00-\x1f]/.test(name)) return null;
  if (name.split('/').some(p => !p || p === '.' || p === '..')) return null;
  return name;
}
function immutable(path) {
  return /^\/data\/packs\/(?:index-)?[a-f0-9]{64}\.(?:bin|json)$/.test(path) || /^\/runtime\/[a-f0-9]{64}\/[a-zA-Z0-9_.-]+\.js$/.test(path) || /^\/data\/batchc\/[a-f0-9]{40}\.bin$/.test(path) || /^\/b\/[a-f0-9]+\/shaders\/pack\d+\.[a-f0-9]{8}\.bin$/.test(path) || /^\/radio\/(?:audio\/)?[a-z0-9-]+\.[a-f0-9]{16}\.(?:mp3|svg)$/.test(path);
}
function policy(path) { return immutable(path) ? 'public, max-age=31536000, immutable, no-transform' : 'no-cache'; }
function headersFor(obj, path, type) {
  return new Headers({ ...isolation, 'Cache-Control': policy(path), 'Content-Type': type || obj.httpMetadata?.contentType || MIME[path.split('.').pop()] || 'application/octet-stream', ETag: obj.httpEtag, 'Last-Modified': obj.uploaded.toUTCString() });
}
function rangeSpec(value) {
  const m = /^bytes=(\d*)-(\d*)$/.exec(value.trim());
  if (!m || (!m[1] && !m[2])) return null;
  const start = m[1] ? Number(m[1]) : null, end = m[2] ? Number(m[2]) : null;
  if ((start !== null && !Number.isSafeInteger(start)) || (end !== null && !Number.isSafeInteger(end)) || (start === null && !end) || (start !== null && end !== null && end < start)) return null;
  return start === null ? { suffix: end } : end === null ? { offset: start } : { offset: start, length: end - start + 1 };
}
function notModified(request, obj) {
  const etags = request.headers.get('If-None-Match');
  if (etags) return etags.split(',').some(s => s.trim() === '*' || s.trim().replace(/^W\//, '') === obj.httpEtag);
  const since = request.headers.get('If-Modified-Since');
  return since && Number.isFinite(Date.parse(since)) && Math.floor(obj.uploaded.getTime() / 1000) <= Math.floor(Date.parse(since) / 1000);
}
async function serveObject(env, key, request, url, type) {
  const rawRange = request.headers.get('Range'), range = rawRange ? rangeSpec(rawRange) : null;
  if (rawRange && !range) return error(416, 'Unsupported or invalid range');
  // Only If-Range and invalid offsets need HEAD; ordinary GET uses one R2 read.
  let selected = range;
  if (range && request.headers.has('If-Range')) {
    const info = await env.ASSETS.head(key);
    if (!info) return error(404, 'Not found');
    const condition = request.headers.get('If-Range');
    if (condition !== info.httpEtag && !(Number.isFinite(Date.parse(condition)) && info.uploaded.getTime() <= Date.parse(condition) + 999)) selected = null;
  }
  let obj;
  try { obj = request.method === 'HEAD' ? await env.ASSETS.head(key) : await env.ASSETS.get(key, selected ? { range: selected } : undefined); }
  catch (e) {
    if (!selected) throw e;
    const info = await env.ASSETS.head(key);
    if (!info) return error(404, 'Not found');
    if (info.size === 0 || (selected.offset !== undefined && selected.offset >= info.size)) return error(416, null, { 'Content-Range': 'bytes */' + info.size, 'Content-Length': '0' });
    throw e;
  }
  if (!obj) return error(404, 'Not found');
  const headers = headersFor(obj, url.pathname, type);
  if (notModified(request, obj)) { if (obj.body) await obj.body.cancel(); return new Response(null, { status: 304, headers }); }
  if (request.method === 'HEAD') { headers.set('Content-Length', obj.size); return new Response(null, { headers }); }
  if (selected) {
    if (obj.size === 0 || (selected.offset !== undefined && selected.offset >= obj.size)) { await obj.body.cancel(); return error(416, null, { 'Content-Range': 'bytes */' + obj.size, 'Content-Length': '0' }); }
    const start = selected.suffix !== undefined ? Math.max(0, obj.size - selected.suffix) : selected.offset;
    const length = Math.min(selected.length === undefined ? obj.size - start : selected.length, obj.size - start);
    headers.set('Content-Range', `bytes ${start}-${start + length - 1}/${obj.size}`); headers.set('Content-Length', length);
    return new Response(obj.body, { status: 206, headers });
  }
  headers.set('Content-Length', obj.size); return new Response(obj.body, { headers });
}
async function readJSON(request) {
  if (Number(request.headers.get('Content-Length')) > MAX_BATCH_BODY) throw new Error('Batch body exceeds 1 MiB');
  const reader = request.body?.getReader(); if (!reader) throw new Error('Empty batch');
  const chunks = []; let size = 0;
  try { for (;;) { const { done, value } = await reader.read(); if (done) break; size += value.length; if (size > MAX_BATCH_BODY) throw new Error('Batch body exceeds 1 MiB'); chunks.push(value); } }
  finally { await reader.cancel().catch(() => {}); }
  return JSON.parse(await new Blob(chunks).text());
}
async function handleBatch(request, env, url) {
  let selected;
  try {
    const runs = await readJSON(request);
    if (!Array.isArray(runs) || !runs.length || runs.length > MAX_BATCH_RUNS) throw new Error('Invalid batch');
    let total = 0;
    selected = runs.map(run => {
      if (!Array.isArray(run) || run.length !== 3) throw new Error('Invalid range');
      const [name, start, end] = run;
      if (!safeName(name) || /^(batch$|batchc\/|packs\/)/i.test(name) || !Number.isSafeInteger(start) || !Number.isSafeInteger(end) || start < 0 || end < start) throw new Error('Invalid file/range');
      const length = end - start + 1; total += length;
      if (!Number.isSafeInteger(length) || total > MAX_BATCH_TOTAL) throw new Error('Batch exceeds 64 MiB');
      return { key: 'data/' + name, start, length };
    });
  } catch (e) { return error(400, e.message); }
  // Legacy EOF/X-Run-Lengths semantics require metadata. Dedupe repeated files.
  // New client batches contain exact manifest-bounded ranges. Short/missing
  // objects fail their stream and the client retries original individual GETs.
  // Old callers retain EOF clamping and X-Run-Lengths via the metadata path.
  if (url.searchParams.get('exact') !== '1') {
    const sizes = new Map();
    for (const run of selected) {
      if (!sizes.has(run.key)) { const info = await env.ASSETS.head(run.key); if (!info) return error(404, 'Missing batch file'); sizes.set(run.key, info.size); }
      run.length = Math.max(0, Math.min(run.length, sizes.get(run.key) - run.start));
    }
  }
  let at = 0, reader = null;
  const body = new ReadableStream({
    async pull(controller) {
      try { for (;;) {
        if (reader) { const chunk = await reader.read(); if (!chunk.done) { controller.enqueue(chunk.value); return; } reader.releaseLock(); reader = null; }
        if (at >= selected.length) { controller.close(); return; }
        const run = selected[at++]; if (!run.length) continue;
        const obj = await env.ASSETS.get(run.key, { range: { offset: run.start, length: run.length } });
        if (!obj) throw new Error('Missing batch file during stream'); reader = obj.body.getReader();
      } } catch (e) { if (reader) await reader.cancel().catch(() => {}); controller.error(e); }
    },
    async cancel() { if (reader) await reader.cancel(); },
  });
  // Identity legacy batches; new .bin packs carry explicit gzip payloads.
  return new Response(body, { headers: { ...isolation, 'Cache-Control': 'no-store, no-transform', 'Content-Type': 'application/octet-stream', 'Content-Length': String(selected.reduce((n, r) => n + r.length, 0)), 'X-Run-Lengths': selected.map(r => r.length).join(',') } });
}
export default {
  async fetch(request, env) {
    const url = new URL(request.url); let path;
    try { path = decodeURIComponent(url.pathname); } catch (_) { return error(400, 'Invalid path'); }
    if (request.method === 'POST' && path === '/data/batch') return handleBatch(request, env, url);
    if (request.method === 'POST' && path === '/log') return new Response(null, { status: 204, headers: isolation });
    if (!['GET', 'HEAD'].includes(request.method)) return error(405, 'Method not allowed');
    if (path === '/data/batch') return error(405, 'Method not allowed');
    const name = path === '/' ? 'index.html' : safeName(path.slice(1));
    if (!name || path === '/data' || path === '/data/') return error(400, 'Invalid path');
    if (path.startsWith('/data/batchc/') && !/^\/data\/batchc\/[a-f0-9]{40}\.bin$/.test(path)) return error(404, 'Not found');
    const key = path.startsWith('/data/') ? name : 'site/' + name;
    // No Content-Encoding on batchc: the client explicitly decompresses it.
    return serveObject(env, key, request, url, path.startsWith('/data/batchc/') ? 'application/octet-stream' : undefined);
  },
};
