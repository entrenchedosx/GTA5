diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb1_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : f32;

fn main_inner(v2 : vec4<f32>) {
  r0 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(1.5f, -1.5f, 1.5f, -0.5f), v2.xy.xyxy);
  r1 = textureSample(t6, s6, r0.xyxx.xy);
  r0 = textureSample(t6, s6, r0.zwzz.xy);
  r2 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(0.5f, -1.5f, 0.5f, -0.5f), v2.xy.xyxy);
  r3 = textureSample(t6, s6, r2.xyxx.xy);
  r2 = textureSample(t6, s6, r2.zwzz.xy);
  r0.x = (r0.x + r2.x);
  r0.y = (r1.x + r3.x);
  r1 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(-0.5f, -1.5f, -0.5f, -0.5f), v2.xy.xyxy);
  r2 = textureSample(t6, s6, r1.xyxx.xy);
  r1 = textureSample(t6, s6, r1.zwzz.xy);
  r0.x = (r0.x + r1.x);
  r0.y = (r0.y + r2.x);
  r1 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(-1.5f, -1.5f, -1.5f, -0.5f), v2.xy.xyxy);
  r2 = textureSample(t6, s6, r1.xyxx.xy);
  r1 = textureSample(t6, s6, r1.zwzz.xy);
  r0.x = (r0.x + r1.x);
  r0.y = (r0.y + r2.x);
  r0.x = (r0.x + r0.y);
  r1 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(1.5f, 0.5f, 1.5f, 1.5f), v2.xy.xyxy);
  r2 = textureSample(t6, s6, r1.xyxx.xy);
  r1 = textureSample(t6, s6, r1.zwzz.xy);
  r3 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(0.5f, 0.5f, 0.5f, 1.5f), v2.xy.xyxy);
  r4 = textureSample(t6, s6, r3.xyxx.xy);
  r3 = textureSample(t6, s6, r3.zwzz.xy);
  r0.y = (r1.x + r3.x);
  r0.z = (r2.x + r4.x);
  r1 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(-0.5f, 0.5f, -0.5f, 1.5f), v2.xy.xyxy);
  r2 = textureSample(t6, s6, r1.xyxx.xy);
  r1 = textureSample(t6, s6, r1.zwzz.xy);
  r0.y = (r0.y + r1.x);
  r0.z = (r0.z + r2.x);
  r1 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(-1.5f, 0.5f, -1.5f, 1.5f), v2.xy.xyxy);
  r2 = textureSample(t6, s6, r1.xyxx.xy);
  r1 = textureSample(t6, s6, r1.zwzz.xy);
  r0.y = (r0.y + r1.x);
  r0.z = (r0.z + r2.x);
  r0.x = (r0.z + r0.x);
  o0 = (r0.y + r0.x);
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v2);
  return o0;
}
