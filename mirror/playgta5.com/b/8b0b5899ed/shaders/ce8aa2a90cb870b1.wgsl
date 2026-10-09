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
  let v_15 = &(x0[3u]);
  let v_16 = r5;
  *(v_15) = vec4<f32>(v_16.xyz, (*(v_15)).w);
  r3.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_17 = -(r0.wwww);
  r0.w = fma(r3.z, 0.5f, v_17.w);
  let v_18 = abs(r5.yyyy);
  let v_19 = max(v_18.zw, abs(r5.xxxx).zw);
  r3 = vec4<f32>(r3.xy, v_19.xy);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r0.w)));
  let v_20 = (bitcast<u32>(r3.z) != 0u);
  let v_21 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r3.z = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_21, v_20);
  let v_22 = abs(r4.yyyy);
  r4.x = max(v_22.x, abs(r4.xxxx).x);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r4.x < r0.w)));
  let v_23 = bitcast<u32>(r4.x);
  r3.z = select(r3.z, bitcast<f32>(v.tint_symbol_4[2i].x), (v_23 != 0u));
  let v_24 = abs(r3.yyyy);
  r3.x = max(v_24.x, abs(r3.xxxx).x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r3.x < r0.w)));
  let v_25 = bitcast<u32>(r0.w);
  r0.w = select(r3.z, 0.0f, (v_25 != 0u));
  let v_26 = x0[bitcast<i32>(r0.w)];
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r4.x = f32(bitcast<i32>(r0.w));
  r4.y = (r4.x + 0.5f);
  r4.y = (r4.y * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.xxxx)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r4.x = dot(r5, cb6_6.tint_symbol_1[12u]);
  r4.z = dot(r5, cb6_6.tint_symbol_1[13u]);
  r5.x = (r3.x + 0.5f);
  r5.y = fma(r3.y, 0.25f, r4.y);
  r3.x = bitcast<f32>(select(0u, 4294967295u, !((r4.x == 0.0f))));
  let v_27 = -(r4.xxxx);
  r3.y = (r3.z + v_27.y);
  let v_28 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_28.xy, r6.z, v_28.z);
  r6.z = dpdx(r3.y);
  let v_29 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_29.xyz, r7.w);
  r7.w = dpdy(r3.y);
  let v_30 = (r6.yw * r7.yw);
  r4 = vec4<f32>(v_30.xy, r4.zw);
  let v_31 = -(r4.xyxx);
  let v_32 = fma(r6.xz, r7.xz, v_31.xy);
  r8 = vec4<f32>(v_32.xy, r8.zw);
  r4.x = (1.0f / r8.x);
  r4.y = (r6.z * r7.y);
  let v_33 = -(r4.yyyy);
  r8.z = fma(r6.x, r7.w, v_33.z);
  let v_34 = (r4.xx * r8.yz);
  r4 = vec4<f32>(v_34.xy, r4.zw);
  let v_35 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_35.xy, r4.zw);
  let v_36 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_36.xy, r4.zw);
  r3.y = fma((-(r4.zzzz)).y, r4.x, r3.y);
  r3.y = fma((-(r4.zzzz)).y, r4.y, r3.y);
  let v_37 = bitcast<u32>(r3.x);
  let v_38 = r3.y;
  r3.z = select(r3.z, v_38, (v_37 != 0u));
  let v_39 = (r0.yz * vec2<f32>(1.39999997615814208984f, 0.34999999403953552246f));
  let v_40 = r0;
  r0 = vec4<f32>(v_40.x, v_39.xy, v_40.w);
  r0.w = bitcast<f32>((4i + bitcast<i32>(r0.w)));
  r4 = (vec4<f32>(0.25f, 1.0f, 0.25f, 1.0f) * cb6_6.tint_symbol_1[bitcast<i32>(r0.w)].yxyz);
  r6 = dpdx(r1.yzwz);
  r6 = (r4.yzwz * r6);
  r1 = dpdy(r1);
  r1 = (r4 * r1);
  let v_41 = (r1.yw * r6.yw);
  r4 = vec4<f32>(v_41.xy, r4.zw);
  let v_42 = -(r4.xyxx);
  let v_43 = fma(r6.xz, r1.xz, v_42.xy);
  r4 = vec4<f32>(v_43.xy, r4.zw);
  r0.w = (1.0f / r4.x);
  r1.x = (r1.y * r6.z);
  let v_44 = -(r1.xxxx);
  r4.z = fma(r6.x, r1.w, v_44.z);
  let v_45 = (r0.ww * r4.yz);
  r1 = vec4<f32>(v_45.xy, r1.zw);
  let v_46 = max(r1.xy, vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_46.xy, r1.zw);
  let v_47 = min(r1.xy, vec2<f32>(1.0f));
  r1 = vec4<f32>(v_47.xy, r1.zw);
  r4 = (r2.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_48 = (r2.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r6 = vec4<f32>(v_48.xy, r6.zw);
  let v_49 = (r2.xy * r0.yz);
  r3 = vec4<f32>(v_49.xy, r3.zw);
  r5.z = dot(r1.xy, r3.xy);
  let v_50 = (r3.xyz + r5.xyz);
  r7 = vec4<f32>(v_50.xyz, r7.w);
  let v_51 = (-(r2.yyyx)).zw;
  r2 = vec4<f32>(r2.xy, v_51.xy);
  r8 = (r0.yzyz * r2.zxyw);
  let v_52 = (r8.xy * vec2<f32>(0.5f));
  r3 = vec4<f32>(v_52.xy, r3.zw);
  r5.w = dot(r1.xy, r3.xy);
  let v_53 = (r3.xyz + r5.xyw);
  r9 = vec4<f32>(v_53.xyz, r9.w);
  let v_54 = ((-(r2.xxxy)).zw * r0.yz);
  r1 = vec4<f32>(r1.xy, v_54.xy);
  let v_55 = (r1.zw * vec2<f32>(0.75f));
  r3 = vec4<f32>(v_55.xy, r3.zw);
  r2.x = dot(r1.xy, r3.xy);
  let v_56 = r5;
  let v_57 = r2;
  r2 = vec4<f32>(v_57.x, v_56.xy, v_57.w);
  let v_58 = (r2.yzx + r3.xyz);
  r10 = vec4<f32>(v_58.xyz, r10.w);
  let v_59 = (r8.zw * vec2<f32>(0.25f));
  r3 = vec4<f32>(v_59.xy, r3.zw);
  r2.w = dot(r1.xy, r3.xy);
  let v_60 = (r2.yzw + r3.xyz);
  r8 = vec4<f32>(v_60.xyz, r8.w);
  r11 = (r0.yzyz * r4);
  r2.x = dot(r1.xy, r11.xy);
  let v_61 = r11;
  r3 = vec4<f32>(v_61.xy, r3.zw);
  let v_62 = (r2.yzx + r3.xyz);
  r12 = vec4<f32>(v_62.xyz, r12.w);
  r13 = (r4.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r13 = (r0.yzyz * r13);
  let v_63 = (r13.xy * vec2<f32>(0.5f));
  r3 = vec4<f32>(v_63.xy, r3.zw);
  r2.w = dot(r1.xy, r3.xy);
  let v_64 = (r2.yzw + r3.xyz);
  r14 = vec4<f32>(v_64.xyz, r14.w);
  let v_65 = -(r4);
  r15 = (r0.yzyz * v_65);
  r15 = (r15 * vec4<f32>(0.75f));
  r2.x = dot(r1.xy, r15.xy);
  let v_66 = r15;
  r3 = vec4<f32>(v_66.xy, r3.zw);
  let v_67 = (r2.yzx + r3.xyz);
  r16 = vec4<f32>(v_67.xyz, r16.w);
  let v_68 = (r13.zw * vec2<f32>(0.25f));
  r3 = vec4<f32>(v_68.xy, r3.zw);
  r2.w = dot(r1.xy, r3.xy);
  let v_69 = (r2.yzw + r3.xyz);
  r13 = vec4<f32>(v_69.xyz, r13.w);
  r2.x = dot(r1.xy, r11.zw);
  let v_70 = r11;
  r3 = vec4<f32>(v_70.zw, r3.zw);
  let v_71 = (r2.yzx + r3.xyz);
  r11 = vec4<f32>(v_71.xyz, r11.w);
  r4 = (r4.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r4 = (r0.yzyz * r4);
  let v_72 = (r4.xy * vec2<f32>(0.5f));
  r3 = vec4<f32>(v_72.xy, r3.zw);
  r2.w = dot(r1.xy, r3.xy);
  let v_73 = (r2.yzw + r3.xyz);
  r17 = vec4<f32>(v_73.xyz, r17.w);
  r2.x = dot(r1.xy, r15.zw);
  let v_74 = r15;
  r3 = vec4<f32>(v_74.zw, r3.zw);
  let v_75 = (r2.yzx + r3.xyz);
  r15 = vec4<f32>(v_75.xyz, r15.w);
  let v_76 = (r4.zw * vec2<f32>(0.25f));
  r3 = vec4<f32>(v_76.xy, r3.zw);
  r2.w = dot(r1.xy, r3.xy);
  let v_77 = (r2.yzw + r3.xyz);
  r4 = vec4<f32>(v_77.xyz, r4.w);
  let v_78 = (r0.yz * r6.xy);
  r3 = vec4<f32>(v_78.xy, r3.zw);
  r2.x = dot(r1.xy, r3.xy);
  let v_79 = (r2.yzx + r3.xyz);
  r18 = vec4<f32>(v_79.xyz, r18.w);
  let v_80 = (-(r6.yyyx)).zw;
  r6 = vec4<f32>(r6.xy, v_80.xy);
  r19 = (r0.yzyz * r6.zxyw);
  let v_81 = (r19.xy * vec2<f32>(0.5f));
  r3 = vec4<f32>(v_81.xy, r3.zw);
  r2.w = dot(r1.xy, r3.xy);
  let v_82 = (r2.yzw + r3.xyz);
  r20 = vec4<f32>(v_82.xyz, r20.w);
  let v_83 = -(r6.xxyx);
  let v_84 = (r0.yz * v_83.yz);
  let v_85 = r0;
  r0 = vec4<f32>(v_85.x, v_84.xy, v_85.w);
  let v_86 = (r0.yz * vec2<f32>(0.75f));
  r3 = vec4<f32>(v_86.xy, r3.zw);
  r2.x = dot(r1.xy, r3.xy);
  let v_87 = (r2.yzx + r3.xyz);
  r0 = vec4<f32>(r0.x, v_87.xyz);
  let v_88 = (r19.zw * vec2<f32>(0.25f));
  r3 = vec4<f32>(v_88.xy, r3.zw);
  r2.w = dot(r1.xy, r3.xy);
  let v_89 = (r2.yzw + r3.xyz);
  r1 = vec4<f32>(v_89.xyz, r1.w);
  let v_90 = r7.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_90.xy, r7.z);
  let v_91 = r9.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_91.xy, r9.z);
  let v_92 = r10.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_92.xy, r10.z);
  let v_93 = r8.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_93.xy, r8.z);
  let v_94 = r12.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_94.xy, r12.z);
  let v_95 = r14.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_95.xy, r14.z);
  let v_96 = r16.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_96.xy, r16.z);
  let v_97 = r13.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_97.xy, r13.z);
  let v_98 = r11.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_98.xy, r11.z);
  let v_99 = r17.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_99.xy, r17.z);
  let v_100 = r15.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_100.xy, r15.z);
  let v_101 = r4.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_101.xy, r4.z);
  let v_102 = r18.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_102.xy, r18.z);
  let v_103 = r20.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_103.xy, r20.z);
  let v_104 = r0.yzyy;
  r4.z = textureSampleCompareLevel(t15, s15, v_104.xy, r0.w);
  let v_105 = r1.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_105.xy, r1.z);
  r1 = (r2 + r6);
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
  r0.y = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.0f)).y, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_106 = fma(r0.xx, r0.yy, r1.xy);
  r0 = vec4<f32>(v_106.xy, r0.zw);
  let v_107 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_107.xy, r0.zw);
  let v_108 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_108.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r0.w = (r0.y * r0.x);
  let v_109 = bitcast<u32>(r0.z);
  let v_110 = r0.w;
  r0.x = select(r0.x, v_110, (v_109 != 0u));
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
