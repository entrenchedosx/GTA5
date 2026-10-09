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

var<private> r18 : vec4<f32>;

var<private> r19 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> sample_pos : array<vec2<f32>, 31u> = array<vec2<f32>, 31u>(vec2<f32>(), vec2<f32>(0.25f), vec2<f32>(-0.25f), vec2<f32>(-0.125f, -0.375f), vec2<f32>(0.375f, -0.125f), vec2<f32>(-0.375f, 0.125f), vec2<f32>(0.125f, 0.375f), vec2<f32>(0.0625f, -0.1875f), vec2<f32>(-0.0625f, 0.1875f), vec2<f32>(0.3125f, 0.0625f), vec2<f32>(-0.1875f, -0.3125f), vec2<f32>(-0.3125f, 0.3125f), vec2<f32>(-0.4375f, -0.0625f), vec2<f32>(0.1875f, 0.4375f), vec2<f32>(0.4375f, -0.4375f), vec2<f32>(0.0625f), vec2<f32>(-0.0625f, -0.1875f), vec2<f32>(-0.1875f, 0.125f), vec2<f32>(0.25f, -0.0625f), vec2<f32>(-0.3125f, -0.125f), vec2<f32>(0.125f, 0.3125f), vec2<f32>(0.3125f, 0.1875f), vec2<f32>(0.1875f, -0.3125f), vec2<f32>(-0.125f, 0.375f), vec2<f32>(0.0f, -0.4375f), vec2<f32>(-0.25f, -0.375f), vec2<f32>(-0.375f, 0.25f), vec2<f32>(-0.5f, 0.0f), vec2<f32>(0.4375f, -0.25f), vec2<f32>(0.375f, 0.4375f), vec2<f32>(-0.4375f, -0.5f));

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
  let v_1 = textureNumSamples(t3);
  let v_2 = sample_pos[select(0u, ((v_1 + 0u) - 1u), ((0u < v_1) & true))];
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = dpdx(v3.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = dpdy(v3.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = (r0.yyy * r2.xyz);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = fma(r0.xxx, r1.xyz, r0.yzw);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (r0.xyz + v3.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = fma(r1.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_3[4u].xy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r0.w = (r1.x * cb11_11.tint_symbol_3[0u].w);
  r1.x = (r1.y * cb11_11.tint_symbol_3[1u].w);
  let v_10 = (r1.xxx * cb11_11.tint_symbol_3[1u].xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = fma(r0.www, cb11_11.tint_symbol_3[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = -(cb11_11.tint_symbol_3[2u].xyzx);
  let v_13 = (r1.xyz + v_12.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r2 = vec4<f32>(v_14.xy, r2.zw);
  let v_15 = r2.xy;
  let v_16 = max(v_15, vec2<f32>(-2147483648.0f));
  let v_17 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_16), vec2<i32>(2147483647i), (v_16 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_15 == v_15))));
  r3 = vec4<f32>(v_17.xy, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r0.w = textureLoad(t3, bitcast<vec2<i32>>(r3.xy), 0i).x;
  r1.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.w);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_18 = fma(r1.xyz, r0.www, cb11_11.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = (r2.xy * vec2<f32>(0.015625f));
  r2 = vec4<f32>(v_20.xy, r2.zw);
  let v_21 = textureSample(t14, s14, r2.xyxx.xy).xyz;
  r2 = vec4<f32>(v_21.xyz, r2.w);
  r1.w = (r2.z * cb12_12.tint_symbol_2[0u].w);
  let v_22 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_22.xy, r2.zw);
  let v_23 = fma(r0.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  let v_24 = &(x0[0u]);
  let v_25 = r3;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  let v_26 = fma(r0.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  let v_27 = &(x0[1u]);
  let v_28 = r4;
  *(v_27) = vec4<f32>(v_28.xyz, (*(v_27)).w);
  let v_29 = fma(r0.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = &(x0[2u]);
  let v_31 = r0;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = &(x0[3u]);
  let v_33 = r0;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(5.59999990463256835938f, 1.39999997615814208984f));
  r3 = vec4<f32>(r3.xy, v_34.xy);
  r0.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_35 = -(r1.wwww);
  r0.z = fma(r0.z, 0.5f, v_35.z);
  let v_36 = abs(r0.yyyy);
  let v_37 = max(v_36.xy, abs(r0.xxxx).xy);
  r0 = vec4<f32>(v_37.xy, r0.zw);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < r0.z)));
  let v_38 = (bitcast<u32>(r0.x) != 0u);
  let v_39 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r0.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_39, v_38);
  let v_40 = abs(r4.yyyy);
  r1.w = max(v_40.w, abs(r4.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.z)));
  let v_41 = bitcast<u32>(r1.w);
  r0.x = select(r0.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_41 != 0u));
  let v_42 = abs(r3.yyyy);
  r1.w = max(v_42.w, abs(r3.xxxx).w);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.z)));
  let v_43 = bitcast<u32>(r0.z);
  r0.x = select(r0.x, 0.0f, (v_43 != 0u));
  let v_44 = x0[bitcast<i32>(r0.x)];
  r4 = vec4<f32>(v_44.xyz, r4.w);
  r0.x = f32(bitcast<i32>(r0.x));
  r0.z = (r0.x + 0.5f);
  r0.z = (r0.z * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.xxxx)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r0.x = dot(r5, cb6_6.tint_symbol_1[12u]);
  r1.w = dot(r5, cb6_6.tint_symbol_1[13u]);
  r5.x = (r4.x + 0.5f);
  r5.y = fma(r4.y, 0.25f, r0.z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = ((-(r0.xxxx)).x + r4.z);
  let v_45 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_45.xy, r6.z, v_45.z);
  r6.z = dpdx(r0.x);
  let v_46 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_46.xyz, r7.w);
  r7.w = dpdy(r0.x);
  let v_47 = (r6.yw * r7.yw);
  r3 = vec4<f32>(v_47.xy, r3.zw);
  let v_48 = -(r3.xyxx);
  let v_49 = fma(r6.xz, r7.xz, v_48.xy);
  r8 = vec4<f32>(v_49.xy, r8.zw);
  r3.x = (1.0f / r8.x);
  r3.y = (r6.z * r7.y);
  let v_50 = -(r3.yyyy);
  r8.z = fma(r6.x, r7.w, v_50.z);
  let v_51 = (r3.xx * r8.yz);
  r3 = vec4<f32>(v_51.xy, r3.zw);
  let v_52 = max(r3.xy, vec2<f32>());
  r3 = vec4<f32>(v_52.xy, r3.zw);
  let v_53 = min(r3.xy, vec2<f32>(0.5f));
  r3 = vec4<f32>(v_53.xy, r3.zw);
  r0.x = fma((-(r1.wwww)).x, r3.x, r0.x);
  r0.x = fma((-(r1.wwww)).x, r3.y, r0.x);
  let v_54 = bitcast<u32>(r0.z);
  let v_55 = r0.x;
  r5.z = select(r4.z, v_55, (v_54 != 0u));
  r4 = (r2.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_56 = (r2.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r6 = vec4<f32>(v_56.xy, r6.zw);
  let v_57 = (r2.xy * r3.zw);
  r7 = vec4<f32>(v_57.xy, r7.zw);
  r7.z = 0.0f;
  let v_58 = (r5.xyz + r7.xyz);
  r7 = vec4<f32>(v_58.xyz, r7.w);
  let v_59 = (-(r2.yyyx)).zw;
  r2 = vec4<f32>(r2.xy, v_59.xy);
  r8 = (r2.zxyw * r3.zwzw);
  let v_60 = (r8.xy * vec2<f32>(0.5f));
  r9 = vec4<f32>(v_60.xy, r9.zw);
  r9.z = 0.0f;
  let v_61 = (r5.xyz + r9.xyz);
  r9 = vec4<f32>(v_61.xyz, r9.w);
  let v_62 = ((-(r2.xxyx)).xz * r3.zw);
  let v_63 = r0;
  r0 = vec4<f32>(v_62.x, v_63.y, v_62.y, v_63.w);
  let v_64 = (r0.xz * vec2<f32>(0.75f));
  r2 = vec4<f32>(v_64.xy, r2.zw);
  r2.z = 0.0f;
  let v_65 = (r2.xyz + r5.xyz);
  r2 = vec4<f32>(v_65.xyz, r2.w);
  let v_66 = (r8.zw * vec2<f32>(0.25f));
  r8 = vec4<f32>(v_66.xy, r8.zw);
  r8.z = 0.0f;
  let v_67 = (r5.xyz + r8.xyz);
  r8 = vec4<f32>(v_67.xyz, r8.w);
  r10 = (r3.zwzw * r4.zwxy);
  let v_68 = r10;
  r11 = vec4<f32>(v_68.zw, r11.zw);
  r11.z = 0.0f;
  let v_69 = (r5.xyz + r11.xyz);
  r11 = vec4<f32>(v_69.xyz, r11.w);
  r12 = (r4.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r12 = (r3.zwzw * r12);
  let v_70 = (r12.xy * vec2<f32>(0.5f));
  r13 = vec4<f32>(v_70.xy, r13.zw);
  r13.z = 0.0f;
  let v_71 = (r5.xyz + r13.xyz);
  r13 = vec4<f32>(v_71.xyz, r13.w);
  let v_72 = -(r4);
  r14 = (r3.zwzw * v_72);
  r14 = (r14.zwxy * vec4<f32>(0.75f));
  let v_73 = r14;
  r15 = vec4<f32>(v_73.zw, r15.zw);
  r15.z = 0.0f;
  let v_74 = (r5.xyz + r15.xyz);
  r15 = vec4<f32>(v_74.xyz, r15.w);
  let v_75 = (r12.zw * vec2<f32>(0.25f));
  r12 = vec4<f32>(v_75.xy, r12.zw);
  r12.z = 0.0f;
  let v_76 = (r5.xyz + r12.xyz);
  r12 = vec4<f32>(v_76.xyz, r12.w);
  r10.z = 0.0f;
  let v_77 = (r5.xyz + r10.xyz);
  r10 = vec4<f32>(v_77.xyz, r10.w);
  r4 = (r4.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r4 = (r3.zwzw * r4);
  let v_78 = (r4.xy * vec2<f32>(0.5f));
  r16 = vec4<f32>(v_78.xy, r16.zw);
  r16.z = 0.0f;
  let v_79 = (r5.xyz + r16.xyz);
  r16 = vec4<f32>(v_79.xyz, r16.w);
  r14.z = 0.0f;
  let v_80 = (r5.xyz + r14.xyz);
  r14 = vec4<f32>(v_80.xyz, r14.w);
  let v_81 = (r4.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_81.xy, r4.zw);
  r4.z = 0.0f;
  let v_82 = (r4.xyz + r5.xyz);
  r4 = vec4<f32>(v_82.xyz, r4.w);
  let v_83 = (r3.zw * r6.xy);
  r17 = vec4<f32>(v_83.xy, r17.zw);
  r17.z = 0.0f;
  let v_84 = (r5.xyz + r17.xyz);
  r17 = vec4<f32>(v_84.xyz, r17.w);
  let v_85 = (-(r6.yyyx)).zw;
  r6 = vec4<f32>(r6.xy, v_85.xy);
  r18 = (r3.zwzw * r6.zxyw);
  let v_86 = (r18.xy * vec2<f32>(0.5f));
  r19 = vec4<f32>(v_86.xy, r19.zw);
  r19.z = 0.0f;
  let v_87 = (r5.xyz + r19.xyz);
  r19 = vec4<f32>(v_87.xyz, r19.w);
  let v_88 = -(r6.xxyx);
  let v_89 = (r3.zw * v_88.xz);
  let v_90 = r0;
  r0 = vec4<f32>(v_89.x, v_90.y, v_89.y, v_90.w);
  let v_91 = (r0.xz * vec2<f32>(0.75f));
  r3 = vec4<f32>(v_91.xy, r3.zw);
  r3.z = 0.0f;
  let v_92 = (r3.xyz + r5.xyz);
  r3 = vec4<f32>(v_92.xyz, r3.w);
  let v_93 = (r18.zw * vec2<f32>(0.25f));
  r6 = vec4<f32>(v_93.xy, r6.zw);
  r6.z = 0.0f;
  let v_94 = (r5.xyz + r6.xyz);
  r6 = vec4<f32>(v_94.xyz, r6.w);
  let v_95 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_95.xy, r7.z);
  let v_96 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_96.xy, r9.z);
  let v_97 = r2.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_97.xy, r2.z);
  let v_98 = r8.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_98.xy, r8.z);
  let v_99 = r11.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_99.xy, r11.z);
  let v_100 = r13.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_100.xy, r13.z);
  let v_101 = r15.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_101.xy, r15.z);
  let v_102 = r12.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_102.xy, r12.z);
  let v_103 = r10.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_103.xy, r10.z);
  let v_104 = r16.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_104.xy, r16.z);
  let v_105 = r14.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_105.xy, r14.z);
  let v_106 = r4.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_106.xy, r4.z);
  let v_107 = r17.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_107.xy, r17.z);
  let v_108 = r19.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_108.xy, r19.z);
  let v_109 = r3.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_109.xy, r3.z);
  let v_110 = r6.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_110.xy, r6.z);
  r2 = (r2 + r7);
  r2 = (r8 + r2);
  r2 = (r4 + r2);
  r0.x = dot(r2, vec4<f32>(1.0f));
  r2.x = (r0.x * 0.0625f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = textureSample(t2, s2, r5.xyxx.xy).w;
    r2.y = ((-(r0.xxxx)).y + 1.0f);
  } else {
    r2.y = 1.0f;
  }
  r0.x = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).x, 0.0f, 1.0f);
  r0.y = clamp(fma(r0.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).y, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_111 = fma(r0.xx, r0.yy, r2.xy);
  r0 = vec4<f32>(v_111.xy, r0.zw);
  let v_112 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_112.xy, r0.zw);
  let v_113 = min(r0.xy, vec2<f32>(1.0f));
  let v_114 = r0;
  r0 = vec4<f32>(v_114.x, v_113.xy, v_114.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r0.z * r0.y);
  let v_115 = bitcast<u32>(r0.w);
  let v_116 = r1.w;
  r0.x = select(r0.y, v_116, (v_115 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_117 = r2;
  r2 = vec4<f32>(v_117.x, 0.0f, v_117.z, 0.5f);
  let v_118 = fma(r1.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  let v_119 = r0;
  r0 = vec4<f32>(v_119.x, v_118.x, v_119.z, v_118.y);
  r2.z = textureSample(t5, s5, r0.ywyy.xy).y;
  r0.y = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.w = clamp(fma(r1.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).w, 0.0f, 1.0f);
  r0.w = sqrt(r0.w);
  r0.w = fma((-(r0.wwww)).w, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.y = (r0.w * r0.y);
  let v_120 = (r0.yy * r0.xz);
  r0 = vec4<f32>(v_120.xy, r0.zw);
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
