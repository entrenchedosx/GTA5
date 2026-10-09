const assert = require('node:assert/strict');
const fs = require('node:fs');
const vm = require('node:vm');
const file = 'mirror/playgta5.com/b/8b0b5899ed/geometry-buffer-arena.js';
const scope = {}; vm.createContext(scope); vm.runInContext(fs.readFileSync(file, 'utf8'), scope);
const Arena = scope.GeometryBufferArena;
let completion;
const buffers = [];
const device = { createBuffer(desc) { const b = { size: desc.size, destroyed: false, destroy() { this.destroyed = true; } }; buffers.push(b); return b; },
  queue: { onSubmittedWorkDone: () => new Promise(resolve => completion = resolve) } };
const arena = new Arena(device, 15);
assert.equal(arena.eligible(100, 1, 0), true);
for (const [size, bind, misc] of [[100,8,0],[100,0x81,0],[100,1,0x10],[65540,1,0],[0,1,0]]) assert.equal(arena.eligible(size,bind,misc),false);
const a = arena.allocate(1024), b = arena.allocate(512);
assert.equal(a.buffer, b.buffer); assert.equal(a.offset % 256,0); assert.ok(b.offset >= a.offset+a.bytes);
arena.retire(a);
const c = arena.allocate(1024); assert.notEqual(c.offset,a.offset);
assert.throws(()=>arena.releaseCompleted(a),/before submission/);
const clearLog=[];
const list=arena.recordClears({clearBuffer:(...args)=>clearLog.push(args)});
assert.equal(clearLog.length,1); assert.equal(clearLog[0][1],a.offset); assert.equal(clearLog[0][2],a.bytes);
arena.submitted(list);
assert.equal(a.state,'submitted'); assert.equal(a.buffer.destroyed,false);
completion();
(async()=>{
  await Promise.resolve();
  assert.equal(a.state,'free'); assert.equal(b.buffer.destroyed,false);
  const d = arena.allocate(1024), e = arena.allocate(1024); assert.ok(d.offset===a.offset || e.offset===a.offset);
  for(const x of [b,c,d,e]) arena.retire(x);
  const rest=arena.recordClears({clearBuffer(){}}); arena.submitted(rest); completion(); await Promise.resolve();
  assert.equal(arena.snapshot().physicalBuffers,0); assert.equal(b.buffer.destroyed,true);
  assert.throws(()=>arena.retire(a),/twice/);
  assert.throws(()=>arena.allocate(65537),/allocation size/);
  // Many heterogeneous live ranges: disjoint bounds, aligned offsets, bounded
  // physical storage, coalescing, and complete reclamation after GPU completion.
  const stress = new Arena(device,15), live=[];
  for(let i=0;i<30000;i++) live.push(stress.allocate(4+((i*173)%16000)));
  const byBuffer=new Map();
  for(const x of live) { let ranges=byBuffer.get(x.buffer); if(!ranges) byBuffer.set(x.buffer,ranges=[]); ranges.push(x); }
  for(const ranges of byBuffer.values()) { ranges.sort((x,y)=>x.offset-y.offset); let end=0; for(const x of ranges) { assert.ok(x.offset>=end); end=x.offset+x.bytes; assert.ok(end<=x.buffer.size); } }
  assert.ok(stress.snapshot().physicalBuffers<100);
  for(const x of live) stress.retire(x);
  const all=stress.recordClears({clearBuffer(){}}); stress.submitted(all); completion(); await Promise.resolve();
  assert.equal(stress.snapshot().allocatedBytes,0); assert.equal(stress.snapshot().retiredRanges,0);
  console.log('Geometry arena: disjoint/aligned ranges, delayed zeroed reuse, eligibility, 30,000-range stress and full reclamation passed.');
})().catch(e=>{console.error(e);process.exitCode=1;});
