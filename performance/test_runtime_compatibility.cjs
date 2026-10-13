const assert=require('node:assert/strict'),fs=require('node:fs'),vm=require('node:vm'),path=require('node:path');
const html=fs.readFileSync(path.join(__dirname,'../mirror/playgta5.com/index.html'),'utf8');
const source=html.slice(html.indexOf('function runtimeCompatibility()'),html.indexOf('const runtimeError ='));
function check(wasm){const scope={WebAssembly:wasm,Uint8Array,Error};vm.runInNewContext(source+';result=runtimeCompatibility();',scope);return scope.result;}
assert.equal(check(WebAssembly),'','real host validates and executes memory64/SIMD/bulk/atomic probe');
assert.match(check({Memory:WebAssembly.Memory,Module:class{constructor(){throw Error('memory64 unsupported');}}}),/No game data was downloaded/);
assert.match(check({Memory:WebAssembly.Memory,Module:class{},Instance:class{constructor(){this.exports={probe(){throw TypeError('Cannot convert BigInt');}};}}}),/BigInt interface/);
assert.match(check({Memory:class{constructor(){throw TypeError('BigInt descriptor unsupported');}}}),/BigInt interface/);
console.log('PASS: actual memory64 i64 ABI executes; unsupported modules and BigInt ABI fail before data startup');
