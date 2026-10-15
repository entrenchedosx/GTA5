const assert = require('node:assert/strict');
const fs = require('node:fs');
const vm = require('node:vm');
const path = require('node:path');
const { webcrypto, createHash } = require('node:crypto');
const zlib = require('node:zlib');
const root = path.join(__dirname, '..');
const build = path.join(root, 'mirror/playgta5.com/b/8b0b5899ed');
const sha = bytes => createHash('sha256').update(bytes).digest('hex');
const bytes = Buffer.alloc(8192, 71), compressed = zlib.gzipSync(bytes);
const pack = { url: '/data/packs/' + sha(compressed) + '.bin', sha256: sha(compressed), decodedSha256: sha(bytes),
  bytes: bytes.length, encodedBytes: compressed.length, runs: [[0, 0, 8192, 0]] };
const files = [{ path: 'test.rpf', size: 8192 }];
const scope = { self: {}, crypto: webcrypto, Blob, DecompressionStream, Response, TextEncoder, TextDecoder,
  AbortController, setTimeout, clearTimeout, Uint8Array, Map, Set, Array, Number, Math, JSON };
vm.runInNewContext(fs.readFileSync(path.join(build, 'delivery-packs.js'), 'utf8'), scope);
const Packs = scope.self.DeliveryPacks;
(async () => {
  const reader = new Packs([pack], files);
  assert.equal(reader.forBlocks(0, 0, 1)[0], pack);
  assert.equal(reader.forBlocks(0, 2, 3).length, 0);
  assert.deepEqual(Buffer.from(await reader.download(pack, async (_, init) => { assert.equal(init.cache,'force-cache'); return new Response(compressed); })), bytes);
  const progress=[];let releaseTail,complete=false;
  const stream=new ReadableStream({start(c){c.enqueue(compressed.subarray(0,8));releaseTail=()=>{c.enqueue(compressed.subarray(8));c.close();};}});
  const downloading=reader.download(pack,async()=>new Response(stream),n=>progress.push(n)).then(b=>{complete=true;return b;});
  await new Promise(resolve=>setTimeout(resolve,0));
  assert.deepEqual(progress,[8],'network progress arrives before full pack validation');
  assert.equal(complete,false,'partial bytes never become an engine asset');
  releaseTail();assert.deepEqual(Buffer.from(await downloading),bytes);
  assert.equal(progress.reduce((a,b)=>a+b,0),compressed.length,'compressed body bytes counted once');
  await assert.rejects(reader.download(pack, async () => new Response(compressed.subarray(0, compressed.length - 1))), /Truncated/);
  const corrupt = Buffer.from(compressed); corrupt[10] ^= 1;
  await assert.rejects(reader.download(pack, async () => new Response(corrupt)), /Corrupt/);
  await assert.rejects(reader.download(pack, async () => new Response('missing', { status: 404 })), /404/);
  await assert.rejects(reader.download(pack, async () => new Response(Buffer.concat([compressed, compressed]))), /Oversized/);
  assert.throws(() => new Packs([{...pack, runs: [[0, 1, 8191, 0]]}], files), /offset/);
  assert.throws(() => new Packs([pack, pack], files), /Overlapping/);
  reader.failed.add(pack); assert.equal(reader.forBlocks(0, 0, 1).length, 0);
  const manifest = [['test.rpf', 8192]], profile = 'bootset.json';
  const index = Buffer.from(JSON.stringify({schema:1,dataVersion:'1',fileFingerprint:sha(JSON.stringify(manifest)),profiles:{[profile]:[pack]}}));
  const lowBytes=bytes.subarray(0,4096),lowCompressed=zlib.gzipSync(lowBytes);
  const lowPack={...pack,url:'/data/packs/'+sha(lowCompressed)+'.bin',sha256:sha(lowCompressed),decodedSha256:sha(lowBytes),bytes:4096,encodedBytes:lowCompressed.length,runs:[[0,0,4096,0]]};
  const startupIndex={...JSON.parse(index),startupPacks:[lowPack]};
  const startup=await Packs.fromIndex(startupIndex,'1',manifest,profile);
  assert.equal(startup.forBlocks(0,0,0)[0],lowPack,'small startup pack satisfies a fully covered read');
  assert.equal(startup.forBlocks(0,0,1)[0],startupIndex.profiles[profile][0],'large read uses one original pack instead of downloading both');
  assert.equal(startup.packs.length,1,'startup catalogue is not eager-prefetched');
  startup.failed.add(lowPack);assert.equal(startup.forBlocks(0,0,0)[0],startupIndex.profiles[profile][0],'failed startup pack falls back to original coverage');
  await assert.rejects(Packs.fromIndex({...startupIndex,startupPacks:[lowPack,lowPack]},'1',manifest,profile),/Overlapping/);
  const mixed={...JSON.parse(index),profiles:{'bootset.json':[{...pack,prefetch:false}],'bootset_low.json':[lowPack]}};
  const lowCatalog=await Packs.fromIndex(mixed,'1',manifest,'bootset_low.json');
  assert.equal(lowCatalog.packs.length,1,'broader coverage is not added to eager prefetch');
  assert.equal(lowCatalog.forBlocks(0,0,0)[0],lowPack,'prefer existing low-profile coverage');
  assert.equal(lowCatalog.forBlocks(0,1,1)[0],mixed.profiles['bootset.json'][0],'missing low-profile block reuses normal pack');
  assert.equal(lowCatalog.forBlocks(0,0,1).length,2,'split requests cover both regions without invented slices');
  lowCatalog.failed.add(lowPack);assert.equal(lowCatalog.forBlocks(0,0,1).length,1,'failed preferred pack can use intact broader coverage');
  lowCatalog.failed.add(mixed.profiles['bootset.json'][0]);assert.equal(lowCatalog.forBlocks(0,0,1).length,0,'failed broader packs fall back to original ranges');
  const identical={...mixed,profiles:{'bootset.json':[{...pack,prefetch:false}],'bootset_low.json':[{...pack,prefetch:true}]}};
  const sameIdentity=await Packs.fromIndex(identical,'1',manifest,'bootset_low.json');
  assert.equal(sameIdentity.fallback.forBlocks(0,0,1)[0],sameIdentity.packs[0],'identical layouts share identity across profiles');
  sameIdentity.failed.add(sameIdentity.packs[0]);assert.equal(sameIdentity.forBlocks(0,0,1).length,0,'corrupt identical body is not redownloaded under another profile');
  await assert.rejects(Packs.fromIndex({...mixed,profiles:{...mixed.profiles,'bootset.json':[pack,pack]}},'1',manifest,'bootset_low.json'),/Overlapping/);
  const pointer = {schema:1,dataVersion:'1',index:'/data/packs/index-'+sha(index)+'.json'};
  const loaded = await Packs.load('/data/delivery.json','1',manifest,profile,async (url, init) => {
    assert.equal(init.cache,url.endsWith('delivery.json') ? 'no-cache' : 'force-cache');
    return new Response(url.endsWith('delivery.json') ? JSON.stringify(pointer) : index);
  });
  assert.equal(loaded.forBlocks(0,0,1).length, 1);
  const bootstrap = Buffer.from(JSON.stringify({schema:1,manifest:{version:'1',files:manifest},index:JSON.parse(index)}));
  const bootstrapURL='/data/packs/bootstrap-'+sha(bootstrap)+'.json';
  let bootstrapCalls=0;
  const frozen=await Packs.loadBootstrap(bootstrapURL,async (url,init)=>{
    assert.equal(url,bootstrapURL);assert.equal(init.cache,'force-cache');bootstrapCalls++;return new Response(bootstrap);
  });
  const same=await Packs.fromIndex(frozen.index,'1',frozen.manifest.files,profile);
  assert.equal(bootstrapCalls,1,'combined metadata needs one fetch, with no pointer/index fetch');
  assert.deepEqual(JSON.parse(JSON.stringify(same.packs)),JSON.parse(JSON.stringify(loaded.packs)),'frozen bootstrap retains the exact pack catalogue');
  await assert.rejects(Packs.loadBootstrap('/data/metadata.json',async()=>{throw Error('must not fetch');}),/Invalid bootstrap URL/);
  await assert.rejects(Packs.loadBootstrap(bootstrapURL,async()=>new Response('corrupt')),/Corrupt bootstrap hash/);
  await assert.rejects(Packs.loadBootstrap(bootstrapURL,async()=>new Response('missing',{status:404})),/404/);
  await assert.rejects(Packs.loadBootstrap(bootstrapURL,async()=>new Response(Buffer.alloc(4*1048576+1))),/Oversized/);
  const stale=Buffer.from(JSON.stringify({schema:1,manifest:{version:'2',files:manifest},index:JSON.parse(index)}));
  await assert.rejects(Packs.loadBootstrap('/data/packs/bootstrap-'+sha(stale)+'.json',async()=>new Response(stale)),/manifest mismatch/);
  await assert.rejects(Packs.load('/data/delivery.json','2',manifest,profile,async()=>new Response(JSON.stringify(pointer))), /Stale/);
  await assert.rejects(Packs.load('/data/delivery.json','1',manifest,profile,async()=>new Response(Buffer.alloc(65537))), /Oversized/);
  await assert.rejects(Packs.load('/data/delivery.json','1',manifest,profile,async url=>new Response(url.endsWith('delivery.json') ? JSON.stringify(pointer) : Buffer.alloc(2*1048576+1))), /Oversized/);

  // Run the actual IO worker with an OPFS-shaped fixture, including its pack
  // scheduler/dedup/fallback and journal commit. No implementation-only copies.
  let downloads = 0, corruptMode = false, rangeCalls = 0;
  const memoryStore = Buffer.alloc(128 * 1024), indexed = [];
  const workerScope = { ...scope, self:{location:{search:''},postMessage(){}}, URLSearchParams, performance,
    BroadcastChannel:class{postMessage(){}}, navigator:{}, console, ArrayBuffer, Int32Array, DataView, Atomics,
    fetch:async(url,init)=>{ if(String(url).includes('/packs/')){downloads++;await new Promise(r=>setTimeout(r,5));return new Response(corruptMode ? corrupt : compressed);}
      rangeCalls++;const [,a,b]=/bytes=(\d+)-(\d+)/.exec(init.headers.Range);return new Response(bytes.subarray(+a,+b+1),{status:206});},
  };
  const ctx = vm.createContext(workerScope);
  workerScope.importScripts = name => vm.runInContext(fs.readFileSync(path.join(build,name),'utf8'),ctx);
  vm.runInContext(fs.readFileSync(path.join(build,'io_worker.js'),'utf8')+`\nself.test={ensureBlocks,startPack,prefetchPacks,
    queueRange,flushRanges,
    install(pack, file){files=[file];deliveryPacks=new self.DeliveryPacks([pack],files);sh={write(data,{at}){STORE.set(data,at);}};},
    reset(){index.clear();inflight.clear();storeEnd=0;deliveryPacks.failed.clear();},
    get index(){return index;},get failed(){return deliveryPacks.failed.size;},get active(){return packActive;},get storeEnd(){return storeEnd;}};`,ctx);
  workerScope.STORE=memoryStore;
  workerScope.self.test.install(pack,files[0]);
  const t=workerScope.self.test;
  pack.prefetch=false;
  await t.prefetchPacks(); assert.equal(downloads,0,'on-demand scene packs must not be downloaded at startup');
  await Promise.all([t.ensureBlocks(0,0,1),t.ensureBlocks(0,0,1),t.startPack(pack)]);
  assert.equal(downloads,1); assert.equal(rangeCalls,0); assert.equal(t.index.size,2);
  assert.deepEqual(memoryStore.subarray(0,8192),bytes);
  await t.prefetchPacks(); assert.equal(downloads,1,'warm cache never requests a pack');
  t.reset(); corruptMode=true;
  await t.ensureBlocks(0,0,1); assert.equal(t.failed,1); assert.equal(rangeCalls,1,'corrupt pack falls back to original range');
  assert.equal(t.index.size,2); assert.equal(t.active,0); assert.deepEqual(memoryStore.subarray(8192,16384),bytes);
  let batches=0, batchFailure=false;
  workerScope.fetch=async(url,init)=>{
    if(String(url).includes('batch?exact=1')) {
      batches++;
      if(batchFailure)return new Response('failed',{status:400});
      const runs=JSON.parse(init.body);
      return new Response(Buffer.concat(runs.map(([,a,b])=>bytes.subarray(a,b+1))));
    }
    rangeCalls++;const [,a,b]=/bytes=(\d+)-(\d+)/.exec(init.headers.Range);
    return new Response(bytes.subarray(+a,+b+1),{status:206});
  };
  const a=Buffer.alloc(100),b=Buffer.alloc(100); rangeCalls=0;
  await Promise.all([t.queueRange(files[0],0,99,(chunk,at)=>a.set(chunk,at),false,false),t.queueRange(files[0],100,199,(chunk,at)=>b.set(chunk,at),false,true)]);
  assert.equal(batches,1);assert.equal(rangeCalls,0);assert.deepEqual(a,bytes.subarray(0,100));assert.deepEqual(b,bytes.subarray(100,200));
  batchFailure=true;
  await Promise.all([t.queueRange(files[0],0,99,(chunk,at)=>a.set(chunk,at),false,false),t.queueRange(files[0],100,199,(chunk,at)=>b.set(chunk,at),false,true)]);
  assert.equal(rangeCalls,2);assert.deepEqual(a,bytes.subarray(0,100));assert.deepEqual(b,bytes.subarray(100,200));
  console.log('PASS: pack hashes/size/offsets, missing/corrupt/oversized/stale index, original bytes, deduplicated cold reads, zero warm pack fetches, corruption range fallback');
})().catch(e=>{console.error(e);process.exitCode=1;});
