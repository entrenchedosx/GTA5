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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

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
  r4 = textureSample(t7, s7, r0.xyxx.xy);
  let v_4 = (r4.xyz * r4.xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  r4 = textureSample(t9, s9, r0.xyxx.xy);
  r2.w = (r4.x * r4.x);
  r5 = textureSample(t8, s8, r0.xyxx.xy);
  let v_5 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_5.xy, r4.z, v_5.z);
  let v_6 = fract(r4.xyw);
  r4 = vec4<f32>(v_6.xy, r4.z, v_6.z);
  let v_7 = fma((-(r4.ywyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_7.xy, r4.zw);
  let v_8 = fma(r5.xyz, vec3<f32>(256.0f), r4.xyw);
  r4 = vec4<f32>(v_8.xy, r4.z, v_8.z);
  let v_9 = (r4.xyw + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_9.xy, r4.z, v_9.z);
  r3.w = dot(r4.xyw, r4.xyw);
  r3.w = inverseSqrt(r3.w);
  let v_10 = (r3.www * r4.xyw);
  r4 = vec4<f32>(v_10.xy, r4.z, v_10.z);
  r2.w = min(r2.w, 1.0f);
  r0.w = inverseSqrt(r0.w);
  let v_11 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_12 = (r0.www * r2.xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  r6.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r6.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r6.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_14 = -(r6.xyzx);
  r0.z = dot(v_14.xyz, (-(r6.xyzx)).xyz);
  r0.z = sqrt(r0.z);
  let v_15 = ((-(r6.xyzx)).xyz / r0.zzz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  r0.w = (r0.z * cb6_6.tint_symbol_2[17u].w);
  let v_16 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r2.xyz)));
  r6 = vec4<f32>(v_16.xyz, r6.w);
  let v_17 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r2.xyz < vec3<f32>())));
  r7 = vec4<f32>(v_17.xyz, r7.w);
  let v_18 = -(bitcast<vec4<i32>>(r6.xyzx));
  let v_19 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r7.xyz) + v_18.xyz));
  r6 = vec4<f32>(v_19.xyz, r6.w);
  let v_20 = vec3<f32>(bitcast<vec3<i32>>(r6.xyz));
  r6 = vec4<f32>(v_20.xyz, r6.w);
  r7 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r2.zzyy) < abs(r2.xyxz))));
  let v_21 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r7.yw) | bitcast<vec2<u32>>(r7.xz)));
  r7 = vec4<f32>(v_21.xy, r7.zw);
  let v_22 = (-(r6.xyzx)).xyz;
  r6 = vec4<f32>(v_22.xyz, r6.w);
  r6.w = 0.0f;
  let v_23 = bitcast<vec3<u32>>(r7.yyy);
  let v_24 = r6.wxw;
  let v_25 = select(r6.wwy, v_24, (v_23 != vec3<u32>()));
  r7 = vec4<f32>(r7.x, v_25.xyz);
  let v_26 = bitcast<vec3<u32>>(r7.xxx);
  let v_27 = r7.yzw;
  let v_28 = select(r6.wwz, v_27, (v_26 != vec3<u32>()));
  r6 = vec4<f32>(v_28.xyz, r6.w);
  let v_29 = (r2.zxy * r6.xyz);
  r7 = vec4<f32>(v_29.xyz, r7.w);
  let v_30 = -(r7.xyzx);
  let v_31 = fma(r2.yzx, r6.yzx, v_30.xyz);
  r6 = vec4<f32>(v_31.xyz, r6.w);
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_32 = (r3.www * r6.xyz);
  r6 = vec4<f32>(v_32.xyz, r6.w);
  let v_33 = (r2.yzx * r6.zxy);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = -(r7.xyzx);
  let v_35 = fma(r6.yzx, r2.zxy, v_34.xyz);
  r7 = vec4<f32>(v_35.xyz, r7.w);
  r8 = dpdx(r2.xyzx);
  r3.w = dpdx(r0.w);
  r9 = dpdy(r2.xyzx);
  r0.w = dpdy(r0.w);
  r10.z = dot(r8.yzw, r8.yzw);
  r5.w = dot(r8.yzw, r9.yzw);
  r10.x = dot(r9.yzw, r9.yzw);
  r6.w = (r5.w * r5.w);
  let v_36 = -(r6.wwww);
  r6.w = fma(r10.z, r10.x, v_36.w);
  r6.w = (1.0f / r6.w);
  r10.y = (-(r5.wwww)).y;
  r11 = (r6.wwww * r10.xxxy);
  r10 = (r10.yyyz * r6.wwww);
  r12 = (r9 * r10);
  r12 = fma(r8, r11, r12);
  let v_37 = (r9.yz * r10.ww);
  r8 = vec4<f32>(v_37.x, r8.yz, v_37.y);
  let v_38 = fma(r8.yz, r11.ww, r8.xw);
  r8 = vec4<f32>(v_38.xy, r8.zw);
  let v_39 = (r3.www * r12.xyz);
  r9 = vec4<f32>(v_39.xyz, r9.w);
  r10.x = fma(r0.w, r12.w, r9.x);
  let v_40 = fma(r0.ww, r8.xy, r9.yz);
  let v_41 = r10;
  r10 = vec4<f32>(v_41.x, v_40.xy, v_41.w);
  let v_42 = max(r10.xyz, vec3<f32>(-1.0f));
  r8 = vec4<f32>(v_42.xyz, r8.w);
  let v_43 = min(r8.xyz, vec3<f32>(1.0f));
  r8 = vec4<f32>(v_43.xyz, r8.w);
  let v_44 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v_44.xy, r0.zw);
  let v_45 = (r0.xy * vec2<f32>(0.015625f));
  r0 = vec4<f32>(v_45.xy, r0.zw);
  r9 = textureSample(t1, s1, r0.xyxx.xy);
  let v_46 = fma(r9.yx, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_46.xy, r0.zw);
  r0.w = (cb6_6.tint_symbol_2[18u].w * 4.0f);
  let v_47 = (r0.www * r7.xyz);
  r7 = vec4<f32>(v_47.xyz, r7.w);
  let v_48 = (r0.www * r6.xyz);
  r6 = vec4<f32>(v_48.xyz, r6.w);
  let v_49 = (r0.yyy * r7.xyz);
  r9 = vec4<f32>(v_49.xyz, r9.w);
  let v_50 = (r0.xxx * r6.xyz);
  r10 = vec4<f32>(v_50.xyz, r10.w);
  let v_51 = fma(r0.yyy, r7.xyz, r10.xyz);
  r11 = vec4<f32>(v_51.xyz, r11.w);
  let v_52 = (r2.xyz + r11.xyz);
  r12 = vec4<f32>(v_52.xyz, r12.w);
  r0.w = dot(r8.xyz, r11.xyz);
  r0.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r0.w);
  let v_53 = r12.xyzx;
  r0.w = textureSampleCompareLevel(t14, s14, v_53.xyz, r0.w);
  let v_54 = -(r10.xyzx);
  let v_55 = fma(r0.yyy, r7.xyz, v_54.xyz);
  r10 = vec4<f32>(v_55.xyz, r10.w);
  let v_56 = (r10.xyz * vec3<f32>(0.5f));
  r11 = vec4<f32>(v_56.xyz, r11.w);
  let v_57 = fma(r10.xyz, vec3<f32>(0.5f), r2.xyz);
  r10 = vec4<f32>(v_57.xyz, r10.w);
  r3.w = dot(r8.xyz, r11.xyz);
  r3.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r3.w);
  let v_58 = r10.xyzx;
  r3.w = textureSampleCompareLevel(t14, s14, v_58.xyz, r3.w);
  r0.w = (r0.w + r3.w);
  let v_59 = -(r9.xyzx);
  let v_60 = fma(r0.xxx, r6.xyz, v_59.xyz);
  r9 = vec4<f32>(v_60.xyz, r9.w);
  let v_61 = (r9.xyz * vec3<f32>(0.25f));
  r10 = vec4<f32>(v_61.xyz, r10.w);
  let v_62 = fma(r9.xyz, vec3<f32>(0.25f), r2.xyz);
  r9 = vec4<f32>(v_62.xyz, r9.w);
  r3.w = dot(r8.xyz, r10.xyz);
  r3.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r3.w);
  let v_63 = r9.xyzx;
  r3.w = textureSampleCompareLevel(t14, s14, v_63.xyz, r3.w);
  r0.w = (r0.w + r3.w);
  let v_64 = -(r0.xxxx);
  r9.x = (v_64.x + (-(r0.yyyy)).x);
  r9.y = ((-(r0.xxxx)).y + r0.y);
  let v_65 = (r9.xy * vec2<f32>(0.54447221755981445312f));
  r9 = vec4<f32>(v_65.xy, r9.zw);
  let v_66 = (r7.xyz * r9.xxx);
  r10 = vec4<f32>(v_66.xyz, r10.w);
  let v_67 = (r6.xyz * r9.yyy);
  r11 = vec4<f32>(v_67.xyz, r11.w);
  let v_68 = fma(r9.xxx, r7.xyz, r11.xyz);
  r12 = vec4<f32>(v_68.xyz, r12.w);
  let v_69 = (r2.xyz + r12.xyz);
  r13 = vec4<f32>(v_69.xyz, r13.w);
  r3.w = dot(r8.xyz, r12.xyz);
  r3.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r3.w);
  let v_70 = r13.xyzx;
  r3.w = textureSampleCompareLevel(t14, s14, v_70.xyz, r3.w);
  r0.w = (r0.w + r3.w);
  let v_71 = -(r11.xxyz);
  let v_72 = fma(r9.xxx, r7.xyz, v_71.xzw);
  r9 = vec4<f32>(v_72.x, r9.y, v_72.yz);
  let v_73 = (r9.xzw * vec3<f32>(0.5f));
  r11 = vec4<f32>(v_73.xyz, r11.w);
  let v_74 = fma(r9.xzw, vec3<f32>(0.5f), r2.xyz);
  r9 = vec4<f32>(v_74.x, r9.y, v_74.yz);
  r3.w = dot(r8.xyz, r11.xyz);
  r3.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r3.w);
  let v_75 = r9.xzwx;
  r3.w = textureSampleCompareLevel(t14, s14, v_75.xyz, r3.w);
  r0.w = (r0.w + r3.w);
  let v_76 = -(r10.xyzx);
  let v_77 = fma(r9.yyy, r6.xyz, v_76.xyz);
  r9 = vec4<f32>(v_77.xyz, r9.w);
  let v_78 = (r9.xyz * vec3<f32>(0.25f));
  r10 = vec4<f32>(v_78.xyz, r10.w);
  let v_79 = fma(r9.xyz, vec3<f32>(0.25f), r2.xyz);
  r9 = vec4<f32>(v_79.xyz, r9.w);
  r3.w = dot(r8.xyz, r10.xyz);
  r3.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r3.w);
  let v_80 = r9.xyzx;
  r3.w = textureSampleCompareLevel(t14, s14, v_80.xyz, r3.w);
  r0.w = (r0.w + r3.w);
  let v_81 = (r0.xy * vec2<f32>(0.43999999761581420898f, -0.43999999761581420898f));
  r0 = vec4<f32>(v_81.xy, r0.zw);
  let v_82 = (r7.xyz * r0.xxx);
  r9 = vec4<f32>(v_82.xyz, r9.w);
  let v_83 = (r6.xyz * r0.yyy);
  r10 = vec4<f32>(v_83.xyz, r10.w);
  let v_84 = fma(r0.xxx, r7.xyz, r10.xyz);
  r11 = vec4<f32>(v_84.xyz, r11.w);
  let v_85 = (r2.xyz + r11.xyz);
  r12 = vec4<f32>(v_85.xyz, r12.w);
  r3.w = dot(r8.xyz, r11.xyz);
  r3.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r3.w);
  let v_86 = r12.xyzx;
  r3.w = textureSampleCompareLevel(t14, s14, v_86.xyz, r3.w);
  r0.w = (r0.w + r3.w);
  let v_87 = -(r10.xyzx);
  let v_88 = fma(r0.xxx, r7.xyz, v_87.xyz);
  r7 = vec4<f32>(v_88.xyz, r7.w);
  let v_89 = (r7.xyz * vec3<f32>(0.5f));
  r10 = vec4<f32>(v_89.xyz, r10.w);
  let v_90 = fma(r7.xyz, vec3<f32>(0.5f), r2.xyz);
  r7 = vec4<f32>(v_90.xyz, r7.w);
  r0.x = dot(r8.xyz, r10.xyz);
  r0.x = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r0.x);
  let v_91 = r7.xyzx;
  r0.x = textureSampleCompareLevel(t14, s14, v_91.xyz, r0.x);
  r0.x = (r0.x + r0.w);
  let v_92 = -(r9.xyzx);
  let v_93 = fma(r0.yyy, r6.xyz, v_92.xyz);
  r6 = vec4<f32>(v_93.xyz, r6.w);
  let v_94 = (r6.xyz * vec3<f32>(0.25f));
  r7 = vec4<f32>(v_94.xyz, r7.w);
  let v_95 = fma(r6.xyz, vec3<f32>(0.25f), r2.xyz);
  r2 = vec4<f32>(v_95.xyz, r2.w);
  r0.y = dot(r8.xyz, r7.xyz);
  r0.y = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r0.y);
  let v_96 = r2.xyzx;
  r0.y = textureSampleCompareLevel(t14, s14, v_96.xyz, r0.y);
  r0.x = (r0.y + r0.x);
  let v_97 = ((-(cb12_12.tint_symbol_3[1u].zzxy)).yzw * cb12_12.tint_symbol_3[2u].yzx);
  r0 = vec4<f32>(r0.x, v_97.xyz);
  let v_98 = -(cb12_12.tint_symbol_3[1u].yyzx);
  let v_99 = -(r0.yyzw);
  let v_100 = fma(v_98.yzw, cb12_12.tint_symbol_3[2u].zxy, v_99.yzw);
  r0 = vec4<f32>(r0.x, v_100.xyz);
  let v_101 = -(r3.xyzx);
  r2.x = dot(r0.yzw, v_101.xyz);
  let v_102 = -(r3.xyzx);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_102.xyz);
  let v_103 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r0.y = dot(v_103.xyz, (-(r3.xyzx)).xyz);
  let v_104 = -(r3.xyzx);
  r0.z = dot(v_104.xyz, (-(r3.xyzx)).xyz);
  r0.z = sqrt(r0.z);
  r0.y = (r0.y / r0.z);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.y = (r0.y * r0.z);
  r0.y = (1.0f / r0.y);
  let v_105 = (r0.yy * r2.xy);
  let v_106 = r0;
  r0 = vec4<f32>(v_106.x, v_105.xy, v_106.w);
  let v_107 = fma(r0.yz, vec2<f32>(0.5f), vec2<f32>(0.5f));
  let v_108 = r0;
  r0 = vec4<f32>(v_108.x, v_107.xy, v_108.w);
  r6 = textureSampleLevel(t2, s2, r0.yzyy.xy, 0.0f);
  let v_109 = fma(r6.xyz, r6.xyz, vec3<f32>(-1.0f));
  r0 = vec4<f32>(r0.x, v_109.xyz);
  let v_110 = fma(cb12_12.tint_symbol_3[11u].yyy, r0.yzw, vec3<f32>(1.0f));
  r0 = vec4<f32>(r0.x, v_110.xyz);
  let v_111 = (r0.yzw * cb12_12.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(r0.x, v_111.xyz);
  let v_112 = (r0.yzw * cb12_12.tint_symbol_3[3u].www);
  r0 = vec4<f32>(r0.x, v_112.xyz);
  let v_113 = dot(r4.xyw, r3.xyz);
  r2.x = clamp(vec4<f32>(v_113, v_113, v_113, v_113).x, 0.0f, 1.0f);
  let v_114 = dot((-(r5.xyzx)).xyz, r4.xyw);
  r2.y = clamp(vec4<f32>(v_114, v_114, v_114, v_114).y, 0.0f, 1.0f);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r2.z = (r2.y * r2.y);
  r2.z = (r2.z * r2.z);
  r2.y = (r2.y * r2.z);
  r2.z = ((-(r4.zzzz)).z + 1.0f);
  r2.y = fma(r4.z, r2.y, r2.z);
  r2.y = fma((-(r2.wwww)).y, r2.y, 1.0f);
  r2.x = (r2.y * r2.x);
  r0.x = fma(r0.x, 0.11111111193895339966f, -1.0f);
  r0.x = fma(cb12_12.tint_symbol_3[8u].y, r0.x, 1.0f);
  let v_115 = (r1.yzw * r2.xxx);
  r1 = vec4<f32>(r1.x, v_115.xyz);
  let v_116 = (r0.yzw * r1.yzw);
  r0 = vec4<f32>(r0.x, v_116.xyz);
  let v_117 = (r1.xxx * r0.yzw);
  r0 = vec4<f32>(r0.x, v_117.xyz);
  let v_118 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_118.xyz, r0.w);
  let v_119 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_119.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_3(v_120 : bool) {
  if (v_120) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
