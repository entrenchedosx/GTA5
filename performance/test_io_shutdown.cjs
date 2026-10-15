const assert=require('node:assert/strict'),fs=require('node:fs'),vm=require('node:vm'),path=require('node:path');
const root=path.join(__dirname,'..'),source=fs.readFileSync(path.join(root,'mirror/playgta5.com/b/8b0b5899ed/io_worker.js'),'utf8');
const channels=new Map();
class Channel {constructor(name){this.name=name;if(!channels.has(name))channels.set(name,[]);channels.get(name).push(this);}postMessage(data){for(const c of channels.get(this.name))if(c!==this&&c.onmessage)c.onmessage({data});}}
function worker(session){let closes=0;const scope={self:{location:{search:'?ioSession='+session},postMessage(){}},URLSearchParams,navigator:{},performance,console,AbortController,BroadcastChannel:Channel,Uint8Array,Int32Array,DataView,ArrayBuffer,Atomics,TextEncoder,Map,Set,setTimeout,clearTimeout,importScripts(){}};
vm.runInNewContext(source+'\nsh={close(){self.closed();}}; self.hasStore=()=>!!sh;',Object.assign(scope,{self:Object.assign(scope.self,{closed(){closes++;}})}));return {scope,closes:()=>closes};}
const old=worker('old'),current=worker('current');
new Channel('game-io').postMessage('close');assert(current.scope.self.hasStore());
new Channel('game-io-old').postMessage('close');assert.equal(old.closes(),1);assert(current.scope.self.hasStore());
new Channel('game-io-current').postMessage('close');assert.equal(current.closes(),1);assert.equal(current.scope.self.hasStore(),false);
const html=fs.readFileSync(path.join(root,'mirror/playgta5.com/index.html'),'utf8'),loader=fs.readFileSync(path.join(root,'mirror/playgta5.com/b/8b0b5899ed/loader.js'),'utf8');
assert(html.includes('const ioSession = crypto.randomUUID()'));assert.equal((html.match(/new BroadcastChannel\('game-io-' \+ ioSession\)/g)||[]).length,2);assert(html.includes('ioSession,'));assert(loader.includes('encodeURIComponent(m.ioSession'));
console.log('PASS: old and legacy page shutdown cannot close a new session store; own shutdown closes once');
