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

var<private> r10 : vec4<f32>;

var<private> r11 : vec4<f32>;

var<private> r12 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb15_struct {
  tint_symbol_4 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb18_struct {
  tint_symbol_5 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb18_struct;

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

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> sample_pos : array<vec2<f32>, 31u> = array<vec2<f32>, 31u>(vec2<f32>(), vec2<f32>(0.25f), vec2<f32>(-0.25f), vec2<f32>(-0.125f, -0.375f), vec2<f32>(0.375f, -0.125f), vec2<f32>(-0.375f, 0.125f), vec2<f32>(0.125f, 0.375f), vec2<f32>(0.0625f, -0.1875f), vec2<f32>(-0.0625f, 0.1875f), vec2<f32>(0.3125f, 0.0625f), vec2<f32>(-0.1875f, -0.3125f), vec2<f32>(-0.3125f, 0.3125f), vec2<f32>(-0.4375f, -0.0625f), vec2<f32>(0.1875f, 0.4375f), vec2<f32>(0.4375f, -0.4375f), vec2<f32>(0.0625f), vec2<f32>(-0.0625f, -0.1875f), vec2<f32>(-0.1875f, 0.125f), vec2<f32>(0.25f, -0.0625f), vec2<f32>(-0.3125f, -0.125f), vec2<f32>(0.125f, 0.3125f), vec2<f32>(0.3125f, 0.1875f), vec2<f32>(0.1875f, -0.3125f), vec2<f32>(-0.125f, 0.375f), vec2<f32>(0.0f, -0.4375f), vec2<f32>(-0.25f, -0.375f), vec2<f32>(-0.375f, 0.25f), vec2<f32>(-0.5f, 0.0f), vec2<f32>(0.4375f, -0.25f), vec2<f32>(0.375f, 0.4375f), vec2<f32>(-0.4375f, -0.5f));

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  let v_1 = textureNumSamples(t12);
  let v_2 = sample_pos[select(0u, ((v_1 + 0u) - 1u), ((0u < v_1) & true))];
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = dpdx(v1.xyw);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = dpdy(v1.xyw);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = (r0.yyy * r2.xyz);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = fma(r0.xxx, r1.xyz, r0.yzw);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (r0.xyz + v1.xyw);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r0.xy / r0.zz);
  r0 = vec4<f32>(v_8.xy, r0.zw);
  let v_9 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(r0.xy, v_9.xy);
  let v_10 = r0.zw;
  let v_11 = max(v_10, vec2<f32>(-2147483648.0f));
  let v_12 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_11), vec2<i32>(2147483647i), (v_11 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_10 == v_10))));
  r1 = vec4<f32>(v_12.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.z = textureLoad(t12, bitcast<vec2<i32>>(r1.xy), 0i).x;
  r0.w = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r1.xy), 0i).y);
  r0.z = ((-(r0.zzzz)).z + cb11_11.tint_symbol_5[17u].w);
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 8u));
  r0.w = f32(bitcast<u32>(r0.w));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 8.0f)));
  r2.x = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  let v_13 = textureLoad(t7, bitcast<vec2<i32>>(r1.xy), 0i).xyz;
  r2 = vec4<f32>(r2.x, v_13.xyz);
  let v_14 = (r2.yzw * r2.yzw);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb11_11.tint_symbol_5[17u].z / r0.z);
  r4 = vec4<f32>(((v2.xyz / v2.www)).xyz, r4.w);
  let v_15 = fma(r4.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  r6 = textureLoad(t9, bitcast<vec2<i32>>(r1.xy), 0i);
  let v_16 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_16.xy, r6.zw);
  r7 = textureLoad(t8, bitcast<vec2<i32>>(r1.xy), 0i);
  let v_17 = (r7.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r8 = vec4<f32>(v_17.xyz, r8.w);
  let v_18 = fract(r8.xyz);
  r8 = vec4<f32>(v_18.xyz, r8.w);
  let v_19 = fma((-(r8.yzyy)).xy, vec2<f32>(0.125f), r8.xy);
  r8 = vec4<f32>(v_19.xy, r8.zw);
  let v_20 = fma(r7.xyz, vec3<f32>(256.0f), r8.xyz);
  r7 = vec4<f32>(v_20.xyz, r7.w);
  let v_21 = (r7.xyz + vec3<f32>(-128.0f));
  r7 = vec4<f32>(v_21.xyz, r7.w);
  r0.z = dot(r7.xyz, r7.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_22 = (r0.zzz * r7.xyz);
  r7 = vec4<f32>(v_22.xy, r7.z, v_22.z);
  r1 = textureLoad(t10, bitcast<vec2<i32>>(r1.xy), 0i);
  r0.x = textureSample(t4, s4, r0.xyxx.xy).x;
  let v_23 = (r0.xx * r1.xy);
  r0 = vec4<f32>(v_23.xy, r0.zw);
  let v_24 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_24.xy, r0.zw);
  let v_25 = (r0.xy + r0.xy);
  r0 = vec4<f32>(v_25.xy, r0.zw);
  r1.x = (r1.z * 16.0f);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.5f < r1.w)));
  r1.z = (r1.w + -0.5f);
  let v_26 = bitcast<u32>(r1.y);
  let v_27 = r1.z;
  r1.z = select(r1.w, v_27, (v_26 != 0u));
  r1.z = clamp(((r1.zzzz + r1.zzzz)).z, 0.0f, 1.0f);
  r6.x = clamp(r6.xxxx.x, 0.0f, 1.0f);
  let v_28 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_28.xy, r0.zw);
  r1.w = fma(r6.y, 512.0f, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_29 = -(r1.wwww);
  r3.w = fma(r6.y, 512.0f, v_29.w);
  r1.w = (r1.w * 558.0f);
  r6.y = fma(r3.w, 3.0f, r1.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_30 = (r1.www * r4.xyz);
  r8 = vec4<f32>(v_30.xyz, r8.w);
  let v_31 = -(r4.xyzx);
  let v_32 = -(cb11_11.tint_symbol_5[1u].xyzx);
  let v_33 = fma(v_31.xyz, r1.www, v_32.xyz);
  r4 = vec4<f32>(v_33.xyz, r4.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_34 = (r1.www * r4.xyz);
  r4 = vec4<f32>(v_34.xyz, r4.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  r3.w = dot(r7.xyw, v_32.xyz);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < 0.0f)));
  r3.w = select(1.0f, -1.0f, (bitcast<u32>(r3.w) != 0u));
  let v_35 = (r3.www * r7.xyw);
  r9 = vec4<f32>(v_35.xyz, r9.w);
  let v_36 = bitcast<u32>(r1.w);
  r3.w = select(r3.w, 1.0f, (v_36 != 0u));
  r4.w = bitcast<f32>(~(bitcast<u32>(r1.w)));
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < 0.0f)));
  r4.w = bitcast<f32>((bitcast<u32>(r4.w) & bitcast<u32>(r5.w)));
  r1.y = select(0.25f, 0.5f, (bitcast<u32>(r1.y) != 0u));
  let v_37 = fma((-(r2.yyzw)).yzw, r2.yzw, vec3<f32>(1.0f));
  r2 = vec4<f32>(r2.x, v_37.xyz);
  let v_38 = fma(r1.yyy, r2.yzw, r3.xyz);
  r2 = vec4<f32>(r2.x, v_38.xyz);
  let v_39 = (r2.yzw * cb11_11.tint_symbol_5[3u].xyz);
  r2 = vec4<f32>(r2.x, v_39.xyz);
  let v_40 = (r9.xyz * r3.www);
  r10 = vec4<f32>(v_40.xyz, r10.w);
  let v_41 = bitcast<vec3<u32>>(r4.www);
  let v_42 = r10.xyz;
  let v_43 = select(r9.xyz, v_42, (v_41 != vec3<u32>()));
  r9 = vec4<f32>(v_43.xyz, r9.w);
  let v_44 = bitcast<vec3<u32>>(r4.www);
  let v_45 = r2.yzw;
  let v_46 = select(cb11_11.tint_symbol_5[3u].xyz, v_45, (v_44 != vec3<u32>()));
  r2 = vec4<f32>(r2.x, v_46.xyz);
  let v_47 = (r6.ww * r6.xy);
  r10 = vec4<f32>(v_47.xy, r10.zw);
  let v_48 = bitcast<vec2<u32>>(r1.ww);
  let v_49 = r10.xy;
  let v_50 = select(r6.xy, v_49, (v_48 != vec2<u32>()));
  r10 = vec4<f32>(v_50.xy, r10.zw);
  let v_51 = (r3.www * r9.xyz);
  r9 = vec4<f32>(v_51.xyz, r9.w);
  let v_52 = dot(r9.xyz, v_32.xyz);
  r1.y = clamp(vec4<f32>(v_52, v_52, v_52, v_52).y, 0.0f, 1.0f);
  let v_53 = (r3.www * r9.xyz);
  r9 = vec4<f32>(v_53.xyz, r9.w);
  let v_54 = dot((-(r8.xyzx)).xyz, r9.xyz);
  r11.x = clamp(vec4<f32>(v_54, v_54, v_54, v_54).x, 0.0f, 1.0f);
  let v_55 = dot(r4.xyz, v_32.xyz);
  r11.y = clamp(vec4<f32>(v_55, v_55, v_55, v_55).y, 0.0f, 1.0f);
  let v_56 = ((-(r11.xxxy)).zw + vec2<f32>(1.0f));
  r10 = vec4<f32>(r10.xy, v_56.xy);
  let v_57 = (r10.zw * r10.zw);
  let v_58 = r11;
  r11 = vec4<f32>(v_58.x, v_57.xy, v_58.w);
  let v_59 = (r11.yz * r11.yz);
  let v_60 = r11;
  r11 = vec4<f32>(v_60.x, v_59.xy, v_60.w);
  let v_61 = (r10.zw * r11.yz);
  r10 = vec4<f32>(r10.xy, v_61.xy);
  r3.w = ((-(r6.zzzz)).w + 1.0f);
  let v_62 = fma(r6.zz, r10.zw, r3.ww);
  let v_63 = r6;
  r6 = vec4<f32>(v_62.x, v_63.y, v_62.y, v_63.w);
  let v_64 = (r10.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  let v_65 = r10;
  r10 = vec4<f32>(v_65.x, v_64.xy, v_65.w);
  r3.w = (r10.y * 0.125f);
  r4.w = fma((-(r10.xxxx)).w, r6.x, 1.0f);
  r4.x = dot(r9.xyz, r4.xyz);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r10.z);
  r4.x = exp2(r4.x);
  r4.x = (r6.z * r4.x);
  r3.w = (r3.w * r4.x);
  r3.w = (r10.x * r3.w);
  r3.w = (r1.y * r3.w);
  r1.y = (r1.y * r4.w);
  let v_66 = fma(r3.xyz, r1.yyy, r3.www);
  r4 = vec4<f32>(v_66.xyz, r4.w);
  let v_67 = (r2.yzw * r4.xyz);
  r4 = vec4<f32>(v_67.xyz, r4.w);
  r0.z = fma(r7.z, r0.z, cb3_3.tint_symbol_2[43u].w);
  r0.z = (r0.z * cb3_3.tint_symbol_2[44u].w);
  r0.z = max(r0.z, 0.0f);
  let v_68 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r10 = vec4<f32>(v_68.xyz, r10.w);
  r0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.w) != 0u));
  let v_69 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r11 = vec4<f32>(r11.x, v_69.xyz);
  let v_70 = (r2.xxx * r11.yzw);
  r11 = vec4<f32>(r11.x, v_70.xyz);
  let v_71 = fma(r10.xyz, r0.www, r11.yzw);
  r10 = vec4<f32>(v_71.xyz, r10.w);
  let v_72 = (r0.yyy * r10.xyz);
  r10 = vec4<f32>(v_72.xyz, r10.w);
  let v_73 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r11 = vec4<f32>(r11.x, v_73.xyz);
  r12.x = cb3_3.tint_symbol_2[46u].w;
  r12.y = cb3_3.tint_symbol_2[47u].w;
  r12.z = cb3_3.tint_symbol_2[48u].w;
  let v_74 = dot(r12.xyz, r7.xyw);
  r0.z = clamp(vec4<f32>(v_74, v_74, v_74, v_74).z, 0.0f, 1.0f);
  let v_75 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.zzz, r11.yzw);
  r11 = vec4<f32>(r11.x, v_75.xyz);
  let v_76 = fma(r11.yzw, r0.xxx, r10.xyz);
  r10 = vec4<f32>(v_76.xyz, r10.w);
  let v_77 = (r4.www * r10.xyz);
  r10 = vec4<f32>(v_77.xyz, r10.w);
  let v_78 = (r3.xyz * r10.xyz);
  r10 = vec4<f32>(v_78.xyz, r10.w);
  let v_79 = fma(r4.xyz, r6.www, r10.xyz);
  r4 = vec4<f32>(v_79.xyz, r4.w);
  r0.z = ((-(r4.wwww)).z + 1.0f);
  r0.w = dot(r8.xyz, r7.xyw);
  r0.w = (r0.w + r0.w);
  let v_80 = -(r0.wwww);
  let v_81 = fma(r7.xyw, v_80.xzw, r8.xyz);
  r6 = vec4<f32>(v_81.x, r6.y, v_81.yz);
  let v_82 = clamp(((r6.yyyy * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r7 = vec4<f32>(v_82.xy, r7.zw);
  r0.w = ((-(r7.xxxx)).w + 1.0f);
  r1.y = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.x = (r0.w * cb5_5.tint_symbol_3[6u].z);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.y)));
  r3.w = fma(r0.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.w = (r0.w * r0.w);
  r0.w = fma(r0.w, 5.0f, r1.y);
  let v_83 = bitcast<u32>(r2.x);
  let v_84 = r3.w;
  r0.w = select(r0.w, v_84, (v_83 != 0u));
  let v_85 = (r6.xzx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r6 = vec4<f32>(v_85.xyz, r6.w);
  r1.y = (abs(r6.wwww).y + 1.0f);
  let v_86 = (r6.xyz / r1.yyy);
  r6 = vec4<f32>(v_86.xyz, r6.w);
  let v_87 = ((-(r6.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r6 = vec4<f32>(v_87.xyz, r6.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r6.w)));
  let v_88 = bitcast<vec2<u32>>(r1.yy);
  let v_89 = r6.xy;
  let v_90 = select(r6.zy, v_89, (v_88 != vec2<u32>()));
  r6 = vec4<f32>(v_90.xy, r6.zw);
  let v_91 = r0.w;
  let v_92 = textureSampleLevel(t1, s1, r6.xyxx.xy, v_91).xyz;
  r6 = vec4<f32>(v_92.xyz, r6.w);
  r0.x = max(r0.y, r0.x);
  let v_93 = (r0.xxx * r6.xyz);
  r0 = vec4<f32>(v_93.xy, r0.z, v_93.z);
  let v_94 = (r7.yyy * r0.xyw);
  r6 = vec4<f32>(v_94.xyz, r6.w);
  let v_95 = (r6.xyz * vec3<f32>(0.68169009685516357422f));
  r6 = vec4<f32>(v_95.xyz, r6.w);
  let v_96 = fma(r0.xyw, vec3<f32>(0.31830990314483642578f), r6.xyz);
  r0 = vec4<f32>(v_96.xy, r0.z, v_96.z);
  let v_97 = fma(r0.xyw, r0.zzz, r4.xyz);
  r0 = vec4<f32>(v_97.xyz, r0.w);
  r0.w = (r1.x * r11.x);
  let v_98 = fma(r3.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_98.xyz, r0.w);
  let v_99 = fma((-(cb11_11.tint_symbol_5[9u].xxxx)).xyz, r9.xyz, r5.xyz);
  r4 = vec4<f32>(v_99.xyz, r4.w);
  let v_100 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_101 = (r4.xyz + v_100.xyz);
  r4 = vec4<f32>(v_101.xyz, r4.w);
  let v_102 = (r4.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r5 = vec4<f32>(v_102.xyz, r5.w);
  let v_103 = fma(r4.xxx, cb6_6.tint_symbol_4[0u].xyz, r5.xyz);
  r4 = vec4<f32>(v_103.xy, r4.z, v_103.z);
  let v_104 = fma(r4.zzz, cb6_6.tint_symbol_4[2u].xyz, r4.xyw);
  r4 = vec4<f32>(v_104.xyz, r4.w);
  let v_105 = fma(r4.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r5 = vec4<f32>(v_105.xyz, r5.w);
  let v_106 = &(x0[0u]);
  let v_107 = r5;
  *(v_106) = vec4<f32>(v_107.xyz, (*(v_106)).w);
  let v_108 = fma(r4.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r6 = vec4<f32>(v_108.xyz, r6.w);
  let v_109 = &(x0[1u]);
  let v_110 = r6;
  *(v_109) = vec4<f32>(v_110.xyz, (*(v_109)).w);
  let v_111 = fma(r4.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r7 = vec4<f32>(v_111.xyz, r7.w);
  let v_112 = &(x0[2u]);
  let v_113 = r7;
  *(v_112) = vec4<f32>(v_113.xyz, (*(v_112)).w);
  let v_114 = fma(r4.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r4 = vec4<f32>(v_114.xyz, r4.w);
  let v_115 = &(x0[3u]);
  let v_116 = r4;
  *(v_115) = vec4<f32>(v_116.xyz, (*(v_115)).w);
  r0.w = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).w, 1.5f, 1.0f);
  r0.w = (r0.w * 0.5f);
  let v_117 = abs(r7.yyyy);
  r1.x = max(v_117.x, abs(r7.xxxx).x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.w)));
  let v_118 = (bitcast<u32>(r1.x) != 0u);
  let v_119 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r1.x = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_119, v_118);
  let v_120 = abs(r6.yyyy);
  r1.y = max(v_120.y, abs(r6.xxxx).y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < r0.w)));
  let v_121 = bitcast<u32>(r1.y);
  r1.x = select(r1.x, bitcast<f32>(v.tint_symbol_6[2i].x), (v_121 != 0u));
  let v_122 = abs(r5.yyyy);
  r1.y = max(v_122.y, abs(r5.xxxx).y);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.y < r0.w)));
  let v_123 = bitcast<u32>(r0.w);
  r0.w = select(r1.x, 0.0f, (v_123 != 0u));
  let v_124 = x0[bitcast<i32>(r0.w)];
  r4 = vec4<f32>(v_124.xyz, r4.w);
  r0.w = f32(bitcast<i32>(r0.w));
  r1.x = (r0.w + 0.5f);
  r1.x = (r1.x * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.wwww)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r0.w = dot(r5, cb6_6.tint_symbol_4[12u]);
  r1.y = (r4.x + 0.5f);
  r1.x = fma(r4.y, 0.25f, r1.x);
  r2.x = ((-(r0.wwww)).x + r4.z);
  r6.x = dpdx(r1.y);
  let v_125 = dpdx(r1.xx);
  r4 = vec4<f32>(v_125.xy, r4.zw);
  r6.z = dpdx(r2.x);
  let v_126 = dpdy(r1.xyx);
  r7 = vec4<f32>(v_126.xyz, r7.w);
  r7.w = dpdy(r2.x);
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = (cb11_11.tint_symbol_5[9u].y * cb11_11.tint_symbol_5[9u].y);
    r1.z = (r1.w * r1.z);
    r1.w = dot(r5, cb6_6.tint_symbol_4[13u]);
    r0.w = bitcast<f32>(select(0u, 4294967295u, !((r0.w == 0.0f))));
    let v_127 = (r4.xy * r7.yw);
    r4 = vec4<f32>(v_127.xy, r4.zw);
    let v_128 = -(r4.xyxx);
    let v_129 = fma(r6.xz, r7.xz, v_128.xy);
    r5 = vec4<f32>(v_129.xy, r5.zw);
    r3.w = (1.0f / r5.x);
    r4.x = (r6.z * r7.y);
    let v_130 = -(r4.xxxx);
    r5.z = fma(r6.x, r7.w, v_130.z);
    let v_131 = (r3.ww * r5.yz);
    r4 = vec4<f32>(v_131.xy, r4.zw);
    let v_132 = max(r4.xy, vec2<f32>());
    r4 = vec4<f32>(v_132.xy, r4.zw);
    let v_133 = min(r4.xy, vec2<f32>(0.5f));
    r4 = vec4<f32>(v_133.xy, r4.zw);
    r2.x = fma((-(r1.wwww)).x, r4.x, r2.x);
    r1.w = fma((-(r1.wwww)).w, r4.y, r2.x);
    let v_134 = bitcast<u32>(r0.w);
    let v_135 = r1.w;
    r0.w = select(r4.z, v_135, (v_134 != 0u));
    r1.x = (r1.x * cb6_6.tint_symbol_4[14u].y);
    r4.x = (r1.y * cb6_6.tint_symbol_4[14u].x);
    r4.y = (r1.x * 4.0f);
    let v_136 = r4.xy;
    let v_137 = max(v_136, vec2<f32>(-2147483648.0f));
    let v_138 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_137), vec2<i32>(2147483647i), (v_137 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_136 == v_136))));
    r1 = vec4<f32>(v_138.xy, r1.zw);
    let v_139 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xy) + vec2<i32>(-1i, 0i)));
    r4 = vec4<f32>(v_139.xy, r4.zw);
    r4 = vec4<f32>(r4.xy, vec2<f32>());
    r4.x = textureLoad(t15, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w)).x;
    let v_140 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xy) + vec2<i32>(1i, 0i)));
    r5 = vec4<f32>(v_140.xy, r5.zw);
    r5 = vec4<f32>(r5.xy, vec2<f32>());
    r4.y = textureLoad(t15, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)).x;
    let v_141 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xy) + vec2<i32>(0i, -1i)));
    r5 = vec4<f32>(v_141.xy, r5.zw);
    r5 = vec4<f32>(r5.xy, vec2<f32>());
    r4.z = textureLoad(t15, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)).x;
    let v_142 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xy) + vec2<i32>(0i, 1i)));
    r5 = vec4<f32>(v_142.xy, r5.zw);
    r5 = vec4<f32>(r5.xy, vec2<f32>());
    r4.w = textureLoad(t15, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)).x;
    r1.x = dot(vec4<f32>(0.25f), r4);
    let v_143 = -(r1.xxxx);
    r0.w = (r0.w + v_143.w);
    r0.w = (abs(r0.wwww).w + cb11_11.tint_symbol_5[10u].x);
    r0.w = (r0.w * r1.z);
    r1.x = dot(r9.xyz, v_32.xyz);
    r1.x = ((-(r1.xxxx)).x + cb11_11.tint_symbol_5[9u].z);
    r1.x = max(r1.x, 0.0f);
    let v_144 = -(r0.wwww);
    r0.w = (r0.w * v_144.w);
    r0.w = (r0.w * 1.44269502162933349609f);
    r0.w = exp2(r0.w);
    let v_145 = fma(r10.xyz, cb11_11.tint_symbol_5[9u].www, r0.www);
    r1 = vec4<f32>(r1.x, v_145.xyz);
    let v_146 = (r1.yzw * r1.xxx);
    r1 = vec4<f32>(v_146.xyz, r1.w);
    let v_147 = (r2.yzw * r1.xyz);
    r1 = vec4<f32>(v_147.xyz, r1.w);
    let v_148 = fma(r1.xyz, r3.xyz, r0.xyz);
    r0 = vec4<f32>(v_148.xyz, r0.w);
  }
  let v_149 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_149.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
