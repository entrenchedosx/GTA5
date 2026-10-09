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
  r0.x = min(r6.x, 1.0f);
  r0.y = fma(r6.y, 512.0f, -500.0f);
  r0.y = max(r0.y, 0.0f);
  let v_18 = -(r0.yyyy);
  r1.w = fma(r6.y, 512.0f, v_18.w);
  r0.y = (r0.y * 558.0f);
  r0.y = fma(r1.w, 3.0f, r0.y);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_19 = (r1.www * r2.xyz);
  r6 = vec4<f32>(v_19.xy, r6.z, v_19.z);
  let v_20 = -(r6.xywx);
  let v_21 = fma(r3.xyz, r2.www, v_20.xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_22 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_23 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r8 = vec4<f32>(v_23.xyz, r8.w);
    r9.x = dot(r8.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r9.y = dot(r8.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r9.z = dot(r8.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_24 = -(r9.xyzx);
    r1.w = dot(v_24.xyz, (-(r9.xyzx)).xyz);
    r1.w = sqrt(r1.w);
    let v_25 = ((-(r9.xyzx)).xyz / r1.www);
    r8 = vec4<f32>(v_25.xyz, r8.w);
    r2.w = (r1.w * cb6_6.tint_symbol_2[17u].w);
    let v_26 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r8.xyz)));
    r9 = vec4<f32>(v_26.xyz, r9.w);
    let v_27 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r8.xyz < vec3<f32>())));
    r10 = vec4<f32>(v_27.xyz, r10.w);
    let v_28 = -(bitcast<vec4<i32>>(r9.xyzx));
    let v_29 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r10.xyz) + v_28.xyz));
    r9 = vec4<f32>(v_29.xyz, r9.w);
    let v_30 = vec3<f32>(bitcast<vec3<i32>>(r9.xyz));
    r9 = vec4<f32>(v_30.xyz, r9.w);
    r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r8.zzyy) < abs(r8.xyxz))));
    let v_31 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r10.yw) | bitcast<vec2<u32>>(r10.xz)));
    r10 = vec4<f32>(v_31.xy, r10.zw);
    let v_32 = (-(r9.xyzx)).xyz;
    r9 = vec4<f32>(v_32.xyz, r9.w);
    r9.w = 0.0f;
    let v_33 = bitcast<vec3<u32>>(r10.yyy);
    let v_34 = r9.wxw;
    let v_35 = select(r9.wwy, v_34, (v_33 != vec3<u32>()));
    r10 = vec4<f32>(r10.x, v_35.xyz);
    let v_36 = bitcast<vec3<u32>>(r10.xxx);
    let v_37 = r10.yzw;
    let v_38 = select(r9.wwz, v_37, (v_36 != vec3<u32>()));
    r9 = vec4<f32>(v_38.xyz, r9.w);
    let v_39 = (r8.zxy * r9.xyz);
    r10 = vec4<f32>(v_39.xyz, r10.w);
    let v_40 = -(r10.xyzx);
    let v_41 = fma(r8.yzx, r9.yzx, v_40.xyz);
    r9 = vec4<f32>(v_41.xyz, r9.w);
    r3.w = dot(r9.xyz, r9.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_42 = (r3.www * r9.xyz);
    r9 = vec4<f32>(v_42.xyz, r9.w);
    let v_43 = (r8.yzx * r9.zxy);
    r10 = vec4<f32>(v_43.xyz, r10.w);
    let v_44 = -(r10.xyzx);
    let v_45 = fma(r9.yzx, r8.zxy, v_44.xyz);
    r10 = vec4<f32>(v_45.xyz, r10.w);
    r11 = dpdx(r8.xyzx);
    r3.w = dpdx(r2.w);
    r12 = dpdy(r8.xyzx);
    r2.w = dpdy(r2.w);
    r13.z = dot(r11.yzw, r11.yzw);
    r4.w = dot(r11.yzw, r12.yzw);
    r13.x = dot(r12.yzw, r12.yzw);
    r5.w = (r4.w * r4.w);
    let v_46 = -(r5.wwww);
    r5.w = fma(r13.z, r13.x, v_46.w);
    r5.w = (1.0f / r5.w);
    r13.y = (-(r4.wwww)).y;
    r14 = (r5.wwww * r13.xxxy);
    r13 = (r13.yyyz * r5.wwww);
    r15 = (r12 * r13);
    r15 = fma(r11, r14, r15);
    let v_47 = (r12.yz * r13.ww);
    r11 = vec4<f32>(v_47.x, r11.yz, v_47.y);
    let v_48 = fma(r11.yz, r14.ww, r11.xw);
    r11 = vec4<f32>(v_48.xy, r11.zw);
    let v_49 = (r3.www * r15.xyz);
    r12 = vec4<f32>(v_49.xyz, r12.w);
    r13.x = fma(r2.w, r15.w, r12.x);
    let v_50 = fma(r2.ww, r11.xy, r12.yz);
    let v_51 = r13;
    r13 = vec4<f32>(v_51.x, v_50.xy, v_51.w);
    let v_52 = max(r13.xyz, vec3<f32>(-1.0f));
    r11 = vec4<f32>(v_52.xyz, r11.w);
    let v_53 = min(r11.xyz, vec3<f32>(1.0f));
    r11 = vec4<f32>(v_53.xyz, r11.w);
    let v_54 = (r1.xy * vec2<f32>(0.015625f));
    r12 = vec4<f32>(v_54.xy, r12.zw);
    r12 = textureSample(t1, s1, r12.xyxx.xy);
    let v_55 = fma(r12.yx, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r12 = vec4<f32>(v_55.xy, r12.zw);
    r2.w = (cb6_6.tint_symbol_2[18u].w * 4.0f);
    let v_56 = (r2.www * r10.xyz);
    r10 = vec4<f32>(v_56.xyz, r10.w);
    let v_57 = (r2.www * r9.xyz);
    r9 = vec4<f32>(v_57.xyz, r9.w);
    let v_58 = (r10.xyz * r12.yyy);
    r13 = vec4<f32>(v_58.xyz, r13.w);
    let v_59 = (r9.xyz * r12.xxx);
    r14 = vec4<f32>(v_59.xyz, r14.w);
    let v_60 = fma(r12.yyy, r10.xyz, r14.xyz);
    r15 = vec4<f32>(v_60.xyz, r15.w);
    let v_61 = (r8.xyz + r15.xyz);
    r16 = vec4<f32>(v_61.xyz, r16.w);
    r2.w = dot(r11.xyz, r15.xyz);
    r2.w = fma(r1.w, cb6_6.tint_symbol_2[17u].w, r2.w);
    let v_62 = r16.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_62.xyz, r2.w);
    let v_63 = -(r14.xyzx);
    let v_64 = fma(r12.yyy, r10.xyz, v_63.xyz);
    r14 = vec4<f32>(v_64.xyz, r14.w);
    let v_65 = (r14.xyz * vec3<f32>(0.5f));
    r15 = vec4<f32>(v_65.xyz, r15.w);
    let v_66 = fma(r14.xyz, vec3<f32>(0.5f), r8.xyz);
    r14 = vec4<f32>(v_66.xyz, r14.w);
    r3.w = dot(r11.xyz, r15.xyz);
    r3.w = fma(r1.w, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_67 = r14.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_67.xyz, r3.w);
    r2.w = (r2.w + r3.w);
    let v_68 = -(r13.xyzx);
    let v_69 = fma(r12.xxx, r9.xyz, v_68.xyz);
    r13 = vec4<f32>(v_69.xyz, r13.w);
    let v_70 = (r13.xyz * vec3<f32>(0.25f));
    r14 = vec4<f32>(v_70.xyz, r14.w);
    let v_71 = fma(r13.xyz, vec3<f32>(0.25f), r8.xyz);
    r13 = vec4<f32>(v_71.xyz, r13.w);
    r3.w = dot(r11.xyz, r14.xyz);
    r3.w = fma(r1.w, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_72 = r13.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_72.xyz, r3.w);
    r2.w = (r2.w + r3.w);
    let v_73 = -(r12.xxxx);
    r13.x = (v_73.x + (-(r12.yyyy)).x);
    r13.y = ((-(r12.xxxx)).y + r12.y);
    let v_74 = (r13.xy * vec2<f32>(0.54447221755981445312f));
    r12 = vec4<f32>(r12.xy, v_74.xy);
    let v_75 = (r10.xyz * r12.zzz);
    r13 = vec4<f32>(v_75.xyz, r13.w);
    let v_76 = (r9.xyz * r12.www);
    r14 = vec4<f32>(v_76.xyz, r14.w);
    let v_77 = fma(r12.zzz, r10.xyz, r14.xyz);
    r15 = vec4<f32>(v_77.xyz, r15.w);
    let v_78 = (r8.xyz + r15.xyz);
    r16 = vec4<f32>(v_78.xyz, r16.w);
    r3.w = dot(r11.xyz, r15.xyz);
    r3.w = fma(r1.w, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_79 = r16.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_79.xyz, r3.w);
    r2.w = (r2.w + r3.w);
    let v_80 = -(r14.xyzx);
    let v_81 = fma(r12.zzz, r10.xyz, v_80.xyz);
    r14 = vec4<f32>(v_81.xyz, r14.w);
    let v_82 = (r14.xyz * vec3<f32>(0.5f));
    r15 = vec4<f32>(v_82.xyz, r15.w);
    let v_83 = fma(r14.xyz, vec3<f32>(0.5f), r8.xyz);
    r14 = vec4<f32>(v_83.xyz, r14.w);
    r3.w = dot(r11.xyz, r15.xyz);
    r3.w = fma(r1.w, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_84 = r14.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_84.xyz, r3.w);
    r2.w = (r2.w + r3.w);
    let v_85 = -(r13.xyzx);
    let v_86 = fma(r12.www, r9.xyz, v_85.xyz);
    r13 = vec4<f32>(v_86.xyz, r13.w);
    let v_87 = (r13.xyz * vec3<f32>(0.25f));
    r14 = vec4<f32>(v_87.xyz, r14.w);
    let v_88 = fma(r13.xyz, vec3<f32>(0.25f), r8.xyz);
    r13 = vec4<f32>(v_88.xyz, r13.w);
    r3.w = dot(r11.xyz, r14.xyz);
    r3.w = fma(r1.w, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_89 = r13.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_89.xyz, r3.w);
    r2.w = (r2.w + r3.w);
    let v_90 = (r12.xy * vec2<f32>(0.43999999761581420898f, -0.43999999761581420898f));
    r12 = vec4<f32>(v_90.xy, r12.zw);
    let v_91 = (r10.xyz * r12.xxx);
    r13 = vec4<f32>(v_91.xyz, r13.w);
    let v_92 = (r9.xyz * r12.yyy);
    r14 = vec4<f32>(v_92.xyz, r14.w);
    let v_93 = fma(r12.xxx, r10.xyz, r14.xyz);
    r15 = vec4<f32>(v_93.xyz, r15.w);
    let v_94 = (r8.xyz + r15.xyz);
    r16 = vec4<f32>(v_94.xyz, r16.w);
    r3.w = dot(r11.xyz, r15.xyz);
    r3.w = fma(r1.w, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_95 = r16.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_95.xyz, r3.w);
    r2.w = (r2.w + r3.w);
    let v_96 = -(r14.xyzx);
    let v_97 = fma(r12.xxx, r10.xyz, v_96.xyz);
    r10 = vec4<f32>(v_97.xyz, r10.w);
    let v_98 = (r10.xyz * vec3<f32>(0.5f));
    r12 = vec4<f32>(v_98.x, r12.y, v_98.yz);
    let v_99 = fma(r10.xyz, vec3<f32>(0.5f), r8.xyz);
    r10 = vec4<f32>(v_99.xyz, r10.w);
    r3.w = dot(r11.xyz, r12.xzw);
    r3.w = fma(r1.w, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_100 = r10.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_100.xyz, r3.w);
    r2.w = (r2.w + r3.w);
    let v_101 = -(r13.xyzx);
    let v_102 = fma(r12.yyy, r9.xyz, v_101.xyz);
    r9 = vec4<f32>(v_102.xyz, r9.w);
    let v_103 = (r9.xyz * vec3<f32>(0.25f));
    r10 = vec4<f32>(v_103.xyz, r10.w);
    let v_104 = fma(r9.xyz, vec3<f32>(0.25f), r8.xyz);
    r8 = vec4<f32>(v_104.xyz, r8.w);
    r3.w = dot(r11.xyz, r10.xyz);
    r1.w = fma(r1.w, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_105 = r8.xyzx;
    r1.w = textureSampleCompareLevel(t14, s14, v_105.xyz, r1.w);
    r1.w = (r1.w + r2.w);
    r1.w = (r1.w * 0.11111111193895339966f);
  } else {
    let v_106 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_106.xyz, r2.w);
    r8.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r8.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_107 = -(r0.zzzz);
    let v_108 = (r8.yxy / v_107.xyz);
    r8 = vec4<f32>(v_108.xyz, r8.w);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r8.w = (r0.z * cb6_6.tint_symbol_2[17u].w);
    r2 = fma(r8, vec4<f32>(-0.5f, 0.5f, -0.5f, 1.0f), vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
    let v_109 = (r1.xy * vec2<f32>(0.015625f));
    r1 = vec4<f32>(v_109.xy, r1.zw);
    r8 = textureSample(t1, s1, r1.xyxx.xy);
    let v_110 = fma(r8.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r1 = vec4<f32>(v_110.xy, r1.zw);
    let v_111 = (r1.xy * cb6_6.tint_symbol_2[18u].ww);
    r8 = vec4<f32>(v_111.xy, r8.zw);
    r9 = dpdx(r2.yzwz);
    r10 = dpdy(r2);
    let v_112 = (r9.yw * r10.yw);
    r8 = vec4<f32>(r8.xy, v_112.xy);
    let v_113 = -(r8.zwzz);
    let v_114 = fma(r9.xz, r10.xz, v_113.xy);
    r11 = vec4<f32>(v_114.xy, r11.zw);
    r0.z = (1.0f / r11.x);
    r2.x = (r9.z * r10.y);
    let v_115 = -(r2.xxxx);
    r11.z = fma(r9.x, r10.w, v_115.z);
    let v_116 = (r0.zz * r11.yz);
    r8 = vec4<f32>(r8.xy, v_116.xy);
    let v_117 = max(r8.zw, vec2<f32>(-1.0f));
    r8 = vec4<f32>(r8.xy, v_117.xy);
    let v_118 = min(r8.zw, vec2<f32>(1.0f));
    r8 = vec4<f32>(r8.xy, v_118.xy);
    let v_119 = fma(r1.xy, cb6_6.tint_symbol_2[18u].ww, r2.yz);
    r9 = vec4<f32>(v_119.xy, r9.zw);
    r0.z = dot(r8.zw, r8.xy);
    r0.z = (r0.z + r2.w);
    let v_120 = r9.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_120.xy, r0.z);
    r9 = (r8.yxyx * vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f));
    r10 = fma(r8.yxyx, vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f), r2.yzyz);
    r1.y = dot(r8.zw, r9.xy);
    r1.y = (r1.y + r2.w);
    let v_121 = r10.xyxx;
    r1.y = textureSampleCompareLevel(t24, s14, v_121.xy, r1.y);
    r0.z = (r0.z + r1.y);
    r1.y = dot(r8.zw, r9.zw);
    r1.y = (r1.y + r2.w);
    let v_122 = r10.zwzz;
    r1.y = textureSampleCompareLevel(t24, s14, v_122.xy, r1.y);
    r0.z = (r0.z + r1.y);
    let v_123 = -(r1.xxxx);
    let v_124 = -(r8.yyyy);
    r9.y = fma(v_123.y, cb6_6.tint_symbol_2[18u].w, v_124.y);
    let v_125 = -(r8.yyyy);
    r9.x = fma(r1.x, cb6_6.tint_symbol_2[18u].w, v_125.x);
    r10 = (r9.yxxy * vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f));
    r11 = fma(r9.yxxy, vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f), r2.yzyz);
    r1.x = dot(r8.zw, r10.xy);
    r1.x = (r1.x + r2.w);
    let v_126 = r11.xyxx;
    r1.x = textureSampleCompareLevel(t24, s14, v_126.xy, r1.x);
    r0.z = (r0.z + r1.x);
    r1.x = dot(r8.zw, r10.zw);
    r1.x = (r1.x + r2.w);
    let v_127 = r11.zwzz;
    r1.x = textureSampleCompareLevel(t24, s14, v_127.xy, r1.x);
    r0.z = (r0.z + r1.x);
    let v_128 = (r9.xy * vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f));
    r1 = vec4<f32>(v_128.xy, r1.zw);
    let v_129 = fma(r9.xy, vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f), r2.yz);
    r9 = vec4<f32>(v_129.xy, r9.zw);
    r1.x = dot(r8.zw, r1.xy);
    r1.x = (r1.x + r2.w);
    let v_130 = r9.xyxx;
    r1.x = textureSampleCompareLevel(t24, s14, v_130.xy, r1.x);
    r0.z = (r0.z + r1.x);
    r9 = (r8.yxxy * vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f));
    r10 = fma(r8.yxxy, vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f), r2.yzyz);
    r1.x = dot(r8.zw, r9.xy);
    r1.x = (r1.x + r2.w);
    let v_131 = r10.xyxx;
    r1.x = textureSampleCompareLevel(t24, s14, v_131.xy, r1.x);
    r0.z = (r0.z + r1.x);
    r1.x = dot(r8.zw, r9.zw);
    r1.x = (r1.x + r2.w);
    let v_132 = r10.zwzz;
    r1.x = textureSampleCompareLevel(t24, s14, v_132.xy, r1.x);
    r0.z = (r0.z + r1.x);
    let v_133 = (r8.xy * vec2<f32>(-0.10999999940395355225f));
    r1 = vec4<f32>(v_133.xy, r1.zw);
    let v_134 = fma(r8.xy, vec2<f32>(-0.10999999940395355225f), r2.yz);
    r2 = vec4<f32>(v_134.xy, r2.zw);
    r1.x = dot(r8.zw, r1.xy);
    r1.x = (r1.x + r2.w);
    let v_135 = r2.xyxx;
    r1.x = textureSampleCompareLevel(t24, s14, v_135.xy, r1.x);
    r0.z = (r0.z + r1.x);
    r1.w = (r0.z * 0.11111111193895339966f);
  }
  r0.z = (r0.w * r1.z);
  let v_136 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r1 = vec4<f32>(v_136.xyz, r1.w);
  let v_137 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_138 = -(r1.xyzx);
  let v_139 = fma(v_137.xyz, cb12_12.tint_symbol_3[2u].zxy, v_138.xyz);
  r1 = vec4<f32>(v_139.xyz, r1.w);
  let v_140 = -(r4.xyzx);
  r1.x = dot(r1.xyz, v_140.xyz);
  let v_141 = -(r4.xyzx);
  r1.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_141.xyz);
  r0.w = dot(v_4.xyz, (-(r4.xyzx)).xyz);
  r1.z = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).z, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r1.z = sqrt(r1.z);
  r1.z = (cb12_12.tint_symbol_3[5u].x / r1.z);
  r1.z = (r1.z * 0.5f);
  r0.w = (r1.z / r0.w);
  let v_142 = clamp(fma(r1.xyxx, r0.wwww, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_142.xy, r1.zw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r2.x = ((-(r1.yyyy)).x + 1.0f);
  let v_143 = bitcast<u32>(r0.w);
  let v_144 = r2.x;
  r1.z = select(r1.y, v_144, (v_143 != 0u));
  r2 = textureSampleLevel(t2, s2, r1.xzxx.xy, 0.0f);
  let v_145 = fma(r2.xyz, r2.xyz, vec3<f32>(-1.0f));
  r1 = vec4<f32>(v_145.xyz, r1.w);
  let v_146 = fma(cb12_12.tint_symbol_3[11u].yyy, r1.xyz, vec3<f32>(1.0f));
  r1 = vec4<f32>(v_146.xyz, r1.w);
  let v_147 = (r1.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_147.xyz, r1.w);
  let v_148 = (r1.xyz * cb12_12.tint_symbol_3[3u].www);
  r1 = vec4<f32>(v_148.xyz, r1.w);
  let v_149 = dot(r7.xyz, r4.xyz);
  r0.w = clamp(vec4<f32>(v_149, v_149, v_149, v_149).w, 0.0f, 1.0f);
  let v_150 = dot((-(r6.xywx)).xyz, r7.xyz);
  r2.x = clamp(vec4<f32>(v_150, v_150, v_150, v_150).x, 0.0f, 1.0f);
  let v_151 = dot(r3.xyz, r4.xyz);
  r2.y = clamp(vec4<f32>(v_151, v_151, v_151, v_151).y, 0.0f, 1.0f);
  let v_152 = ((-(r2.xyxx)).xy + vec2<f32>(1.0f));
  r2 = vec4<f32>(v_152.xy, r2.zw);
  let v_153 = (r2.xy * r2.xy);
  r2 = vec4<f32>(r2.xy, v_153.xy);
  let v_154 = (r2.zw * r2.zw);
  r2 = vec4<f32>(r2.xy, v_154.xy);
  let v_155 = (r2.xy * r2.zw);
  r2 = vec4<f32>(v_155.xy, r2.zw);
  r2.z = ((-(r6.zzzz)).z + 1.0f);
  let v_156 = fma(r6.zz, r2.xy, r2.zz);
  r2 = vec4<f32>(v_156.xy, r2.zw);
  let v_157 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r2 = vec4<f32>(r2.xy, v_157.xy);
  r0.y = (r2.z * 0.125f);
  r2.x = fma((-(r0.xxxx)).x, r2.x, 1.0f);
  r2.z = dot(r7.xyz, r3.xyz);
  r2.z = clamp(((r2.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r2.z = log2(r2.z);
  r2.z = (r2.z * r2.w);
  r2.z = exp2(r2.z);
  r2.y = (r2.y * r2.z);
  r0.y = (r0.y * r2.y);
  r0.x = (r0.x * r0.y);
  r0.x = (r0.w * r0.x);
  r0.y = (r0.w * r2.x);
  r0.x = (r0.x * cb12_12.tint_symbol_3[8u].z);
  r0.w = (r1.w + -1.0f);
  r0.w = fma(cb12_12.tint_symbol_3[8u].y, r0.w, 1.0f);
  let v_158 = fma(r5.xyz, r0.yyy, r0.xxx);
  r2 = vec4<f32>(v_158.xyz, r2.w);
  let v_159 = (r1.xyz * r2.xyz);
  r1 = vec4<f32>(v_159.xyz, r1.w);
  let v_160 = (r0.zzz * r1.xyz);
  r0 = vec4<f32>(v_160.xyz, r0.w);
  let v_161 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_161.xyz, r0.w);
  let v_162 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_162.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_5(v_163 : bool) {
  if (v_163) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
