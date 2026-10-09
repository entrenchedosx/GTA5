diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb8_struct {
  tint_symbol : array<vec4<f32>, 8u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb8_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = (cb12_12.tint_symbol[7u].xyxy * vec4<f32>(1.21212124824523925781f, 0.0f, 0.0f, 1.21212124824523925781f));
  r1 = fma(v0.xyxy, cb12_12.tint_symbol[2u].zwzw, r0);
  let v_2 = -(r0);
  r0 = fma(v0.xyxy, cb12_12.tint_symbol[2u].zwzw, v_2);
  r1.x = textureSampleLevel(t4, s4, r1.xyxx.xy, 0.0f).x;
  r1.y = textureSampleLevel(t4, s4, r1.zwzz.xy, 0.0f).x;
  r1.x = (r1.x * 0.12087912112474441528f);
  r2 = (v0.xyxy * cb12_12.tint_symbol[2u].zwzw);
  r1.z = textureSampleLevel(t4, s4, r2.zwzz.xy, 0.0f).x;
  r1.x = fma(r1.z, 0.15018315613269805908f, r1.x);
  r1.x = fma(r1.y, 0.12087912112474441528f, r1.x);
  r0.x = textureSampleLevel(t4, s4, r0.xyxx.xy, 0.0f).x;
  r0.y = textureSampleLevel(t4, s4, r0.zwzz.xy, 0.0f).x;
  r0.x = fma(r0.x, 0.12087912112474441528f, r1.x);
  r0.x = fma(r0.y, 0.12087912112474441528f, r0.x);
  r1 = fma(cb12_12.tint_symbol[7u].xyxy, vec4<f32>(1.20000004768371582031f, 1.20000004768371582031f, 1.20000004768371582031f, -1.20000004768371582031f), r2.zwzw);
  r2 = fma(cb12_12.tint_symbol[7u].xyxy, vec4<f32>(-1.20000004768371582031f, -1.20000004768371582031f, -1.20000004768371582031f, 1.20000004768371582031f), r2);
  r0.y = textureSampleLevel(t4, s4, r1.xyxx.xy, 0.0f).x;
  r0.z = textureSampleLevel(t4, s4, r1.zwzz.xy, 0.0f).x;
  r0.x = fma(r0.y, 0.09157509356737136841f, r0.x);
  r0.x = fma(r0.z, 0.09157509356737136841f, r0.x);
  r0.y = textureSampleLevel(t4, s4, r2.xyxx.xy, 0.0f).x;
  r0.z = textureSampleLevel(t4, s4, r2.zwzz.xy, 0.0f).x;
  r0.x = fma(r0.y, 0.09157509356737136841f, r0.x);
  r0.x = fma(r0.z, 0.09157509356737136841f, r0.x);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol[4u].w);
  o0 = exp2(r0.xxxx);
}

@fragment
fn main(@builtin(position) v_3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_3);
  return o0;
}
