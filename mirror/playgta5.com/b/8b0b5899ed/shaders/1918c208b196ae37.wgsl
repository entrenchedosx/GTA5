diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb6_struct {
  tint_symbol : array<vec4<f32>, 6u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb6_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  r0 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(-1.0f, 0.0f, 1.0f, 0.0f), v2.xy.xyxy);
  r1 = textureSample(t2, s2, r0.xyxx.xy);
  r0 = textureSample(t2, s2, r0.zwzz.xy);
  r1 = (r1 * vec4<f32>(0.12087912112474441528f));
  r2 = textureSample(t2, s2, v2.xy.xyxx.xy);
  r1 = fma(r2, vec4<f32>(0.15018315613269805908f), r1);
  r0 = fma(r0, vec4<f32>(0.12087912112474441528f), r1);
  r1 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), v2.xy.xyxy);
  r3 = textureSample(t2, s2, r1.xyxx.xy);
  r1 = textureSample(t2, s2, r1.zwzz.xy);
  r0 = fma(r3, vec4<f32>(0.12087912112474441528f), r0);
  r0 = fma(r1, vec4<f32>(0.12087912112474441528f), r0);
  let v = (v2.xy + (-(cb5_5.tint_symbol[0u].xyxx)).xy);
  r1 = vec4<f32>(v.xy, r1.zw);
  r1 = textureSample(t2, s2, r1.xyxx.xy);
  r0 = fma(r1, vec4<f32>(0.09157509356737136841f), r0);
  r1 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(1.0f, -1.0f, -1.0f, 1.0f), v2.xy.xyxy);
  r3 = textureSample(t2, s2, r1.xyxx.xy);
  r1 = textureSample(t2, s2, r1.zwzz.xy);
  r0 = fma(r3, vec4<f32>(0.09157509356737136841f), r0);
  let v_1 = (v2.xy + cb5_5.tint_symbol[0u].xy);
  r3 = vec4<f32>(v_1.xy, r3.zw);
  r3 = textureSample(t2, s2, r3.xyxx.xy);
  r0 = fma(r3, vec4<f32>(0.09157509356737136841f), r0);
  r0 = fma(r1, vec4<f32>(0.09157509356737136841f), r0);
  r0 = (-(r0) + r2);
  r1.x = (cb5_5.tint_symbol[5u].w + cb5_5.tint_symbol[5u].w);
  o0 = fma(r1.xxxx, r0, r2);
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
