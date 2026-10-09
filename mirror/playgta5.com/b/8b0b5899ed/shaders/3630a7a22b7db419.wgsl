diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

var<private> r9 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb7_struct {
  tint_symbol_2 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_multisampled_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> sample_pos : array<vec2<f32>, 31u> = array<vec2<f32>, 31u>(vec2<f32>(), vec2<f32>(0.25f), vec2<f32>(-0.25f), vec2<f32>(-0.125f, -0.375f), vec2<f32>(0.375f, -0.125f), vec2<f32>(-0.375f, 0.125f), vec2<f32>(0.125f, 0.375f), vec2<f32>(0.0625f, -0.1875f), vec2<f32>(-0.0625f, 0.1875f), vec2<f32>(0.3125f, 0.0625f), vec2<f32>(-0.1875f, -0.3125f), vec2<f32>(-0.3125f, 0.3125f), vec2<f32>(-0.4375f, -0.0625f), vec2<f32>(0.1875f, 0.4375f), vec2<f32>(0.4375f, -0.4375f), vec2<f32>(0.0625f), vec2<f32>(-0.0625f, -0.1875f), vec2<f32>(-0.1875f, 0.125f), vec2<f32>(0.25f, -0.0625f), vec2<f32>(-0.3125f, -0.125f), vec2<f32>(0.125f, 0.3125f), vec2<f32>(0.3125f, 0.1875f), vec2<f32>(0.1875f, -0.3125f), vec2<f32>(-0.125f, 0.375f), vec2<f32>(0.0f, -0.4375f), vec2<f32>(-0.25f, -0.375f), vec2<f32>(-0.375f, 0.25f), vec2<f32>(-0.5f, 0.0f), vec2<f32>(0.4375f, -0.25f), vec2<f32>(0.375f, 0.4375f), vec2<f32>(-0.4375f, -0.5f));

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v2.xyz / v2.www)).xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v = -(r0.xyzx);
  let v_1 = -(cb11_11.tint_symbol_3[1u].xyzx);
  let v_2 = fma(v.xyz, r0.www, v_1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_4 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = dot(r1.xyz, v_1.xyz);
  r2.y = clamp(vec4<f32>(v_5, v_5, v_5, v_5).y, 0.0f, 1.0f);
  let v_6 = dpdx(v1.xyw);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = dpdy(v1.xyw);
  r4 = vec4<f32>(v_7.xyz, r4.w);
  let v_8 = textureNumSamples(t12);
  let v_9 = sample_pos[select(0u, ((v_8 + 0u) - 1u), ((0u < v_8) & true))];
  r2 = vec4<f32>(r2.xy, v_9.xy);
  let v_10 = (r4.xyz * r2.www);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = fma(r2.zzz, r3.xyz, r4.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = (r3.xyz + v1.xyw);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = (r3.xy / r3.zz);
  r2 = vec4<f32>(r2.xy, v_13.xy);
  let v_14 = (r2.zw * cb2_2.tint_symbol[18u].xy);
  r3 = vec4<f32>(v_14.xy, r3.zw);
  r0.w = textureSample(t4, s4, r2.zwzz.xy).x;
  let v_15 = r3.xy;
  let v_16 = max(v_15, vec2<f32>(-2147483648.0f));
  let v_17 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_16), vec2<i32>(2147483647i), (v_16 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_15 == v_15))));
  r3 = vec4<f32>(v_17.xy, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r4 = textureLoad(t8, bitcast<vec2<i32>>(r3.xy), 0i);
  let v_18 = (r4.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = fract(r5.xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = fma((-(r5.yzyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_20.xy, r5.zw);
  let v_21 = fma(r4.xyz, vec3<f32>(256.0f), r5.xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = (r4.xyz + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_22.xyz, r4.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_23 = (r1.www * r4.xyz);
  r4 = vec4<f32>(v_23.xy, r4.z, v_23.z);
  r1.w = fma(r4.z, r1.w, cb3_3.tint_symbol_1[43u].w);
  r1.w = (r1.w * cb3_3.tint_symbol_1[44u].w);
  r1.w = max(r1.w, 0.0f);
  r2.z = dot(r4.xyw, v_1.xyz);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < 0.0f)));
  r2.w = select(1.0f, -1.0f, (bitcast<u32>(r2.z) != 0u));
  let v_24 = (r2.www * r4.xyw);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = (r2.www * r5.xyz);
  r6 = vec4<f32>(v_25.xyz, r6.w);
  let v_26 = bitcast<vec3<u32>>(r2.zzz);
  let v_27 = r6.xyz;
  let v_28 = select(r5.xyz, v_27, (v_26 != vec3<u32>()));
  r5 = vec4<f32>(v_28.xyz, r5.w);
  let v_29 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = (r2.www * r5.xyz);
  r6 = vec4<f32>(v_30.xyz, r6.w);
  let v_31 = dot(r5.xyz, v_1.xyz);
  r2.w = clamp(vec4<f32>(v_31, v_31, v_31, v_31).w, 0.0f, 1.0f);
  let v_32 = dot((-(r0.xyzx)).xyz, r6.xyz);
  r2.x = clamp(vec4<f32>(v_32, v_32, v_32, v_32).x, 0.0f, 1.0f);
  r1.x = dot(r6.xyz, r1.xyz);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  let v_33 = ((-(r2.xxyx)).yz + vec2<f32>(1.0f));
  let v_34 = r1;
  r1 = vec4<f32>(v_34.x, v_33.xy, v_34.w);
  let v_35 = (r1.yz * r1.yz);
  r5 = vec4<f32>(v_35.xy, r5.zw);
  let v_36 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_36.xy, r5.zw);
  let v_37 = (r1.yz * r5.xy);
  let v_38 = r1;
  r1 = vec4<f32>(v_38.x, v_37.xy, v_38.w);
  r5 = textureLoad(t9, bitcast<vec2<i32>>(r3.xy), 0i);
  r2.y = ((-(r5.zzzz)).y + 1.0f);
  let v_39 = fma(r5.zz, r1.yz, r2.yy);
  let v_40 = r1;
  r1 = vec4<f32>(v_40.x, v_39.xy, v_40.w);
  let v_41 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_41.xy, r5.zw);
  r2.y = fma(r5.y, 512.0f, -500.0f);
  r2.y = max(r2.y, 0.0f);
  let v_42 = -(r2.yyyy);
  r4.z = fma(r5.y, 512.0f, v_42.z);
  r2.y = (r2.y * 558.0f);
  r2.y = fma(r4.z, 3.0f, r2.y);
  r4.z = min(r5.x, 1.0f);
  let v_43 = (r2.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(v_43.xy, r5.zw);
  let v_44 = clamp(((r2.yyyy * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r6 = vec4<f32>(v_44.xy, r6.zw);
  r1.x = (r1.x * r5.y);
  r2.y = (r5.x * 0.125f);
  r1.x = exp2(r1.x);
  r1.x = (r1.z * r1.x);
  r1.y = fma((-(r4.zzzz)).y, r1.y, 1.0f);
  r1.x = (r2.y * r1.x);
  r1.x = (r4.z * r1.x);
  r1.x = (r2.w * r1.x);
  r1.z = (r1.y * r2.w);
  let v_45 = textureLoad(t7, bitcast<vec2<i32>>(r3.xy), 0i).xyz;
  r5 = vec4<f32>(v_45.xyz, r5.w);
  let v_46 = (r5.xyz * r5.xyz);
  r7 = vec4<f32>(v_46.xyz, r7.w);
  let v_47 = fma((-(r5.xyzx)).xyz, r5.xyz, vec3<f32>(1.0f));
  r5 = vec4<f32>(v_47.xyz, r5.w);
  let v_48 = fma(r7.xyz, r1.zzz, r1.xxx);
  r8 = vec4<f32>(v_48.xyz, r8.w);
  r9 = textureLoad(t10, bitcast<vec2<i32>>(r3.xy), 0i);
  r1.x = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r3.xy), 0i).y);
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 8u));
  r1.x = f32(bitcast<u32>(r1.x));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 8.0f)));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.5f < r9.w)));
  r1.z = select(0.25f, 0.5f, (bitcast<u32>(r1.z) != 0u));
  let v_49 = fma(r1.zzz, r5.xyz, r7.xyz);
  r3 = vec4<f32>(v_49.xyz, r3.w);
  let v_50 = (r3.xyz * cb11_11.tint_symbol_3[3u].xyz);
  r3 = vec4<f32>(v_50.xyz, r3.w);
  let v_51 = bitcast<vec3<u32>>(r2.zzz);
  let v_52 = r3.xyz;
  let v_53 = select(cb11_11.tint_symbol_3[3u].xyz, v_52, (v_51 != vec3<u32>()));
  r2 = vec4<f32>(r2.x, v_53.xyz);
  let v_54 = (r2.yzw * r8.xyz);
  r2 = vec4<f32>(r2.x, v_54.xyz);
  r1.z = select(1.0f, 0.0f, (bitcast<u32>(r1.x) != 0u));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  let v_55 = fma(cb3_3.tint_symbol_1[45u].xyz, r1.www, cb3_3.tint_symbol_1[46u].xyz);
  r3 = vec4<f32>(v_55.xyz, r3.w);
  let v_56 = (r1.xxx * r3.xyz);
  r3 = vec4<f32>(v_56.xyz, r3.w);
  let v_57 = fma(cb3_3.tint_symbol_1[47u].xyz, r1.www, cb3_3.tint_symbol_1[48u].xyz);
  r5 = vec4<f32>(v_57.xyz, r5.w);
  let v_58 = fma(cb3_3.tint_symbol_1[43u].xyz, r1.www, cb3_3.tint_symbol_1[44u].xyz);
  r8 = vec4<f32>(v_58.xyz, r8.w);
  let v_59 = fma(r5.xyz, r1.zzz, r3.xyz);
  r1 = vec4<f32>(v_59.x, r1.y, v_59.yz);
  let v_60 = (r0.ww * r9.xy);
  r3 = vec4<f32>(v_60.xy, r3.zw);
  r0.w = (r9.z * 16.0f);
  r0.w = (r2.x * r0.w);
  let v_61 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_61.xy, r3.zw);
  let v_62 = (r3.xy + r3.xy);
  r3 = vec4<f32>(v_62.xy, r3.zw);
  let v_63 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_63.xy, r3.zw);
  let v_64 = (r1.xzw * r3.yyy);
  r1 = vec4<f32>(v_64.x, r1.y, v_64.yz);
  r5.x = cb3_3.tint_symbol_1[46u].w;
  r5.y = cb3_3.tint_symbol_1[47u].w;
  r5.z = cb3_3.tint_symbol_1[48u].w;
  let v_65 = dot(r5.xyz, r4.xyw);
  r2.x = clamp(vec4<f32>(v_65, v_65, v_65, v_65).x, 0.0f, 1.0f);
  let v_66 = fma(cb3_3.tint_symbol_1[49u].xyz, r2.xxx, r8.xyz);
  r5 = vec4<f32>(v_66.xyz, r5.w);
  let v_67 = fma(r5.xyz, r3.xxx, r1.xzw);
  r1 = vec4<f32>(v_67.x, r1.y, v_67.yz);
  r2.x = max(r3.y, r3.x);
  let v_68 = (r1.yyy * r1.xzw);
  r1 = vec4<f32>(v_68.x, r1.y, v_68.yz);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_69 = (r7.xyz * r1.xzw);
  r1 = vec4<f32>(v_69.x, r1.y, v_69.yz);
  let v_70 = fma(r2.yzw, r5.www, r1.xzw);
  r1 = vec4<f32>(v_70.x, r1.y, v_70.yz);
  r2.y = dot(r0.xyz, r4.xyw);
  r2.y = (r2.y + r2.y);
  let v_71 = -(r2.yyyy);
  let v_72 = fma(r4.xyw, v_71.xyz, r0.xyz);
  r0 = vec4<f32>(v_72.xyz, r0.w);
  let v_73 = (r0.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(r2.x, v_73.xyz);
  r0.x = (abs(r0.zzzz).x + 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
  let v_74 = (r2.yzw / r0.xxx);
  r2 = vec4<f32>(r2.x, v_74.xyz);
  let v_75 = ((-(r2.yyzw)).yzw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(r2.x, v_75.xyz);
  let v_76 = bitcast<vec2<u32>>(r0.yy);
  let v_77 = r2.yz;
  let v_78 = select(r2.wz, v_77, (v_76 != vec2<u32>()));
  r0 = vec4<f32>(v_78.xy, r0.zw);
  r0.z = ((-(r6.xxxx)).z + 1.0f);
  r2.y = fma(r0.z, cb5_5.tint_symbol_2[6u].z, -5.0f);
  r2.z = (r0.z * cb5_5.tint_symbol_2[6u].z);
  r0.z = (r0.z * r0.z);
  r2.w = (cb5_5.tint_symbol_2[6u].z + -5.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.w)));
  r0.z = fma(r0.z, 5.0f, r2.w);
  let v_79 = bitcast<u32>(r2.z);
  let v_80 = r2.y;
  r0.z = select(r0.z, v_80, (v_79 != 0u));
  let v_81 = r0.z;
  let v_82 = textureSampleLevel(t1, s1, r0.xyxx.xy, v_81).xyz;
  r0 = vec4<f32>(v_82.xyz, r0.w);
  let v_83 = (r2.xxx * r0.xyz);
  r0 = vec4<f32>(v_83.xyz, r0.w);
  let v_84 = (r6.yyy * r0.xyz);
  r2 = vec4<f32>(v_84.xyz, r2.w);
  let v_85 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_85.xyz, r2.w);
  let v_86 = fma(r0.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r0 = vec4<f32>(v_86.xyz, r0.w);
  let v_87 = fma(r0.xyz, r1.yyy, r1.xzw);
  r0 = vec4<f32>(v_87.xyz, r0.w);
  let v_88 = fma(r7.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_88.xyz, r0.w);
  let v_89 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_89.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
