const assert = require('node:assert/strict');
const fs = require('node:fs');
const vm = require('node:vm');
const html = fs.readFileSync('mirror/playgta5.com/index.html','utf8');
const input = html.slice(html.indexOf('function installInput('),html.indexOf('} // Exclusive game document lease.'));
function setup(query='liveResize=1') {
  const handlers=new Map(), timers=new Map(), messages=[];
  let clock=0, nextTimer=0, requested=[1920,1080];
  const add=(type,fn)=>{if(!handlers.has(type))handlers.set(type,[]);handlers.get(type).push(fn);};
  const buffer=new SharedArrayBuffer(4096), words=new Int32Array(buffer,256,10), ext=new Int32Array(buffer,424,4);
  const document={visibilityState:'visible',hasFocus(){return true;},addEventListener:add};
  const scope={Uint8Array,Int32Array,Uint16Array,Atomics,Math,Set,Object,
    q:new URLSearchParams(query),startSize:[1920,1080],displaySize:[1920,1080],fitGameCanvas(){},startMode:0,VK:{},suppliedBuffer:buffer,
    document,innerWidth:1920,innerHeight:1080,wantSize:()=>requested,postLog:m=>messages.push(m),addEventListener:add,
    canvas:{addEventListener(){},getBoundingClientRect(){return {left:0,top:0,width:1920,height:1080};}},
    clearTimeout:id=>timers.delete(id),setTimeout(fn,ms){const id=++nextTimer;timers.set(id,{fn,at:clock+ms});return id;}};
  vm.runInContext(input+'\ninstallInput({buffer:suppliedBuffer},0);',vm.createContext(scope));
  return {words,ext,scope,messages,
    request(w,h){requested=[w,h];scope.innerWidth=w;scope.innerHeight=h;},
    emit(type){for(const fn of handlers.get(type)||[])fn({});},
    advance(ms){clock+=ms;for(const [id,t]of [...timers])if(t.at<=clock){timers.delete(id);t.fn();}},
    get pending(){return timers.size;}};
}
const a=setup();
a.request(1800,1000);a.emit('resize');a.advance(200);
a.request(1600,900);a.emit('resize');a.advance(200);
a.request(1280,720);a.emit('resize');a.emit('fullscreenchange');a.advance(499);
assert.deepEqual(Array.from(a.ext).slice(2),[1920,1080],'intermediate transition sizes do not rebuild render targets');
a.words[0]=1900;a.words[1]=1000;a.words[2]=7;a.words[3]=11;
a.advance(1);
assert.deepEqual(Array.from(a.ext).slice(2),[1280,720]);
assert.equal(a.words[0],1279);assert.equal(a.words[1],719);
assert.equal(a.words[2],7);assert.equal(a.words[3],11,'resize does not inject mouse deltas');
assert.equal(a.messages.length,1);a.emit('resize');a.advance(500);assert.equal(a.messages.length,1);
a.request(1920,1080);a.emit('resize');a.scope.document.visibilityState='hidden';a.emit('visibilitychange');a.advance(1000);
assert.deepEqual(Array.from(a.ext).slice(2),[1280,720]);assert.equal(a.pending,0);
a.scope.document.visibilityState='visible';a.request(0,0);a.emit('resize');a.advance(1000);assert.equal(a.pending,0);
a.request(1920,1080);a.emit('visibilitychange');a.advance(500);assert.deepEqual(Array.from(a.ext).slice(2),[1920,1080]);
a.request(800,600);a.emit('resize');a.scope.document.visibilityState='hidden';a.advance(500);
assert.deepEqual(Array.from(a.ext).slice(2),[1920,1080],'visibility is rechecked when the timer fires');
const normal=setup('');normal.request(1280,720);normal.emit('resize');normal.emit('fullscreenchange');normal.advance(1000);
assert.deepEqual(Array.from(normal.ext).slice(2),[1920,1080],'normal fullscreen/windowed never enters native resize');
assert.equal(normal.pending,0);
const fixed=setup('liveResize=1&fixed=1');fixed.request(1280,720);fixed.emit('resize');fixed.emit('fullscreenchange');fixed.advance(1000);
assert.deepEqual(Array.from(fixed.ext).slice(2),[1920,1080]);assert.equal(fixed.pending,0);

const fit=html.slice(html.indexOf('function fitGameCanvas()'),html.indexOf("addEventListener('resize', fitGameCanvas);"));
const fitScope={innerWidth:1280,innerHeight:720,displaySize:[1920,1080],canvas:{style:{}}};
vm.runInContext(fit+'\nglobalThis.fitForTest=fitGameCanvas;',vm.createContext(fitScope));
fitScope.fitForTest();assert.equal(fitScope.canvas.style.width,'1280px');assert.equal(fitScope.canvas.style.height,'720px');
fitScope.innerWidth=1912;fitScope.innerHeight=815;fitScope.fitForTest();
assert.equal(parseFloat(fitScope.canvas.style.height),815);
assert.ok(Math.abs(parseFloat(fitScope.canvas.style.width)/815-1920/1080)<Number.EPSILON*2,'windowed presentation preserves aspect within floating-point precision');
fitScope.innerWidth=1920;fitScope.innerHeight=1080;fitScope.fitForTest();
assert.equal(fitScope.canvas.style.width,'1920px');assert.equal(fitScope.canvas.style.height,'1080px');
fitScope.innerWidth=0;fitScope.innerHeight=0;fitScope.fitForTest();assert.equal(fitScope.canvas.style.width,'1920px');
const sizing=html.slice(html.indexOf('wantSize = () => {'),html.indexOf('startSize = wantSize();'));
const sizeScope={q:new URLSearchParams(),innerWidth:800,innerHeight:600,devicePixelRatio:1,screen:{width:1920,height:1080},lowMemory:false,mobileProfile:false,qualityExplicit:true,qualityRequested:false,qualityConfig:{size:[960,540]},Math};
vm.runInContext(sizing,vm.createContext(sizeScope));assert.deepEqual(Array.from(sizeScope.wantSize()),[1920,1080],'startup uses desktop detail even in a small window');
sizeScope.q=new URLSearchParams('res=1280x720');assert.deepEqual(Array.from(sizeScope.wantSize()),[1280,720]);
sizeScope.q=new URLSearchParams();sizeScope.mobileProfile=true;sizeScope.devicePixelRatio=3;
assert.deepEqual(Array.from(sizeScope.wantSize()),[640,360],'mobile avoids multiplying native targets by Retina pixel ratio');
sizeScope.q=new URLSearchParams('res=800x450');assert.deepEqual(Array.from(sizeScope.wantSize()),[800,450],'explicit benchmark resolution wins on mobile');

sizeScope.q=new URLSearchParams();sizeScope.qualityExplicit=false;sizeScope.qualityRequested=true;sizeScope.mobileProfile=false;
assert.deepEqual(Array.from(sizeScope.wantSize()),[960,540],'automatic profile supplies native startup dimensions');

// Execute the actual presentation preamble across unchanged and changed sizes.
const worker=fs.readFileSync('mirror/playgta5.com/b/8b0b5899ed/wgpu_worker.js','utf8');
const preamble=worker.slice(worker.indexOf('async function present(id)'),worker.indexOf('// debugging aid:',worker.indexOf('async function present(id)')));
let configurations=0, widthWrites=0, heightWrites=0;
const canvas={_w:800,_h:600,get width(){return this._w;},set width(v){this._w=v;widthWrites++;},get height(){return this._h;},set height(v){this._h=v;heightWrites++;}};
const t={desc:{size:{width:1920,height:1080}},tex:{createView(){return {};}}};
const pass={setPipeline(){},setBindGroup(){},draw(){},end(){}};
const ctx=vm.createContext({profiler:null,fr:{},objs:new Map([[1,t]]),canvas,canvasConfigured:false,
  canvasCtx:{configure(){configurations++;},getCurrentTexture(){return {createView(){return {};}};}},
  blit:{getBindGroupLayout(){return {};}},device:{createBindGroup(){return {};}},canvasFormat:'bgra8unorm',endPass(){},getEncoder(){return {beginRenderPass(){return pass;}};}});
vm.runInContext(preamble+'}\nglobalThis.presentForTest=present;',ctx);
(async()=>{
  await ctx.presentForTest(1);await ctx.presentForTest(1);
  assert.equal(configurations,1);assert.equal(widthWrites,1);assert.equal(heightWrites,1);
  t.desc.size={width:1280,height:720};await ctx.presentForTest(1);
  assert.equal(configurations,1,'dimension setters resize the canvas without reconfiguring the device');
  assert.equal(widthWrites,2);assert.equal(heightWrites,2);
  t.desc.size={width:1280,height:800};await ctx.presentForTest(1);assert.equal(widthWrites,2);assert.equal(heightWrites,3);
  console.log('PASS: window/fullscreen preserves native targets, presentation fits without stretching, optional diagnostic resizing settles, canvas configures once');
})().catch(e=>{console.error(e);process.exitCode=1;});
