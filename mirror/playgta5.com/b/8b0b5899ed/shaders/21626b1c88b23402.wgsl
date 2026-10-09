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
  let v_12 = (r0.www * v3.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = (r1.xy * vec2<f32>(0.015625f));
  r1 = vec4<f32>(v_13.xy, r1.zw);
  let v_14 = textureSample(t14, s14, r1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r1.z = (r1.z * cb12_12.tint_symbol_2[0u].w);
  let v_15 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_15.xy, r3.zw);
  let v_16 = fma(r2.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r1 = vec4<f32>(v_16.xy, r1.z, v_16.z);
  let v_17 = &(x0[0u]);
  let v_18 = r1;
  *(v_17) = vec4<f32>(v_18.xyw, (*(v_17)).w);
  let v_19 = fma(r2.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = &(x0[1u]);
  let v_21 = r4;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r2.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  let v_23 = &(x0[2u]);
  let v_24 = r2;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = &(x0[3u]);
  let v_26 = r2;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  let v_27 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(5.59999990463256835938f, 1.39999997615814208984f));
  r2 = vec4<f32>(r2.xy, v_27.xy);
  r1.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  let v_28 = -(r1.zzzz);
  r1.z = fma(r1.w, 0.5f, v_28.z);
  let v_29 = abs(r2.yyyy);
  let v_30 = max(v_29.xy, abs(r2.xxxx).xy);
  r2 = vec4<f32>(v_30.xy, r2.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.z)));
  let v_31 = (bitcast<u32>(r1.w) != 0u);
  let v_32 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.w = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_32, v_31);
  let v_33 = abs(r4.yyyy);
  r2.x = max(v_33.x, abs(r4.xxxx).x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.z)));
  let v_34 = bitcast<u32>(r2.x);
  r1.w = select(r1.w, bitcast<f32>(v.tint_symbol_4[2i].x), (v_34 != 0u));
  let v_35 = abs(r1.yyyy);
  r1.x = max(v_35.x, abs(r1.xxxx).x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r1.z)));
  let v_36 = bitcast<u32>(r1.x);
  r1.x = select(r1.w, 0.0f, (v_36 != 0u));
  let v_37 = x0[bitcast<i32>(r1.x)];
  r1 = vec4<f32>(r1.x, v_37.xyz);
  r1.x = f32(bitcast<i32>(r1.x));
  r2.x = (r1.x + 0.5f);
  r2.x = (r2.x * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.xxxx)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r1.x = dot(r4, cb6_6.tint_symbol_1[12u]);
  r4.x = dot(r4, cb6_6.tint_symbol_1[13u]);
  r5.x = (r1.y + 0.5f);
  r5.y = fma(r1.z, 0.25f, r2.x);
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r1.x == 0.0f))));
  r1.x = ((-(r1.xxxx)).x + r1.w);
  let v_38 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_38.xy, r6.z, v_38.z);
  r6.z = dpdx(r1.x);
  let v_39 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_39.xyz, r7.w);
  r7.w = dpdy(r1.x);
  let v_40 = (r6.yw * r7.yw);
  let v_41 = r4;
  r4 = vec4<f32>(v_41.x, v_40.xy, v_41.w);
  let v_42 = -(r4.yzyy);
  let v_43 = fma(r6.xz, r7.xz, v_42.xy);
  r8 = vec4<f32>(v_43.xy, r8.zw);
  r1.z = (1.0f / r8.x);
  r2.x = (r6.z * r7.y);
  let v_44 = -(r2.xxxx);
  r8.z = fma(r6.x, r7.w, v_44.z);
  let v_45 = (r1.zz * r8.yz);
  let v_46 = r4;
  r4 = vec4<f32>(v_46.x, v_45.xy, v_46.w);
  let v_47 = max(r4.yz, vec2<f32>());
  let v_48 = r4;
  r4 = vec4<f32>(v_48.x, v_47.xy, v_48.w);
  let v_49 = min(r4.yz, vec2<f32>(0.5f));
  let v_50 = r4;
  r4 = vec4<f32>(v_50.x, v_49.xy, v_50.w);
  r1.x = fma((-(r4.xxxx)).x, r4.y, r1.x);
  r1.x = fma((-(r4.xxxx)).x, r4.z, r1.x);
  let v_51 = bitcast<u32>(r1.y);
  let v_52 = r1.x;
  r5.z = select(r1.w, v_52, (v_51 != 0u));
  r1 = (r3.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_53 = (r3.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r4 = vec4<f32>(v_53.xy, r4.zw);
  let v_54 = (r3.xy * r2.zw);
  r6 = vec4<f32>(v_54.xy, r6.zw);
  r6.z = 0.0f;
  let v_55 = (r5.xyz + r6.xyz);
  r6 = vec4<f32>(v_55.xyz, r6.w);
  let v_56 = (-(r3.yyyx)).zw;
  r3 = vec4<f32>(r3.xy, v_56.xy);
  r7 = (r2.zwzw * r3.zxyw);
  let v_57 = (r7.xy * vec2<f32>(0.5f));
  r8 = vec4<f32>(v_57.xy, r8.zw);
  r8.z = 0.0f;
  let v_58 = (r5.xyz + r8.xyz);
  r8 = vec4<f32>(v_58.xyz, r8.w);
  let v_59 = ((-(r3.xyxx)).xy * r2.zw);
  r3 = vec4<f32>(v_59.xy, r3.zw);
  let v_60 = (r3.xy * vec2<f32>(0.75f));
  r3 = vec4<f32>(v_60.xy, r3.zw);
  r3.z = 0.0f;
  let v_61 = (r3.xyz + r5.xyz);
  r3 = vec4<f32>(v_61.xyz, r3.w);
  let v_62 = (r7.zw * vec2<f32>(0.25f));
  r7 = vec4<f32>(v_62.xy, r7.zw);
  r7.z = 0.0f;
  let v_63 = (r5.xyz + r7.xyz);
  r7 = vec4<f32>(v_63.xyz, r7.w);
  r9 = (r1.zwxy * r2.zwzw);
  let v_64 = r9;
  r10 = vec4<f32>(v_64.zw, r10.zw);
  r10.z = 0.0f;
  let v_65 = (r5.xyz + r10.xyz);
  r10 = vec4<f32>(v_65.xyz, r10.w);
  r11 = (r1.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r11 = (r2.zwzw * r11);
  let v_66 = (r11.xy * vec2<f32>(0.5f));
  r12 = vec4<f32>(v_66.xy, r12.zw);
  r12.z = 0.0f;
  let v_67 = (r5.xyz + r12.xyz);
  r12 = vec4<f32>(v_67.xyz, r12.w);
  r13 = (-(r1) * r2.zwzw);
  r13 = (r13.zwxy * vec4<f32>(0.75f));
  let v_68 = r13;
  r14 = vec4<f32>(v_68.zw, r14.zw);
  r14.z = 0.0f;
  let v_69 = (r5.xyz + r14.xyz);
  r14 = vec4<f32>(v_69.xyz, r14.w);
  let v_70 = (r11.zw * vec2<f32>(0.25f));
  r11 = vec4<f32>(v_70.xy, r11.zw);
  r11.z = 0.0f;
  let v_71 = (r5.xyz + r11.xyz);
  r11 = vec4<f32>(v_71.xyz, r11.w);
  r9.z = 0.0f;
  let v_72 = (r5.xyz + r9.xyz);
  r9 = vec4<f32>(v_72.xyz, r9.w);
  r1 = (r1.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r1 = (r1 * r2.zwzw);
  let v_73 = (r1.xy * vec2<f32>(0.5f));
  r15 = vec4<f32>(v_73.xy, r15.zw);
  r15.z = 0.0f;
  let v_74 = (r5.xyz + r15.xyz);
  r15 = vec4<f32>(v_74.xyz, r15.w);
  r13.z = 0.0f;
  let v_75 = (r5.xyz + r13.xyz);
  r13 = vec4<f32>(v_75.xyz, r13.w);
  let v_76 = (r1.zw * vec2<f32>(0.25f));
  r1 = vec4<f32>(v_76.xy, r1.zw);
  r1.z = 0.0f;
  let v_77 = (r1.xyz + r5.xyz);
  r1 = vec4<f32>(v_77.xyz, r1.w);
  let v_78 = (r2.zw * r4.xy);
  r16 = vec4<f32>(v_78.xy, r16.zw);
  r16.z = 0.0f;
  let v_79 = (r5.xyz + r16.xyz);
  r16 = vec4<f32>(v_79.xyz, r16.w);
  let v_80 = (-(r4.yyyx)).zw;
  r4 = vec4<f32>(r4.xy, v_80.xy);
  r17 = (r2.zwzw * r4.zxyw);
  let v_81 = (r17.xy * vec2<f32>(0.5f));
  r18 = vec4<f32>(v_81.xy, r18.zw);
  r18.z = 0.0f;
  let v_82 = (r5.xyz + r18.xyz);
  r18 = vec4<f32>(v_82.xyz, r18.w);
  let v_83 = -(r4.xxyx);
  let v_84 = (r2.zw * v_83.xz);
  let v_85 = r2;
  r2 = vec4<f32>(v_84.x, v_85.y, v_84.y, v_85.w);
  let v_86 = (r2.xz * vec2<f32>(0.75f));
  r4 = vec4<f32>(v_86.xy, r4.zw);
  r4.z = 0.0f;
  let v_87 = (r4.xyz + r5.xyz);
  r2 = vec4<f32>(v_87.x, r2.y, v_87.yz);
  let v_88 = (r17.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_88.xy, r4.zw);
  r4.z = 0.0f;
  let v_89 = (r4.xyz + r5.xyz);
  r4 = vec4<f32>(v_89.xyz, r4.w);
  let v_90 = r6.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_90.xy, r6.z);
  let v_91 = r8.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_91.xy, r8.z);
  let v_92 = r3.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_92.xy, r3.z);
  let v_93 = r7.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_93.xy, r7.z);
  let v_94 = r10.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_94.xy, r10.z);
  let v_95 = r12.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_95.xy, r12.z);
  let v_96 = r14.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_96.xy, r14.z);
  let v_97 = r11.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_97.xy, r11.z);
  let v_98 = r9.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_98.xy, r9.z);
  let v_99 = r15.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_99.xy, r15.z);
  let v_100 = r13.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_100.xy, r13.z);
  let v_101 = r1.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_101.xy, r1.z);
  let v_102 = r16.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_102.xy, r16.z);
  let v_103 = r18.xyxx;
  r1.y = textureSampleCompareLevel(t15, s15, v_103.xy, r18.z);
  let v_104 = r2.xzxx;
  r1.z = textureSampleCompareLevel(t15, s15, v_104.xy, r2.w);
  let v_105 = r4.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_105.xy, r4.z);
  r3 = (r3 + r6);
  r3 = (r7 + r3);
  r1 = (r1 + r3);
  r1.x = dot(r1, vec4<f32>(1.0f));
  r1.x = (r1.x * 0.0625f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r1.z = textureSample(t2, s2, r5.xyxx.xy).w;
    r1.y = ((-(r1.zzzz)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  r1.z = clamp(fma(r2.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).z, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_106 = fma(r0.ww, r1.zz, r1.xy);
  r1 = vec4<f32>(v_106.xy, r1.zw);
  let v_107 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_107.xy, r1.zw);
  let v_108 = min(r1.xy, vec2<f32>(1.0f));
  let v_109 = r1;
  r1 = vec4<f32>(v_109.x, v_108.xy, v_109.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r1.z * r1.y);
  let v_110 = bitcast<u32>(r0.w);
  let v_111 = r1.w;
  r1.x = select(r1.y, v_111, (v_110 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_112 = r2;
  r2 = vec4<f32>(v_112.x, 0.0f, v_112.z, 0.5f);
  let v_113 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_113.xy, r0.zw);
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
