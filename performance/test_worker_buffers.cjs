const assert=require('node:assert/strict'), fs=require('node:fs'), vm=require('node:vm');
const source=fs.readFileSync('mirror/playgta5.com/b/8b0b5899ed/wgpu_worker.js','utf8');
const arenaSource=fs.readFileSync('mirror/playgta5.com/b/8b0b5899ed/geometry-buffer-arena.js','utf8');
function section(start,end){return source.slice(source.indexOf(start),source.indexOf(end,source.indexOf(start)+start.length));}
function run(pooled){
 const scope={GPUBufferUsage:{COPY_DST:1,COPY_SRC:2,VERTEX:4,INDEX:8,STORAGE:16,INDIRECT:32},
   objs:new Map(),u8:Uint8Array.from({length:256},(_,i)=>i),bufBytesAlive:0,bufBytesPeak:0,
   debugDraw:false, usedInEncoder:new Set(),endPass(){},flush(){scope.usedInEncoder.clear();},
   scratch(size){return {data:new Uint8Array(size),size};},gEpoch:0,texBytesAlive:0,texCount:0,isBound(){return false;}};
 scope.device={createBuffer({size}){return {size,data:new Uint8Array(size),destroy(){this.destroyed=true;}};},queue:{
   writeBuffer(b,off,data,start=0,n=data.byteLength-start){assert.ok(off+n<=b.size);b.data.set(new Uint8Array(data.buffer,data.byteOffset+start,n),off);}}};
 scope.getEncoder=()=>({copyBufferToBuffer(s,so,d,at,n){assert.notEqual(s,d);assert.ok(so+n<=s.size&&at+n<=d.size);d.data.set(s.data.subarray(so,so+n),at);}});
 vm.createContext(scope);vm.runInContext(arenaSource,scope);
 scope.geometryArena=pooled?new scope.GeometryBufferArena(scope.device,15):null;
 vm.runInContext(section('function createBuffer(','function uploadTexture(')+section('function copyRegion(','function copyResource('),scope);
 vm.runInContext('createBuffer(1,64,1,0,16); createBuffer(2,64,2,0,0); createBuffer(3,64,8,0,4); createBuffer(4,64,1,16,16);',scope);
 const a=scope.objs.get(1),b=scope.objs.get(2),storage=scope.objs.get(3),indirect=scope.objs.get(4);
 assert.equal(storage.gpuOffset,0);assert.equal(indirect.gpuOffset,0);
 if(pooled){assert.equal(a.gpu,b.gpu);assert.notEqual(a.gpuOffset,b.gpuOffset);assert.ok(a.arenaAllocation);}
 vm.runInContext('uploadBuffer(1,0,64,0,false); uploadBuffer(2,0,64,64,false); uploadBuffer(2,4,3,128,true);',scope);
 const neighborBefore=Array.from(a.gpu.data.subarray(a.gpuOffset,a.gpuOffset+64));
 const bBefore=Array.from(b.gpu.data.subarray(b.gpuOffset,b.gpuOffset+64));
 vm.runInContext('copyRegion(2,0,8,0,0,1,0,true,4,0,0,20,0,0);',scope);
 assert.deepEqual(Array.from(a.gpu.data.subarray(a.gpuOffset,a.gpuOffset+64)),neighborBefore);
 const result=Array.from(b.gpu.data.subarray(b.gpuOffset,b.gpuOffset+64));
 assert.deepEqual(result.slice(8,24),neighborBefore.slice(4,20));assert.deepEqual(result.slice(24),bBefore.slice(24));
 // Exercise the actual destroy branch: submit outstanding use before retiring
 // a shared range, keep its neighbor alive, dedicated buffers still destroyed.
 scope.u32=new Uint32Array(1);scope.p=0;scope.profiler=null;
 const destroy=section('case 4 /* DESTROY_OBJECT */: {','case 5 /* CLEAR_RT */:').replace('case 4 /* DESTROY_OBJECT */: {','{').replace(/break;\s*}\s*$/,'}');
 scope.u32[0]=1;scope.usedInEncoder.add(a);vm.runInContext(destroy,scope);
 assert.equal(scope.objs.has(1),false);assert.equal(b.gpu.destroyed,undefined);
 if(pooled)assert.equal(a.arenaAllocation.state,'pending');else assert.equal(a.gpu.destroyed,true);
 scope.u32[0]=3;vm.runInContext(destroy,scope);assert.equal(storage.gpu.destroyed,true);
 return result;
}
assert.deepEqual(run(true),run(false));
assert.match(source,/src\.gpuOffset \+ \(hasBox \? l : 0\)/);
assert.match(source,/dst\.gpuOffset \+ offset/);
console.log('Worker buffers: actual create/upload/copy/destroy paths produce equal bytes; shared copies use scratch, neighbors survive, storage/indirect stay dedicated.');
