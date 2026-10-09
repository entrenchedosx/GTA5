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
  r4 = textureSample(t7, s7, r0.xyxx.xy);
  let v_9 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  r5 = textureSample(t9, s9, r0.xyxx.xy);
  r2.w = (r5.x * r5.x);
  r6 = textureSample(t8, s8, r0.xyxx.xy);
  let v_10 = (r6.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_10.xy, r5.z, v_10.z);
  let v_11 = fract(r5.xyw);
  r5 = vec4<f32>(v_11.xy, r5.z, v_11.z);
  let v_12 = fma((-(r5.ywyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_12.xy, r5.zw);
  let v_13 = fma(r6.xyz, vec3<f32>(256.0f), r5.xyw);
  r5 = vec4<f32>(v_13.xy, r5.z, v_13.z);
  let v_14 = (r5.xyw + vec3<f32>(-128.0f));
  r5 = vec4<f32>(v_14.xy, r5.z, v_14.z);
  r0.x = dot(r5.xyw, r5.xyw);
  r0.x = inverseSqrt(r0.x);
  let v_15 = (r0.xxx * r5.xyw);
  r5 = vec4<f32>(v_15.xy, r5.z, v_15.z);
  r0.x = min(r2.w, 1.0f);
  r0.y = inverseSqrt(r0.w);
  let v_16 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_17 = (r0.yyy * r2.xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  let v_18 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
  r0 = vec4<f32>(r0.x, v_18.xyz);
  r2.x = dot(r0.yzw, cb6_6.tint_symbol_2[15u].xyz);
  r2.y = dot(r0.yzw, cb6_6.tint_symbol_2[16u].xyz);
  r2.z = dot(r0.yzw, cb6_6.tint_symbol_2[17u].xyz);
  let v_19 = -(r2.xyzx);
  r0.y = dot(v_19.xyz, (-(r2.xyzx)).xyz);
  r0.y = sqrt(r0.y);
  let v_20 = ((-(r2.xyzx)).xyz / r0.yyy);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  r0.z = (r0.y * cb6_6.tint_symbol_2[17u].w);
  let v_21 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r2.xyz)));
  r7 = vec4<f32>(v_21.xyz, r7.w);
  let v_22 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r2.xyz < vec3<f32>())));
  r8 = vec4<f32>(v_22.xyz, r8.w);
  let v_23 = -(bitcast<vec4<i32>>(r7.xyzx));
  let v_24 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r8.xyz) + v_23.xyz));
  r7 = vec4<f32>(v_24.xyz, r7.w);
  let v_25 = vec3<f32>(bitcast<vec3<i32>>(r7.xyz));
  r7 = vec4<f32>(v_25.xyz, r7.w);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r2.zzyy) < abs(r2.xyxz))));
  let v_26 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r8.yw) | bitcast<vec2<u32>>(r8.xz)));
  r8 = vec4<f32>(v_26.xy, r8.zw);
  let v_27 = (-(r7.xyzx)).xyz;
  r7 = vec4<f32>(v_27.xyz, r7.w);
  r7.w = 0.0f;
  let v_28 = bitcast<vec3<u32>>(r8.yyy);
  let v_29 = r7.wxw;
  let v_30 = select(r7.wwy, v_29, (v_28 != vec3<u32>()));
  r8 = vec4<f32>(r8.x, v_30.xyz);
  let v_31 = bitcast<vec3<u32>>(r8.xxx);
  let v_32 = r8.yzw;
  let v_33 = select(r7.wwz, v_32, (v_31 != vec3<u32>()));
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = (r2.zxy * r7.xyz);
  r8 = vec4<f32>(v_34.xyz, r8.w);
  let v_35 = -(r8.xyzx);
  let v_36 = fma(r2.yzx, r7.yzx, v_35.xyz);
  r7 = vec4<f32>(v_36.xyz, r7.w);
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_37 = (r0.www * r7.xyz);
  r7 = vec4<f32>(v_37.xyz, r7.w);
  let v_38 = (r2.yzx * r7.zxy);
  r8 = vec4<f32>(v_38.xyz, r8.w);
  let v_39 = -(r8.xyzx);
  let v_40 = fma(r7.yzx, r2.zxy, v_39.xyz);
  r8 = vec4<f32>(v_40.xyz, r8.w);
  r9 = dpdx(r2.xyzx);
  r0.w = dpdx(r0.z);
  r10 = dpdy(r2.xyzx);
  r0.z = dpdy(r0.z);
  r11.z = dot(r9.yzw, r9.yzw);
  r2.w = dot(r9.yzw, r10.yzw);
  r11.x = dot(r10.yzw, r10.yzw);
  r3.w = (r2.w * r2.w);
  let v_41 = -(r3.wwww);
  r3.w = fma(r11.z, r11.x, v_41.w);
  r3.w = (1.0f / r3.w);
  r11.y = (-(r2.wwww)).y;
  r12 = (r3.wwww * r11.xxxy);
  r11 = (r11.yyyz * r3.wwww);
  r13 = (r10 * r11);
  r13 = fma(r9, r12, r13);
  let v_42 = (r10.yz * r11.ww);
  r9 = vec4<f32>(v_42.x, r9.yz, v_42.y);
  let v_43 = fma(r9.yz, r12.ww, r9.xw);
  r9 = vec4<f32>(v_43.xy, r9.zw);
  let v_44 = (r0.www * r13.xyz);
  r10 = vec4<f32>(v_44.xyz, r10.w);
  r11.x = fma(r0.z, r13.w, r10.x);
  let v_45 = fma(r0.zz, r9.xy, r10.yz);
  let v_46 = r11;
  r11 = vec4<f32>(v_46.x, v_45.xy, v_46.w);
  let v_47 = max(r11.xyz, vec3<f32>(-1.0f));
  r9 = vec4<f32>(v_47.xyz, r9.w);
  let v_48 = min(r9.xyz, vec3<f32>(1.0f));
  r9 = vec4<f32>(v_48.xyz, r9.w);
  let v_49 = (r1.yz * vec2<f32>(0.015625f));
  r0 = vec4<f32>(r0.xy, v_49.xy);
  r10 = textureSample(t1, s1, r0.zwzz.xy);
  let v_50 = fma(r10.yx, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_50.xy);
  r1.y = (cb6_6.tint_symbol_2[18u].w * 4.0f);
  let v_51 = (r1.yyy * r8.xyz);
  r8 = vec4<f32>(v_51.xyz, r8.w);
  let v_52 = (r1.yyy * r7.xyz);
  r7 = vec4<f32>(v_52.xyz, r7.w);
  let v_53 = (r0.www * r8.xyz);
  r10 = vec4<f32>(v_53.xyz, r10.w);
  let v_54 = (r0.zzz * r7.xyz);
  r11 = vec4<f32>(v_54.xyz, r11.w);
  let v_55 = fma(r0.www, r8.xyz, r11.xyz);
  r12 = vec4<f32>(v_55.xyz, r12.w);
  let v_56 = (r2.xyz + r12.xyz);
  r13 = vec4<f32>(v_56.xyz, r13.w);
  r1.y = dot(r9.xyz, r12.xyz);
  r1.y = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r1.y);
  let v_57 = r13.xyzx;
  r1.y = textureSampleCompareLevel(t14, s14, v_57.xyz, r1.y);
  let v_58 = -(r11.xyzx);
  let v_59 = fma(r0.www, r8.xyz, v_58.xyz);
  r11 = vec4<f32>(v_59.xyz, r11.w);
  let v_60 = (r11.xyz * vec3<f32>(0.5f));
  r12 = vec4<f32>(v_60.xyz, r12.w);
  let v_61 = fma(r11.xyz, vec3<f32>(0.5f), r2.xyz);
  r11 = vec4<f32>(v_61.xyz, r11.w);
  r1.z = dot(r9.xyz, r12.xyz);
  r1.z = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r1.z);
  let v_62 = r11.xyzx;
  r1.z = textureSampleCompareLevel(t14, s14, v_62.xyz, r1.z);
  r1.y = (r1.z + r1.y);
  let v_63 = -(r10.xyzx);
  let v_64 = fma(r0.zzz, r7.xyz, v_63.xyz);
  r10 = vec4<f32>(v_64.xyz, r10.w);
  let v_65 = (r10.xyz * vec3<f32>(0.25f));
  r11 = vec4<f32>(v_65.xyz, r11.w);
  let v_66 = fma(r10.xyz, vec3<f32>(0.25f), r2.xyz);
  r10 = vec4<f32>(v_66.xyz, r10.w);
  r1.z = dot(r9.xyz, r11.xyz);
  r1.z = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r1.z);
  let v_67 = r10.xyzx;
  r1.z = textureSampleCompareLevel(t14, s14, v_67.xyz, r1.z);
  r1.y = (r1.z + r1.y);
  let v_68 = -(r0.zzzz);
  r10.x = (v_68.x + (-(r0.wwww)).x);
  r10.y = ((-(r0.zzzz)).y + r0.w);
  let v_69 = (r10.xy * vec2<f32>(0.54447221755981445312f));
  r10 = vec4<f32>(v_69.xy, r10.zw);
  let v_70 = (r8.xyz * r10.xxx);
  r11 = vec4<f32>(v_70.xyz, r11.w);
  let v_71 = (r7.xyz * r10.yyy);
  r12 = vec4<f32>(v_71.xyz, r12.w);
  let v_72 = fma(r10.xxx, r8.xyz, r12.xyz);
  r13 = vec4<f32>(v_72.xyz, r13.w);
  let v_73 = (r2.xyz + r13.xyz);
  r14 = vec4<f32>(v_73.xyz, r14.w);
  r1.z = dot(r9.xyz, r13.xyz);
  r1.z = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r1.z);
  let v_74 = r14.xyzx;
  r1.z = textureSampleCompareLevel(t14, s14, v_74.xyz, r1.z);
  r1.y = (r1.z + r1.y);
  let v_75 = -(r12.xxyz);
  let v_76 = fma(r10.xxx, r8.xyz, v_75.xzw);
  r10 = vec4<f32>(v_76.x, r10.y, v_76.yz);
  let v_77 = (r10.xzw * vec3<f32>(0.5f));
  r12 = vec4<f32>(v_77.xyz, r12.w);
  let v_78 = fma(r10.xzw, vec3<f32>(0.5f), r2.xyz);
  r10 = vec4<f32>(v_78.x, r10.y, v_78.yz);
  r1.z = dot(r9.xyz, r12.xyz);
  r1.z = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r1.z);
  let v_79 = r10.xzwx;
  r1.z = textureSampleCompareLevel(t14, s14, v_79.xyz, r1.z);
  r1.y = (r1.z + r1.y);
  let v_80 = -(r11.xyzx);
  let v_81 = fma(r10.yyy, r7.xyz, v_80.xyz);
  r10 = vec4<f32>(v_81.xyz, r10.w);
  let v_82 = (r10.xyz * vec3<f32>(0.25f));
  r11 = vec4<f32>(v_82.xyz, r11.w);
  let v_83 = fma(r10.xyz, vec3<f32>(0.25f), r2.xyz);
  r10 = vec4<f32>(v_83.xyz, r10.w);
  r1.z = dot(r9.xyz, r11.xyz);
  r1.z = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r1.z);
  let v_84 = r10.xyzx;
  r1.z = textureSampleCompareLevel(t14, s14, v_84.xyz, r1.z);
  r1.y = (r1.z + r1.y);
  let v_85 = (r0.zw * vec2<f32>(0.43999999761581420898f, -0.43999999761581420898f));
  r0 = vec4<f32>(r0.xy, v_85.xy);
  let v_86 = (r8.xyz * r0.zzz);
  r10 = vec4<f32>(v_86.xyz, r10.w);
  let v_87 = (r7.xyz * r0.www);
  r11 = vec4<f32>(v_87.xyz, r11.w);
  let v_88 = fma(r0.zzz, r8.xyz, r11.xyz);
  r12 = vec4<f32>(v_88.xyz, r12.w);
  let v_89 = (r2.xyz + r12.xyz);
  r13 = vec4<f32>(v_89.xyz, r13.w);
  r1.z = dot(r9.xyz, r12.xyz);
  r1.z = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r1.z);
  let v_90 = r13.xyzx;
  r1.z = textureSampleCompareLevel(t14, s14, v_90.xyz, r1.z);
  r1.y = (r1.z + r1.y);
  let v_91 = -(r11.xyzx);
  let v_92 = fma(r0.zzz, r8.xyz, v_91.xyz);
  r8 = vec4<f32>(v_92.xyz, r8.w);
  let v_93 = (r8.xyz * vec3<f32>(0.5f));
  r11 = vec4<f32>(v_93.xyz, r11.w);
  let v_94 = fma(r8.xyz, vec3<f32>(0.5f), r2.xyz);
  r8 = vec4<f32>(v_94.xyz, r8.w);
  r0.z = dot(r9.xyz, r11.xyz);
  r0.z = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r0.z);
  let v_95 = r8.xyzx;
  r0.z = textureSampleCompareLevel(t14, s14, v_95.xyz, r0.z);
  r0.z = (r0.z + r1.y);
  let v_96 = -(r10.xyzx);
  let v_97 = fma(r0.www, r7.xyz, v_96.xyz);
  r7 = vec4<f32>(v_97.xyz, r7.w);
  let v_98 = (r7.xyz * vec3<f32>(0.25f));
  r8 = vec4<f32>(v_98.xyz, r8.w);
  let v_99 = fma(r7.xyz, vec3<f32>(0.25f), r2.xyz);
  r2 = vec4<f32>(v_99.xyz, r2.w);
  r0.w = dot(r9.xyz, r8.xyz);
  r0.y = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r0.w);
  let v_100 = r2.xyzx;
  r0.y = textureSampleCompareLevel(t14, s14, v_100.xyz, r0.y);
  r0.y = (r0.y + r0.z);
  r0.z = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  r0.z = (r0.z * r1.x);
  let v_101 = (cb12_12.tint_symbol_3[3u].www * cb12_12.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_101.xyz, r1.w);
  let v_102 = dot(r5.xyw, r3.xyz);
  r0.w = clamp(vec4<f32>(v_102, v_102, v_102, v_102).w, 0.0f, 1.0f);
  let v_103 = dot((-(r6.xyzx)).xyz, r5.xyw);
  r1.w = clamp(vec4<f32>(v_103, v_103, v_103, v_103).w, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r2.x = (r1.w * r1.w);
  r2.x = (r2.x * r2.x);
  r1.w = (r1.w * r2.x);
  r2.x = ((-(r5.zzzz)).x + 1.0f);
  r1.w = fma(r5.z, r1.w, r2.x);
  r0.x = fma((-(r0.xxxx)).x, r1.w, 1.0f);
  r0.x = (r0.x * r0.w);
  r0.y = fma(r0.y, 0.11111111193895339966f, -1.0f);
  r0.y = fma(cb12_12.tint_symbol_3[8u].y, r0.y, 1.0f);
  let v_104 = (r0.xxx * r4.xyz);
  r2 = vec4<f32>(v_104.xyz, r2.w);
  let v_105 = (r1.xyz * r2.xyz);
  r1 = vec4<f32>(v_105.xyz, r1.w);
  let v_106 = (r0.zzz * r1.xyz);
  r0 = vec4<f32>(v_106.x, r0.y, v_106.yz);
  let v_107 = (r0.yyy * r0.xzw);
  r0 = vec4<f32>(v_107.xyz, r0.w);
  let v_108 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_108.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_3(v_109 : bool) {
  if (v_109) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
