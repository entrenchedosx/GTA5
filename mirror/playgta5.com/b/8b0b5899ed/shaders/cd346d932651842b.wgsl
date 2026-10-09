diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0 = textureSample(t2, s2, v2.xyxx.xy);
  r1 = textureSample(t2, s2, v2.zwzz.xy);
  r0.y = r1.x;
  r1 = textureSample(t2, s2, v3.xyxx.xy);
  r0.z = r1.x;
  r1 = textureSample(t2, s2, v3.zwzz.xy);
  r0.w = r1.x;
  r1 = textureSample(t6, s6, v2.xyxx.xy);
  r2 = textureSample(t6, s6, v2.zwzz.xy);
  r1.y = r2.x;
  r2 = textureSample(t6, s6, v3.xyxx.xy);
  r1.z = r2.x;
  r2 = textureSample(t6, s6, v3.zwzz.xy);
  r1.w = r2.x;
  r2 = textureSample(t6, s6, v1.xy.xyxx.xy);
  let v = -(r2.xxxx);
  r1 = (r1 + v);
  r1 = (abs(r1) / r2.xxxx);
  r1 = (r1 * vec4<f32>(-72.1347503662109375f));
  r1 = exp2(r1);
  r0.x = dot(r0, r1);
  r0.y = dot(r1, vec4<f32>(1.0f));
  r1 = textureSample(t6, s6, v4.xyxx.xy);
  r3 = textureSample(t6, s6, v4.zwzz.xy);
  r1.y = r3.x;
  r3 = textureSample(t6, s6, v5.xyxx.xy);
  r1.z = r3.x;
  r3 = textureSample(t6, s6, v5.zwzz.xy);
  r1.w = r3.x;
  r1 = (-(r2.xxxx) + r1);
  r1 = (abs(r1) / r2.xxxx);
  r1 = (r1 * vec4<f32>(-72.1347503662109375f));
  r1 = exp2(r1);
  r3 = textureSample(t2, s2, v4.xyxx.xy);
  r4 = textureSample(t2, s2, v4.zwzz.xy);
  r3.y = r4.x;
  r4 = textureSample(t2, s2, v5.xyxx.xy);
  r3.z = r4.x;
  r4 = textureSample(t2, s2, v5.zwzz.xy);
  r3.w = r4.x;
  r0.z = dot(r3, r1);
  r0.w = dot(r1, vec4<f32>(1.0f));
  let v_1 = (r0.zw + r0.xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r1 = textureSample(t6, s6, v6.xyxx.xy);
  r3 = textureSample(t6, s6, v6.zwzz.xy);
  r1.y = r3.x;
  r3 = textureSample(t6, s6, v7.xyxx.xy);
  r1.z = r3.x;
  r3 = textureSample(t6, s6, v7.zwzz.xy);
  r1.w = r3.x;
  r1 = (-(r2.xxxx) + r1);
  r1 = (abs(r1) / r2.xxxx);
  r1 = (r1 * vec4<f32>(-72.1347503662109375f));
  r1 = exp2(r1);
  r2 = textureSample(t2, s2, v6.xyxx.xy);
  r3 = textureSample(t2, s2, v6.zwzz.xy);
  r2.y = r3.x;
  r3 = textureSample(t2, s2, v7.xyxx.xy);
  r2.z = r3.x;
  r3 = textureSample(t2, s2, v7.zwzz.xy);
  r2.w = r3.x;
  r0.z = dot(r2, r1);
  r0.w = dot(r1, vec4<f32>(1.0f));
  let v_2 = (r0.zw + r0.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.y = (r0.y + 0.25f);
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r0.x = fma(r1.x, 0.25f, r0.x);
  o0 = (r0.xxxx / r0.yyyy);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return o0;
}
