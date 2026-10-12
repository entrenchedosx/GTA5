'use strict';
importScripts('cpu-rasterizer.js');
let canvas,context,renderer,image,timer,yaw=.45,distance=8,benchmark=null,previous=0;
const uniforms=new Float32Array(48),material=new Float32Array(64);material[60]=material[63]=1;
// Synthetic geometry exercises the existing IM shader ports. This diagnostic
// never pretends these fixtures are the game's world, player or physics.
const raw=[],ids=[];
function box(x,y,z,sx,sy,sz,color){
  const first=raw.length/9;
  const faces=[[[0,0,0],[0,1,0],[1,0,0],[1,1,0]],[[1,0,1],[1,1,1],[0,0,1],[0,1,1]],[[0,0,1],[0,1,1],[0,0,0],[0,1,0]],[[1,0,0],[1,1,0],[1,0,1],[1,1,1]],[[0,1,0],[0,1,1],[1,1,0],[1,1,1]],[[0,0,1],[0,0,0],[1,0,1],[1,0,0]]];
  for(let f=0;f<6;f++){
    const base=first+f*4;
    faces[f].forEach((p,i)=>raw.push(x+(p[0]-.5)*sx,y+(p[1]-.5)*sy,z+(p[2]-.5)*sz,...color,i&1,i>>1));
    ids.push(base,base+1,base+2,base+2,base+1,base+3);
  }
}
box(0,-1.1,0,7,.1,7,[.35,.55,.4,1]);
box(-1.3,0,0,1,2,1,[.8,.35,.2,1]);box(1.1,-.3,-.8,1.5,1.4,1.2,[.25,.55,.85,1]);box(.6,-.6,1.5,.8,.8,.8,[.95,.8,.3,1]);
const vertices=new Float32Array(raw),indices=new Uint16Array(ids),transformed=new Float32Array(vertices.length/9*10);
const texture={width:16,height:16,pixels:new Uint8Array(16*16*4)};
for(let y=0;y<16;y++)for(let x=0;x<16;x++){const o=(y*16+x)*4,v=((x>>2)^(y>>2))&1?220:140;texture.pixels.set([v,v,v,255],o);}
function matrix(){
  const ex=Math.sin(yaw)*distance,ey=distance*.35,ez=Math.cos(yaw)*distance;
  const norm=(x,y,z)=>{const n=Math.hypot(x,y,z);return [x/n,y/n,z/n];};
  const [fx,fy,fz]=norm(ex,ey,ez),[rx,ry,rz]=norm(fz,0,-fx);
  const ux=fy*rz-fz*ry,uy=fz*rx-fx*rz,uz=fx*ry-fy*rx;
  const scale=1.8,aspect=renderer.width/renderer.height,near=.1,far=30,q=far/(near-far);
  uniforms.fill(0);
  uniforms.set([rx*scale/aspect,ux*scale,fx*q,-fx,ry*scale/aspect,uy*scale,fy*q,-fy,rz*scale/aspect,uz*scale,fz*q,-fz,
    -(rx*ex+ry*ey+rz*ez)*scale/aspect,-(ux*ex+uy*ey+uz*ez)*scale,-q*(fx*ex+fy*ey+fz*ez)+near*q,fx*ex+fy*ey+fz*ez],32);
}
const percentile=(a,p)=>{const s=a.slice().sort((x,y)=>x-y);return s[Math.min(s.length-1,Math.ceil(p*s.length)-1)];};
function frame(){
  const begin=performance.now(),interval=previous?begin-previous:null;previous=begin;
  matrix();renderer.clear();renderer.transform(vertices,uniforms,CpuRasterizer.shaders.im[0],transformed);
  renderer.draw(transformed,indices,{vertexShader:CpuRasterizer.shaders.im[0],fragmentShader:CpuRasterizer.shaders.im[1],constants:material,texture});
  context.putImageData(image,0,0);
  let hash=2166136261;for(let i=0;i<renderer.pixels.length;i++)hash=Math.imul(hash^renderer.pixels[i],16777619);
  const ms=performance.now()-begin;
  const stats={cpuFrameMs:ms,intervalMs:interval,resolution:[renderer.width,renderer.height],frameCap:30,pixelHash:(hash>>>0).toString(16),triangles:renderer.stats.triangles,fragments:renderer.stats.fragments,
    typedArrayBytes:renderer.allocatedBytes+vertices.byteLength+transformed.byteLength+indices.byteLength+texture.pixels.byteLength+uniforms.byteLength+material.byteLength,
    gameCompatible:false,scene:'synthetic IM shader fixture',graphicsApi:'CPU JS rasterization / Canvas2D pixel output'};
  if(benchmark){
    if(benchmark.warm>0)benchmark.warm--;
    else{benchmark.cpu.push(ms);if(interval!==null)benchmark.intervals.push(interval);}
    if(benchmark.cpu.length===120){
      stats.benchmark={samples:120,warmupFrames:30,cpuMedianMs:percentile(benchmark.cpu,.5),cpuP95Ms:percentile(benchmark.cpu,.95),intervalMedianMs:percentile(benchmark.intervals,.5),intervalP95Ms:percentile(benchmark.intervals,.95),fps:1000/(benchmark.intervals.reduce((a,b)=>a+b,0)/benchmark.intervals.length)};benchmark=null;
    }else stats.benchmarkProgress=benchmark.cpu.length;
  }
  self.postMessage(stats);timer=setTimeout(frame,Math.max(0,1000/30-(performance.now()-begin)));
}
self.onmessage=({data})=>{
  if(data.stop){clearTimeout(timer);self.close();return;}
  if(data.benchmark){benchmark={warm:30,cpu:[],intervals:[]};return;}
  if(Number.isFinite(data.yaw))yaw=data.yaw;
  if(Number.isFinite(data.distance))distance=Math.max(3,Math.min(12,data.distance));
  if(data.init){
    clearTimeout(timer);canvas=data.canvas||canvas;canvas.width=data.width;canvas.height=data.height;
    context=context||canvas.getContext('2d',{willReadFrequently:true});if(!context)throw Error('CPU 2D presentation is unavailable.');
    renderer=new CpuRasterizer(data.width,data.height);image=new ImageData(renderer.pixels,data.width,data.height);benchmark=null;previous=0;frame();
  }
};
