// Inventory the actual host protocol and translated shaders; no engine startup.
const fs = require('node:fs');
const path = require('node:path');
const crypto = require('node:crypto');
const root = path.join(__dirname, '..');
const build = path.join(root, 'mirror/playgta5.com/b/8b0b5899ed');
const hash = bytes => crypto.createHash('sha256').update(bytes).digest('hex');
function audit() {
  const worker = fs.readFileSync(path.join(build, 'wgpu_worker.js'), 'utf8');
  const opText = worker.slice(worker.indexOf('const OP = {'), worker.indexOf('const isNode'));
  const operations = [...opText.matchAll(/([A-Z_]+):\s*(\d+)/g)].map(m=>({name:m[1],opcode:+m[2]}));
  const methods = [...new Set([...worker.matchAll(/(?:device(?:\.queue)?|pass|cpass|getEncoder\(\))\.([A-Za-z0-9_]+)\(/g)].map(m=>m[1]))].sort();
  const index = JSON.parse(fs.readFileSync(path.join(build, 'shaders/index.json')));
  const stages = {}, features = {}, examples = {}, textureTypes = new Set();
  const patterns = {
    textureSampling:/\btextureSample\w*\s*\(/, textureLoads:/\btextureLoad\s*\(/,
    textureStores:/\btextureStore\s*\(/, derivatives:/\b(?:dpdx\w*|dpdy\w*|fwidth\w*)\s*\(/,
    atomics:/\batomic\w*\s*[<(]/, barriers:/\b(?:workgroupBarrier|storageBarrier|textureBarrier)\s*\(/,
    storageBuffers:/var\s*<\s*storage/, workgroupMemory:/var\s*<\s*workgroup/,
    fragmentDepth:/@builtin\(frag_depth\)/, discard:/\bdiscard\s*;/,
  };
  let translated=0, unavailable=0, sourceBytes=0, maximumBytes=0;
  const corpus=crypto.createHash('sha256');
  for(const [id,rec] of Object.entries(index).sort(([a],[b])=>a.localeCompare(b))) {
    if(!rec || typeof rec!=='object' || Array.isArray(rec) || !rec.stage) continue;
    const file=path.join(build,'shaders',id+'.wgsl');
    if(!rec.ok || !fs.existsSync(file)){unavailable++;continue;}
    const bytes=fs.readFileSync(file), source=bytes.toString('utf8');
    translated++;sourceBytes+=bytes.length;maximumBytes=Math.max(maximumBytes,bytes.length);
    stages[rec.stage]=(stages[rec.stage]||0)+1;corpus.update(id+'\0');corpus.update(bytes);
    for(const [name,re] of Object.entries(patterns)) if(re.test(source)) {
      features[name]=(features[name]||0)+1;
      if(!examples[name]) examples[name]={hash:id,stage:rec.stage,effect:rec.effect,program:rec.program};
    }
    for(const m of source.matchAll(/\btexture_\w+/g)) textureTypes.add(m[0]);
  }
  return {workerSha256:hash(worker),operations,methods,shaders:{translated,unavailable,stages,
    sourceBytes,maximumBytes,corpusSha256:corpus.digest('hex'),features,examples,textureTypes:[...textureTypes].sort()},
    implementationSeam:'wgpu_start_worker -> shared memory ring -> wgpu_worker.js::runCommands',
    completeCpuBackendPresent:false};
}
if(require.main===module){
  const result=audit();const record=process.argv[2];
  if(record){fs.mkdirSync(path.dirname(record),{recursive:true});fs.writeFileSync(record,JSON.stringify(result,null,2));}
  console.log(JSON.stringify({...result,operations:result.operations.length,methods:result.methods,shaders:{...result.shaders,examples:undefined}},null,2));
}
module.exports={audit};
