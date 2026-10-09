diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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
  let v_2 = (r0.zz * v1.xy);
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
  r2 = textureSample(t0, s0, v1.xy.xyxx.xy);
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
  r1.x = dot(v4.xyz, v4.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_11 = ((-(cb3_3.tint_symbol_1[0u].xxyz)).yzw + vec3<f32>(0.0f, 0.0f, -1.0f));
  r1 = vec4<f32>(r1.x, v_11.xyz);
  let v_12 = fma(cb11_11.tint_symbol_4[6u].www, r1.yzw, cb3_3.tint_symbol_1[0u].xyz);
  r1 = vec4<f32>(r1.x, v_12.xyz);
  let v_13 = -(r1.yzwy);
  let v_14 = fma(v4.xyz, r1.xxx, v_13.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_15 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_16 = (r1.www * v2.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r1.w = fma(v2.z, r1.w, -0.34999999403953552246f);
  r1.w = clamp(((r1.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r1.w = (r1.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = dot(r3.xyz, r1.xyz);
  let v_17 = fma(r3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r3 = vec4<f32>(v_17.xyz, r3.w);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r4 = textureSample(t4, s4, v1.xy.xyxx.xy);
  r1.y = fma(r4.w, 15.0f, 0.00000000999999993923f);
  r1.x = (r1.x * r1.y);
  r1.x = exp2(r1.x);
  let v_18 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_18.xy, r4.zw);
  r1.y = (r4.w * cb11_11.tint_symbol_4[4u].x);
  r5.y = (r1.y * 0.001953125f);
  r1.y = dot(r4.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r1.z = (v3.x * cb11_11.tint_symbol_4[2u].w);
  r1.z = (r1.y * r1.z);
  r1.y = (r1.y * cb11_11.tint_symbol_4[4u].y);
  r1.y = (r1.y * v3.x);
  r1.y = (r1.y * v2.w);
  r1.z = (r1.z * 0.75f);
  let v_19 = (r1.zzz * cb11_11.tint_symbol_4[6u].xyz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = fma(r4.xyz, r1.xxx, r0.xyw);
  r0 = vec4<f32>(v_20.xy, r0.z, v_20.z);
  let v_21 = min(r0.xyw, vec3<f32>(240.0f));
  r0 = vec4<f32>(v_21.xy, r0.z, v_21.z);
  r5.x = (r0.z * r1.y);
  r0.z = clamp(fma(r1.yyyy, r0.zzzz, vec4<f32>(0.40000000596046447754f)).z, 0.0f, 1.0f);
  let v_22 = -(r5.xyxx);
  let v_23 = fma(r0.zz, vec2<f32>(0.5f, 0.48828125f), v_22.xy);
  r1 = vec4<f32>(v_23.xy, r1.zw);
  r0.z = fma((-(r5.xxxx)).z, 0.5f, 1.0f);
  r3.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r1.w = (r1.w * r3.w);
  let v_24 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r4 = vec4<f32>(v_24.xy, r4.zw);
  r1.w = (r1.w * r4.x);
  r0.z = (r0.z * r1.w);
  r0.z = fma(r0.z, -0.5f, 1.0f);
  let v_25 = (r0.zzz * r0.xyw);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_26 = bitcast<vec4<u32>>(r0.xxxx);
  o0 = select(r2, v3, (v_26 != vec4<u32>()));
  let v_27 = (r3.xyz * vec3<f32>(256.0f));
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = floor(r0.xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = -(r0.xyzx);
  let v_30 = fma(r3.xyz, vec3<f32>(256.0f), v_29.xyz);
  r2 = vec4<f32>(v_30.xyz, r2.w);
  let v_31 = (r0.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_31.xyz, o1.w);
  let v_32 = (r2.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_32.xyz, r0.w);
  let v_33 = floor(r0.xyz);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  r0.x = dot(r0.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  r1.z = 0.0f;
  let v_34 = max(r1.xyz, vec3<f32>());
  r0 = vec4<f32>(v_34.xyz, r0.w);
  r5.z = cb11_11.tint_symbol_4[3u].w;
  let v_35 = fma(r0.xyz, r1.www, r5.xyz);
  r0 = vec4<f32>(v_35.xyz, r0.w);
  let v_36 = sqrt(r0.xy);
  o2 = vec4<f32>(v_36.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r4.y);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_37 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_37.xy, r0.zw);
  let v_38 = sqrt(r0.xy);
  o3 = vec4<f32>(v_38.xy, o3.zw);
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
