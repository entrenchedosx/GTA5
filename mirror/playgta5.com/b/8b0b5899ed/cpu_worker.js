'use strict';
// This worker owns the genuine CPU subset. It never declares the full native
// game compatible until the missing contract is implemented and verified.
importScripts('cpu-rasterizer.js');
let checked=false;
self.onmessage=({data})=>{
  if(!data.graphicsCheck||checked)return;
  checked=true;
  try{
    const renderer=new CpuRasterizer(320,180);
    const canvas=new OffscreenCanvas(320,180),context=canvas.getContext('2d',{willReadFrequently:true});
    if(!context)throw Error('CPU canvas presentation is unavailable.');
    context.putImageData(new ImageData(renderer.pixels,320,180),0,0);
    const compatibility=CpuRasterizer.gameCompatibility();
    self.postMessage({graphicsError:'The CPU renderer can draw the verified unlit subset, but this game also requires compute shaders, compressed textures and the complete rendering command backend.',
      graphicsCode:'cpu-incomplete',cpuBackend:{...compatibility,allocatedBytes:renderer.allocatedBytes}});
  }catch(error){self.postMessage({graphicsError:'CPU backend initialization failed: '+error.message,graphicsCode:'cpu-init'});}
};
self.postMessage({loaded:true});
