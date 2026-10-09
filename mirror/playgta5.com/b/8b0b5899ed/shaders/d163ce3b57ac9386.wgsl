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
  r1.w = dot(r1, cb12_12.tint_symbol_3[6u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r0.w = (r0.w * r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_5((bitcast<u32>(r1.w) != 0u));
  let v_6 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r4 = vec4<f32>(v_6.xy, r4.zw);
  let v_7 = r4.xy;
  let v_8 = max(v_7, vec2<f32>(-2147483648.0f));
  let v_9 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_8), vec2<i32>(2147483647i), (v_8 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_7 == v_7))));
  r5 = vec4<f32>(v_9.xy, r5.zw);
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r5 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)));
  r1.w = bitcast<f32>((bitcast<u32>(r5.y) & 8u));
  r1.w = f32(bitcast<u32>(r1.w));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 8.0f)));
  r5 = textureSample(t7, s7, r0.xyxx.xy);
  let v_10 = (r5.xyz * r5.xyz);
  r5 = vec4<f32>(v_10.xyz, r5.w);
  r6 = textureSample(t9, s9, r0.xyxx.xy);
  r2.w = (r6.x * r6.x);
  r7 = textureSample(t8, s8, r0.xyxx.xy);
  let v_11 = (r7.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r6 = vec4<f32>(v_11.xy, r6.z, v_11.z);
  let v_12 = fract(r6.xyw);
  r6 = vec4<f32>(v_12.xy, r6.z, v_12.z);
  let v_13 = fma((-(r6.ywyy)).xy, vec2<f32>(0.125f), r6.xy);
  r6 = vec4<f32>(v_13.xy, r6.zw);
  let v_14 = fma(r7.xyz, vec3<f32>(256.0f), r6.xyw);
  r6 = vec4<f32>(v_14.xy, r6.z, v_14.z);
  let v_15 = (r6.xyw + vec3<f32>(-128.0f));
  r6 = vec4<f32>(v_15.xy, r6.z, v_15.z);
  r0.x = dot(r6.xyw, r6.xyw);
  r0.x = inverseSqrt(r0.x);
  let v_16 = (r0.xxx * r6.xyw);
  r6 = vec4<f32>(v_16.xy, r6.z, v_16.z);
  r0.x = min(r2.w, 1.0f);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_17 = (r0.yyy * r2.xyz);
  r7 = vec4<f32>(v_17.xyz, r7.w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    let v_18 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r8 = vec4<f32>(v_18.xyz, r8.w);
    r9.x = dot(r8.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r9.y = dot(r8.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r9.z = dot(r8.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_19 = -(r9.xyzx);
    r0.y = dot(v_19.xyz, (-(r9.xyzx)).xyz);
    r0.y = sqrt(r0.y);
    let v_20 = ((-(r9.xyzx)).xyz / r0.yyy);
    r8 = vec4<f32>(v_20.xyz, r8.w);
    r2.w = (r0.y * cb6_6.tint_symbol_2[17u].w);
    let v_21 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r8.xyz)));
    r9 = vec4<f32>(v_21.xyz, r9.w);
    let v_22 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r8.xyz < vec3<f32>())));
    r10 = vec4<f32>(v_22.xyz, r10.w);
    let v_23 = -(bitcast<vec4<i32>>(r9.xyzx));
    let v_24 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r10.xyz) + v_23.xyz));
    r9 = vec4<f32>(v_24.xyz, r9.w);
    let v_25 = vec3<f32>(bitcast<vec3<i32>>(r9.xyz));
    r9 = vec4<f32>(v_25.xyz, r9.w);
    r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r8.zzyy) < abs(r8.xyxz))));
    let v_26 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r10.yw) | bitcast<vec2<u32>>(r10.xz)));
    r4 = vec4<f32>(r4.xy, v_26.xy);
    let v_27 = (-(r9.xyzx)).xyz;
    r9 = vec4<f32>(v_27.xyz, r9.w);
    r9.w = 0.0f;
    let v_28 = bitcast<vec3<u32>>(r4.www);
    let v_29 = r9.wxw;
    let v_30 = select(r9.wwy, v_29, (v_28 != vec3<u32>()));
    r10 = vec4<f32>(v_30.xyz, r10.w);
    let v_31 = bitcast<vec3<u32>>(r4.zzz);
    let v_32 = r10.xyz;
    let v_33 = select(r9.wwz, v_32, (v_31 != vec3<u32>()));
    r9 = vec4<f32>(v_33.xyz, r9.w);
    let v_34 = (r8.zxy * r9.xyz);
    r10 = vec4<f32>(v_34.xyz, r10.w);
    let v_35 = -(r10.xyzx);
    let v_36 = fma(r8.yzx, r9.yzx, v_35.xyz);
    r9 = vec4<f32>(v_36.xyz, r9.w);
    r3.w = dot(r9.xyz, r9.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_37 = (r3.www * r9.xyz);
    r9 = vec4<f32>(v_37.xyz, r9.w);
    let v_38 = (r8.yzx * r9.zxy);
    r10 = vec4<f32>(v_38.xyz, r10.w);
    let v_39 = -(r10.xyzx);
    let v_40 = fma(r9.yzx, r8.zxy, v_39.xyz);
    r10 = vec4<f32>(v_40.xyz, r10.w);
    r11 = dpdx(r8.xyzx);
    r3.w = dpdx(r2.w);
    r12 = dpdy(r8.xyzx);
    r2.w = dpdy(r2.w);
    r13.z = dot(r11.yzw, r11.yzw);
    r4.z = dot(r11.yzw, r12.yzw);
    r13.x = dot(r12.yzw, r12.yzw);
    r4.w = (r4.z * r4.z);
    let v_41 = -(r4.wwww);
    r4.w = fma(r13.z, r13.x, v_41.w);
    r4.w = (1.0f / r4.w);
    r13.y = (-(r4.zzzz)).y;
    r14 = (r4.wwww * r13.xxxy);
    r13 = (r13.yyyz * r4.wwww);
    r15 = (r12 * r13);
    r15 = fma(r11, r14, r15);
    let v_42 = (r12.yz * r13.ww);
    r4 = vec4<f32>(r4.xy, v_42.xy);
    let v_43 = fma(r11.yz, r14.ww, r4.zw);
    r4 = vec4<f32>(r4.xy, v_43.xy);
    let v_44 = (r3.www * r15.xyz);
    r11 = vec4<f32>(v_44.xyz, r11.w);
    r12.x = fma(r2.w, r15.w, r11.x);
    let v_45 = fma(r2.ww, r4.zw, r11.yz);
    let v_46 = r12;
    r12 = vec4<f32>(v_46.x, v_45.xy, v_46.w);
    let v_47 = max(r12.xyz, vec3<f32>(-1.0f));
    r11 = vec4<f32>(v_47.xyz, r11.w);
    let v_48 = min(r11.xyz, vec3<f32>(1.0f));
    r11 = vec4<f32>(v_48.xyz, r11.w);
    let v_49 = (r4.xy * vec2<f32>(0.015625f));
    r4 = vec4<f32>(r4.xy, v_49.xy);
    r12 = textureSample(t1, s1, r4.zwzz.xy);
    let v_50 = fma(r12.yx, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r4 = vec4<f32>(r4.xy, v_50.xy);
    r2.w = (cb6_6.tint_symbol_2[18u].w * 4.0f);
    let v_51 = (r2.www * r10.xyz);
    r10 = vec4<f32>(v_51.xyz, r10.w);
    let v_52 = (r2.www * r9.xyz);
    r9 = vec4<f32>(v_52.xyz, r9.w);
    let v_53 = (r4.www * r10.xyz);
    r12 = vec4<f32>(v_53.xyz, r12.w);
    let v_54 = (r4.zzz * r9.xyz);
    r13 = vec4<f32>(v_54.xyz, r13.w);
    let v_55 = fma(r4.www, r10.xyz, r13.xyz);
    r14 = vec4<f32>(v_55.xyz, r14.w);
    let v_56 = (r8.xyz + r14.xyz);
    r15 = vec4<f32>(v_56.xyz, r15.w);
    r2.w = dot(r11.xyz, r14.xyz);
    r2.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r2.w);
    let v_57 = r15.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_57.xyz, r2.w);
    let v_58 = -(r13.xyzx);
    let v_59 = fma(r4.www, r10.xyz, v_58.xyz);
    r13 = vec4<f32>(v_59.xyz, r13.w);
    let v_60 = (r13.xyz * vec3<f32>(0.5f));
    r14 = vec4<f32>(v_60.xyz, r14.w);
    let v_61 = fma(r13.xyz, vec3<f32>(0.5f), r8.xyz);
    r13 = vec4<f32>(v_61.xyz, r13.w);
    r3.w = dot(r11.xyz, r14.xyz);
    r3.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_62 = r13.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_62.xyz, r3.w);
    r2.w = (r2.w + r3.w);
    let v_63 = -(r12.xyzx);
    let v_64 = fma(r4.zzz, r9.xyz, v_63.xyz);
    r12 = vec4<f32>(v_64.xyz, r12.w);
    let v_65 = (r12.xyz * vec3<f32>(0.25f));
    r13 = vec4<f32>(v_65.xyz, r13.w);
    let v_66 = fma(r12.xyz, vec3<f32>(0.25f), r8.xyz);
    r12 = vec4<f32>(v_66.xyz, r12.w);
    r3.w = dot(r11.xyz, r13.xyz);
    r3.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_67 = r12.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_67.xyz, r3.w);
    r2.w = (r2.w + r3.w);
    let v_68 = -(r4.zzzz);
    r12.x = (v_68.x + (-(r4.wwww)).x);
    r12.y = ((-(r4.zzzz)).y + r4.w);
    let v_69 = (r12.xy * vec2<f32>(0.54447221755981445312f));
    r12 = vec4<f32>(v_69.xy, r12.zw);
    let v_70 = (r10.xyz * r12.xxx);
    r13 = vec4<f32>(v_70.xyz, r13.w);
    let v_71 = (r9.xyz * r12.yyy);
    r14 = vec4<f32>(v_71.xyz, r14.w);
    let v_72 = fma(r12.xxx, r10.xyz, r14.xyz);
    r15 = vec4<f32>(v_72.xyz, r15.w);
    let v_73 = (r8.xyz + r15.xyz);
    r16 = vec4<f32>(v_73.xyz, r16.w);
    r3.w = dot(r11.xyz, r15.xyz);
    r3.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_74 = r16.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_74.xyz, r3.w);
    r2.w = (r2.w + r3.w);
    let v_75 = -(r14.xxyz);
    let v_76 = fma(r12.xxx, r10.xyz, v_75.xzw);
    r12 = vec4<f32>(v_76.x, r12.y, v_76.yz);
    let v_77 = (r12.xzw * vec3<f32>(0.5f));
    r14 = vec4<f32>(v_77.xyz, r14.w);
    let v_78 = fma(r12.xzw, vec3<f32>(0.5f), r8.xyz);
    r12 = vec4<f32>(v_78.x, r12.y, v_78.yz);
    r3.w = dot(r11.xyz, r14.xyz);
    r3.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_79 = r12.xzwx;
    r3.w = textureSampleCompareLevel(t14, s14, v_79.xyz, r3.w);
    r2.w = (r2.w + r3.w);
    let v_80 = -(r13.xyzx);
    let v_81 = fma(r12.yyy, r9.xyz, v_80.xyz);
    r12 = vec4<f32>(v_81.xyz, r12.w);
    let v_82 = (r12.xyz * vec3<f32>(0.25f));
    r13 = vec4<f32>(v_82.xyz, r13.w);
    let v_83 = fma(r12.xyz, vec3<f32>(0.25f), r8.xyz);
    r12 = vec4<f32>(v_83.xyz, r12.w);
    r3.w = dot(r11.xyz, r13.xyz);
    r3.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_84 = r12.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_84.xyz, r3.w);
    r2.w = (r2.w + r3.w);
    let v_85 = (r4.zw * vec2<f32>(0.43999999761581420898f, -0.43999999761581420898f));
    r4 = vec4<f32>(r4.xy, v_85.xy);
    let v_86 = (r10.xyz * r4.zzz);
    r12 = vec4<f32>(v_86.xyz, r12.w);
    let v_87 = (r9.xyz * r4.www);
    r13 = vec4<f32>(v_87.xyz, r13.w);
    let v_88 = fma(r4.zzz, r10.xyz, r13.xyz);
    r14 = vec4<f32>(v_88.xyz, r14.w);
    let v_89 = (r8.xyz + r14.xyz);
    r15 = vec4<f32>(v_89.xyz, r15.w);
    r3.w = dot(r11.xyz, r14.xyz);
    r3.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_90 = r15.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_90.xyz, r3.w);
    r2.w = (r2.w + r3.w);
    let v_91 = -(r13.xyzx);
    let v_92 = fma(r4.zzz, r10.xyz, v_91.xyz);
    r10 = vec4<f32>(v_92.xyz, r10.w);
    let v_93 = (r10.xyz * vec3<f32>(0.5f));
    r13 = vec4<f32>(v_93.xyz, r13.w);
    let v_94 = fma(r10.xyz, vec3<f32>(0.5f), r8.xyz);
    r10 = vec4<f32>(v_94.xyz, r10.w);
    r3.w = dot(r11.xyz, r13.xyz);
    r3.w = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_95 = r10.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_95.xyz, r3.w);
    r2.w = (r2.w + r3.w);
    let v_96 = -(r12.xyzx);
    let v_97 = fma(r4.www, r9.xyz, v_96.xyz);
    r9 = vec4<f32>(v_97.xyz, r9.w);
    let v_98 = (r9.xyz * vec3<f32>(0.25f));
    r10 = vec4<f32>(v_98.xyz, r10.w);
    let v_99 = fma(r9.xyz, vec3<f32>(0.25f), r8.xyz);
    r8 = vec4<f32>(v_99.xyz, r8.w);
    r3.w = dot(r11.xyz, r10.xyz);
    r0.y = fma(r0.y, cb6_6.tint_symbol_2[17u].w, r3.w);
    let v_100 = r8.xyzx;
    r0.y = textureSampleCompareLevel(t14, s14, v_100.xyz, r0.y);
    r0.y = (r0.y + r2.w);
    r0.y = (r0.y * 0.11111111193895339966f);
  } else {
    let v_101 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_101.xyz, r2.w);
    r8.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r8.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_102 = -(r0.zzzz);
    let v_103 = (r8.yxy / v_102.xyz);
    r8 = vec4<f32>(v_103.xyz, r8.w);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r8.w = (r0.z * cb6_6.tint_symbol_2[17u].w);
    r2 = fma(r8, vec4<f32>(-0.5f, 0.5f, -0.5f, 1.0f), vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f));
    let v_104 = (r4.xy * vec2<f32>(0.015625f));
    r4 = vec4<f32>(v_104.xy, r4.zw);
    r4 = textureSample(t1, s1, r4.xyxx.xy);
    let v_105 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r4 = vec4<f32>(v_105.xy, r4.zw);
    let v_106 = (r4.xy * cb6_6.tint_symbol_2[18u].ww);
    r4 = vec4<f32>(r4.xy, v_106.xy);
    r8 = dpdx(r2.yzwz);
    r9 = dpdy(r2);
    let v_107 = (r8.yw * r9.yw);
    let v_108 = r8;
    r8 = vec4<f32>(v_108.x, v_107.x, v_108.z, v_107.y);
    let v_109 = -(r8.ywyy);
    let v_110 = fma(r8.xz, r9.xz, v_109.xy);
    r10 = vec4<f32>(v_110.xy, r10.zw);
    r0.z = (1.0f / r10.x);
    r2.x = (r8.z * r9.y);
    let v_111 = -(r2.xxxx);
    r10.z = fma(r8.x, r9.w, v_111.z);
    let v_112 = (r0.zz * r10.yz);
    r8 = vec4<f32>(v_112.xy, r8.zw);
    let v_113 = max(r8.xy, vec2<f32>(-1.0f));
    r8 = vec4<f32>(v_113.xy, r8.zw);
    let v_114 = min(r8.xy, vec2<f32>(1.0f));
    r8 = vec4<f32>(v_114.xy, r8.zw);
    let v_115 = fma(r4.xy, cb6_6.tint_symbol_2[18u].ww, r2.yz);
    r8 = vec4<f32>(r8.xy, v_115.xy);
    r0.z = dot(r8.xy, r4.zw);
    r0.z = (r0.z + r2.w);
    let v_116 = r8.zwzz;
    r0.z = textureSampleCompareLevel(t24, s14, v_116.xy, r0.z);
    r9 = (r4.wzwz * vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f));
    r10 = fma(r4.wzwz, vec4<f32>(-0.5f, 0.5f, 0.25f, -0.25f), r2.yzyz);
    r2.x = dot(r8.xy, r9.xy);
    r2.x = (r2.x + r2.w);
    let v_117 = r10.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_117.xy, r2.x);
    r0.z = (r0.z + r2.x);
    r2.x = dot(r8.xy, r9.zw);
    r2.x = (r2.x + r2.w);
    let v_118 = r10.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_118.xy, r2.x);
    r0.z = (r0.z + r2.x);
    let v_119 = -(r4.xxxx);
    let v_120 = -(r4.wwww);
    r9.y = fma(v_119.y, cb6_6.tint_symbol_2[18u].w, v_120.y);
    let v_121 = -(r4.wwww);
    r9.x = fma(r4.x, cb6_6.tint_symbol_2[18u].w, v_121.x);
    r10 = (r9.yxxy * vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f));
    r11 = fma(r9.yxxy, vec4<f32>(0.54447221755981445312f, 0.54447221755981445312f, -0.27223610877990722656f, 0.27223610877990722656f), r2.yzyz);
    r2.x = dot(r8.xy, r10.xy);
    r2.x = (r2.x + r2.w);
    let v_122 = r11.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_122.xy, r2.x);
    r0.z = (r0.z + r2.x);
    r2.x = dot(r8.xy, r10.zw);
    r2.x = (r2.x + r2.w);
    let v_123 = r11.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_123.xy, r2.x);
    r0.z = (r0.z + r2.x);
    let v_124 = (r9.xy * vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f));
    r4 = vec4<f32>(v_124.xy, r4.zw);
    let v_125 = fma(r9.xy, vec2<f32>(0.13611805438995361328f, -0.13611805438995361328f), r2.yz);
    r8 = vec4<f32>(r8.xy, v_125.xy);
    r2.x = dot(r8.xy, r4.xy);
    r2.x = (r2.x + r2.w);
    let v_126 = r8.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_126.xy, r2.x);
    r0.z = (r0.z + r2.x);
    r9 = (r4.wzzw * vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f));
    r10 = fma(r4.wzzw, vec4<f32>(0.43999999761581420898f, -0.43999999761581420898f, 0.21999999880790710449f, 0.21999999880790710449f), r2.yzyz);
    r2.x = dot(r8.xy, r9.xy);
    r2.x = (r2.x + r2.w);
    let v_127 = r10.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_127.xy, r2.x);
    r0.z = (r0.z + r2.x);
    r2.x = dot(r8.xy, r9.zw);
    r2.x = (r2.x + r2.w);
    let v_128 = r10.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_128.xy, r2.x);
    r0.z = (r0.z + r2.x);
    let v_129 = (r4.zw * vec2<f32>(-0.10999999940395355225f));
    r4 = vec4<f32>(v_129.xy, r4.zw);
    let v_130 = fma(r4.zw, vec2<f32>(-0.10999999940395355225f), r2.yz);
    r2 = vec4<f32>(v_130.xy, r2.zw);
    r2.z = dot(r8.xy, r4.xy);
    r2.z = (r2.z + r2.w);
    let v_131 = r2.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_131.xy, r2.z);
    r0.z = (r0.z + r2.x);
    r0.y = (r0.z * 0.11111111193895339966f);
  }
  r0.z = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  r0.z = (r0.z * r0.w);
  let v_132 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r2 = vec4<f32>(v_132.xyz, r2.w);
  let v_133 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_134 = -(r2.xyzx);
  let v_135 = fma(v_133.xyz, cb12_12.tint_symbol_3[2u].zxy, v_134.xyz);
  r2 = vec4<f32>(v_135.xyz, r2.w);
  let v_136 = -(r3.xyzx);
  r2.x = dot(r2.xyz, v_136.xyz);
  let v_137 = -(r3.xyzx);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_137.xyz);
  r0.w = dot(v_4.xyz, (-(r3.xyzx)).xyz);
  r1.w = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).w, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r1.w = sqrt(r1.w);
  r1.w = (cb12_12.tint_symbol_3[5u].x / r1.w);
  r1.w = (r1.w * 0.5f);
  r0.w = (r1.w / r0.w);
  let v_138 = clamp(fma(r2.xyxx, r0.wwww, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_138.xy, r2.zw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r1.w = ((-(r2.yyyy)).w + 1.0f);
  let v_139 = bitcast<u32>(r0.w);
  let v_140 = r1.w;
  r2.z = select(r2.y, v_140, (v_139 != 0u));
  r2 = textureSampleLevel(t2, s2, r2.xzxx.xy, 0.0f);
  let v_141 = fma(r2.xyz, r2.xyz, vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_141.xyz, r2.w);
  let v_142 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.xyz, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_142.xyz, r2.w);
  let v_143 = (r2.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_143.xyz, r2.w);
  let v_144 = (r2.xyz * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(v_144.xyz, r2.w);
  let v_145 = dot(r6.xyw, r3.xyz);
  r0.w = clamp(vec4<f32>(v_145, v_145, v_145, v_145).w, 0.0f, 1.0f);
  let v_146 = dot((-(r7.xyzx)).xyz, r6.xyw);
  r1.w = clamp(vec4<f32>(v_146, v_146, v_146, v_146).w, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r2.w = (r1.w * r1.w);
  r2.w = (r2.w * r2.w);
  r1.w = (r1.w * r2.w);
  r2.w = ((-(r6.zzzz)).w + 1.0f);
  r1.w = fma(r6.z, r1.w, r2.w);
  r0.x = fma((-(r0.xxxx)).x, r1.w, 1.0f);
  r0.x = (r0.x * r0.w);
  r0.w = (r1.z + cb12_12.tint_symbol_3[7u].z);
  r0.w = ((-(r0.wwww)).w / r3.z);
  r3 = fma(r3.xyyx, r0.wwww, r1.xyyx);
  r4 = (cb12_12.tint_symbol_3[7u].wwww * vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f));
  r3 = fma(r3, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r4);
  r4 = textureSample(t3, s3, r3.xyxx.xy);
  r3 = textureSample(t3, s3, r3.zwzz.xy);
  let v_147 = (r3.xyz * r4.xyz);
  r1 = vec4<f32>(v_147.xy, r1.z, v_147.z);
  let v_148 = (r1.xyw * vec3<f32>(10.0f));
  r1 = vec4<f32>(v_148.xy, r1.z, v_148.z);
  r1.z = ((-(r1.zzzz)).z + cb12_12.tint_symbol_3[7u].z);
  r1.z = clamp(((r1.zzzz + r1.zzzz)).z, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 25.0f);
  r0.w = clamp(((r0.wwww * vec4<f32>(0.03999999910593032837f))).w, 0.0f, 1.0f);
  let v_149 = (r0.www * r1.xyw);
  r1 = vec4<f32>(v_149.xy, r1.z, v_149.z);
  let v_150 = -(r0.xxxx);
  let v_151 = fma(r0.xxx, r1.xyw, v_150.xyw);
  r1 = vec4<f32>(v_151.xy, r1.z, v_151.z);
  let v_152 = fma(r1.zzz, r1.xyw, r0.xxx);
  r1 = vec4<f32>(v_152.xyz, r1.w);
  r0.x = (r0.y + -1.0f);
  r0.x = fma(cb12_12.tint_symbol_3[8u].y, r0.x, 1.0f);
  let v_153 = (r1.xyz * r5.xyz);
  r1 = vec4<f32>(v_153.xyz, r1.w);
  let v_154 = (r2.xyz * r1.xyz);
  r1 = vec4<f32>(v_154.xyz, r1.w);
  let v_155 = (r0.zzz * r1.xyz);
  r0 = vec4<f32>(r0.x, v_155.xyz);
  let v_156 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_156.xyz, r0.w);
  let v_157 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_157.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_5(v_158 : bool) {
  if (v_158) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
