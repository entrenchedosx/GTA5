const assert = require('node:assert/strict');
const fs = require('node:fs');
const vm = require('node:vm');
const path = require('node:path');
const source = fs.readFileSync(path.join(__dirname, '../mirror/playgta5.com/b/8b0b5899ed/wgpu_worker.js'), 'utf8');

// Compare the real binding functions' consumed offsets, descriptors, and bytes.
function scenario(optimized) {
  let nextBuffer = 0, nextGroup = 0;
  const context = vm.createContext({
    console: { log() {} }, performance, URLSearchParams,
    MessageChannel: class extends MessageChannel { constructor() { super(); this.port1.unref(); this.port2.unref(); } },
    setTimeout, clearTimeout, BroadcastChannel,
    self: { navigator: { hardwareConcurrency: 4 }, location: { search: '?bufferArena=0' }, postMessage() {}, addEventListener() {} },
    GPUBufferUsage: { UNIFORM: 1, COPY_DST: 2, VERTEX: 4 },
    fakeDevice: {
      createBuffer(d) { return { ...d, id: ++nextBuffer }; },
      createSampler(d) { return { ...d, id: 'dummy' }; },
      createBindGroup(d) { return { ...d, id: ++nextGroup }; }
    }
  });
  vm.runInContext(source + `
    device = fakeDevice; bindingOptimizationEnabled = ${optimized}; profiler = { cacheStats: { packCalls: 0, packHits: 0, fastChecks: 0, fastHits: 0, resourceEpochMisses: 0, bgSlowPaths: 0, bgFastEntryAllocations: 0, resets: 0, packBytes: 0 } };
    globalThis.api = { S, objs, resetState, stageBG, ubo,
      invalidateResource() { gEpoch++; },
      bindUav(id) { S.uav[2][0] = id; bindEpoch[2]++; },
      nextEncoder() { encEpoch++; },
      packCalls() { return profiler.cacheStats.packCalls; },
      bind(id, first = 0, sampler = 20) { S.cb[0][0].buf = id; S.cb[0][0].first = first; S.smp[0][0] = sampler; bindEpoch[0]++; },
      snapshot(prog, result) {
        const a = prog.packEnts[0].at(-1).alloc;
        return { group: result.bg.id, offsets: Array.from(result.dyn), bytes: Array.from(a.chunk.stage.subarray(a.off, a.off + 16)),
          entries: result.bg.entries.map(e => ({ binding: e.binding, resource: e.resource.id || e.resource.buffer.id, size: e.resource.size })) };
      }
    };`, context);
  const a = context.api;
  const first = { kind: 'buffer', size: 32, bytes: 32, version: 1, shadow: new Uint8Array(32).fill(7) };
  const second = { kind: 'buffer', size: 32, bytes: 32, version: 1, shadow: new Uint8Array(32).fill(11) };
  a.objs.set(10, first); a.objs.set(11, second);
  a.objs.set(20, { sampler: { id: 'sampler20' }, words: [0, 0, 0, 0, 0] });
  a.objs.set(21, { sampler: { id: 'sampler21' }, words: [0, 0, 0, 0, 0] });
  const prog = { pack: { members: [{ binding: 0, size: 16, offset: 0 }], size: 16 },
    groupBindings: { 0: [{ binding: 0, kind: 'uniform' }, { binding: 16, kind: 'sampler' }] }, bgls: [{}] };
  const snapshots = [], records = [];
  function capture() {
    const result = a.stageBG(0, prog, 0);
    snapshots.push(JSON.parse(JSON.stringify(a.snapshot(prog, result))));
    records.push(prog.fast[0]);
    return result;
  }
  a.bind(10); const initial = capture();
  assert.equal(a.stageBG(0, prog, 0), initial, 'unchanged bindings reuse a fast result');
  a.bind(11, 0, 21); capture();
  first.version++; first.shadow.fill(9); a.bind(10, 1, 20); capture();
  a.bind(0, 0, 0); capture();
  assert.deepEqual(snapshots.at(-1).bytes, Array(16).fill(0), 'unbound constants read zero');
  a.resetState(); assert.equal(a.S.cb[0][0].buf, 0, 'reset unbinds resources');
  a.bind(10); capture();
  a.ubo.frame++; a.ubo.slot = 1; a.ubo.off = 0; capture();
  assert.equal(snapshots.at(-1).offsets[0], 8 << 20, 'next frame uses its own ring slot');
  a.invalidateResource(); a.objs.delete(10); capture();
  assert.deepEqual(snapshots.at(-1).bytes, Array(16).fill(0), 'destroyed constants read zero');
  if (optimized) assert.equal(records[0], records[1], 'binding invalidation updates the reusable record');
  else assert.notEqual(records[0], records[1], 'baseline invalidation rebuilds records');
  // Programs without constants still need resource lifetime and dirty-proxy
  // replay. Reusing a record must replace its arrays rather than keep old UAVs.
  const t1 = {format:'rgba8unorm',tex:{createView(){return {id:'view1'};}},proxy_fdepth:{dirty:false}};
  const t2 = {format:'rgba8unorm',tex:{createView(){return {id:'view2'};}},proxy_fdepth:{dirty:false}};
  a.objs.set(30,t1); a.objs.set(31,t2);
  a.objs.set(40,{res:30,a:0,views:new Map()}); a.objs.set(41,{res:31,a:0,views:new Map()});
  const compute = {groupBindings:{0:[{kind:'storage-texture',binding:160,dim:'2d'}]},bgls:[{}]};
  a.bindUav(40); const firstUav = a.stageBG(2,compute,0);
  t1.proxy_fdepth.dirty=false; a.nextEncoder();
  assert.equal(a.stageBG(2,compute,0),firstUav);
  assert.equal(t1.proxy_fdepth.dirty,true,'cached UAV use dirties its proxy');
  a.bindUav(41); const secondUav = a.stageBG(2,compute,0);
  t1.proxy_fdepth.dirty=t2.proxy_fdepth.dirty=false; a.nextEncoder(); a.stageBG(2,compute,0);
  assert.equal(t1.proxy_fdepth.dirty,false,'recycled record releases the previous UAV');
  assert.equal(t2.proxy_fdepth.dirty,true,'recycled record replays the current UAV');
  return { snapshots, packCalls: a.packCalls(), uavs:[firstUav.bg.entries[0].resource.id,secondUav.bg.entries[0].resource.id] };
}
const optimized = scenario(true), original = scenario(false);
assert.deepEqual(optimized.snapshots, original.snapshots, 'removing the repeated lookup preserves consumed bindings and packed bytes');
assert.deepEqual(optimized.uavs, original.uavs, 'recycling preserves storage texture views');
assert.ok(optimized.packCalls < original.packCalls, 'the duplicate packing lookup is eliminated');
console.log('PASS: binding/sampler changes, constant versions/ranges, zero bindings, reset, frame slots, destruction; original and optimized output match; duplicate lookups eliminated');
