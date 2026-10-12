// Reproduce candidate-library limits. This reports failed coverage honestly;
// parsing a shader is not proof that it executes correctly or renders a frame.
const fs=require('node:fs'),path=require('node:path');const {pathToFileURL}=require('node:url');
(async()=>{
  const dir=path.join(__dirname,'../mirror/playgta5.com/b/8b0b5899ed/shaders');
  const {WgslParser,WgslDebug}=await import(pathToFileURL(path.join(__dirname,'third_party/wgsl_reflect-1.6.0/wgsl_reflect.mjs')));
  const files=fs.readdirSync(dir).filter(file=>file.endsWith('.wgsl')).sort(),failures=[];
  let parsed=0;const start=performance.now();
  for(const file of files){try{WgslParser.Parse(fs.readFileSync(path.join(dir,file),'utf8'));parsed++;}catch(error){failures.push({file,error:String(error)});}}
  const parseMs=performance.now()-start;
  const debug=new WgslDebug(fs.readFileSync(path.join(dir,'826a317f7bd7b70a.wgsl'),'utf8'));
  const cb=new Float32Array(64);cb[60]=1;const timings=[];
  for(let i=0;i<2100;i++){
    const t=performance.now();debug.debugFragment('main',{'1u':[1,.5,0,1]},{'1u':{'2u':{uniform:cb.buffer}}});
    let n=0;while(debug.stepNext())if(++n>10000)throw Error('Reference shader step budget exceeded.');
    if(i>=100)timings.push(performance.now()-t);
  }
  timings.sort((a,b)=>a-b);
  const {WgslExec}=await import(pathToFileURL(path.join(__dirname,'third_party/wgsl_reflect-1.6.0/wgsl_reflect.mjs')));
  const barrierSource='var<workgroup> values:array<u32,2>; @group(0) @binding(0) var<storage,read_write> output:array<u32>; @compute @workgroup_size(2) fn main(@builtin(local_invocation_id) id:vec3u){values[id.x]=id.x+1u;workgroupBarrier();if(id.x==0u){output[0]=values[0]+values[1];}}';
  const barrierOutput=new Uint32Array(1);new WgslExec(WgslParser.Parse(barrierSource)).dispatchWorkgroups('main',1,{0:{0:barrierOutput}});
  const result={library:'wgsl_reflect@1.6.0',shaders:files.length,parsed,parseFailures:failures,parseMs,
    barrierCase:{correctResult:3,actualResult:barrierOutput[0],correct:barrierOutput[0]===3},
    invocation:{shader:'826a317f7bd7b70a',samples:2000,warmup:100,medianMs:timings[1000],p95Ms:timings[1900],output:debug.getReturnValue(),projectedSinglePass320x180Ms:timings[1000]*320*180},
    limits:['parser coverage does not establish runtime coverage','numeric attributes require suffixed resource/input keys','sequential compute invocation is not workgroup-barrier scheduling','no complete rasterization/resource/query/presentation implementation in this library']};
  if(process.argv[2]){fs.mkdirSync(path.dirname(process.argv[2]),{recursive:true});fs.writeFileSync(process.argv[2],JSON.stringify(result,null,2));}
  console.log(JSON.stringify(result,null,2));
})().catch(error=>{console.error(error);process.exitCode=1;});
