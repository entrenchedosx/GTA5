// Cross-check the port against an independent interpreter of the exact WGSL.
const assert=require('node:assert/strict'),fs=require('node:fs'),crypto=require('node:crypto'),path=require('node:path');
const {pathToFileURL}=require('node:url');
const Cpu=require('../mirror/playgta5.com/b/8b0b5899ed/cpu-rasterizer.js');
(async()=>{
  const vendor=path.join(__dirname,'third_party/wgsl_reflect-1.6.0/wgsl_reflect.mjs');
  assert.equal(crypto.createHash('sha256').update(fs.readFileSync(vendor)).digest('hex'),'74c61e5fe3dfe6dc2cceeb9924347c9c897d94e4bff16201d1418f25db9f2d9e');
  const {WgslDebug}=await import(pathToFileURL(vendor));
  const dir=path.join(__dirname,'../mirror/playgta5.com/b/8b0b5899ed/shaders');
  const surface=new Cpu(2,2),cb=new Float32Array(48),out=new Float32Array(10);
  cb.set([1.3,.1,.2,.05,.3,.9,.1,.02,.2,.3,1.1,.15,.4,-.2,.6,1],32);
  const step=debug=>{let n=0;while(debug.stepNext())if(++n>10000)throw Error('WGSL reference exceeded its step budget');return debug.getReturnValue();};
  for(const pair of Object.values(Cpu.shaders)){
    const vertex=new WgslDebug(fs.readFileSync(path.join(dir,pair[0]+'.wgsl'),'utf8'));
    for(let i=0;i<32;i++){
      const input=new Float32Array([Math.sin(i),Math.cos(i),i/32-.5,i/20,1-i/20,.3,.7,.25,.75]);
      surface.transform(input,cb,pair[0],out);
      // wgsl_reflect 1.6.0 preserves unsigned suffixes in semantic/binding
      // strings. Match those actual declarations rather than receiving zeros.
      const attributes=pair===Cpu.shaders.cpv?{'0u':Array.from(input.subarray(0,3)),'1u':Array.from(input.subarray(3,7))}:{'0u':Array.from(input.subarray(0,3)),'2u':Array.from(input.subarray(3,7)),'3u':Array.from(input.subarray(7,9))};
      assert.equal(vertex.debugVertex('main',attributes,{'0u':{'1u':{uniform:cb.buffer}}}),true);
      const expected=step(vertex);
      expected.o0.forEach((v,c)=>assert.ok(Math.abs(v-out[c])<2e-6,'ported transform matches executed WGSL'));
      expected.o1.forEach((v,c)=>assert.ok(Math.abs(v-out[4+c])<2e-6,'ported colour matches executed WGSL'));
      if(expected.o2)assert.deepEqual(expected.o2,[input[7],input[8],input[7],input[8]]);
    }
  }
  const pixelShader=new WgslDebug(fs.readFileSync(path.join(dir,Cpu.shaders.cpv[1]+'.wgsl'),'utf8'));
  const material=new Float32Array(64);material[60]=.5;
  pixelShader.debugFragment('main',{'1u':[.2,.4,.6,.8]},{'1u':{'2u':{uniform:material.buffer}}});
  const result=step(pixelShader);result.forEach((v,c)=>assert.ok(Math.abs(v-[.2,.4,.6,.4][c])<1e-6));
  const texturedShader=new WgslDebug(fs.readFileSync(path.join(dir,Cpu.shaders.im[1]+'.wgsl'),'utf8'));
  const texture={width:2,height:1,pixels:new Uint8Array([255,100,50,128,30,255,90,255])};
  material[63]=.75;
  for(const u of [.25,.75]){
    texturedShader.debugFragment('main',{'1u':[.2,.4,.6,.8],'2u':[u,.5,u,.5]},{'1u':{
      '2u':{uniform:material.buffer},'18u':{sampler:{magFilter:'nearest',minFilter:'nearest',addressModeU:'clamp-to-edge',addressModeV:'clamp-to-edge'}},
      '34u':{texture:texture.pixels,descriptor:{size:[2,1,1],format:'rgba8unorm',mipLevelCount:1}}}});
    const fragment=step(texturedShader);
    const quad=new Float32Array([-1,1,.5,1,.2,.4,.6,.8,u,.5,1,1,.5,1,.2,.4,.6,.8,u,.5,-1,-1,.5,1,.2,.4,.6,.8,u,.5,1,-1,.5,1,.2,.4,.6,.8,u,.5]);
    surface.clear(0,0,0);surface.draw(quad,new Uint16Array([0,1,2,2,1,3]),{vertexShader:Cpu.shaders.im[0],fragmentShader:Cpu.shaders.im[1],constants:material,texture,blend:true});
    for(let c=0;c<3;c++)assert.ok(Math.abs(surface.pixels[c]-fragment[c]*fragment[3]*255)<=1,'textured CPU colour/alpha agrees with executed original WGSL');
  }
  console.log('PASS: 64 original WGSL vertex invocations, original fragment alpha and textured colour/alpha agree with CPU ports; vendor/source hashes are pinned');
})().catch(error=>{console.error(error);process.exitCode=1;});
