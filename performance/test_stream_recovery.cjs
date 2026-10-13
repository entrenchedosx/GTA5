const assert=require('node:assert/strict'),fs=require('node:fs'),vm=require('node:vm'),path=require('node:path');
const source=fs.readFileSync(path.join(__dirname,'../mirror/playgta5.com/b/8b0b5899ed/io_worker.js'),'utf8');
const timers=new Map();let next=0,requests=0;
const scope={self:{location:{search:''},postMessage(){}},URLSearchParams,navigator:{},performance,console,AbortController,
	BroadcastChannel:class{postMessage(){}},
  Uint8Array,Int32Array,DataView,ArrayBuffer,Atomics,TextEncoder,Map,Set,
  setTimeout(fn,ms){const id=++next;timers.set(id,{fn,ms});return id;},clearTimeout(id){timers.delete(id);},
  fetch(url,init){requests++;return new Promise((resolve,reject)=>init.signal.addEventListener('abort',()=>reject(Error('aborted')),{once:true}));}};
const context=vm.createContext(scope);scope.importScripts=()=>{};
vm.runInContext(source+`\nself.test={stallGuardedRead,fetchHeaders,storeWrite,streamRanges,init,
 installStore(writer){sh={write:writer};},getIndex(){return index.size;},hintConfig(){return {queuedOnly,hintBudget};},setBase(){base='/data/';}}`,context);
const api=scope.self.test;
const flush=async()=>{for(let i=0;i<20;i++)await Promise.resolve();};
(async()=>{
  const pending=api.stallGuardedRead({read:()=>new Promise(()=>{}),cancel(){throw Error('cancel failed');}},'test');
  const rejected=assert.rejects(pending,/stalled response from test/);
  [...timers.values()].find(t=>t.ms===30000).fn();await rejected;await flush();
  timers.clear();
  const headers=api.fetchHeaders('/data/test',{});const timeout=assert.rejects(headers,/no headers/);
  [...timers.values()].find(t=>t.ms===60000).fn();await timeout;assert.equal(timers.size,0);
  api.installStore(()=>2);assert.throws(()=>api.storeWrite(new Uint8Array(3),0),/store write returned 2 of 3/);
  api.installStore(()=>undefined);api.storeWrite(new Uint8Array(3),0);
  // A stalled coalesced request must reject/fall back; it cannot hold every
  // engine read forever while only the individual path has a header timer.
  timers.clear();requests=0;api.setBase();
  const results=[];const group=[0,1].map(i=>({f:{path:'test'+i,size:1},start:0,end:0,onChunk(){},resolve(){results.push('ok');},reject(){results.push('error');}}));
  const batch=api.streamRanges(group);await flush();
  [...timers.values()].find(t=>t.ms===60000).fn();await flush();
  assert.equal(requests,3,'stalled batch falls back to two individual requests');
  for(let attempt=0;attempt<3;attempt++){
    for(const t of [...timers.values()].filter(t=>t.ms===60000))t.fn();await flush();
  }
  await batch;assert.deepEqual(results,['error','error']);
  // Exercise actual initialization: demand-only retains the catalogue but
  // schedules no speculative pack/archive fetches (even with a live store).
  timers.clear();requests=0;scope.crypto={subtle:{}};scope.self.crypto=scope.crypto;
  scope.DeliveryPacks={loadBootstrap:async()=>({manifest:{version:'fixture',files:[['test',1]]},index:{}}),
    fromIndex:async()=>({packs:[{prefetch:true,runs:[[0,0,1,0]]}],failed:new Set(),download:async()=>{requests++;return new Uint8Array(1);}})};
  api.installStore(()=>1);
  await api.init({base:'/data/',bootstrapURL:'/bootstrap',packIndex:'/index',bootset:'bootset_low.json',noStore:true,demandOnly:true});
  await flush();assert.equal(requests,0,'demand-only initialization downloads no unrequested data');
  await api.init({base:'/data/',bootstrapURL:'/bootstrap',noStore:true,demandOnly:true,queuedOnly:true,hintConcurrency:999});
  assert.equal(api.hintConfig().queuedOnly,true);assert.equal(api.hintConfig().hintBudget,16,'concurrency cannot exceed conservative cap');
  await api.init({base:'/data/',bootstrapURL:'/bootstrap',noStore:true,demandOnly:true,queuedOnly:true});assert.equal(api.hintConfig().hintBudget,4);

  console.log('PASS: stalled body cancellation failure, stalled batch headers, bounded fallback retries and short store writes');
})().catch(e=>{console.error(e);process.exitCode=1;});
