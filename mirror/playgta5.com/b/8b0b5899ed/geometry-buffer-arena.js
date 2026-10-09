'use strict';

// Small, plain vertex/index buffers only. Storage, indirect, structured and
// large buffers retain dedicated allocations. Buddy lists bound lookup work;
// a range is reusable only after its zeroing submission completes.
class GeometryBufferArena {
  constructor(device, usage) {
    this.device = device; this.usage = usage;
    this.chunkBytes = 4 * 1024 * 1024; this.minBytes = 256;
    this.maxBytes = 65536; this.maxOrder = 14;
    this.bins = Array.from({ length: this.maxOrder + 1 }, () => new Set());
    this.chunks = new Set(); this.pending = [];
    this.allocations = 0; this.retired = 0; this.created = 0;
    this.logicalBytes = 0;
  }
  eligible(size, bind, misc) { return size <= this.maxBytes && size > 0 && (bind === 1 || bind === 2 || bind === 3) && misc === 0; }
  addFree(chunk, order, offset) {
    chunk.free[order].add(offset); this.bins[order].add(chunk);
  }
  removeFree(chunk, order, offset) {
    chunk.free[order].delete(offset);
    if (!chunk.free[order].size) this.bins[order].delete(chunk);
  }
  allocate(size) {
    if (size <= 0 || size > this.maxBytes) throw new RangeError('geometry allocation size');
    const order = Math.max(0, Math.ceil(Math.log2(Math.ceil(size / this.minBytes))));
    let found = order;
    while (found <= this.maxOrder && !this.bins[found].size) found++;
    if (found > this.maxOrder) {
      const chunk = { buffer: this.device.createBuffer({ size: this.chunkBytes, usage: this.usage }),
        free: Array.from({ length: this.maxOrder + 1 }, () => new Set()), live: 0 };
      this.chunks.add(chunk); this.created++; this.addFree(chunk, this.maxOrder, 0); found = this.maxOrder;
    }
    const chunk = this.bins[found].values().next().value;
    const offset = chunk.free[found].values().next().value;
    this.removeFree(chunk, found, offset);
    while (found > order) { found--; this.addFree(chunk, found, offset + this.minBytes * 2 ** found); }
    chunk.live++; this.allocations++; this.logicalBytes += size;
    return { chunk, buffer: chunk.buffer, offset, order, bytes: this.minBytes * 2 ** order, logicalBytes: size, state: 'live' };
  }
  retire(allocation) {
    if (allocation.state !== 'live') throw new Error('geometry range retired twice');
    allocation.state = 'pending'; this.pending.push(allocation); this.retired++; this.logicalBytes -= allocation.logicalBytes;
  }
  recordClears(encoder) {
    const list = this.pending.splice(0);
    for (const a of list) { encoder.clearBuffer(a.buffer, a.offset, a.bytes); a.state = 'submitted'; }
    return list;
  }
  submitted(list) {
    if (!list.length) return;
    // Never awaited by the command consumer. Completion includes the clears,
    // all prior reads and copies, and prior submissions on this queue.
    return this.device.queue.onSubmittedWorkDone().then(() => {
      for (const a of list) this.releaseCompleted(a);
    }, () => { /* Device loss: retain these ranges; never reuse uncertain data. */ });
  }
  releaseCompleted(a) {
    if (a.state !== 'submitted') throw new Error('geometry range freed before submission');
    a.state = 'free'; this.retired--; this.allocations--;
    const chunk = a.chunk; chunk.live--;
    let offset = a.offset, order = a.order;
    while (order < this.maxOrder) {
      const buddy = offset ^ (this.minBytes * 2 ** order);
      if (!chunk.free[order].has(buddy)) break;
      this.removeFree(chunk, order, buddy); offset = Math.min(offset, buddy); order++;
    }
    if (!chunk.live) {
      // Release every empty chunk. No cache of unused device memory accumulates.
      for (const bin of this.bins) bin.delete(chunk);
      this.chunks.delete(chunk); chunk.buffer.destroy();
    } else this.addFree(chunk, order, offset);
  }
  snapshot() { return { physicalBuffers: this.chunks.size, allocatedBytes: this.chunks.size * this.chunkBytes, logicalBytes: this.logicalBytes,
    liveRanges: this.allocations - this.retired, retiredRanges: this.retired, buffersCreated: this.created }; }
}
globalThis.GeometryBufferArena = GeometryBufferArena;
