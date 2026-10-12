// CPU rasterization for two verified RAGE shader pairs. This is a limited
// backend, not a complete implementation of the native game's command ring.
// No WebGPU/WebGL objects, device calls, screenshots or prerecorded frames.
(function(root) {
  'use strict';
  const CPV = ['2d70b46951f3f092','826a317f7bd7b70a'];
  const IM = ['028921879df627f5','943b0ad9542193ff'];
  const STRIDE = 10, CAPACITY = 12;
  const finite = values => { for (const v of values) if (!Number.isFinite(v)) return false; return true; };
  const plane = (v,o,p) => p===0 ? v[o]+v[o+3] : p===1 ? v[o+3]-v[o] : p===2 ? v[o+1]+v[o+3] : p===3 ? v[o+3]-v[o+1] : p===4 ? v[o+2] : v[o+3]-v[o+2];
  const edge = (ax,ay,bx,by,x,y) => (bx-ax)*(y-ay)-(by-ay)*(x-ax);
  const topLeft = (ax,ay,bx,by) => by<ay || (by===ay && bx>ax);
  class CpuRasterizer {
    constructor(width=320,height=180) {
      if(!Number.isInteger(width)||!Number.isInteger(height)||width<1||height<1||width>640||height>360) throw Error('CPU surface must be between 1×1 and 640×360.');
      this.width=width;this.height=height;
      this.pixels=new Uint8ClampedArray(width*height*4);this.depth=new Float32Array(width*height);
      this.clipA=new Float64Array(CAPACITY*STRIDE);this.clipB=new Float64Array(CAPACITY*STRIDE);
      this.stats={triangles:0,clippedTriangles:0,fragments:0};this.clear();
    }
    get allocatedBytes(){return this.pixels.byteLength+this.depth.byteLength+this.clipA.byteLength+this.clipB.byteLength;}
    static gameCompatibility(){return {backend:'cpu-rasterizer',initialized:true,gameCompatible:false,
      supported:['two original unlit shader pairs','homogeneous clipping','triangle depth testing','perspective interpolation','RGBA8 nearest sampling','alpha blending','CPU pixel presentation'],
      missing:['native 48-opcode command consumer','remaining vertex/fragment shaders and animation variants','29 compute shaders with workgroup synchronisation','BC1–BC7 texture decoding and complete texture views','MRT/deferred lighting, depth/stencil, indirect draws, queries and readbacks']};}
    clear(r=14,g=19,b=27){
      for(let i=0;i<this.pixels.length;i+=4){this.pixels[i]=r;this.pixels[i+1]=g;this.pixels[i+2]=b;this.pixels[i+3]=255;}
      this.depth.fill(Infinity);this.stats.triangles=this.stats.clippedTriangles=this.stats.fragments=0;
    }
    // Vertex layout: xyz, rgba, uv (9 floats). Constants retain the original
    // cb1[8..11] transform and cb2[15] colour/alpha layout. Native ring/layout
    // decoding is not provided here and must not be inferred from this API.
    transform(vertices,constants,pair,out) {
      if(!(vertices instanceof Float32Array)||vertices.length%9||!(constants instanceof Float32Array)||constants.length<48||out.length!==vertices.length/9*STRIDE) throw Error('Invalid CPU vertex/constant layout.');
      if(!finite(vertices)||!finite(constants)) throw Error('Non-finite CPU geometry/constants.');
      if(pair!==CPV[0]&&pair!==IM[0]) throw Error('Unsupported CPU vertex shader: '+pair);
      for(let i=0,j=0;i<vertices.length;i+=9,j+=STRIDE){
        const x=vertices[i],y=vertices[i+1],z=vertices[i+2];
        for(let c=0;c<4;c++)out[j+c]=Math.fround(x*constants[32+c]+y*constants[36+c]+z*constants[40+c]+constants[44+c]);
        for(let c=0;c<4;c++)out[j+4+c]=pair===CPV[0]?Math.max(0,Math.min(1,vertices[i+3+c])):vertices[i+3+c];
        out[j+8]=vertices[i+7];out[j+9]=vertices[i+8];
      }
      return out;
    }
    draw(vertices,indices,{vertexShader=CPV[0],fragmentShader=CPV[1],constants,texture=null,blend=false,depthWrite=true}={}){
      const textured=vertexShader===IM[0]&&fragmentShader===IM[1];
      if(!textured&&!(vertexShader===CPV[0]&&fragmentShader===CPV[1]))throw Error('Unsupported CPU shader pair.');
      if(!(vertices instanceof Float32Array)||vertices.length%STRIDE||!finite(vertices)||!(indices instanceof Uint16Array||indices instanceof Uint32Array)||indices.length%3||indices.length>300000)throw Error('Invalid or oversized CPU draw.');
      if(!(constants instanceof Float32Array)||constants.length<64||!finite(constants))throw Error('Invalid CPU material constants.');
      if(textured&&(!texture||!Number.isInteger(texture.width)||!Number.isInteger(texture.height)||texture.width<1||texture.height<1||texture.width>2048||texture.height>2048||!(texture.pixels instanceof Uint8Array)||texture.pixels.length!==texture.width*texture.height*4))throw Error('CPU texture requires bounded RGBA8 pixels.');
      for(const index of indices)if(index>=vertices.length/STRIDE)throw Error('CPU index outside vertex buffer.');
      for(let i=0;i<indices.length;i+=3){
        let a=this.clipA,b=this.clipB,count=3;
        for(let k=0;k<3;k++)a.set(vertices.subarray(indices[i+k]*STRIDE,(indices[i+k]+1)*STRIDE),k*STRIDE);
        this.stats.triangles++;
        for(let p=0;p<6&&count;p++){
          let next=0,previous=(count-1)*STRIDE,old=plane(a,previous,p);
          for(let k=0;k<count;k++){
            const current=k*STRIDE,value=plane(a,current,p),inside=value>=0,wasInside=old>=0;
            if(inside!==wasInside){
              const t=old/(old-value);if(next>=CAPACITY)throw Error('CPU clipping capacity exceeded.');
              for(let c=0;c<STRIDE;c++)b[next*STRIDE+c]=a[previous+c]+t*(a[current+c]-a[previous+c]);next++;
            }
            if(inside){if(next>=CAPACITY)throw Error('CPU clipping capacity exceeded.');for(let c=0;c<STRIDE;c++)b[next*STRIDE+c]=a[current+c];next++;}
            previous=current;old=value;
          }
          count=next;const swap=a;a=b;b=swap;
        }
        for(let k=1;k+1<count;k++)this.raster(a,0,k*STRIDE,(k+1)*STRIDE,constants,textured?texture:null,blend,depthWrite);
      }
    }
    raster(v,a,b,c,constants,texture,blend,depthWrite){
      if(v[a+3]<=0||v[b+3]<=0||v[c+3]<=0)return;
      let aw=1/v[a+3],bw=1/v[b+3],cw=1/v[c+3];
      let ax=Math.round((v[a]*aw*.5+.5)*this.width*256),ay=Math.round((.5-v[a+1]*aw*.5)*this.height*256);
      let bx=Math.round((v[b]*bw*.5+.5)*this.width*256),by=Math.round((.5-v[b+1]*bw*.5)*this.height*256);
      let cx=Math.round((v[c]*cw*.5+.5)*this.width*256),cy=Math.round((.5-v[c+1]*cw*.5)*this.height*256);
      let area=edge(ax,ay,bx,by,cx,cy);if(!area)return;
      if(area<0){[b,c]=[c,b];[bx,cx]=[cx,bx];[by,cy]=[cy,by];[bw,cw]=[cw,bw];area=-area;}
      const x0=Math.max(0,Math.ceil((Math.min(ax,bx,cx)-128)/256)),x1=Math.min(this.width-1,Math.floor((Math.max(ax,bx,cx)-128)/256));
      const y0=Math.max(0,Math.ceil((Math.min(ay,by,cy)-128)/256)),y1=Math.min(this.height-1,Math.floor((Math.max(ay,by,cy)-128)/256));
      const ab=topLeft(ax,ay,bx,by),bc=topLeft(bx,by,cx,cy),ca=topLeft(cx,cy,ax,ay);
      const az=v[a+2]*aw,bz=v[b+2]*bw,cz=v[c+2]*cw;
      this.stats.clippedTriangles++;
      for(let y=y0;y<=y1;y++)for(let x=x0;x<=x1;x++){
        const px=x*256+128,py=y*256+128;
        const ea=edge(bx,by,cx,cy,px,py),eb=edge(cx,cy,ax,ay,px,py),ec=edge(ax,ay,bx,by,px,py);
        if(ea<0||(!ea&&!bc)||eb<0||(!eb&&!ca)||ec<0||(!ec&&!ab))continue;
        const wa=ea/area,wb=eb/area,wc=ec/area,z=Math.fround(wa*az+wb*bz+wc*cz),index=y*this.width+x;
        if(z<0||z>1||z>=this.depth[index])continue;
        const inv=1/(wa*aw+wb*bw+wc*cw),pa=wa*aw*inv,pb=wb*bw*inv,pc=wc*cw*inv;
        let r=pa*v[a+4]+pb*v[b+4]+pc*v[c+4],g=pa*v[a+5]+pb*v[b+5]+pc*v[c+5],blue=pa*v[a+6]+pb*v[b+6]+pc*v[c+6],alpha=(pa*v[a+7]+pb*v[b+7]+pc*v[c+7])*constants[60];
        if(texture){
          const u=pa*v[a+8]+pb*v[b+8]+pc*v[c+8],vv=pa*v[a+9]+pb*v[b+9]+pc*v[c+9];
          const tx=Math.max(0,Math.min(texture.width-1,Math.floor(u*texture.width))),ty=Math.max(0,Math.min(texture.height-1,Math.floor(vv*texture.height))),t=(ty*texture.width+tx)*4;
          r*=texture.pixels[t]/255*constants[63];g*=texture.pixels[t+1]/255*constants[63];blue*=texture.pixels[t+2]/255*constants[63];alpha*=texture.pixels[t+3]/255;
        }
        alpha=Math.max(0,Math.min(1,alpha));const o=index*4;
        if(blend){this.pixels[o]=r*255*alpha+this.pixels[o]*(1-alpha);this.pixels[o+1]=g*255*alpha+this.pixels[o+1]*(1-alpha);this.pixels[o+2]=blue*255*alpha+this.pixels[o+2]*(1-alpha);}
        else{this.pixels[o]=r*255;this.pixels[o+1]=g*255;this.pixels[o+2]=blue*255;}
        if(depthWrite)this.depth[index]=Math.fround(z);this.stats.fragments++;
      }
    }
  }
  CpuRasterizer.shaders={cpv:CPV,im:IM};
  if(typeof module!=='undefined'&&module.exports)module.exports=CpuRasterizer;else root.CpuRasterizer=CpuRasterizer;
})(typeof self!=='undefined'?self:globalThis);
