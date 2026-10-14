const assert=require('node:assert/strict'),fs=require('node:fs'),vm=require('node:vm');
const source=fs.readFileSync('mirror/playgta5.com/b/8b0b5899ed/io_worker.js','utf8');
const slice=source.slice(source.indexOf('const HINT_PAR ='),source.indexOf('async function loop()',source.indexOf('const HINT_PAR =')));
const heap=new Int32Array(new SharedArrayBuffer(4096));const pending=[],jobs=[];
const ctx=vm.createContext({HEAP32:heap,Atomics,Math,BS:4096,sh:{},noHints:false,files:[{size:1048576}],index:new Map(),inflight:new Map(),
 ensureBlocks(id,a,b,low){jobs.push({id,a,b,low});return new Promise(resolve=>pending.push(resolve));}});
vm.runInContext(slice+'\nglobalThis.api={drainHints,configure(queued,budget){queuedOnly=queued;hintBudget=budget;},counts(){return {hintActive,lowActive,hintQueue:hintQueue.length,lowQueue:lowQueue.length};}};',ctx);
heap[2]=16;heap[3]=64;heap[4]=20;
for(let i=0;i<20;i++){const e=16+4*i;heap[e]=0;heap[e+1]=i*4096;heap[e+3]=4096|(i%2?0x40000000:0);}
ctx.api.configure(true,4);ctx.api.drainHints(0);assert.equal(heap[5],20);assert.equal(jobs.length,4);assert.equal(ctx.api.counts().lowQueue,0);assert.ok(jobs.every(j=>j.low),'announced reads must not consume the reserved demand lane');
(async()=>{let finished=0;while(pending.length){pending.shift()();finished++;for(let i=0;i<4;i++)await Promise.resolve();assert.ok(ctx.api.counts().hintActive<=4);}
assert.equal(finished,10,'all actual queued reads complete');assert.equal(jobs.length,10,'speculative half is skipped');
heap[4]=21;heap[16+4*20+3]=4096;ctx.noHints=true;ctx.api.drainHints(0);assert.equal(heap[5],20,'explicit no-hints still disables consumption');
const loader=fs.readFileSync('mirror/playgta5.com/b/8b0b5899ed/loader.js','utf8');assert.ok(loader.includes('queuedOnly: !!m.demandOnly'));assert.ok(loader.includes('noHints: !!m.noHints,'));
console.log('PASS: real queued hint consumer preserves requested reads, skips speculative reads, bounds concurrency and honours explicit no-hints');})().catch(e=>{console.error(e);process.exitCode=1;});
