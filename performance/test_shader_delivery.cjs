const assert = require('node:assert/strict'), fs = require('node:fs'), vm = require('node:vm');
const source = fs.readFileSync('mirror/playgta5.com/b/8b0b5899ed/wgpu_worker.js','utf8');
const start = source.indexOf('const packs = new Map()'), end = source.indexOf('async function packShader(rec)',start);
const requests = [], payload = Uint8Array.of(12,34,56);
const scope = { Map, Uint8Array, TextDecoder, performance:{now:()=>0}, setInterval:()=>1, shaderUrl:'/shaders',
  shaderIndex:{_packs:[{file:'pack0.1234abcd.bin'},{file:'pack1.bin'}]},
  fetchRetry:async(url,init)=>{requests.push({url,init});return {ok:true,arrayBuffer:async()=>payload.buffer};}};
vm.createContext(scope); vm.runInContext(source.slice(start,end)+'\nthis.readPack=packBytes;',scope);
(async()=>{
  const [a,b]=await Promise.all([scope.readPack(0),scope.readPack(0)]);
  assert.deepEqual(Array.from(a),Array.from(payload));assert.equal(a,b);assert.equal(requests.length,1);
  assert.equal(requests[0].init.cache,'force-cache');
  await scope.readPack(1); assert.equal(requests[1].init,undefined,'mutable names retain ordinary fetch behavior');
  console.log('PASS: actual shader pack loader deduplicates requests and explicitly reuses only immutable hashed packs');
})().catch(e=>{console.error(e);process.exitCode=1;});
