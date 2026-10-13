const assert = require('node:assert/strict');
const fs = require('node:fs');
const vm = require('node:vm');
const path = require('node:path');
const {createHash,webcrypto} = require('node:crypto');
const root = path.join(__dirname, '..');
const build = path.join(root, 'mirror/playgta5.com/b/8b0b5899ed');
const ioSource = fs.readFileSync(path.join(build, 'io_worker.js'), 'utf8');

function ioSetup(fetcher) {
  const messages = [], progress = [], timers = new Map();
  let nextTimer = 0;
  class Channel {
    constructor(name) { this.name = name; }
    postMessage(m) { if (this.name === 'game-progress') progress.push(m); }
  }
  const self = { location: { search: '' }, crypto:webcrypto, postMessage(m) { messages.push(m); } };
  const scope = { self, BroadcastChannel: Channel, navigator: {}, console, URLSearchParams,
    performance, fetch: fetcher, AbortController, Uint8Array, Int32Array, DataView, ArrayBuffer,
    Map, Set, Atomics, Number, Math, Promise,crypto:webcrypto,TextEncoder,TextDecoder,Response,
    setTimeout(fn, ms) { const id = ++nextTimer; timers.set(id, {fn, ms}); return id; },
    clearTimeout(id) { timers.delete(id); } };
  const context = vm.createContext(scope);
  scope.importScripts = name => {
    vm.runInContext(fs.readFileSync(path.join(build, name), 'utf8'), context);
    // Real worker self is its global scope; this isolated mock is a separate object.
    if (self.DeliveryPacks) scope.DeliveryPacks = self.DeliveryPacks;
  };
  vm.runInContext(ioSource + `\nself.test = {
    get ready() { return ready; },
    get handles() { return [sh, jh]; },
    openStore, report,
    cachedRead(memory, data) {
      mem = memory; HEAP32 = new Int32Array(mem.buffer); HEAPU8 = new Uint8Array(mem.buffer);
      table = 0; memCache.set(0, data); return serve(0);
    }
  };`, context);
  return {self, scope, messages, progress, timers,
    flush(ms) { for (const [id, timer] of [...timers]) if (timer.ms === ms) { timers.delete(id); timer.fn(); } },
    async init(extra={}) { await self.onmessage({data:{init:true,base:'/data/',noStore:true,...extra}}); return self.test.ready; } };
}

function loaderSetup(options={}) {
  const workers = [], messages = [], imports = [], timers = new Map();
  class Worker {
    constructor(url) { this.url = url; this.sent = []; workers.push(this); }
    postMessage(m) { this.sent.push(m); }
    terminate() { this.terminated = true; }
    emit(m) { this.onmessage({data:m}); }
  }
  const self = { location: { origin: 'http://localhost:8000', search: '' } };
  vm.runInContext(fs.readFileSync(path.join(build, 'loader.js'), 'utf8'), vm.createContext({
    self, Worker, BroadcastChannel: class {postMessage(m) {messages.push(m);}},
    navigator: {}, URLSearchParams, console: {log(){},error(){}},
    importScripts(url) {imports.push(url);},
    setTimeout(fn, ms) { timers.set(1, {fn, ms}); return 1; }, clearTimeout(id) { timers.delete(id); },
  }));
  self.onmessage({data:{base:'/b/test',args:[],canvas:{},...options}});
  return {self,gpu:workers[0],get io(){return workers.find(worker=>worker.url.includes('/io_worker.js?'));},workers,messages,imports,timers};
}

// Keep the process alive until assertions finish; an unresolved fake-worker
// promise must fail the test instead of allowing Node to exit successfully.
const guard = setTimeout(() => { console.error('FAIL: startup test did not finish'); process.exit(1); }, 30000);
(async () => {
  const manifest = {version:'1',files:[['common/test.dat',16]]};
  const hash=body=>createHash('sha256').update(body).digest('hex');
  const bootstrap=JSON.stringify({schema:1,manifest,index:{schema:1,dataVersion:'1',fileFingerprint:hash(JSON.stringify(manifest.files)),profiles:{}}});
  const bootstrapURL='/data/packs/bootstrap-'+hash(bootstrap)+'.json';
  const bootstrapFetches=[];
  const frozen=ioSetup(async(url,init)=>{bootstrapFetches.push(url);assert.equal(init.cache,'force-cache');return new Response(bootstrap);});
  assert.equal(await frozen.init({bootstrapURL}),true);
  assert.deepEqual(bootstrapFetches,[bootstrapURL],'real IO initialization fetches only combined metadata');
  const manifestBytes=frozen.messages.find(m=>m.ready).manifestBytes;
  assert.deepEqual(JSON.parse(new TextDecoder().decode(manifestBytes)),manifest,'handoff preserves every manifest field and file ID');
  const recoveredFetches=[];
  const recovered=ioSetup(async(url)=>{recoveredFetches.push(url);return url===bootstrapURL?new Response('damaged'):new Response(JSON.stringify(manifest));});
  assert.equal(await recovered.init({bootstrapURL}),true);
  assert.deepEqual(recoveredFetches,[bootstrapURL,'/data/manifest.json'],'damaged combined metadata falls back to the working original manifest');
  let fetches = 0;
  const warm = ioSetup(async () => { fetches++; return {ok:true,status:200,json:async()=>manifest}; });
  assert.equal(await warm.init(), true);
  assert.ok(warm.messages.some(m=>m.ready));
  const memory = {buffer:new SharedArrayBuffer(4096)};
  const words = new Int32Array(memory.buffer);
  words[16] = 3; words[17] = 0; words[20] = 512; words[22] = 16;
  const expected = Uint8Array.from({length:16}, (_,i)=>i+1);
  await warm.self.test.cachedRead(memory, expected);
  assert.deepEqual(new Uint8Array(memory.buffer,512,16), expected);
  assert.equal(words[23],16); assert.equal(words[16],2,'cache read wakes the waiting engine');
  warm.flush(400);
  assert.equal(fetches,1,'warm cache read makes no network asset request');
  assert.deepEqual(warm.progress.filter(m=>m.read).map(m=>[m.read,m.dl]),[[16,0]],'cached bytes advance startup status');
  warm.self.test.report(512); warm.flush(400);
  assert.ok(warm.progress.some(m=>m.dl===512),'final sub-MB download is reported without another read');

  for (const response of [
    {ok:false,status:404,json:async()=>{throw new Error('should not parse 404');}},
    {ok:true,status:200,json:async()=>({files:[]})},
    {ok:true,status:200,json:async()=>({files:[['bad',-1]]})},
    {ok:true,status:200,json:async()=>{throw new Error('invalid JSON');}},
  ]) {
    const bad = ioSetup(async()=>response);
    assert.equal(await bad.init(),false);
    assert.ok(bad.messages.some(m=>m.error));
    assert.ok(bad.progress.some(m=>m.error));
    assert.ok(!bad.messages.some(m=>m.ready));
    assert.equal(bad.timers.size,0,'failure clears the manifest timeout');
  }
  const stalled = ioSetup((_url,init)=>new Promise((_resolve,reject)=>init.signal.addEventListener('abort',()=>reject(new Error('aborted')))));
  const pending = stalled.init(); stalled.flush(30000);
  assert.equal(await pending,false);
  assert.match(stalled.messages.find(m=>m.error).error,/within 30 seconds/);
  const busy = ioSetup(async()=>({ok:false,status:503}));
  const retrying = busy.init();
  await new Promise(resolve=>setImmediate(resolve));
  busy.flush(30000);
  assert.equal(await retrying,false,'deadline also interrupts server-busy backoff');
  assert.equal(busy.timers.size,0);

  const handles = [0,0];
  const damaged = ioSetup(async()=>({ok:true,status:200,json:async()=>manifest}));
  damaged.scope.navigator.storage = {getDirectory:async()=>({getDirectoryHandle:async()=>({
    getFileHandle:async(name)=>({createSyncAccessHandle:async()=>({
      close(){handles[name==='store.bin'?0:1]++;},
      getSize(){throw new Error('damaged journal');},
    })}),
  })})};
  await damaged.self.test.openStore(1);
  assert.deepEqual(handles,[1,1],'failed cache replay releases both exclusive handles');
  assert.deepEqual(Array.from(damaged.self.test.handles),[null,null]);

  const gated = loaderSetup();
  const cpuLoader = loaderSetup({softwareRendering:true});
  assert.ok(cpuLoader.gpu.url.includes('/wgpu_worker.js?'),'explicit CPU mode first tries the complete WebGPU backend');
  assert.equal(new URL(cpuLoader.gpu.url,'https://example.test').searchParams.get('renderer'),'cpu','the GPU selector must request software only');
  cpuLoader.gpu.emit({loaded:true});cpuLoader.gpu.emit({graphicsError:'No verified software adapter',graphicsCode:'software-adapter'});
  const cpuFallback=cpuLoader.workers[1];assert.ok(cpuFallback.url.includes('/cpu_worker.js?'));
  cpuFallback.emit({loaded:true});cpuFallback.emit({graphicsReady:true});
  assert.equal(cpuLoader.io,undefined,'a CPU readiness message without full game compatibility cannot open assets');
  assert.ok(cpuLoader.gpu.terminated);
  assert.ok(cpuFallback.terminated);
  const softwareLoader=loaderSetup({softwareRendering:true});softwareLoader.gpu.emit({loaded:true});softwareLoader.gpu.emit({graphicsReady:true});
  assert.ok(softwareLoader.io,'a verified compatible software WebGPU device uses the existing complete renderer and opens assets');
  assert.equal(gated.workers.length,1,'no IO worker or data requests before graphics');
  gated.gpu.emit({loaded:true}); gated.gpu.emit({loaded:true});
  assert.equal(gated.gpu.sent.length,1,'graphics preflight requested exactly once');
  assert.equal(gated.gpu.sent[0].graphicsCheck,true);
  assert.equal(gated.io,undefined,'script readiness is insufficient to download assets');
  assert.equal(gated.imports.length,0,'WASM runtime is not imported before device readiness');
  gated.gpu.emit({graphicsReady:true}); gated.gpu.emit({graphicsReady:true});
  assert.equal(gated.workers.length,2); assert.equal(gated.io.sent.length,1);
  assert.equal(gated.timers.size,0); assert.equal(gated.imports.length,0);
  gated.io.emit({ready:true,manifestBytes}); gated.io.emit({ready:true}); gated.gpu.emit({loaded:true});
  assert.equal(gated.imports.length,1,'engine starts exactly once after actual graphics and data readiness');
  assert.equal(gated.self.__httpfsManifest,manifestBytes,'loader primes the existing compiled filesystem cache before importing the engine');
  const glue=fs.readFileSync(path.join(build,'game.js'),'utf8');
  const manifestStart=glue.indexOf('function wasm_httpfs_manifest_js(');
  assert.ok(manifestStart>=0);
  const heap=new Uint8Array(4096);
  const nativeScope={__httpfsManifest:gated.self.__httpfsManifest,HEAPU8:heap,TextEncoder,
    growMemViews(){},XMLHttpRequest:class{constructor(){throw new Error('duplicate manifest XHR');}}};
  vm.runInNewContext(glue.slice(manifestStart,glue.indexOf('function wasm_httpfs_io_start_js(',manifestStart)),nativeScope);
  const length=nativeScope.wasm_httpfs_manifest_js(128,0);
  assert.equal(length,manifestBytes.length);
  assert.equal(nativeScope.wasm_httpfs_manifest_js(128,length+1),length);
  assert.deepEqual(heap.subarray(128,128+length),manifestBytes,'actual compiled bridge writes identical metadata without an XHR');
  assert.equal(heap[128+length],0);assert.equal(nativeScope.__httpfsManifest,undefined,'native bridge releases its one-use cache after copying');
  for (const kind of ['adapter','device','timeout','script']) {
    const loader=loaderSetup(); loader.gpu.emit({loaded:true});
    if(kind==='timeout') loader.timers.get(1).fn();
    else if(kind==='script') loader.gpu.onerror({message:'script failed',preventDefault(){}});
    else loader.gpu.emit({graphicsError:'Unavailable',graphicsCode:kind});
    if(kind==='adapter'||kind==='device'){
      assert.equal(loader.workers.length,2,'failed GPU selection tries the genuine CPU backend once');
      const cpu=loader.workers[1];assert.ok(cpu.url.includes('/cpu_worker.js?'));
      assert.ok(loader.gpu.terminated,'the GPU worker is stopped before starting CPU');
      loader.gpu.emit({graphicsReady:true});assert.equal(loader.imports.length,0,'late GPU events cannot start the engine');
      cpu.emit({loaded:true});cpu.emit({graphicsError:'Missing full CPU game operations',graphicsCode:'cpu-incomplete',cpuBackend:{gameCompatible:false}});
      assert.ok(cpu.terminated);
    }else loader.gpu.emit({graphicsReady:true});
    assert.equal(loader.io,undefined,'graphics failure downloads no data and creates no IO worker');
    assert.equal(loader.imports.length,0); assert.ok(loader.gpu.terminated);
    assert.equal(loader.timers.size,0); assert.ok(loader.messages.some(m=>m.error));
  }
  for (const kind of ['manifest','io','gpu']) {
    const loader = loaderSetup();
    loader.gpu.emit({loaded:true}); loader.gpu.emit({graphicsReady:true});
    if (kind==='manifest') loader.io.emit({error:'missing manifest'});
    else loader[kind].onerror({message:'script failed',preventDefault(){}});
    loader.io.emit({ready:true}); loader.gpu.emit({loaded:true});
    assert.equal(loader.imports.length,0); assert.ok(loader.io.terminated && loader.gpu.terminated);
    assert.ok(loader.messages.some(m=>m.error),'startup failure reaches the page');
  }

  const html = fs.readFileSync(path.join(root,'mirror/playgta5.com/index.html'),'utf8');
  assert.ok(!/title\/art|ls-screens|ls-stage|@font-face|stopTitle|id="bar"/.test(html),'artwork, title animation and artificial progress bar are removed');
  const elements = Object.fromEntries(['hud','loading','label','data','startup-help','startup-error','startup-reason','startup-steps','startup-retry','cpu-check-link'].map(id=>[id,{textContent:'',style:{},hidden:true,addEventListener(){},remove(){this.removed=true;}}]));
  const radioShell={hidden:true};
  let receive, watchdog, now=0;
  const statusScope = {radioShell,document:{getElementById:id=>id==='radio-shell'?radioShell:elements[id]},
    performance:{now:()=>now}, setInterval(fn){watchdog=fn;return 1;},clearInterval(){},setTimeout(){},
    BroadcastChannel:class {set onmessage(fn){receive=fn;} postMessage(){}},
    waitingChoice:false,startMode:3,startCommitted:false,pickingMap:false,modesEl:{classList:{add(){}}},showModes(){},
  };
  vm.runInContext(html.slice(html.indexOf('const hud ='),html.indexOf('// FPS counter,')),vm.createContext(statusScope));
  receive({data:{io:{state:'ready',cachedBytes:4096}}});
  assert.match(elements.data.textContent,/Cached game data ready: 4.0 KB/);
  receive({data:{read:16,dl:0}});
  assert.match(elements.data.textContent,/read: 16 bytes \(cached\)/);
  receive({data:{label:'First frame'}}); now=40000;
  receive({data:{lines:['engine waits on the GPU worker']}}); watchdog();
  assert.match(elements.label.textContent,/still waiting/,'repeated engine logs cannot hide a startup stall');
  receive({data:{error:'Missing game data'}}); receive({data:{label:'First frame'}});
  receive({data:{error:'Secondary error while stopping workers'}}); watchdog();
  assert.equal(elements.label.textContent,'Missing game data','later progress cannot overwrite an error');
  receive({data:{world:true,dl:100}}); assert.equal(elements.loading.removed,undefined,'late world messages cannot hide a terminal startup error');
  assert.ok(!elements.data.textContent.includes('100'),'late download messages cannot advance failed startup');
  // A fresh run still removes the startup controls as soon as the world is ready.
  const freshScope={...statusScope}; receive=null;
  vm.runInContext(html.slice(html.indexOf('const hud ='),html.indexOf('// FPS counter,')),vm.createContext(freshScope));
  receive({data:{world:true}}); assert.equal(elements.loading.removed,true); assert.equal(radioShell.hidden,false);
  receive({data:{gpuLost:'device removed'}});
  assert.equal(elements['startup-help'].hidden,false,'device loss during gameplay shows recovery controls');
  assert.equal(radioShell.hidden,true);
  assert.match(elements['startup-reason'].textContent,/Downloads have stopped/);
  assert.equal(elements['startup-steps'].hidden,false);
  vm.runInContext(html.slice(html.indexOf('const hud ='),html.indexOf('// FPS counter,')),vm.createContext({...statusScope}));
  receive({data:{error:'No software adapter',graphicsCode:'software-adapter'}});
  assert.match(elements['startup-reason'].textContent,/CPU rendering requires/);
  assert.equal(elements['startup-steps'].hidden,true,'CPU-only failure must not instruct users to rely on GPU drivers or hardware acceleration');
  vm.runInContext(html.slice(html.indexOf('const hud ='),html.indexOf('// FPS counter,')),vm.createContext({...statusScope}));
  receive({data:{error:'Incomplete CPU backend',graphicsCode:'cpu-incomplete'}});
  assert.match(elements['startup-reason'].textContent,/full GTA gameplay support is incomplete/);
  assert.equal(elements['cpu-check-link'].hidden,false);assert.equal(elements['startup-steps'].hidden,true);
  console.log('PASS: cached startup progress, failed/timed-out manifests, cache lock cleanup, worker readiness/errors, and removal of title overlay');
})().catch(error=>{console.error(error);process.exitCode=1;}).finally(()=>clearTimeout(guard));
