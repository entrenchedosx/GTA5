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

var<private> r21 : vec4<f32>;

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

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>, v4 : u32) {
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
  let v_7 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = r1.xy;
  let v_9 = max(v_8, vec2<f32>(-2147483648.0f));
  let v_10 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_9), vec2<i32>(2147483647i), (v_9 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_8 == v_8))));
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0.w = textureLoad(t3, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v4)).x;
  r1.z = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.z);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_11 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = (cb6_6.tint_symbol_1[14u].zw * cb11_11.tint_symbol_3[6u].xx);
  r1 = vec4<f32>(r1.xy, v_12.xy);
  r2 = (r0.wwww * v3.xyz.yxyz);
  let v_13 = (r1.xy * vec2<f32>(0.015625f));
  r1 = vec4<f32>(v_13.xy, r1.zw);
  let v_14 = textureSample(t14, s14, r1.xyxx.xy).xyz;
  r3 = vec4<f32>(v_14.xyz, r3.w);
  r1.x = (r3.z * cb12_12.tint_symbol_2[0u].w);
  let v_15 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_15.xy, r3.zw);
  let v_16 = fma(r2.yzw, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r4 = vec4<f32>(v_16.xyz, r4.w);
  let v_17 = &(x0[0u]);
  let v_18 = r4;
  *(v_17) = vec4<f32>(v_18.xyz, (*(v_17)).w);
  let v_19 = fma(r2.yzw, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = &(x0[1u]);
  let v_21 = r5;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r2.yzw, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r6 = vec4<f32>(v_22.xyz, r6.w);
  let v_23 = &(x0[2u]);
  let v_24 = r6;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = fma(r2.yzw, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r7 = vec4<f32>(v_25.xyz, r7.w);
  let v_26 = &(x0[3u]);
  let v_27 = r7;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  r1.y = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).y, 1.5f, 1.0f);
  let v_28 = -(r1.xxxx);
  r1.x = fma(r1.y, 0.5f, v_28.x);
  let v_29 = abs(r6.yyyy);
  r1.y = max(v_29.y, abs(r6.xxxx).y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < r1.x)));
  let v_30 = (bitcast<u32>(r1.y) != 0u);
  let v_31 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.y = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_31, v_30);
  let v_32 = abs(r5.yyyy);
  r4.z = max(v_32.z, abs(r5.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r1.x)));
  let v_33 = bitcast<u32>(r4.z);
  r1.y = select(r1.y, bitcast<f32>(v.tint_symbol_4[2i].x), (v_33 != 0u));
  let v_34 = abs(r4.yyyy);
  r4.x = max(v_34.x, abs(r4.xxxx).x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r4.x < r1.x)));
  let v_35 = bitcast<u32>(r1.x);
  r1.x = select(r1.y, 0.0f, (v_35 != 0u));
  let v_36 = x0[bitcast<i32>(r1.x)];
  r4 = vec4<f32>(v_36.xyz, r4.w);
  r1.y = f32(bitcast<i32>(r1.x));
  r4.w = (r1.y + 0.5f);
  r4.w = (r4.w * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.yyyy)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r1.y = dot(r5, cb6_6.tint_symbol_1[12u]);
  r5.x = dot(r5, cb6_6.tint_symbol_1[13u]);
  r6.x = (r4.x + 0.5f);
  r6.y = fma(r4.y, 0.25f, r4.w);
  r4.x = bitcast<f32>(select(0u, 4294967295u, !((r1.y == 0.0f))));
  r1.y = ((-(r1.yyyy)).y + r4.z);
  let v_37 = dpdx(r6.xyy);
  r8 = vec4<f32>(v_37.xy, r8.z, v_37.z);
  r8.z = dpdx(r1.y);
  let v_38 = dpdy(r6.yxy);
  r9 = vec4<f32>(v_38.xyz, r9.w);
  r9.w = dpdy(r1.y);
  let v_39 = (r8.yw * r9.yw);
  let v_40 = r4;
  r4 = vec4<f32>(v_40.x, v_39.x, v_40.z, v_39.y);
  let v_41 = -(r4.ywyy);
  let v_42 = fma(r8.xz, r9.xz, v_41.xy);
  r10 = vec4<f32>(v_42.xy, r10.zw);
  r4.y = (1.0f / r10.x);
  r4.w = (r8.z * r9.y);
  let v_43 = -(r4.wwww);
  r10.z = fma(r8.x, r9.w, v_43.z);
  let v_44 = (r4.yy * r10.yz);
  let v_45 = r4;
  r4 = vec4<f32>(v_45.x, v_44.x, v_45.z, v_44.y);
  let v_46 = max(r4.yw, vec2<f32>());
  let v_47 = r4;
  r4 = vec4<f32>(v_47.x, v_46.x, v_47.z, v_46.y);
  let v_48 = min(r4.yw, vec2<f32>(0.5f));
  let v_49 = r4;
  r4 = vec4<f32>(v_49.x, v_48.x, v_49.z, v_48.y);
  r1.y = fma((-(r5.xxxx)).y, r4.y, r1.y);
  r1.y = fma((-(r5.xxxx)).y, r4.w, r1.y);
  let v_50 = bitcast<u32>(r4.x);
  let v_51 = r1.y;
  r4.z = select(r4.z, v_51, (v_50 != 0u));
  let v_52 = (r1.zw * vec2<f32>(1.39999997615814208984f, 0.34999999403953552246f));
  let v_53 = r1;
  r1 = vec4<f32>(v_53.x, v_52.xy, v_53.w);
  r1.x = bitcast<f32>((4i + bitcast<i32>(r1.x)));
  r5 = (vec4<f32>(0.25f, 1.0f, 0.25f, 1.0f) * cb6_6.tint_symbol_1[bitcast<i32>(r1.x)].yxyz);
  r8 = dpdx(r2.yzwz);
  r8 = (r5.yzwz * r8);
  r2 = dpdy(r2);
  r2 = (r5 * r2);
  let v_54 = (r2.yw * r8.yw);
  r1 = vec4<f32>(v_54.x, r1.yz, v_54.y);
  let v_55 = -(r1.xwxx);
  let v_56 = fma(r8.xz, r2.xz, v_55.xy);
  r5 = vec4<f32>(v_56.xy, r5.zw);
  r1.x = (1.0f / r5.x);
  r1.w = (r2.y * r8.z);
  let v_57 = -(r1.wwww);
  r5.z = fma(r8.x, r2.w, v_57.z);
  let v_58 = (r1.xx * r5.yz);
  r1 = vec4<f32>(v_58.x, r1.yz, v_58.y);
  let v_59 = max(r1.xw, vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_59.x, r1.yz, v_59.y);
  let v_60 = min(r1.xw, vec2<f32>(1.0f));
  r1 = vec4<f32>(v_60.x, r1.yz, v_60.y);
  r2 = (r3.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_61 = (r3.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r5 = vec4<f32>(v_61.xy, r5.zw);
  let v_62 = (r3.xy * r1.yz);
  r4 = vec4<f32>(v_62.xy, r4.zw);
  r6.z = dot(r1.xw, r4.xy);
  let v_63 = (r4.xyz + r6.xyz);
  r8 = vec4<f32>(v_63.xyz, r8.w);
  let v_64 = (-(r3.yyyx)).zw;
  r3 = vec4<f32>(r3.xy, v_64.xy);
  r9 = (r1.yzyz * r3.zxyw);
  let v_65 = (r9.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_65.xy, r4.zw);
  r6.w = dot(r1.xw, r4.xy);
  let v_66 = (r4.xyz + r6.xyw);
  r10 = vec4<f32>(v_66.xyz, r10.w);
  let v_67 = ((-(r3.xyxx)).xy * r1.yz);
  r3 = vec4<f32>(v_67.xy, r3.zw);
  let v_68 = (r3.xy * vec2<f32>(0.75f));
  r4 = vec4<f32>(v_68.xy, r4.zw);
  r3.x = dot(r1.xw, r4.xy);
  let v_69 = r6;
  let v_70 = r3;
  r3 = vec4<f32>(v_70.x, v_69.xy, v_70.w);
  let v_71 = (r3.yzx + r4.xyz);
  r11 = vec4<f32>(v_71.xyz, r11.w);
  let v_72 = (r9.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_72.xy, r4.zw);
  r3.w = dot(r1.xw, r4.xy);
  let v_73 = (r3.yzw + r4.xyz);
  r9 = vec4<f32>(v_73.xyz, r9.w);
  r12 = (r1.yzyz * r2);
  r3.x = dot(r1.xw, r12.xy);
  let v_74 = r12;
  r4 = vec4<f32>(v_74.xy, r4.zw);
  let v_75 = (r3.yzx + r4.xyz);
  r13 = vec4<f32>(v_75.xyz, r13.w);
  r14 = (r2.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r14 = (r1.yzyz * r14);
  let v_76 = (r14.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_76.xy, r4.zw);
  r3.w = dot(r1.xw, r4.xy);
  let v_77 = (r3.yzw + r4.xyz);
  r15 = vec4<f32>(v_77.xyz, r15.w);
  let v_78 = -(r2);
  r16 = (r1.yzyz * v_78);
  r16 = (r16 * vec4<f32>(0.75f));
  r3.x = dot(r1.xw, r16.xy);
  let v_79 = r16;
  r4 = vec4<f32>(v_79.xy, r4.zw);
  let v_80 = (r3.yzx + r4.xyz);
  r17 = vec4<f32>(v_80.xyz, r17.w);
  let v_81 = (r14.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_81.xy, r4.zw);
  r3.w = dot(r1.xw, r4.xy);
  let v_82 = (r3.yzw + r4.xyz);
  r14 = vec4<f32>(v_82.xyz, r14.w);
  r3.x = dot(r1.xw, r12.zw);
  let v_83 = r12;
  r4 = vec4<f32>(v_83.zw, r4.zw);
  let v_84 = (r3.yzx + r4.xyz);
  r12 = vec4<f32>(v_84.xyz, r12.w);
  r2 = (r2.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r2 = (r1.yzyz * r2);
  let v_85 = (r2.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_85.xy, r4.zw);
  r3.w = dot(r1.xw, r4.xy);
  let v_86 = (r3.yzw + r4.xyz);
  r18 = vec4<f32>(v_86.xyz, r18.w);
  r3.x = dot(r1.xw, r16.zw);
  let v_87 = r16;
  r4 = vec4<f32>(v_87.zw, r4.zw);
  let v_88 = (r3.yzx + r4.xyz);
  r16 = vec4<f32>(v_88.xyz, r16.w);
  let v_89 = (r2.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_89.xy, r4.zw);
  r3.w = dot(r1.xw, r4.xy);
  let v_90 = (r3.yzw + r4.xyz);
  r2 = vec4<f32>(v_90.xyz, r2.w);
  let v_91 = (r1.yz * r5.xy);
  r4 = vec4<f32>(v_91.xy, r4.zw);
  r3.x = dot(r1.xw, r4.xy);
  let v_92 = (r3.yzx + r4.xyz);
  r19 = vec4<f32>(v_92.xyz, r19.w);
  let v_93 = (-(r5.yyyx)).zw;
  r5 = vec4<f32>(r5.xy, v_93.xy);
  r20 = (r1.yzyz * r5.zxyw);
  let v_94 = (r20.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_94.xy, r4.zw);
  r3.w = dot(r1.xw, r4.xy);
  let v_95 = (r3.yzw + r4.xyz);
  r21 = vec4<f32>(v_95.xyz, r21.w);
  let v_96 = -(r5.xxyx);
  let v_97 = (r1.yz * v_96.yz);
  let v_98 = r1;
  r1 = vec4<f32>(v_98.x, v_97.xy, v_98.w);
  let v_99 = (r1.yz * vec2<f32>(0.75f));
  r4 = vec4<f32>(v_99.xy, r4.zw);
  r3.x = dot(r1.xw, r4.xy);
  let v_100 = (r3.yzx + r4.xyz);
  r5 = vec4<f32>(v_100.xyz, r5.w);
  let v_101 = (r20.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_101.xy, r4.zw);
  r3.w = dot(r1.xw, r4.xy);
  let v_102 = (r3.yzw + r4.xyz);
  r1 = vec4<f32>(v_102.xyz, r1.w);
  let v_103 = r8.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_103.xy, r8.z);
  let v_104 = r10.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_104.xy, r10.z);
  let v_105 = r11.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_105.xy, r11.z);
  let v_106 = r9.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_106.xy, r9.z);
  let v_107 = r13.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_107.xy, r13.z);
  let v_108 = r15.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_108.xy, r15.z);
  let v_109 = r17.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_109.xy, r17.z);
  let v_110 = r14.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_110.xy, r14.z);
  let v_111 = r12.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_111.xy, r12.z);
  let v_112 = r18.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_112.xy, r18.z);
  let v_113 = r16.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_113.xy, r16.z);
  let v_114 = r2.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_114.xy, r2.z);
  let v_115 = r19.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_115.xy, r19.z);
  let v_116 = r21.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_116.xy, r21.z);
  let v_117 = r5.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_117.xy, r5.z);
  let v_118 = r1.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_118.xy, r1.z);
  r1 = (r3 + r4);
  r1 = (r8 + r1);
  r1 = (r2 + r1);
  r1.x = dot(r1, vec4<f32>(1.0f));
  r1.x = (r1.x * 0.0625f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r1.z = textureSample(t2, s2, r6.xyxx.xy).w;
    r1.y = ((-(r1.zzzz)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  let v_119 = abs(r7.yyyy);
  r1.z = max(v_119.z, abs(r7.xxxx).z);
  r1.z = clamp(fma(r1.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).z, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_120 = fma(r0.ww, r1.zz, r1.xy);
  r1 = vec4<f32>(v_120.xy, r1.zw);
  let v_121 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_121.xy, r1.zw);
  let v_122 = min(r1.xy, vec2<f32>(1.0f));
  let v_123 = r1;
  r1 = vec4<f32>(v_123.x, v_122.xy, v_123.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r1.z * r1.y);
  let v_124 = bitcast<u32>(r0.w);
  let v_125 = r1.w;
  r1.x = select(r1.y, v_125, (v_124 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_126 = r2;
  r2 = vec4<f32>(v_126.x, 0.0f, v_126.z, 0.5f);
  let v_127 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_127.xy, r0.zw);
  r2.z = textureSample(t5, s5, r0.xyxx.xy).y;
  r0.x = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.y = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).y, 0.0f, 1.0f);
  r0.y = sqrt(r0.y);
  r0.y = fma((-(r0.yyyy)).y, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.x = (r0.y * r0.x);
  o0 = (r0.xxxx * r1.xzzz);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
