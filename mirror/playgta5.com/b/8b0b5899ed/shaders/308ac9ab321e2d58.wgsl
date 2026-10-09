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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.y = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb11_11.tint_symbol_3[2u].w / r0.x);
  let v_1 = (cb6_6.tint_symbol_1[14u].zw * cb11_11.tint_symbol_3[6u].xx);
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  r1 = (r0.xxxx * v3.xyz.yxyz);
  let v_3 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r2 = vec4<f32>(v_3.xy, r2.zw);
  let v_4 = (r2.xy * vec2<f32>(0.015625f));
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r2 = textureSample(t14, s14, r2.xyxx.xy);
  r0.w = (r2.z * cb12_12.tint_symbol_2[0u].w);
  let v_5 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_5.xy, r2.zw);
  let v_6 = fma(r1.yzw, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = &(x0[0u]);
  let v_8 = r3;
  *(v_7) = vec4<f32>(v_8.xyz, (*(v_7)).w);
  let v_9 = fma(r1.yzw, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = &(x0[1u]);
  let v_11 = r4;
  *(v_10) = vec4<f32>(v_11.xyz, (*(v_10)).w);
  let v_12 = fma(r1.yzw, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = &(x0[2u]);
  let v_14 = r5;
  *(v_13) = vec4<f32>(v_14.xyz, (*(v_13)).w);
  let v_15 = fma(r1.yzw, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r6 = vec4<f32>(v_15.xyz, r6.w);
  let v_16 = &(x0[3u]);
  let v_17 = r6;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  r3.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_18 = -(r0.wwww);
  r0.w = fma(r3.z, 0.5f, v_18.w);
  let v_19 = abs(r5.yyyy);
  r3.z = max(v_19.z, abs(r5.xxxx).z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r0.w)));
  let v_20 = (bitcast<u32>(r3.z) != 0u);
  let v_21 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r3.z = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_21, v_20);
  let v_22 = abs(r4.yyyy);
  r3.w = max(v_22.w, abs(r4.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r0.w)));
  let v_23 = bitcast<u32>(r3.w);
  r3.z = select(r3.z, bitcast<f32>(v.tint_symbol_4[2i].x), (v_23 != 0u));
  let v_24 = abs(r3.yyyy);
  r3.x = max(v_24.x, abs(r3.xxxx).x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r3.x < r0.w)));
  let v_25 = bitcast<u32>(r0.w);
  r0.w = select(r3.z, 0.0f, (v_25 != 0u));
  let v_26 = x0[bitcast<i32>(r0.w)];
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r3.w = f32(bitcast<i32>(r0.w));
  r4.x = (r3.w + 0.5f);
  r4.x = (r4.x * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r3.w = dot(r5, cb6_6.tint_symbol_1[12u]);
  r4.y = dot(r5, cb6_6.tint_symbol_1[13u]);
  r5.x = (r3.x + 0.5f);
  r5.y = fma(r3.y, 0.25f, r4.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.y = ((-(r3.wwww)).y + r3.z);
  let v_27 = dpdx(r5.xyy);
  r7 = vec4<f32>(v_27.xy, r7.z, v_27.z);
  r7.z = dpdx(r3.y);
  let v_28 = dpdy(r5.yxy);
  r8 = vec4<f32>(v_28.xyz, r8.w);
  r8.w = dpdy(r3.y);
  let v_29 = (r7.yw * r8.yw);
  let v_30 = r4;
  r4 = vec4<f32>(v_29.x, v_30.y, v_29.y, v_30.w);
  let v_31 = -(r4.xzxx);
  let v_32 = fma(r7.xz, r8.xz, v_31.xy);
  r9 = vec4<f32>(v_32.xy, r9.zw);
  r3.w = (1.0f / r9.x);
  r4.x = (r7.z * r8.y);
  let v_33 = -(r4.xxxx);
  r9.z = fma(r7.x, r8.w, v_33.z);
  let v_34 = (r3.ww * r9.yz);
  let v_35 = r4;
  r4 = vec4<f32>(v_34.x, v_35.y, v_34.y, v_35.w);
  let v_36 = max(r4.xz, vec2<f32>());
  let v_37 = r4;
  r4 = vec4<f32>(v_36.x, v_37.y, v_36.y, v_37.w);
  let v_38 = min(r4.xz, vec2<f32>(0.5f));
  let v_39 = r4;
  r4 = vec4<f32>(v_38.x, v_39.y, v_38.y, v_39.w);
  r3.y = fma((-(r4.yyyy)).y, r4.x, r3.y);
  r3.y = fma((-(r4.yyyy)).y, r4.z, r3.y);
  let v_40 = bitcast<u32>(r3.x);
  let v_41 = r3.y;
  r3.z = select(r3.z, v_41, (v_40 != 0u));
  let v_42 = (r0.yz * vec2<f32>(1.39999997615814208984f, 0.34999999403953552246f));
  let v_43 = r0;
  r0 = vec4<f32>(v_43.x, v_42.xy, v_43.w);
  r0.w = bitcast<f32>((4i + bitcast<i32>(r0.w)));
  r4 = (vec4<f32>(0.25f, 1.0f, 0.25f, 1.0f) * cb6_6.tint_symbol_1[bitcast<i32>(r0.w)].yxyz);
  r7 = dpdx(r1.yzwz);
  r7 = (r4.yzwz * r7);
  r1 = dpdy(r1);
  r1 = (r4 * r1);
  let v_44 = (r1.yw * r7.yw);
  r4 = vec4<f32>(v_44.xy, r4.zw);
  let v_45 = -(r4.xyxx);
  let v_46 = fma(r7.xz, r1.xz, v_45.xy);
  r4 = vec4<f32>(v_46.xy, r4.zw);
  r0.w = (1.0f / r4.x);
  r1.x = (r1.y * r7.z);
  let v_47 = -(r1.xxxx);
  r4.z = fma(r7.x, r1.w, v_47.z);
  let v_48 = (r0.ww * r4.yz);
  r1 = vec4<f32>(v_48.xy, r1.zw);
  let v_49 = max(r1.xy, vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_49.xy, r1.zw);
  let v_50 = min(r1.xy, vec2<f32>(1.0f));
  r1 = vec4<f32>(v_50.xy, r1.zw);
  r4 = (r2.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_51 = (r2.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r7 = vec4<f32>(v_51.xy, r7.zw);
  let v_52 = (r2.xy * r0.yz);
  r3 = vec4<f32>(v_52.xy, r3.zw);
  r5.z = dot(r1.xy, r3.xy);
  let v_53 = (r3.xyz + r5.xyz);
  r8 = vec4<f32>(v_53.xyz, r8.w);
  let v_54 = (-(r2.yyyx)).zw;
  r2 = vec4<f32>(r2.xy, v_54.xy);
  r9 = (r0.yzyz * r2.zxyw);
  let v_55 = (r9.xy * vec2<f32>(0.5f));
  r3 = vec4<f32>(v_55.xy, r3.zw);
  r5.w = dot(r1.xy, r3.xy);
  let v_56 = (r3.xyz + r5.xyw);
  r10 = vec4<f32>(v_56.xyz, r10.w);
  let v_57 = ((-(r2.xxxy)).zw * r0.yz);
  r1 = vec4<f32>(r1.xy, v_57.xy);
  let v_58 = (r1.zw * vec2<f32>(0.75f));
  r3 = vec4<f32>(v_58.xy, r3.zw);
  r2.x = dot(r1.xy, r3.xy);
  let v_59 = r5;
  let v_60 = r2;
  r2 = vec4<f32>(v_60.x, v_59.xy, v_60.w);
  let v_61 = (r2.yzx + r3.xyz);
  r11 = vec4<f32>(v_61.xyz, r11.w);
  let v_62 = (r9.zw * vec2<f32>(0.25f));
  r3 = vec4<f32>(v_62.xy, r3.zw);
  r2.w = dot(r1.xy, r3.xy);
  let v_63 = (r2.yzw + r3.xyz);
  r9 = vec4<f32>(v_63.xyz, r9.w);
  r12 = (r0.yzyz * r4);
  r2.x = dot(r1.xy, r12.xy);
  let v_64 = r12;
  r3 = vec4<f32>(v_64.xy, r3.zw);
  let v_65 = (r2.yzx + r3.xyz);
  r13 = vec4<f32>(v_65.xyz, r13.w);
  r14 = (r4.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r14 = (r0.yzyz * r14);
  let v_66 = (r14.xy * vec2<f32>(0.5f));
  r3 = vec4<f32>(v_66.xy, r3.zw);
  r2.w = dot(r1.xy, r3.xy);
  let v_67 = (r2.yzw + r3.xyz);
  r15 = vec4<f32>(v_67.xyz, r15.w);
  let v_68 = -(r4);
  r16 = (r0.yzyz * v_68);
  r16 = (r16 * vec4<f32>(0.75f));
  r2.x = dot(r1.xy, r16.xy);
  let v_69 = r16;
  r3 = vec4<f32>(v_69.xy, r3.zw);
  let v_70 = (r2.yzx + r3.xyz);
  r17 = vec4<f32>(v_70.xyz, r17.w);
  let v_71 = (r14.zw * vec2<f32>(0.25f));
  r3 = vec4<f32>(v_71.xy, r3.zw);
  r2.w = dot(r1.xy, r3.xy);
  let v_72 = (r2.yzw + r3.xyz);
  r14 = vec4<f32>(v_72.xyz, r14.w);
  r2.x = dot(r1.xy, r12.zw);
  let v_73 = r12;
  r3 = vec4<f32>(v_73.zw, r3.zw);
  let v_74 = (r2.yzx + r3.xyz);
  r12 = vec4<f32>(v_74.xyz, r12.w);
  r4 = (r4.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r4 = (r0.yzyz * r4);
  let v_75 = (r4.xy * vec2<f32>(0.5f));
  r3 = vec4<f32>(v_75.xy, r3.zw);
  r2.w = dot(r1.xy, r3.xy);
  let v_76 = (r2.yzw + r3.xyz);
  r18 = vec4<f32>(v_76.xyz, r18.w);
  r2.x = dot(r1.xy, r16.zw);
  let v_77 = r16;
  r3 = vec4<f32>(v_77.zw, r3.zw);
  let v_78 = (r2.yzx + r3.xyz);
  r16 = vec4<f32>(v_78.xyz, r16.w);
  let v_79 = (r4.zw * vec2<f32>(0.25f));
  r3 = vec4<f32>(v_79.xy, r3.zw);
  r2.w = dot(r1.xy, r3.xy);
  let v_80 = (r2.yzw + r3.xyz);
  r4 = vec4<f32>(v_80.xyz, r4.w);
  let v_81 = (r0.yz * r7.xy);
  r3 = vec4<f32>(v_81.xy, r3.zw);
  r2.x = dot(r1.xy, r3.xy);
  let v_82 = (r2.yzx + r3.xyz);
  r19 = vec4<f32>(v_82.xyz, r19.w);
  let v_83 = (-(r7.yyyx)).zw;
  r7 = vec4<f32>(r7.xy, v_83.xy);
  r20 = (r0.yzyz * r7.zxyw);
  let v_84 = (r20.xy * vec2<f32>(0.5f));
  r3 = vec4<f32>(v_84.xy, r3.zw);
  r2.w = dot(r1.xy, r3.xy);
  let v_85 = (r2.yzw + r3.xyz);
  r21 = vec4<f32>(v_85.xyz, r21.w);
  let v_86 = -(r7.xxyx);
  let v_87 = (r0.yz * v_86.yz);
  let v_88 = r0;
  r0 = vec4<f32>(v_88.x, v_87.xy, v_88.w);
  let v_89 = (r0.yz * vec2<f32>(0.75f));
  r3 = vec4<f32>(v_89.xy, r3.zw);
  r2.x = dot(r1.xy, r3.xy);
  let v_90 = (r2.yzx + r3.xyz);
  r0 = vec4<f32>(r0.x, v_90.xyz);
  let v_91 = (r20.zw * vec2<f32>(0.25f));
  r3 = vec4<f32>(v_91.xy, r3.zw);
  r2.w = dot(r1.xy, r3.xy);
  let v_92 = (r2.yzw + r3.xyz);
  r1 = vec4<f32>(v_92.xyz, r1.w);
  let v_93 = r8.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_93.xy, r8.z);
  let v_94 = r10.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_94.xy, r10.z);
  let v_95 = r11.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_95.xy, r11.z);
  let v_96 = r9.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_96.xy, r9.z);
  let v_97 = r13.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_97.xy, r13.z);
  let v_98 = r15.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_98.xy, r15.z);
  let v_99 = r17.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_99.xy, r17.z);
  let v_100 = r14.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_100.xy, r14.z);
  let v_101 = r12.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_101.xy, r12.z);
  let v_102 = r18.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_102.xy, r18.z);
  let v_103 = r16.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_103.xy, r16.z);
  let v_104 = r4.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_104.xy, r4.z);
  let v_105 = r19.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_105.xy, r19.z);
  let v_106 = r21.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_106.xy, r21.z);
  let v_107 = r0.yzyy;
  r4.z = textureSampleCompareLevel(t15, s15, v_107.xy, r0.w);
  let v_108 = r1.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_108.xy, r1.z);
  r1 = (r2 + r3);
  r1 = (r7 + r1);
  r1 = (r4 + r1);
  r0.y = dot(r1, vec4<f32>(1.0f));
  r1.x = (r0.y * 0.0625f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r2 = textureSample(t2, s2, r5.xyxx.xy);
    r1.y = ((-(r2.wwww)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.x = clamp(fma(r0.xxxx, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).x, 0.0f, 1.0f);
  let v_109 = abs(r6.yyyy);
  r0.y = max(v_109.y, abs(r6.xxxx).y);
  r0.y = clamp(fma(r0.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).y, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_110 = fma(r0.xx, r0.yy, r1.xy);
  r0 = vec4<f32>(v_110.xy, r0.zw);
  let v_111 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_111.xy, r0.zw);
  let v_112 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_112.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r0.w = (r0.y * r0.x);
  let v_113 = bitcast<u32>(r0.z);
  let v_114 = r0.w;
  r0.x = select(r0.x, v_114, (v_113 != 0u));
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
