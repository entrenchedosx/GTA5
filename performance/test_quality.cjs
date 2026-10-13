const assert=require('node:assert/strict'),fs=require('node:fs'),vm=require('node:vm');
const html=fs.readFileSync('mirror/playgta5.com/index.html','utf8');
const {profiles,choose,Controller}=require('../mirror/playgta5.com/b/8b0b5899ed/quality-profile.js');
assert.equal(choose({memory:8,mode:'toString',saved:'constructor'}),'low');assert.equal(choose({memory:8}),'low');assert.equal(choose({memory:16}),'balanced');assert.equal(choose({mobile:true,memory:16}),'performance');assert.equal(choose({}),'low');
assert.equal(choose({memory:8,mode:'high'}),'high');assert.equal(choose({memory:8,saved:'high'}),'low');assert.equal(choose({memory:16,saved:'high'}),'high');assert.equal(choose({memory:8,saved:'performance'}),'performance');
assert.deepEqual(profiles.performance.size,[640,360]);assert.equal(profiles.low.texture,0);assert.equal(profiles.balanced.texture,1);
const slow={ready:true,samples:100,median:26,p95:38},fast={ready:true,samples:100,median:16.7,p95:18};
const c=new Controller('high');for(let i=0;i<23;i++)assert.equal(c.observe(slow),null);assert.equal(c.observe(slow),'balanced');for(let i=0;i<120;i++)assert.equal(c.observe(slow),null);for(let i=0;i<24;i++)c.observe(slow);assert.equal(c.profile,'low');
const d=new Controller('low');for(let i=0;i<179;i++)assert.equal(d.observe(fast),null);assert.equal(d.observe(fast),'balanced');
const capped=new Controller('low',{ceiling:'low'});for(let i=0;i<500;i++)assert.equal(capped.observe(fast),null);
const unstable=new Controller('balanced');for(let i=0;i<100;i++){unstable.observe(slow);unstable.observe(fast);}assert.equal(unstable.profile,'balanced');
for(const invalid of [{...slow,median:NaN},{...slow,p95:1},{...slow,ready:false},{...slow,samples:1}]){for(let i=0;i<50;i++)assert.equal(unstable.observe(invalid),null);}
for(let i=0;i<20;i++)unstable.observe(slow);unstable.reset();for(let i=0;i<23;i++)assert.equal(unstable.observe(slow),null);
const source=fs.readFileSync('mirror/playgta5.com/b/8b0b5899ed/wgpu_worker.js','utf8');
const timing=source.slice(source.indexOf('let qualityLastPresent'),source.indexOf('let ',source.indexOf('function qualitySummary')));
const scope=vm.createContext({worldSent:true,pipelinesPending:0});vm.runInContext(timing+'\nglobalThis.test={qualitySample,qualitySummary};',scope);
for(let i=1;i<2000;i++)scope.test.qualitySample(i*16.7);let s=scope.test.qualitySummary();assert.equal(s.samples,240);assert.ok(Math.abs(s.median-16.7)<1e-8);
scope.pipelinesPending=1;scope.test.qualitySample(40000);assert.equal(scope.test.qualitySummary().ready,false);
console.log('PASS: real startup profiles, constrained defaults, persistent override, downgrade/upgrade hysteresis, memory ceiling, bounded timing and compilation reset');

const settings=html.slice(html.indexOf("const lowParam = q.get('low');"),html.indexOf('if (lowMemory) hud.textContent'));
function config(query,memory=8){const q=new URLSearchParams(query),mode=q.get('quality')||'auto';const explicit=['low','res','scale','args','fps'].some(k=>q.has(k));const ctx=vm.createContext({q,qualityRequested:Object.hasOwn(profiles,mode)||!explicit,qualityConfig:profiles[choose({mode,memory})],mobileProfile:false,navigator:{deviceMemory:memory,hardwareConcurrency:8},lowMemory:false});vm.runInContext(settings+'globalThis.result={lowMemory,args:LOW_ARGS,cores};',ctx);return ctx.result;}
assert.equal(config('').lowMemory,true);assert.equal(config('').cores,2);assert.ok(config('').args.includes('-textureQuality=0'));
assert.ok(config('',16).args.includes('-textureQuality=1'));
assert.equal(config('low=0').lowMemory,false);assert.equal(config('quality=high').lowMemory,false);
assert.equal(config('quality=low&res=1280x720',16).lowMemory,true);assert.ok(config('quality=low&res=1280x720',16).args.includes('-textureQuality=0'));
assert.equal(config('quality=low&low=0').lowMemory,false);assert.ok(config('quality=high&low=1').args.includes('-textureQuality=0'));
console.log('PASS: actual native argument construction respects profiles, matched resolutions and explicit overrides');

const floor=new Controller('performance');for(let i=0;i<59;i++)assert.equal(floor.observe(slow),null);assert.equal(floor.observe(slow),'performance');assert.equal(floor.target,30,'measured sustained failure at lowest quality recommends native 30 FPS pacing');
const mobile=new Controller('performance',{target:30,ceiling:'low'});for(let i=0;i<59;i++)assert.equal(mobile.observe({ready:true,samples:100,median:60,p95:80}),null);assert.equal(mobile.target,30,'no fictitious lower native pacing target');

assert.equal(choose({memory:16,software:true}),'performance');assert.equal(choose({memory:16,software:true,saved:'balanced'}),'performance');assert.equal(choose({memory:16,software:true,mode:'high'}),'high','manual graphics override remains explicit');
