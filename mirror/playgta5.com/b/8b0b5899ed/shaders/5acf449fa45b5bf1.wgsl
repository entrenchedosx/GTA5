diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t6, s6, v2.xyxx.xy);
  r1 = textureSample(t6, s6, v2.zwzz.xy);
  r0.y = r1.x;
  r1 = textureSample(t6, s6, v3.xyxx.xy);
  r0.z = r1.x;
  r1 = textureSample(t6, s6, v3.zwzz.xy);
  r0.w = r1.x;
  r1 = textureSample(t6, s6, v1.xy.xyxx.xy);
  let v = -(r1.xxxx);
  r0 = (r0 + v);
  r0 = (abs(r0) / r1.xxxx);
  r0 = (r0 * vec4<f32>(-72.1347503662109375f));
  r0 = exp2(r0);
  r1 = textureSample(t2, s2, v2.xyxx.xy);
  r2 = textureSample(t2, s2, v2.zwzz.xy);
  r1.y = r2.x;
  r2 = textureSample(t2, s2, v3.xyxx.xy);
  r1.z = r2.x;
  r2 = textureSample(t2, s2, v3.zwzz.xy);
  r1.w = r2.x;
  r1.x = dot(r1, r0);
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.x = (r0.x + 0.25f);
  r2 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r0.y = fma(r2.x, 0.25f, r1.x);
  o0 = (r0.yyyy / r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
