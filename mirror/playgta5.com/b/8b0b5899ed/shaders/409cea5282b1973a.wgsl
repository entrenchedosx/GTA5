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

var<private> r17 : vec4<f32>;

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
  r1.x = dot(r1, cb12_12.tint_symbol_3[6u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r0.w = (r0.w * r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_5((bitcast<u32>(r1.x) != 0u));
  let v_6 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = r1.xy;
  let v_8 = max(v_7, vec2<f32>(-2147483648.0f));
  let v_9 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_8), vec2<i32>(2147483647i), (v_8 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_7 == v_7))));
  r5 = vec4<f32>(v_9.xy, r5.zw);
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r5 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)));
  r1.z = bitcast<f32>((bitcast<u32>(r5.y) & 8u));
  r1.z = f32(bitcast<u32>(r1.z));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z >= 8.0f)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & 1065353216u));
  r5 = textureSample(t7, s7, r0.xyxx.xy);
  let v_10 = (r5.xyz * r5.xyz);
  r5 = vec4<f32>(v_10.xyz, r5.w);
  r6 = textureSample(t9, s9, r0.xyxx.xy);
  let v_11 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_11.xy, r6.zw);
  r7 = textureSample(t8, s8, r0.xyxx.xy);
  let v_12 = (r7.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r8 = vec4<f32>(v_12.xyz, r8.w);
  let v_13 = fract(r8.xyz);
  r8 = vec4<f32>(v_13.xyz, r8.w);
  let v_14 = fma((-(r8.yzyy)).xy, vec2<f32>(0.125f), r8.xy);
  r8 = vec4<f32>(v_14.xy, r8.zw);
  let v_15 = fma(r7.xyz, vec3<f32>(256.0f), r8.xyz);
  r7 = vec4<f32>(v_15.xyz, r7.w);
  let v_16 = (r7.xyz + vec3<f32>(-128.0f));
  r7 = vec4<f32>(v_16.xyz, r7.w);
  r0.x = dot(r7.xyz, r7.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_17 = (r0.xxx * r7.xyz);
  r7 = vec4<f32>(v_17.xyz, r7.w);
  r6.x = clamp(r6.xxxx.x, 0.0f, 1.0f);
  r0.x = fma(r6.y, 512.0f, -500.0f);
  r0.x = max(r0.x, 0.0f);
  let v_18 = -(r0.xxxx);
  r0.y = fma(r6.y, 512.0f, v_18.y);
  r0.x = (r0.x * 558.0f);
  r0.x = fma(r0.y, 3.0f, r0.x);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_19 = (r0.yyy * r2.xyz);
  r8 = vec4<f32>(v_19.xyz, r8.w);
  let v_20 = -(r8.xyzx);
  let v_21 = fma(r3.xyz, r2.www, v_20.xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_22 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    let v_23 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r9 = vec4<f32>(v_23.xyz, r9.w);
    r10.x = dot(r9.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r10.y = dot(r9.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r10.z = dot(r9.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_24 = -(r10.xyzx);
    r0.y = dot(v_24.xyz, (-(r10.xyzx)).xyz);
    r0.y = sqrt(r0.y);
    let v_25 = ((-(r10.xyzx)).xyz / r0.yyy);
    r9 = vec4<f32>(v_25.xyz, r9.w);
    r1.w = (r0.y * cb6_6.tint_symbol_2[17u].w);
    let v_26 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r9.xyz)));
    r10 = vec4<f32>(v_26.xyz, r10.w);
    let v_27 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r9.xyz < vec3<f32>())));
    r11 = vec4<f32>(v_27.xyz, r11.w);
    let v_28 = -(bitcast<vec4<i32>>(r10.xyzx));
    let v_29 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r11.xyz) + v_28.xyz));
    r10 = vec4<f32>(v_29.xyz, r10.w);
    let v_30 = vec3<f32>(bitcast<vec3<i32>>(r10.xyz));
    r10 = vec4<f32>(v_30.xyz, r10.w);
    r11 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r9.zzyy) < abs(r9.xyxz))));
    let v_31 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r11.yw) | bitcast<vec2<u32>>(r11.xz)));
    let v_32 = r6;
    r6 = vec4<f32>(v_32.x, v_31.x, v_32.z, v_31.y);
    let v_33 = (-(r10.xyzx)).xyz;
    r10 = vec4<f32>(v_33.xyz, r10.w);
    r10.w = 0.0f;
    let v_34 = bitcast<vec3<u32>>(r6.www);
    let v_35 = r10.wxw;
    let v_36 = select(r10.wwy, v_35, (v_34 != vec3<u32>()));
    r11 = vec4<f32>(v_36.xyz, r11.w);
    let v_37 = bitcast<vec3<u32>>(r6.yyy);
    let v_38 = r11.xyz;
    let v_39 = select(r10.wwz, v_38, (v_37 != vec3<u32>()));
    r10 = vec4<f32>(v_39.xyz, r10.w);
    let v_40 = (r9.zxy * r10.xyz);
    r11 = vec4<f32>(v_40.xyz, r11.w);
    let v_41 = -(r11.xyzx);
    let v_42 = fma(r9.yzx, r10.yzx, v_41.xyz);
    r10 = vec4<f32>(v_42.xyz, r10.w);
    r2.w = dot(r10.xyz, r10.xyz);
    r2.w = inverseSqrt(r2.w);
    let v_43 = (r2.www * r10.xyz);
    r10 = vec4<f32>(v_43.xyz, r10.w);
    let v_44 = (r9.yzx * r10.zxy);
    r11 = vec4<f32>(v_44.xyz, r11.w);
    let v_45 = -(r11.xyzx);
    let v_46 = fma(r10.yzx, r9.zxy, v_45.xyz);
    r11 = vec4<f32>(v_46.xyz, r11.w);
    r12 = dpdx(r9.xyzx);
    r2.w = dpdx(r1.w);
    r13 = dpdy(r9.xyzx);
    r1.w = dpdy(r1.w);
    r14.z = dot(r12.yzw, r12.yzw);
    r3.w = dot(r12.yzw, r13.yzw);
    r14.x = dot(r13.yzw, r13.yzw);
    r4.w = (r3.w * r3.w);
    let v_47 = -(r4.wwww);
    r4.w = fma(r14.z, r14.x, v_47.w);
    r4.w = (1.0f / r4.w);
    r14.y = (-(r3.wwww)).y;
    r15 = (r4.wwww * r14.xxxy);
    r14 = (r14.yyyz * r4.wwww);
    r16 = (r13 * r14);
    r16 = fma(r12, r15, r16);
    let v_48 = (r13.yz * r14.ww);
    let v_49 = r6;
    r6 = vec4<f32>(v_49.x, v_48.x, v_49.z, v_48.y);
    let v_50 = fma(r12.yz, r15.ww, r6.yw);
    let v_51 = r6;
    r6 = vec4<f32>(v_51.x, v_50.x, v_51.z, v_50.y);
    let v_52 = (r2.www * r16.xyz);
    r12 = vec4<f32>(v_52.xyz, r12.w);
    r13.x = fma(r1.w, r16.w, r12.x);
    let v_53 = fma(r1.ww, r6.yw, r12.yz);
    let v_54 = r13;
    r13 = vec4<f32>(v_54.x, v_53.xy, v_54.w);
    let v_55 = max(r13.xyz, vec3<f32>(-1.0f));
    r12 = vec4<f32>(v_55.xyz, r12.w);
    let v_56 = min(r12.xyz, vec3<f32>(1.0f));
    r12 = vec4<f32>(v_56.xyz, r12.w);
    let v_57 = (r1.xy * vec2<f32>(0.015625f));
    let v_58 = r6;
    r6 = vec4<f32>(v_58.x, v_57.x, v_58.z, v_57.y);
    r13 = textureSample(t1, s1, r6.ywyy.xy);
    let v_59 = fma(r13.yx, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    let v_60 = r6;
    r6 = vec4<f32>(v_60.x, v_59.x, v_60.z, v_59.y);
    r1.w = (cb6_6.tint_symbol_2[18u].w * 4.0f);
    let v_61 = (r1.www * r11.xyz);
    r11 = vec4<f32>(v_61.xyz, r11.w);
    let v_62 = (r1.www * r10.xyz);
    r10 = vec4<f32>(v_62.xyz, r10.w);
    let v_63 = (r6.www * r11.xyz);
    r13 = vec4<f32>(v_63.xyz, r13.w);
    let v_64 = (r6.yyy * r10.xyz);
    r14 = vec4<f32>(v_64.xyz, r14.w);
    let v_65 = fma(r6.www, r11.xyz, r14.xyz);
    r15 = vec4<f32>(v_65.xyz, r15.w);
    let v_66 = (r9.xyz + r15.xyz);
    r16 = vec4<f32>(v_66.xyz, r16.w);
    r1.w = dot(r12.xyz, r15.xyz);
    r1.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r1.w);
    let v_67 = r16.xyzx;
    r1.w = textureSampleCompareLevel(t14, s14, v_67.xyz, r1.w);
    let v_68 = -(r14.xyzx);
    let v_69 = fma(r6.www, r11.xyz, v_68.xyz);
    r14 = vec4<f32>(v_69.xyz, r14.w);
    let v_70 = (r14.xyz * vec3<f32>(0.5f));
    r15 = vec4<f32>(v_70.xyz, r15.w);
    let v_71 = fma(r14.xyz, vec3<f32>(0.5f), r9.xyz);
    r14 = vec4<f32>(v_71.xyz, r14.w);
    r2.w = dot(r12.xyz, r15.xyz);
    r2.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r2.w);
    let v_72 = r14.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_72.xyz, r2.w);
    r1.w = (r1.w + r2.w);
    let v_73 = -(r13.xyzx);
    let v_74 = fma(r6.yyy, r10.xyz, v_73.xyz);
    r13 = vec4<f32>(v_74.xyz, r13.w);
    let v_75 = (r13.xyz * vec3<f32>(0.25f));
    r14 = vec4<f32>(v_75.xyz, r14.w);
    let v_76 = fma(r13.xyz, vec3<f32>(0.25f), r9.xyz);
    r13 = vec4<f32>(v_76.xyz, r13.w);
    r2.w = dot(r12.xyz, r14.xyz);
    r2.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r2.w);
    let v_77 = r13.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_77.xyz, r2.w);
    r1.w = (r1.w + r2.w);
    let v_78 = -(r6.yyyy);
    r13.x = (v_78.x + (-(r6.wwww)).x);
    r13.y = ((-(r6.yyyy)).y + r6.w);
    let v_79 = (r13.xy * vec2<f32>(0.54447221755981445312f));
    r13 = vec4<f32>(v_79.xy, r13.zw);
    let v_80 = (r11.xyz * r13.xxx);
    r14 = vec4<f32>(v_80.xyz, r14.w);
    let v_81 = (r10.xyz * r13.yyy);
    r15 = vec4<f32>(v_81.xyz, r15.w);
    let v_82 = fma(r13.xxx, r11.xyz, r15.xyz);
    r16 = vec4<f32>(v_82.xyz, r16.w);
    let v_83 = (r9.xyz + r16.xyz);
    r17 = vec4<f32>(v_83.xyz, r17.w);
    r2.w = dot(r12.xyz, r16.xyz);
    r2.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r2.w);
    let v_84 = r17.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_84.xyz, r2.w);
    r1.w = (r1.w + r2.w);
    let v_85 = -(r15.xxyz);
    let v_86 = fma(r13.xxx, r11.xyz, v_85.xzw);
    r13 = vec4<f32>(v_86.x, r13.y, v_86.yz);
    let v_87 = (r13.xzw * vec3<f32>(0.5f));
    r15 = vec4<f32>(v_87.xyz, r15.w);
    let v_88 = fma(r13.xzw, vec3<f32>(0.5f), r9.xyz);
    r13 = vec4<f32>(v_88.x, r13.y, v_88.yz);
    r2.w = dot(r12.xyz, r15.xyz);
    r2.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r2.w);
    let v_89 = r13.xzwx;
    r2.w = textureSampleCompareLevel(t14, s14, v_89.xyz, r2.w);
    r1.w = (r1.w + r2.w);
    let v_90 = -(r14.xyzx);
    let v_91 = fma(r13.yyy, r10.xyz, v_90.xyz);
    r13 = vec4<f32>(v_91.xyz, r13.w);
    let v_92 = (r13.xyz * vec3<f32>(0.25f));
    r14 = vec4<f32>(v_92.xyz, r14.w);
    let v_93 = fma(r13.xyz, vec3<f32>(0.25f), r9.xyz);
    r13 = vec4<f32>(v_93.xyz, r13.w);
    r2.w = dot(r12.xyz, r14.xyz);
    r2.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r2.w);
    let v_94 = r13.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_94.xyz, r2.w);
    r1.w = (r1.w + r2.w);
    let v_95 = (r6.yw * vec2<f32>(0.43999999761581420898f, -0.43999999761581420898f));
    let v_96 = r6;
    r6 = vec4<f32>(v_96.x, v_95.x, v_96.z, v_95.y);
    let v_97 = (r11.xyz * r6.yyy);
    r13 = vec4<f32>(v_97.xyz, r13.w);
    let v_98 = (r10.xyz * r6.www);
    r14 = vec4<f32>(v_98.xyz, r14.w);
    let v_99 = fma(r6.yyy, r11.xyz, r14.xyz);
    r15 = vec4<f32>(v_99.xyz, r15.w);
    let v_100 = (r9.xyz + r15.xyz);
    r16 = vec4<f32>(v_100.xyz, r16.w);
    r2.w = dot(r12.xyz, r15.xyz);
    r2.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r2.w);
    let v_101 = r16.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_101.xyz, r2.w);
    r1.w = (r1.w + r2.w);
    let v_102 = -(r14.xyzx);
    let v_103 = fma(r6.yyy, r11.xyz, v_102.xyz);
    r11 = vec4<f32>(v_103.xyz, r11.w);
    let v_104 = (r11.xyz * vec3<f32>(0.5f));
    r14 = vec4<f32>(v_104.xyz, r14.w);
    let v_105 = fma(r11.xyz, vec3<f32>(0.5f), r9.xyz);
    r11 = vec4<f32>(v_105.xyz, r11.w);
    r2.w = dot(r12.xyz, r14.xyz);
    r2.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r2.w);
    let v_106 = r11.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_106.xyz, r2.w);
    r1.w = (r1.w + r2.w);
    let v_107 = -(r13.xyzx);
    let v_108 = fma(r6.www, r10.xyz, v_107.xyz);
    r10 = vec4<f32>(v_108.xyz, r10.w);
    let v_109 = (r10.xyz * vec3<f32>(0.25f));
    r11 = vec4<f32>(v_109.xyz, r11.w);
    let v_110 = fma(r10.xyz, vec3<f32>(0.25f), r9.xyz);
    r9 = vec4<f32>(v_110.xyz, r9.w);
    r2.w = dot(r12.xyz, r11.xyz);
    r0.y = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r2.w);
    let v_111 = r9.xyzx;
    r0.y = textureSampleCompareLevel(t14, s14, v_111.xyz, r0.y);
    r0.y = (r0.y + r1.w);
    r0.y = (r0.y * 0.11111111193895339966f);
  } else {
    let v_112 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_112.xyz, r2.w);
    r9.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r9.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_113 = -(r0.zzzz);
    let v_114 = (r9.yxy / v_113.xyz);
    r9 = vec4<f32>(v_114.xyz, r9.w);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r9.w = (r0.z * cb6_6.tint_symbol_2[17u].w);
    r2 = fma(r9, vec4<f32>(-0.5f, 0.5f, -0.5f, 1.0f), vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
    let v_115 = (r1.xy * vec2<f32>(0.015625f));
    r1 = vec4<f32>(v_115.xy, r1.zw);
    r9 = textureSample(t1, s1, r1.xyxx.xy);
    let v_116 = fma(r9.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r1 = vec4<f32>(v_116.xy, r1.zw);
    let v_117 = (r1.xy * cb6_6.tint_symbol_2[18u].ww);
    let v_118 = r6;
    r6 = vec4<f32>(v_118.x, v_117.x, v_118.z, v_117.y);
    r9 = dpdx(r2.yzwz);
    r10 = dpdy(r2);
    let v_119 = (r9.yw * r10.yw);
    let v_120 = r9;
    r9 = vec4<f32>(v_120.x, v_119.x, v_120.z, v_119.y);
    let v_121 = -(r9.ywyy);
    let v_122 = fma(r9.xz, r10.xz, v_121.xy);
    r11 = vec4<f32>(v_122.xy, r11.zw);
    r0.z = (1.0f / r11.x);
    r1.w = (r9.z * r10.y);
    let v_123 = -(r1.wwww);
    r11.z = fma(r9.x, r10.w, v_123.z);
    let v_124 = (r0.zz * r11.yz);
    r9 = vec4<f32>(v_124.xy, r9.zw);
    let v_125 = max(r9.xy, vec2<f32>(-1.0f));
    r9 = vec4<f32>(v_125.xy, r9.zw);
    let v_126 = min(r9.xy, vec2<f32>(1.0f));
    r9 = vec4<f32>(v_126.xy, r9.zw);
    let v_127 = fma(r1.xy, cb6_6.tint_symbol_2[18u].ww, r2.yz);
    let v_128 = r1;
    r1 = vec4<f32>(v_128.x, v_127.x, v_128.z, v_127.y);
    r0.z = dot(r9.xy, r6.yw);
    r0.z = (r0.z + r2.w);
    let v_129 = r1.ywyy;
    r0.z = textureSampleCompareLevel(t24, s14, v_129.xy, r0.z);
    r10 = (r6.wywy * vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f));
    r11 = fma(r6.wywy, vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f), r2.yzyz);
    r1.y = dot(r9.xy, r10.xy);
    r1.y = (r1.y + r2.w);
    let v_130 = r11.xyxx;
    r1.y = textureSampleCompareLevel(t24, s14, v_130.xy, r1.y);
    r0.z = (r0.z + r1.y);
    r1.y = dot(r9.xy, r10.zw);
    r1.y = (r1.y + r2.w);
    let v_131 = r11.zwzz;
    r1.y = textureSampleCompareLevel(t24, s14, v_131.xy, r1.y);
    r0.z = (r0.z + r1.y);
    let v_132 = -(r1.xxxx);
    let v_133 = -(r6.wwww);
    r10.y = fma(v_132.y, cb6_6.tint_symbol_2[18u].w, v_133.y);
    let v_134 = -(r6.wwww);
    r10.x = fma(r1.x, cb6_6.tint_symbol_2[18u].w, v_134.x);
    r11 = (r10.yxxy * vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f));
    r12 = fma(r10.yxxy, vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f), r2.yzyz);
    r1.x = dot(r9.xy, r11.xy);
    r1.x = (r1.x + r2.w);
    let v_135 = r12.xyxx;
    r1.x = textureSampleCompareLevel(t24, s14, v_135.xy, r1.x);
    r0.z = (r0.z + r1.x);
    r1.x = dot(r9.xy, r11.zw);
    r1.x = (r1.x + r2.w);
    let v_136 = r12.zwzz;
    r1.x = textureSampleCompareLevel(t24, s14, v_136.xy, r1.x);
    r0.z = (r0.z + r1.x);
    let v_137 = (r10.xy * vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f));
    r1 = vec4<f32>(v_137.xy, r1.zw);
    let v_138 = fma(r10.xy, vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f), r2.yz);
    r9 = vec4<f32>(r9.xy, v_138.xy);
    r1.x = dot(r9.xy, r1.xy);
    r1.x = (r1.x + r2.w);
    let v_139 = r9.zwzz;
    r1.x = textureSampleCompareLevel(t24, s14, v_139.xy, r1.x);
    r0.z = (r0.z + r1.x);
    r10 = (r6.wyyw * vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f));
    r11 = fma(r6.wyyw, vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f), r2.yzyz);
    r1.x = dot(r9.xy, r10.xy);
    r1.x = (r1.x + r2.w);
    let v_140 = r11.xyxx;
    r1.x = textureSampleCompareLevel(t24, s14, v_140.xy, r1.x);
    r0.z = (r0.z + r1.x);
    r1.x = dot(r9.xy, r10.zw);
    r1.x = (r1.x + r2.w);
    let v_141 = r11.zwzz;
    r1.x = textureSampleCompareLevel(t24, s14, v_141.xy, r1.x);
    r0.z = (r0.z + r1.x);
    let v_142 = (r6.yw * vec2<f32>(-0.10999999940395355225f));
    r1 = vec4<f32>(v_142.xy, r1.zw);
    let v_143 = fma(r6.yw, vec2<f32>(-0.10999999940395355225f), r2.yz);
    r2 = vec4<f32>(v_143.xy, r2.zw);
    r1.x = dot(r9.xy, r1.xy);
    r1.x = (r1.x + r2.w);
    let v_144 = r2.xyxx;
    r1.x = textureSampleCompareLevel(t24, s14, v_144.xy, r1.x);
    r0.z = (r0.z + r1.x);
    r0.y = (r0.z * 0.11111111193895339966f);
  }
  r0.z = (r0.w * r1.z);
  let v_145 = (cb12_12.tint_symbol_3[3u].www * cb12_12.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_145.xyz, r1.w);
  let v_146 = dot(r7.xyz, r4.xyz);
  r0.w = clamp(vec4<f32>(v_146, v_146, v_146, v_146).w, 0.0f, 1.0f);
  let v_147 = dot((-(r8.xyzx)).xyz, r7.xyz);
  r2.x = clamp(vec4<f32>(v_147, v_147, v_147, v_147).x, 0.0f, 1.0f);
  let v_148 = dot(r3.xyz, r4.xyz);
  r2.y = clamp(vec4<f32>(v_148, v_148, v_148, v_148).y, 0.0f, 1.0f);
  let v_149 = ((-(r2.xyxx)).xy + vec2<f32>(1.0f));
  r2 = vec4<f32>(v_149.xy, r2.zw);
  let v_150 = (r2.xy * r2.xy);
  r2 = vec4<f32>(r2.xy, v_150.xy);
  let v_151 = (r2.zw * r2.zw);
  r2 = vec4<f32>(r2.xy, v_151.xy);
  let v_152 = (r2.xy * r2.zw);
  r2 = vec4<f32>(v_152.xy, r2.zw);
  r1.w = ((-(r6.zzzz)).w + 1.0f);
  let v_153 = fma(r6.zz, r2.xy, r1.ww);
  r2 = vec4<f32>(v_153.xy, r2.zw);
  let v_154 = (r0.xx + vec2<f32>(2.0f, 0.00000000999999993923f));
  r2 = vec4<f32>(r2.xy, v_154.xy);
  r0.x = (r2.z * 0.125f);
  r1.w = fma((-(r6.xxxx)).w, r2.x, 1.0f);
  r2.x = dot(r7.xyz, r3.xyz);
  r2.x = clamp(((r2.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r2.x = log2(r2.x);
  r2.x = (r2.x * r2.w);
  r2.x = exp2(r2.x);
  r2.x = (r2.y * r2.x);
  r0.x = (r0.x * r2.x);
  r0.x = (r6.x * r0.x);
  r0.x = (r0.w * r0.x);
  r0.w = (r0.w * r1.w);
  r0.x = (r0.x * cb12_12.tint_symbol_3[8u].z);
  r0.y = (r0.y + -1.0f);
  r0.y = fma(cb12_12.tint_symbol_3[8u].y, r0.y, 1.0f);
  let v_155 = fma(r5.xyz, r0.www, r0.xxx);
  r2 = vec4<f32>(v_155.xyz, r2.w);
  let v_156 = (r1.xyz * r2.xyz);
  r1 = vec4<f32>(v_156.xyz, r1.w);
  let v_157 = (r0.zzz * r1.xyz);
  r0 = vec4<f32>(v_157.x, r0.y, v_157.yz);
  let v_158 = (r0.yyy * r0.xzw);
  r0 = vec4<f32>(v_158.xyz, r0.w);
  let v_159 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_159.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_5(v_160 : bool) {
  if (v_160) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
