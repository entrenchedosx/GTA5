diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>) {
  r0 = textureSample(t2, s2, v2.xyxx.xy);
  r0.x = (r0.w * 15.9377498626708984375f);
  r0.x = fract(r0.x);
  r0.x = (r0.x * 16.0f);
  let v = -(r0.xxxx);
  r0.y = fma(r0.w, 255.003997802734375f, v.y);
  r0.y = (r0.y * 0.0625f);
  r0.z = dot(r0.yyyy, v6);
  r0.y = dot(r0.yyyy, v4);
  r0.w = dot(r0.xxxx, v5);
  r0.x = dot(r0.xxxx, v3);
  r0.x = (r0.y + r0.x);
  r0.y = (r0.z + r0.w);
  r0.z = clamp(r0.yyyy.z, 0.0f, 1.0f);
  r0.y = floor(r0.y);
  r1.z = (r0.y * 0.0625f);
  r0.y = (r0.z * v2.w);
  r0.z = clamp(r0.xxxx.z, 0.0f, 1.0f);
  r0.x = floor(r0.x);
  r1.x = (r0.x * 0.0625f);
  r0.x = fma(r0.z, v2.z, r0.y);
  o0.w = (r0.x * v1.w);
  r0 = textureSample(t2, s2, vec2<f32>(0.9921875f, 0.0078125f));
  let v_1 = r0;
  o0 = vec4<f32>(v_1.xyz, o0.w);
  let v_2 = r1;
  r1 = vec4<f32>(v_2.x, 0.5f, v_2.z, 0.5f);
  r0 = textureSample(t3, s3, r1.zwzz.xy);
  r1 = textureSample(t3, s3, r1.xyxx.xy);
  let v_3 = fma(r1.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(r0.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.xyz * v2.www);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = fma(r1.xyz, v2.zzz, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_7 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r0.yyy * v8.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(v7.xyz, r0.xxx, r1.xyz);
  r0 = vec4<f32>(v_9.xy, r0.z, v_9.z);
  let v_10 = fma(v9.xyz, r0.zzz, r0.xyw);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_11.xyz, o1.w);
  o1.w = 0.0f;
  o2 = vec4<f32>(0.0f, 0.5f, 0.5f, 0.0f);
  o3 = vec4<f32>(1.0f, 1.0f, 0.0f, 0.0f);
}

struct tint_symbol {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>) -> tint_symbol {
  main_inner(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  return tint_symbol(o0, o1, o2, o3);
}
