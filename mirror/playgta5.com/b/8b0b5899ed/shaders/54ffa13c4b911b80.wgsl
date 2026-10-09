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

var<private> r16 : vec4<f32>;

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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_depth_cube;

@group(1u) @binding(56u) var t24 : texture_depth_2d;

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
  r2.w = inverseSqrt(r0.w);
  let v_7 = (r2.www * r4.xyz);
  r5 = vec4<f32>(v_7.xyz, r5.w);
  r0.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.w = ((-(cb12_12.tint_symbol_3[7u].xxxx)).w + 1.0f);
  r4.w = fma(r4.w, r0.w, cb12_12.tint_symbol_3[7u].x);
  r0.w = (r0.w / r4.w);
  let v_8 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r4.w = dot(r5.xyz, v_8.xyz);
  r4.w = clamp(fma(r4.wwww, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).w, 0.0f, 1.0f);
  r0.w = (r0.w * r4.w);
  r3.w = 1.0f;
  r3.w = dot(r3, cb12_12.tint_symbol_3[6u]);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w >= 0.0f)));
  r3.w = bitcast<f32>((bitcast<u32>(r3.w) & 1065353216u));
  r0.w = (r0.w * r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_9((bitcast<u32>(r3.w) != 0u));
  r3.w = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).y);
  r3.w = bitcast<f32>((bitcast<u32>(r3.w) & 8u));
  r3.w = f32(bitcast<u32>(r3.w));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w >= 8.0f)));
  let v_10 = textureLoad(t7, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).xyz;
  r6 = vec4<f32>(v_10.xyz, r6.w);
  let v_11 = (r6.xyz * r6.xyz);
  r6 = vec4<f32>(v_11.xyz, r6.w);
  let v_12 = textureLoad(t9, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).xyz;
  r7 = vec4<f32>(v_12.xyz, r7.w);
  let v_13 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_13.xy, r7.zw);
  r1 = textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  let v_14 = (r1.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r8 = vec4<f32>(v_14.xyz, r8.w);
  let v_15 = fract(r8.xyz);
  r8 = vec4<f32>(v_15.xyz, r8.w);
  let v_16 = fma((-(r8.yzyy)).xy, vec2<f32>(0.125f), r8.xy);
  r8 = vec4<f32>(v_16.xy, r8.zw);
  let v_17 = fma(r1.xyz, vec3<f32>(256.0f), r8.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = (r1.xyz + vec3<f32>(-128.0f));
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_19 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  r1.w = min(r7.x, 1.0f);
  r4.w = fma(r7.y, 512.0f, -500.0f);
  r4.w = max(r4.w, 0.0f);
  let v_20 = -(r4.wwww);
  r5.w = fma(r7.y, 512.0f, v_20.w);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r5.w, 3.0f, r4.w);
  r5.w = dot(r2.xyz, r2.xyz);
  r5.w = inverseSqrt(r5.w);
  let v_21 = (r2.xyz * r5.www);
  r7 = vec4<f32>(v_21.xy, r7.z, v_21.z);
  let v_22 = -(r7.xywx);
  let v_23 = fma(r4.xyz, r2.www, v_22.xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_24 = (r2.www * r4.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r2.w) != 0u)) {
    let v_25 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r8 = vec4<f32>(v_25.xyz, r8.w);
    r9.x = dot(r8.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r9.y = dot(r8.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r9.z = dot(r8.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_26 = -(r9.xyzx);
    r2.w = dot(v_26.xyz, (-(r9.xyzx)).xyz);
    r2.w = sqrt(r2.w);
    let v_27 = ((-(r9.xyzx)).xyz / r2.www);
    r8 = vec4<f32>(v_27.xyz, r8.w);
    r5.w = (r2.w * cb6_6.tint_symbol_2[17u].w);
    let v_28 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r8.xyz)));
    r9 = vec4<f32>(v_28.xyz, r9.w);
    let v_29 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r8.xyz < vec3<f32>())));
    r10 = vec4<f32>(v_29.xyz, r10.w);
    let v_30 = -(bitcast<vec4<i32>>(r9.xyzx));
    let v_31 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r10.xyz) + v_30.xyz));
    r9 = vec4<f32>(v_31.xyz, r9.w);
    let v_32 = vec3<f32>(bitcast<vec3<i32>>(r9.xyz));
    r9 = vec4<f32>(v_32.xyz, r9.w);
    r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r8.zzyy) < abs(r8.xyxz))));
    let v_33 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r10.yw) | bitcast<vec2<u32>>(r10.xz)));
    r10 = vec4<f32>(v_33.xy, r10.zw);
    let v_34 = (-(r9.xyzx)).xyz;
    r9 = vec4<f32>(v_34.xyz, r9.w);
    r9.w = 0.0f;
    let v_35 = bitcast<vec3<u32>>(r10.yyy);
    let v_36 = r9.wxw;
    let v_37 = select(r9.wwy, v_36, (v_35 != vec3<u32>()));
    r10 = vec4<f32>(r10.x, v_37.xyz);
    let v_38 = bitcast<vec3<u32>>(r10.xxx);
    let v_39 = r10.yzw;
    let v_40 = select(r9.wwz, v_39, (v_38 != vec3<u32>()));
    r9 = vec4<f32>(v_40.xyz, r9.w);
    let v_41 = (r8.zxy * r9.xyz);
    r10 = vec4<f32>(v_41.xyz, r10.w);
    let v_42 = -(r10.xyzx);
    let v_43 = fma(r8.yzx, r9.yzx, v_42.xyz);
    r9 = vec4<f32>(v_43.xyz, r9.w);
    r6.w = dot(r9.xyz, r9.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_44 = (r6.www * r9.xyz);
    r9 = vec4<f32>(v_44.xyz, r9.w);
    let v_45 = (r8.yzx * r9.zxy);
    r10 = vec4<f32>(v_45.xyz, r10.w);
    let v_46 = -(r10.xyzx);
    let v_47 = fma(r9.yzx, r8.zxy, v_46.xyz);
    r10 = vec4<f32>(v_47.xyz, r10.w);
    r11 = dpdx(r8.xyzx);
    r6.w = dpdx(r5.w);
    r12 = dpdy(r8.xyzx);
    r5.w = dpdy(r5.w);
    r13.z = dot(r11.yzw, r11.yzw);
    r8.w = dot(r11.yzw, r12.yzw);
    r13.x = dot(r12.yzw, r12.yzw);
    r9.w = (r8.w * r8.w);
    let v_48 = -(r9.wwww);
    r9.w = fma(r13.z, r13.x, v_48.w);
    r9.w = (1.0f / r9.w);
    r13.y = (-(r8.wwww)).y;
    r14 = (r9.wwww * r13.xxxy);
    r13 = (r13.yyyz * r9.wwww);
    r15 = (r12 * r13);
    r15 = fma(r11, r14, r15);
    let v_49 = (r12.yz * r13.ww);
    r11 = vec4<f32>(v_49.x, r11.yz, v_49.y);
    let v_50 = fma(r11.yz, r14.ww, r11.xw);
    r11 = vec4<f32>(v_50.xy, r11.zw);
    let v_51 = (r6.www * r15.xyz);
    r12 = vec4<f32>(v_51.xyz, r12.w);
    r13.x = fma(r5.w, r15.w, r12.x);
    let v_52 = fma(r5.ww, r11.xy, r12.yz);
    let v_53 = r13;
    r13 = vec4<f32>(v_53.x, v_52.xy, v_53.w);
    let v_54 = max(r13.xyz, vec3<f32>(-1.0f));
    r11 = vec4<f32>(v_54.xyz, r11.w);
    let v_55 = min(r11.xyz, vec3<f32>(1.0f));
    r11 = vec4<f32>(v_55.xyz, r11.w);
    let v_56 = (r0.xy * vec2<f32>(0.015625f));
    r12 = vec4<f32>(v_56.xy, r12.zw);
    let v_57 = textureSample(t1, s1, r12.xyxx.xy).xy;
    r12 = vec4<f32>(v_57.xy, r12.zw);
    let v_58 = fma(r12.yx, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r12 = vec4<f32>(v_58.xy, r12.zw);
    r5.w = (cb6_6.tint_symbol_2[18u].w * 4.0f);
    let v_59 = (r5.www * r10.xyz);
    r10 = vec4<f32>(v_59.xyz, r10.w);
    let v_60 = (r5.www * r9.xyz);
    r9 = vec4<f32>(v_60.xyz, r9.w);
    let v_61 = (r10.xyz * r12.yyy);
    r13 = vec4<f32>(v_61.xyz, r13.w);
    let v_62 = (r9.xyz * r12.xxx);
    r14 = vec4<f32>(v_62.xyz, r14.w);
    let v_63 = fma(r12.yyy, r10.xyz, r14.xyz);
    r15 = vec4<f32>(v_63.xyz, r15.w);
    let v_64 = (r8.xyz + r15.xyz);
    r16 = vec4<f32>(v_64.xyz, r16.w);
    r5.w = dot(r11.xyz, r15.xyz);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_65 = r16.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_65.xyz, r5.w);
    let v_66 = -(r14.xyzx);
    let v_67 = fma(r12.yyy, r10.xyz, v_66.xyz);
    r14 = vec4<f32>(v_67.xyz, r14.w);
    let v_68 = (r14.xyz * vec3<f32>(0.5f));
    r15 = vec4<f32>(v_68.xyz, r15.w);
    let v_69 = fma(r14.xyz, vec3<f32>(0.5f), r8.xyz);
    r14 = vec4<f32>(v_69.xyz, r14.w);
    r6.w = dot(r11.xyz, r15.xyz);
    r6.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r6.w);
    let v_70 = r14.xyzx;
    r6.w = textureSampleCompareLevel(t14, s14, v_70.xyz, r6.w);
    r5.w = (r5.w + r6.w);
    let v_71 = -(r13.xyzx);
    let v_72 = fma(r12.xxx, r9.xyz, v_71.xyz);
    r13 = vec4<f32>(v_72.xyz, r13.w);
    let v_73 = (r13.xyz * vec3<f32>(0.25f));
    r14 = vec4<f32>(v_73.xyz, r14.w);
    let v_74 = fma(r13.xyz, vec3<f32>(0.25f), r8.xyz);
    r13 = vec4<f32>(v_74.xyz, r13.w);
    r6.w = dot(r11.xyz, r14.xyz);
    r6.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r6.w);
    let v_75 = r13.xyzx;
    r6.w = textureSampleCompareLevel(t14, s14, v_75.xyz, r6.w);
    r5.w = (r5.w + r6.w);
    let v_76 = -(r12.xxxx);
    r13.x = (v_76.x + (-(r12.yyyy)).x);
    r13.y = ((-(r12.xxxx)).y + r12.y);
    let v_77 = (r13.xy * vec2<f32>(0.54447221755981445312f));
    r12 = vec4<f32>(r12.xy, v_77.xy);
    let v_78 = (r10.xyz * r12.zzz);
    r13 = vec4<f32>(v_78.xyz, r13.w);
    let v_79 = (r9.xyz * r12.www);
    r14 = vec4<f32>(v_79.xyz, r14.w);
    let v_80 = fma(r12.zzz, r10.xyz, r14.xyz);
    r15 = vec4<f32>(v_80.xyz, r15.w);
    let v_81 = (r8.xyz + r15.xyz);
    r16 = vec4<f32>(v_81.xyz, r16.w);
    r6.w = dot(r11.xyz, r15.xyz);
    r6.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r6.w);
    let v_82 = r16.xyzx;
    r6.w = textureSampleCompareLevel(t14, s14, v_82.xyz, r6.w);
    r5.w = (r5.w + r6.w);
    let v_83 = -(r14.xyzx);
    let v_84 = fma(r12.zzz, r10.xyz, v_83.xyz);
    r14 = vec4<f32>(v_84.xyz, r14.w);
    let v_85 = (r14.xyz * vec3<f32>(0.5f));
    r15 = vec4<f32>(v_85.xyz, r15.w);
    let v_86 = fma(r14.xyz, vec3<f32>(0.5f), r8.xyz);
    r14 = vec4<f32>(v_86.xyz, r14.w);
    r6.w = dot(r11.xyz, r15.xyz);
    r6.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r6.w);
    let v_87 = r14.xyzx;
    r6.w = textureSampleCompareLevel(t14, s14, v_87.xyz, r6.w);
    r5.w = (r5.w + r6.w);
    let v_88 = -(r13.xyzx);
    let v_89 = fma(r12.www, r9.xyz, v_88.xyz);
    r13 = vec4<f32>(v_89.xyz, r13.w);
    let v_90 = (r13.xyz * vec3<f32>(0.25f));
    r14 = vec4<f32>(v_90.xyz, r14.w);
    let v_91 = fma(r13.xyz, vec3<f32>(0.25f), r8.xyz);
    r13 = vec4<f32>(v_91.xyz, r13.w);
    r6.w = dot(r11.xyz, r14.xyz);
    r6.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r6.w);
    let v_92 = r13.xyzx;
    r6.w = textureSampleCompareLevel(t14, s14, v_92.xyz, r6.w);
    r5.w = (r5.w + r6.w);
    let v_93 = (r12.xy * vec2<f32>(0.43999999761581420898f, -0.43999999761581420898f));
    r12 = vec4<f32>(v_93.xy, r12.zw);
    let v_94 = (r10.xyz * r12.xxx);
    r13 = vec4<f32>(v_94.xyz, r13.w);
    let v_95 = (r9.xyz * r12.yyy);
    r14 = vec4<f32>(v_95.xyz, r14.w);
    let v_96 = fma(r12.xxx, r10.xyz, r14.xyz);
    r15 = vec4<f32>(v_96.xyz, r15.w);
    let v_97 = (r8.xyz + r15.xyz);
    r16 = vec4<f32>(v_97.xyz, r16.w);
    r6.w = dot(r11.xyz, r15.xyz);
    r6.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r6.w);
    let v_98 = r16.xyzx;
    r6.w = textureSampleCompareLevel(t14, s14, v_98.xyz, r6.w);
    r5.w = (r5.w + r6.w);
    let v_99 = -(r14.xyzx);
    let v_100 = fma(r12.xxx, r10.xyz, v_99.xyz);
    r10 = vec4<f32>(v_100.xyz, r10.w);
    let v_101 = (r10.xyz * vec3<f32>(0.5f));
    r12 = vec4<f32>(v_101.x, r12.y, v_101.yz);
    let v_102 = fma(r10.xyz, vec3<f32>(0.5f), r8.xyz);
    r10 = vec4<f32>(v_102.xyz, r10.w);
    r6.w = dot(r11.xyz, r12.xzw);
    r6.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r6.w);
    let v_103 = r10.xyzx;
    r6.w = textureSampleCompareLevel(t14, s14, v_103.xyz, r6.w);
    r5.w = (r5.w + r6.w);
    let v_104 = -(r13.xyzx);
    let v_105 = fma(r12.yyy, r9.xyz, v_104.xyz);
    r9 = vec4<f32>(v_105.xyz, r9.w);
    let v_106 = (r9.xyz * vec3<f32>(0.25f));
    r10 = vec4<f32>(v_106.xyz, r10.w);
    let v_107 = fma(r9.xyz, vec3<f32>(0.25f), r8.xyz);
    r8 = vec4<f32>(v_107.xyz, r8.w);
    r6.w = dot(r11.xyz, r10.xyz);
    r2.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r6.w);
    let v_108 = r8.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_108.xyz, r2.w);
    r2.w = (r2.w + r5.w);
    r2.w = (r2.w * 0.11111111193895339966f);
  } else {
    let v_109 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_109.xyz, r2.w);
    r8.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r8.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_110 = -(r0.zzzz);
    let v_111 = (r8.yxy / v_110.xyz);
    r8 = vec4<f32>(v_111.xyz, r8.w);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r8.w = (r0.z * cb6_6.tint_symbol_2[17u].w);
    r8 = fma(r8, vec4<f32>(-0.5f, 0.5f, -0.5f, 1.0f), vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
    let v_112 = (r0.xy * vec2<f32>(0.015625f));
    r0 = vec4<f32>(v_112.xy, r0.zw);
    let v_113 = textureSample(t1, s1, r0.xyxx.xy).xy;
    r0 = vec4<f32>(v_113.xy, r0.zw);
    let v_114 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r0 = vec4<f32>(v_114.xy, r0.zw);
    let v_115 = (r0.xy * cb6_6.tint_symbol_2[18u].ww);
    r2 = vec4<f32>(v_115.xy, r2.zw);
    r9 = dpdx(r8.yzwz);
    r10 = dpdy(r8);
    let v_116 = (r9.yw * r10.yw);
    let v_117 = r9;
    r9 = vec4<f32>(v_117.x, v_116.x, v_117.z, v_116.y);
    let v_118 = -(r9.ywyy);
    let v_119 = fma(r9.xz, r10.xz, v_118.xy);
    r11 = vec4<f32>(v_119.xy, r11.zw);
    r0.z = (1.0f / r11.x);
    r2.z = (r9.z * r10.y);
    let v_120 = -(r2.zzzz);
    r11.z = fma(r9.x, r10.w, v_120.z);
    let v_121 = (r0.zz * r11.yz);
    r9 = vec4<f32>(v_121.xy, r9.zw);
    let v_122 = max(r9.xy, vec2<f32>(-1.0f));
    r9 = vec4<f32>(v_122.xy, r9.zw);
    let v_123 = min(r9.xy, vec2<f32>(1.0f));
    r9 = vec4<f32>(v_123.xy, r9.zw);
    let v_124 = fma(r0.xy, cb6_6.tint_symbol_2[18u].ww, r8.yz);
    let v_125 = r0;
    r0 = vec4<f32>(v_125.x, v_124.xy, v_125.w);
    r2.z = dot(r9.xy, r2.xy);
    r2.z = (r2.z + r8.w);
    let v_126 = r0.yzyy;
    r0.y = textureSampleCompareLevel(t24, s14, v_126.xy, r2.z);
    r10 = (r2.yxyx * vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f));
    r11 = fma(r2.yxyx, vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f), r8.yzyz);
    r0.z = dot(r9.xy, r10.xy);
    r0.z = (r0.z + r8.w);
    let v_127 = r11.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_127.xy, r0.z);
    r0.y = (r0.z + r0.y);
    r0.z = dot(r9.xy, r10.zw);
    r0.z = (r0.z + r8.w);
    let v_128 = r11.zwzz;
    r0.z = textureSampleCompareLevel(t24, s14, v_128.xy, r0.z);
    r0.y = (r0.z + r0.y);
    let v_129 = -(r0.xxxx);
    let v_130 = -(r2.yyyy);
    r10.y = fma(v_129.y, cb6_6.tint_symbol_2[18u].w, v_130.y);
    let v_131 = -(r2.yyyy);
    r10.x = fma(r0.x, cb6_6.tint_symbol_2[18u].w, v_131.x);
    r11 = (r10.yxxy * vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f));
    r12 = fma(r10.yxxy, vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f), r8.yzyz);
    r0.x = dot(r9.xy, r11.xy);
    r0.x = (r0.x + r8.w);
    let v_132 = r12.xyxx;
    r0.x = textureSampleCompareLevel(t24, s14, v_132.xy, r0.x);
    r0.x = (r0.x + r0.y);
    r0.y = dot(r9.xy, r11.zw);
    r0.y = (r0.y + r8.w);
    let v_133 = r12.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_133.xy, r0.y);
    r0.x = (r0.y + r0.x);
    let v_134 = (r10.xy * vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f));
    let v_135 = r0;
    r0 = vec4<f32>(v_135.x, v_134.xy, v_135.w);
    let v_136 = fma(r10.xy, vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f), r8.yz);
    r9 = vec4<f32>(r9.xy, v_136.xy);
    r0.y = dot(r9.xy, r0.yz);
    r0.y = (r0.y + r8.w);
    let v_137 = r9.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_137.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r10 = (r2.yxxy * vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f));
    r11 = fma(r2.yxxy, vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f), r8.yzyz);
    r0.y = dot(r9.xy, r10.xy);
    r0.y = (r0.y + r8.w);
    let v_138 = r11.xyxx;
    r0.y = textureSampleCompareLevel(t24, s14, v_138.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r0.y = dot(r9.xy, r10.zw);
    r0.y = (r0.y + r8.w);
    let v_139 = r11.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_139.xy, r0.y);
    r0.x = (r0.y + r0.x);
    let v_140 = (r2.xy * vec2<f32>(-0.10999999940395355225f));
    let v_141 = r0;
    r0 = vec4<f32>(v_141.x, v_140.xy, v_141.w);
    let v_142 = fma(r2.xy, vec2<f32>(-0.10999999940395355225f), r8.yz);
    r2 = vec4<f32>(v_142.xy, r2.zw);
    r0.y = dot(r9.xy, r0.yz);
    r0.y = (r0.y + r8.w);
    let v_143 = r2.xyxx;
    r0.y = textureSampleCompareLevel(t24, s14, v_143.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r2.w = (r0.x * 0.11111111193895339966f);
  }
  r0.x = select(1.0f, 0.0f, (bitcast<u32>(r3.w) != 0u));
  r0.x = (r0.x * r0.w);
  let v_144 = (cb12_12.tint_symbol_3[3u].www * cb12_12.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(r0.x, v_144.xyz);
  let v_145 = dot(r1.xyz, r5.xyz);
  r2.x = clamp(vec4<f32>(v_145, v_145, v_145, v_145).x, 0.0f, 1.0f);
  let v_146 = dot((-(r7.xywx)).xyz, r1.xyz);
  r7.x = clamp(vec4<f32>(v_146, v_146, v_146, v_146).x, 0.0f, 1.0f);
  let v_147 = dot(r4.xyz, r5.xyz);
  r7.y = clamp(vec4<f32>(v_147, v_147, v_147, v_147).y, 0.0f, 1.0f);
  let v_148 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_149 = r2;
  r2 = vec4<f32>(v_149.x, v_148.xy, v_149.w);
  let v_150 = (r2.yz * r2.yz);
  r7 = vec4<f32>(v_150.xy, r7.zw);
  let v_151 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_151.xy, r7.zw);
  let v_152 = (r2.yz * r7.xy);
  let v_153 = r2;
  r2 = vec4<f32>(v_153.x, v_152.xy, v_153.w);
  r3.w = ((-(r7.zzzz)).w + 1.0f);
  let v_154 = fma(r7.zz, r2.yz, r3.ww);
  let v_155 = r2;
  r2 = vec4<f32>(v_155.x, v_154.xy, v_155.w);
  let v_156 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_156.xy, r7.zw);
  r3.w = (r7.x * 0.125f);
  r2.y = fma((-(r1.wwww)).y, r2.y, 1.0f);
  r1.x = dot(r1.xyz, r4.xyz);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r1.x = (r1.x * r7.y);
  r1.x = exp2(r1.x);
  r1.x = (r2.z * r1.x);
  r1.x = (r3.w * r1.x);
  r1.x = (r1.w * r1.x);
  r1.x = (r2.x * r1.x);
  r1.y = (r2.y * r2.x);
  r1.z = (r3.z + cb12_12.tint_symbol_3[7u].z);
  r1.z = ((-(r1.zzzz)).z / r5.z);
  r4 = fma(r5.xyyx, r1.zzzz, r3.xyyx);
  r5 = (cb12_12.tint_symbol_3[7u].wwww * vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f));
  r4 = fma(r4, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r5);
  let v_157 = textureSample(t3, s3, r4.xyxx.xy).xyz;
  r2 = vec4<f32>(v_157.xyz, r2.w);
  let v_158 = textureSample(t3, s3, r4.zwzz.xy).xyz;
  r3 = vec4<f32>(v_158.xy, r3.z, v_158.z);
  let v_159 = (r2.xyz * r3.xyw);
  r2 = vec4<f32>(v_159.xyz, r2.w);
  let v_160 = (r2.xyz * vec3<f32>(10.0f));
  r2 = vec4<f32>(v_160.xyz, r2.w);
  r1.w = ((-(r3.zzzz)).w + cb12_12.tint_symbol_3[7u].z);
  r1.w = clamp(((r1.wwww + r1.wwww)).w, 0.0f, 1.0f);
  r1.z = ((-(r1.zzzz)).z + 25.0f);
  r1.z = clamp(((r1.zzzz * vec4<f32>(0.03999999910593032837f))).z, 0.0f, 1.0f);
  let v_161 = (r1.zzz * r2.xyz);
  r2 = vec4<f32>(v_161.xyz, r2.w);
  let v_162 = -(r1.xxxx);
  let v_163 = fma(r1.xxx, r2.xyz, v_162.xyz);
  r3 = vec4<f32>(v_163.xyz, r3.w);
  let v_164 = fma(r1.www, r3.xyz, r1.xxx);
  r3 = vec4<f32>(v_164.xyz, r3.w);
  let v_165 = -(r1.yyyy);
  let v_166 = fma(r1.yyy, r2.xyz, v_165.xyz);
  r2 = vec4<f32>(v_166.xyz, r2.w);
  let v_167 = fma(r1.www, r2.xyz, r1.yyy);
  r1 = vec4<f32>(v_167.xyz, r1.w);
  let v_168 = (r3.xyz * cb12_12.tint_symbol_3[8u].zzz);
  r2 = vec4<f32>(v_168.xyz, r2.w);
  r1.w = (r2.w + -1.0f);
  r1.w = fma(cb12_12.tint_symbol_3[8u].y, r1.w, 1.0f);
  let v_169 = fma(r6.xyz, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_169.xyz, r1.w);
  let v_170 = (r0.yzw * r1.xyz);
  r0 = vec4<f32>(r0.x, v_170.xyz);
  let v_171 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_171.xyz, r0.w);
  let v_172 = (r1.www * r0.xyz);
  r0 = vec4<f32>(v_172.xyz, r0.w);
  let v_173 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_173.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_9(v_174 : bool) {
  if (v_174) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
