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

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

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
  r3.x = dot(r3, cb12_12.tint_symbol_3[6u]);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x >= 0.0f)));
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
  r0.w = (r0.w * r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_9((bitcast<u32>(r3.x) != 0u));
  r3.x = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).y);
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 8u));
  r3.x = f32(bitcast<u32>(r3.x));
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x >= 8.0f)));
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
  let v_10 = textureLoad(t7, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).xyz;
  r3 = vec4<f32>(r3.x, v_10.xyz);
  let v_11 = (r3.yzw * r3.yzw);
  r3 = vec4<f32>(r3.x, v_11.xyz);
  let v_12 = textureLoad(t9, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).xyz;
  r6 = vec4<f32>(v_12.xyz, r6.w);
  let v_13 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_13.xy, r6.zw);
  r1 = textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  let v_14 = (r1.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r7 = vec4<f32>(v_14.xyz, r7.w);
  let v_15 = fract(r7.xyz);
  r7 = vec4<f32>(v_15.xyz, r7.w);
  let v_16 = fma((-(r7.yzyy)).xy, vec2<f32>(0.125f), r7.xy);
  r7 = vec4<f32>(v_16.xy, r7.zw);
  let v_17 = fma(r1.xyz, vec3<f32>(256.0f), r7.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = (r1.xyz + vec3<f32>(-128.0f));
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_19 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  r1.w = min(r6.x, 1.0f);
  r4.w = fma(r6.y, 512.0f, -500.0f);
  r4.w = max(r4.w, 0.0f);
  let v_20 = -(r4.wwww);
  r5.w = fma(r6.y, 512.0f, v_20.w);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r5.w, 3.0f, r4.w);
  r5.w = dot(r2.xyz, r2.xyz);
  r5.w = inverseSqrt(r5.w);
  let v_21 = (r2.xyz * r5.www);
  r6 = vec4<f32>(v_21.xy, r6.z, v_21.z);
  let v_22 = -(r6.xywx);
  let v_23 = fma(r4.xyz, r2.www, v_22.xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_24 = (r2.www * r4.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r2.w) != 0u)) {
    let v_25 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r7 = vec4<f32>(v_25.xyz, r7.w);
    r8.x = dot(r7.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r8.y = dot(r7.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r8.z = dot(r7.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_26 = -(r8.xyzx);
    r2.w = dot(v_26.xyz, (-(r8.xyzx)).xyz);
    r2.w = sqrt(r2.w);
    let v_27 = ((-(r8.xyzx)).xyz / r2.www);
    r7 = vec4<f32>(v_27.xyz, r7.w);
    r5.w = (r2.w * cb6_6.tint_symbol_2[17u].w);
    let v_28 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r7.xyz)));
    r8 = vec4<f32>(v_28.xyz, r8.w);
    let v_29 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r7.xyz < vec3<f32>())));
    r9 = vec4<f32>(v_29.xyz, r9.w);
    let v_30 = -(bitcast<vec4<i32>>(r8.xyzx));
    let v_31 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r9.xyz) + v_30.xyz));
    r8 = vec4<f32>(v_31.xyz, r8.w);
    let v_32 = vec3<f32>(bitcast<vec3<i32>>(r8.xyz));
    r8 = vec4<f32>(v_32.xyz, r8.w);
    r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r7.zzyy) < abs(r7.xyxz))));
    let v_33 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r9.yw) | bitcast<vec2<u32>>(r9.xz)));
    r9 = vec4<f32>(v_33.xy, r9.zw);
    let v_34 = (-(r8.xyzx)).xyz;
    r8 = vec4<f32>(v_34.xyz, r8.w);
    r8.w = 0.0f;
    let v_35 = bitcast<vec3<u32>>(r9.yyy);
    let v_36 = r8.wxw;
    let v_37 = select(r8.wwy, v_36, (v_35 != vec3<u32>()));
    r9 = vec4<f32>(r9.x, v_37.xyz);
    let v_38 = bitcast<vec3<u32>>(r9.xxx);
    let v_39 = r9.yzw;
    let v_40 = select(r8.wwz, v_39, (v_38 != vec3<u32>()));
    r8 = vec4<f32>(v_40.xyz, r8.w);
    let v_41 = (r7.zxy * r8.xyz);
    r9 = vec4<f32>(v_41.xyz, r9.w);
    let v_42 = -(r9.xyzx);
    let v_43 = fma(r7.yzx, r8.yzx, v_42.xyz);
    r8 = vec4<f32>(v_43.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_44 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_44.xyz, r8.w);
    let v_45 = (r7.yzx * r8.zxy);
    r9 = vec4<f32>(v_45.xyz, r9.w);
    let v_46 = -(r9.xyzx);
    let v_47 = fma(r8.yzx, r7.zxy, v_46.xyz);
    r9 = vec4<f32>(v_47.xyz, r9.w);
    r10 = dpdx(r7.xyzx);
    r7.w = dpdx(r5.w);
    r11 = dpdy(r7.xyzx);
    r5.w = dpdy(r5.w);
    r12.z = dot(r10.yzw, r10.yzw);
    r8.w = dot(r10.yzw, r11.yzw);
    r12.x = dot(r11.yzw, r11.yzw);
    r9.w = (r8.w * r8.w);
    let v_48 = -(r9.wwww);
    r9.w = fma(r12.z, r12.x, v_48.w);
    r9.w = (1.0f / r9.w);
    r12.y = (-(r8.wwww)).y;
    r13 = (r9.wwww * r12.xxxy);
    r12 = (r12.yyyz * r9.wwww);
    r14 = (r11 * r12);
    r14 = fma(r10, r13, r14);
    let v_49 = (r11.yz * r12.ww);
    r10 = vec4<f32>(v_49.x, r10.yz, v_49.y);
    let v_50 = fma(r10.yz, r13.ww, r10.xw);
    r10 = vec4<f32>(v_50.xy, r10.zw);
    let v_51 = (r7.www * r14.xyz);
    r11 = vec4<f32>(v_51.xyz, r11.w);
    r12.x = fma(r5.w, r14.w, r11.x);
    let v_52 = fma(r5.ww, r10.xy, r11.yz);
    let v_53 = r12;
    r12 = vec4<f32>(v_53.x, v_52.xy, v_53.w);
    let v_54 = max(r12.xyz, vec3<f32>(-1.0f));
    r10 = vec4<f32>(v_54.xyz, r10.w);
    let v_55 = min(r10.xyz, vec3<f32>(1.0f));
    r10 = vec4<f32>(v_55.xyz, r10.w);
    let v_56 = (r0.xy * vec2<f32>(0.015625f));
    r11 = vec4<f32>(v_56.xy, r11.zw);
    let v_57 = textureSample(t1, s1, r11.xyxx.xy).xy;
    r11 = vec4<f32>(v_57.xy, r11.zw);
    let v_58 = fma(r11.yx, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r11 = vec4<f32>(v_58.xy, r11.zw);
    r5.w = (cb6_6.tint_symbol_2[18u].w * 4.0f);
    let v_59 = (r5.www * r9.xyz);
    r9 = vec4<f32>(v_59.xyz, r9.w);
    let v_60 = (r5.www * r8.xyz);
    r8 = vec4<f32>(v_60.xyz, r8.w);
    let v_61 = (r9.xyz * r11.yyy);
    r12 = vec4<f32>(v_61.xyz, r12.w);
    let v_62 = (r8.xyz * r11.xxx);
    r13 = vec4<f32>(v_62.xyz, r13.w);
    let v_63 = fma(r11.yyy, r9.xyz, r13.xyz);
    r14 = vec4<f32>(v_63.xyz, r14.w);
    let v_64 = (r7.xyz + r14.xyz);
    r15 = vec4<f32>(v_64.xyz, r15.w);
    r5.w = dot(r10.xyz, r14.xyz);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_65 = r15.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_65.xyz, r5.w);
    let v_66 = -(r13.xyzx);
    let v_67 = fma(r11.yyy, r9.xyz, v_66.xyz);
    r13 = vec4<f32>(v_67.xyz, r13.w);
    let v_68 = (r13.xyz * vec3<f32>(0.5f));
    r14 = vec4<f32>(v_68.xyz, r14.w);
    let v_69 = fma(r13.xyz, vec3<f32>(0.5f), r7.xyz);
    r13 = vec4<f32>(v_69.xyz, r13.w);
    r7.w = dot(r10.xyz, r14.xyz);
    r7.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r7.w);
    let v_70 = r13.xyzx;
    r7.w = textureSampleCompareLevel(t14, s14, v_70.xyz, r7.w);
    r5.w = (r5.w + r7.w);
    let v_71 = -(r12.xyzx);
    let v_72 = fma(r11.xxx, r8.xyz, v_71.xyz);
    r12 = vec4<f32>(v_72.xyz, r12.w);
    let v_73 = (r12.xyz * vec3<f32>(0.25f));
    r13 = vec4<f32>(v_73.xyz, r13.w);
    let v_74 = fma(r12.xyz, vec3<f32>(0.25f), r7.xyz);
    r12 = vec4<f32>(v_74.xyz, r12.w);
    r7.w = dot(r10.xyz, r13.xyz);
    r7.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r7.w);
    let v_75 = r12.xyzx;
    r7.w = textureSampleCompareLevel(t14, s14, v_75.xyz, r7.w);
    r5.w = (r5.w + r7.w);
    let v_76 = -(r11.xxxx);
    r12.x = (v_76.x + (-(r11.yyyy)).x);
    r12.y = ((-(r11.xxxx)).y + r11.y);
    let v_77 = (r12.xy * vec2<f32>(0.54447221755981445312f));
    r11 = vec4<f32>(r11.xy, v_77.xy);
    let v_78 = (r9.xyz * r11.zzz);
    r12 = vec4<f32>(v_78.xyz, r12.w);
    let v_79 = (r8.xyz * r11.www);
    r13 = vec4<f32>(v_79.xyz, r13.w);
    let v_80 = fma(r11.zzz, r9.xyz, r13.xyz);
    r14 = vec4<f32>(v_80.xyz, r14.w);
    let v_81 = (r7.xyz + r14.xyz);
    r15 = vec4<f32>(v_81.xyz, r15.w);
    r7.w = dot(r10.xyz, r14.xyz);
    r7.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r7.w);
    let v_82 = r15.xyzx;
    r7.w = textureSampleCompareLevel(t14, s14, v_82.xyz, r7.w);
    r5.w = (r5.w + r7.w);
    let v_83 = -(r13.xyzx);
    let v_84 = fma(r11.zzz, r9.xyz, v_83.xyz);
    r13 = vec4<f32>(v_84.xyz, r13.w);
    let v_85 = (r13.xyz * vec3<f32>(0.5f));
    r14 = vec4<f32>(v_85.xyz, r14.w);
    let v_86 = fma(r13.xyz, vec3<f32>(0.5f), r7.xyz);
    r13 = vec4<f32>(v_86.xyz, r13.w);
    r7.w = dot(r10.xyz, r14.xyz);
    r7.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r7.w);
    let v_87 = r13.xyzx;
    r7.w = textureSampleCompareLevel(t14, s14, v_87.xyz, r7.w);
    r5.w = (r5.w + r7.w);
    let v_88 = -(r12.xyzx);
    let v_89 = fma(r11.www, r8.xyz, v_88.xyz);
    r12 = vec4<f32>(v_89.xyz, r12.w);
    let v_90 = (r12.xyz * vec3<f32>(0.25f));
    r13 = vec4<f32>(v_90.xyz, r13.w);
    let v_91 = fma(r12.xyz, vec3<f32>(0.25f), r7.xyz);
    r12 = vec4<f32>(v_91.xyz, r12.w);
    r7.w = dot(r10.xyz, r13.xyz);
    r7.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r7.w);
    let v_92 = r12.xyzx;
    r7.w = textureSampleCompareLevel(t14, s14, v_92.xyz, r7.w);
    r5.w = (r5.w + r7.w);
    let v_93 = (r11.xy * vec2<f32>(0.43999999761581420898f, -0.43999999761581420898f));
    r11 = vec4<f32>(v_93.xy, r11.zw);
    let v_94 = (r9.xyz * r11.xxx);
    r12 = vec4<f32>(v_94.xyz, r12.w);
    let v_95 = (r8.xyz * r11.yyy);
    r13 = vec4<f32>(v_95.xyz, r13.w);
    let v_96 = fma(r11.xxx, r9.xyz, r13.xyz);
    r14 = vec4<f32>(v_96.xyz, r14.w);
    let v_97 = (r7.xyz + r14.xyz);
    r15 = vec4<f32>(v_97.xyz, r15.w);
    r7.w = dot(r10.xyz, r14.xyz);
    r7.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r7.w);
    let v_98 = r15.xyzx;
    r7.w = textureSampleCompareLevel(t14, s14, v_98.xyz, r7.w);
    r5.w = (r5.w + r7.w);
    let v_99 = -(r13.xyzx);
    let v_100 = fma(r11.xxx, r9.xyz, v_99.xyz);
    r9 = vec4<f32>(v_100.xyz, r9.w);
    let v_101 = (r9.xyz * vec3<f32>(0.5f));
    r11 = vec4<f32>(v_101.x, r11.y, v_101.yz);
    let v_102 = fma(r9.xyz, vec3<f32>(0.5f), r7.xyz);
    r9 = vec4<f32>(v_102.xyz, r9.w);
    r7.w = dot(r10.xyz, r11.xzw);
    r7.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r7.w);
    let v_103 = r9.xyzx;
    r7.w = textureSampleCompareLevel(t14, s14, v_103.xyz, r7.w);
    r5.w = (r5.w + r7.w);
    let v_104 = -(r12.xyzx);
    let v_105 = fma(r11.yyy, r8.xyz, v_104.xyz);
    r8 = vec4<f32>(v_105.xyz, r8.w);
    let v_106 = (r8.xyz * vec3<f32>(0.25f));
    r9 = vec4<f32>(v_106.xyz, r9.w);
    let v_107 = fma(r8.xyz, vec3<f32>(0.25f), r7.xyz);
    r7 = vec4<f32>(v_107.xyz, r7.w);
    r7.w = dot(r10.xyz, r9.xyz);
    r2.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r7.w);
    let v_108 = r7.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_108.xyz, r2.w);
    r2.w = (r2.w + r5.w);
    r2.w = (r2.w * 0.11111111193895339966f);
  } else {
    let v_109 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_109.xyz, r2.w);
    r7.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r7.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_110 = -(r0.zzzz);
    let v_111 = (r7.yxy / v_110.xyz);
    r7 = vec4<f32>(v_111.xyz, r7.w);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r7.w = (r0.z * cb6_6.tint_symbol_2[17u].w);
    r7 = fma(r7, vec4<f32>(-0.5f, 0.5f, -0.5f, 1.0f), vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
    let v_112 = (r0.xy * vec2<f32>(0.015625f));
    r0 = vec4<f32>(v_112.xy, r0.zw);
    let v_113 = textureSample(t1, s1, r0.xyxx.xy).xy;
    r0 = vec4<f32>(v_113.xy, r0.zw);
    let v_114 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r0 = vec4<f32>(v_114.xy, r0.zw);
    let v_115 = (r0.xy * cb6_6.tint_symbol_2[18u].ww);
    r2 = vec4<f32>(v_115.xy, r2.zw);
    r8 = dpdx(r7.yzwz);
    r9 = dpdy(r7);
    let v_116 = (r8.yw * r9.yw);
    let v_117 = r8;
    r8 = vec4<f32>(v_117.x, v_116.x, v_117.z, v_116.y);
    let v_118 = -(r8.ywyy);
    let v_119 = fma(r8.xz, r9.xz, v_118.xy);
    r10 = vec4<f32>(v_119.xy, r10.zw);
    r0.z = (1.0f / r10.x);
    r2.z = (r8.z * r9.y);
    let v_120 = -(r2.zzzz);
    r10.z = fma(r8.x, r9.w, v_120.z);
    let v_121 = (r0.zz * r10.yz);
    r8 = vec4<f32>(v_121.xy, r8.zw);
    let v_122 = max(r8.xy, vec2<f32>(-1.0f));
    r8 = vec4<f32>(v_122.xy, r8.zw);
    let v_123 = min(r8.xy, vec2<f32>(1.0f));
    r8 = vec4<f32>(v_123.xy, r8.zw);
    let v_124 = fma(r0.xy, cb6_6.tint_symbol_2[18u].ww, r7.yz);
    let v_125 = r0;
    r0 = vec4<f32>(v_125.x, v_124.xy, v_125.w);
    r2.z = dot(r8.xy, r2.xy);
    r2.z = (r2.z + r7.w);
    let v_126 = r0.yzyy;
    r0.y = textureSampleCompareLevel(t24, s14, v_126.xy, r2.z);
    r9 = (r2.yxyx * vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f));
    r10 = fma(r2.yxyx, vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f), r7.yzyz);
    r0.z = dot(r8.xy, r9.xy);
    r0.z = (r0.z + r7.w);
    let v_127 = r10.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_127.xy, r0.z);
    r0.y = (r0.z + r0.y);
    r0.z = dot(r8.xy, r9.zw);
    r0.z = (r0.z + r7.w);
    let v_128 = r10.zwzz;
    r0.z = textureSampleCompareLevel(t24, s14, v_128.xy, r0.z);
    r0.y = (r0.z + r0.y);
    let v_129 = -(r0.xxxx);
    let v_130 = -(r2.yyyy);
    r9.y = fma(v_129.y, cb6_6.tint_symbol_2[18u].w, v_130.y);
    let v_131 = -(r2.yyyy);
    r9.x = fma(r0.x, cb6_6.tint_symbol_2[18u].w, v_131.x);
    r10 = (r9.yxxy * vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f));
    r11 = fma(r9.yxxy, vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f), r7.yzyz);
    r0.x = dot(r8.xy, r10.xy);
    r0.x = (r0.x + r7.w);
    let v_132 = r11.xyxx;
    r0.x = textureSampleCompareLevel(t24, s14, v_132.xy, r0.x);
    r0.x = (r0.x + r0.y);
    r0.y = dot(r8.xy, r10.zw);
    r0.y = (r0.y + r7.w);
    let v_133 = r11.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_133.xy, r0.y);
    r0.x = (r0.y + r0.x);
    let v_134 = (r9.xy * vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f));
    let v_135 = r0;
    r0 = vec4<f32>(v_135.x, v_134.xy, v_135.w);
    let v_136 = fma(r9.xy, vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f), r7.yz);
    r8 = vec4<f32>(r8.xy, v_136.xy);
    r0.y = dot(r8.xy, r0.yz);
    r0.y = (r0.y + r7.w);
    let v_137 = r8.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_137.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r9 = (r2.yxxy * vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f));
    r10 = fma(r2.yxxy, vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f), r7.yzyz);
    r0.y = dot(r8.xy, r9.xy);
    r0.y = (r0.y + r7.w);
    let v_138 = r10.xyxx;
    r0.y = textureSampleCompareLevel(t24, s14, v_138.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r0.y = dot(r8.xy, r9.zw);
    r0.y = (r0.y + r7.w);
    let v_139 = r10.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_139.xy, r0.y);
    r0.x = (r0.y + r0.x);
    let v_140 = (r2.xy * vec2<f32>(-0.10999999940395355225f));
    let v_141 = r0;
    r0 = vec4<f32>(v_141.x, v_140.xy, v_141.w);
    let v_142 = fma(r2.xy, vec2<f32>(-0.10999999940395355225f), r7.yz);
    r2 = vec4<f32>(v_142.xy, r2.zw);
    r0.y = dot(r8.xy, r0.yz);
    r0.y = (r0.y + r7.w);
    let v_143 = r2.xyxx;
    r0.y = textureSampleCompareLevel(t24, s14, v_143.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r2.w = (r0.x * 0.11111111193895339966f);
  }
  r0.x = (r0.w * r3.x);
  let v_144 = ((-(cb12_12.tint_symbol_3[1u].zzxy)).yzw * cb12_12.tint_symbol_3[2u].yzx);
  r0 = vec4<f32>(r0.x, v_144.xyz);
  let v_145 = -(cb12_12.tint_symbol_3[1u].yyzx);
  let v_146 = -(r0.yyzw);
  let v_147 = fma(v_145.yzw, cb12_12.tint_symbol_3[2u].zxy, v_146.yzw);
  r0 = vec4<f32>(r0.x, v_147.xyz);
  let v_148 = -(r5.xyzx);
  r2.x = dot(r0.yzw, v_148.xyz);
  let v_149 = -(r5.xyzx);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_149.xyz);
  r0.y = dot(v_8.xyz, (-(r5.xyzx)).xyz);
  r0.z = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).z, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r0.z = sqrt(r0.z);
  r0.z = (cb12_12.tint_symbol_3[5u].x / r0.z);
  r0.z = (r0.z * 0.5f);
  r0.y = (r0.z / r0.y);
  let v_150 = clamp(fma(r2.xyxx, r0.yyyy, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_150.xy, r2.zw);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r0.z = ((-(r2.yyyy)).z + 1.0f);
  let v_151 = bitcast<u32>(r0.y);
  let v_152 = r0.z;
  r2.z = select(r2.y, v_152, (v_151 != 0u));
  let v_153 = textureSampleLevel(t2, s2, r2.xzxx.xy, 0.0f).xyz;
  r0 = vec4<f32>(r0.x, v_153.xyz);
  let v_154 = fma(r0.yzw, r0.yzw, vec3<f32>(-1.0f));
  r0 = vec4<f32>(r0.x, v_154.xyz);
  let v_155 = fma(cb12_12.tint_symbol_3[11u].yyy, r0.yzw, vec3<f32>(1.0f));
  r0 = vec4<f32>(r0.x, v_155.xyz);
  let v_156 = (r0.yzw * cb12_12.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(r0.x, v_156.xyz);
  let v_157 = (r0.yzw * cb12_12.tint_symbol_3[3u].www);
  r0 = vec4<f32>(r0.x, v_157.xyz);
  let v_158 = dot(r1.xyz, r5.xyz);
  r2.x = clamp(vec4<f32>(v_158, v_158, v_158, v_158).x, 0.0f, 1.0f);
  let v_159 = dot((-(r6.xywx)).xyz, r1.xyz);
  r6.x = clamp(vec4<f32>(v_159, v_159, v_159, v_159).x, 0.0f, 1.0f);
  let v_160 = dot(r4.xyz, r5.xyz);
  r6.y = clamp(vec4<f32>(v_160, v_160, v_160, v_160).y, 0.0f, 1.0f);
  let v_161 = ((-(r6.xxyx)).yz + vec2<f32>(1.0f));
  let v_162 = r2;
  r2 = vec4<f32>(v_162.x, v_161.xy, v_162.w);
  let v_163 = (r2.yz * r2.yz);
  r5 = vec4<f32>(v_163.xy, r5.zw);
  let v_164 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_164.xy, r5.zw);
  let v_165 = (r2.yz * r5.xy);
  let v_166 = r2;
  r2 = vec4<f32>(v_166.x, v_165.xy, v_166.w);
  r3.x = ((-(r6.zzzz)).x + 1.0f);
  let v_167 = fma(r6.zz, r2.yz, r3.xx);
  let v_168 = r2;
  r2 = vec4<f32>(v_168.x, v_167.xy, v_168.w);
  let v_169 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(v_169.xy, r5.zw);
  r3.x = (r5.x * 0.125f);
  r2.y = fma((-(r1.wwww)).y, r2.y, 1.0f);
  r1.x = dot(r1.xyz, r4.xyz);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r1.x = (r1.x * r5.y);
  r1.x = exp2(r1.x);
  r1.x = (r2.z * r1.x);
  r1.x = (r3.x * r1.x);
  r1.x = (r1.w * r1.x);
  r1.x = (r2.x * r1.x);
  r1.y = (r2.y * r2.x);
  r1.x = (r1.x * cb12_12.tint_symbol_3[8u].z);
  r1.z = (r2.w + -1.0f);
  r1.z = fma(cb12_12.tint_symbol_3[8u].y, r1.z, 1.0f);
  let v_170 = fma(r3.yzw, r1.yyy, r1.xxx);
  r1 = vec4<f32>(v_170.xy, r1.z, v_170.z);
  let v_171 = (r0.yzw * r1.xyw);
  r0 = vec4<f32>(r0.x, v_171.xyz);
  let v_172 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_172.xyz, r0.w);
  let v_173 = (r1.zzz * r0.xyz);
  r0 = vec4<f32>(v_173.xyz, r0.w);
  let v_174 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_174.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_9(v_175 : bool) {
  if (v_175) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
