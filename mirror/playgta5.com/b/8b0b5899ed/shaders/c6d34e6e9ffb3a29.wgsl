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
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = &(x0[2u]);
  let v_20 = r5;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = fma(r1.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  let v_22 = &(x0[3u]);
  let v_23 = r1;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  let v_24 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(5.59999990463256835938f, 1.39999997615814208984f));
  r3 = vec4<f32>(r3.xy, v_24.xy);
  r1.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_25 = -(r1.wwww);
  r1.z = fma(r1.z, 0.5f, v_25.z);
  let v_26 = abs(r5.yyyy);
  r1.w = max(v_26.w, abs(r5.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.z)));
  let v_27 = (bitcast<u32>(r1.w) != 0u);
  let v_28 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.w = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_28, v_27);
  let v_29 = abs(r4.yyyy);
  r4.x = max(v_29.x, abs(r4.xxxx).x);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r4.x < r1.z)));
  let v_30 = bitcast<u32>(r4.x);
  r1.w = select(r1.w, bitcast<f32>(v.tint_symbol_4[2i].x), (v_30 != 0u));
  let v_31 = abs(r3.yyyy);
  r3.x = max(v_31.x, abs(r3.xxxx).x);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r3.x < r1.z)));
  let v_32 = bitcast<u32>(r1.z);
  r1.z = select(r1.w, 0.0f, (v_32 != 0u));
  let v_33 = x0[bitcast<i32>(r1.z)];
  r4 = vec4<f32>(v_33.xyz, r4.w);
  r1.z = f32(bitcast<i32>(r1.z));
  r1.w = (r1.z + 0.5f);
  r1.w = (r1.w * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.zzzz)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r1.z = dot(r5, cb6_6.tint_symbol_1[12u]);
  r3.x = dot(r5, cb6_6.tint_symbol_1[13u]);
  r5.x = (r4.x + 0.5f);
  r5.y = fma(r4.y, 0.25f, r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((r1.z == 0.0f))));
  r1.z = ((-(r1.zzzz)).z + r4.z);
  let v_34 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_34.xy, r6.z, v_34.z);
  r6.z = dpdx(r1.z);
  let v_35 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_35.xyz, r7.w);
  r7.w = dpdy(r1.z);
  let v_36 = (r6.yw * r7.yw);
  r4 = vec4<f32>(v_36.xy, r4.zw);
  let v_37 = -(r4.xyxx);
  let v_38 = fma(r6.xz, r7.xz, v_37.xy);
  r8 = vec4<f32>(v_38.xy, r8.zw);
  r3.y = (1.0f / r8.x);
  r4.x = (r6.z * r7.y);
  let v_39 = -(r4.xxxx);
  r8.z = fma(r6.x, r7.w, v_39.z);
  let v_40 = (r3.yy * r8.yz);
  r4 = vec4<f32>(v_40.xy, r4.zw);
  let v_41 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_41.xy, r4.zw);
  let v_42 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_42.xy, r4.zw);
  r1.z = fma((-(r3.xxxx)).z, r4.x, r1.z);
  r1.z = fma((-(r3.xxxx)).z, r4.y, r1.z);
  let v_43 = bitcast<u32>(r1.w);
  let v_44 = r1.z;
  r5.z = select(r4.z, v_44, (v_43 != 0u));
  r4 = (r2.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_45 = (r2.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r6 = vec4<f32>(v_45.xy, r6.zw);
  let v_46 = (r2.xy * r3.zw);
  r7 = vec4<f32>(v_46.xy, r7.zw);
  r7.z = 0.0f;
  let v_47 = (r5.xyz + r7.xyz);
  r7 = vec4<f32>(v_47.xyz, r7.w);
  let v_48 = (-(r2.yyyx)).zw;
  r2 = vec4<f32>(r2.xy, v_48.xy);
  r8 = (r2.zxyw * r3.zwzw);
  let v_49 = (r8.xy * vec2<f32>(0.5f));
  r9 = vec4<f32>(v_49.xy, r9.zw);
  r9.z = 0.0f;
  let v_50 = (r5.xyz + r9.xyz);
  r9 = vec4<f32>(v_50.xyz, r9.w);
  let v_51 = ((-(r2.xxxy)).zw * r3.zw);
  r1 = vec4<f32>(r1.xy, v_51.xy);
  let v_52 = (r1.zw * vec2<f32>(0.75f));
  r2 = vec4<f32>(v_52.xy, r2.zw);
  r2.z = 0.0f;
  let v_53 = (r2.xyz + r5.xyz);
  r2 = vec4<f32>(v_53.xyz, r2.w);
  let v_54 = (r8.zw * vec2<f32>(0.25f));
  r8 = vec4<f32>(v_54.xy, r8.zw);
  r8.z = 0.0f;
  let v_55 = (r5.xyz + r8.xyz);
  r8 = vec4<f32>(v_55.xyz, r8.w);
  r10 = (r3.zwzw * r4.zwxy);
  let v_56 = r10;
  r11 = vec4<f32>(v_56.zw, r11.zw);
  r11.z = 0.0f;
  let v_57 = (r5.xyz + r11.xyz);
  r11 = vec4<f32>(v_57.xyz, r11.w);
  r12 = (r4.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r12 = (r3.zwzw * r12);
  let v_58 = (r12.xy * vec2<f32>(0.5f));
  r13 = vec4<f32>(v_58.xy, r13.zw);
  r13.z = 0.0f;
  let v_59 = (r5.xyz + r13.xyz);
  r13 = vec4<f32>(v_59.xyz, r13.w);
  let v_60 = -(r4);
  r14 = (r3.zwzw * v_60);
  r14 = (r14.zwxy * vec4<f32>(0.75f));
  let v_61 = r14;
  r15 = vec4<f32>(v_61.zw, r15.zw);
  r15.z = 0.0f;
  let v_62 = (r5.xyz + r15.xyz);
  r15 = vec4<f32>(v_62.xyz, r15.w);
  let v_63 = (r12.zw * vec2<f32>(0.25f));
  r12 = vec4<f32>(v_63.xy, r12.zw);
  r12.z = 0.0f;
  let v_64 = (r5.xyz + r12.xyz);
  r12 = vec4<f32>(v_64.xyz, r12.w);
  r10.z = 0.0f;
  let v_65 = (r5.xyz + r10.xyz);
  r10 = vec4<f32>(v_65.xyz, r10.w);
  r4 = (r4.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r4 = (r3.zwzw * r4);
  let v_66 = (r4.xy * vec2<f32>(0.5f));
  r16 = vec4<f32>(v_66.xy, r16.zw);
  r16.z = 0.0f;
  let v_67 = (r5.xyz + r16.xyz);
  r16 = vec4<f32>(v_67.xyz, r16.w);
  r14.z = 0.0f;
  let v_68 = (r5.xyz + r14.xyz);
  r14 = vec4<f32>(v_68.xyz, r14.w);
  let v_69 = (r4.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_69.xy, r4.zw);
  r4.z = 0.0f;
  let v_70 = (r4.xyz + r5.xyz);
  r4 = vec4<f32>(v_70.xyz, r4.w);
  let v_71 = (r3.zw * r6.xy);
  r17 = vec4<f32>(v_71.xy, r17.zw);
  r17.z = 0.0f;
  let v_72 = (r5.xyz + r17.xyz);
  r17 = vec4<f32>(v_72.xyz, r17.w);
  let v_73 = (-(r6.yyyx)).zw;
  r6 = vec4<f32>(r6.xy, v_73.xy);
  r18 = (r3.zwzw * r6.zxyw);
  let v_74 = (r18.xy * vec2<f32>(0.5f));
  r19 = vec4<f32>(v_74.xy, r19.zw);
  r19.z = 0.0f;
  let v_75 = (r5.xyz + r19.xyz);
  r19 = vec4<f32>(v_75.xyz, r19.w);
  let v_76 = -(r6.xxxy);
  let v_77 = (r3.zw * v_76.zw);
  r1 = vec4<f32>(r1.xy, v_77.xy);
  let v_78 = (r1.zw * vec2<f32>(0.75f));
  r3 = vec4<f32>(v_78.xy, r3.zw);
  r3.z = 0.0f;
  let v_79 = (r3.xyz + r5.xyz);
  r3 = vec4<f32>(v_79.xyz, r3.w);
  let v_80 = (r18.zw * vec2<f32>(0.25f));
  r6 = vec4<f32>(v_80.xy, r6.zw);
  r6.z = 0.0f;
  let v_81 = (r5.xyz + r6.xyz);
  r6 = vec4<f32>(v_81.xyz, r6.w);
  let v_82 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_82.xy, r7.z);
  let v_83 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_83.xy, r9.z);
  let v_84 = r2.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_84.xy, r2.z);
  let v_85 = r8.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_85.xy, r8.z);
  let v_86 = r11.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_86.xy, r11.z);
  let v_87 = r13.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_87.xy, r13.z);
  let v_88 = r15.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_88.xy, r15.z);
  let v_89 = r12.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_89.xy, r12.z);
  let v_90 = r10.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_90.xy, r10.z);
  let v_91 = r16.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_91.xy, r16.z);
  let v_92 = r14.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_92.xy, r14.z);
  let v_93 = r4.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_93.xy, r4.z);
  let v_94 = r17.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_94.xy, r17.z);
  let v_95 = r19.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_95.xy, r19.z);
  let v_96 = r3.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_96.xy, r3.z);
  let v_97 = r6.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_97.xy, r6.z);
  r2 = (r2 + r7);
  r2 = (r8 + r2);
  r2 = (r4 + r2);
  r1.z = dot(r2, vec4<f32>(1.0f));
  r2.x = (r1.z * 0.0625f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r3 = textureSample(t2, s2, r5.xyxx.xy);
    r2.y = ((-(r3.wwww)).y + 1.0f);
  } else {
    r2.y = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  let v_98 = abs(r1.yyyy);
  r1.x = max(v_98.x, abs(r1.xxxx).x);
  r1.x = clamp(fma(r1.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_99 = fma(r0.ww, r1.xx, r2.xy);
  r1 = vec4<f32>(v_99.xy, r1.zw);
  let v_100 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_100.xy, r1.zw);
  let v_101 = min(r1.xy, vec2<f32>(1.0f));
  let v_102 = r1;
  r1 = vec4<f32>(v_102.x, v_101.xy, v_102.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r1.z * r1.y);
  let v_103 = bitcast<u32>(r0.w);
  let v_104 = r1.w;
  r1.x = select(r1.y, v_104, (v_103 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_105 = r2;
  r2 = vec4<f32>(v_105.x, 0.0f, v_105.z, 0.5f);
  let v_106 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_106.xy, r0.zw);
  r3 = textureSample(t5, s5, r0.xyxx.xy);
  r2.z = r3.y;
  r2 = textureSample(t6, s6, r2.zwzz.xy);
  r0.x = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).x, 0.0f, 1.0f);
  r0.x = sqrt(r0.x);
  r0.x = fma((-(r0.xxxx)).x, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.x = (r0.x * r2.x);
  let v_107 = (r0.xx * r1.xz);
  r0 = vec4<f32>(v_107.xy, r0.zw);
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
