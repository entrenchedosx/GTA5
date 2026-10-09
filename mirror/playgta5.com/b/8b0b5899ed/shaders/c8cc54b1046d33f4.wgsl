diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb3_struct;

struct cb7_struct {
  tint_symbol_1 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb7_struct;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = (v0.xyxy * cb12_12.tint_symbol_1[6u].zwzw);
  r1 = fma(cb12_12.tint_symbol_1[6u].zwzw, vec4<f32>(0.5f, -0.5f, -0.5f, 0.5f), r0.zwzw);
  r0 = fma(-(cb12_12.tint_symbol_1[6u].zwzw), vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f), r0);
  r2 = textureSample(t8, s8, r1.zwzz.xy);
  r1 = textureSample(t8, s8, r1.xyxx.xy);
  r1.y = (r2.x * 0.25f);
  r1.x = fma(r1.x, 0.25f, r1.y);
  r2 = textureSample(t8, s8, r0.xyxx.xy);
  r0 = textureSample(t8, s8, r0.zwzz.xy);
  r0.y = fma(r2.x, 0.25f, r1.x);
  r0.x = fma(r0.x, 0.25f, r0.y);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol_1[4u].x);
  r0.x = exp2(r0.x);
  r0.x = (r0.x + -1.0f);
  o0 = fma(cb5_5.tint_symbol[2u].wwww, r0.xxxx, vec4<f32>(1.0f));
}

@fragment
fn main(@builtin(position) v_2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_2);
  return o0;
}
