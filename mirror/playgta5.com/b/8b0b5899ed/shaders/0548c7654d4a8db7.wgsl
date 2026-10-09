diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

var<private> o0 : f32;

fn main_inner(v1 : vec4<f32>) {
  r0 = fma(cb2_2.tint_symbol[18u].zwzw, vec4<f32>(-0.25f, -0.25f, -0.25f, 0.25f), v1.xyxy);
  r1 = textureSample(t11, s11, r0.xyxx.xy);
  r0 = textureSample(t11, s11, r0.zwzz.xy);
  r1.y = r0.x;
  r0 = fma(cb2_2.tint_symbol[18u].zwzw, vec4<f32>(0.25f, -0.25f, 0.25f, 0.25f), v1.xyxy);
  r2 = textureSample(t11, s11, r0.xyxx.xy);
  r0 = textureSample(t11, s11, r0.zwzz.xy);
  r2.y = r0.x;
  let v = min(r1.xy, r2.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.x = min(r0.y, r0.x);
  r0.y = (cb12_12.tint_symbol_1[0u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  o0 = (cb12_12.tint_symbol_1[0u].z / r0.x);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v1);
  return o0;
}
