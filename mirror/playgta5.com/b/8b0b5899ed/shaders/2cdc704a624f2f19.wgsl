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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_depth_cube;

@group(1u) @binding(56u) var t24 : texture_depth_2d;

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
  r2.w = inverseSqrt(r0.w);
  let v_3 = (r2.www * r3.xyz);
  r4 = vec4<f32>(v_3.xyz, r4.w);
  r0.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r3.w = ((-(cb12_12.tint_symbol_3[7u].xxxx)).w + 1.0f);
  r3.w = fma(r3.w, r0.w, cb12_12.tint_symbol_3[7u].x);
  r0.w = (r0.w / r3.w);
  let v_4 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r3.w = dot(r4.xyz, v_4.xyz);
  r3.w = clamp(fma(r3.wwww, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).w, 0.0f, 1.0f);
  r0.w = (r0.w * r3.w);
  r1.w = 1.0f;
  r1.w = dot(r1, cb12_12.tint_symbol_3[6u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r0.w = (r0.w * r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_5((bitcast<u32>(r1.w) != 0u));
  r5 = textureSample(t7, s7, r0.xyxx.xy);
  let v_6 = (r5.xyz * r5.xyz);
  r5 = vec4<f32>(v_6.xyz, r5.w);
  r6 = textureSample(t9, s9, r0.xyxx.xy);
  let v_7 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_7.xy, r6.zw);
  r7 = textureSample(t8, s8, r0.xyxx.xy);
  let v_8 = (r7.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r8 = vec4<f32>(v_8.xyz, r8.w);
  let v_9 = fract(r8.xyz);
  r8 = vec4<f32>(v_9.xyz, r8.w);
  let v_10 = fma((-(r8.yzyy)).xy, vec2<f32>(0.125f), r8.xy);
  r8 = vec4<f32>(v_10.xy, r8.zw);
  let v_11 = fma(r7.xyz, vec3<f32>(256.0f), r8.xyz);
  r7 = vec4<f32>(v_11.xyz, r7.w);
  let v_12 = (r7.xyz + vec3<f32>(-128.0f));
  r7 = vec4<f32>(v_12.xyz, r7.w);
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_13 = (r1.www * r7.xyz);
  r7 = vec4<f32>(v_13.xyz, r7.w);
  r1.w = min(r6.x, 1.0f);
  r3.w = fma(r6.y, 512.0f, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_14 = -(r3.wwww);
  r4.w = fma(r6.y, 512.0f, v_14.w);
  r3.w = (r3.w * 558.0f);
  r3.w = fma(r4.w, 3.0f, r3.w);
  r4.w = dot(r2.xyz, r2.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_15 = (r2.xyz * r4.www);
  r6 = vec4<f32>(v_15.xy, r6.z, v_15.z);
  let v_16 = -(r6.xywx);
  let v_17 = fma(r3.xyz, r2.www, v_16.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_18 = (r2.www * r3.xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r2.w) != 0u)) {
    let v_19 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r8 = vec4<f32>(v_19.xyz, r8.w);
    r9.x = dot(r8.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r9.y = dot(r8.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r9.z = dot(r8.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_20 = -(r9.xyzx);
    r2.w = dot(v_20.xyz, (-(r9.xyzx)).xyz);
    r2.w = sqrt(r2.w);
    let v_21 = ((-(r9.xyzx)).xyz / r2.www);
    r8 = vec4<f32>(v_21.xyz, r8.w);
    r4.w = (r2.w * cb6_6.tint_symbol_2[17u].w);
    let v_22 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r8.xyz)));
    r9 = vec4<f32>(v_22.xyz, r9.w);
    let v_23 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r8.xyz < vec3<f32>())));
    r10 = vec4<f32>(v_23.xyz, r10.w);
    let v_24 = -(bitcast<vec4<i32>>(r9.xyzx));
    let v_25 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r10.xyz) + v_24.xyz));
    r9 = vec4<f32>(v_25.xyz, r9.w);
    let v_26 = vec3<f32>(bitcast<vec3<i32>>(r9.xyz));
    r9 = vec4<f32>(v_26.xyz, r9.w);
    r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r8.zzyy) < abs(r8.xyxz))));
    let v_27 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r10.yw) | bitcast<vec2<u32>>(r10.xz)));
    r10 = vec4<f32>(v_27.xy, r10.zw);
    let v_28 = (-(r9.xyzx)).xyz;
    r9 = vec4<f32>(v_28.xyz, r9.w);
    r9.w = 0.0f;
    let v_29 = bitcast<vec3<u32>>(r10.yyy);
    let v_30 = r9.wxw;
    let v_31 = select(r9.wwy, v_30, (v_29 != vec3<u32>()));
    r10 = vec4<f32>(r10.x, v_31.xyz);
    let v_32 = bitcast<vec3<u32>>(r10.xxx);
    let v_33 = r10.yzw;
    let v_34 = select(r9.wwz, v_33, (v_32 != vec3<u32>()));
    r9 = vec4<f32>(v_34.xyz, r9.w);
    let v_35 = (r8.zxy * r9.xyz);
    r10 = vec4<f32>(v_35.xyz, r10.w);
    let v_36 = -(r10.xyzx);
    let v_37 = fma(r8.yzx, r9.yzx, v_36.xyz);
    r9 = vec4<f32>(v_37.xyz, r9.w);
    r5.w = dot(r9.xyz, r9.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_38 = (r5.www * r9.xyz);
    r9 = vec4<f32>(v_38.xyz, r9.w);
    let v_39 = (r8.yzx * r9.zxy);
    r10 = vec4<f32>(v_39.xyz, r10.w);
    let v_40 = -(r10.xyzx);
    let v_41 = fma(r9.yzx, r8.zxy, v_40.xyz);
    r10 = vec4<f32>(v_41.xyz, r10.w);
    r11 = dpdx(r8.xyzx);
    r5.w = dpdx(r4.w);
    r12 = dpdy(r8.xyzx);
    r4.w = dpdy(r4.w);
    r13.z = dot(r11.yzw, r11.yzw);
    r7.w = dot(r11.yzw, r12.yzw);
    r13.x = dot(r12.yzw, r12.yzw);
    r8.w = (r7.w * r7.w);
    let v_42 = -(r8.wwww);
    r8.w = fma(r13.z, r13.x, v_42.w);
    r8.w = (1.0f / r8.w);
    r13.y = (-(r7.wwww)).y;
    r14 = (r8.wwww * r13.xxxy);
    r13 = (r13.yyyz * r8.wwww);
    r15 = (r12 * r13);
    r15 = fma(r11, r14, r15);
    let v_43 = (r12.yz * r13.ww);
    r11 = vec4<f32>(v_43.x, r11.yz, v_43.y);
    let v_44 = fma(r11.yz, r14.ww, r11.xw);
    r11 = vec4<f32>(v_44.xy, r11.zw);
    let v_45 = (r5.www * r15.xyz);
    r12 = vec4<f32>(v_45.xyz, r12.w);
    r13.x = fma(r4.w, r15.w, r12.x);
    let v_46 = fma(r4.ww, r11.xy, r12.yz);
    let v_47 = r13;
    r13 = vec4<f32>(v_47.x, v_46.xy, v_47.w);
    let v_48 = max(r13.xyz, vec3<f32>(-1.0f));
    r11 = vec4<f32>(v_48.xyz, r11.w);
    let v_49 = min(r11.xyz, vec3<f32>(1.0f));
    r11 = vec4<f32>(v_49.xyz, r11.w);
    let v_50 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
    r12 = vec4<f32>(v_50.xy, r12.zw);
    let v_51 = (r12.xy * vec2<f32>(0.015625f));
    r12 = vec4<f32>(v_51.xy, r12.zw);
    r12 = textureSample(t1, s1, r12.xyxx.xy);
    let v_52 = fma(r12.yx, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r12 = vec4<f32>(v_52.xy, r12.zw);
    r4.w = (cb6_6.tint_symbol_2[18u].w * 4.0f);
    let v_53 = (r4.www * r10.xyz);
    r10 = vec4<f32>(v_53.xyz, r10.w);
    let v_54 = (r4.www * r9.xyz);
    r9 = vec4<f32>(v_54.xyz, r9.w);
    let v_55 = (r10.xyz * r12.yyy);
    r13 = vec4<f32>(v_55.xyz, r13.w);
    let v_56 = (r9.xyz * r12.xxx);
    r14 = vec4<f32>(v_56.xyz, r14.w);
    let v_57 = fma(r12.yyy, r10.xyz, r14.xyz);
    r15 = vec4<f32>(v_57.xyz, r15.w);
    let v_58 = (r8.xyz + r15.xyz);
    r16 = vec4<f32>(v_58.xyz, r16.w);
    r4.w = dot(r11.xyz, r15.xyz);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_59 = r16.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_59.xyz, r4.w);
    let v_60 = -(r14.xyzx);
    let v_61 = fma(r12.yyy, r10.xyz, v_60.xyz);
    r14 = vec4<f32>(v_61.xyz, r14.w);
    let v_62 = (r14.xyz * vec3<f32>(0.5f));
    r15 = vec4<f32>(v_62.xyz, r15.w);
    let v_63 = fma(r14.xyz, vec3<f32>(0.5f), r8.xyz);
    r14 = vec4<f32>(v_63.xyz, r14.w);
    r5.w = dot(r11.xyz, r15.xyz);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_64 = r14.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_64.xyz, r5.w);
    r4.w = (r4.w + r5.w);
    let v_65 = -(r13.xyzx);
    let v_66 = fma(r12.xxx, r9.xyz, v_65.xyz);
    r13 = vec4<f32>(v_66.xyz, r13.w);
    let v_67 = (r13.xyz * vec3<f32>(0.25f));
    r14 = vec4<f32>(v_67.xyz, r14.w);
    let v_68 = fma(r13.xyz, vec3<f32>(0.25f), r8.xyz);
    r13 = vec4<f32>(v_68.xyz, r13.w);
    r5.w = dot(r11.xyz, r14.xyz);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_69 = r13.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_69.xyz, r5.w);
    r4.w = (r4.w + r5.w);
    let v_70 = -(r12.xxxx);
    r13.x = (v_70.x + (-(r12.yyyy)).x);
    r13.y = ((-(r12.xxxx)).y + r12.y);
    let v_71 = (r13.xy * vec2<f32>(0.54447221755981445312f));
    r12 = vec4<f32>(r12.xy, v_71.xy);
    let v_72 = (r10.xyz * r12.zzz);
    r13 = vec4<f32>(v_72.xyz, r13.w);
    let v_73 = (r9.xyz * r12.www);
    r14 = vec4<f32>(v_73.xyz, r14.w);
    let v_74 = fma(r12.zzz, r10.xyz, r14.xyz);
    r15 = vec4<f32>(v_74.xyz, r15.w);
    let v_75 = (r8.xyz + r15.xyz);
    r16 = vec4<f32>(v_75.xyz, r16.w);
    r5.w = dot(r11.xyz, r15.xyz);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_76 = r16.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_76.xyz, r5.w);
    r4.w = (r4.w + r5.w);
    let v_77 = -(r14.xyzx);
    let v_78 = fma(r12.zzz, r10.xyz, v_77.xyz);
    r14 = vec4<f32>(v_78.xyz, r14.w);
    let v_79 = (r14.xyz * vec3<f32>(0.5f));
    r15 = vec4<f32>(v_79.xyz, r15.w);
    let v_80 = fma(r14.xyz, vec3<f32>(0.5f), r8.xyz);
    r14 = vec4<f32>(v_80.xyz, r14.w);
    r5.w = dot(r11.xyz, r15.xyz);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_81 = r14.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_81.xyz, r5.w);
    r4.w = (r4.w + r5.w);
    let v_82 = -(r13.xyzx);
    let v_83 = fma(r12.www, r9.xyz, v_82.xyz);
    r13 = vec4<f32>(v_83.xyz, r13.w);
    let v_84 = (r13.xyz * vec3<f32>(0.25f));
    r14 = vec4<f32>(v_84.xyz, r14.w);
    let v_85 = fma(r13.xyz, vec3<f32>(0.25f), r8.xyz);
    r13 = vec4<f32>(v_85.xyz, r13.w);
    r5.w = dot(r11.xyz, r14.xyz);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_86 = r13.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_86.xyz, r5.w);
    r4.w = (r4.w + r5.w);
    let v_87 = (r12.xy * vec2<f32>(0.43999999761581420898f, -0.43999999761581420898f));
    r12 = vec4<f32>(v_87.xy, r12.zw);
    let v_88 = (r10.xyz * r12.xxx);
    r13 = vec4<f32>(v_88.xyz, r13.w);
    let v_89 = (r9.xyz * r12.yyy);
    r14 = vec4<f32>(v_89.xyz, r14.w);
    let v_90 = fma(r12.xxx, r10.xyz, r14.xyz);
    r15 = vec4<f32>(v_90.xyz, r15.w);
    let v_91 = (r8.xyz + r15.xyz);
    r16 = vec4<f32>(v_91.xyz, r16.w);
    r5.w = dot(r11.xyz, r15.xyz);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_92 = r16.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_92.xyz, r5.w);
    r4.w = (r4.w + r5.w);
    let v_93 = -(r14.xyzx);
    let v_94 = fma(r12.xxx, r10.xyz, v_93.xyz);
    r10 = vec4<f32>(v_94.xyz, r10.w);
    let v_95 = (r10.xyz * vec3<f32>(0.5f));
    r12 = vec4<f32>(v_95.x, r12.y, v_95.yz);
    let v_96 = fma(r10.xyz, vec3<f32>(0.5f), r8.xyz);
    r10 = vec4<f32>(v_96.xyz, r10.w);
    r5.w = dot(r11.xyz, r12.xzw);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_97 = r10.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_97.xyz, r5.w);
    r4.w = (r4.w + r5.w);
    let v_98 = -(r13.xyzx);
    let v_99 = fma(r12.yyy, r9.xyz, v_98.xyz);
    r9 = vec4<f32>(v_99.xyz, r9.w);
    let v_100 = (r9.xyz * vec3<f32>(0.25f));
    r10 = vec4<f32>(v_100.xyz, r10.w);
    let v_101 = fma(r9.xyz, vec3<f32>(0.25f), r8.xyz);
    r8 = vec4<f32>(v_101.xyz, r8.w);
    r5.w = dot(r11.xyz, r10.xyz);
    r2.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_102 = r8.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_102.xyz, r2.w);
    r2.w = (r2.w + r4.w);
    r2.w = (r2.w * 0.11111111193895339966f);
  } else {
    let v_103 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_103.xyz, r2.w);
    r8.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r8.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_104 = -(r0.zzzz);
    let v_105 = (r8.yxy / v_104.xyz);
    r8 = vec4<f32>(v_105.xyz, r8.w);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r8.w = (r0.z * cb6_6.tint_symbol_2[17u].w);
    r8 = fma(r8, vec4<f32>(-0.5f, 0.5f, -0.5f, 1.0f), vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
    let v_106 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
    r0 = vec4<f32>(v_106.xy, r0.zw);
    let v_107 = (r0.xy * vec2<f32>(0.015625f));
    r0 = vec4<f32>(v_107.xy, r0.zw);
    r9 = textureSample(t1, s1, r0.xyxx.xy);
    let v_108 = fma(r9.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r0 = vec4<f32>(v_108.xy, r0.zw);
    let v_109 = (r0.xy * cb6_6.tint_symbol_2[18u].ww);
    r2 = vec4<f32>(v_109.xy, r2.zw);
    r9 = dpdx(r8.yzwz);
    r10 = dpdy(r8);
    let v_110 = (r9.yw * r10.yw);
    let v_111 = r9;
    r9 = vec4<f32>(v_111.x, v_110.x, v_111.z, v_110.y);
    let v_112 = -(r9.ywyy);
    let v_113 = fma(r9.xz, r10.xz, v_112.xy);
    r11 = vec4<f32>(v_113.xy, r11.zw);
    r0.z = (1.0f / r11.x);
    r2.z = (r9.z * r10.y);
    let v_114 = -(r2.zzzz);
    r11.z = fma(r9.x, r10.w, v_114.z);
    let v_115 = (r0.zz * r11.yz);
    r9 = vec4<f32>(v_115.xy, r9.zw);
    let v_116 = max(r9.xy, vec2<f32>(-1.0f));
    r9 = vec4<f32>(v_116.xy, r9.zw);
    let v_117 = min(r9.xy, vec2<f32>(1.0f));
    r9 = vec4<f32>(v_117.xy, r9.zw);
    let v_118 = fma(r0.xy, cb6_6.tint_symbol_2[18u].ww, r8.yz);
    let v_119 = r0;
    r0 = vec4<f32>(v_119.x, v_118.xy, v_119.w);
    r2.z = dot(r9.xy, r2.xy);
    r2.z = (r2.z + r8.w);
    let v_120 = r0.yzyy;
    r0.y = textureSampleCompareLevel(t24, s14, v_120.xy, r2.z);
    r10 = (r2.yxyx * vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f));
    r11 = fma(r2.yxyx, vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f), r8.yzyz);
    r0.z = dot(r9.xy, r10.xy);
    r0.z = (r0.z + r8.w);
    let v_121 = r11.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_121.xy, r0.z);
    r0.y = (r0.z + r0.y);
    r0.z = dot(r9.xy, r10.zw);
    r0.z = (r0.z + r8.w);
    let v_122 = r11.zwzz;
    r0.z = textureSampleCompareLevel(t24, s14, v_122.xy, r0.z);
    r0.y = (r0.z + r0.y);
    let v_123 = -(r0.xxxx);
    let v_124 = -(r2.yyyy);
    r10.y = fma(v_123.y, cb6_6.tint_symbol_2[18u].w, v_124.y);
    let v_125 = -(r2.yyyy);
    r10.x = fma(r0.x, cb6_6.tint_symbol_2[18u].w, v_125.x);
    r11 = (r10.yxxy * vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f));
    r12 = fma(r10.yxxy, vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f), r8.yzyz);
    r0.x = dot(r9.xy, r11.xy);
    r0.x = (r0.x + r8.w);
    let v_126 = r12.xyxx;
    r0.x = textureSampleCompareLevel(t24, s14, v_126.xy, r0.x);
    r0.x = (r0.x + r0.y);
    r0.y = dot(r9.xy, r11.zw);
    r0.y = (r0.y + r8.w);
    let v_127 = r12.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_127.xy, r0.y);
    r0.x = (r0.y + r0.x);
    let v_128 = (r10.xy * vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f));
    let v_129 = r0;
    r0 = vec4<f32>(v_129.x, v_128.xy, v_129.w);
    let v_130 = fma(r10.xy, vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f), r8.yz);
    r9 = vec4<f32>(r9.xy, v_130.xy);
    r0.y = dot(r9.xy, r0.yz);
    r0.y = (r0.y + r8.w);
    let v_131 = r9.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_131.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r10 = (r2.yxxy * vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f));
    r11 = fma(r2.yxxy, vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f), r8.yzyz);
    r0.y = dot(r9.xy, r10.xy);
    r0.y = (r0.y + r8.w);
    let v_132 = r11.xyxx;
    r0.y = textureSampleCompareLevel(t24, s14, v_132.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r0.y = dot(r9.xy, r10.zw);
    r0.y = (r0.y + r8.w);
    let v_133 = r11.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_133.xy, r0.y);
    r0.x = (r0.y + r0.x);
    let v_134 = (r2.xy * vec2<f32>(-0.10999999940395355225f));
    let v_135 = r0;
    r0 = vec4<f32>(v_135.x, v_134.xy, v_135.w);
    let v_136 = fma(r2.xy, vec2<f32>(-0.10999999940395355225f), r8.yz);
    r2 = vec4<f32>(v_136.xy, r2.zw);
    r0.y = dot(r9.xy, r0.yz);
    r0.y = (r0.y + r8.w);
    let v_137 = r2.xyxx;
    r0.y = textureSampleCompareLevel(t24, s14, v_137.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r2.w = (r0.x * 0.11111111193895339966f);
  }
  let v_138 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r0 = vec4<f32>(v_138.xyz, r0.w);
  let v_139 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_140 = -(r0.xyzx);
  let v_141 = fma(v_139.xyz, cb12_12.tint_symbol_3[2u].zxy, v_140.xyz);
  r0 = vec4<f32>(v_141.xyz, r0.w);
  let v_142 = -(r4.xyzx);
  r0.x = dot(r0.xyz, v_142.xyz);
  let v_143 = -(r4.xyzx);
  r0.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_143.xyz);
  r0.z = dot(v_4.xyz, (-(r4.xyzx)).xyz);
  r2.x = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).x, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r2.x = sqrt(r2.x);
  r2.x = (cb12_12.tint_symbol_3[5u].x / r2.x);
  r2.x = (r2.x * 0.5f);
  r0.z = (r2.x / r0.z);
  let v_144 = clamp(fma(r0.xyxx, r0.zzzz, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_144.xy, r0.zw);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r2.y = ((-(r0.yyyy)).y + 1.0f);
  let v_145 = bitcast<u32>(r2.x);
  let v_146 = r2.y;
  r0.z = select(r0.y, v_146, (v_145 != 0u));
  r8 = textureSampleLevel(t2, s2, r0.xzxx.xy, 0.0f);
  let v_147 = fma(r8.xyz, r8.xyz, vec3<f32>(-1.0f));
  r0 = vec4<f32>(v_147.xyz, r0.w);
  let v_148 = fma(cb12_12.tint_symbol_3[11u].yyy, r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_148.xyz, r0.w);
  let v_149 = (r0.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_149.xyz, r0.w);
  let v_150 = (r0.xyz * cb12_12.tint_symbol_3[3u].www);
  r0 = vec4<f32>(v_150.xyz, r0.w);
  let v_151 = dot(r7.xyz, r4.xyz);
  r2.x = clamp(vec4<f32>(v_151, v_151, v_151, v_151).x, 0.0f, 1.0f);
  let v_152 = dot((-(r6.xywx)).xyz, r7.xyz);
  r6.x = clamp(vec4<f32>(v_152, v_152, v_152, v_152).x, 0.0f, 1.0f);
  let v_153 = dot(r3.xyz, r4.xyz);
  r6.y = clamp(vec4<f32>(v_153, v_153, v_153, v_153).y, 0.0f, 1.0f);
  let v_154 = ((-(r6.xxyx)).yz + vec2<f32>(1.0f));
  let v_155 = r2;
  r2 = vec4<f32>(v_155.x, v_154.xy, v_155.w);
  let v_156 = (r2.yz * r2.yz);
  r6 = vec4<f32>(v_156.xy, r6.zw);
  let v_157 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_157.xy, r6.zw);
  let v_158 = (r2.yz * r6.xy);
  let v_159 = r2;
  r2 = vec4<f32>(v_159.x, v_158.xy, v_159.w);
  r4.w = ((-(r6.zzzz)).w + 1.0f);
  let v_160 = fma(r6.zz, r2.yz, r4.ww);
  let v_161 = r2;
  r2 = vec4<f32>(v_161.x, v_160.xy, v_161.w);
  let v_162 = (r3.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(v_162.xy, r6.zw);
  r3.w = (r6.x * 0.125f);
  r2.y = fma((-(r1.wwww)).y, r2.y, 1.0f);
  r3.x = dot(r7.xyz, r3.xyz);
  r3.x = clamp(((r3.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r3.x = log2(r3.x);
  r3.x = (r3.x * r6.y);
  r3.x = exp2(r3.x);
  r2.z = (r2.z * r3.x);
  r2.z = (r3.w * r2.z);
  r1.w = (r1.w * r2.z);
  r1.w = (r2.x * r1.w);
  r2.x = (r2.y * r2.x);
  r2.y = (r1.z + cb12_12.tint_symbol_3[7u].z);
  r2.y = ((-(r2.yyyy)).y / r4.z);
  r3 = fma(r4.xyyx, r2.yyyy, r1.xyyx);
  r4 = (cb12_12.tint_symbol_3[7u].wwww * vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f));
  r3 = fma(r3, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r4);
  r4 = textureSample(t3, s3, r3.xyxx.xy);
  r3 = textureSample(t3, s3, r3.zwzz.xy);
  let v_163 = (r3.xyz * r4.xyz);
  r3 = vec4<f32>(v_163.xyz, r3.w);
  let v_164 = (r3.xyz * vec3<f32>(10.0f));
  r3 = vec4<f32>(v_164.xyz, r3.w);
  r1.x = ((-(r1.zzzz)).x + cb12_12.tint_symbol_3[7u].z);
  r1.x = clamp(((r1.xxxx + r1.xxxx)).x, 0.0f, 1.0f);
  r1.y = ((-(r2.yyyy)).y + 25.0f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(0.03999999910593032837f))).y, 0.0f, 1.0f);
  let v_165 = (r1.yyy * r3.xyz);
  r3 = vec4<f32>(v_165.xyz, r3.w);
  let v_166 = -(r1.wwww);
  let v_167 = fma(r1.www, r3.xyz, v_166.xyz);
  r4 = vec4<f32>(v_167.xyz, r4.w);
  let v_168 = fma(r1.xxx, r4.xyz, r1.www);
  r1 = vec4<f32>(r1.x, v_168.xyz);
  let v_169 = -(r2.xxxx);
  let v_170 = fma(r2.xxx, r3.xyz, v_169.xyz);
  r3 = vec4<f32>(v_170.xyz, r3.w);
  let v_171 = fma(r1.xxx, r3.xyz, r2.xxx);
  r2 = vec4<f32>(v_171.xyz, r2.w);
  let v_172 = (r1.yzw * cb12_12.tint_symbol_3[8u].zzz);
  r1 = vec4<f32>(v_172.xyz, r1.w);
  r1.w = (r2.w + -1.0f);
  r1.w = fma(cb12_12.tint_symbol_3[8u].y, r1.w, 1.0f);
  let v_173 = fma(r5.xyz, r2.xyz, r1.xyz);
  r1 = vec4<f32>(v_173.xyz, r1.w);
  let v_174 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_174.xyz, r0.w);
  let v_175 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_175.xyz, r0.w);
  let v_176 = (r1.www * r0.xyz);
  r0 = vec4<f32>(v_176.xyz, r0.w);
  let v_177 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_177.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_5(v_178 : bool) {
  if (v_178) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
