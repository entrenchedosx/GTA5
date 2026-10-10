const assert = require('node:assert/strict');
const fs = require('node:fs');
const vm = require('node:vm');
const source = fs.readFileSync('mirror/playgta5.com/b/8b0b5899ed/wgpu_worker.js','utf8');
const start = source.indexOf('case 4 /* DESTROY_OBJECT */: {');
const end = source.indexOf('case 5 /* CLEAR_RT */:', start);
const destroy = source.slice(start,end).replace('case 4 /* DESTROY_OBJECT */: {','{').replace(/break;\s*}\s*$/,'}');
let submissions = 0;
const textures = [], commands = [];
function encoder() {
  return { beginRenderPass(desc) {
    const targets = desc.colorAttachments?.map(a => a.view.texture) || [];
    if (desc.depthStencilAttachment) targets.push(desc.depthStencilAttachment.view.texture);
    const resources = [...targets];
    return { setPipeline(){}, setBindGroup(_,bg){resources.push(...bg.entries.map(e=>e.resource.texture));},
      draw(){}, end(){commands.push(resources);} };
  }, finish(){const submitted=commands.splice(0);return submitted;} };
}
const device = {
  features: new Set(['depth32float-stencil8']),
  createTexture(desc) {const t={...desc, size:desc.size, destroyed:false,
    createView(){return {texture:t};},destroy(){assert.equal(this.destroyed,false,'texture is destroyed exactly once');this.destroyed=true;}};
    textures.push(t); return t;},
  createShaderModule(d){return d;}, createRenderPipeline(){return {getBindGroupLayout(){return {};}};},
  createBindGroup(d){return d;}, createCommandEncoder:encoder,
  queue:{submit(buffers){submissions++; for(const buffer of buffers)for(const refs of buffer)for(const t of refs)
    assert.equal(t.destroyed,false,'submit recorded uses before destroying their textures');}}
};
const context=vm.createContext({console:{log(){}}, performance, URLSearchParams, setTimeout, clearTimeout, BroadcastChannel,
  MessageChannel:class extends MessageChannel{constructor(){super();this.port1.unref();this.port2.unref();}},
  GPUTextureUsage:{COPY_SRC:1,COPY_DST:2,TEXTURE_BINDING:4,RENDER_ATTACHMENT:8,STORAGE_BINDING:16},
  self:{navigator:{hardwareConcurrency:4},location:{search:'?bufferArena=0'},postMessage(){},addEventListener(){}}, fakeDevice:device});
vm.runInContext(source + `
  device=fakeDevice;
  globalThis.api={createTexture,depthProxy,floatToDepthProxy,objs,
    destroy(id){const u32=new Uint32Array([id]),p=0;${destroy}},
    memory(){return texBytesAlive;},
    proxies(){return {bytes:proxyTextureBytesAlive,count:proxyTextureCount,created:proxyTexturesCreated,destroyed:proxyTexturesDestroyed};}};`,context);
const api=context.api;
for(let cycle=0;cycle<40;cycle++) {
  const [w,h]=cycle%2 ? [1280,720] : [1920,1080];
  api.createTexture(1,2,w,h,1,1,1,45,72,1);
  api.createTexture(2,2,w,h,1,1,1,28,40,1);
  const depth=api.objs.get(1), color=api.objs.get(2);
  api.depthProxy(depth,'depth'); api.depthProxy(depth,'stencil'); api.floatToDepthProxy(color);
  assert.equal(api.proxies().count,3);
  assert.equal(api.proxies().bytes,w*h*9,'depth/float-depth use 4 bytes and stencil uses 1 byte per texel');
  assert.equal(textures.filter(t=>!t.destroyed).length,5);
  api.destroy(1); api.destroy(2); api.destroy(1);
  assert.equal(api.objs.size,0); assert.equal(api.memory(),0);
  assert.equal(textures.filter(t=>!t.destroyed).length,0,'resize must reclaim parent AND auxiliary textures');
  assert.equal(api.proxies().count,0);assert.equal(api.proxies().bytes,0);
  assert.equal(api.proxies().created,api.proxies().destroyed);
}
assert.equal(submissions,40,'one submit per resize batch, with no per-texture GPU wait');
console.log('PASS: 40 size changes reclaim every parent/depth/stencil/float-depth texture after submitting recorded uses');
