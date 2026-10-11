const assert = require('node:assert/strict');
const fs = require('node:fs');
const vm = require('node:vm');
const path = require('node:path');
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
  const self = { location: { search: '' }, postMessage(m) { messages.push(m); } };
  const scope = { self, BroadcastChannel: Channel, navigator: {}, console, URLSearchParams,
    performance, fetch: fetcher, AbortController, Uint8Array, Int32Array, DataView, ArrayBuffer,
    Map, Set, Atomics, Number, Math, Promise,
    setTimeout(fn, ms) { const id = ++nextTimer; timers.set(id, {fn, ms}); return id; },
    clearTimeout(id) { timers.delete(id); } };
  const context = vm.createContext(scope);
  scope.importScripts = name => vm.runInContext(fs.readFileSync(path.join(build, name), 'utf8'), context);
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
    async init() { await self.onmessage({data:{init:true,base:'/data/',noStore:true}}); return self.test.ready; } };
}

function loaderSetup() {
  const workers = [], messages = [], imports = [];
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
    importScripts(url) {imports.push(url);}, setTimeout, clearTimeout,
  }));
  self.onmessage({data:{base:'/b/test',args:[],canvas:{}}});
  return {gpu:workers[0],io:workers[1],messages,imports};
}

// Keep the process alive until assertions finish; an unresolved fake-worker
// promise must fail the test instead of allowing Node to exit successfully.
const guard = setTimeout(() => { console.error('FAIL: startup test did not finish'); process.exit(1); }, 30000);
(async () => {
  const manifest = {version:'1',files:[['common/test.dat',16]]};
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

  for (const first of ['gpu','io']) {
    const loader = loaderSetup();
    loader.io.emit({loaded:true}); loader.gpu.emit({loaded:true}); loader.gpu.emit({loaded:true});
    assert.equal(loader.imports.length,0,'script-loaded notices cannot start the engine before data readiness');
    if (first==='io') loader.io.emit({ready:true}); else loader.gpu.emit({loaded:true});
    loader.io.emit({ready:true}); loader.io.emit({ready:true}); loader.gpu.emit({loaded:true});
    assert.equal(loader.imports.length,1,'engine starts exactly once after data initialization');
  }
  const earlyData = loaderSetup(); earlyData.io.emit({ready:true});
  assert.equal(earlyData.imports.length,0); earlyData.gpu.emit({loaded:true});
  assert.equal(earlyData.imports.length,1,'data may become ready before graphics worker script');
  for (const kind of ['manifest','io','gpu']) {
    const loader = loaderSetup();
    if (kind==='manifest') loader.io.emit({error:'missing manifest'});
    else loader[kind].onerror({message:'script failed',preventDefault(){}});
    loader.io.emit({ready:true}); loader.gpu.emit({loaded:true});
    assert.equal(loader.imports.length,0); assert.ok(loader.io.terminated && loader.gpu.terminated);
    assert.ok(loader.messages.some(m=>m.error),'startup failure reaches the page');
  }

  const html = fs.readFileSync(path.join(root,'mirror/playgta5.com/index.html'),'utf8');
  assert.ok(!/title\/art|ls-screens|ls-stage|@font-face|stopTitle|id="bar"/.test(html),'artwork, title animation and artificial progress bar are removed');
  const elements = Object.fromEntries(['hud','loading','label','data'].map(id=>[id,{textContent:'',style:{},remove(){this.removed=true;}}]));
  const radioShell={hidden:true};
  let receive, watchdog, now=0;
  const statusScope = {radioShell,document:{getElementById:id=>id==='radio-shell'?radioShell:elements[id]},
    performance:{now:()=>now}, setInterval(fn){watchdog=fn;return 1;},clearInterval(){},setTimeout(){},
    BroadcastChannel:class {set onmessage(fn){receive=fn;}},
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
  receive({data:{world:true}}); assert.equal(elements.loading.removed,true,'startup controls leave immediately when the world is ready'); assert.equal(radioShell.hidden,false,'radio control appears when gameplay is ready');
  console.log('PASS: cached startup progress, failed/timed-out manifests, cache lock cleanup, worker readiness/errors, and removal of title overlay');
})().catch(error=>{console.error(error);process.exitCode=1;}).finally(()=>clearTimeout(guard));
