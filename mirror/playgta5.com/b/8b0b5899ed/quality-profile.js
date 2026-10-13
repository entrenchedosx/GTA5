/* Real native startup profiles. Live native target resizing is unsafe in this
   binary; recommendations apply on the next launch, never by CSS scaling. */
(function(root){
'use strict';
const profiles=Object.freeze({
 performance:Object.freeze({size:[640,360],low:true,texture:0,cores:2}),
 low:Object.freeze({size:[960,540],low:true,texture:0,cores:2}),
 balanced:Object.freeze({size:[1280,720],low:true,texture:1,cores:2}),
 high:Object.freeze({size:[1920,1080],low:false,texture:null,cores:null})
});
const order=Object.keys(profiles);
function choose({mode='auto',memory,mobile=false,software=false,saved}={}){
 if(order.includes(mode))return mode;
 const initial=software||mobile?'performance':!memory||memory<=8?'low':'balanced';
 const ceiling=software?'performance':mobile?'low':!memory||memory<=8?'low':'high';
 return order.includes(saved)&&order.indexOf(saved)<=order.indexOf(ceiling)?saved:initial;
}
class Controller{
 constructor(profile,{target=60,ceiling='high'}={}){this.ceiling=ceiling;this.profile=profile;this.target=target;this.bad=0;this.good=0;this.cooldown=0;}
 observe(s){
  if(!s||!s.ready||s.samples<10||!Number.isFinite(s.median)||!Number.isFinite(s.p95)||s.median<=0||s.p95<s.median){this.bad=this.good=0;return null;}
  if(this.cooldown>0){this.cooldown--;return null;}
  const budget=1000/this.target;
  if(s.median>budget*1.16||s.p95>budget*1.9){this.bad++;this.good=0;}
  else if(s.median<=budget*1.025&&s.p95<=budget*1.12){this.good++;this.bad=0;}
  else this.bad=this.good=0;
  const index=order.indexOf(this.profile);
  let next=null;
  // 12 seconds sustained slow, 90 seconds healthy. Two samples each second.
  if(this.bad>=24&&index>0)next=order[index-1];
  else if(this.good>=180&&index<order.indexOf(this.ceiling))next=order[index+1];
  else if(this.bad>=60&&index===0&&this.target===60){this.target=30;next=this.profile;}
  if(next){this.profile=next;this.bad=this.good=0;this.cooldown=120;}
  return next;
 }
 reset(){this.bad=this.good=0;this.cooldown=0;}
}
const api={profiles,choose,Controller};
if(typeof module!=='undefined'&&module.exports)module.exports=api;else root.GameQuality=api;
})(typeof globalThis!=='undefined'?globalThis:this);
