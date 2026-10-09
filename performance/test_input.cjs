const assert = require('node:assert/strict');
const fs = require('node:fs');
const vm = require('node:vm');
const path = require('node:path');
const html = fs.readFileSync(path.join(__dirname, '../mirror/playgta5.com/index.html'), 'utf8');
const source = html.slice(html.indexOf('function installInput('), html.lastIndexOf('</script>'));
function setup(profile, automatic=false) {
 const handlers = new Map(), mouseHandlers = new Map();
 const add = (map, type, fn) => { if (!map.has(type)) map.set(type, []); map.get(type).push(fn); };
 const emit = (map, type, data = {}) => { for (const fn of map.get(type) || []) fn({preventDefault(){}, ...data}); };
 const buffer = new SharedArrayBuffer(4096), keys = new Uint8Array(buffer,0,256), words = new Int32Array(buffer,256,10);
 const canvas = { addEventListener(type,fn){add(mouseHandlers,type,fn);}, getBoundingClientRect(){return {left:0,top:0,width:1920,height:1080};}, requestPointerLock(){return Promise.resolve();} };
 const context = vm.createContext({ Uint8Array,Int32Array,Uint16Array,Atomics,Math,Set,Object,
  q:new URLSearchParams((profile ? 'profile=1&fixed=1' : 'fixed=1') + (automatic ? '&autoBenchmark=1' : '')), startSize:[1920,1080], startMode:3,
  canvas, document:{pointerLockElement:null,hasFocus(){return true;},addEventListener(type,fn){add(handlers,type,fn);}},
  VK:{KeyW:87,Numpad8:104,Numpad2:98,Numpad4:100,Numpad6:102,Numpad7:103,Numpad9:105},
  postLog(){},addEventListener(type,fn){add(handlers,type,fn);},setTimeout,clearTimeout });
 vm.runInContext(source + '\ninstallInput({buffer: suppliedBuffer}, 0);', vm.createContext({...context, suppliedBuffer:buffer}));
 return {keys,words,emit(type,data){emit(handlers,type,data);},mouse(type,data){emit(mouseHandlers,type,data);}};
}
const a=setup(true);
a.emit('keydown',{code:'KeyW',key:'w'}); assert.equal(a.keys[87],128);
a.words[2]=12; a.words[3]=9;
a.emit('performance-benchmark-input',{detail:{locked:true}});
assert.equal(a.keys[87],0); assert.equal(a.words[2],0); assert.equal(a.words[3],0);
a.emit('keydown',{code:'KeyW',key:'w'});
a.emit('mousemove',{clientX:1050,clientY:600,movementX:90,movementY:60});
a.emit('wheel',{deltaY:100,deltaMode:0}); a.mouse('mousedown',{button:0});
assert.equal(a.keys[87],0); assert.equal(a.words[2],0); assert.equal(a.words[3],0); assert.equal(a.words[4],0); assert.equal(a.words[5],0);
a.emit('performance-benchmark-input',{detail:{locked:false}});
a.emit('keydown',{code:'KeyW',key:'w'}); assert.equal(a.keys[87],128);
a.emit('keyup',{code:'KeyW',key:'w'}); assert.equal(a.keys[87],0);
a.emit('mousemove',{clientX:1060,clientY:605,movementX:10,movementY:5}); assert.equal(a.words[2],10); assert.equal(a.words[3],5);
const normal=setup(false); normal.emit('performance-benchmark-input',{detail:{locked:true}});
normal.emit('keydown',{code:'KeyW',key:'w'}); assert.equal(normal.keys[87],128,'ordinary gameplay has no diagnostic input lock');
const automatic=setup(true,true);
automatic.emit('keydown',{code:'KeyW',key:'w'}); automatic.emit('mousemove',{clientX:1100,clientY:600,movementX:100,movementY:60});
assert.equal(automatic.keys[87],0); assert.equal(automatic.words[2],0); assert.equal(automatic.words[3],0);
automatic.emit('performance-benchmark-input',{detail:{locked:false}}); automatic.emit('keydown',{code:'KeyW',key:'w'}); assert.equal(automatic.keys[87],128);
console.log('PASS: benchmark releases held input, blocks movement/camera/wheel/button writes, restores input, and is absent from normal gameplay');
