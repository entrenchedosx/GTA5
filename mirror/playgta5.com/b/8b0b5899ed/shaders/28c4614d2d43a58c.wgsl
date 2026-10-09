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

struct cb4_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct_1;

struct cb7_struct {
  tint_symbol_4 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb7_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  let v = ((-(cb9_9.tint_symbol_4[3u].xyxx)).xy + cb9_9.tint_symbol_4[3u].zw);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (vec2<f32>(8.0f, 1.0f) / r0.xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = clamp(((v1.xxxy + -(cb9_9.tint_symbol_4[3u].xxxy))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(r0.xy, v_2.xy);
  let v_3 = (r0.xy * r0.zw);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = trunc(r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = r1.x;
  let v_6 = max(v_5, -2147483648.0f);
  r1.z = bitcast<f32>(select(select(i32(v_6), 2147483647i, (v_6 >= 2147483648.0f)), 0i, !((v_5 == v_5))));
  let v_7 = -(r1.xyxx);
  let v_8 = fma(r0.zw, r0.xy, v_7.xy);
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r1.zzzz) == vec4<i32>(0i, 1i, 2i, 3i))));
  r1 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r1.zzzz) == vec4<i32>(4i, 5i, 6i, 7i))));
  r1 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r1) & vec4<u32>(1065353216u)));
  r0.z = dot(cb9_9.tint_symbol_4[1u], r1);
  r1 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  r0.w = dot(cb9_9.tint_symbol_4[0u], r1);
  r0.z = (r0.z + r0.w);
  r0.z = trunc(r0.z);
  r0.z = (r0.z / cb9_9.tint_symbol_4[2u].z);
  r0.w = trunc(r0.z);
  r1.x = ((-(r0.wwww)).x + r0.z);
  r1.y = (r0.w / cb9_9.tint_symbol_4[2u].w);
  let v_9 = fma(r0.xy, cb9_9.tint_symbol_4[2u].xy, r1.xy);
  r0 = vec4<f32>(v_9.xy, r0.zw);
  let v_10 = dpdx(v1.xy);
  r0 = vec4<f32>(r0.xy, v_10.xy);
  let v_11 = (r0.zw * vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_11.xy);
  let v_12 = dpdy(v1.xy);
  r1 = vec4<f32>(v_12.xy, r1.zw);
  let v_13 = (r1.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_13.xy, r1.zw);
  let v_14 = r0.zw;
  let v_15 = r1.xy;
  r2 = textureSampleGrad(t7, s7, r0.xyxx.xy, v_14, v_15);
  let v_16 = r0.zw;
  let v_17 = r1.xy;
  r3 = textureSampleGrad(t8, s8, r0.xyxx.xy, v_16, v_17);
  let v_18 = abs(r0.zwzz);
  let v_19 = max(v_18.xy, abs(r1.xyxx).xy);
  r0 = vec4<f32>(v_19.xy, r0.zw);
  r0.x = max(r0.y, r0.x);
  let v_20 = (r0.xx * cb9_9.tint_symbol_4[6u].xy);
  r0 = vec4<f32>(v_20.xy, r0.zw);
  let v_21 = max(r0.xy, cb9_9.tint_symbol_4[6u].zw);
  r0 = vec4<f32>(v_21.xy, r0.zw);
  let v_22 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (v1.xy < cb9_9.tint_symbol_4[3u].xy)));
  r1 = vec4<f32>(v_22.xy, r1.zw);
  let v_23 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb9_9.tint_symbol_4[3u].zw < v1.xy)));
  r1 = vec4<f32>(r1.xy, v_23.xy);
  r1 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r1) & vec4<u32>(1065353216u)));
  r0.z = dot(r1, r1);
  r0.z = min(r0.z, 1.0f);
  let v_24 = -(r2.xxxx);
  r0.w = fma(r0.z, v_24.w, r2.x);
  let v_25 = -(r3.xyxx);
  let v_26 = fma(r0.zz, v_25.xy, r3.xy);
  r1 = vec4<f32>(v_26.xy, r1.zw);
  let v_27 = (r1.xy + vec2<f32>(-0.5f));
  r1 = vec4<f32>(v_27.xy, r1.zw);
  let v_28 = (r1.xy * cb9_9.tint_symbol_4[5u].xx);
  r1 = vec4<f32>(v_28.xy, r1.zw);
  r0.x = ((-(r0.xxxx)).x + cb9_9.tint_symbol_4[5u].y);
  r0.y = (r0.y + cb9_9.tint_symbol_4[5u].y);
  r0.y = ((-(r0.xxxx)).y + r0.y);
  r0.x = ((-(r0.xxxx)).x + r0.w);
  r0.y = (1.0f / r0.y);
  r0.x = clamp(((r0.yyyy * r0.xxxx)).x, 0.0f, 1.0f);
  r0.y = fma(r0.x, -2.0f, 3.0f);
  r0.x = (r0.x * r0.x);
  r0.x = (r0.x * r0.y);
  r2 = textureSample(t5, s5, v1.xyxx.xy);
  let v_29 = -(r2.xxyz);
  let v_30 = fma(cb9_9.tint_symbol_4[4u].www, cb9_9.tint_symbol_4[4u].xyz, v_29.yzw);
  r0 = vec4<f32>(r0.x, v_30.xyz);
  let v_31 = fma(r0.xxx, r0.yzw, r2.xyz);
  r0 = vec4<f32>(r0.x, v_31.xyz);
  let v_32 = (r0.yzw * cb11_11.tint_symbol_3[0u].xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  r2 = (r2 * v3.xxxw);
  let v_33 = -(r2.xxyz);
  let v_34 = fma(cb11_11.tint_symbol_3[3u].xyz, cb11_11.tint_symbol_3[2u].yyy, v_33.yzw);
  r0 = vec4<f32>(r0.x, v_34.xyz);
  r1.z = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_3[2u].z);
  let v_35 = ((-(cb11_11.tint_symbol_3[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_35.xy, r3.zw);
  let v_36 = (r3.yy * v1.zw);
  let v_37 = r3;
  r3 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
  r4 = textureSample(t3, s3, r3.yzyy.xy);
  r1.w = ((-(r4.xxxx)).w + r4.z);
  r4.x = fma(r1.z, r1.w, r4.x);
  let v_38 = (r4.xy * cb11_11.tint_symbol_3[2u].xx);
  r1 = vec4<f32>(r1.xy, v_38.xy);
  r3.y = fma(v3.z, r3.x, -1.0f);
  r3.y = fma(r3.x, r3.y, 1.0f);
  r3.x = (r3.x * v3.z);
  r3.x = (r3.x * cb11_11.tint_symbol_3[2u].x);
  r1.z = (r1.z * r3.y);
  r1.w = fma((-(r1.wwww)).w, r3.y, 1.0f);
  let v_39 = fma(r1.zzz, r0.yzw, r2.xyz);
  r0 = vec4<f32>(r0.x, v_39.xyz);
  o0.w = (r2.w * cb2_2.tint_symbol[15u].x);
  let v_40 = ((-(r0.yzwy)).xyz + r4.zzz);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  let v_41 = fma(r3.xxx, r2.xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_41.xyz);
  r2 = textureSample(t6, s6, v1.xyxx.xy);
  let v_42 = fma(r1.xy, r0.xx, r2.xy);
  r1 = vec4<f32>(v_42.xy, r1.zw);
  let v_43 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_43.xy, r1.zw);
  r0.x = dot(r1.xy, r1.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = sqrt(abs(r0.xxxx).x);
  r1.z = max(cb11_11.tint_symbol_3[3u].w, 0.00100000004749745131f);
  let v_44 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_44.xy, r1.zw);
  let v_45 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_45.xyz, r2.w);
  let v_46 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_46.xyz, r1.w);
  let v_47 = fma(r0.xxx, v2.xyz, r1.xyz);
  r1 = vec4<f32>(v_47.xyz, r1.w);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = inverseSqrt(r0.x);
  r2.x = fma(r1.z, r0.x, -0.34999999403953552246f);
  let v_48 = (r0.xxx * r1.xyz);
  r1 = vec4<f32>(v_48.xyz, r1.w);
  let v_49 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_49.xyz, o1.w);
  r0.x = clamp(((r2.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.x = (r0.x * r1.x);
  let v_50 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r1 = vec4<f32>(v_50.xy, r1.zw);
  r0.x = (r0.x * r1.x);
  r1.x = (v3.x * 0.20000000298023223877f);
  r2.x = (r1.w * r1.x);
  r1.x = clamp(fma(r1.xxxx, r1.wwww, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  r1.z = fma((-(r2.xxxx)).z, 0.5f, 1.0f);
  r1.z = (r0.x * r1.z);
  r1.z = fma(r1.z, -0.5f, 1.0f);
  let v_51 = (r0.yzw * r1.zzz);
  o0 = vec4<f32>(v_51.xyz, o0.w);
  o1.w = 0.0f;
  r2.y = 0.9765625f;
  let v_52 = -(r2.xxyx);
  let v_53 = fma(r1.xx, vec2<f32>(0.5f, 0.48828125f), v_52.yz);
  let v_54 = r0;
  r0 = vec4<f32>(v_54.x, v_53.xy, v_54.w);
  let v_55 = max(r0.yz, vec2<f32>());
  let v_56 = r0;
  r0 = vec4<f32>(v_56.x, v_55.xy, v_56.w);
  let v_57 = fma(r0.yz, r0.xx, r2.xy);
  r0 = vec4<f32>(v_57.xy, r0.zw);
  let v_58 = sqrt(r0.xy);
  o2 = vec4<f32>(v_58.xy, o2.zw);
  o2 = vec4<f32>(o2.xy, vec2<f32>(0.98000001907348632812f, 1.0f));
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r1.y);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_59 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_59.xy, r0.zw);
  let v_60 = sqrt(r0.xy);
  o3 = vec4<f32>(v_60.xy, o3.zw);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3);
}
