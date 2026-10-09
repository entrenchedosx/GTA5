const assert=require('node:assert/strict'),fs=require('node:fs'),vm=require('node:vm');
const source=fs.readFileSync('mirror/playgta5.com/b/8b0b5899ed/performance-page.js','utf8');
function setup(bufferSetting='&bufferArena=1'){
 const events=[],listeners={},timers=new Map(),channels=new Map(),posts=[];let timerId=0;
 const elements=[];
 const scope={location:{search:'?profile=1&autoBenchmark=1&benchmark=geometry&benchmarkSeconds=65'+bufferSetting},
   navigator:{userAgent:'test'},innerWidth:1920,innerHeight:1080,devicePixelRatio:1,crossOriginIsolated:true,URLSearchParams,
   document:{visibilityState:'visible',createElement(){const e={dataset:{},style:{},textContent:''};elements.push(e);return e;},body:{append(){}},querySelector(){return {toBlob(fn){fn(null);}};}},
   addEventListener(type,fn){(listeners[type]||(listeners[type]=[])).push(fn);},dispatchEvent(e){events.push(e);},
   CustomEvent:class{constructor(type,args){this.type=type;this.detail=args.detail;}},
   setTimeout(fn,ms){timers.set(++timerId,{fn,ms});return timerId;},clearTimeout(id){timers.delete(id);},
   BroadcastChannel:class{constructor(name){channels.set(name,this);}postMessage(data){posts.push(data);}}};
 vm.createContext(scope);vm.runInContext(source,scope);
 return {events,timers,posts,elements,escape(){for(const fn of listeners.keydown)fn({code:'Escape'});},
  report(comparison=null){channels.get('game-performance').onmessage({data:{worldReadyAtMs:1,elapsedAfterReadyMs:70000,comparison}});}};
}
const early=setup();early.escape();assert.equal(early.events.at(-1).detail.locked,false);early.report();assert.equal(early.posts.length,0);assert.equal(early.timers.size,0);
const run=setup();run.report();assert.equal(run.events.at(-1).detail.locked,true);assert.equal(run.posts.length,1);assert.equal(run.timers.size,1);
run.report({label:'geometry-arena',elapsedMs:66000});assert.equal(run.events.at(-1).detail.locked,false);assert.equal(run.timers.size,0);
assert.ok(run.elements.some(e=>e.textContent==='Stationary benchmark complete'));
const timeout=setup();[...timeout.timers.values()][0].fn();assert.equal(timeout.events.at(-1).detail.locked,false);timeout.report();assert.equal(timeout.posts.length,0);
const defaults=setup('');defaults.report();assert.equal(defaults.posts[0].label,'geometry-arena');
const original=setup('&bufferArena=0');original.report();assert.equal(original.posts[0].label,'dedicated-buffers');
console.log('PASS: automatic benchmark warm-up cancellation, timed start/completion, watchdog and restored controls.');
