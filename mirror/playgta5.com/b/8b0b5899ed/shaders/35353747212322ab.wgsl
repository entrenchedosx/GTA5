diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb7_struct {
  tint_symbol : array<vec4<f32>, 7u>,
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
  r0 = (v0.xyxy * cb12_12.tint_symbol[6u].zwzw);
  r1 = fma(cb12_12.tint_symbol[6u].zwzw, vec4<f32>(0.5f, -0.5f, -0.5f, 0.5f), r0.zwzw);
  r0 = fma(-(cb12_12.tint_symbol[6u].zwzw), vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f), r0);
  r2 = textureSample(t8, s8, r1.zwzz.xy);
  r1 = textureSample(t8, s8, r1.xyxx.xy);
  r1.y = (r2.x * 0.25f);
  r1.x = fma(r1.x, 0.25f, r1.y);
  r2 = textureSample(t8, s8, r0.xyxx.xy);
  r0 = textureSample(t8, s8, r0.zwzz.xy);
  r0.y = fma(r2.x, 0.25f, r1.x);
  o0 = fma(r0.xxxx, vec4<f32>(0.25f), r0.yyyy);
}

@fragment
fn main(@builtin(position) v_2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_2);
  return o0;
}
