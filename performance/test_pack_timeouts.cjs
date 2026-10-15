'use strict';
const assert=require('node:assert/strict'),fs=require('node:fs'),vm=require('node:vm'),zlib=require('node:zlib');
const {webcrypto,createHash}=require('node:crypto');
const sha=b=>createHash('sha256').update(b).digest('hex');
function setup(){
 let now=0,id=0;const timers=new Map();
 const ctx={self:{},crypto:webcrypto,Blob,DecompressionStream,Response,TextEncoder,TextDecoder,AbortController,Uint8Array,Map,Set,Array,Number,Math,JSON,
  setTimeout(fn,ms){timers.set(++id,{at:now+ms,fn});return id;},clearTimeout(id){timers.delete(id);}};
 vm.runInNewContext(fs.readFileSync('mirror/playgta5.com/b/8b0b5899ed/delivery-packs.js','utf8'),ctx);
 return {P:ctx.self.DeliveryPacks,advance(ms){const end=now+ms;for(;;){const due=[...timers].filter(([,t])=>t.at<=end).sort((a,b)=>a[1].at-b[1].at)[0];if(!due)break;now=due[1].at;timers.delete(due[0]);due[1].fn();}now=end;},timers};
}
const raw=Buffer.alloc(8192,71),encoded=zlib.gzipSync(raw);
const pack={url:'/data/packs/'+sha(encoded)+'.bin',sha256:sha(encoded),decodedSha256:sha(raw),bytes:raw.length,encodedBytes:encoded.length,runs:[[0,0,raw.length,0]]};
const flush=async()=>{for(let i=0;i<12;i++)await Promise.resolve();};
function streamFetch(){let control,signal;return {fetch:async(_,init)=>{signal=init.signal;const stream=new ReadableStream({start(c){control=c;signal.addEventListener('abort',()=>c.error(new Error('abort')),{once:true});}});return new Response(stream);},get control(){return control;},get signal(){return signal;}};}
(async()=>{
 const s=setup(),f=streamFetch(),p=new s.P([pack],[{size:raw.length}]);let progress=0;
 const result=p.download(pack,f.fetch,n=>progress+=n);await flush();
 let at=0;for(let part=0;part<4;part++){if(part)s.advance(20000);const end=part===3?encoded.length:Math.ceil(encoded.length*(part+1)/4);f.control.enqueue(encoded.subarray(at,end));at=end;await flush();assert.equal(f.signal.aborted,false);}
 f.control.close();assert.deepEqual(Buffer.from(await result),raw);assert.equal(progress,encoded.length);assert.equal(s.timers.size,0,'healthy 60 s transfer clears timers');
 const idle=setup(),i=streamFetch();const stalled=new idle.P([pack],[{size:raw.length}]).download(pack,i.fetch);await flush();i.control.enqueue(encoded.subarray(0,1));await flush();idle.advance(30001);await assert.rejects(stalled,/body stalled/);assert.equal(idle.timers.size,0);
 const headers=setup();const noHeaders=new headers.P([pack],[{size:raw.length}]).download(pack,(_,init)=>new Promise((_,reject)=>init.signal.addEventListener('abort',()=>reject(new Error('abort')))));headers.advance(45001);await assert.rejects(noHeaders,/headers timed out/);assert.equal(headers.timers.size,0);
 const maximum=setup(),m=streamFetch();const tooLong=new maximum.P([pack],[{size:raw.length}]).download(pack,m.fetch);await flush();
 for(let n=0;n<9;n++){m.control.enqueue(encoded.subarray(n,n+1));await flush();maximum.advance(20000);}
 await assert.rejects(tooLong,/180 s/);assert.equal(maximum.timers.size,0);
 console.log('PASS: active 60 s download, stalled body, stalled headers, 180 s hard bound, progress accounting and timer cleanup');
})().catch(e=>{console.error(e);process.exitCode=1;});
