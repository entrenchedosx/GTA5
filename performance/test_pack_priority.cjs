'use strict';
const assert=require('node:assert/strict'),fs=require('node:fs'),vm=require('node:vm');
const source=fs.readFileSync('mirror/playgta5.com/b/8b0b5899ed/io_worker.js','utf8');
const code=source.slice(source.indexOf('const packQueue = []'),source.indexOf('function startPack('));
const ctx=vm.createContext({WeakMap,Promise,performance});
vm.runInContext(code+'\nglobalThis.api={packSlot,promoteQueuedPack,counts:()=>({active:packActive,background:packBackgroundActive,queued:packQueue.length})};',ctx);
(async()=>{
 const a=ctx.api, packs=Array.from({length:7},()=>({})), started=[];
 const jobs=packs.slice(0,5).map((p,i)=>a.packSlot(true,p).then(release=>{started.push(i);return release;}));
 await Promise.resolve(); assert.deepEqual(started,[0,1,2]);
 assert.equal(a.counts().active,3,'background leaves a demand lane free');
 let demandStarted=false;
 const urgent=a.packSlot(false,packs[5]).then(r=>{demandStarted=true;return r;});
 await Promise.resolve(); assert(demandStarted); assert.equal(a.counts().active,4);
 const demandRelease=await urgent; assert.equal(demandRelease.background,false);
 a.promoteQueuedPack(packs[4]); // A demand read now needs this previously queued pack.
 demandRelease(); await Promise.resolve();
 assert.deepEqual(started,[0,1,2,4],'promoted blocked read bypasses older background work');
 const promoted=await jobs[4]; assert.equal(promoted.background,false,'promoted fetch uses high network priority');
 const first=await jobs[0]; first(); first(); await Promise.resolve();
 assert.equal(a.counts().active,4,'double release cannot corrupt the limit');
 const releases=await Promise.all(jobs); for(const r of releases)r();
 assert.equal(a.counts().active,0); assert.equal(a.counts().background,0); assert.equal(a.counts().queued,0);
 assert(source.includes('needed.map(pack => startPack(pack, !!low))'),'ensureBlocks preserves its caller priority');
 assert(source.includes('if (!low) promoteQueuedPack(pack)'),'deduplicated demanded packs are promoted');
 console.log('PASS: demand reservation, promotion, fetch priority, FIFO background, bounded lanes and idempotent release');
})().catch(e=>{console.error(e);process.exitCode=1;});
