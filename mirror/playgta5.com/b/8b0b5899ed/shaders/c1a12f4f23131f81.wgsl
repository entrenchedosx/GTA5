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

var<private> r22 : vec4<f32>;

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
  r1 = dpdx(v3.xyz.yxyz);
  r2 = dpdy(v3.xyz.yxyz);
  r2 = (r0.yyyy * r2);
  r0 = fma(r0.xxxx, r1, r2);
  r0 = (r0 + v3.xyz.yxyz);
  let v_3 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = fma(r1.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_3[4u].xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1.x = (r1.x * cb11_11.tint_symbol_3[0u].w);
  r1.y = (r1.y * cb11_11.tint_symbol_3[1u].w);
  let v_5 = (r1.yyy * cb11_11.tint_symbol_3[1u].xyz);
  r1 = vec4<f32>(r1.x, v_5.xyz);
  let v_6 = fma(r1.xxx, cb11_11.tint_symbol_3[0u].xyz, r1.yzw);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = -(cb11_11.tint_symbol_3[2u].xyzx);
  let v_8 = (r1.xyz + v_7.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  let v_10 = r2.xy;
  let v_11 = max(v_10, vec2<f32>(-2147483648.0f));
  let v_12 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_11), vec2<i32>(2147483647i), (v_11 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_10 == v_10))));
  r3 = vec4<f32>(v_12.xy, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r1.w = textureLoad(t3, bitcast<vec2<i32>>(r3.xy), 0i).x;
  r2.z = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r1.w = ((-(r1.wwww)).w + r2.z);
  r1.w = (cb11_11.tint_symbol_3[2u].w / r1.w);
  let v_13 = fma(r1.xyz, r1.www, cb11_11.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = (cb6_6.tint_symbol_1[14u].zw * cb11_11.tint_symbol_3[6u].xx);
  r2 = vec4<f32>(r2.xy, v_14.xy);
  r0 = (r0 * r1.wwww);
  let v_15 = (r2.xy * vec2<f32>(0.015625f));
  r2 = vec4<f32>(v_15.xy, r2.zw);
  let v_16 = textureSample(t14, s14, r2.xyxx.xy).xyz;
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r2.x = (r3.z * cb12_12.tint_symbol_2[0u].w);
  let v_17 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_17.xy, r3.zw);
  let v_18 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  let v_19 = &(x0[0u]);
  let v_20 = r4;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  let v_22 = &(x0[1u]);
  let v_23 = r5;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  let v_24 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r6 = vec4<f32>(v_24.xyz, r6.w);
  let v_25 = &(x0[2u]);
  let v_26 = r6;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  let v_27 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r7 = vec4<f32>(v_27.xyz, r7.w);
  let v_28 = &(x0[3u]);
  let v_29 = r7;
  *(v_28) = vec4<f32>(v_29.xyz, (*(v_28)).w);
  r2.y = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).y, 1.5f, 1.0f);
  let v_30 = -(r2.xxxx);
  r2.x = fma(r2.y, 0.5f, v_30.x);
  let v_31 = abs(r6.yyyy);
  r2.y = max(v_31.y, abs(r6.xxxx).y);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.y < r2.x)));
  let v_32 = (bitcast<u32>(r2.y) != 0u);
  let v_33 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r2.y = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_33, v_32);
  let v_34 = abs(r5.yyyy);
  r4.z = max(v_34.z, abs(r5.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r2.x)));
  let v_35 = bitcast<u32>(r4.z);
  r2.y = select(r2.y, bitcast<f32>(v.tint_symbol_4[2i].x), (v_35 != 0u));
  let v_36 = abs(r4.yyyy);
  r4.x = max(v_36.x, abs(r4.xxxx).x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r4.x < r2.x)));
  let v_37 = bitcast<u32>(r2.x);
  r2.x = select(r2.y, 0.0f, (v_37 != 0u));
  let v_38 = x0[bitcast<i32>(r2.x)];
  r4 = vec4<f32>(v_38.xyz, r4.w);
  r2.y = f32(bitcast<i32>(r2.x));
  r4.w = (r2.y + 0.5f);
  r4.w = (r4.w * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.yyyy)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r2.y = dot(r5, cb6_6.tint_symbol_1[12u]);
  r5.x = dot(r5, cb6_6.tint_symbol_1[13u]);
  r6.x = (r4.x + 0.5f);
  r6.y = fma(r4.y, 0.25f, r4.w);
  r4.x = bitcast<f32>(select(0u, 4294967295u, !((r2.y == 0.0f))));
  r2.y = ((-(r2.yyyy)).y + r4.z);
  let v_39 = dpdx(r6.xyy);
  r8 = vec4<f32>(v_39.xy, r8.z, v_39.z);
  r8.z = dpdx(r2.y);
  let v_40 = dpdy(r6.yxy);
  r9 = vec4<f32>(v_40.xyz, r9.w);
  r9.w = dpdy(r2.y);
  let v_41 = (r8.yw * r9.yw);
  let v_42 = r4;
  r4 = vec4<f32>(v_42.x, v_41.x, v_42.z, v_41.y);
  let v_43 = -(r4.ywyy);
  let v_44 = fma(r8.xz, r9.xz, v_43.xy);
  r10 = vec4<f32>(v_44.xy, r10.zw);
  r4.y = (1.0f / r10.x);
  r4.w = (r8.z * r9.y);
  let v_45 = -(r4.wwww);
  r10.z = fma(r8.x, r9.w, v_45.z);
  let v_46 = (r4.yy * r10.yz);
  let v_47 = r4;
  r4 = vec4<f32>(v_47.x, v_46.x, v_47.z, v_46.y);
  let v_48 = max(r4.yw, vec2<f32>());
  let v_49 = r4;
  r4 = vec4<f32>(v_49.x, v_48.x, v_49.z, v_48.y);
  let v_50 = min(r4.yw, vec2<f32>(0.5f));
  let v_51 = r4;
  r4 = vec4<f32>(v_51.x, v_50.x, v_51.z, v_50.y);
  r2.y = fma((-(r5.xxxx)).y, r4.y, r2.y);
  r2.y = fma((-(r5.xxxx)).y, r4.w, r2.y);
  let v_52 = bitcast<u32>(r4.x);
  let v_53 = r2.y;
  r4.z = select(r4.z, v_53, (v_52 != 0u));
  let v_54 = (r2.zw * vec2<f32>(1.39999997615814208984f, 0.34999999403953552246f));
  let v_55 = r2;
  r2 = vec4<f32>(v_55.x, v_54.xy, v_55.w);
  r2.x = bitcast<f32>((4i + bitcast<i32>(r2.x)));
  r5 = (vec4<f32>(0.25f, 1.0f, 0.25f, 1.0f) * cb6_6.tint_symbol_1[bitcast<i32>(r2.x)].yxyz);
  r8 = dpdx(r0.yzwz);
  r8 = (r5.yzwz * r8);
  r0 = dpdy(r0);
  r0 = (r5 * r0);
  let v_56 = (r0.yw * r8.yw);
  r2 = vec4<f32>(v_56.x, r2.yz, v_56.y);
  let v_57 = -(r2.xwxx);
  let v_58 = fma(r8.xz, r0.xz, v_57.xy);
  r5 = vec4<f32>(v_58.xy, r5.zw);
  r0.x = (1.0f / r5.x);
  r0.y = (r0.y * r8.z);
  let v_59 = -(r0.yyyy);
  r5.z = fma(r8.x, r0.w, v_59.z);
  let v_60 = (r0.xx * r5.yz);
  r0 = vec4<f32>(v_60.xy, r0.zw);
  let v_61 = max(r0.xy, vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_61.xy, r0.zw);
  let v_62 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_62.xy, r0.zw);
  r5 = (r3.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_63 = (r3.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r8 = vec4<f32>(v_63.xy, r8.zw);
  let v_64 = (r3.xy * r2.yz);
  r4 = vec4<f32>(v_64.xy, r4.zw);
  r6.z = dot(r0.xy, r4.xy);
  let v_65 = (r4.xyz + r6.xyz);
  r9 = vec4<f32>(v_65.xyz, r9.w);
  let v_66 = (-(r3.yyyx)).zw;
  r3 = vec4<f32>(r3.xy, v_66.xy);
  r10 = (r2.yzyz * r3.zxyw);
  let v_67 = (r10.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_67.xy, r4.zw);
  r6.w = dot(r0.xy, r4.xy);
  let v_68 = (r4.xyz + r6.xyw);
  r11 = vec4<f32>(v_68.xyz, r11.w);
  let v_69 = ((-(r3.xxxy)).zw * r2.yz);
  r0 = vec4<f32>(r0.xy, v_69.xy);
  let v_70 = (r0.zw * vec2<f32>(0.75f));
  r4 = vec4<f32>(v_70.xy, r4.zw);
  r3.x = dot(r0.xy, r4.xy);
  let v_71 = r6;
  let v_72 = r3;
  r3 = vec4<f32>(v_72.x, v_71.xy, v_72.w);
  let v_73 = (r3.yzx + r4.xyz);
  r12 = vec4<f32>(v_73.xyz, r12.w);
  let v_74 = (r10.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_74.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_75 = (r3.yzw + r4.xyz);
  r10 = vec4<f32>(v_75.xyz, r10.w);
  r13 = (r2.yzyz * r5);
  r3.x = dot(r0.xy, r13.xy);
  let v_76 = r13;
  r4 = vec4<f32>(v_76.xy, r4.zw);
  let v_77 = (r3.yzx + r4.xyz);
  r14 = vec4<f32>(v_77.xyz, r14.w);
  r15 = (r5.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r15 = (r2.yzyz * r15);
  let v_78 = (r15.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_78.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_79 = (r3.yzw + r4.xyz);
  r16 = vec4<f32>(v_79.xyz, r16.w);
  let v_80 = -(r5);
  r17 = (r2.yzyz * v_80);
  r17 = (r17 * vec4<f32>(0.75f));
  r3.x = dot(r0.xy, r17.xy);
  let v_81 = r17;
  r4 = vec4<f32>(v_81.xy, r4.zw);
  let v_82 = (r3.yzx + r4.xyz);
  r18 = vec4<f32>(v_82.xyz, r18.w);
  let v_83 = (r15.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_83.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_84 = (r3.yzw + r4.xyz);
  r15 = vec4<f32>(v_84.xyz, r15.w);
  r3.x = dot(r0.xy, r13.zw);
  let v_85 = r13;
  r4 = vec4<f32>(v_85.zw, r4.zw);
  let v_86 = (r3.yzx + r4.xyz);
  r13 = vec4<f32>(v_86.xyz, r13.w);
  r5 = (r5.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r5 = (r2.yzyz * r5);
  let v_87 = (r5.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_87.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_88 = (r3.yzw + r4.xyz);
  r19 = vec4<f32>(v_88.xyz, r19.w);
  r3.x = dot(r0.xy, r17.zw);
  let v_89 = r17;
  r4 = vec4<f32>(v_89.zw, r4.zw);
  let v_90 = (r3.yzx + r4.xyz);
  r17 = vec4<f32>(v_90.xyz, r17.w);
  let v_91 = (r5.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_91.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_92 = (r3.yzw + r4.xyz);
  r5 = vec4<f32>(v_92.xyz, r5.w);
  let v_93 = (r2.yz * r8.xy);
  r4 = vec4<f32>(v_93.xy, r4.zw);
  r3.x = dot(r0.xy, r4.xy);
  let v_94 = (r3.yzx + r4.xyz);
  r20 = vec4<f32>(v_94.xyz, r20.w);
  let v_95 = (-(r8.yyyx)).zw;
  r8 = vec4<f32>(r8.xy, v_95.xy);
  r21 = (r2.yzyz * r8.zxyw);
  let v_96 = (r21.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_96.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_97 = (r3.yzw + r4.xyz);
  r22 = vec4<f32>(v_97.xyz, r22.w);
  let v_98 = -(r8.xxxy);
  let v_99 = (r2.yz * v_98.zw);
  r0 = vec4<f32>(r0.xy, v_99.xy);
  let v_100 = (r0.zw * vec2<f32>(0.75f));
  r4 = vec4<f32>(v_100.xy, r4.zw);
  r3.x = dot(r0.xy, r4.xy);
  let v_101 = (r3.yzx + r4.xyz);
  r2 = vec4<f32>(v_101.xyz, r2.w);
  let v_102 = (r21.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_102.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_103 = (r3.yzw + r4.xyz);
  r0 = vec4<f32>(v_103.xyz, r0.w);
  let v_104 = r9.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_104.xy, r9.z);
  let v_105 = r11.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_105.xy, r11.z);
  let v_106 = r12.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_106.xy, r12.z);
  let v_107 = r10.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_107.xy, r10.z);
  let v_108 = r14.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_108.xy, r14.z);
  let v_109 = r16.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_109.xy, r16.z);
  let v_110 = r18.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_110.xy, r18.z);
  let v_111 = r15.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_111.xy, r15.z);
  let v_112 = r13.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_112.xy, r13.z);
  let v_113 = r19.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_113.xy, r19.z);
  let v_114 = r17.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_114.xy, r17.z);
  let v_115 = r5.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_115.xy, r5.z);
  let v_116 = r20.xyxx;
  r5.x = textureSampleCompareLevel(t15, s15, v_116.xy, r20.z);
  let v_117 = r22.xyxx;
  r5.y = textureSampleCompareLevel(t15, s15, v_117.xy, r22.z);
  let v_118 = r2.xyxx;
  r5.z = textureSampleCompareLevel(t15, s15, v_118.xy, r2.z);
  let v_119 = r0.xyxx;
  r5.w = textureSampleCompareLevel(t15, s15, v_119.xy, r0.z);
  r0 = (r3 + r4);
  r0 = (r8 + r0);
  r0 = (r5 + r0);
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.x = (r0.x * 0.0625f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r0.z = textureSample(t2, s2, r6.xyxx.xy).w;
    r0.y = ((-(r0.zzzz)).y + 1.0f);
  } else {
    r0.y = 1.0f;
  }
  r0.z = clamp(fma(r1.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).z, 0.0f, 1.0f);
  let v_120 = abs(r7.yyyy);
  r0.w = max(v_120.w, abs(r7.xxxx).w);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_121 = fma(r0.zz, r0.ww, r0.xy);
  r0 = vec4<f32>(v_121.xy, r0.zw);
  let v_122 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_122.xy, r0.zw);
  let v_123 = min(r0.xy, vec2<f32>(1.0f));
  let v_124 = r0;
  r0 = vec4<f32>(v_124.x, v_123.xy, v_124.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r0.z * r0.y);
  let v_125 = bitcast<u32>(r0.w);
  let v_126 = r1.w;
  r0.x = select(r0.y, v_126, (v_125 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_127 = r2;
  r2 = vec4<f32>(v_127.x, 0.0f, v_127.z, 0.5f);
  let v_128 = fma(r1.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  let v_129 = r0;
  r0 = vec4<f32>(v_129.x, v_128.x, v_129.z, v_128.y);
  r2.z = textureSample(t5, s5, r0.ywyy.xy).y;
  r0.y = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.w = clamp(fma(r1.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).w, 0.0f, 1.0f);
  r0.w = sqrt(r0.w);
  r0.w = fma((-(r0.wwww)).w, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.y = (r0.w * r0.y);
  let v_130 = (r0.yy * r0.xz);
  r0 = vec4<f32>(v_130.xy, r0.zw);
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
