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

struct cb5_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb5_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
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
  r1.x = dot(v4.xyz, v4.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_11 = ((-(cb3_3.tint_symbol_1[0u].xxyz)).yzw + vec3<f32>(0.0f, 0.0f, -1.0f));
  r1 = vec4<f32>(r1.x, v_11.xyz);
  let v_12 = fma(cb11_11.tint_symbol_4[4u].www, r1.yzw, cb3_3.tint_symbol_1[0u].xyz);
  r1 = vec4<f32>(r1.x, v_12.xyz);
  let v_13 = -(r1.yzwy);
  let v_14 = fma(v4.xyz, r1.xxx, v_13.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_15 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  r3 = textureSample(t4, s4, v1.xyxx.xy);
  let v_16 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_16.xy, r3.zw);
  let v_17 = (r3.yyy * v6.xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = fma(r3.xxx, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  let v_19 = fma(r1.www, v2.xyz, r4.xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_20 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_20.xy, r3.z, v_20.z);
  r1.w = fma(r3.z, r1.w, -0.34999999403953552246f);
  r1.w = clamp(((r1.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r1.w = (r1.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = dot(r3.xyw, r1.xyz);
  let v_21 = fma(r3.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r3 = vec4<f32>(v_21.xyz, r3.w);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r4 = textureSample(t5, s5, v1.xyxx.xy);
  let v_22 = (r4.xy * r4.xy);
  let v_23 = r1;
  r1 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  r4.w = ((-(r4.zzzz)).w + 1.0f);
  r3.w = (r1.y * v3.x);
  r3.w = (r3.w * v2.w);
  r3.w = (r3.w * 0.60000002384185791016f);
  r4.x = (r0.z * r3.w);
  let v_24 = (r1.zz * vec2<f32>(20.0f, 0.8984375f));
  let v_25 = r4;
  r4 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
  let v_26 = (r4.xy + vec2<f32>(0.40000000596046447754f, 0.00000000999999993923f));
  r5 = vec4<f32>(v_26.xy, r5.zw);
  r0.z = (r1.x * r5.y);
  r5.x = clamp(r5.xxxx.x, 0.0f, 1.0f);
  let v_27 = -(r4.xzxx);
  let v_28 = fma(r5.xx, vec2<f32>(0.5f, 0.48828125f), v_27.xy);
  r5 = vec4<f32>(v_28.xy, r5.zw);
  r0.z = exp2(r0.z);
  r1.x = (v3.x * cb11_11.tint_symbol_4[2u].w);
  r1.x = (r1.y * r1.x);
  r1.x = (r1.x * 0.60000002384185791016f);
  let v_29 = fma(r1.xxx, r0.zzz, r0.xyw);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  r0.w = fma((-(r4.xxxx)).w, 0.5f, 1.0f);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r1.x = (r1.x * r1.w);
  let v_30 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  let v_31 = r1;
  r1 = vec4<f32>(v_31.x, v_30.xy, v_31.w);
  r1.x = (r1.y * r1.x);
  r0.w = (r0.w * r1.x);
  r0.w = fma(r0.w, -0.5f, 1.0f);
  let v_32 = (r0.www * r0.xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_33 = bitcast<vec4<u32>>(r0.xxxx);
  o0 = select(r2, v3, (v_33 != vec4<u32>()));
  let v_34 = (r3.xyz * vec3<f32>(256.0f));
  r0 = vec4<f32>(v_34.xyz, r0.w);
  let v_35 = floor(r0.xyz);
  r0 = vec4<f32>(v_35.xyz, r0.w);
  let v_36 = -(r0.xyzx);
  let v_37 = fma(r3.xyz, vec3<f32>(256.0f), v_36.xyz);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = (r0.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_38.xyz, o1.w);
  let v_39 = (r2.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_39.xyz, r0.w);
  let v_40 = floor(r0.xyz);
  r0 = vec4<f32>(v_40.xyz, r0.w);
  r0.x = dot(r0.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  r5.z = 0.0f;
  let v_41 = max(r5.xyz, vec3<f32>());
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = fma(r0.xyz, r1.xxx, r4.xzw);
  r0 = vec4<f32>(v_42.xyz, r0.w);
  let v_43 = sqrt(r0.xy);
  o2 = vec4<f32>(v_43.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r1.z);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_44 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_44.xy, r0.zw);
  let v_45 = sqrt(r0.xy);
  o3 = vec4<f32>(v_45.xy, o3.zw);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3);
}
