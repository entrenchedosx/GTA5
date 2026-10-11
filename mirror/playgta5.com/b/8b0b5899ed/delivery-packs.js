// Packs contain original file slices, not a new engine asset format.
// Never trust bytes from a pack until both hashes, sizes and its index pass.
(function () {
  const MAX_BYTES = 8 * 1048576, MAX_ENCODED = MAX_BYTES + 65536;
  const hash = async bytes => Array.from(new Uint8Array(await crypto.subtle.digest('SHA-256', bytes)), b => b.toString(16).padStart(2, '0')).join('');
  async function bounded(stream, expected, maximum) {
    const exact = expected !== null;
    if (exact && (!Number.isSafeInteger(expected) || expected < 0 || expected > maximum)) throw new Error('Invalid pack size');
    const capacity = exact ? expected : maximum;
    const result = new Uint8Array(capacity), reader = stream.getReader(); let at = 0;
    try {
      for (;;) {
        const { done, value } = await reader.read();
        if (done) break;
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
      this.packs = packs; this.byFile = new Map(); this.failed = new Set();
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
      const ranges = this.byFile.get(id) || [], selected = new Set();
      // A file normally has a few archive ranges. Binary search the first
      // intersecting range rather than scanning the entire world index.
      let a = 0, b = ranges.length;
      while (a < b) { const m = Math.floor((a + b) / 2); if (ranges[m].last < first) a = m + 1; else b = m; }
      for (let i = a; i < ranges.length && ranges[i].first <= last; i++) if (!this.failed.has(ranges[i].pack)) selected.add(ranges[i].pack);
      return [...selected];
    }
    async download(pack, fetchImpl) {
      const controller = new AbortController(), timeout = setTimeout(() => controller.abort(), 45000);
      try {
        const response = await fetchImpl(pack.url, { cache: 'force-cache', signal: controller.signal });
        if (!response.ok || !response.body) throw new Error('Pack HTTP ' + response.status);
        const bytes = await bounded(response.body, pack.encodedBytes, MAX_ENCODED);
        if (await hash(bytes) !== pack.sha256) throw new Error('Corrupt pack hash');
        const decoded = await bounded(new Blob([bytes]).stream().pipeThrough(new DecompressionStream('gzip')), pack.bytes, MAX_BYTES);
        if (await hash(decoded) !== pack.decodedSha256) throw new Error('Corrupt decoded pack');
        return decoded;
      } finally { clearTimeout(timeout); }
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
        const fingerprint = await hash(new TextEncoder().encode(JSON.stringify(manifestFiles.map(f => [f[0], f[1]]))));
        if (index.schema !== 1 || String(index.dataVersion) !== version || index.fileFingerprint !== fingerprint) throw new Error('Pack manifest mismatch');
        return new DeliveryPacks(index.profiles[profile], manifestFiles.map(f => ({ path: f[0], size: f[1] })));
      } finally { clearTimeout(timer); }
    }
  }
  self.DeliveryPacks = DeliveryPacks;
})();
