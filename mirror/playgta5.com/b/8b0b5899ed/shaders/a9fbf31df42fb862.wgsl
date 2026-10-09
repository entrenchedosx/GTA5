diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

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

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0 = textureSample(t2, s2, v1.xyxx.xy);
  r1 = textureSample(t4, s4, v1.zwzz.xy);
  let v = clamp(v2.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r2 = vec4<f32>(v.xyz, r2.w);
  let v_1 = ((-(r2.xyzx)).xyz + vec3<f32>(1.0f));
  r3 = vec4<f32>(v_1.xyz, r3.w);
  r0.w = (r3.y * r3.x);
  r1.w = (r2.z * r0.w);
  r0.w = (r3.z * r0.w);
  let v_2 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(r0.xyz, r0.www, r1.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1 = textureSample(t6, s6, v1.zwzz.xy);
  r0.w = (r2.y * r3.x);
  r1.w = (r2.z * r0.w);
  r0.w = (r3.z * r0.w);
  let v_4 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r2 = textureSample(t8, s8, v1.zwzz.xy);
  let v_5 = fma(r2.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r1 = textureSample(t3, s3, v1.xyxx.xy);
  r2 = textureSample(t5, s5, v1.zwzz.xy);
  r3 = vec4<f32>((((-(v2.xyzx)).xyz + vec3<f32>(1.0f))).xyz, r3.w);
  r0.w = (r3.y * r3.x);
  r1.z = (r0.w * v2.z);
  r0.w = (r3.z * r0.w);
  let v_6 = (r1.zz * r2.xy);
  r1 = vec4<f32>(r1.xy, v_6.xy);
  let v_7 = fma(r1.xy, r0.ww, r1.zw);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  r2 = textureSample(t7, s7, v1.zwzz.xy);
  r0.w = (r3.x * v2.y);
  r1.z = (r3.z * r0.w);
  r0.w = (r0.w * v2.z);
  let v_8 = fma(r2.xy, r1.zz, r1.xy);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r2 = textureSample(t9, s9, v1.zwzz.xy);
  let v_9 = fma(r2.xy, r0.ww, r1.xy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  let v_10 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_10.xy, r1.zw);
  r0.w = max(cb12_12.tint_symbol_3[0u].z, 0.00100000004749745131f);
  let v_11 = (r0.ww * r1.xy);
  r1 = vec4<f32>(r1.xy, v_11.xy);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  let v_12 = (r1.www * v6.xyz);
  r1 = vec4<f32>(v_12.xy, r1.z, v_12.z);
  let v_13 = fma(r1.zzz, v5.xyz, r1.xyw);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = fma(r0.www, v3.xyz, r1.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  r1.w = fma(r1.z, r0.w, -0.34999999403953552246f);
  let v_15 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_16.xyz, o1.w);
  r0.w = clamp(((r1.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r0.w * v4.x);
  r1.x = (cb12_12.tint_symbol_3[0u].y * cb12_12.tint_symbol_3[0u].y);
  r1.y = fma((-(r1.xxxx)).y, 0.5f, 1.0f);
  r1.y = (r0.w * r1.y);
  r0.w = (r0.w * cb12_12.tint_symbol_3[1u].x);
  r1.z = ((-(cb12_12.tint_symbol_3[1u].xxxx)).z + 1.0f);
  r1.y = (r1.z * r1.y);
  r1.y = fma(r1.y, -0.5f, 1.0f);
  let v_17 = (r0.xyz * r1.yyy);
  o0 = vec4<f32>(v_17.xyz, o0.w);
  r0.x = dot(r0.xyz, vec3<f32>(1.27499997615814208984f, 4.29239988327026367188f, 0.4325999915599822998f));
  r0.x = ((-(r0.xxxx)).x + 0.5f);
  o2.w = clamp(((-(r0.xxxx) + v3.wwww)).w, 0.0f, 1.0f);
  o0.w = cb2_2.tint_symbol[15u].x;
  r0.x = dot(v3.xyz, v3.xyz);
  r0.x = inverseSqrt(r0.x);
  r0.x = (r0.x * v3.z);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(128.0f), vec4<f32>(-127.0f)).x, 0.0f, 1.0f);
  r0.y = (cb12_12.tint_symbol_3[1u].x + -0.10000000149011611938f);
  r0.y = clamp(((r0.yyyy * vec4<f32>(10.0f))).y, 0.0f, 1.0f);
  o1.w = (r0.y * r0.x);
  r0.x = (-(r1.xxxx)).x;
  r0.z = (cb12_12.tint_symbol_3[0u].x * 0.001953125f);
  r0.y = (-(r0.zzzz)).y;
  let v_18 = (r0.xy + vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_18.xy, r0.zw);
  let v_19 = max(r0.xy, vec2<f32>());
  r0 = vec4<f32>(v_19.xy, r0.zw);
  r1.x = fma(r0.x, r0.w, r1.x);
  r1.y = fma(r0.y, r0.w, r0.z);
  let v_20 = sqrt(r1.xy);
  o2 = vec4<f32>(v_20.xy, o2.zw);
  o2.z = 0.98000001907348632812f;
  r0.x = (v4.x + cb3_3.tint_symbol_1[45u].w);
  r0.y = v4.y;
  let v_21 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_21.xy, r0.zw);
  let v_22 = sqrt(r0.xy);
  o3 = vec4<f32>(v_22.xy, o3.zw);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
