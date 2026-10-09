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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

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
  r4 = vec4<f32>(v_7.xyz, r4.w);
  r0.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.w = ((-(cb12_12.tint_symbol_3[7u].xxxx)).w + 1.0f);
  r2.w = fma(r2.w, r0.w, cb12_12.tint_symbol_3[7u].x);
  r0.w = (r0.w / r2.w);
  let v_8 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r2.w = dot(r4.xyz, v_8.xyz);
  r2.w = clamp(fma(r2.wwww, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).w, 0.0f, 1.0f);
  r0.w = (r0.w * r2.w);
  r3.w = 1.0f;
  r2.w = dot(r3, cb12_12.tint_symbol_3[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r0.w = (r0.w * r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_9((bitcast<u32>(r2.w) != 0u));
  let v_10 = textureLoad(t7, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).xyz;
  r5 = vec4<f32>(v_10.xyz, r5.w);
  let v_11 = (r5.xyz * r5.xyz);
  r5 = vec4<f32>(v_11.xyz, r5.w);
  let v_12 = textureLoad(t9, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).xz;
  r6 = vec4<f32>(v_12.xy, r6.zw);
  r2.w = (r6.x * r6.x);
  r1 = textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  let v_13 = (r1.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r6 = vec4<f32>(v_13.x, r6.y, v_13.yz);
  let v_14 = fract(r6.xzw);
  r6 = vec4<f32>(v_14.x, r6.y, v_14.yz);
  let v_15 = fma((-(r6.zzwz)).xz, vec2<f32>(0.125f), r6.xz);
  let v_16 = r6;
  r6 = vec4<f32>(v_15.x, v_16.y, v_15.y, v_16.w);
  let v_17 = fma(r1.xyz, vec3<f32>(256.0f), r6.xzw);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = (r1.xyz + vec3<f32>(-128.0f));
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_19 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  r1.w = min(r2.w, 1.0f);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_20 = (r2.www * r2.xyz);
  r6 = vec4<f32>(v_20.x, r6.y, v_20.yz);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r2.w) != 0u)) {
    let v_21 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r7 = vec4<f32>(v_21.xyz, r7.w);
    r8.x = dot(r7.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r8.y = dot(r7.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r8.z = dot(r7.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_22 = -(r8.xyzx);
    r2.w = dot(v_22.xyz, (-(r8.xyzx)).xyz);
    r2.w = sqrt(r2.w);
    let v_23 = ((-(r8.xyzx)).xyz / r2.www);
    r7 = vec4<f32>(v_23.xyz, r7.w);
    r3.w = (r2.w * cb6_6.tint_symbol_2[17u].w);
    let v_24 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r7.xyz)));
    r8 = vec4<f32>(v_24.xyz, r8.w);
    let v_25 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r7.xyz < vec3<f32>())));
    r9 = vec4<f32>(v_25.xyz, r9.w);
    let v_26 = -(bitcast<vec4<i32>>(r8.xyzx));
    let v_27 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r9.xyz) + v_26.xyz));
    r8 = vec4<f32>(v_27.xyz, r8.w);
    let v_28 = vec3<f32>(bitcast<vec3<i32>>(r8.xyz));
    r8 = vec4<f32>(v_28.xyz, r8.w);
    r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r7.zzyy) < abs(r7.xyxz))));
    let v_29 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r9.yw) | bitcast<vec2<u32>>(r9.xz)));
    r9 = vec4<f32>(v_29.xy, r9.zw);
    let v_30 = (-(r8.xyzx)).xyz;
    r8 = vec4<f32>(v_30.xyz, r8.w);
    r8.w = 0.0f;
    let v_31 = bitcast<vec3<u32>>(r9.yyy);
    let v_32 = r8.wxw;
    let v_33 = select(r8.wwy, v_32, (v_31 != vec3<u32>()));
    r9 = vec4<f32>(r9.x, v_33.xyz);
    let v_34 = bitcast<vec3<u32>>(r9.xxx);
    let v_35 = r9.yzw;
    let v_36 = select(r8.wwz, v_35, (v_34 != vec3<u32>()));
    r8 = vec4<f32>(v_36.xyz, r8.w);
    let v_37 = (r7.zxy * r8.xyz);
    r9 = vec4<f32>(v_37.xyz, r9.w);
    let v_38 = -(r9.xyzx);
    let v_39 = fma(r7.yzx, r8.yzx, v_38.xyz);
    r8 = vec4<f32>(v_39.xyz, r8.w);
    r4.w = dot(r8.xyz, r8.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_40 = (r4.www * r8.xyz);
    r8 = vec4<f32>(v_40.xyz, r8.w);
    let v_41 = (r7.yzx * r8.zxy);
    r9 = vec4<f32>(v_41.xyz, r9.w);
    let v_42 = -(r9.xyzx);
    let v_43 = fma(r8.yzx, r7.zxy, v_42.xyz);
    r9 = vec4<f32>(v_43.xyz, r9.w);
    r10 = dpdx(r7.xyzx);
    r4.w = dpdx(r3.w);
    r11 = dpdy(r7.xyzx);
    r3.w = dpdy(r3.w);
    r12.z = dot(r10.yzw, r10.yzw);
    r5.w = dot(r10.yzw, r11.yzw);
    r12.x = dot(r11.yzw, r11.yzw);
    r7.w = (r5.w * r5.w);
    let v_44 = -(r7.wwww);
    r7.w = fma(r12.z, r12.x, v_44.w);
    r7.w = (1.0f / r7.w);
    r12.y = (-(r5.wwww)).y;
    r13 = (r7.wwww * r12.xxxy);
    r12 = (r12.yyyz * r7.wwww);
    r14 = (r11 * r12);
    r14 = fma(r10, r13, r14);
    let v_45 = (r11.yz * r12.ww);
    r10 = vec4<f32>(v_45.x, r10.yz, v_45.y);
    let v_46 = fma(r10.yz, r13.ww, r10.xw);
    r10 = vec4<f32>(v_46.xy, r10.zw);
    let v_47 = (r4.www * r14.xyz);
    r11 = vec4<f32>(v_47.xyz, r11.w);
    r12.x = fma(r3.w, r14.w, r11.x);
    let v_48 = fma(r3.ww, r10.xy, r11.yz);
    let v_49 = r12;
    r12 = vec4<f32>(v_49.x, v_48.xy, v_49.w);
    let v_50 = max(r12.xyz, vec3<f32>(-1.0f));
    r10 = vec4<f32>(v_50.xyz, r10.w);
    let v_51 = min(r10.xyz, vec3<f32>(1.0f));
    r10 = vec4<f32>(v_51.xyz, r10.w);
    let v_52 = (r0.xy * vec2<f32>(0.015625f));
    r11 = vec4<f32>(v_52.xy, r11.zw);
    let v_53 = textureSample(t1, s1, r11.xyxx.xy).xy;
    r11 = vec4<f32>(v_53.xy, r11.zw);
    let v_54 = fma(r11.yx, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r11 = vec4<f32>(v_54.xy, r11.zw);
    r3.w = (cb6_6.tint_symbol_2[18u].w * 4.0f);
    let v_55 = (r3.www * r9.xyz);
    r9 = vec4<f32>(v_55.xyz, r9.w);
    let v_56 = (r3.www * r8.xyz);
    r8 = vec4<f32>(v_56.xyz, r8.w);
    let v_57 = (r9.xyz * r11.yyy);
    r12 = vec4<f32>(v_57.xyz, r12.w);
    let v_58 = (r8.xyz * r11.xxx);
    r13 = vec4<f32>(v_58.xyz, r13.w);
    let v_59 = fma(r11.yyy, r9.xyz, r13.xyz);
    r14 = vec4<f32>(v_59.xyz, r14.w);
    let v_60 = (r7.xyz + r14.xyz);
    r15 = vec4<f32>(v_60.xyz, r15.w);
    r3.w = dot(r10.xyz, r14.xyz);
    r3.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_61 = r15.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_61.xyz, r3.w);
    let v_62 = -(r13.xyzx);
    let v_63 = fma(r11.yyy, r9.xyz, v_62.xyz);
    r13 = vec4<f32>(v_63.xyz, r13.w);
    let v_64 = (r13.xyz * vec3<f32>(0.5f));
    r14 = vec4<f32>(v_64.xyz, r14.w);
    let v_65 = fma(r13.xyz, vec3<f32>(0.5f), r7.xyz);
    r13 = vec4<f32>(v_65.xyz, r13.w);
    r4.w = dot(r10.xyz, r14.xyz);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_66 = r13.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_66.xyz, r4.w);
    r3.w = (r3.w + r4.w);
    let v_67 = -(r12.xyzx);
    let v_68 = fma(r11.xxx, r8.xyz, v_67.xyz);
    r12 = vec4<f32>(v_68.xyz, r12.w);
    let v_69 = (r12.xyz * vec3<f32>(0.25f));
    r13 = vec4<f32>(v_69.xyz, r13.w);
    let v_70 = fma(r12.xyz, vec3<f32>(0.25f), r7.xyz);
    r12 = vec4<f32>(v_70.xyz, r12.w);
    r4.w = dot(r10.xyz, r13.xyz);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_71 = r12.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_71.xyz, r4.w);
    r3.w = (r3.w + r4.w);
    let v_72 = -(r11.xxxx);
    r12.x = (v_72.x + (-(r11.yyyy)).x);
    r12.y = ((-(r11.xxxx)).y + r11.y);
    let v_73 = (r12.xy * vec2<f32>(0.54447221755981445312f));
    r11 = vec4<f32>(r11.xy, v_73.xy);
    let v_74 = (r9.xyz * r11.zzz);
    r12 = vec4<f32>(v_74.xyz, r12.w);
    let v_75 = (r8.xyz * r11.www);
    r13 = vec4<f32>(v_75.xyz, r13.w);
    let v_76 = fma(r11.zzz, r9.xyz, r13.xyz);
    r14 = vec4<f32>(v_76.xyz, r14.w);
    let v_77 = (r7.xyz + r14.xyz);
    r15 = vec4<f32>(v_77.xyz, r15.w);
    r4.w = dot(r10.xyz, r14.xyz);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_78 = r15.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_78.xyz, r4.w);
    r3.w = (r3.w + r4.w);
    let v_79 = -(r13.xyzx);
    let v_80 = fma(r11.zzz, r9.xyz, v_79.xyz);
    r13 = vec4<f32>(v_80.xyz, r13.w);
    let v_81 = (r13.xyz * vec3<f32>(0.5f));
    r14 = vec4<f32>(v_81.xyz, r14.w);
    let v_82 = fma(r13.xyz, vec3<f32>(0.5f), r7.xyz);
    r13 = vec4<f32>(v_82.xyz, r13.w);
    r4.w = dot(r10.xyz, r14.xyz);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_83 = r13.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_83.xyz, r4.w);
    r3.w = (r3.w + r4.w);
    let v_84 = -(r12.xyzx);
    let v_85 = fma(r11.www, r8.xyz, v_84.xyz);
    r12 = vec4<f32>(v_85.xyz, r12.w);
    let v_86 = (r12.xyz * vec3<f32>(0.25f));
    r13 = vec4<f32>(v_86.xyz, r13.w);
    let v_87 = fma(r12.xyz, vec3<f32>(0.25f), r7.xyz);
    r12 = vec4<f32>(v_87.xyz, r12.w);
    r4.w = dot(r10.xyz, r13.xyz);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_88 = r12.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_88.xyz, r4.w);
    r3.w = (r3.w + r4.w);
    let v_89 = (r11.xy * vec2<f32>(0.43999999761581420898f, -0.43999999761581420898f));
    r11 = vec4<f32>(v_89.xy, r11.zw);
    let v_90 = (r9.xyz * r11.xxx);
    r12 = vec4<f32>(v_90.xyz, r12.w);
    let v_91 = (r8.xyz * r11.yyy);
    r13 = vec4<f32>(v_91.xyz, r13.w);
    let v_92 = fma(r11.xxx, r9.xyz, r13.xyz);
    r14 = vec4<f32>(v_92.xyz, r14.w);
    let v_93 = (r7.xyz + r14.xyz);
    r15 = vec4<f32>(v_93.xyz, r15.w);
    r4.w = dot(r10.xyz, r14.xyz);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_94 = r15.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_94.xyz, r4.w);
    r3.w = (r3.w + r4.w);
    let v_95 = -(r13.xyzx);
    let v_96 = fma(r11.xxx, r9.xyz, v_95.xyz);
    r9 = vec4<f32>(v_96.xyz, r9.w);
    let v_97 = (r9.xyz * vec3<f32>(0.5f));
    r11 = vec4<f32>(v_97.x, r11.y, v_97.yz);
    let v_98 = fma(r9.xyz, vec3<f32>(0.5f), r7.xyz);
    r9 = vec4<f32>(v_98.xyz, r9.w);
    r4.w = dot(r10.xyz, r11.xzw);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_99 = r9.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_99.xyz, r4.w);
    r3.w = (r3.w + r4.w);
    let v_100 = -(r12.xyzx);
    let v_101 = fma(r11.yyy, r8.xyz, v_100.xyz);
    r8 = vec4<f32>(v_101.xyz, r8.w);
    let v_102 = (r8.xyz * vec3<f32>(0.25f));
    r9 = vec4<f32>(v_102.xyz, r9.w);
    let v_103 = fma(r8.xyz, vec3<f32>(0.25f), r7.xyz);
    r7 = vec4<f32>(v_103.xyz, r7.w);
    r4.w = dot(r10.xyz, r9.xyz);
    r2.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_104 = r7.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_104.xyz, r2.w);
    r2.w = (r2.w + r3.w);
    r2.w = (r2.w * 0.11111111193895339966f);
  } else {
    let v_105 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_105.xyz, r2.w);
    r7.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r7.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_106 = -(r0.zzzz);
    let v_107 = (r7.yxy / v_106.xyz);
    r7 = vec4<f32>(v_107.xyz, r7.w);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r7.w = (r0.z * cb6_6.tint_symbol_2[17u].w);
    r7 = fma(r7, vec4<f32>(-0.5f, 0.5f, -0.5f, 1.0f), vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
    let v_108 = (r0.xy * vec2<f32>(0.015625f));
    r0 = vec4<f32>(v_108.xy, r0.zw);
    let v_109 = textureSample(t1, s1, r0.xyxx.xy).xy;
    r0 = vec4<f32>(v_109.xy, r0.zw);
    let v_110 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r0 = vec4<f32>(v_110.xy, r0.zw);
    let v_111 = (r0.xy * cb6_6.tint_symbol_2[18u].ww);
    r2 = vec4<f32>(v_111.xy, r2.zw);
    r8 = dpdx(r7.yzwz);
    r9 = dpdy(r7);
    let v_112 = (r8.yw * r9.yw);
    let v_113 = r8;
    r8 = vec4<f32>(v_113.x, v_112.x, v_113.z, v_112.y);
    let v_114 = -(r8.ywyy);
    let v_115 = fma(r8.xz, r9.xz, v_114.xy);
    r10 = vec4<f32>(v_115.xy, r10.zw);
    r0.z = (1.0f / r10.x);
    r2.z = (r8.z * r9.y);
    let v_116 = -(r2.zzzz);
    r10.z = fma(r8.x, r9.w, v_116.z);
    let v_117 = (r0.zz * r10.yz);
    r8 = vec4<f32>(v_117.xy, r8.zw);
    let v_118 = max(r8.xy, vec2<f32>(-1.0f));
    r8 = vec4<f32>(v_118.xy, r8.zw);
    let v_119 = min(r8.xy, vec2<f32>(1.0f));
    r8 = vec4<f32>(v_119.xy, r8.zw);
    let v_120 = fma(r0.xy, cb6_6.tint_symbol_2[18u].ww, r7.yz);
    let v_121 = r0;
    r0 = vec4<f32>(v_121.x, v_120.xy, v_121.w);
    r2.z = dot(r8.xy, r2.xy);
    r2.z = (r2.z + r7.w);
    let v_122 = r0.yzyy;
    r0.y = textureSampleCompareLevel(t24, s14, v_122.xy, r2.z);
    r9 = (r2.yxyx * vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f));
    r10 = fma(r2.yxyx, vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f), r7.yzyz);
    r0.z = dot(r8.xy, r9.xy);
    r0.z = (r0.z + r7.w);
    let v_123 = r10.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_123.xy, r0.z);
    r0.y = (r0.z + r0.y);
    r0.z = dot(r8.xy, r9.zw);
    r0.z = (r0.z + r7.w);
    let v_124 = r10.zwzz;
    r0.z = textureSampleCompareLevel(t24, s14, v_124.xy, r0.z);
    r0.y = (r0.z + r0.y);
    let v_125 = -(r0.xxxx);
    let v_126 = -(r2.yyyy);
    r9.y = fma(v_125.y, cb6_6.tint_symbol_2[18u].w, v_126.y);
    let v_127 = -(r2.yyyy);
    r9.x = fma(r0.x, cb6_6.tint_symbol_2[18u].w, v_127.x);
    r10 = (r9.yxxy * vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f));
    r11 = fma(r9.yxxy, vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f), r7.yzyz);
    r0.x = dot(r8.xy, r10.xy);
    r0.x = (r0.x + r7.w);
    let v_128 = r11.xyxx;
    r0.x = textureSampleCompareLevel(t24, s14, v_128.xy, r0.x);
    r0.x = (r0.x + r0.y);
    r0.y = dot(r8.xy, r10.zw);
    r0.y = (r0.y + r7.w);
    let v_129 = r11.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_129.xy, r0.y);
    r0.x = (r0.y + r0.x);
    let v_130 = (r9.xy * vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f));
    let v_131 = r0;
    r0 = vec4<f32>(v_131.x, v_130.xy, v_131.w);
    let v_132 = fma(r9.xy, vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f), r7.yz);
    r8 = vec4<f32>(r8.xy, v_132.xy);
    r0.y = dot(r8.xy, r0.yz);
    r0.y = (r0.y + r7.w);
    let v_133 = r8.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_133.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r9 = (r2.yxxy * vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f));
    r10 = fma(r2.yxxy, vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f), r7.yzyz);
    r0.y = dot(r8.xy, r9.xy);
    r0.y = (r0.y + r7.w);
    let v_134 = r10.xyxx;
    r0.y = textureSampleCompareLevel(t24, s14, v_134.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r0.y = dot(r8.xy, r9.zw);
    r0.y = (r0.y + r7.w);
    let v_135 = r10.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_135.xy, r0.y);
    r0.x = (r0.y + r0.x);
    let v_136 = (r2.xy * vec2<f32>(-0.10999999940395355225f));
    let v_137 = r0;
    r0 = vec4<f32>(v_137.x, v_136.xy, v_137.w);
    let v_138 = fma(r2.xy, vec2<f32>(-0.10999999940395355225f), r7.yz);
    r2 = vec4<f32>(v_138.xy, r2.zw);
    r0.y = dot(r8.xy, r0.yz);
    r0.y = (r0.y + r7.w);
    let v_139 = r2.xyxx;
    r0.y = textureSampleCompareLevel(t24, s14, v_139.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r2.w = (r0.x * 0.11111111193895339966f);
  }
  let v_140 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r0 = vec4<f32>(v_140.xyz, r0.w);
  let v_141 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_142 = -(r0.xyzx);
  let v_143 = fma(v_141.xyz, cb12_12.tint_symbol_3[2u].zxy, v_142.xyz);
  r0 = vec4<f32>(v_143.xyz, r0.w);
  let v_144 = -(r4.xyzx);
  r0.x = dot(r0.xyz, v_144.xyz);
  let v_145 = -(r4.xyzx);
  r0.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_145.xyz);
  r0.z = dot(v_8.xyz, (-(r4.xyzx)).xyz);
  r2.x = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).x, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r2.x = sqrt(r2.x);
  r2.x = (cb12_12.tint_symbol_3[5u].x / r2.x);
  r2.x = (r2.x * 0.5f);
  r0.z = (r2.x / r0.z);
  let v_146 = clamp(fma(r0.xyxx, r0.zzzz, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_146.xy, r0.zw);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r2.y = ((-(r0.yyyy)).y + 1.0f);
  let v_147 = bitcast<u32>(r2.x);
  let v_148 = r2.y;
  r0.z = select(r0.y, v_148, (v_147 != 0u));
  let v_149 = textureSampleLevel(t2, s2, r0.xzxx.xy, 0.0f).xyz;
  r0 = vec4<f32>(v_149.xyz, r0.w);
  let v_150 = fma(r0.xyz, r0.xyz, vec3<f32>(-1.0f));
  r0 = vec4<f32>(v_150.xyz, r0.w);
  let v_151 = fma(cb12_12.tint_symbol_3[11u].yyy, r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_151.xyz, r0.w);
  let v_152 = (r0.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_152.xyz, r0.w);
  let v_153 = (r0.xyz * cb12_12.tint_symbol_3[3u].www);
  r0 = vec4<f32>(v_153.xyz, r0.w);
  let v_154 = dot(r1.xyz, r4.xyz);
  r2.x = clamp(vec4<f32>(v_154, v_154, v_154, v_154).x, 0.0f, 1.0f);
  let v_155 = dot((-(r6.xzwx)).xyz, r1.xyz);
  r1.x = clamp(vec4<f32>(v_155, v_155, v_155, v_155).x, 0.0f, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.y = (r1.x * r1.x);
  r1.y = (r1.y * r1.y);
  r1.x = (r1.x * r1.y);
  r1.y = ((-(r6.yyyy)).y + 1.0f);
  r1.x = fma(r6.y, r1.x, r1.y);
  r1.x = fma((-(r1.wwww)).x, r1.x, 1.0f);
  r1.x = (r1.x * r2.x);
  r1.y = (r3.z + cb12_12.tint_symbol_3[7u].z);
  r1.y = ((-(r1.yyyy)).y / r4.z);
  r4 = fma(r4.xyyx, r1.yyyy, r3.xyyx);
  r6 = (cb12_12.tint_symbol_3[7u].wwww * vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f));
  r4 = fma(r4, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r6);
  let v_156 = textureSample(t3, s3, r4.xyxx.xy).xyz;
  r2 = vec4<f32>(v_156.xyz, r2.w);
  let v_157 = textureSample(t3, s3, r4.zwzz.xy).xyz;
  r3 = vec4<f32>(v_157.xy, r3.z, v_157.z);
  let v_158 = (r2.xyz * r3.xyw);
  r2 = vec4<f32>(v_158.xyz, r2.w);
  let v_159 = (r2.xyz * vec3<f32>(10.0f));
  r2 = vec4<f32>(v_159.xyz, r2.w);
  r1.z = ((-(r3.zzzz)).z + cb12_12.tint_symbol_3[7u].z);
  r1.z = clamp(((r1.zzzz + r1.zzzz)).z, 0.0f, 1.0f);
  r1.y = ((-(r1.yyyy)).y + 25.0f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(0.03999999910593032837f))).y, 0.0f, 1.0f);
  let v_160 = (r1.yyy * r2.xyz);
  r2 = vec4<f32>(v_160.xyz, r2.w);
  let v_161 = -(r1.xxxx);
  let v_162 = fma(r1.xxx, r2.xyz, v_161.xyz);
  r2 = vec4<f32>(v_162.xyz, r2.w);
  let v_163 = fma(r1.zzz, r2.xyz, r1.xxx);
  r1 = vec4<f32>(v_163.xyz, r1.w);
  r1.w = (r2.w + -1.0f);
  r1.w = fma(cb12_12.tint_symbol_3[8u].y, r1.w, 1.0f);
  let v_164 = (r1.xyz * r5.xyz);
  r1 = vec4<f32>(v_164.xyz, r1.w);
  let v_165 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_165.xyz, r0.w);
  let v_166 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_166.xyz, r0.w);
  let v_167 = (r1.www * r0.xyz);
  r0 = vec4<f32>(v_167.xyz, r0.w);
  let v_168 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_168.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_9(v_169 : bool) {
  if (v_169) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
