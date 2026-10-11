const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');

class FakeAudio {
  constructor() { this.paused = true; this.volume = 1; this.currentTime = 0; this.events = new Map(); this.playCalls = 0; this.pauseCalls = 0; this.reject = false; FakeAudio.all.push(this); }
  addEventListener(type, callback) { const rows=this.events.get(type)||[]; rows.push(callback); this.events.set(type,rows); }
  emit(type) { for(const callback of this.events.get(type)||[]) callback(); }
  async play() { this.playCalls++; if(this.reject) throw Object.assign(new Error('blocked'),{name:'NotAllowedError'}); this.paused=false; }
  pause() { this.pauseCalls++; this.paused=true; }
  removeAttribute(name) { if(name==='src') this.src=''; }
  load() {}
}
FakeAudio.all=[];
const source=fs.readFileSync(path.join(__dirname,'../mirror/playgta5.com/b/8b0b5899ed/web-radio.js'),'utf8');
(async()=>{
  const {createRadioPlayback}=await import('data:text/javascript;base64,'+Buffer.from(source).toString('base64'));
  const states=[];
  const stations=[{id:'cachalot',name:'CACHALOT',url:'/radio/audio/cachalot.0123456789abcdef.mp3'},{id:'london',name:'TYPE LONDON',url:'/radio/audio/london.abcdef0123456789.mp3'}];
  const player=createRadioPlayback({AudioCtor:FakeAudio,stations,onState:s=>states.push(s)});
  const [cachalot,london]=FakeAudio.all;
  assert.equal(cachalot.preload,'none');assert.equal(london.preload,'none');
  assert.equal(await player.select('cachalot'),undefined);assert.equal(cachalot.paused,false);assert.equal(london.paused,true);
  cachalot.currentTime=12;
  await player.select('london');assert.equal(cachalot.paused,true);assert.equal(london.paused,false);
  assert.equal([cachalot,london].filter(a=>!a.paused).length,1,'selecting another station stops the previous track');
  await player.select('cachalot');assert.equal(london.paused,true);assert.equal(cachalot.paused,false);assert.equal(cachalot.currentTime,12,'returning resumes the same station position');
  player.setVolume(0.35);assert.equal(cachalot.volume,0.35);assert.equal(london.volume,0.35);
  await player.select('cachalot');assert.equal(cachalot.paused,true,'selecting the active station toggles pause');
  await player.select('cachalot');assert.equal(cachalot.paused,false,'paused station resumes on selection');
  london.reject=true;await player.select('london');assert.equal(london.paused,true);assert.equal(states.at(-1).status,'error');assert.match(states.at(-1).error,/allow audio/);
  player.dispose();assert.ok(FakeAudio.all.every(a=>a.paused));assert.equal(cachalot.src,'');

  const html=fs.readFileSync(path.join(__dirname,'../mirror/playgta5.com/index.html'),'utf8');
  assert.match(html,/radioModule = await import\(RUNTIME \+ '\/web-radio\.js'\)/,'radio code downloads only after the player is opened');
  assert.match(html,/radioShell\.hidden = false/,'radio launcher appears when the game world is ready');
  assert.match(source,/grid-template-columns: repeat\(2, minmax\(0, 1fr\)\)/,'station cards use equal columns');
  assert.match(source,/preload = 'none'/,'music files are not fetched at game startup');
  console.log('PASS: radio playback switches one track at a time, reuses paused tracks, handles failures, releases media, and lazy-loads the equal-column UI');
})().catch(error=>{console.error(error);process.exitCode=1;});
