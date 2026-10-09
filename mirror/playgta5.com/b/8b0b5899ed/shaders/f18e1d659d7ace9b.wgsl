diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0 = textureSample(t6, s6, v1.zwzz.xy);
  let v = ((-(r0.xyzx)).xyz + v2.xyz);
  r1 = vec4<f32>(v.xyz, r1.w);
  let v_1 = fma(v2.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = ((-(r0.xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r0.w = (r1.y * r1.x);
  r1.y = (r0.z * r0.w);
  r0.w = (r1.z * r0.w);
  r1.y = (r1.y * cb12_12.tint_symbol_3[1u].y);
  r0.w = fma(cb12_12.tint_symbol_3[1u].x, r0.w, r1.y);
  r1.x = (r0.y * r1.x);
  r1.y = (r1.z * r1.x);
  r1.x = (r0.z * r1.x);
  let v_3 = clamp(r0.xyzx.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = fma(cb12_12.tint_symbol_3[1u].z, r1.y, r0.w);
  r0.w = fma(cb12_12.tint_symbol_3[1u].w, r1.x, r0.w);
  r1.x = ((-(r0.wwww)).x + 1.0f);
  r1.y = (v3.z + -0.34999999403953552246f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r1.y = (r1.y * cb5_5.tint_symbol_2[3u].z);
  r1.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r1.y = (r1.z * r1.y);
  r1.y = (r1.y * v4.x);
  r1.z = (cb12_12.tint_symbol_3[0u].y * cb12_12.tint_symbol_3[0u].y);
  r1.w = fma((-(r1.zzzz)).w, 0.5f, 1.0f);
  r1.w = (r1.w * r1.y);
  r1.y = (r0.w * r1.y);
  r0.w = (r0.w + -0.10000000149011611938f);
  r0.w = clamp(((r0.wwww * vec4<f32>(10.0f))).w, 0.0f, 1.0f);
  r1.x = (r1.x * r1.w);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  r2 = textureSample(t2, s2, v1.xyxx.xy);
  r3 = textureSample(t3, s3, v1.xyxx.xy);
  let v_4 = ((-(r0.xyzx)).xyz + vec3<f32>(1.0f));
  r4 = vec4<f32>(v_4.xyz, r4.w);
  r0.x = (r4.y * r4.x);
  r1.w = (r0.z * r0.x);
  r0.x = (r4.z * r0.x);
  let v_5 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = fma(r2.xyz, r0.xxx, r3.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r0.x = (r0.y * r4.x);
  r0.y = (r0.z * r0.x);
  r0.x = (r4.z * r0.x);
  r3 = textureSample(t4, s4, v1.xyxx.xy);
  let v_7 = fma(r3.xyz, r0.xxx, r2.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r3 = textureSample(t5, s5, v1.xyxx.xy);
  let v_8 = fma(r3.xyz, r0.yyy, r2.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = (r1.xxx * r0.xyz);
  o0 = vec4<f32>(v_9.xyz, o0.w);
  r0.x = dot(r0.xyz, vec3<f32>(1.27499997615814208984f, 4.29239988327026367188f, 0.4325999915599822998f));
  r0.x = ((-(r0.xxxx)).x + 0.5f);
  o2.w = clamp(((-(r0.xxxx) + v3.wwww)).w, 0.0f, 1.0f);
  o0.w = cb2_2.tint_symbol[15u].x;
  r0.x = dot(v3.xyz, v3.xyz);
  r0.x = inverseSqrt(r0.x);
  r0.x = (r0.x * v3.z);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(128.0f), vec4<f32>(-127.0f)).x, 0.0f, 1.0f);
  o1.w = (r0.w * r0.x);
  let v_10 = fma(v3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_10.xyz, o1.w);
  r0.x = (-(r1.zzzz)).x;
  r0.z = (cb12_12.tint_symbol_3[0u].x * 0.001953125f);
  r0.y = (-(r0.zzzz)).y;
  let v_11 = (r0.xy + vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_11.xy, r0.zw);
  let v_12 = max(r0.xy, vec2<f32>());
  r0 = vec4<f32>(v_12.xy, r0.zw);
  r2.x = fma(r0.x, r1.y, r1.z);
  r2.y = fma(r0.y, r1.y, r0.z);
  let v_13 = sqrt(r2.xy);
  o2 = vec4<f32>(v_13.xy, o2.zw);
  o2.z = 0.98000001907348632812f;
  r0.x = (v4.x + cb3_3.tint_symbol_1[45u].w);
  r0.y = v4.y;
  let v_14 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_14.xy, r0.zw);
  let v_15 = sqrt(r0.xy);
  o3 = vec4<f32>(v_15.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

struct tint_symbol_4 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4);
  return tint_symbol_4(o0, o1, o2, o3);
}
