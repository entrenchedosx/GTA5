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
  let v_8 = (r0.www * v3.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  let v_10 = (r2.xy * vec2<f32>(0.015625f));
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r2 = textureSample(t14, s14, r2.xyxx.xy);
  r1.w = (r2.z * cb12_12.tint_symbol_2[0u].w);
  let v_11 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_11.xy, r2.zw);
  let v_12 = fma(r1.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = &(x0[0u]);
  let v_14 = r3;
  *(v_13) = vec4<f32>(v_14.xyz, (*(v_13)).w);
  let v_15 = fma(r1.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  let v_16 = &(x0[1u]);
  let v_17 = r4;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = fma(r1.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = &(x0[2u]);
  let v_20 = r1;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = &(x0[3u]);
  let v_22 = r1;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  let v_23 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(5.59999990463256835938f, 1.39999997615814208984f));
  r3 = vec4<f32>(r3.xy, v_23.xy);
  r1.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_24 = -(r1.wwww);
  r1.z = fma(r1.z, 0.5f, v_24.z);
  let v_25 = abs(r1.yyyy);
  let v_26 = max(v_25.xy, abs(r1.xxxx).xy);
  r1 = vec4<f32>(v_26.xy, r1.zw);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r1.z)));
  let v_27 = (bitcast<u32>(r1.x) != 0u);
  let v_28 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_28, v_27);
  let v_29 = abs(r4.yyyy);
  r1.w = max(v_29.w, abs(r4.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.z)));
  let v_30 = bitcast<u32>(r1.w);
  r1.x = select(r1.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_30 != 0u));
  let v_31 = abs(r3.yyyy);
  r1.w = max(v_31.w, abs(r3.xxxx).w);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.z)));
  let v_32 = bitcast<u32>(r1.z);
  r1.x = select(r1.x, 0.0f, (v_32 != 0u));
  let v_33 = x0[bitcast<i32>(r1.x)];
  r4 = vec4<f32>(v_33.xyz, r4.w);
  r1.x = f32(bitcast<i32>(r1.x));
  r1.z = (r1.x + 0.5f);
  r1.z = (r1.z * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.xxxx)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r1.x = dot(r5, cb6_6.tint_symbol_1[12u]);
  r1.w = dot(r5, cb6_6.tint_symbol_1[13u]);
  r5.x = (r4.x + 0.5f);
  r5.y = fma(r4.y, 0.25f, r1.z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((r1.x == 0.0f))));
  r1.x = ((-(r1.xxxx)).x + r4.z);
  let v_34 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_34.xy, r6.z, v_34.z);
  r6.z = dpdx(r1.x);
  let v_35 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_35.xyz, r7.w);
  r7.w = dpdy(r1.x);
  let v_36 = (r6.yw * r7.yw);
  r3 = vec4<f32>(v_36.xy, r3.zw);
  let v_37 = -(r3.xyxx);
  let v_38 = fma(r6.xz, r7.xz, v_37.xy);
  r8 = vec4<f32>(v_38.xy, r8.zw);
  r3.x = (1.0f / r8.x);
  r3.y = (r6.z * r7.y);
  let v_39 = -(r3.yyyy);
  r8.z = fma(r6.x, r7.w, v_39.z);
  let v_40 = (r3.xx * r8.yz);
  r3 = vec4<f32>(v_40.xy, r3.zw);
  let v_41 = max(r3.xy, vec2<f32>());
  r3 = vec4<f32>(v_41.xy, r3.zw);
  let v_42 = min(r3.xy, vec2<f32>(0.5f));
  r3 = vec4<f32>(v_42.xy, r3.zw);
  r1.x = fma((-(r1.wwww)).x, r3.x, r1.x);
  r1.x = fma((-(r1.wwww)).x, r3.y, r1.x);
  let v_43 = bitcast<u32>(r1.z);
  let v_44 = r1.x;
  r5.z = select(r4.z, v_44, (v_43 != 0u));
  r4 = (r2.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_45 = (r2.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r6 = vec4<f32>(v_45.xy, r6.zw);
  let v_46 = (r2.xy * r3.zw);
  r7 = vec4<f32>(v_46.xy, r7.zw);
  r7.z = 0.0f;
  let v_47 = (r5.xyz + r7.xyz);
  r1 = vec4<f32>(v_47.x, r1.y, v_47.yz);
  let v_48 = (-(r2.yyyx)).zw;
  r2 = vec4<f32>(r2.xy, v_48.xy);
  r7 = (r2.zxyw * r3.zwzw);
  let v_49 = (r7.xy * vec2<f32>(0.5f));
  r8 = vec4<f32>(v_49.xy, r8.zw);
  r8.z = 0.0f;
  let v_50 = (r5.xyz + r8.xyz);
  r8 = vec4<f32>(v_50.xyz, r8.w);
  let v_51 = ((-(r2.xyxx)).xy * r3.zw);
  r2 = vec4<f32>(v_51.xy, r2.zw);
  let v_52 = (r2.xy * vec2<f32>(0.75f));
  r2 = vec4<f32>(v_52.xy, r2.zw);
  r2.z = 0.0f;
  let v_53 = (r2.xyz + r5.xyz);
  r2 = vec4<f32>(v_53.xyz, r2.w);
  let v_54 = (r7.zw * vec2<f32>(0.25f));
  r7 = vec4<f32>(v_54.xy, r7.zw);
  r7.z = 0.0f;
  let v_55 = (r5.xyz + r7.xyz);
  r7 = vec4<f32>(v_55.xyz, r7.w);
  r9 = (r3.zwzw * r4.zwxy);
  let v_56 = r9;
  r10 = vec4<f32>(v_56.zw, r10.zw);
  r10.z = 0.0f;
  let v_57 = (r5.xyz + r10.xyz);
  r10 = vec4<f32>(v_57.xyz, r10.w);
  r11 = (r4.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r11 = (r3.zwzw * r11);
  let v_58 = (r11.xy * vec2<f32>(0.5f));
  r12 = vec4<f32>(v_58.xy, r12.zw);
  r12.z = 0.0f;
  let v_59 = (r5.xyz + r12.xyz);
  r12 = vec4<f32>(v_59.xyz, r12.w);
  let v_60 = -(r4);
  r13 = (r3.zwzw * v_60);
  r13 = (r13.zwxy * vec4<f32>(0.75f));
  let v_61 = r13;
  r14 = vec4<f32>(v_61.zw, r14.zw);
  r14.z = 0.0f;
  let v_62 = (r5.xyz + r14.xyz);
  r14 = vec4<f32>(v_62.xyz, r14.w);
  let v_63 = (r11.zw * vec2<f32>(0.25f));
  r11 = vec4<f32>(v_63.xy, r11.zw);
  r11.z = 0.0f;
  let v_64 = (r5.xyz + r11.xyz);
  r11 = vec4<f32>(v_64.xyz, r11.w);
  r9.z = 0.0f;
  let v_65 = (r5.xyz + r9.xyz);
  r9 = vec4<f32>(v_65.xyz, r9.w);
  r4 = (r4.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r4 = (r3.zwzw * r4);
  let v_66 = (r4.xy * vec2<f32>(0.5f));
  r15 = vec4<f32>(v_66.xy, r15.zw);
  r15.z = 0.0f;
  let v_67 = (r5.xyz + r15.xyz);
  r15 = vec4<f32>(v_67.xyz, r15.w);
  r13.z = 0.0f;
  let v_68 = (r5.xyz + r13.xyz);
  r13 = vec4<f32>(v_68.xyz, r13.w);
  let v_69 = (r4.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_69.xy, r4.zw);
  r4.z = 0.0f;
  let v_70 = (r4.xyz + r5.xyz);
  r4 = vec4<f32>(v_70.xyz, r4.w);
  let v_71 = (r3.zw * r6.xy);
  r16 = vec4<f32>(v_71.xy, r16.zw);
  r16.z = 0.0f;
  let v_72 = (r5.xyz + r16.xyz);
  r16 = vec4<f32>(v_72.xyz, r16.w);
  let v_73 = (-(r6.yyyx)).zw;
  r6 = vec4<f32>(r6.xy, v_73.xy);
  r17 = (r3.zwzw * r6.zxyw);
  let v_74 = (r17.xy * vec2<f32>(0.5f));
  r18 = vec4<f32>(v_74.xy, r18.zw);
  r18.z = 0.0f;
  let v_75 = (r5.xyz + r18.xyz);
  r18 = vec4<f32>(v_75.xyz, r18.w);
  let v_76 = -(r6.xyxx);
  let v_77 = (r3.zw * v_76.xy);
  r3 = vec4<f32>(v_77.xy, r3.zw);
  let v_78 = (r3.xy * vec2<f32>(0.75f));
  r3 = vec4<f32>(v_78.xy, r3.zw);
  r3.z = 0.0f;
  let v_79 = (r3.xyz + r5.xyz);
  r3 = vec4<f32>(v_79.xyz, r3.w);
  let v_80 = (r17.zw * vec2<f32>(0.25f));
  r6 = vec4<f32>(v_80.xy, r6.zw);
  r6.z = 0.0f;
  let v_81 = (r5.xyz + r6.xyz);
  r6 = vec4<f32>(v_81.xyz, r6.w);
  let v_82 = r1.xzxx;
  r17.x = textureSampleCompareLevel(t15, s15, v_82.xy, r1.w);
  let v_83 = r8.xyxx;
  r17.y = textureSampleCompareLevel(t15, s15, v_83.xy, r8.z);
  let v_84 = r2.xyxx;
  r17.z = textureSampleCompareLevel(t15, s15, v_84.xy, r2.z);
  let v_85 = r7.xyxx;
  r17.w = textureSampleCompareLevel(t15, s15, v_85.xy, r7.z);
  let v_86 = r10.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_86.xy, r10.z);
  let v_87 = r12.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_87.xy, r12.z);
  let v_88 = r14.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_88.xy, r14.z);
  let v_89 = r11.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_89.xy, r11.z);
  let v_90 = r9.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_90.xy, r9.z);
  let v_91 = r15.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_91.xy, r15.z);
  let v_92 = r13.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_92.xy, r13.z);
  let v_93 = r4.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_93.xy, r4.z);
  let v_94 = r16.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_94.xy, r16.z);
  let v_95 = r18.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_95.xy, r18.z);
  let v_96 = r3.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_96.xy, r3.z);
  let v_97 = r6.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_97.xy, r6.z);
  r2 = (r2 + r17);
  r2 = (r7 + r2);
  r2 = (r4 + r2);
  r1.x = dot(r2, vec4<f32>(1.0f));
  r2.x = (r1.x * 0.0625f);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r3 = textureSample(t2, s2, r5.xyxx.xy);
    r2.y = ((-(r3.wwww)).y + 1.0f);
  } else {
    r2.y = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  r1.x = clamp(fma(r1.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).x, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_98 = fma(r0.ww, r1.xx, r2.xy);
  r1 = vec4<f32>(v_98.xy, r1.zw);
  let v_99 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_99.xy, r1.zw);
  let v_100 = min(r1.xy, vec2<f32>(1.0f));
  let v_101 = r1;
  r1 = vec4<f32>(v_101.x, v_100.xy, v_101.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r1.z * r1.y);
  let v_102 = bitcast<u32>(r0.w);
  let v_103 = r1.w;
  r1.x = select(r1.y, v_103, (v_102 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_104 = r2;
  r2 = vec4<f32>(v_104.x, 0.0f, v_104.z, 0.5f);
  let v_105 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_105.xy, r0.zw);
  r3 = textureSample(t5, s5, r0.xyxx.xy);
  r2.z = r3.y;
  r2 = textureSample(t6, s6, r2.zwzz.xy);
  r0.x = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).x, 0.0f, 1.0f);
  r0.x = sqrt(r0.x);
  r0.x = fma((-(r0.xxxx)).x, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.x = (r0.x * r2.x);
  o0 = (r0.xxxx * r1.xzzz);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
