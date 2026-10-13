const assert = require('node:assert/strict');
const fs = require('node:fs');
const vm = require('node:vm');
const source = fs.readFileSync('mirror/playgta5.com/b/8b0b5899ed/wgpu_worker.js','utf8');
const section = source.slice(source.indexOf('function graphicsFailure('), source.indexOf('// ---- objects'));
function setup(api) {
  const events={}, logs=[];
  let lose;
  const device={features:new Set(['texture-compression-bc']),limits:{},
    lost:new Promise(resolve=>lose=resolve),addEventListener(type,fn){events[type]=fn;}};
  const scope={self:{navigator:{gpu:api},location:{search:''}},isNode:false,
    geometryArenaEnabled:false,profileEnabled:false,geometryArena:null,device:null,adapter:null,gpu:null,
    canvas:null,canvasCtx:null,canvasFormat:null,i32:null,errorCount:0,errorKinds:new Map(),
    logLine(text){logs.push(text);},post(){},BroadcastChannel:class{postMessage(){}},URLSearchParams,
    Set,Array,Error,Atomics};
  vm.createContext(scope); vm.runInContext(section+'\nthis.test={requestGameDevice,initDevice};',scope);
  return {scope,device,events,lose,logs,...scope.test};
}
function adapter(device, features=['texture-compression-bc']) {
  return {features:new Set(features),limits:{maxTextureDimension2D:8192},requests:[],
    async requestDevice(desc){this.requests.push(desc);return device;}};
}
(async()=>{
  const options=[];
  const run=setup({async requestAdapter(o){options.push(o);return options.length===1?null:good;},getPreferredCanvasFormat(){return 'bgra8unorm';}});
  const good=adapter(run.device);
  await Promise.all([run.initDevice({}),run.initDevice({})]);
  assert.deepEqual(options.map(o=>o.powerPreference),['high-performance',undefined]);
  assert.equal(good.requests.length,1,'preflight creates one device');
  assert.equal(good.requests[0].requiredLimits.maxTextureDimension2D,8192);
  assert.ok(good.requests[0].requiredFeatures.includes('texture-compression-bc'));
  const canvas={getContext(name){assert.equal(name,'webgpu');return {canvas:this};}};
  await run.initDevice({canvas});
  assert.equal(good.requests.length,1,'engine attaches canvas to the existing device');
  assert.equal(run.scope.canvas,canvas); assert.equal(run.scope.canvasFormat,'bgra8unorm');
  run.events.uncapturederror({error:{message:'validation before engine ring'}});
  assert.equal(run.scope.errorCount,1,'preflight validation never touches absent shared memory');
  run.lose({reason:'unknown',message:'test removal'}); await Promise.resolve();
  await assert.rejects(run.initDevice({}),e=>e.code==='device-lost');
  await assert.rejects(run.requestGameDevice(null,()=>({})),e=>e.code==='api');
  let attempts=0;
  await assert.rejects(run.requestGameDevice({async requestAdapter(){attempts++;return null;}},()=>({})),e=>e.code==='adapter');
  assert.equal(attempts,4,'hardware preferences and software fallback checked before reporting no adapter');
  const software=adapter(run.device);software.info={isFallbackAdapter:true};
  const softwareChoices=[];
  const softwareApi={async requestAdapter(options){softwareChoices.push(options);return options.forceFallbackAdapter?software:null;}};
  assert.equal((await run.requestGameDevice(softwareApi,()=>({}))).adapter,software,'automatic selection reaches a compatible software adapter after hardware fails');
  assert.deepEqual(softwareChoices.map(o=>!!o.forceFallbackAdapter),[false,false,false,true]);
  softwareChoices.length=0;
  assert.equal((await run.requestGameDevice(softwareApi,()=>({}),false,true)).adapter,software);
  assert.equal(softwareChoices.length,1,'CPU mode requests only the software adapter');
  const hardware=adapter(run.device);hardware.info={isFallbackAdapter:false};
  await assert.rejects(run.requestGameDevice({async requestAdapter(){return hardware;}},()=>({}),false,true),e=>e.code==='software-adapter');
  assert.equal(hardware.requests.length,0,'CPU mode cannot accept hardware mislabeled as a fallback');
  const hidden=adapter(run.device);hidden.info={};
  await assert.rejects(run.requestGameDevice({async requestAdapter(){return hidden;}},()=>({}),false,true),e=>e.code==='software-adapter');
  assert.equal(hidden.requests.length,0,'a hidden adapter type is not proof of CPU rendering');
  await assert.rejects(run.requestGameDevice({async requestAdapter(){return null;}},()=>({}),false,true),e=>e.code==='software-adapter');
  const rejected={features:new Set(['texture-compression-bc']),calls:0,async requestDevice(){this.calls++;throw Error('device unavailable');}};
  const fallback=adapter(run.device); let at=0;
  const selected=await run.requestGameDevice({async requestAdapter(){return ++at===1?rejected:fallback;}},()=>({}));
  assert.equal(selected.adapter,fallback,'device rejection tries another adapter');
  await assert.rejects(run.requestGameDevice({async requestAdapter(){return rejected;}},()=>({})),e=>e.code==='device');
  assert.equal(rejected.calls,2,'same adapter object attempted once in each selection');
  const incompatible=adapter(run.device,[]);
  await assert.rejects(run.requestGameDevice({async requestAdapter(){return incompatible;}},()=>({})),e=>e.code==='formats');
  assert.equal(incompatible.requests.length,0,'unsupported texture formats rejected before game data');
  at=0;
  assert.equal((await run.requestGameDevice({async requestAdapter(){if(++at<3)throw Error('selection failed');return fallback;}},()=>({}))).adapter,fallback);
  console.log('PASS: actual GPU selection fallback, device reuse, early validation/device loss, and unsupported formats');
})().catch(error=>{console.error(error);process.exitCode=1;});
