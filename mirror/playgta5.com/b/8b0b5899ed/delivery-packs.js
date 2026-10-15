// Packs contain original file slices, not a new engine asset format.
// Never trust bytes from a pack until both hashes, sizes and its index pass.
(function () {
  const MAX_BYTES = 8 * 1048576, MAX_ENCODED = MAX_BYTES + 65536;
  const hash = async bytes => Array.from(new Uint8Array(await crypto.subtle.digest('SHA-256', bytes)), b => b.toString(16).padStart(2, '0')).join('');
  async function bounded(stream, expected, maximum, onProgress) {
    const exact = expected !== null;
    if (exact && (!Number.isSafeInteger(expected) || expected < 0 || expected > maximum)) throw new Error('Invalid pack size');
    const capacity = exact ? expected : maximum;
    const result = new Uint8Array(capacity), reader = stream.getReader(); let at = 0;
    try {
      for (;;) {
        const { done, value } = await reader.read();
        if (done) break;
        if (onProgress) onProgress(value.length);
        if (at + value.length > capacity) throw new Error('Oversized pack');
        result.set(value, at); at += value.length;
      }
      if (exact && at !== expected) throw new Error('Truncated pack');
      return exact ? result : result.subarray(0, at);
    } finally { await reader.cancel().catch(() => {}); }
  }
  class DeliveryPacks {
    constructor(packs, files) {
      if (!Array.isArray(packs) || packs.length > 1000) throw new Error('Invalid pack index');
      this.packs = packs; this.byFile = new Map(); this.failed = new Set(); this.fallback = null;
      for (const pack of packs) {
        if ((pack.prefetch !== undefined && typeof pack.prefetch !== 'boolean') || !/^\/data\/packs\/[a-f0-9]{64}\.bin$/.test(pack.url) || !pack.url.includes(pack.sha256) || !/^[a-f0-9]{64}$/.test(pack.decodedSha256) ||
            !Number.isSafeInteger(pack.bytes) || pack.bytes <= 0 || pack.bytes > MAX_BYTES ||
            !Number.isSafeInteger(pack.encodedBytes) || pack.encodedBytes <= 0 || pack.encodedBytes > MAX_ENCODED ||
            !Array.isArray(pack.runs) || pack.runs.length > 10000) throw new Error('Invalid pack descriptor');
        let end = 0;
        for (const run of pack.runs) {
          if (!Array.isArray(run) || run.length !== 4 || !run.every(Number.isSafeInteger)) throw new Error('Invalid pack run');
          const [id, start, length, offset] = run, file = files[id];
          if (!file || start < 0 || start % 4096 || length <= 0 || start + length > file.size ||
              (length % 4096 && start + length !== file.size) || offset !== end || offset + length > pack.bytes) throw new Error('Invalid pack offsets');
          end += length;
          if (!this.byFile.has(id)) this.byFile.set(id, []);
          this.byFile.get(id).push({ first: start / 4096, last: Math.floor((start + length - 1) / 4096), pack });
        }
        if (end !== pack.bytes) throw new Error('Invalid pack coverage');
      }
      for (const ranges of this.byFile.values()) {
        ranges.sort((a, b) => a.first - b.first);
        for (let i = 1; i < ranges.length; i++) if (ranges[i].first <= ranges[i - 1].last) throw new Error('Overlapping pack runs');
      }
    }
    forBlocks(id, first, last) {
      // A fully covering small metadata pack avoids an unrelated 8 MiB world
      // download. Larger reads retain the original path without double fetches.
      if (this.startup) {
        const r = (this.startup.byFile.get(id) || []).find(r => r.first <= first && r.last >= last && !this.failed.has(r.pack));
        if (r) return [r.pack];
      }
      const ranges = this.byFile.get(id) || [], selected = new Set();
      // A file normally has a few archive ranges. Binary search the first
      // intersecting range rather than scanning the entire world index.
      let a = 0, b = ranges.length;
      while (a < b) { const m = Math.floor((a + b) / 2); if (ranges[m].last < first) a = m + 1; else b = m; }
      let cursor = first;
      const fill = (start, end) => { if (this.fallback && start <= end) for (const pack of this.fallback.forBlocks(id, start, end)) selected.add(pack); };
      for (let i = a; i < ranges.length && ranges[i].first <= last; i++) {
        const range = ranges[i];
        if (this.failed.has(range.pack)) continue;
        fill(cursor, Math.min(last, range.first - 1));
        selected.add(range.pack); cursor = Math.max(cursor, range.last + 1);
      }
      fill(cursor, last);
      return [...selected];
    }
    async download(pack, fetchImpl, onProgress) {
      const controller = new AbortController();
      let idle, abortReason = '';
      const abort = reason => { abortReason = reason; controller.abort(); };
      const armIdle = (ms, reason) => { clearTimeout(idle); idle = setTimeout(() => abort(reason), ms); };
      armIdle(45000, 'Pack response headers timed out');
      // A healthy slow link must not lose an almost-finished multi-MiB pack.
      // Still bound silent transfers and total lifetime independently.
      const maximum = setTimeout(() => abort('Pack exceeded 180 s transfer limit'), 180000);
      try {
        const response = await fetchImpl(pack.url, { cache: 'force-cache', signal: controller.signal });
        if (!response.ok || !response.body) throw new Error('Pack HTTP ' + response.status);
        armIdle(30000, 'Pack response body stalled');
        const bytes = await bounded(response.body, pack.encodedBytes, MAX_ENCODED, n => {
          armIdle(30000, 'Pack response body stalled');
          if (onProgress) onProgress(n);
        });
        clearTimeout(idle);
        if (await hash(bytes) !== pack.sha256) throw new Error('Corrupt pack hash');
        const decoded = await bounded(new Blob([bytes]).stream().pipeThrough(new DecompressionStream('gzip')), pack.bytes, MAX_BYTES);
        if (await hash(decoded) !== pack.decodedSha256) throw new Error('Corrupt decoded pack');
        return decoded;
      } catch (e) { if (abortReason) throw new Error(abortReason); throw e; }
      finally { clearTimeout(idle); clearTimeout(maximum); }
    }
    static async validateIndex(index, version, manifestFiles) {
      const fingerprint = await hash(new TextEncoder().encode(JSON.stringify(manifestFiles.map(f => [f[0], f[1]]))));
      if (!index || index.schema !== 1 || String(index.dataVersion) !== version || index.fileFingerprint !== fingerprint) throw new Error('Pack manifest mismatch');
    }
    static async fromIndex(index, version, manifestFiles, profile) {
      await this.validateIndex(index, version, manifestFiles);
      const files = manifestFiles.map(f => ({ path: f[0], size: f[1] }));
      const selected = new DeliveryPacks(index.profiles[profile], files);
      // Low graphics changes which slices the engine reads, not the validity of
      // normal-quality packs. Reuse broader recorded coverage only for gaps.
      // Keep selected.packs unchanged: eager startup prefetch remains specific
      // to this profile and never downloads the extra catalogue speculatively.
      if (profile === 'bootset_low.json' && Array.isArray(index.profiles['bootset.json'])) {
        selected.fallback = new DeliveryPacks(index.profiles['bootset.json'], files);
        selected.fallback.failed = selected.failed;
        const key = p => JSON.stringify([p.url, p.sha256, p.decodedSha256, p.bytes, p.encodedBytes, p.runs]);
        const primary = new Map(selected.packs.map(p => [key(p), p]));
        // Equal bodies/layouts share promise and failure identity even when
        // profile-specific prefetch flags differ in the JSON catalogue.
        for (const ranges of selected.fallback.byFile.values()) for (const range of ranges) range.pack = primary.get(key(range.pack)) || range.pack;
      }
      if (index.startupPacks !== undefined) {
        selected.startup = new DeliveryPacks(index.startupPacks, files);
        if (selected.startup.packs.some(p => p.bytes > 1048576)) throw new Error('Oversized startup pack');
      }
      return selected;
    }
    static async loadBootstrap(url, fetchImpl) {
      if (!/^\/data\/packs\/bootstrap-[a-f0-9]{64}\.json$/.test(url)) throw new Error('Invalid bootstrap URL');
      const controller = new AbortController(), timer = setTimeout(() => controller.abort(), 10000);
      try {
        const response = await fetchImpl(url, { cache: 'force-cache', signal: controller.signal });
        if (!response.ok) throw new Error('Bootstrap HTTP ' + response.status);
        const body = await bounded(response.body, null, 4 * 1048576);
        if (!url.includes(await hash(body))) throw new Error('Corrupt bootstrap hash');
        const bootstrap = JSON.parse(new TextDecoder().decode(body)), m = bootstrap.manifest;
        if (bootstrap.schema !== 1 || !m || m.version == null || !Array.isArray(m.files) || !m.files.length ||
            !m.files.every(f => Array.isArray(f) && typeof f[0] === 'string' && Number.isSafeInteger(f[1]) && f[1] >= 0)) throw new Error('Invalid bootstrap manifest');
        await this.validateIndex(bootstrap.index, String(m.version), m.files);
        return bootstrap;
      } finally { clearTimeout(timer); }
    }
    static async load(pointerURL, version, manifestFiles, profile, fetchImpl) {
      const controller = new AbortController(), timer = setTimeout(() => controller.abort(), 10000);
      try {
        const pointerResponse = await fetchImpl(pointerURL, { cache: 'no-cache', signal: controller.signal });
        if (!pointerResponse.ok) return null;
        const pointer = JSON.parse(new TextDecoder().decode(await bounded(pointerResponse.body, null, 65536)));
        if (pointer.schema !== 1 || String(pointer.dataVersion) !== version || !/^\/data\/packs\/index-[a-f0-9]{64}\.json$/.test(pointer.index)) throw new Error('Stale pack pointer');
        const response = await fetchImpl(pointer.index, { cache: 'force-cache', signal: controller.signal });
        if (!response.ok) throw new Error('Missing pack index');
        const body = await bounded(response.body, null, 2 * 1048576);
        if (!pointer.index.includes(await hash(body))) throw new Error('Corrupt pack index');
        const index = JSON.parse(new TextDecoder().decode(body));
        return await this.fromIndex(index, version, manifestFiles, profile);
      } finally { clearTimeout(timer); }
    }
  }
  self.DeliveryPacks = DeliveryPacks;
})();
