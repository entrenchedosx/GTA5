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

struct cb9_struct {
  tint_symbol_4 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb9_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  let v = (r0.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r1 = (r0 * v3.xxxw);
  r0.w = clamp(((v5.xyz.zzzz + v5.xyz.zzzz)).w, 0.0f, 1.0f);
  let v_1 = (v1.xy * cb11_11.tint_symbol_4[8u].xx);
  r2 = vec4<f32>(v_1.xy, r2.zw);
  r3 = textureSample(t3, s3, r2.xyxx.xy);
  r2 = textureSample(t4, s4, r2.xyxx.xy);
  r0.w = (r0.w * r3.w);
  let v_2 = fma((-(r0.xyzx)).xyz, v3.xxx, r3.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(r0.www, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1.w = (r1.w * cb2_2.tint_symbol[15u].x);
  let v_4 = ((-(r0.xyzx)).xyz + r2.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  r0.w = (v5.z + -0.5f);
  r0.w = clamp(((r0.wwww + r0.wwww)).w, 0.0f, 1.0f);
  let v_5 = fma(r0.www, r2.xyz, r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = -(r0.xyzx);
  let v_7 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_6.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r0.w = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  let v_8 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_8.xy, r3.zw);
  let v_9 = (r3.yy * v5.xyz.xy);
  let v_10 = r3;
  r3 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  r4 = textureSample(t5, s5, r3.yzyy.xy);
  r2.w = ((-(r4.xxxx)).w + r4.z);
  r4.x = fma(r0.w, r2.w, r4.x);
  let v_11 = (r4.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_12 = r3;
  r3 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r0.w = fma(v3.z, r3.x, -1.0f);
  r0.w = fma(r3.x, r0.w, 1.0f);
  r2.w = (r3.x * v3.z);
  r2.w = (r2.w * cb11_11.tint_symbol_4[2u].x);
  r3.x = (r0.w * r3.y);
  r0.w = fma((-(r3.zzzz)).w, r0.w, 1.0f);
  let v_13 = fma(r3.xxx, r2.xyz, r0.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = ((-(r0.xyzx)).xyz + r4.zzz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = fma(r2.www, r2.xyz, r0.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r2.x = dot(v4.xyz, v4.xyz);
  r2.x = inverseSqrt(r2.x);
  let v_16 = ((-(cb3_3.tint_symbol_1[0u].xxyz)).yzw + vec3<f32>(0.0f, 0.0f, -1.0f));
  r2 = vec4<f32>(r2.x, v_16.xyz);
  let v_17 = fma(cb11_11.tint_symbol_4[6u].www, r2.yzw, cb3_3.tint_symbol_1[0u].xyz);
  r2 = vec4<f32>(r2.x, v_17.xyz);
  let v_18 = -(r2.yzwy);
  let v_19 = fma(v4.xyz, r2.xxx, v_18.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_20 = (r2.www * r2.xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_21 = (r2.www * v2.xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  r2.w = fma(v2.z, r2.w, -0.34999999403953552246f);
  r2.w = clamp(((r2.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r2.w = (r2.w * cb5_5.tint_symbol_2[3u].z);
  r2.x = dot(r3.xyz, r2.xyz);
  let v_22 = fma(r3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r3 = vec4<f32>(v_22.xyz, r3.w);
  r2.x = clamp(((r2.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r2.x = log2(r2.x);
  let v_23 = (v1.xy * cb11_11.tint_symbol_4[5u].ww);
  let v_24 = r2;
  r2 = vec4<f32>(v_24.x, v_23.xy, v_24.w);
  r4 = textureSample(t6, s6, r2.yzyy.xy);
  r2.y = fma(r4.w, 15.0f, 0.00000000999999993923f);
  r2.x = (r2.x * r2.y);
  r2.x = exp2(r2.x);
  let v_25 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_25.xy, r4.zw);
  let v_26 = -(cb11_11.tint_symbol_4[4u].xxxx);
  r2.y = fma(r4.w, cb11_11.tint_symbol_4[4u].x, v_26.y);
  r2.y = fma(v5.z, r2.y, cb11_11.tint_symbol_4[4u].x);
  r5.y = (r2.y * 0.001953125f);
  r2.y = dot(r4.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r2.z = (v3.x * cb11_11.tint_symbol_4[2u].w);
  r2.z = (r2.y * r2.z);
  let v_27 = -(cb11_11.tint_symbol_4[4u].yyyy);
  r2.y = fma(r2.y, cb11_11.tint_symbol_4[4u].y, v_27.y);
  r2.y = fma(v5.z, r2.y, cb11_11.tint_symbol_4[4u].y);
  r2.y = (r2.y * v3.x);
  r2.y = (r2.y * v2.w);
  r2.z = (r2.z * 0.75f);
  let v_28 = (r2.zzz * cb11_11.tint_symbol_4[6u].xyz);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  let v_29 = fma(r4.xyz, r2.xxx, r0.xyz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = min(r0.xyz, vec3<f32>(240.0f));
  r0 = vec4<f32>(v_30.xyz, r0.w);
  r5.x = (r0.w * r2.y);
  r0.w = clamp(fma(r2.yyyy, r0.wwww, vec4<f32>(0.40000000596046447754f)).w, 0.0f, 1.0f);
  let v_31 = -(r5.xyxx);
  let v_32 = fma(r0.ww, vec2<f32>(0.5f, 0.48828125f), v_31.xy);
  r2 = vec4<f32>(v_32.xy, r2.zw);
  r0.w = fma((-(r5.xxxx)).w, 0.5f, 1.0f);
  r3.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r2.w = (r2.w * r3.w);
  let v_33 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r4 = vec4<f32>(v_33.xy, r4.zw);
  r2.w = (r2.w * r4.x);
  r0.w = (r0.w * r2.w);
  r0.w = fma(r0.w, -0.5f, 1.0f);
  let v_34 = (r0.www * r0.xyz);
  r1 = vec4<f32>(v_34.xyz, r1.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_35 = bitcast<vec4<u32>>(r0.xxxx);
  o0 = select(r1, v3, (v_35 != vec4<u32>()));
  let v_36 = (r3.xyz * vec3<f32>(256.0f));
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = floor(r0.xyz);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = -(r0.xyzx);
  let v_39 = fma(r3.xyz, vec3<f32>(256.0f), v_38.xyz);
  r1 = vec4<f32>(v_39.xyz, r1.w);
  let v_40 = (r0.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_40.xyz, o1.w);
  let v_41 = (r1.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = floor(r0.xyz);
  r0 = vec4<f32>(v_42.xyz, r0.w);
  r0.x = dot(r0.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  r2.z = 0.0f;
  let v_43 = max(r2.xyz, vec3<f32>());
  r0 = vec4<f32>(v_43.xyz, r0.w);
  r5.z = cb11_11.tint_symbol_4[3u].w;
  let v_44 = fma(r0.xyz, r2.www, r5.xyz);
  r0 = vec4<f32>(v_44.xyz, r0.w);
  let v_45 = sqrt(r0.xy);
  o2 = vec4<f32>(v_45.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r4.y);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_46 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_46.xy, r0.zw);
  let v_47 = sqrt(r0.xy);
  o3 = vec4<f32>(v_47.xy, o3.zw);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4, v5);
  return tint_symbol_5(o0, o1, o2, o3);
}
