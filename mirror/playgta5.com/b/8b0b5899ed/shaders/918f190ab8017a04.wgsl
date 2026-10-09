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

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb7_struct {
  tint_symbol_4 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb7_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0.x = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  let v = ((-(cb11_11.tint_symbol_4[2u].zzzz)).yz + vec2<f32>(1.0f, 2.0f));
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  let v_2 = (r0.zz * v1.zw);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  r1 = textureSample(t3, s3, r0.zwzz.xy);
  r0.z = ((-(r1.xxxx)).z + r1.z);
  r1.x = fma(r0.x, r0.z, r1.x);
  let v_3 = (r1.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_4 = r0;
  r0 = vec4<f32>(v_3.x, v_4.y, v_3.y, v_4.w);
  r0.w = fma(v3.z, r0.y, -1.0f);
  r0.w = fma(r0.y, r0.w, 1.0f);
  r0.y = (r0.y * v3.z);
  r0.y = (r0.y * cb11_11.tint_symbol_4[2u].x);
  r0.x = (r0.w * r0.x);
  r0.z = fma((-(r0.zzzz)).z, r0.w, 1.0f);
  r2 = textureSample(t0, s0, v1.xyxx.xy);
  let v_5 = (r2.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r2 = (r2 * v3.xxxw);
  let v_6 = -(r2.xyxz);
  let v_7 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_6.xyw);
  r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
  let v_8 = fma(r0.xxx, r1.xyw, r2.xyz);
  r1 = vec4<f32>(v_8.xy, r1.z, v_8.z);
  r2.w = (r2.w * cb2_2.tint_symbol[15u].x);
  let v_9 = ((-(r1.xywx)).xyz + r1.zzz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = fma(r0.yyy, r3.xyz, r1.xyw);
  r0 = vec4<f32>(v_10.xy, r0.z, v_10.z);
  r1.x = (v3.x * cb11_11.tint_symbol_4[2u].w);
  r1.x = (r1.x * 0.75f);
  r3 = textureSample(t4, s4, v1.xyxx.xy);
  let v_11 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_11.xy, r3.zw);
  r1.y = fma(r3.w, 15.0f, 0.00000000999999993923f);
  r1.z = dot(r3.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r1.x = (r1.z * r1.x);
  let v_12 = (r1.xxx * cb11_11.tint_symbol_4[6u].xyz);
  r1 = vec4<f32>(v_12.x, r1.y, v_12.yz);
  r3.x = dot(v4.xyz, v4.xyz);
  r3.x = inverseSqrt(r3.x);
  let v_13 = ((-(cb3_3.tint_symbol_1[0u].xxyz)).yzw + vec3<f32>(0.0f, 0.0f, -1.0f));
  r3 = vec4<f32>(r3.x, v_13.xyz);
  let v_14 = fma(cb11_11.tint_symbol_4[6u].www, r3.yzw, cb3_3.tint_symbol_1[0u].xyz);
  r3 = vec4<f32>(r3.x, v_14.xyz);
  let v_15 = -(r3.yzwy);
  let v_16 = fma(v4.xyz, r3.xxx, v_15.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_17 = (r3.www * r3.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  r3.w = dot(v2.xyz, v2.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_18 = (r3.www * v2.xyz);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  r3.w = fma(v2.z, r3.w, -0.34999999403953552246f);
  r3.w = clamp(((r3.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r3.w = (r3.w * cb5_5.tint_symbol_2[3u].z);
  r3.x = dot(r4.xyz, r3.xyz);
  let v_19 = fma(r4.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r4 = vec4<f32>(v_19.xyz, r4.w);
  r3.x = clamp(((r3.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r3.x = log2(r3.x);
  r1.y = (r1.y * r3.x);
  r1.y = exp2(r1.y);
  let v_20 = fma(r1.xzw, r1.yyy, r0.xyw);
  r0 = vec4<f32>(v_20.xy, r0.z, v_20.z);
  let v_21 = min(r0.xyw, vec3<f32>(240.0f));
  r0 = vec4<f32>(v_21.xy, r0.z, v_21.z);
  r1.x = (v3.x * cb11_11.tint_symbol_4[4u].y);
  r1.x = (r1.x * v2.w);
  r1.y = (r0.z * r1.x);
  r0.z = clamp(fma(r1.xxxx, r0.zzzz, vec4<f32>(0.40000000596046447754f)).z, 0.0f, 1.0f);
  r1.x = fma((-(r1.yyyy)).x, 0.5f, 1.0f);
  r1.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r1.z = (r1.z * r3.w);
  let v_22 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r3 = vec4<f32>(v_22.xy, r3.zw);
  r1.z = (r1.z * r3.x);
  r1.x = (r1.x * r1.z);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_23 = (r0.xyw * r1.xxx);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_24 = bitcast<vec4<u32>>(r0.xxxx);
  o0 = select(r2, v3, (v_24 != vec4<u32>()));
  let v_25 = (r4.xyz * vec3<f32>(256.0f));
  r0 = vec4<f32>(v_25.xy, r0.z, v_25.z);
  let v_26 = floor(r0.xyw);
  r0 = vec4<f32>(v_26.xy, r0.z, v_26.z);
  let v_27 = -(r0.xywx);
  let v_28 = fma(r4.xyz, vec3<f32>(256.0f), v_27.xyz);
  r2 = vec4<f32>(v_28.xyz, r2.w);
  let v_29 = (r0.xyw * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_29.xyz, o1.w);
  let v_30 = (r2.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_30.xy, r0.z, v_30.z);
  let v_31 = floor(r0.xyw);
  r0 = vec4<f32>(v_31.xy, r0.z, v_31.z);
  r0.x = dot(r0.yxw, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  r0.x = (-(r1.yyyy)).x;
  r0.w = (cb11_11.tint_symbol_4[4u].x * 0.001953125f);
  r0.y = (-(r0.wwww)).y;
  let v_32 = fma(r0.zz, vec2<f32>(0.5f, 0.48828125f), r0.xy);
  r0 = vec4<f32>(v_32.xy, r0.zw);
  let v_33 = max(r0.xy, vec2<f32>());
  r0 = vec4<f32>(v_33.xy, r0.zw);
  r1.x = fma(r0.x, r1.z, r1.y);
  r1.y = fma(r0.y, r1.z, r0.w);
  let v_34 = sqrt(r1.xy);
  o2 = vec4<f32>(v_34.xy, o2.zw);
  o2.z = cb11_11.tint_symbol_4[3u].w;
  o2.w = 1.0f;
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r3.y);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_35 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_35.xy, r0.zw);
  let v_36 = sqrt(r0.xy);
  o3 = vec4<f32>(v_36.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

struct tint_symbol_5 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4);
  return tint_symbol_5(o0, o1, o2, o3);
}
