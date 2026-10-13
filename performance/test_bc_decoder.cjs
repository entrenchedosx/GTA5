const fs=require('node:fs'),assert=require('node:assert/strict');
const bytes=fs.readFileSync('codecs/bcdec/decoder.wasm');
const mod=new WebAssembly.Module(bytes);assert.equal(WebAssembly.Module.imports(mod).length,0);
const e=new WebAssembly.Instance(mod).exports,mem=new Uint8Array(e.memory.buffer),input=e.input_ptr(),output=e.output_ptr();
assert.equal(mem.length,1048576);assert.throws(()=>e.memory.grow(1));
const red=[0,248,0,0,0,0,0,0],green=[224,7,0,0,0,0,0,0];
mem.set([...red,...green],input);assert.equal(e.decode_row(1,0,7,3),84);
for(let y=0;y<3;y++)for(let x=0;x<7;x++)assert.deepEqual(Array.from(mem.slice(output+(y*7+x)*4,output+(y*7+x+1)*4)),x<4?[255,0,0,255]:[0,255,0,255]);
mem.fill(255,input,input+8);mem.fill(0,input+8,input+16);mem.set(red,input+8);assert.equal(e.decode_block(2,0),64);assert.deepEqual(Array.from(mem.slice(output,output+4)),[255,0,0,255]);
mem.fill(0,input,input+16);mem[ input ]=128;mem[ input+1 ]=128;mem.set(red,input+8);e.decode_block(3,0);assert.deepEqual(Array.from(mem.slice(output,output+4)),[255,0,0,128]);
mem.fill(0,input,input+16);mem[input]=255;e.decode_block(4,0);assert.equal(mem[output],255);
mem[input]=128;e.decode_block(4,1);assert.equal(mem[output],129,'SNORM -128 endpoint is clamped to -127');
mem.fill(0,input,input+16);mem[input]=255;mem[input+8]=128;e.decode_block(5,0);assert.deepEqual(Array.from(mem.slice(output,output+2)),[255,128]);
mem.fill(0,input,input+16);e.decode_block(6,0);assert.deepEqual(Array.from(new Uint16Array(e.memory.buffer,output,4)),[0,0,0,0x3c00]);
const mode6=new Uint8Array(16);let bit=0;function bits(value,n){for(let i=0;i<n;i++,bit++)mode6[bit>>3]|=((value>>i)&1)<<(bit&7);}
bits(64,7);for(const v of [127,127,0,0,0,0,127,127])bits(v,7);bits(1,1);bits(1,1);bits(0,3);for(let i=1;i<16;i++)bits(0,4);assert.equal(bit,128);
mem.set(mode6,input);e.decode_block(7,0);for(let i=0;i<16;i++)assert.deepEqual(Array.from(mem.slice(output+i*4,output+i*4+4)),[255,1,1,255]);
// Compare clipped multi-block rows to independent block decodes for all formats,
// including signed BC4/5/6; catches overlaps, strides and channel-size errors.
let seed=123;function rand(){seed=(seed*1664525+1013904223)>>>0;return seed>>>24;}
for(let kind=1;kind<=7;kind++)for(let signed=0;signed<=1;signed++)for(const width of [1,4,7,19,16384]){
 const bb=kind===1||kind===4?8:16,pb=kind===4?1:kind===5?2:kind===6?8:4,source=Uint8Array.from({length:Math.ceil(width/4)*bb},rand),expected=new Uint8Array(width*3*pb);
 for(let x=0;x<width;x+=4){mem.set(source.subarray(x/4*bb,x/4*bb+bb),input);assert.equal(e.decode_block(kind,signed),16*pb);const block=mem.slice(output,output+16*pb);for(let y=0;y<3;y++)for(let dx=0;dx<4&&x+dx<width;dx++)expected.set(block.subarray((y*4+dx)*pb,(y*4+dx+1)*pb),(y*width+x+dx)*pb);}
 mem.set(source,input);assert.equal(e.decode_row(kind,signed,width,3),expected.length);assert.deepEqual(mem.slice(output,output+expected.length),expected);
}
for(const args of [[0,0,4,4],[8,0,4,4],[1,0,0,4],[1,0,16385,4],[1,0,4,5]])assert.equal(e.decode_row(...args),0);
console.log('PASS: bounded BC1–BC7 decoder, alpha, signed modes, clipped rows and maximum width');
