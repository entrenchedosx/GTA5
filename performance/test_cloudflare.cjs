const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
(async()=>{
  const source=fs.readFileSync(path.join(__dirname,'../cloudflare/worker.js'),'utf8');
  const worker=(await import('data:text/javascript;base64,'+Buffer.from(source).toString('base64'))).default;
  const data=Buffer.from('0123456789'), etag='"test"'; let heads=0,gets=0,bodyReads=0;
  const env={ASSETS:{
    async head(key){heads++;if(key.includes('missing'))return null;return {size:data.length,httpEtag:etag,uploaded:new Date('2026-10-01T00:00:00Z')};},
    async get(key,options){gets++;if(key.includes('missing'))return null;
      let start=0,length=data.length;if(options?.range){const r=options.range;start=r.suffix===undefined?r.offset:Math.max(0,data.length-r.suffix);length=Math.min(r.length??data.length-start,data.length-start);if(start>=data.length)throw new Error('R2 invalid offset');}
      return {size:data.length,httpEtag:etag,uploaded:new Date('2026-10-01T00:00:00Z'),httpMetadata:{},
        body:new ReadableStream({start(c){c.enqueue(data.subarray(start,start+length));c.close();}}),
        arrayBuffer(){bodyReads++;throw new Error('Worker must stream, not buffer');}};
    }} };
  const request=(p,init)=>worker.fetch(new Request('https://game.example'+p,init),env);
  let res=await request('/data/test.rpf');assert.equal(await res.text(),'0123456789');assert.equal(gets,1);assert.equal(heads,0);
  assert.equal(res.headers.get('cross-origin-embedder-policy'),'require-corp');assert.equal(res.headers.get('cache-control'),'no-cache');
  res=await request('/data/test.rpf',{headers:{Range:'bytes=2-5'}});assert.equal(res.status,206);assert.equal(await res.text(),'2345');assert.equal(res.headers.get('Content-Range'),'bytes 2-5/10');assert.equal(heads,0);
  res=await request('/data/test.rpf',{headers:{Range:'bytes=-3'}});assert.equal(await res.text(),'789');
  res=await request('/data/test.rpf',{headers:{Range:'bytes=6-'}});assert.equal(await res.text(),'6789');
  res=await request('/data/test.rpf',{headers:{Range:'bytes=8-99'}});assert.equal(await res.text(),'89');
  res=await request('/data/test.rpf',{headers:{Range:'bytes=99-100'}});assert.equal(res.status,416);assert.equal(res.headers.get('Content-Range'),'bytes */10');
  res=await request('/data/test.rpf',{headers:{Range:'bytes=1-2,4-5'}});assert.equal(res.status,416);
  res=await request('/data/test.rpf',{method:'HEAD'});assert.equal(res.headers.get('Content-Length'),'10');assert.equal(await res.text(),'');
  res=await request('/data/test.rpf',{headers:{'If-None-Match':'W/"test"'}});assert.equal(res.status,304);
  res=await request('/data/test.rpf',{headers:{Range:'bytes=2-5','If-Range':'"stale"'}});assert.equal(res.status,200);assert.equal(await res.text(),'0123456789');
  res=await request('/data/missing.rpf');assert.equal(res.status,404);
  res=await request('/data/%2e%2e%2fsecret');assert.equal(res.status,400);
  res=await request('/data/%00x');assert.equal(res.status,400);
  res=await request('/data/batchc/'+'a'.repeat(40)+'.bin');assert.equal(res.status,200);assert.equal(res.headers.get('Content-Encoding'),null);assert.match(res.headers.get('Cache-Control'),/immutable/);
  res=await request('/data/packs/'+'b'.repeat(64)+'.bin');assert.match(res.headers.get('Cache-Control'),/immutable/);
  res=await request('/radio/audio/cachalot-onda-andar.69de7494e1a3419f.mp3');assert.equal(res.headers.get('Content-Type'),'audio/mpeg');assert.match(res.headers.get('Cache-Control'),/immutable/);
  res=await request('/radio/cachalot-onda-andar.b456927b52fe308b.svg');assert.equal(res.headers.get('Content-Type'),'image/svg+xml');assert.match(res.headers.get('Cache-Control'),/immutable/);
  res=await request('/data/manifest.json?v=1');assert.doesNotMatch(res.headers.get('Cache-Control'),/immutable/);
  heads=gets=0;
  res=await request('/data/batch',{method:'POST',body:JSON.stringify([['test.rpf',2,5],['test.rpf',8,99]])});
  assert.equal(res.status,200);assert.equal(res.headers.get('X-Run-Lengths'),'4,2');assert.equal(await res.text(),'234589');assert.equal(heads,1);assert.equal(gets,2);assert.equal(bodyReads,0);
  heads=gets=0;
  res=await request('/data/batch?exact=1',{method:'POST',body:JSON.stringify([['test.rpf',0,2],['test.rpf',7,9]])});
  assert.equal(await res.text(),'012789');assert.equal(heads,0);assert.equal(gets,2);
  res=await request('/data/batch',{method:'POST',body:JSON.stringify([['test.rpf',0,67108864]])});assert.equal(res.status,400);
  res=await request('/data/batch',{method:'POST',body:JSON.stringify([['../secret',0,1]])});assert.equal(res.status,400);
  res=await request('/log',{method:'POST',body:'diagnostic'});assert.equal(res.status,204);
  res=await request('/data/test.rpf',{method:'PUT',body:'forbidden'});assert.equal(res.status,405);
  console.log('PASS: Worker streams with one R2 GET, byte ranges/suffix/EOF/416/HEAD/304/If-Range, isolation, traversal rejection, immutable policy, batchc bytes and streamed batch limits');
})().catch(e=>{console.error(e);process.exitCode=1;});
