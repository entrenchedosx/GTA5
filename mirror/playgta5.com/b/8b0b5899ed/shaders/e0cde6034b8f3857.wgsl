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

var<private> r13 : vec4<f32>;

var<private> r14 : vec4<f32>;

var<private> r15 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb19_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb19_struct_1;

struct cb21_struct {
  tint_symbol_3 : array<vec4<f32>, 21u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb21_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_depth_cube;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v = fma(r0.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.z = 1.0f;
  r2.x = dot(r1.xyz, cb12_12.tint_symbol_3[18u].xyz);
  r2.y = dot(r1.xyz, cb12_12.tint_symbol_3[19u].xyz);
  r2.z = dot(r1.xyz, cb12_12.tint_symbol_3[20u].xyz);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + cb12_12.tint_symbol_3[17u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb12_12.tint_symbol_3[17u].z / r0.z);
  let v_1 = fma(r2.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = ((-(r1.xyzx)).xyz + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r2.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r3.w = ((-(cb12_12.tint_symbol_3[7u].xxxx)).w + 1.0f);
  r3.w = fma(r3.w, r2.w, cb12_12.tint_symbol_3[7u].x);
  r2.w = (r2.w / r3.w);
  r1.w = 1.0f;
  r1.x = dot(r1, cb12_12.tint_symbol_3[6u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r1.x = (r1.x * r2.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.00000099999999747524f)));
  v_3((bitcast<u32>(r1.y) != 0u));
  let v_4 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  let v_5 = r1;
  r1 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = r1.yz;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r4 = vec4<f32>(v_8.xy, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r4 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w)));
  r1.w = bitcast<f32>((bitcast<u32>(r4.y) & 8u));
  r1.w = f32(bitcast<u32>(r1.w));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 8.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r4 = textureSample(t7, s7, r0.xyxx.xy);
  let v_9 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  r5 = textureSample(t9, s9, r0.xyxx.xy);
  let v_10 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_10.xy, r5.zw);
  r6 = textureSample(t8, s8, r0.xyxx.xy);
  let v_11 = (r6.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r7 = vec4<f32>(v_11.xyz, r7.w);
  let v_12 = fract(r7.xyz);
  r7 = vec4<f32>(v_12.xyz, r7.w);
  let v_13 = fma((-(r7.yzyy)).xy, vec2<f32>(0.125f), r7.xy);
  r7 = vec4<f32>(v_13.xy, r7.zw);
  let v_14 = fma(r6.xyz, vec3<f32>(256.0f), r7.xyz);
  r6 = vec4<f32>(v_14.xyz, r6.w);
  let v_15 = (r6.xyz + vec3<f32>(-128.0f));
  r6 = vec4<f32>(v_15.xyz, r6.w);
  r0.x = dot(r6.xyz, r6.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_16 = (r0.xxx * r6.xyz);
  r6 = vec4<f32>(v_16.xyz, r6.w);
  r0.x = min(r5.x, 1.0f);
  r0.y = fma(r5.y, 512.0f, -500.0f);
  r0.y = max(r0.y, 0.0f);
  let v_17 = -(r0.yyyy);
  r2.w = fma(r5.y, 512.0f, v_17.w);
  r0.y = (r0.y * 558.0f);
  r0.y = fma(r2.w, 3.0f, r0.y);
  r0.w = inverseSqrt(r0.w);
  let v_18 = (r0.www * r3.xyz);
  r5 = vec4<f32>(v_18.xy, r5.z, v_18.z);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_19 = (r2.www * r2.xyz);
  r7 = vec4<f32>(v_19.xyz, r7.w);
  let v_20 = -(r7.xyzx);
  let v_21 = fma(r3.xyz, r0.www, v_20.xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_22 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  let v_23 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  r8.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r8.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r8.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_24 = -(r8.xyzx);
  r0.z = dot(v_24.xyz, (-(r8.xyzx)).xyz);
  r0.z = sqrt(r0.z);
  let v_25 = ((-(r8.xyzx)).xyz / r0.zzz);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  r0.w = (r0.z * cb6_6.tint_symbol_2[17u].w);
  let v_26 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r2.xyz)));
  r8 = vec4<f32>(v_26.xyz, r8.w);
  let v_27 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r2.xyz < vec3<f32>())));
  r9 = vec4<f32>(v_27.xyz, r9.w);
  let v_28 = -(bitcast<vec4<i32>>(r8.xyzx));
  let v_29 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r9.xyz) + v_28.xyz));
  r8 = vec4<f32>(v_29.xyz, r8.w);
  let v_30 = vec3<f32>(bitcast<vec3<i32>>(r8.xyz));
  r8 = vec4<f32>(v_30.xyz, r8.w);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r2.zzyy) < abs(r2.xyxz))));
  let v_31 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r9.yw) | bitcast<vec2<u32>>(r9.xz)));
  r9 = vec4<f32>(v_31.xy, r9.zw);
  let v_32 = (-(r8.xyzx)).xyz;
  r8 = vec4<f32>(v_32.xyz, r8.w);
  r8.w = 0.0f;
  let v_33 = bitcast<vec3<u32>>(r9.yyy);
  let v_34 = r8.wxw;
  let v_35 = select(r8.wwy, v_34, (v_33 != vec3<u32>()));
  r9 = vec4<f32>(r9.x, v_35.xyz);
  let v_36 = bitcast<vec3<u32>>(r9.xxx);
  let v_37 = r9.yzw;
  let v_38 = select(r8.wwz, v_37, (v_36 != vec3<u32>()));
  r8 = vec4<f32>(v_38.xyz, r8.w);
  let v_39 = (r2.zxy * r8.xyz);
  r9 = vec4<f32>(v_39.xyz, r9.w);
  let v_40 = -(r9.xyzx);
  let v_41 = fma(r2.yzx, r8.yzx, v_40.xyz);
  r8 = vec4<f32>(v_41.xyz, r8.w);
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_42 = (r2.www * r8.xyz);
  r8 = vec4<f32>(v_42.xyz, r8.w);
  let v_43 = (r2.yzx * r8.zxy);
  r9 = vec4<f32>(v_43.xyz, r9.w);
  let v_44 = -(r9.xyzx);
  let v_45 = fma(r8.yzx, r2.zxy, v_44.xyz);
  r9 = vec4<f32>(v_45.xyz, r9.w);
  r10 = dpdx(r2.xyzx);
  r2.w = dpdx(r0.w);
  r11 = dpdy(r2.xyzx);
  r0.w = dpdy(r0.w);
  r12.z = dot(r10.yzw, r10.yzw);
  r3.w = dot(r10.yzw, r11.yzw);
  r12.x = dot(r11.yzw, r11.yzw);
  r4.w = (r3.w * r3.w);
  let v_46 = -(r4.wwww);
  r4.w = fma(r12.z, r12.x, v_46.w);
  r4.w = (1.0f / r4.w);
  r12.y = (-(r3.wwww)).y;
  r13 = (r4.wwww * r12.xxxy);
  r12 = (r12.yyyz * r4.wwww);
  r14 = (r11 * r12);
  r14 = fma(r10, r13, r14);
  let v_47 = (r11.yz * r12.ww);
  r10 = vec4<f32>(v_47.x, r10.yz, v_47.y);
  let v_48 = fma(r10.yz, r13.ww, r10.xw);
  r10 = vec4<f32>(v_48.xy, r10.zw);
  let v_49 = (r2.www * r14.xyz);
  r11 = vec4<f32>(v_49.xyz, r11.w);
  r12.x = fma(r0.w, r14.w, r11.x);
  let v_50 = fma(r0.ww, r10.xy, r11.yz);
  let v_51 = r12;
  r12 = vec4<f32>(v_51.x, v_50.xy, v_51.w);
  let v_52 = max(r12.xyz, vec3<f32>(-1.0f));
  r10 = vec4<f32>(v_52.xyz, r10.w);
  let v_53 = min(r10.xyz, vec3<f32>(1.0f));
  r10 = vec4<f32>(v_53.xyz, r10.w);
  let v_54 = (r1.yz * vec2<f32>(0.015625f));
  let v_55 = r1;
  r1 = vec4<f32>(v_55.x, v_54.xy, v_55.w);
  r11 = textureSample(t1, s1, r1.yzyy.xy);
  let v_56 = fma(r11.yx, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_57 = r1;
  r1 = vec4<f32>(v_57.x, v_56.xy, v_57.w);
  r0.w = (cb6_6.tint_symbol_2[18u].w * 4.0f);
  let v_58 = (r0.www * r9.xyz);
  r9 = vec4<f32>(v_58.xyz, r9.w);
  let v_59 = (r0.www * r8.xyz);
  r8 = vec4<f32>(v_59.xyz, r8.w);
  let v_60 = (r1.zzz * r9.xyz);
  r11 = vec4<f32>(v_60.xyz, r11.w);
  let v_61 = (r1.yyy * r8.xyz);
  r12 = vec4<f32>(v_61.xyz, r12.w);
  let v_62 = fma(r1.zzz, r9.xyz, r12.xyz);
  r13 = vec4<f32>(v_62.xyz, r13.w);
  let v_63 = (r2.xyz + r13.xyz);
  r14 = vec4<f32>(v_63.xyz, r14.w);
  r0.w = dot(r10.xyz, r13.xyz);
  r0.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r0.w);
  let v_64 = r14.xyzx;
  r0.w = textureSampleCompareLevel(t14, s14, v_64.xyz, r0.w);
  let v_65 = -(r12.xyzx);
  let v_66 = fma(r1.zzz, r9.xyz, v_65.xyz);
  r12 = vec4<f32>(v_66.xyz, r12.w);
  let v_67 = (r12.xyz * vec3<f32>(0.5f));
  r13 = vec4<f32>(v_67.xyz, r13.w);
  let v_68 = fma(r12.xyz, vec3<f32>(0.5f), r2.xyz);
  r12 = vec4<f32>(v_68.xyz, r12.w);
  r2.w = dot(r10.xyz, r13.xyz);
  r2.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r2.w);
  let v_69 = r12.xyzx;
  r2.w = textureSampleCompareLevel(t14, s14, v_69.xyz, r2.w);
  r0.w = (r0.w + r2.w);
  let v_70 = -(r11.xyzx);
  let v_71 = fma(r1.yyy, r8.xyz, v_70.xyz);
  r11 = vec4<f32>(v_71.xyz, r11.w);
  let v_72 = (r11.xyz * vec3<f32>(0.25f));
  r12 = vec4<f32>(v_72.xyz, r12.w);
  let v_73 = fma(r11.xyz, vec3<f32>(0.25f), r2.xyz);
  r11 = vec4<f32>(v_73.xyz, r11.w);
  r2.w = dot(r10.xyz, r12.xyz);
  r2.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r2.w);
  let v_74 = r11.xyzx;
  r2.w = textureSampleCompareLevel(t14, s14, v_74.xyz, r2.w);
  r0.w = (r0.w + r2.w);
  let v_75 = -(r1.yyyy);
  r11.x = (v_75.x + (-(r1.zzzz)).x);
  r11.y = ((-(r1.yyyy)).y + r1.z);
  let v_76 = (r11.xy * vec2<f32>(0.54447221755981445312f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz * r11.xxx);
  r12 = vec4<f32>(v_77.xyz, r12.w);
  let v_78 = (r8.xyz * r11.yyy);
  r13 = vec4<f32>(v_78.xyz, r13.w);
  let v_79 = fma(r11.xxx, r9.xyz, r13.xyz);
  r14 = vec4<f32>(v_79.xyz, r14.w);
  let v_80 = (r2.xyz + r14.xyz);
  r15 = vec4<f32>(v_80.xyz, r15.w);
  r2.w = dot(r10.xyz, r14.xyz);
  r2.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r2.w);
  let v_81 = r15.xyzx;
  r2.w = textureSampleCompareLevel(t14, s14, v_81.xyz, r2.w);
  r0.w = (r0.w + r2.w);
  let v_82 = -(r13.xxyz);
  let v_83 = fma(r11.xxx, r9.xyz, v_82.xzw);
  r11 = vec4<f32>(v_83.x, r11.y, v_83.yz);
  let v_84 = (r11.xzw * vec3<f32>(0.5f));
  r13 = vec4<f32>(v_84.xyz, r13.w);
  let v_85 = fma(r11.xzw, vec3<f32>(0.5f), r2.xyz);
  r11 = vec4<f32>(v_85.x, r11.y, v_85.yz);
  r2.w = dot(r10.xyz, r13.xyz);
  r2.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r2.w);
  let v_86 = r11.xzwx;
  r2.w = textureSampleCompareLevel(t14, s14, v_86.xyz, r2.w);
  r0.w = (r0.w + r2.w);
  let v_87 = -(r12.xyzx);
  let v_88 = fma(r11.yyy, r8.xyz, v_87.xyz);
  r11 = vec4<f32>(v_88.xyz, r11.w);
  let v_89 = (r11.xyz * vec3<f32>(0.25f));
  r12 = vec4<f32>(v_89.xyz, r12.w);
  let v_90 = fma(r11.xyz, vec3<f32>(0.25f), r2.xyz);
  r11 = vec4<f32>(v_90.xyz, r11.w);
  r2.w = dot(r10.xyz, r12.xyz);
  r2.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r2.w);
  let v_91 = r11.xyzx;
  r2.w = textureSampleCompareLevel(t14, s14, v_91.xyz, r2.w);
  r0.w = (r0.w + r2.w);
  let v_92 = (r1.yz * vec2<f32>(0.43999999761581420898f, -0.43999999761581420898f));
  let v_93 = r1;
  r1 = vec4<f32>(v_93.x, v_92.xy, v_93.w);
  let v_94 = (r9.xyz * r1.yyy);
  r11 = vec4<f32>(v_94.xyz, r11.w);
  let v_95 = (r8.xyz * r1.zzz);
  r12 = vec4<f32>(v_95.xyz, r12.w);
  let v_96 = fma(r1.yyy, r9.xyz, r12.xyz);
  r13 = vec4<f32>(v_96.xyz, r13.w);
  let v_97 = (r2.xyz + r13.xyz);
  r14 = vec4<f32>(v_97.xyz, r14.w);
  r2.w = dot(r10.xyz, r13.xyz);
  r2.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r2.w);
  let v_98 = r14.xyzx;
  r2.w = textureSampleCompareLevel(t14, s14, v_98.xyz, r2.w);
  r0.w = (r0.w + r2.w);
  let v_99 = -(r12.xyzx);
  let v_100 = fma(r1.yyy, r9.xyz, v_99.xyz);
  r9 = vec4<f32>(v_100.xyz, r9.w);
  let v_101 = (r9.xyz * vec3<f32>(0.5f));
  r12 = vec4<f32>(v_101.xyz, r12.w);
  let v_102 = fma(r9.xyz, vec3<f32>(0.5f), r2.xyz);
  r9 = vec4<f32>(v_102.xyz, r9.w);
  r1.y = dot(r10.xyz, r12.xyz);
  r1.y = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r1.y);
  let v_103 = r9.xyzx;
  r1.y = textureSampleCompareLevel(t14, s14, v_103.xyz, r1.y);
  r0.w = (r0.w + r1.y);
  let v_104 = -(r11.xyzx);
  let v_105 = fma(r1.zzz, r8.xyz, v_104.xyz);
  r8 = vec4<f32>(v_105.xyz, r8.w);
  let v_106 = (r8.xyz * vec3<f32>(0.25f));
  r9 = vec4<f32>(v_106.xyz, r9.w);
  let v_107 = fma(r8.xyz, vec3<f32>(0.25f), r2.xyz);
  r2 = vec4<f32>(v_107.xyz, r2.w);
  r1.y = dot(r10.xyz, r9.xyz);
  r0.z = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r1.y);
  let v_108 = r2.xyzx;
  r0.z = textureSampleCompareLevel(t14, s14, v_108.xyz, r0.z);
  r0.z = (r0.z + r0.w);
  r0.w = (r1.w * r1.x);
  let v_109 = (cb12_12.tint_symbol_3[3u].www * cb12_12.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_109.xyz, r1.w);
  let v_110 = dot(r6.xyz, r5.xyw);
  r1.w = clamp(vec4<f32>(v_110, v_110, v_110, v_110).w, 0.0f, 1.0f);
  let v_111 = dot((-(r7.xyzx)).xyz, r6.xyz);
  r2.x = clamp(vec4<f32>(v_111, v_111, v_111, v_111).x, 0.0f, 1.0f);
  let v_112 = dot(r3.xyz, r5.xyw);
  r2.y = clamp(vec4<f32>(v_112, v_112, v_112, v_112).y, 0.0f, 1.0f);
  let v_113 = ((-(r2.xyxx)).xy + vec2<f32>(1.0f));
  r2 = vec4<f32>(v_113.xy, r2.zw);
  let v_114 = (r2.xy * r2.xy);
  r2 = vec4<f32>(r2.xy, v_114.xy);
  let v_115 = (r2.zw * r2.zw);
  r2 = vec4<f32>(r2.xy, v_115.xy);
  let v_116 = (r2.xy * r2.zw);
  r2 = vec4<f32>(v_116.xy, r2.zw);
  r2.z = ((-(r5.zzzz)).z + 1.0f);
  let v_117 = fma(r5.zz, r2.xy, r2.zz);
  r2 = vec4<f32>(v_117.xy, r2.zw);
  let v_118 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r2 = vec4<f32>(r2.xy, v_118.xy);
  r0.y = (r2.z * 0.125f);
  r2.x = fma((-(r0.xxxx)).x, r2.x, 1.0f);
  r2.z = dot(r6.xyz, r3.xyz);
  r2.z = clamp(((r2.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r2.z = log2(r2.z);
  r2.z = (r2.z * r2.w);
  r2.z = exp2(r2.z);
  r2.y = (r2.y * r2.z);
  r0.y = (r0.y * r2.y);
  r0.x = (r0.x * r0.y);
  r0.x = (r1.w * r0.x);
  r0.y = (r1.w * r2.x);
  r0.x = (r0.x * cb12_12.tint_symbol_3[8u].z);
  r0.z = fma(r0.z, 0.11111111193895339966f, -1.0f);
  r0.z = fma(cb12_12.tint_symbol_3[8u].y, r0.z, 1.0f);
  let v_119 = fma(r4.xyz, r0.yyy, r0.xxx);
  r2 = vec4<f32>(v_119.xyz, r2.w);
  let v_120 = (r1.xyz * r2.xyz);
  r1 = vec4<f32>(v_120.xyz, r1.w);
  let v_121 = (r0.www * r1.xyz);
  r0 = vec4<f32>(v_121.xy, r0.z, v_121.z);
  let v_122 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_122.xyz, r0.w);
  let v_123 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_123.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_3(v_124 : bool) {
  if (v_124) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
