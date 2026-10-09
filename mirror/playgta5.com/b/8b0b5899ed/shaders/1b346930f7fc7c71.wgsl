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
  r1.w = dot(r1, cb12_12.tint_symbol_3[6u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r0.w = (r0.w * r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_5((bitcast<u32>(r1.w) != 0u));
  let v_6 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r5 = vec4<f32>(v_6.xy, r5.zw);
  let v_7 = r5.xy;
  let v_8 = max(v_7, vec2<f32>(-2147483648.0f));
  let v_9 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_8), vec2<i32>(2147483647i), (v_8 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_7 == v_7))));
  r6 = vec4<f32>(v_9.xy, r6.zw);
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r6 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w)));
  r1.w = bitcast<f32>((bitcast<u32>(r6.y) & 8u));
  r1.w = f32(bitcast<u32>(r1.w));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 8.0f)));
  r6 = textureSample(t7, s7, r0.xyxx.xy);
  let v_10 = (r6.xyz * r6.xyz);
  r6 = vec4<f32>(v_10.xyz, r6.w);
  r7 = textureSample(t9, s9, r0.xyxx.xy);
  let v_11 = (r7.xy * r7.xy);
  r5 = vec4<f32>(r5.xy, v_11.xy);
  r8 = textureSample(t8, s8, r0.xyxx.xy);
  let v_12 = (r8.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r7 = vec4<f32>(v_12.xy, r7.z, v_12.z);
  let v_13 = fract(r7.xyw);
  r7 = vec4<f32>(v_13.xy, r7.z, v_13.z);
  let v_14 = fma((-(r7.ywyy)).xy, vec2<f32>(0.125f), r7.xy);
  r7 = vec4<f32>(v_14.xy, r7.zw);
  let v_15 = fma(r8.xyz, vec3<f32>(256.0f), r7.xyw);
  r7 = vec4<f32>(v_15.xy, r7.z, v_15.z);
  let v_16 = (r7.xyw + vec3<f32>(-128.0f));
  r7 = vec4<f32>(v_16.xy, r7.z, v_16.z);
  r0.x = dot(r7.xyw, r7.xyw);
  r0.x = inverseSqrt(r0.x);
  let v_17 = (r0.xxx * r7.xyw);
  r7 = vec4<f32>(v_17.xy, r7.z, v_17.z);
  r0.x = min(r5.z, 1.0f);
  r0.y = fma(r5.w, 512.0f, -500.0f);
  r0.y = max(r0.y, 0.0f);
  let v_18 = -(r0.yyyy);
  r3.w = fma(r5.w, 512.0f, v_18.w);
  r0.y = (r0.y * 558.0f);
  r0.y = fma(r3.w, 3.0f, r0.y);
  r3.w = dot(r2.xyz, r2.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_19 = (r2.xyz * r3.www);
  r8 = vec4<f32>(v_19.xyz, r8.w);
  let v_20 = -(r8.xyzx);
  let v_21 = fma(r3.xyz, r2.www, v_20.xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_22 = (r2.www * r3.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r2.w) != 0u)) {
    let v_23 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r9 = vec4<f32>(v_23.xyz, r9.w);
    r10.x = dot(r9.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r10.y = dot(r9.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r10.z = dot(r9.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_24 = -(r10.xyzx);
    r2.w = dot(v_24.xyz, (-(r10.xyzx)).xyz);
    r2.w = sqrt(r2.w);
    let v_25 = ((-(r10.xyzx)).xyz / r2.www);
    r9 = vec4<f32>(v_25.xyz, r9.w);
    r3.w = (r2.w * cb6_6.tint_symbol_2[17u].w);
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
    r5 = vec4<f32>(r5.xy, v_31.xy);
    let v_32 = (-(r10.xyzx)).xyz;
    r10 = vec4<f32>(v_32.xyz, r10.w);
    r10.w = 0.0f;
    let v_33 = bitcast<vec3<u32>>(r5.www);
    let v_34 = r10.wxw;
    let v_35 = select(r10.wwy, v_34, (v_33 != vec3<u32>()));
    r11 = vec4<f32>(v_35.xyz, r11.w);
    let v_36 = bitcast<vec3<u32>>(r5.zzz);
    let v_37 = r11.xyz;
    let v_38 = select(r10.wwz, v_37, (v_36 != vec3<u32>()));
    r10 = vec4<f32>(v_38.xyz, r10.w);
    let v_39 = (r9.zxy * r10.xyz);
    r11 = vec4<f32>(v_39.xyz, r11.w);
    let v_40 = -(r11.xyzx);
    let v_41 = fma(r9.yzx, r10.yzx, v_40.xyz);
    r10 = vec4<f32>(v_41.xyz, r10.w);
    r4.w = dot(r10.xyz, r10.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_42 = (r4.www * r10.xyz);
    r10 = vec4<f32>(v_42.xyz, r10.w);
    let v_43 = (r9.yzx * r10.zxy);
    r11 = vec4<f32>(v_43.xyz, r11.w);
    let v_44 = -(r11.xyzx);
    let v_45 = fma(r10.yzx, r9.zxy, v_44.xyz);
    r11 = vec4<f32>(v_45.xyz, r11.w);
    r12 = dpdx(r9.xyzx);
    r4.w = dpdx(r3.w);
    r13 = dpdy(r9.xyzx);
    r3.w = dpdy(r3.w);
    r14.z = dot(r12.yzw, r12.yzw);
    r5.z = dot(r12.yzw, r13.yzw);
    r14.x = dot(r13.yzw, r13.yzw);
    r5.w = (r5.z * r5.z);
    let v_46 = -(r5.wwww);
    r5.w = fma(r14.z, r14.x, v_46.w);
    r5.w = (1.0f / r5.w);
    r14.y = (-(r5.zzzz)).y;
    r15 = (r5.wwww * r14.xxxy);
    r14 = (r14.yyyz * r5.wwww);
    r16 = (r13 * r14);
    r16 = fma(r12, r15, r16);
    let v_47 = (r13.yz * r14.ww);
    r5 = vec4<f32>(r5.xy, v_47.xy);
    let v_48 = fma(r12.yz, r15.ww, r5.zw);
    r5 = vec4<f32>(r5.xy, v_48.xy);
    let v_49 = (r4.www * r16.xyz);
    r12 = vec4<f32>(v_49.xyz, r12.w);
    r13.x = fma(r3.w, r16.w, r12.x);
    let v_50 = fma(r3.ww, r5.zw, r12.yz);
    let v_51 = r13;
    r13 = vec4<f32>(v_51.x, v_50.xy, v_51.w);
    let v_52 = max(r13.xyz, vec3<f32>(-1.0f));
    r12 = vec4<f32>(v_52.xyz, r12.w);
    let v_53 = min(r12.xyz, vec3<f32>(1.0f));
    r12 = vec4<f32>(v_53.xyz, r12.w);
    let v_54 = (r5.xy * vec2<f32>(0.015625f));
    r5 = vec4<f32>(r5.xy, v_54.xy);
    r13 = textureSample(t1, s1, r5.zwzz.xy);
    let v_55 = fma(r13.yx, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r5 = vec4<f32>(r5.xy, v_55.xy);
    r3.w = (cb6_6.tint_symbol_2[18u].w * 4.0f);
    let v_56 = (r3.www * r11.xyz);
    r11 = vec4<f32>(v_56.xyz, r11.w);
    let v_57 = (r3.www * r10.xyz);
    r10 = vec4<f32>(v_57.xyz, r10.w);
    let v_58 = (r5.www * r11.xyz);
    r13 = vec4<f32>(v_58.xyz, r13.w);
    let v_59 = (r5.zzz * r10.xyz);
    r14 = vec4<f32>(v_59.xyz, r14.w);
    let v_60 = fma(r5.www, r11.xyz, r14.xyz);
    r15 = vec4<f32>(v_60.xyz, r15.w);
    let v_61 = (r9.xyz + r15.xyz);
    r16 = vec4<f32>(v_61.xyz, r16.w);
    r3.w = dot(r12.xyz, r15.xyz);
    r3.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_62 = r16.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_62.xyz, r3.w);
    let v_63 = -(r14.xyzx);
    let v_64 = fma(r5.www, r11.xyz, v_63.xyz);
    r14 = vec4<f32>(v_64.xyz, r14.w);
    let v_65 = (r14.xyz * vec3<f32>(0.5f));
    r15 = vec4<f32>(v_65.xyz, r15.w);
    let v_66 = fma(r14.xyz, vec3<f32>(0.5f), r9.xyz);
    r14 = vec4<f32>(v_66.xyz, r14.w);
    r4.w = dot(r12.xyz, r15.xyz);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_67 = r14.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_67.xyz, r4.w);
    r3.w = (r3.w + r4.w);
    let v_68 = -(r13.xyzx);
    let v_69 = fma(r5.zzz, r10.xyz, v_68.xyz);
    r13 = vec4<f32>(v_69.xyz, r13.w);
    let v_70 = (r13.xyz * vec3<f32>(0.25f));
    r14 = vec4<f32>(v_70.xyz, r14.w);
    let v_71 = fma(r13.xyz, vec3<f32>(0.25f), r9.xyz);
    r13 = vec4<f32>(v_71.xyz, r13.w);
    r4.w = dot(r12.xyz, r14.xyz);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_72 = r13.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_72.xyz, r4.w);
    r3.w = (r3.w + r4.w);
    let v_73 = -(r5.zzzz);
    r13.x = (v_73.x + (-(r5.wwww)).x);
    r13.y = ((-(r5.zzzz)).y + r5.w);
    let v_74 = (r13.xy * vec2<f32>(0.54447221755981445312f));
    r13 = vec4<f32>(v_74.xy, r13.zw);
    let v_75 = (r11.xyz * r13.xxx);
    r14 = vec4<f32>(v_75.xyz, r14.w);
    let v_76 = (r10.xyz * r13.yyy);
    r15 = vec4<f32>(v_76.xyz, r15.w);
    let v_77 = fma(r13.xxx, r11.xyz, r15.xyz);
    r16 = vec4<f32>(v_77.xyz, r16.w);
    let v_78 = (r9.xyz + r16.xyz);
    r17 = vec4<f32>(v_78.xyz, r17.w);
    r4.w = dot(r12.xyz, r16.xyz);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_79 = r17.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_79.xyz, r4.w);
    r3.w = (r3.w + r4.w);
    let v_80 = -(r15.xxyz);
    let v_81 = fma(r13.xxx, r11.xyz, v_80.xzw);
    r13 = vec4<f32>(v_81.x, r13.y, v_81.yz);
    let v_82 = (r13.xzw * vec3<f32>(0.5f));
    r15 = vec4<f32>(v_82.xyz, r15.w);
    let v_83 = fma(r13.xzw, vec3<f32>(0.5f), r9.xyz);
    r13 = vec4<f32>(v_83.x, r13.y, v_83.yz);
    r4.w = dot(r12.xyz, r15.xyz);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_84 = r13.xzwx;
    r4.w = textureSampleCompareLevel(t14, s14, v_84.xyz, r4.w);
    r3.w = (r3.w + r4.w);
    let v_85 = -(r14.xyzx);
    let v_86 = fma(r13.yyy, r10.xyz, v_85.xyz);
    r13 = vec4<f32>(v_86.xyz, r13.w);
    let v_87 = (r13.xyz * vec3<f32>(0.25f));
    r14 = vec4<f32>(v_87.xyz, r14.w);
    let v_88 = fma(r13.xyz, vec3<f32>(0.25f), r9.xyz);
    r13 = vec4<f32>(v_88.xyz, r13.w);
    r4.w = dot(r12.xyz, r14.xyz);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_89 = r13.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_89.xyz, r4.w);
    r3.w = (r3.w + r4.w);
    let v_90 = (r5.zw * vec2<f32>(0.43999999761581420898f, -0.43999999761581420898f));
    r5 = vec4<f32>(r5.xy, v_90.xy);
    let v_91 = (r11.xyz * r5.zzz);
    r13 = vec4<f32>(v_91.xyz, r13.w);
    let v_92 = (r10.xyz * r5.www);
    r14 = vec4<f32>(v_92.xyz, r14.w);
    let v_93 = fma(r5.zzz, r11.xyz, r14.xyz);
    r15 = vec4<f32>(v_93.xyz, r15.w);
    let v_94 = (r9.xyz + r15.xyz);
    r16 = vec4<f32>(v_94.xyz, r16.w);
    r4.w = dot(r12.xyz, r15.xyz);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_95 = r16.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_95.xyz, r4.w);
    r3.w = (r3.w + r4.w);
    let v_96 = -(r14.xyzx);
    let v_97 = fma(r5.zzz, r11.xyz, v_96.xyz);
    r11 = vec4<f32>(v_97.xyz, r11.w);
    let v_98 = (r11.xyz * vec3<f32>(0.5f));
    r14 = vec4<f32>(v_98.xyz, r14.w);
    let v_99 = fma(r11.xyz, vec3<f32>(0.5f), r9.xyz);
    r11 = vec4<f32>(v_99.xyz, r11.w);
    r4.w = dot(r12.xyz, r14.xyz);
    r4.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_100 = r11.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_100.xyz, r4.w);
    r3.w = (r3.w + r4.w);
    let v_101 = -(r13.xyzx);
    let v_102 = fma(r5.www, r10.xyz, v_101.xyz);
    r10 = vec4<f32>(v_102.xyz, r10.w);
    let v_103 = (r10.xyz * vec3<f32>(0.25f));
    r11 = vec4<f32>(v_103.xyz, r11.w);
    let v_104 = fma(r10.xyz, vec3<f32>(0.25f), r9.xyz);
    r9 = vec4<f32>(v_104.xyz, r9.w);
    r4.w = dot(r12.xyz, r11.xyz);
    r2.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r4.w);
    let v_105 = r9.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_105.xyz, r2.w);
    r2.w = (r2.w + r3.w);
    r2.w = (r2.w * 0.11111111193895339966f);
  } else {
    let v_106 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_106.xyz, r2.w);
    r9.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r9.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_107 = -(r0.zzzz);
    let v_108 = (r9.yxy / v_107.xyz);
    r9 = vec4<f32>(v_108.xyz, r9.w);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r9.w = (r0.z * cb6_6.tint_symbol_2[17u].w);
    r9 = fma(r9, vec4<f32>(-0.5f, 0.5f, -0.5f, 1.0f), vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
    let v_109 = (r5.xy * vec2<f32>(0.015625f));
    r2 = vec4<f32>(v_109.xy, r2.zw);
    r5 = textureSample(t1, s1, r2.xyxx.xy);
    let v_110 = fma(r5.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r2 = vec4<f32>(v_110.xy, r2.zw);
    let v_111 = (r2.xy * cb6_6.tint_symbol_2[18u].ww);
    r5 = vec4<f32>(v_111.xy, r5.zw);
    r10 = dpdx(r9.yzwz);
    r11 = dpdy(r9);
    let v_112 = (r10.yw * r11.yw);
    r5 = vec4<f32>(r5.xy, v_112.xy);
    let v_113 = -(r5.zwzz);
    let v_114 = fma(r10.xz, r11.xz, v_113.xy);
    r12 = vec4<f32>(v_114.xy, r12.zw);
    r0.z = (1.0f / r12.x);
    r2.z = (r10.z * r11.y);
    let v_115 = -(r2.zzzz);
    r12.z = fma(r10.x, r11.w, v_115.z);
    let v_116 = (r0.zz * r12.yz);
    r5 = vec4<f32>(r5.xy, v_116.xy);
    let v_117 = max(r5.zw, vec2<f32>(-1.0f));
    r5 = vec4<f32>(r5.xy, v_117.xy);
    let v_118 = min(r5.zw, vec2<f32>(1.0f));
    r5 = vec4<f32>(r5.xy, v_118.xy);
    let v_119 = fma(r2.xy, cb6_6.tint_symbol_2[18u].ww, r9.yz);
    let v_120 = r2;
    r2 = vec4<f32>(v_120.x, v_119.xy, v_120.w);
    r0.z = dot(r5.zw, r5.xy);
    r0.z = (r0.z + r9.w);
    let v_121 = r2.yzyy;
    r0.z = textureSampleCompareLevel(t24, s14, v_121.xy, r0.z);
    r10 = (r5.yxyx * vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f));
    r11 = fma(r5.yxyx, vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f), r9.yzyz);
    r2.y = dot(r5.zw, r10.xy);
    r2.y = (r2.y + r9.w);
    let v_122 = r11.xyxx;
    r2.y = textureSampleCompareLevel(t24, s14, v_122.xy, r2.y);
    r0.z = (r0.z + r2.y);
    r2.y = dot(r5.zw, r10.zw);
    r2.y = (r2.y + r9.w);
    let v_123 = r11.zwzz;
    r2.y = textureSampleCompareLevel(t24, s14, v_123.xy, r2.y);
    r0.z = (r0.z + r2.y);
    let v_124 = -(r2.xxxx);
    let v_125 = -(r5.yyyy);
    r10.y = fma(v_124.y, cb6_6.tint_symbol_2[18u].w, v_125.y);
    let v_126 = -(r5.yyyy);
    r10.x = fma(r2.x, cb6_6.tint_symbol_2[18u].w, v_126.x);
    r11 = (r10.yxxy * vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f));
    r12 = fma(r10.yxxy, vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f), r9.yzyz);
    r2.x = dot(r5.zw, r11.xy);
    r2.x = (r2.x + r9.w);
    let v_127 = r12.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_127.xy, r2.x);
    r0.z = (r0.z + r2.x);
    r2.x = dot(r5.zw, r11.zw);
    r2.x = (r2.x + r9.w);
    let v_128 = r12.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_128.xy, r2.x);
    r0.z = (r0.z + r2.x);
    let v_129 = (r10.xy * vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f));
    r2 = vec4<f32>(v_129.xy, r2.zw);
    let v_130 = fma(r10.xy, vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f), r9.yz);
    r10 = vec4<f32>(v_130.xy, r10.zw);
    r2.x = dot(r5.zw, r2.xy);
    r2.x = (r2.x + r9.w);
    let v_131 = r10.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_131.xy, r2.x);
    r0.z = (r0.z + r2.x);
    r10 = (r5.yxxy * vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f));
    r11 = fma(r5.yxxy, vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f), r9.yzyz);
    r2.x = dot(r5.zw, r10.xy);
    r2.x = (r2.x + r9.w);
    let v_132 = r11.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_132.xy, r2.x);
    r0.z = (r0.z + r2.x);
    r2.x = dot(r5.zw, r10.zw);
    r2.x = (r2.x + r9.w);
    let v_133 = r11.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_133.xy, r2.x);
    r0.z = (r0.z + r2.x);
    let v_134 = (r5.xy * vec2<f32>(-0.10999999940395355225f));
    r2 = vec4<f32>(v_134.xy, r2.zw);
    let v_135 = fma(r5.xy, vec2<f32>(-0.10999999940395355225f), r9.yz);
    r5 = vec4<f32>(v_135.xy, r5.zw);
    r2.x = dot(r5.zw, r2.xy);
    r2.x = (r2.x + r9.w);
    let v_136 = r5.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_136.xy, r2.x);
    r0.z = (r0.z + r2.x);
    r2.w = (r0.z * 0.11111111193895339966f);
  }
  r0.z = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  r0.z = (r0.z * r0.w);
  let v_137 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r2 = vec4<f32>(v_137.xyz, r2.w);
  let v_138 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_139 = -(r2.xyzx);
  let v_140 = fma(v_138.xyz, cb12_12.tint_symbol_3[2u].zxy, v_139.xyz);
  r2 = vec4<f32>(v_140.xyz, r2.w);
  let v_141 = -(r4.xyzx);
  r2.x = dot(r2.xyz, v_141.xyz);
  let v_142 = -(r4.xyzx);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_142.xyz);
  r0.w = dot(v_4.xyz, (-(r4.xyzx)).xyz);
  r1.w = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).w, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r1.w = sqrt(r1.w);
  r1.w = (cb12_12.tint_symbol_3[5u].x / r1.w);
  r1.w = (r1.w * 0.5f);
  r0.w = (r1.w / r0.w);
  let v_143 = clamp(fma(r2.xyxx, r0.wwww, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_143.xy, r2.zw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r1.w = ((-(r2.yyyy)).w + 1.0f);
  let v_144 = bitcast<u32>(r0.w);
  let v_145 = r1.w;
  r2.z = select(r2.y, v_145, (v_144 != 0u));
  r5 = textureSampleLevel(t2, s2, r2.xzxx.xy, 0.0f);
  let v_146 = fma(r5.xyz, r5.xyz, vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_146.xyz, r2.w);
  let v_147 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.xyz, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_147.xyz, r2.w);
  let v_148 = (r2.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_148.xyz, r2.w);
  let v_149 = (r2.xyz * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(v_149.xyz, r2.w);
  let v_150 = dot(r7.xyw, r4.xyz);
  r0.w = clamp(vec4<f32>(v_150, v_150, v_150, v_150).w, 0.0f, 1.0f);
  let v_151 = dot((-(r8.xyzx)).xyz, r7.xyw);
  r5.x = clamp(vec4<f32>(v_151, v_151, v_151, v_151).x, 0.0f, 1.0f);
  let v_152 = dot(r3.xyz, r4.xyz);
  r5.y = clamp(vec4<f32>(v_152, v_152, v_152, v_152).y, 0.0f, 1.0f);
  let v_153 = ((-(r5.xyxx)).xy + vec2<f32>(1.0f));
  r5 = vec4<f32>(v_153.xy, r5.zw);
  let v_154 = (r5.xy * r5.xy);
  r5 = vec4<f32>(r5.xy, v_154.xy);
  let v_155 = (r5.zw * r5.zw);
  r5 = vec4<f32>(r5.xy, v_155.xy);
  let v_156 = (r5.xy * r5.zw);
  r5 = vec4<f32>(v_156.xy, r5.zw);
  r1.w = ((-(r7.zzzz)).w + 1.0f);
  let v_157 = fma(r7.zz, r5.xy, r1.ww);
  r5 = vec4<f32>(v_157.xy, r5.zw);
  let v_158 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(r5.xy, v_158.xy);
  r0.y = (r5.z * 0.125f);
  r1.w = fma((-(r0.xxxx)).w, r5.x, 1.0f);
  r3.x = dot(r7.xyw, r3.xyz);
  r3.x = clamp(((r3.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r3.x = log2(r3.x);
  r3.x = (r3.x * r5.w);
  r3.x = exp2(r3.x);
  r3.x = (r5.y * r3.x);
  r0.y = (r0.y * r3.x);
  r0.x = (r0.x * r0.y);
  r0.x = (r0.w * r0.x);
  r0.y = (r0.w * r1.w);
  r0.w = (r1.z + cb12_12.tint_symbol_3[7u].z);
  r0.w = ((-(r0.wwww)).w / r4.z);
  r3 = fma(r4.xyyx, r0.wwww, r1.xyyx);
  r4 = (cb12_12.tint_symbol_3[7u].wwww * vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f));
  r3 = fma(r3, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r4);
  r4 = textureSample(t3, s3, r3.xyxx.xy);
  r3 = textureSample(t3, s3, r3.zwzz.xy);
  let v_159 = (r3.xyz * r4.xyz);
  r1 = vec4<f32>(v_159.xy, r1.z, v_159.z);
  let v_160 = (r1.xyw * vec3<f32>(10.0f));
  r1 = vec4<f32>(v_160.xy, r1.z, v_160.z);
  r1.z = ((-(r1.zzzz)).z + cb12_12.tint_symbol_3[7u].z);
  r1.z = clamp(((r1.zzzz + r1.zzzz)).z, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 25.0f);
  r0.w = clamp(((r0.wwww * vec4<f32>(0.03999999910593032837f))).w, 0.0f, 1.0f);
  let v_161 = (r0.www * r1.xyw);
  r1 = vec4<f32>(v_161.xy, r1.z, v_161.z);
  let v_162 = -(r0.xxxx);
  let v_163 = fma(r0.xxx, r1.xyw, v_162.xyz);
  r3 = vec4<f32>(v_163.xyz, r3.w);
  let v_164 = fma(r1.zzz, r3.xyz, r0.xxx);
  r3 = vec4<f32>(v_164.xyz, r3.w);
  let v_165 = -(r0.yyyy);
  let v_166 = fma(r0.yyy, r1.xyw, v_165.xyw);
  r1 = vec4<f32>(v_166.xy, r1.z, v_166.z);
  let v_167 = fma(r1.zzz, r1.xyw, r0.yyy);
  r0 = vec4<f32>(v_167.xy, r0.z, v_167.z);
  let v_168 = (r3.xyz * cb12_12.tint_symbol_3[8u].zzz);
  r1 = vec4<f32>(v_168.xyz, r1.w);
  r1.w = (r2.w + -1.0f);
  r1.w = fma(cb12_12.tint_symbol_3[8u].y, r1.w, 1.0f);
  let v_169 = fma(r6.xyz, r0.xyw, r1.xyz);
  r0 = vec4<f32>(v_169.xy, r0.z, v_169.z);
  let v_170 = (r2.xyz * r0.xyw);
  r0 = vec4<f32>(v_170.xy, r0.z, v_170.z);
  let v_171 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_171.xyz, r0.w);
  let v_172 = (r1.www * r0.xyz);
  r0 = vec4<f32>(v_172.xyz, r0.w);
  let v_173 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_173.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_5(v_174 : bool) {
  if (v_174) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
