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

struct cb10_struct {
  tint_symbol_4 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb10_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0.x = clamp(((v7.xyz.zzzz + v7.xyz.zzzz)).x, 0.0f, 1.0f);
  let v = (v1.xy * cb11_11.tint_symbol_4[9u].zz);
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  r1 = textureSample(t3, s3, r0.yzyy.xy);
  r2 = textureSample(t4, s4, r0.yzyy.xy);
  r0.x = (r0.x * r1.w);
  let v_2 = (v7.xyz.xy * cb11_11.tint_symbol_4[0u].xx);
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  r3 = textureSample(t0, s0, r0.yzyy.xy);
  let v_4 = (r3.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  let v_5 = fma((-(r3.xyzx)).xyz, cb11_11.tint_symbol_4[0u].yzw, r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(r0.xxx, r1.xyz, r0.yzw);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = ((-(r0.xyzx)).xyz + r2.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r0.w = (v7.z + -0.5f);
  r0.w = clamp(((r0.wwww + r0.wwww)).w, 0.0f, 1.0f);
  let v_8 = fma(r0.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r1 = textureSample(t5, s5, v1.zwzz.xy);
  let v_9 = -(r0.xyzx);
  let v_10 = fma(r1.xyz, cb11_11.tint_symbol_4[1u].xyz, v_9.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  r0.w = (r1.w * cb11_11.tint_symbol_4[1u].w);
  let v_11 = fma(r0.www, r1.xyz, r0.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  r0 = (r3 * v3.xxxw);
  let v_12 = -(r0.xyzx);
  let v_13 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_12.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  r1.w = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  let v_14 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r2 = vec4<f32>(v_14.xy, r2.zw);
  let v_15 = (r2.yy * v7.xyz.xy);
  let v_16 = r2;
  r2 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  r3 = textureSample(t6, s6, r2.yzyy.xy);
  r2.y = ((-(r3.xxxx)).y + r3.z);
  r3.x = fma(r1.w, r2.y, r3.x);
  let v_17 = (r3.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_18 = r2;
  r2 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  r1.w = fma(v3.z, r2.x, -1.0f);
  r1.w = fma(r2.x, r1.w, 1.0f);
  r2.x = (r2.x * v3.z);
  r2.x = (r2.x * cb11_11.tint_symbol_4[2u].x);
  r2.y = (r1.w * r2.y);
  r1.w = fma((-(r2.zzzz)).w, r1.w, 1.0f);
  let v_19 = fma(r2.yyy, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r4.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_20 = ((-(r0.xyzx)).xyz + r3.zzz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = fma(r2.xxx, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  r0.w = dot(v4.xyz, v4.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_22 = ((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r1 = vec4<f32>(v_22.xyz, r1.w);
  let v_23 = fma(cb11_11.tint_symbol_4[7u].www, r1.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  let v_24 = -(r1.xyzx);
  let v_25 = fma(v4.xyz, r0.www, v_24.xyz);
  r1 = vec4<f32>(v_25.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_26 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  r0.w = min(cb11_11.tint_symbol_4[2u].x, 0.5f);
  r2 = textureSample(t7, s7, v7.xyz.xyxx.xy);
  r3 = textureSample(t8, s8, v1.xyxx.xy);
  let v_27 = -(r3.xyxx);
  let v_28 = (r2.xy + v_27.xy);
  r2 = vec4<f32>(v_28.xy, r2.zw);
  let v_29 = fma(r0.ww, r2.xy, r3.xy);
  r2 = vec4<f32>(v_29.xy, r2.zw);
  let v_30 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_30.xy, r2.zw);
  r0.w = max(cb11_11.tint_symbol_4[8u].x, 0.00100000004749745131f);
  let v_31 = (r0.ww * r2.xy);
  r2 = vec4<f32>(r2.xy, v_31.xy);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  let v_32 = (r2.www * v6.xyz);
  r2 = vec4<f32>(v_32.xy, r2.z, v_32.z);
  let v_33 = fma(r2.zzz, v5.xyz, r2.xyw);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  let v_34 = fma(r0.www, v2.xyz, r2.xyz);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_35 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_35.xy, r2.z, v_35.z);
  r0.w = fma(r2.z, r0.w, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = dot(r2.xyw, r1.xyz);
  let v_36 = fma(r2.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r2 = vec4<f32>(v_36.xyz, r2.w);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  let v_37 = (v7.xyz.xy * cb11_11.tint_symbol_4[5u].ww);
  let v_38 = r1;
  r1 = vec4<f32>(v_38.x, v_37.xy, v_38.w);
  r3 = textureSample(t9, s9, r1.yzyy.xy);
  r1.y = fma(cb11_11.tint_symbol_4[6u].x, r3.w, 0.00000000999999993923f);
  r1.x = (r1.x * r1.y);
  r1.x = exp2(r1.x);
  let v_39 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_39.xy, r3.zw);
  r1.y = (r3.w * cb11_11.tint_symbol_4[4u].x);
  r5.y = (r1.y * 0.001953125f);
  r1.y = dot(r3.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r1.z = (cb11_11.tint_symbol_4[2u].w * cb11_11.tint_symbol_4[6u].y);
  r1.z = (r1.z * v3.x);
  r1.z = (r1.y * r1.z);
  r1.y = (r1.y * cb11_11.tint_symbol_4[4u].y);
  r1.y = (r1.y * v3.x);
  r1.y = (r1.y * v2.w);
  let v_40 = (r1.zzz * cb11_11.tint_symbol_4[7u].xyz);
  r3 = vec4<f32>(v_40.xyz, r3.w);
  let v_41 = fma(r3.xyz, r1.xxx, r0.xyz);
  r3 = vec4<f32>(v_41.xyz, r3.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[6u].y)));
  let v_42 = bitcast<vec3<u32>>(r1.xxx);
  let v_43 = r3.xyz;
  let v_44 = select(r0.xyz, v_43, (v_42 != vec3<u32>()));
  r0 = vec4<f32>(v_44.xyz, r0.w);
  let v_45 = min(r0.xyz, vec3<f32>(240.0f));
  r0 = vec4<f32>(v_45.xyz, r0.w);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  let v_46 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  let v_47 = r1;
  r1 = vec4<f32>(v_46.x, v_47.y, v_46.y, v_47.w);
  r0.w = (r0.w * r1.x);
  r5.x = (r1.w * r1.y);
  r1.x = clamp(fma(r1.yyyy, r1.wwww, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_48 = -(r5.xyxx);
  let v_49 = fma(r1.xx, vec2<f32>(0.5f, 0.48828125f), v_48.xy);
  r3 = vec4<f32>(v_49.xy, r3.zw);
  r1.x = fma((-(r5.xxxx)).x, 0.5f, 1.0f);
  r1.x = (r0.w * r1.x);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_50 = (r0.xyz * r1.xxx);
  r4 = vec4<f32>(v_50.xyz, r4.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_51 = bitcast<vec4<u32>>(r0.xxxx);
  o0 = select(r4, v3, (v_51 != vec4<u32>()));
  let v_52 = (r2.xyz * vec3<f32>(256.0f));
  r0 = vec4<f32>(v_52.xyz, r0.w);
  let v_53 = floor(r0.xyz);
  r0 = vec4<f32>(v_53.xyz, r0.w);
  let v_54 = -(r0.xyxz);
  let v_55 = fma(r2.xyz, vec3<f32>(256.0f), v_54.xyw);
  r1 = vec4<f32>(v_55.xy, r1.z, v_55.z);
  let v_56 = (r0.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_56.xyz, o1.w);
  let v_57 = (r1.xyw * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_57.xyz, r0.w);
  let v_58 = floor(r0.xyz);
  r0 = vec4<f32>(v_58.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(32.0f, 4.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  r3.z = 0.0f;
  let v_59 = max(r3.xyz, vec3<f32>());
  r0 = vec4<f32>(v_59.xyz, r0.w);
  r5.z = cb11_11.tint_symbol_4[3u].w;
  let v_60 = fma(r0.xyz, r0.www, r5.xyz);
  r0 = vec4<f32>(v_60.xyz, r0.w);
  let v_61 = sqrt(r0.xy);
  o2 = vec4<f32>(v_61.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r1.z);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_62 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_62.xy, r0.zw);
  let v_63 = sqrt(r0.xy);
  o3 = vec4<f32>(v_63.xy, o3.zw);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_5(o0, o1, o2, o3);
}
