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
  r3 = vec4<f32>(v_3.xyz, r3.w);
  r0.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.w = ((-(cb12_12.tint_symbol_3[7u].xxxx)).w + 1.0f);
  r2.w = fma(r2.w, r0.w, cb12_12.tint_symbol_3[7u].x);
  r0.w = (r0.w / r2.w);
  let v_4 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r2.w = dot(r3.xyz, v_4.xyz);
  r2.w = clamp(fma(r2.wwww, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).w, 0.0f, 1.0f);
  r0.w = (r0.w * r2.w);
  r1.w = 1.0f;
  r1.x = dot(r1, cb12_12.tint_symbol_3[6u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r0.w = (r0.w * r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_5((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t7, s7, r0.xyxx.xy);
  let v_6 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r4 = textureSample(t9, s9, r0.xyxx.xy);
  r1.w = (r4.x * r4.x);
  r5 = textureSample(t8, s8, r0.xyxx.xy);
  let v_7 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_7.xy, r4.z, v_7.z);
  let v_8 = fract(r4.xyw);
  r4 = vec4<f32>(v_8.xy, r4.z, v_8.z);
  let v_9 = fma((-(r4.ywyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_9.xy, r4.zw);
  let v_10 = fma(r5.xyz, vec3<f32>(256.0f), r4.xyw);
  r4 = vec4<f32>(v_10.xy, r4.z, v_10.z);
  let v_11 = (r4.xyw + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_11.xy, r4.z, v_11.z);
  r2.w = dot(r4.xyw, r4.xyw);
  r2.w = inverseSqrt(r2.w);
  let v_12 = (r2.www * r4.xyw);
  r4 = vec4<f32>(v_12.xy, r4.z, v_12.z);
  r1.w = min(r1.w, 1.0f);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_13 = (r2.www * r2.xyz);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r2.w) != 0u)) {
    let v_14 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r6 = vec4<f32>(v_14.xyz, r6.w);
    r7.x = dot(r6.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r7.y = dot(r6.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r7.z = dot(r6.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_15 = -(r7.xyzx);
    r2.w = dot(v_15.xyz, (-(r7.xyzx)).xyz);
    r2.w = sqrt(r2.w);
    let v_16 = ((-(r7.xyzx)).xyz / r2.www);
    r6 = vec4<f32>(v_16.xyz, r6.w);
    r3.w = (r2.w * cb6_6.tint_symbol_2[17u].w);
    let v_17 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r6.xyz)));
    r7 = vec4<f32>(v_17.xyz, r7.w);
    let v_18 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r6.xyz < vec3<f32>())));
    r8 = vec4<f32>(v_18.xyz, r8.w);
    let v_19 = -(bitcast<vec4<i32>>(r7.xyzx));
    let v_20 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r8.xyz) + v_19.xyz));
    r7 = vec4<f32>(v_20.xyz, r7.w);
    let v_21 = vec3<f32>(bitcast<vec3<i32>>(r7.xyz));
    r7 = vec4<f32>(v_21.xyz, r7.w);
    r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r6.zzyy) < abs(r6.xyxz))));
    let v_22 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r8.yw) | bitcast<vec2<u32>>(r8.xz)));
    r8 = vec4<f32>(v_22.xy, r8.zw);
    let v_23 = (-(r7.xyzx)).xyz;
    r7 = vec4<f32>(v_23.xyz, r7.w);
    r7.w = 0.0f;
    let v_24 = bitcast<vec3<u32>>(r8.yyy);
    let v_25 = r7.wxw;
    let v_26 = select(r7.wwy, v_25, (v_24 != vec3<u32>()));
    r8 = vec4<f32>(r8.x, v_26.xyz);
    let v_27 = bitcast<vec3<u32>>(r8.xxx);
    let v_28 = r8.yzw;
    let v_29 = select(r7.wwz, v_28, (v_27 != vec3<u32>()));
    r7 = vec4<f32>(v_29.xyz, r7.w);
    let v_30 = (r6.zxy * r7.xyz);
    r8 = vec4<f32>(v_30.xyz, r8.w);
    let v_31 = -(r8.xyzx);
    let v_32 = fma(r6.yzx, r7.yzx, v_31.xyz);
    r7 = vec4<f32>(v_32.xyz, r7.w);
    r5.w = dot(r7.xyz, r7.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_33 = (r5.www * r7.xyz);
    r7 = vec4<f32>(v_33.xyz, r7.w);
    let v_34 = (r6.yzx * r7.zxy);
    r8 = vec4<f32>(v_34.xyz, r8.w);
    let v_35 = -(r8.xyzx);
    let v_36 = fma(r7.yzx, r6.zxy, v_35.xyz);
    r8 = vec4<f32>(v_36.xyz, r8.w);
    r9 = dpdx(r6.xyzx);
    r5.w = dpdx(r3.w);
    r10 = dpdy(r6.xyzx);
    r3.w = dpdy(r3.w);
    r11.z = dot(r9.yzw, r9.yzw);
    r6.w = dot(r9.yzw, r10.yzw);
    r11.x = dot(r10.yzw, r10.yzw);
    r7.w = (r6.w * r6.w);
    let v_37 = -(r7.wwww);
    r7.w = fma(r11.z, r11.x, v_37.w);
    r7.w = (1.0f / r7.w);
    r11.y = (-(r6.wwww)).y;
    r12 = (r7.wwww * r11.xxxy);
    r11 = (r11.yyyz * r7.wwww);
    r13 = (r10 * r11);
    r13 = fma(r9, r12, r13);
    let v_38 = (r10.yz * r11.ww);
    r9 = vec4<f32>(v_38.x, r9.yz, v_38.y);
    let v_39 = fma(r9.yz, r12.ww, r9.xw);
    r9 = vec4<f32>(v_39.xy, r9.zw);
    let v_40 = (r5.www * r13.xyz);
    r10 = vec4<f32>(v_40.xyz, r10.w);
    r11.x = fma(r3.w, r13.w, r10.x);
    let v_41 = fma(r3.ww, r9.xy, r10.yz);
    let v_42 = r11;
    r11 = vec4<f32>(v_42.x, v_41.xy, v_42.w);
    let v_43 = max(r11.xyz, vec3<f32>(-1.0f));
    r9 = vec4<f32>(v_43.xyz, r9.w);
    let v_44 = min(r9.xyz, vec3<f32>(1.0f));
    r9 = vec4<f32>(v_44.xyz, r9.w);
    let v_45 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
    r10 = vec4<f32>(v_45.xy, r10.zw);
    let v_46 = (r10.xy * vec2<f32>(0.015625f));
    r10 = vec4<f32>(v_46.xy, r10.zw);
    r10 = textureSample(t1, s1, r10.xyxx.xy);
    let v_47 = fma(r10.yx, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r10 = vec4<f32>(v_47.xy, r10.zw);
    r3.w = (cb6_6.tint_symbol_2[18u].w * 4.0f);
    let v_48 = (r3.www * r8.xyz);
    r8 = vec4<f32>(v_48.xyz, r8.w);
    let v_49 = (r3.www * r7.xyz);
    r7 = vec4<f32>(v_49.xyz, r7.w);
    let v_50 = (r8.xyz * r10.yyy);
    r11 = vec4<f32>(v_50.xyz, r11.w);
    let v_51 = (r7.xyz * r10.xxx);
    r12 = vec4<f32>(v_51.xyz, r12.w);
    let v_52 = fma(r10.yyy, r8.xyz, r12.xyz);
    r13 = vec4<f32>(v_52.xyz, r13.w);
    let v_53 = (r6.xyz + r13.xyz);
    r14 = vec4<f32>(v_53.xyz, r14.w);
    r3.w = dot(r9.xyz, r13.xyz);
    r3.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_54 = r14.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_54.xyz, r3.w);
    let v_55 = -(r12.xyzx);
    let v_56 = fma(r10.yyy, r8.xyz, v_55.xyz);
    r12 = vec4<f32>(v_56.xyz, r12.w);
    let v_57 = (r12.xyz * vec3<f32>(0.5f));
    r13 = vec4<f32>(v_57.xyz, r13.w);
    let v_58 = fma(r12.xyz, vec3<f32>(0.5f), r6.xyz);
    r12 = vec4<f32>(v_58.xyz, r12.w);
    r5.w = dot(r9.xyz, r13.xyz);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_59 = r12.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_59.xyz, r5.w);
    r3.w = (r3.w + r5.w);
    let v_60 = -(r11.xyzx);
    let v_61 = fma(r10.xxx, r7.xyz, v_60.xyz);
    r11 = vec4<f32>(v_61.xyz, r11.w);
    let v_62 = (r11.xyz * vec3<f32>(0.25f));
    r12 = vec4<f32>(v_62.xyz, r12.w);
    let v_63 = fma(r11.xyz, vec3<f32>(0.25f), r6.xyz);
    r11 = vec4<f32>(v_63.xyz, r11.w);
    r5.w = dot(r9.xyz, r12.xyz);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_64 = r11.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_64.xyz, r5.w);
    r3.w = (r3.w + r5.w);
    let v_65 = -(r10.xxxx);
    r11.x = (v_65.x + (-(r10.yyyy)).x);
    r11.y = ((-(r10.xxxx)).y + r10.y);
    let v_66 = (r11.xy * vec2<f32>(0.54447221755981445312f));
    r10 = vec4<f32>(r10.xy, v_66.xy);
    let v_67 = (r8.xyz * r10.zzz);
    r11 = vec4<f32>(v_67.xyz, r11.w);
    let v_68 = (r7.xyz * r10.www);
    r12 = vec4<f32>(v_68.xyz, r12.w);
    let v_69 = fma(r10.zzz, r8.xyz, r12.xyz);
    r13 = vec4<f32>(v_69.xyz, r13.w);
    let v_70 = (r6.xyz + r13.xyz);
    r14 = vec4<f32>(v_70.xyz, r14.w);
    r5.w = dot(r9.xyz, r13.xyz);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_71 = r14.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_71.xyz, r5.w);
    r3.w = (r3.w + r5.w);
    let v_72 = -(r12.xyzx);
    let v_73 = fma(r10.zzz, r8.xyz, v_72.xyz);
    r12 = vec4<f32>(v_73.xyz, r12.w);
    let v_74 = (r12.xyz * vec3<f32>(0.5f));
    r13 = vec4<f32>(v_74.xyz, r13.w);
    let v_75 = fma(r12.xyz, vec3<f32>(0.5f), r6.xyz);
    r12 = vec4<f32>(v_75.xyz, r12.w);
    r5.w = dot(r9.xyz, r13.xyz);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_76 = r12.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_76.xyz, r5.w);
    r3.w = (r3.w + r5.w);
    let v_77 = -(r11.xyzx);
    let v_78 = fma(r10.www, r7.xyz, v_77.xyz);
    r11 = vec4<f32>(v_78.xyz, r11.w);
    let v_79 = (r11.xyz * vec3<f32>(0.25f));
    r12 = vec4<f32>(v_79.xyz, r12.w);
    let v_80 = fma(r11.xyz, vec3<f32>(0.25f), r6.xyz);
    r11 = vec4<f32>(v_80.xyz, r11.w);
    r5.w = dot(r9.xyz, r12.xyz);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_81 = r11.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_81.xyz, r5.w);
    r3.w = (r3.w + r5.w);
    let v_82 = (r10.xy * vec2<f32>(0.43999999761581420898f, -0.43999999761581420898f));
    r10 = vec4<f32>(v_82.xy, r10.zw);
    let v_83 = (r8.xyz * r10.xxx);
    r11 = vec4<f32>(v_83.xyz, r11.w);
    let v_84 = (r7.xyz * r10.yyy);
    r12 = vec4<f32>(v_84.xyz, r12.w);
    let v_85 = fma(r10.xxx, r8.xyz, r12.xyz);
    r13 = vec4<f32>(v_85.xyz, r13.w);
    let v_86 = (r6.xyz + r13.xyz);
    r14 = vec4<f32>(v_86.xyz, r14.w);
    r5.w = dot(r9.xyz, r13.xyz);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_87 = r14.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_87.xyz, r5.w);
    r3.w = (r3.w + r5.w);
    let v_88 = -(r12.xyzx);
    let v_89 = fma(r10.xxx, r8.xyz, v_88.xyz);
    r8 = vec4<f32>(v_89.xyz, r8.w);
    let v_90 = (r8.xyz * vec3<f32>(0.5f));
    r10 = vec4<f32>(v_90.x, r10.y, v_90.yz);
    let v_91 = fma(r8.xyz, vec3<f32>(0.5f), r6.xyz);
    r8 = vec4<f32>(v_91.xyz, r8.w);
    r5.w = dot(r9.xyz, r10.xzw);
    r5.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_92 = r8.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_92.xyz, r5.w);
    r3.w = (r3.w + r5.w);
    let v_93 = -(r11.xyzx);
    let v_94 = fma(r10.yyy, r7.xyz, v_93.xyz);
    r7 = vec4<f32>(v_94.xyz, r7.w);
    let v_95 = (r7.xyz * vec3<f32>(0.25f));
    r8 = vec4<f32>(v_95.xyz, r8.w);
    let v_96 = fma(r7.xyz, vec3<f32>(0.25f), r6.xyz);
    r6 = vec4<f32>(v_96.xyz, r6.w);
    r5.w = dot(r9.xyz, r8.xyz);
    r2.w = fma(r2.w, cb6_6.tint_symbol_2[17u].w, r5.w);
    let v_97 = r6.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_97.xyz, r2.w);
    r2.w = (r2.w + r3.w);
    r2.w = (r2.w * 0.11111111193895339966f);
  } else {
    let v_98 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_98.xyz, r2.w);
    r6.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_99 = -(r0.zzzz);
    let v_100 = (r6.yxy / v_99.xyz);
    r6 = vec4<f32>(v_100.xyz, r6.w);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r6.w = (r0.z * cb6_6.tint_symbol_2[17u].w);
    r6 = fma(r6, vec4<f32>(-0.5f, 0.5f, -0.5f, 1.0f), vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
    let v_101 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
    r0 = vec4<f32>(v_101.xy, r0.zw);
    let v_102 = (r0.xy * vec2<f32>(0.015625f));
    r0 = vec4<f32>(v_102.xy, r0.zw);
    r7 = textureSample(t1, s1, r0.xyxx.xy);
    let v_103 = fma(r7.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r0 = vec4<f32>(v_103.xy, r0.zw);
    let v_104 = (r0.xy * cb6_6.tint_symbol_2[18u].ww);
    r2 = vec4<f32>(v_104.xy, r2.zw);
    r7 = dpdx(r6.yzwz);
    r8 = dpdy(r6);
    let v_105 = (r7.yw * r8.yw);
    let v_106 = r7;
    r7 = vec4<f32>(v_106.x, v_105.x, v_106.z, v_105.y);
    let v_107 = -(r7.ywyy);
    let v_108 = fma(r7.xz, r8.xz, v_107.xy);
    r9 = vec4<f32>(v_108.xy, r9.zw);
    r0.z = (1.0f / r9.x);
    r2.z = (r7.z * r8.y);
    let v_109 = -(r2.zzzz);
    r9.z = fma(r7.x, r8.w, v_109.z);
    let v_110 = (r0.zz * r9.yz);
    r7 = vec4<f32>(v_110.xy, r7.zw);
    let v_111 = max(r7.xy, vec2<f32>(-1.0f));
    r7 = vec4<f32>(v_111.xy, r7.zw);
    let v_112 = min(r7.xy, vec2<f32>(1.0f));
    r7 = vec4<f32>(v_112.xy, r7.zw);
    let v_113 = fma(r0.xy, cb6_6.tint_symbol_2[18u].ww, r6.yz);
    let v_114 = r0;
    r0 = vec4<f32>(v_114.x, v_113.xy, v_114.w);
    r2.z = dot(r7.xy, r2.xy);
    r2.z = (r2.z + r6.w);
    let v_115 = r0.yzyy;
    r0.y = textureSampleCompareLevel(t24, s14, v_115.xy, r2.z);
    r8 = (r2.yxyx * vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f));
    r9 = fma(r2.yxyx, vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f), r6.yzyz);
    r0.z = dot(r7.xy, r8.xy);
    r0.z = (r0.z + r6.w);
    let v_116 = r9.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_116.xy, r0.z);
    r0.y = (r0.z + r0.y);
    r0.z = dot(r7.xy, r8.zw);
    r0.z = (r0.z + r6.w);
    let v_117 = r9.zwzz;
    r0.z = textureSampleCompareLevel(t24, s14, v_117.xy, r0.z);
    r0.y = (r0.z + r0.y);
    let v_118 = -(r0.xxxx);
    let v_119 = -(r2.yyyy);
    r8.y = fma(v_118.y, cb6_6.tint_symbol_2[18u].w, v_119.y);
    let v_120 = -(r2.yyyy);
    r8.x = fma(r0.x, cb6_6.tint_symbol_2[18u].w, v_120.x);
    r9 = (r8.yxxy * vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f));
    r10 = fma(r8.yxxy, vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f), r6.yzyz);
    r0.x = dot(r7.xy, r9.xy);
    r0.x = (r0.x + r6.w);
    let v_121 = r10.xyxx;
    r0.x = textureSampleCompareLevel(t24, s14, v_121.xy, r0.x);
    r0.x = (r0.x + r0.y);
    r0.y = dot(r7.xy, r9.zw);
    r0.y = (r0.y + r6.w);
    let v_122 = r10.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_122.xy, r0.y);
    r0.x = (r0.y + r0.x);
    let v_123 = (r8.xy * vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f));
    let v_124 = r0;
    r0 = vec4<f32>(v_124.x, v_123.xy, v_124.w);
    let v_125 = fma(r8.xy, vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f), r6.yz);
    r7 = vec4<f32>(r7.xy, v_125.xy);
    r0.y = dot(r7.xy, r0.yz);
    r0.y = (r0.y + r6.w);
    let v_126 = r7.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_126.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r8 = (r2.yxxy * vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f));
    r9 = fma(r2.yxxy, vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f), r6.yzyz);
    r0.y = dot(r7.xy, r8.xy);
    r0.y = (r0.y + r6.w);
    let v_127 = r9.xyxx;
    r0.y = textureSampleCompareLevel(t24, s14, v_127.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r0.y = dot(r7.xy, r8.zw);
    r0.y = (r0.y + r6.w);
    let v_128 = r9.zwzz;
    r0.y = textureSampleCompareLevel(t24, s14, v_128.xy, r0.y);
    r0.x = (r0.y + r0.x);
    let v_129 = (r2.xy * vec2<f32>(-0.10999999940395355225f));
    let v_130 = r0;
    r0 = vec4<f32>(v_130.x, v_129.xy, v_130.w);
    let v_131 = fma(r2.xy, vec2<f32>(-0.10999999940395355225f), r6.yz);
    r2 = vec4<f32>(v_131.xy, r2.zw);
    r0.y = dot(r7.xy, r0.yz);
    r0.y = (r0.y + r6.w);
    let v_132 = r2.xyxx;
    r0.y = textureSampleCompareLevel(t24, s14, v_132.xy, r0.y);
    r0.x = (r0.y + r0.x);
    r2.w = (r0.x * 0.11111111193895339966f);
  }
  let v_133 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r0 = vec4<f32>(v_133.xyz, r0.w);
  let v_134 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_135 = -(r0.xyzx);
  let v_136 = fma(v_134.xyz, cb12_12.tint_symbol_3[2u].zxy, v_135.xyz);
  r0 = vec4<f32>(v_136.xyz, r0.w);
  let v_137 = -(r3.xyzx);
  r0.x = dot(r0.xyz, v_137.xyz);
  let v_138 = -(r3.xyzx);
  r0.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_138.xyz);
  r0.z = dot(v_4.xyz, (-(r3.xyzx)).xyz);
  r2.x = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).x, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r2.x = sqrt(r2.x);
  r2.x = (cb12_12.tint_symbol_3[5u].x / r2.x);
  r2.x = (r2.x * 0.5f);
  r0.z = (r2.x / r0.z);
  let v_139 = clamp(fma(r0.xyxx, r0.zzzz, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_139.xy, r0.zw);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r2.y = ((-(r0.yyyy)).y + 1.0f);
  let v_140 = bitcast<u32>(r2.x);
  let v_141 = r2.y;
  r0.z = select(r0.y, v_141, (v_140 != 0u));
  r6 = textureSampleLevel(t2, s2, r0.xzxx.xy, 0.0f);
  let v_142 = fma(r6.xyz, r6.xyz, vec3<f32>(-1.0f));
  r0 = vec4<f32>(v_142.xyz, r0.w);
  let v_143 = fma(cb12_12.tint_symbol_3[11u].yyy, r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_143.xyz, r0.w);
  let v_144 = (r0.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_144.xyz, r0.w);
  let v_145 = (r0.xyz * cb12_12.tint_symbol_3[3u].www);
  r0 = vec4<f32>(v_145.xyz, r0.w);
  let v_146 = dot(r4.xyw, r3.xyz);
  r2.x = clamp(vec4<f32>(v_146, v_146, v_146, v_146).x, 0.0f, 1.0f);
  let v_147 = dot((-(r5.xyzx)).xyz, r4.xyw);
  r2.y = clamp(vec4<f32>(v_147, v_147, v_147, v_147).y, 0.0f, 1.0f);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r2.z = (r2.y * r2.y);
  r2.z = (r2.z * r2.z);
  r2.y = (r2.y * r2.z);
  r2.z = ((-(r4.zzzz)).z + 1.0f);
  r2.y = fma(r4.z, r2.y, r2.z);
  r1.w = fma((-(r1.wwww)).w, r2.y, 1.0f);
  r1.w = (r1.w * r2.x);
  r2.x = (r2.w + -1.0f);
  r2.x = fma(cb12_12.tint_symbol_3[8u].y, r2.x, 1.0f);
  let v_148 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_148.xyz, r1.w);
  let v_149 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_149.xyz, r0.w);
  let v_150 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_150.xyz, r0.w);
  let v_151 = (r2.xxx * r0.xyz);
  r0 = vec4<f32>(v_151.xyz, r0.w);
  let v_152 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_152.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_5(v_153 : bool) {
  if (v_153) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
