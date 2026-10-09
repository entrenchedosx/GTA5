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

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_depth_cube;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v3 : u32) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v = fma(r0.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.z = 1.0f;
  r2.x = dot(r1.xyz, cb12_12.tint_symbol_3[18u].xyz);
  r2.y = dot(r1.xyz, cb12_12.tint_symbol_3[19u].xyz);
  r2.z = dot(r1.xyz, cb12_12.tint_symbol_3[20u].xyz);
  let v_1 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = r0.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.z = textureLoad(t12, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).x;
  r0.z = ((-(r0.zzzz)).z + cb12_12.tint_symbol_3[17u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb12_12.tint_symbol_3[17u].z / r0.z);
  let v_5 = fma(r2.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = ((-(r3.xyzx)).xyz + cb12_12.tint_symbol_3[0u].xyz);
  r4 = vec4<f32>(v_6.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r2.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.w = ((-(cb12_12.tint_symbol_3[7u].xxxx)).w + 1.0f);
  r4.w = fma(r4.w, r2.w, cb12_12.tint_symbol_3[7u].x);
  r2.w = (r2.w / r4.w);
  r3.w = 1.0f;
  r3.x = dot(r3, cb12_12.tint_symbol_3[6u]);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x >= 0.0f)));
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
  r2.w = (r2.w * r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r2.w < 0.00000099999999747524f)));
  v_7((bitcast<u32>(r3.x) != 0u));
  r3.x = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).y);
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 8u));
  r3.x = f32(bitcast<u32>(r3.x));
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x >= 8.0f)));
  let v_8 = textureLoad(t7, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).xyz;
  r3 = vec4<f32>(r3.x, v_8.xyz);
  let v_9 = (r3.yzw * r3.yzw);
  r3 = vec4<f32>(r3.x, v_9.xyz);
  let v_10 = textureLoad(t9, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).xyz;
  r5 = vec4<f32>(v_10.xyz, r5.w);
  let v_11 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_11.xy, r5.zw);
  r1 = textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  let v_12 = (r1.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r6 = vec4<f32>(v_12.xyz, r6.w);
  let v_13 = fract(r6.xyz);
  r6 = vec4<f32>(v_13.xyz, r6.w);
  let v_14 = fma((-(r6.yzyy)).xy, vec2<f32>(0.125f), r6.xy);
  r6 = vec4<f32>(v_14.xy, r6.zw);
  let v_15 = fma(r1.xyz, vec3<f32>(256.0f), r6.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = (r1.xyz + vec3<f32>(-128.0f));
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_17 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  r1.w = min(r5.x, 1.0f);
  r4.w = fma(r5.y, 512.0f, -500.0f);
  r4.w = max(r4.w, 0.0f);
  let v_18 = -(r4.wwww);
  r5.x = fma(r5.y, 512.0f, v_18.x);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r5.x, 3.0f, r4.w);
  r0.w = inverseSqrt(r0.w);
  let v_19 = (r0.www * r4.xyz);
  r5 = vec4<f32>(v_19.xy, r5.z, v_19.z);
  r6.x = dot(r2.xyz, r2.xyz);
  r6.x = inverseSqrt(r6.x);
  let v_20 = (r2.xyz * r6.xxx);
  r6 = vec4<f32>(v_20.xyz, r6.w);
  let v_21 = -(r6.xyzx);
  let v_22 = fma(r4.xyz, r0.www, v_21.xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_23 = (r0.www * r4.xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  r7.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r7.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r7.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_25 = -(r7.xyzx);
  r0.z = dot(v_25.xyz, (-(r7.xyzx)).xyz);
  r0.z = sqrt(r0.z);
  let v_26 = ((-(r7.xyzx)).xyz / r0.zzz);
  r2 = vec4<f32>(v_26.xyz, r2.w);
  r0.w = (r0.z * cb6_6.tint_symbol_2[17u].w);
  let v_27 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r2.xyz)));
  r7 = vec4<f32>(v_27.xyz, r7.w);
  let v_28 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r2.xyz < vec3<f32>())));
  r8 = vec4<f32>(v_28.xyz, r8.w);
  let v_29 = -(bitcast<vec4<i32>>(r7.xyzx));
  let v_30 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r8.xyz) + v_29.xyz));
  r7 = vec4<f32>(v_30.xyz, r7.w);
  let v_31 = vec3<f32>(bitcast<vec3<i32>>(r7.xyz));
  r7 = vec4<f32>(v_31.xyz, r7.w);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r2.zzyy) < abs(r2.xyxz))));
  let v_32 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r8.yw) | bitcast<vec2<u32>>(r8.xz)));
  r8 = vec4<f32>(v_32.xy, r8.zw);
  let v_33 = (-(r7.xyzx)).xyz;
  r7 = vec4<f32>(v_33.xyz, r7.w);
  r7.w = 0.0f;
  let v_34 = bitcast<vec3<u32>>(r8.yyy);
  let v_35 = r7.wxw;
  let v_36 = select(r7.wwy, v_35, (v_34 != vec3<u32>()));
  r8 = vec4<f32>(r8.x, v_36.xyz);
  let v_37 = bitcast<vec3<u32>>(r8.xxx);
  let v_38 = r8.yzw;
  let v_39 = select(r7.wwz, v_38, (v_37 != vec3<u32>()));
  r7 = vec4<f32>(v_39.xyz, r7.w);
  let v_40 = (r2.zxy * r7.xyz);
  r8 = vec4<f32>(v_40.xyz, r8.w);
  let v_41 = -(r8.xyzx);
  let v_42 = fma(r2.yzx, r7.yzx, v_41.xyz);
  r7 = vec4<f32>(v_42.xyz, r7.w);
  r6.w = dot(r7.xyz, r7.xyz);
  r6.w = inverseSqrt(r6.w);
  let v_43 = (r6.www * r7.xyz);
  r7 = vec4<f32>(v_43.xyz, r7.w);
  let v_44 = (r2.yzx * r7.zxy);
  r8 = vec4<f32>(v_44.xyz, r8.w);
  let v_45 = -(r8.xyzx);
  let v_46 = fma(r7.yzx, r2.zxy, v_45.xyz);
  r8 = vec4<f32>(v_46.xyz, r8.w);
  r9 = dpdx(r2.xyzx);
  r6.w = dpdx(r0.w);
  r10 = dpdy(r2.xyzx);
  r0.w = dpdy(r0.w);
  r11.z = dot(r9.yzw, r9.yzw);
  r7.w = dot(r9.yzw, r10.yzw);
  r11.x = dot(r10.yzw, r10.yzw);
  r8.w = (r7.w * r7.w);
  let v_47 = -(r8.wwww);
  r8.w = fma(r11.z, r11.x, v_47.w);
  r8.w = (1.0f / r8.w);
  r11.y = (-(r7.wwww)).y;
  r12 = (r8.wwww * r11.xxxy);
  r11 = (r11.yyyz * r8.wwww);
  r13 = (r10 * r11);
  r13 = fma(r9, r12, r13);
  let v_48 = (r10.yz * r11.ww);
  r9 = vec4<f32>(v_48.x, r9.yz, v_48.y);
  let v_49 = fma(r9.yz, r12.ww, r9.xw);
  r9 = vec4<f32>(v_49.xy, r9.zw);
  let v_50 = (r6.www * r13.xyz);
  r10 = vec4<f32>(v_50.xyz, r10.w);
  r11.x = fma(r0.w, r13.w, r10.x);
  let v_51 = fma(r0.ww, r9.xy, r10.yz);
  let v_52 = r11;
  r11 = vec4<f32>(v_52.x, v_51.xy, v_52.w);
  let v_53 = max(r11.xyz, vec3<f32>(-1.0f));
  r9 = vec4<f32>(v_53.xyz, r9.w);
  let v_54 = min(r9.xyz, vec3<f32>(1.0f));
  r9 = vec4<f32>(v_54.xyz, r9.w);
  let v_55 = (r0.xy * vec2<f32>(0.015625f));
  r0 = vec4<f32>(v_55.xy, r0.zw);
  let v_56 = textureSample(t1, s1, r0.xyxx.xy).xy;
  r0 = vec4<f32>(v_56.xy, r0.zw);
  let v_57 = fma(r0.yx, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_57.xy, r0.zw);
  r0.w = (cb6_6.tint_symbol_2[18u].w * 4.0f);
  let v_58 = (r0.www * r8.xyz);
  r8 = vec4<f32>(v_58.xyz, r8.w);
  let v_59 = (r0.www * r7.xyz);
  r7 = vec4<f32>(v_59.xyz, r7.w);
  let v_60 = (r0.yyy * r8.xyz);
  r10 = vec4<f32>(v_60.xyz, r10.w);
  let v_61 = (r0.xxx * r7.xyz);
  r11 = vec4<f32>(v_61.xyz, r11.w);
  let v_62 = fma(r0.yyy, r8.xyz, r11.xyz);
  r12 = vec4<f32>(v_62.xyz, r12.w);
  let v_63 = (r2.xyz + r12.xyz);
  r13 = vec4<f32>(v_63.xyz, r13.w);
  r0.w = dot(r9.xyz, r12.xyz);
  r0.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r0.w);
  let v_64 = r13.xyzx;
  r0.w = textureSampleCompareLevel(t14, s14, v_64.xyz, r0.w);
  let v_65 = -(r11.xyzx);
  let v_66 = fma(r0.yyy, r8.xyz, v_65.xyz);
  r11 = vec4<f32>(v_66.xyz, r11.w);
  let v_67 = (r11.xyz * vec3<f32>(0.5f));
  r12 = vec4<f32>(v_67.xyz, r12.w);
  let v_68 = fma(r11.xyz, vec3<f32>(0.5f), r2.xyz);
  r11 = vec4<f32>(v_68.xyz, r11.w);
  r6.w = dot(r9.xyz, r12.xyz);
  r6.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r6.w);
  let v_69 = r11.xyzx;
  r6.w = textureSampleCompareLevel(t14, s14, v_69.xyz, r6.w);
  r0.w = (r0.w + r6.w);
  let v_70 = -(r10.xyzx);
  let v_71 = fma(r0.xxx, r7.xyz, v_70.xyz);
  r10 = vec4<f32>(v_71.xyz, r10.w);
  let v_72 = (r10.xyz * vec3<f32>(0.25f));
  r11 = vec4<f32>(v_72.xyz, r11.w);
  let v_73 = fma(r10.xyz, vec3<f32>(0.25f), r2.xyz);
  r10 = vec4<f32>(v_73.xyz, r10.w);
  r6.w = dot(r9.xyz, r11.xyz);
  r6.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r6.w);
  let v_74 = r10.xyzx;
  r6.w = textureSampleCompareLevel(t14, s14, v_74.xyz, r6.w);
  r0.w = (r0.w + r6.w);
  let v_75 = -(r0.xxxx);
  r10.x = (v_75.x + (-(r0.yyyy)).x);
  r10.y = ((-(r0.xxxx)).y + r0.y);
  let v_76 = (r10.xy * vec2<f32>(0.54447221755981445312f));
  r10 = vec4<f32>(v_76.xy, r10.zw);
  let v_77 = (r8.xyz * r10.xxx);
  r11 = vec4<f32>(v_77.xyz, r11.w);
  let v_78 = (r7.xyz * r10.yyy);
  r12 = vec4<f32>(v_78.xyz, r12.w);
  let v_79 = fma(r10.xxx, r8.xyz, r12.xyz);
  r13 = vec4<f32>(v_79.xyz, r13.w);
  let v_80 = (r2.xyz + r13.xyz);
  r14 = vec4<f32>(v_80.xyz, r14.w);
  r6.w = dot(r9.xyz, r13.xyz);
  r6.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r6.w);
  let v_81 = r14.xyzx;
  r6.w = textureSampleCompareLevel(t14, s14, v_81.xyz, r6.w);
  r0.w = (r0.w + r6.w);
  let v_82 = -(r12.xxyz);
  let v_83 = fma(r10.xxx, r8.xyz, v_82.xzw);
  r10 = vec4<f32>(v_83.x, r10.y, v_83.yz);
  let v_84 = (r10.xzw * vec3<f32>(0.5f));
  r12 = vec4<f32>(v_84.xyz, r12.w);
  let v_85 = fma(r10.xzw, vec3<f32>(0.5f), r2.xyz);
  r10 = vec4<f32>(v_85.x, r10.y, v_85.yz);
  r6.w = dot(r9.xyz, r12.xyz);
  r6.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r6.w);
  let v_86 = r10.xzwx;
  r6.w = textureSampleCompareLevel(t14, s14, v_86.xyz, r6.w);
  r0.w = (r0.w + r6.w);
  let v_87 = -(r11.xyzx);
  let v_88 = fma(r10.yyy, r7.xyz, v_87.xyz);
  r10 = vec4<f32>(v_88.xyz, r10.w);
  let v_89 = (r10.xyz * vec3<f32>(0.25f));
  r11 = vec4<f32>(v_89.xyz, r11.w);
  let v_90 = fma(r10.xyz, vec3<f32>(0.25f), r2.xyz);
  r10 = vec4<f32>(v_90.xyz, r10.w);
  r6.w = dot(r9.xyz, r11.xyz);
  r6.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r6.w);
  let v_91 = r10.xyzx;
  r6.w = textureSampleCompareLevel(t14, s14, v_91.xyz, r6.w);
  r0.w = (r0.w + r6.w);
  let v_92 = (r0.xy * vec2<f32>(0.43999999761581420898f, -0.43999999761581420898f));
  r0 = vec4<f32>(v_92.xy, r0.zw);
  let v_93 = (r8.xyz * r0.xxx);
  r10 = vec4<f32>(v_93.xyz, r10.w);
  let v_94 = (r7.xyz * r0.yyy);
  r11 = vec4<f32>(v_94.xyz, r11.w);
  let v_95 = fma(r0.xxx, r8.xyz, r11.xyz);
  r12 = vec4<f32>(v_95.xyz, r12.w);
  let v_96 = (r2.xyz + r12.xyz);
  r13 = vec4<f32>(v_96.xyz, r13.w);
  r6.w = dot(r9.xyz, r12.xyz);
  r6.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r6.w);
  let v_97 = r13.xyzx;
  r6.w = textureSampleCompareLevel(t14, s14, v_97.xyz, r6.w);
  r0.w = (r0.w + r6.w);
  let v_98 = -(r11.xyzx);
  let v_99 = fma(r0.xxx, r8.xyz, v_98.xyz);
  r8 = vec4<f32>(v_99.xyz, r8.w);
  let v_100 = (r8.xyz * vec3<f32>(0.5f));
  r11 = vec4<f32>(v_100.xyz, r11.w);
  let v_101 = fma(r8.xyz, vec3<f32>(0.5f), r2.xyz);
  r8 = vec4<f32>(v_101.xyz, r8.w);
  r0.x = dot(r9.xyz, r11.xyz);
  r0.x = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r0.x);
  let v_102 = r8.xyzx;
  r0.x = textureSampleCompareLevel(t14, s14, v_102.xyz, r0.x);
  r0.x = (r0.x + r0.w);
  let v_103 = -(r10.xyzx);
  let v_104 = fma(r0.yyy, r7.xyz, v_103.xyz);
  r7 = vec4<f32>(v_104.xyz, r7.w);
  let v_105 = (r7.xyz * vec3<f32>(0.25f));
  r8 = vec4<f32>(v_105.xyz, r8.w);
  let v_106 = fma(r7.xyz, vec3<f32>(0.25f), r2.xyz);
  r2 = vec4<f32>(v_106.xyz, r2.w);
  r0.y = dot(r9.xyz, r8.xyz);
  r0.y = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r0.y);
  let v_107 = r2.xyzx;
  r0.y = textureSampleCompareLevel(t14, s14, v_107.xyz, r0.y);
  r0.x = (r0.y + r0.x);
  r0.y = select(1.0f, 0.0f, (bitcast<u32>(r3.x) != 0u));
  r0.y = (r0.y * r2.w);
  let v_108 = (cb12_12.tint_symbol_3[3u].www * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_108.xyz, r2.w);
  let v_109 = dot(r1.xyz, r5.xyw);
  r0.z = clamp(vec4<f32>(v_109, v_109, v_109, v_109).z, 0.0f, 1.0f);
  let v_110 = dot((-(r6.xyzx)).xyz, r1.xyz);
  r6.x = clamp(vec4<f32>(v_110, v_110, v_110, v_110).x, 0.0f, 1.0f);
  let v_111 = dot(r4.xyz, r5.xyw);
  r6.y = clamp(vec4<f32>(v_111, v_111, v_111, v_111).y, 0.0f, 1.0f);
  let v_112 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r5 = vec4<f32>(v_112.xy, r5.zw);
  let v_113 = (r5.xy * r5.xy);
  r6 = vec4<f32>(v_113.xy, r6.zw);
  let v_114 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_114.xy, r6.zw);
  let v_115 = (r5.xy * r6.xy);
  r5 = vec4<f32>(v_115.xy, r5.zw);
  r0.w = ((-(r5.zzzz)).w + 1.0f);
  let v_116 = fma(r5.zz, r5.xy, r0.ww);
  r5 = vec4<f32>(v_116.xy, r5.zw);
  let v_117 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(r5.xy, v_117.xy);
  r0.w = (r5.z * 0.125f);
  r2.w = fma((-(r1.wwww)).w, r5.x, 1.0f);
  r1.x = dot(r1.xyz, r4.xyz);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r1.x = (r1.x * r5.w);
  r1.x = exp2(r1.x);
  r1.x = (r5.y * r1.x);
  r0.w = (r0.w * r1.x);
  r0.w = (r1.w * r0.w);
  r0.w = (r0.z * r0.w);
  r0.z = (r0.z * r2.w);
  r0.w = (r0.w * cb12_12.tint_symbol_3[8u].z);
  r0.x = fma(r0.x, 0.11111111193895339966f, -1.0f);
  r0.x = fma(cb12_12.tint_symbol_3[8u].y, r0.x, 1.0f);
  let v_118 = fma(r3.yzw, r0.zzz, r0.www);
  r1 = vec4<f32>(v_118.xyz, r1.w);
  let v_119 = (r2.xyz * r1.xyz);
  r1 = vec4<f32>(v_119.xyz, r1.w);
  let v_120 = (r0.yyy * r1.xyz);
  r0 = vec4<f32>(r0.x, v_120.xyz);
  let v_121 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_121.xyz, r0.w);
  let v_122 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_122.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_7(v_123 : bool) {
  if (v_123) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
