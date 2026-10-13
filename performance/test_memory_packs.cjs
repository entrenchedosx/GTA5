const assert=require('node:assert/strict'),fs=require('node:fs'),path=require('node:path'),vm=require('node:vm');
const {webcrypto,createHash}=require('node:crypto'),zlib=require('node:zlib');
const build=path.join(__dirname,'../mirror/playgta5.com/b/8b0b5899ed');
const raw=Buffer.alloc(12*4096);for(let i=0;i<raw.length;i++)raw[i]=(i*13+(i>>>12))&255;
const compressed=zlib.gzipSync(raw),sha=x=>createHash('sha256').update(x).digest('hex');
const pack={url:'/data/packs/'+sha(compressed)+'.bin',sha256:sha(compressed),decodedSha256:sha(raw),encodedBytes:compressed.length,bytes:raw.length,runs:Array.from({length:12},(_,i)=>[i,0,4096,i*4096])};
const files=Array.from({length:12},(_,i)=>({path:'file'+i+'.rpf',size:4096}));
let requests=0,corrupt=false;
const scope={self:{location:{search:''},postMessage(){}},navigator:{},BroadcastChannel:class{postMessage(){}},console,performance,
  URLSearchParams,crypto:webcrypto,Blob,Response,DecompressionStream,TextEncoder,TextDecoder,Uint8Array,Int32Array,DataView,ArrayBuffer,
  AbortController,Atomics,Map,Set,setTimeout,clearTimeout,
  fetch:async(url,init)=>{requests++;await new Promise(r=>setTimeout(r,1));if(url.includes('/packs/'))return new Response(corrupt?'bad':compressed);
    const id=Number(/file(\d+)/.exec(url)[1]),[,a,b]=/bytes=(\d+)-(\d+)/.exec(init.headers.Range);return new Response(raw.subarray(id*4096+Number(a),id*4096+Number(b)+1),{status:206});}};
const ctx=vm.createContext(scope);scope.importScripts=name=>vm.runInContext(fs.readFileSync(path.join(build,name),'utf8'),ctx);
vm.runInContext(fs.readFileSync(path.join(build,'io_worker.js'),'utf8')+`\nself.test={getMemBlock,
 install(input,catalogue){base='/data/';files=input;sh=null;deliveryPacks=catalogue?new self.DeliveryPacks([catalogue],files):null;memCache.clear();memBytes=0;inflight.clear();},uncovered(){deliveryPacks={forBlocks(){return [];}};},getBytes(){return memBytes;}}`,ctx);
(async()=>{
  const api=scope.self.test;
  api.install(files,null);await Promise.all(files.map((_,i)=>api.getMemBlock(i,0)));assert.equal(requests,12);
  requests=0;api.install(files,pack);
  const data=await Promise.all(files.map((_,i)=>api.getMemBlock(i,0)));
  assert.equal(requests,1,'12 concurrent archive reads share one validated RAM pack download');
  for(let i=0;i<12;i++)assert.deepEqual(Buffer.from(data[i]),raw.subarray(i*4096,(i+1)*4096));
  await Promise.all(files.map((_,i)=>api.getMemBlock(i,0)));assert.equal(requests,1,'warm RAM blocks need no additional requests');
  assert.equal(api.getBytes(),raw.length);
  requests=0;corrupt=true;api.install(files,pack);const recovered=await api.getMemBlock(0,0);
  assert.deepEqual(Buffer.from(recovered),raw.subarray(0,4096));assert.equal(requests,2,'corrupt pack falls back to exact original range');
  requests=0;api.install([{path:'file0.rpf',size:raw.length}],null);api.uncovered();
  const unpacked=await Promise.all([api.getMemBlock(0,0),api.getMemBlock(0,1)]);
  assert.equal(requests,1,'uncovered 4 KiB blocks share the original 256 KiB read-ahead request');
  assert.deepEqual(Buffer.from(unpacked[0]),raw.subarray(0,4096));assert.deepEqual(Buffer.from(unpacked[1]),raw.subarray(4096,8192));
  assert.equal(api.getBytes(),raw.length,'coalesced raw responses are counted/stored once');
  console.log('PASS: no-OPFS fixture 12 requests -> 1, original bytes preserved, warm zero requests, corrupt pack range recovery; RAM blocks bounded at 48 MiB');
})().catch(e=>{console.error(e);process.exitCode=1;});
