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

var<private> r20 : vec4<f32>;

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

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb7_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
  let v_1 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = fma(r0.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_3[4u].xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.x = (r0.x * cb11_11.tint_symbol_3[0u].w);
  r0.y = (r0.y * cb11_11.tint_symbol_3[1u].w);
  let v_3 = (r0.yyy * cb11_11.tint_symbol_3[1u].xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = fma(r0.xxx, cb11_11.tint_symbol_3[0u].xyz, r0.yzw);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = -(cb11_11.tint_symbol_3[2u].xyzx);
  let v_6 = (r0.xyz + v_5.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r1 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r1.xxxx)).w + r0.w);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_7 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (cb6_6.tint_symbol_1[14u].zw * cb11_11.tint_symbol_3[6u].xx);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r2 = (r0.wwww * v3.xyz.yxyz);
  let v_9 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(r1.xy, v_9.xy);
  r1 = (r1 * vec4<f32>(1.39999997615814208984f, 0.34999999403953552246f, 0.015625f, 0.015625f));
  r3 = textureSample(t14, s14, r1.zwzz.xy);
  r1.z = (r3.z * cb12_12.tint_symbol_2[0u].w);
  let v_10 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_10.xy, r3.zw);
  let v_11 = fma(r2.yzw, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = &(x0[0u]);
  let v_13 = r4;
  *(v_12) = vec4<f32>(v_13.xyz, (*(v_12)).w);
  let v_14 = fma(r2.yzw, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = &(x0[1u]);
  let v_16 = r5;
  *(v_15) = vec4<f32>(v_16.xyz, (*(v_15)).w);
  let v_17 = fma(r2.yzw, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  let v_18 = &(x0[2u]);
  let v_19 = r6;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = &(x0[3u]);
  let v_21 = r6;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  r1.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  let v_22 = -(r1.zzzz);
  r1.z = fma(r1.w, 0.5f, v_22.z);
  let v_23 = abs(r6.yyyy);
  let v_24 = max(v_23.zw, abs(r6.xxxx).zw);
  r4 = vec4<f32>(r4.xy, v_24.xy);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r4.z < r1.z)));
  let v_25 = (bitcast<u32>(r1.w) != 0u);
  let v_26 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.w = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_26, v_25);
  let v_27 = abs(r5.yyyy);
  r4.z = max(v_27.z, abs(r5.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r1.z)));
  let v_28 = bitcast<u32>(r4.z);
  r1.w = select(r1.w, bitcast<f32>(v.tint_symbol_4[2i].x), (v_28 != 0u));
  let v_29 = abs(r4.yyyy);
  r4.x = max(v_29.x, abs(r4.xxxx).x);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r4.x < r1.z)));
  let v_30 = bitcast<u32>(r1.z);
  r1.z = select(r1.w, 0.0f, (v_30 != 0u));
  let v_31 = x0[bitcast<i32>(r1.z)];
  r4 = vec4<f32>(v_31.xyz, r4.w);
  r1.w = f32(bitcast<i32>(r1.z));
  r5.x = (r1.w + 0.5f);
  r5.x = (r5.x * 0.25f);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.wwww)));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(1065353216u)));
  r1.w = dot(r6, cb6_6.tint_symbol_1[12u]);
  r5.y = dot(r6, cb6_6.tint_symbol_1[13u]);
  r6.x = (r4.x + 0.5f);
  r6.y = fma(r4.y, 0.25f, r5.x);
  r4.x = bitcast<f32>(select(0u, 4294967295u, !((r1.w == 0.0f))));
  r1.w = ((-(r1.wwww)).w + r4.z);
  let v_32 = dpdx(r6.xyy);
  r7 = vec4<f32>(v_32.xy, r7.z, v_32.z);
  r7.z = dpdx(r1.w);
  let v_33 = dpdy(r6.yxy);
  r8 = vec4<f32>(v_33.xyz, r8.w);
  r8.w = dpdy(r1.w);
  let v_34 = (r7.yw * r8.yw);
  let v_35 = r5;
  r5 = vec4<f32>(v_34.x, v_35.y, v_34.y, v_35.w);
  let v_36 = -(r5.xzxx);
  let v_37 = fma(r7.xz, r8.xz, v_36.xy);
  r9 = vec4<f32>(v_37.xy, r9.zw);
  r4.y = (1.0f / r9.x);
  r5.x = (r7.z * r8.y);
  let v_38 = -(r5.xxxx);
  r9.z = fma(r7.x, r8.w, v_38.z);
  let v_39 = (r4.yy * r9.yz);
  let v_40 = r5;
  r5 = vec4<f32>(v_39.x, v_40.y, v_39.y, v_40.w);
  let v_41 = max(r5.xz, vec2<f32>());
  let v_42 = r5;
  r5 = vec4<f32>(v_41.x, v_42.y, v_41.y, v_42.w);
  let v_43 = min(r5.xz, vec2<f32>(0.5f));
  let v_44 = r5;
  r5 = vec4<f32>(v_43.x, v_44.y, v_43.y, v_44.w);
  r1.w = fma((-(r5.yyyy)).w, r5.x, r1.w);
  r1.w = fma((-(r5.yyyy)).w, r5.z, r1.w);
  let v_45 = bitcast<u32>(r4.x);
  let v_46 = r1.w;
  r4.z = select(r4.z, v_46, (v_45 != 0u));
  r1.z = bitcast<f32>((4i + bitcast<i32>(r1.z)));
  r5 = (vec4<f32>(0.25f, 1.0f, 0.25f, 1.0f) * cb6_6.tint_symbol_1[bitcast<i32>(r1.z)].yxyz);
  r7 = dpdx(r2.yzwz);
  r7 = (r5.yzwz * r7);
  r2 = dpdy(r2);
  r2 = (r5 * r2);
  let v_47 = (r2.yw * r7.yw);
  r1 = vec4<f32>(r1.xy, v_47.xy);
  let v_48 = -(r1.zwzz);
  let v_49 = fma(r7.xz, r2.xz, v_48.xy);
  r5 = vec4<f32>(v_49.xy, r5.zw);
  r1.z = (1.0f / r5.x);
  r1.w = (r2.y * r7.z);
  let v_50 = -(r1.wwww);
  r5.z = fma(r7.x, r2.w, v_50.z);
  let v_51 = (r1.zz * r5.yz);
  r1 = vec4<f32>(r1.xy, v_51.xy);
  let v_52 = max(r1.zw, vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_52.xy);
  let v_53 = min(r1.zw, vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_53.xy);
  r2 = (r3.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_54 = (r3.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r5 = vec4<f32>(v_54.xy, r5.zw);
  let v_55 = (r1.xy * r3.xy);
  r4 = vec4<f32>(v_55.xy, r4.zw);
  r6.z = dot(r1.zw, r4.xy);
  let v_56 = (r4.xyz + r6.xyz);
  r7 = vec4<f32>(v_56.xyz, r7.w);
  let v_57 = (-(r3.yyyx)).zw;
  r3 = vec4<f32>(r3.xy, v_57.xy);
  r8 = (r1.xyxy * r3.zxyw);
  let v_58 = (r8.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_58.xy, r4.zw);
  r6.w = dot(r1.zw, r4.xy);
  let v_59 = (r4.xyz + r6.xyw);
  r9 = vec4<f32>(v_59.xyz, r9.w);
  let v_60 = -(r3.xyxx);
  let v_61 = (r1.xy * v_60.xy);
  r3 = vec4<f32>(v_61.xy, r3.zw);
  let v_62 = (r3.xy * vec2<f32>(0.75f));
  r4 = vec4<f32>(v_62.xy, r4.zw);
  r3.x = dot(r1.zw, r4.xy);
  let v_63 = r6;
  let v_64 = r3;
  r3 = vec4<f32>(v_64.x, v_63.xy, v_64.w);
  let v_65 = (r3.yzx + r4.xyz);
  r10 = vec4<f32>(v_65.xyz, r10.w);
  let v_66 = (r8.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_66.xy, r4.zw);
  r3.w = dot(r1.zw, r4.xy);
  let v_67 = (r3.yzw + r4.xyz);
  r8 = vec4<f32>(v_67.xyz, r8.w);
  r11 = (r1.xyxy * r2);
  r3.x = dot(r1.zw, r11.xy);
  let v_68 = r11;
  r4 = vec4<f32>(v_68.xy, r4.zw);
  let v_69 = (r3.yzx + r4.xyz);
  r12 = vec4<f32>(v_69.xyz, r12.w);
  r13 = (r2.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r13 = (r1.xyxy * r13);
  let v_70 = (r13.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_70.xy, r4.zw);
  r3.w = dot(r1.zw, r4.xy);
  let v_71 = (r3.yzw + r4.xyz);
  r14 = vec4<f32>(v_71.xyz, r14.w);
  let v_72 = -(r2);
  r15 = (r1.xyxy * v_72);
  r15 = (r15 * vec4<f32>(0.75f));
  r3.x = dot(r1.zw, r15.xy);
  let v_73 = r15;
  r4 = vec4<f32>(v_73.xy, r4.zw);
  let v_74 = (r3.yzx + r4.xyz);
  r16 = vec4<f32>(v_74.xyz, r16.w);
  let v_75 = (r13.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_75.xy, r4.zw);
  r3.w = dot(r1.zw, r4.xy);
  let v_76 = (r3.yzw + r4.xyz);
  r13 = vec4<f32>(v_76.xyz, r13.w);
  r3.x = dot(r1.zw, r11.zw);
  let v_77 = r11;
  r4 = vec4<f32>(v_77.zw, r4.zw);
  let v_78 = (r3.yzx + r4.xyz);
  r11 = vec4<f32>(v_78.xyz, r11.w);
  r2 = (r2.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r2 = (r1.xyxy * r2);
  let v_79 = (r2.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_79.xy, r4.zw);
  r3.w = dot(r1.zw, r4.xy);
  let v_80 = (r3.yzw + r4.xyz);
  r17 = vec4<f32>(v_80.xyz, r17.w);
  r3.x = dot(r1.zw, r15.zw);
  let v_81 = r15;
  r4 = vec4<f32>(v_81.zw, r4.zw);
  let v_82 = (r3.yzx + r4.xyz);
  r15 = vec4<f32>(v_82.xyz, r15.w);
  let v_83 = (r2.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_83.xy, r4.zw);
  r3.w = dot(r1.zw, r4.xy);
  let v_84 = (r3.yzw + r4.xyz);
  r2 = vec4<f32>(v_84.xyz, r2.w);
  let v_85 = (r1.xy * r5.xy);
  r4 = vec4<f32>(v_85.xy, r4.zw);
  r3.x = dot(r1.zw, r4.xy);
  let v_86 = (r3.yzx + r4.xyz);
  r18 = vec4<f32>(v_86.xyz, r18.w);
  let v_87 = (-(r5.yyyx)).zw;
  r5 = vec4<f32>(r5.xy, v_87.xy);
  r19 = (r1.xyxy * r5.zxyw);
  let v_88 = (r19.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_88.xy, r4.zw);
  r3.w = dot(r1.zw, r4.xy);
  let v_89 = (r3.yzw + r4.xyz);
  r20 = vec4<f32>(v_89.xyz, r20.w);
  let v_90 = -(r5.xyxx);
  let v_91 = (r1.xy * v_90.xy);
  r1 = vec4<f32>(v_91.xy, r1.zw);
  let v_92 = (r1.xy * vec2<f32>(0.75f));
  r4 = vec4<f32>(v_92.xy, r4.zw);
  r3.x = dot(r1.zw, r4.xy);
  let v_93 = (r3.yzx + r4.xyz);
  r5 = vec4<f32>(v_93.xyz, r5.w);
  let v_94 = (r19.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_94.xy, r4.zw);
  r3.w = dot(r1.zw, r4.xy);
  let v_95 = (r3.yzw + r4.xyz);
  r1 = vec4<f32>(v_95.xyz, r1.w);
  let v_96 = r7.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_96.xy, r7.z);
  let v_97 = r9.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_97.xy, r9.z);
  let v_98 = r10.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_98.xy, r10.z);
  let v_99 = r8.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_99.xy, r8.z);
  let v_100 = r12.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_100.xy, r12.z);
  let v_101 = r14.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_101.xy, r14.z);
  let v_102 = r16.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_102.xy, r16.z);
  let v_103 = r13.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_103.xy, r13.z);
  let v_104 = r11.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_104.xy, r11.z);
  let v_105 = r17.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_105.xy, r17.z);
  let v_106 = r15.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_106.xy, r15.z);
  let v_107 = r2.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_107.xy, r2.z);
  let v_108 = r18.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_108.xy, r18.z);
  let v_109 = r20.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_109.xy, r20.z);
  let v_110 = r5.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_110.xy, r5.z);
  let v_111 = r1.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_111.xy, r1.z);
  r1 = (r3 + r7);
  r1 = (r8 + r1);
  r1 = (r2 + r1);
  r1.x = dot(r1, vec4<f32>(1.0f));
  r1.x = (r1.x * 0.0625f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r2 = textureSample(t2, s2, r6.xyxx.xy);
    r1.y = ((-(r2.wwww)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  r1.z = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.0f)).z, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_112 = fma(r0.ww, r1.zz, r1.xy);
  r1 = vec4<f32>(v_112.xy, r1.zw);
  let v_113 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_113.xy, r1.zw);
  let v_114 = min(r1.xy, vec2<f32>(1.0f));
  let v_115 = r1;
  r1 = vec4<f32>(v_115.x, v_114.xy, v_115.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r1.z * r1.y);
  let v_116 = bitcast<u32>(r0.w);
  let v_117 = r1.w;
  r1.x = select(r1.y, v_117, (v_116 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_118 = r2;
  r2 = vec4<f32>(v_118.x, 0.0f, v_118.z, 0.5f);
  let v_119 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_119.xy, r0.zw);
  r3 = textureSample(t5, s5, r0.xyxx.xy);
  r2.z = r3.y;
  r2 = textureSample(t6, s6, r2.zwzz.xy);
  r0.x = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).x, 0.0f, 1.0f);
  r0.x = sqrt(r0.x);
  r0.x = fma((-(r0.xxxx)).x, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.x = (r0.x * r2.x);
  let v_120 = (r0.xx * r1.xz);
  r0 = vec4<f32>(v_120.xy, r0.zw);
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
