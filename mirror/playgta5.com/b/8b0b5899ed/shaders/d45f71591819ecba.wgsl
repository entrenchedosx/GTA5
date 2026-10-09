diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb76_struct {
  tint_symbol : array<vec4<f32>, 76u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb76_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : f32;

fn main_inner(v1 : vec4<f32>) {
  let v = fma((-(cb5_5.tint_symbol[75u].zwzz)).xy, vec2<f32>(0.5f), v1.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma(cb5_5.tint_symbol[75u].xy, vec2<f32>(0.5f), r0.xy);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  r1 = textureSample(t0, s0, r0.zwzz.xy);
  r2 = fma(cb5_5.tint_symbol[75u].xyxy, vec4<f32>(1.5f, 0.5f, 2.5f, 0.5f), r0.xyxy);
  r3 = textureSample(t0, s0, r2.xyxx.xy);
  r2 = textureSample(t0, s0, r2.zwzz.xy);
  r0.z = (r1.x + r3.x);
  r0.z = (r2.x + r0.z);
  r1 = fma(cb5_5.tint_symbol[75u].xyxy, vec4<f32>(3.5f, 0.5f, 0.5f, 1.5f), r0.xyxy);
  r2 = textureSample(t0, s0, r1.xyxx.xy);
  r1 = textureSample(t0, s0, r1.zwzz.xy);
  r0.z = (r0.z + r2.x);
  r0.z = (r1.x + r0.z);
  r1 = fma(cb5_5.tint_symbol[75u].xyxy, vec4<f32>(1.5f, 1.5f, 2.5f, 1.5f), r0.xyxy);
  r2 = textureSample(t0, s0, r1.xyxx.xy);
  r1 = textureSample(t0, s0, r1.zwzz.xy);
  r0.z = (r0.z + r2.x);
  r0.z = (r1.x + r0.z);
  r1 = fma(cb5_5.tint_symbol[75u].xyxy, vec4<f32>(3.5f, 1.5f, 0.5f, 2.5f), r0.xyxy);
  r2 = textureSample(t0, s0, r1.xyxx.xy);
  r1 = textureSample(t0, s0, r1.zwzz.xy);
  r0.z = (r0.z + r2.x);
  r0.z = (r1.x + r0.z);
  r1 = fma(cb5_5.tint_symbol[75u].xyxy, vec4<f32>(1.5f, 2.5f, 2.5f, 2.5f), r0.xyxy);
  let v_2 = fma(cb5_5.tint_symbol[75u].xy, vec2<f32>(3.5f, 2.5f), r0.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r2 = textureSample(t0, s0, r0.xyxx.xy);
  r3 = textureSample(t0, s0, r1.xyxx.xy);
  r1 = textureSample(t0, s0, r1.zwzz.xy);
  r0.x = (r0.z + r3.x);
  r0.x = (r1.x + r0.x);
  r0.x = (r2.x + r0.x);
  o0 = (r0.x * 0.08333333581686019897f);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v1);
  return o0;
}
