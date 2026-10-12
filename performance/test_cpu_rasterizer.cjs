const assert=require('node:assert/strict');
const fs=require('node:fs');const crypto=require('node:crypto');
const Cpu=require('../mirror/playgta5.com/b/8b0b5899ed/cpu-rasterizer.js');
const dir='mirror/playgta5.com/b/8b0b5899ed/shaders/';
// Reviewed original program bodies. A changed asset must invalidate the port.
const expected={
  '2d70b46951f3f092':'29fe5f70356d2b82801b8697cdbdd853b10b84822725052b2f762e2dd9916a27',
  '826a317f7bd7b70a':'0cb89e60b7054fa4069de37322de1c808fd162d06913e92657ccba3b3b1b97b6',
  '028921879df627f5':'d8c49ebbf71f3e7e1d15064b6afeaf2484af704e37dd368e49d9bf93094193eb',
  '943b0ad9542193ff':'9fefdff9f376aafa80ae232c3cff0971cbec8a121174aea6d26500c84d2f0200'};
for(const [hash,digest] of Object.entries(expected))assert.equal(crypto.createHash('sha256').update(fs.readFileSync(dir+hash+'.wgsl')).digest('hex'),digest,'ported shader source is unchanged');
const cb=new Float32Array(48);cb.set([1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1],32);
const material=new Float32Array(64);material[60]=material[63]=1;
const quad=(z,color=[1,0,0,1],w=1)=>new Float32Array([-w,w,z*w,w,...color,0,0,w,w,z*w,w,...color,1,0,-w,-w,z*w,w,...color,0,1,w,-w,z*w,w,...color,1,1]);
const ids=new Uint16Array([0,1,2,2,1,3]);
const pixel=(cpu,x,y)=>Array.from(cpu.pixels.subarray((y*cpu.width+x)*4,(y*cpu.width+x+1)*4));
const surface=new Cpu(8,8),bytes=surface.allocatedBytes,originalBuffer=surface.pixels.buffer;
surface.clear(0,0,0);surface.draw(quad(.5),ids,{constants:material});
assert.equal(surface.stats.fragments,64,'shared triangle edge neither cracks nor double shades');
assert.deepEqual(pixel(surface,4,4),[255,0,0,255]);
surface.draw(quad(.8,[0,0,1,1]),ids,{constants:material});assert.deepEqual(pixel(surface,4,4),[255,0,0,255]);
surface.draw(quad(.2,[0,1,0,1]),ids,{constants:material});assert.deepEqual(pixel(surface,4,4),[0,255,0,255],'nearer triangle wins independently of draw order');
surface.clear(0,0,0);surface.draw(quad(.5,[1,0,0,.5]),ids,{constants:material,blend:true,depthWrite:false});
assert.deepEqual(pixel(surface,4,4),[128,0,0,255],'top-left rule prevents doubled alpha on the shared diagonal');
surface.clear(0,0,0);surface.draw(quad(-.1),ids,{constants:material});assert.equal(surface.stats.fragments,0,'geometry behind the near plane is clipped');
surface.draw(quad(1.1),ids,{constants:material});assert.equal(surface.stats.fragments,0,'geometry beyond the far plane is clipped');
surface.draw(new Float32Array([-2,2,.5,1,1,0,0,1,0,0,2,2,.5,1,1,0,0,1,1,0,0,-2,.5,1,1,0,0,1,.5,1]),new Uint16Array([0,1,2]),{constants:material});
assert.ok(surface.stats.fragments>0&&surface.stats.fragments<=64,'clipped polygon stays within bounded surface');
const texture={width:2,height:1,pixels:new Uint8Array([255,0,0,255,0,255,0,255])};
surface.clear(0,0,0);surface.draw(quad(.5,[1,1,1,1]),ids,{vertexShader:Cpu.shaders.im[0],fragmentShader:Cpu.shaders.im[1],constants:material,texture});
assert.deepEqual(pixel(surface,1,4),[255,0,0,255]);assert.deepEqual(pixel(surface,6,4),[0,255,0,255]);
// One vertex has twice w. At the selected pixel, perspective-correct u falls
// below 0.5 while affine u is above it; nearest texture colour is an oracle.
const perspective=quad(.5,[1,1,1,1]);for(const i of [1,3]){const o=i*10;for(let c=0;c<4;c++)perspective[o+c]*=2;}
surface.clear();surface.draw(perspective,ids,{vertexShader:Cpu.shaders.im[0],fragmentShader:Cpu.shaders.im[1],constants:material,texture});
assert.deepEqual(pixel(surface,4,4),[255,0,0,255],'UVs use perspective interpolation');
const vertices=new Float32Array([.25,.5,.75,1,.5,0,1,0,0]),out=new Float32Array(10);
surface.transform(vertices,cb,Cpu.shaders.cpv[0],out);assert.deepEqual(Array.from(out),[.25,.5,.75,1,1,.5,0,1,0,0]);
assert.throws(()=>new Cpu(641,360));assert.throws(()=>surface.draw(quad(.5),new Uint16Array([99,1,2]),{constants:material}));
assert.throws(()=>surface.draw(quad(.5),ids,{constants:material,fragmentShader:'unknown'}));
for(let i=0;i<200;i++){surface.clear();surface.draw(quad(.5),ids,{constants:material});}
assert.equal(surface.allocatedBytes,bytes);assert.equal(surface.pixels.buffer,originalBuffer,'pixel/depth/clip buffers are reused');
assert.equal(Cpu.gameCompatibility().gameCompatible,false,'incomplete backend must never start the full engine');
console.log('PASS: actual unlit layouts, clipping, shared edges, depth, alpha, texture sampling, perspective interpolation, bounds and reusable CPU memory');
