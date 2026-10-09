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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0 = textureSample(t8, s8, v1.xyxx.xy);
  r1 = textureSample(t4, s4, v1.xyxx.xy);
  r2 = textureSample(t6, s6, v1.xyxx.xy);
  r3 = textureSample(t11, s11, v1.zwzz.xy);
  let v = ((-(r3.xyzx)).xyz + vec3<f32>(1.0f));
  r4 = vec4<f32>(v.xyz, r4.w);
  r0.z = (r4.y * r4.x);
  r0.w = (r3.z * r0.z);
  r0.z = (r4.z * r0.z);
  let v_1 = (r0.ww * r2.xy);
  r1 = vec4<f32>(r1.xy, v_1.xy);
  let v_2 = fma(r1.xy, r0.zz, r1.zw);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  r1.x = (r3.y * r4.x);
  r1.y = (r4.z * r1.x);
  r1.x = (r3.z * r1.x);
  let v_3 = clamp(r3.xyzx.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r3 = vec4<f32>(v_3.xyz, r3.w);
  let v_4 = fma(r0.xy, r1.yy, r0.zw);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r2 = textureSample(t10, s10, v1.xyxx.xy);
  let v_5 = fma(r2.xy, r1.xx, r0.xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0.z = max(cb12_12.tint_symbol_3[0u].z, 0.00100000004749745131f);
  let v_7 = (r0.zz * r0.xy);
  r0 = vec4<f32>(r0.xy, v_7.xy);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = sqrt(abs(r0.xxxx).x);
  let v_8 = (r0.www * v6.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(r0.zzz, v5.xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_9.xyz);
  let v_10 = fma(r0.xxx, v3.xyz, r0.yzw);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  r1.x = fma(r0.z, r0.w, -0.34999999403953552246f);
  let v_11 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_12.xyz, o1.w);
  r0.x = clamp(((r1.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * v4.x);
  r0.y = (cb12_12.tint_symbol_3[0u].y * cb12_12.tint_symbol_3[0u].y);
  r0.z = fma((-(r0.yyyy)).z, 0.5f, 1.0f);
  r0.z = (r0.z * r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol_3[1u].x);
  r0.w = ((-(cb12_12.tint_symbol_3[1u].xxxx)).w + 1.0f);
  r0.z = (r0.w * r0.z);
  r0.z = fma(r0.z, -0.5f, 1.0f);
  r1 = textureSample(t3, s3, v1.xyxx.xy);
  r2 = textureSample(t5, s5, v1.xyxx.xy);
  let v_13 = ((-(r3.xyzx)).xyz + vec3<f32>(1.0f));
  r4 = vec4<f32>(v_13.xyz, r4.w);
  r0.w = (r4.y * r4.x);
  r1.w = (r3.z * r0.w);
  r0.w = (r4.z * r0.w);
  let v_14 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = fma(r1.xyz, r0.www, r2.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  r2 = textureSample(t7, s7, v1.xyxx.xy);
  r0.w = (r3.y * r4.x);
  r1.w = (r3.z * r0.w);
  r0.w = (r4.z * r0.w);
  let v_16 = fma(r2.xyz, r0.www, r1.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r2 = textureSample(t9, s9, v1.xyxx.xy);
  let v_17 = fma(r2.xyz, r1.www, r1.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = (r1.xyz * v2.xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r0.w = dot(r1.xyz, vec3<f32>(1.27499997615814208984f, 4.29239988327026367188f, 0.4325999915599822998f));
  r0.w = ((-(r0.wwww)).w + 0.5f);
  o2.w = clamp(((-(r0.wwww) + v3.wwww)).w, 0.0f, 1.0f);
  let v_19 = (r0.zzz * r2.xyz);
  o0 = vec4<f32>(v_19.xyz, o0.w);
  o0.w = cb2_2.tint_symbol[15u].x;
  r0.z = dot(v3.xyz, v3.xyz);
  r0.z = inverseSqrt(r0.z);
  r0.z = (r0.z * v3.z);
  r0.z = clamp(fma(r0.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).z, 0.0f, 1.0f);
  r0.w = (cb12_12.tint_symbol_3[1u].x + -0.10000000149011611938f);
  r0.w = clamp(((r0.wwww * vec4<f32>(10.0f))).w, 0.0f, 1.0f);
  o1.w = (r0.w * r0.z);
  r0.z = (cb12_12.tint_symbol_3[0u].x * 0.001953125f);
  let v_20 = (-(r0.yzyy)).xy;
  r1 = vec4<f32>(v_20.xy, r1.zw);
  let v_21 = (r1.xy + vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_21.xy, r1.zw);
  let v_22 = max(r1.xy, vec2<f32>());
  r1 = vec4<f32>(v_22.xy, r1.zw);
  r2.x = fma(r1.x, r0.x, r0.y);
  r2.y = fma(r1.y, r0.x, r0.z);
  let v_23 = sqrt(r2.xy);
  o2 = vec4<f32>(v_23.xy, o2.zw);
  o2.z = 0.98000001907348632812f;
  r0.x = (v4.x + cb3_3.tint_symbol_1[45u].w);
  r0.y = v4.y;
  let v_24 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_24.xy, r0.zw);
  let v_25 = sqrt(r0.xy);
  o3 = vec4<f32>(v_25.xy, o3.zw);
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
