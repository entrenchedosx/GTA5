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
  let v_10 = textureLoad(t9, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).xz;
  r5 = vec4<f32>(v_10.xy, r5.zw);
  r4.w = (r5.x * r5.x);
  r1 = textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  let v_11 = (r1.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_11.x, r5.y, v_11.yz);
  let v_12 = fract(r5.xzw);
  r5 = vec4<f32>(v_12.x, r5.y, v_12.yz);
  let v_13 = fma((-(r5.zzwz)).xz, vec2<f32>(0.125f), r5.xz);
  let v_14 = r5;
  r5 = vec4<f32>(v_13.x, v_14.y, v_13.y, v_14.w);
  let v_15 = fma(r1.xyz, vec3<f32>(256.0f), r5.xzw);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = (r1.xyz + vec3<f32>(-128.0f));
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_17 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  r1.w = min(r4.w, 1.0f);
  r0.w = inverseSqrt(r0.w);
  let v_18 = (r0.www * r4.xyz);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_19 = (r0.www * r2.xyz);
  r5 = vec4<f32>(v_19.x, r5.y, v_19.yz);
  let v_20 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  r6.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r6.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r6.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_21 = -(r6.xyzx);
  r0.z = dot(v_21.xyz, (-(r6.xyzx)).xyz);
  r0.z = sqrt(r0.z);
  let v_22 = ((-(r6.xyzx)).xyz / r0.zzz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  r0.w = (r0.z * cb6_6.tint_symbol_2[17u].w);
  let v_23 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r2.xyz)));
  r6 = vec4<f32>(v_23.xyz, r6.w);
  let v_24 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r2.xyz < vec3<f32>())));
  r7 = vec4<f32>(v_24.xyz, r7.w);
  let v_25 = -(bitcast<vec4<i32>>(r6.xyzx));
  let v_26 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r7.xyz) + v_25.xyz));
  r6 = vec4<f32>(v_26.xyz, r6.w);
  let v_27 = vec3<f32>(bitcast<vec3<i32>>(r6.xyz));
  r6 = vec4<f32>(v_27.xyz, r6.w);
  r7 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r2.zzyy) < abs(r2.xyxz))));
  let v_28 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r7.yw) | bitcast<vec2<u32>>(r7.xz)));
  r7 = vec4<f32>(v_28.xy, r7.zw);
  let v_29 = (-(r6.xyzx)).xyz;
  r6 = vec4<f32>(v_29.xyz, r6.w);
  r6.w = 0.0f;
  let v_30 = bitcast<vec3<u32>>(r7.yyy);
  let v_31 = r6.wxw;
  let v_32 = select(r6.wwy, v_31, (v_30 != vec3<u32>()));
  r7 = vec4<f32>(r7.x, v_32.xyz);
  let v_33 = bitcast<vec3<u32>>(r7.xxx);
  let v_34 = r7.yzw;
  let v_35 = select(r6.wwz, v_34, (v_33 != vec3<u32>()));
  r6 = vec4<f32>(v_35.xyz, r6.w);
  let v_36 = (r2.zxy * r6.xyz);
  r7 = vec4<f32>(v_36.xyz, r7.w);
  let v_37 = -(r7.xyzx);
  let v_38 = fma(r2.yzx, r6.yzx, v_37.xyz);
  r6 = vec4<f32>(v_38.xyz, r6.w);
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_39 = (r4.www * r6.xyz);
  r6 = vec4<f32>(v_39.xyz, r6.w);
  let v_40 = (r2.yzx * r6.zxy);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  let v_41 = -(r7.xyzx);
  let v_42 = fma(r6.yzx, r2.zxy, v_41.xyz);
  r7 = vec4<f32>(v_42.xyz, r7.w);
  r8 = dpdx(r2.xyzx);
  r4.w = dpdx(r0.w);
  r9 = dpdy(r2.xyzx);
  r0.w = dpdy(r0.w);
  r10.z = dot(r8.yzw, r8.yzw);
  r6.w = dot(r8.yzw, r9.yzw);
  r10.x = dot(r9.yzw, r9.yzw);
  r7.w = (r6.w * r6.w);
  let v_43 = -(r7.wwww);
  r7.w = fma(r10.z, r10.x, v_43.w);
  r7.w = (1.0f / r7.w);
  r10.y = (-(r6.wwww)).y;
  r11 = (r7.wwww * r10.xxxy);
  r10 = (r10.yyyz * r7.wwww);
  r12 = (r9 * r10);
  r12 = fma(r8, r11, r12);
  let v_44 = (r9.yz * r10.ww);
  r8 = vec4<f32>(v_44.x, r8.yz, v_44.y);
  let v_45 = fma(r8.yz, r11.ww, r8.xw);
  r8 = vec4<f32>(v_45.xy, r8.zw);
  let v_46 = (r4.www * r12.xyz);
  r9 = vec4<f32>(v_46.xyz, r9.w);
  r10.x = fma(r0.w, r12.w, r9.x);
  let v_47 = fma(r0.ww, r8.xy, r9.yz);
  let v_48 = r10;
  r10 = vec4<f32>(v_48.x, v_47.xy, v_48.w);
  let v_49 = max(r10.xyz, vec3<f32>(-1.0f));
  r8 = vec4<f32>(v_49.xyz, r8.w);
  let v_50 = min(r8.xyz, vec3<f32>(1.0f));
  r8 = vec4<f32>(v_50.xyz, r8.w);
  let v_51 = (r0.xy * vec2<f32>(0.015625f));
  r0 = vec4<f32>(v_51.xy, r0.zw);
  let v_52 = textureSample(t1, s1, r0.xyxx.xy).xy;
  r0 = vec4<f32>(v_52.xy, r0.zw);
  let v_53 = fma(r0.yx, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_53.xy, r0.zw);
  r0.w = (cb6_6.tint_symbol_2[18u].w * 4.0f);
  let v_54 = (r0.www * r7.xyz);
  r7 = vec4<f32>(v_54.xyz, r7.w);
  let v_55 = (r0.www * r6.xyz);
  r6 = vec4<f32>(v_55.xyz, r6.w);
  let v_56 = (r0.yyy * r7.xyz);
  r9 = vec4<f32>(v_56.xyz, r9.w);
  let v_57 = (r0.xxx * r6.xyz);
  r10 = vec4<f32>(v_57.xyz, r10.w);
  let v_58 = fma(r0.yyy, r7.xyz, r10.xyz);
  r11 = vec4<f32>(v_58.xyz, r11.w);
  let v_59 = (r2.xyz + r11.xyz);
  r12 = vec4<f32>(v_59.xyz, r12.w);
  r0.w = dot(r8.xyz, r11.xyz);
  r0.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r0.w);
  let v_60 = r12.xyzx;
  r0.w = textureSampleCompareLevel(t14, s14, v_60.xyz, r0.w);
  let v_61 = -(r10.xyzx);
  let v_62 = fma(r0.yyy, r7.xyz, v_61.xyz);
  r10 = vec4<f32>(v_62.xyz, r10.w);
  let v_63 = (r10.xyz * vec3<f32>(0.5f));
  r11 = vec4<f32>(v_63.xyz, r11.w);
  let v_64 = fma(r10.xyz, vec3<f32>(0.5f), r2.xyz);
  r10 = vec4<f32>(v_64.xyz, r10.w);
  r4.w = dot(r8.xyz, r11.xyz);
  r4.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r4.w);
  let v_65 = r10.xyzx;
  r4.w = textureSampleCompareLevel(t14, s14, v_65.xyz, r4.w);
  r0.w = (r0.w + r4.w);
  let v_66 = -(r9.xyzx);
  let v_67 = fma(r0.xxx, r6.xyz, v_66.xyz);
  r9 = vec4<f32>(v_67.xyz, r9.w);
  let v_68 = (r9.xyz * vec3<f32>(0.25f));
  r10 = vec4<f32>(v_68.xyz, r10.w);
  let v_69 = fma(r9.xyz, vec3<f32>(0.25f), r2.xyz);
  r9 = vec4<f32>(v_69.xyz, r9.w);
  r4.w = dot(r8.xyz, r10.xyz);
  r4.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r4.w);
  let v_70 = r9.xyzx;
  r4.w = textureSampleCompareLevel(t14, s14, v_70.xyz, r4.w);
  r0.w = (r0.w + r4.w);
  let v_71 = -(r0.xxxx);
  r9.x = (v_71.x + (-(r0.yyyy)).x);
  r9.y = ((-(r0.xxxx)).y + r0.y);
  let v_72 = (r9.xy * vec2<f32>(0.54447221755981445312f));
  r9 = vec4<f32>(v_72.xy, r9.zw);
  let v_73 = (r7.xyz * r9.xxx);
  r10 = vec4<f32>(v_73.xyz, r10.w);
  let v_74 = (r6.xyz * r9.yyy);
  r11 = vec4<f32>(v_74.xyz, r11.w);
  let v_75 = fma(r9.xxx, r7.xyz, r11.xyz);
  r12 = vec4<f32>(v_75.xyz, r12.w);
  let v_76 = (r2.xyz + r12.xyz);
  r13 = vec4<f32>(v_76.xyz, r13.w);
  r4.w = dot(r8.xyz, r12.xyz);
  r4.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r4.w);
  let v_77 = r13.xyzx;
  r4.w = textureSampleCompareLevel(t14, s14, v_77.xyz, r4.w);
  r0.w = (r0.w + r4.w);
  let v_78 = -(r11.xxyz);
  let v_79 = fma(r9.xxx, r7.xyz, v_78.xzw);
  r9 = vec4<f32>(v_79.x, r9.y, v_79.yz);
  let v_80 = (r9.xzw * vec3<f32>(0.5f));
  r11 = vec4<f32>(v_80.xyz, r11.w);
  let v_81 = fma(r9.xzw, vec3<f32>(0.5f), r2.xyz);
  r9 = vec4<f32>(v_81.x, r9.y, v_81.yz);
  r4.w = dot(r8.xyz, r11.xyz);
  r4.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r4.w);
  let v_82 = r9.xzwx;
  r4.w = textureSampleCompareLevel(t14, s14, v_82.xyz, r4.w);
  r0.w = (r0.w + r4.w);
  let v_83 = -(r10.xyzx);
  let v_84 = fma(r9.yyy, r6.xyz, v_83.xyz);
  r9 = vec4<f32>(v_84.xyz, r9.w);
  let v_85 = (r9.xyz * vec3<f32>(0.25f));
  r10 = vec4<f32>(v_85.xyz, r10.w);
  let v_86 = fma(r9.xyz, vec3<f32>(0.25f), r2.xyz);
  r9 = vec4<f32>(v_86.xyz, r9.w);
  r4.w = dot(r8.xyz, r10.xyz);
  r4.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r4.w);
  let v_87 = r9.xyzx;
  r4.w = textureSampleCompareLevel(t14, s14, v_87.xyz, r4.w);
  r0.w = (r0.w + r4.w);
  let v_88 = (r0.xy * vec2<f32>(0.43999999761581420898f, -0.43999999761581420898f));
  r0 = vec4<f32>(v_88.xy, r0.zw);
  let v_89 = (r7.xyz * r0.xxx);
  r9 = vec4<f32>(v_89.xyz, r9.w);
  let v_90 = (r6.xyz * r0.yyy);
  r10 = vec4<f32>(v_90.xyz, r10.w);
  let v_91 = fma(r0.xxx, r7.xyz, r10.xyz);
  r11 = vec4<f32>(v_91.xyz, r11.w);
  let v_92 = (r2.xyz + r11.xyz);
  r12 = vec4<f32>(v_92.xyz, r12.w);
  r4.w = dot(r8.xyz, r11.xyz);
  r4.w = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r4.w);
  let v_93 = r12.xyzx;
  r4.w = textureSampleCompareLevel(t14, s14, v_93.xyz, r4.w);
  r0.w = (r0.w + r4.w);
  let v_94 = -(r10.xyzx);
  let v_95 = fma(r0.xxx, r7.xyz, v_94.xyz);
  r7 = vec4<f32>(v_95.xyz, r7.w);
  let v_96 = (r7.xyz * vec3<f32>(0.5f));
  r10 = vec4<f32>(v_96.xyz, r10.w);
  let v_97 = fma(r7.xyz, vec3<f32>(0.5f), r2.xyz);
  r7 = vec4<f32>(v_97.xyz, r7.w);
  r0.x = dot(r8.xyz, r10.xyz);
  r0.x = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r0.x);
  let v_98 = r7.xyzx;
  r0.x = textureSampleCompareLevel(t14, s14, v_98.xyz, r0.x);
  r0.x = (r0.x + r0.w);
  let v_99 = -(r9.xyzx);
  let v_100 = fma(r0.yyy, r6.xyz, v_99.xyz);
  r6 = vec4<f32>(v_100.xyz, r6.w);
  let v_101 = (r6.xyz * vec3<f32>(0.25f));
  r7 = vec4<f32>(v_101.xyz, r7.w);
  let v_102 = fma(r6.xyz, vec3<f32>(0.25f), r2.xyz);
  r2 = vec4<f32>(v_102.xyz, r2.w);
  r0.y = dot(r8.xyz, r7.xyz);
  r0.y = fma(r0.z, cb6_6.tint_symbol_2[17u].w, r0.y);
  let v_103 = r2.xyzx;
  r0.y = textureSampleCompareLevel(t14, s14, v_103.xyz, r0.y);
  r0.x = (r0.y + r0.x);
  r0.y = select(1.0f, 0.0f, (bitcast<u32>(r3.x) != 0u));
  r0.y = (r0.y * r2.w);
  let v_104 = (cb12_12.tint_symbol_3[3u].www * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_104.xyz, r2.w);
  let v_105 = dot(r1.xyz, r4.xyz);
  r0.z = clamp(vec4<f32>(v_105, v_105, v_105, v_105).z, 0.0f, 1.0f);
  let v_106 = dot((-(r5.xzwx)).xyz, r1.xyz);
  r0.w = clamp(vec4<f32>(v_106, v_106, v_106, v_106).w, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r1.x = (r0.w * r0.w);
  r1.x = (r1.x * r1.x);
  r0.w = (r0.w * r1.x);
  r1.x = ((-(r5.yyyy)).x + 1.0f);
  r0.w = fma(r5.y, r0.w, r1.x);
  r0.w = fma((-(r1.wwww)).w, r0.w, 1.0f);
  r0.z = (r0.w * r0.z);
  r0.x = fma(r0.x, 0.11111111193895339966f, -1.0f);
  r0.x = fma(cb12_12.tint_symbol_3[8u].y, r0.x, 1.0f);
  let v_107 = (r0.zzz * r3.yzw);
  r1 = vec4<f32>(v_107.xyz, r1.w);
  let v_108 = (r2.xyz * r1.xyz);
  r1 = vec4<f32>(v_108.xyz, r1.w);
  let v_109 = (r0.yyy * r1.xyz);
  r0 = vec4<f32>(r0.x, v_109.xyz);
  let v_110 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_110.xyz, r0.w);
  let v_111 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_111.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_7(v_112 : bool) {
  if (v_112) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
