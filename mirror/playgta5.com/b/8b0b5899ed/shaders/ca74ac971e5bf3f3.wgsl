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

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

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
  let v_8 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = r1.xy;
  let v_10 = max(v_9, vec2<f32>(-2147483648.0f));
  let v_11 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_10), vec2<i32>(2147483647i), (v_10 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_9 == v_9))));
  r2 = vec4<f32>(v_11.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0.w = textureLoad(t3, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r1.z = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.z);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_12 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = (r1.xy * vec2<f32>(0.015625f));
  r1 = vec4<f32>(v_13.xy, r1.zw);
  let v_14 = textureSample(t14, s14, r1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r1.z = (r1.z * cb12_12.tint_symbol_2[0u].w);
  let v_15 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_15.xy, r2.zw);
  let v_16 = fma(r0.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r1 = vec4<f32>(v_16.xy, r1.z, v_16.z);
  let v_17 = &(x0[0u]);
  let v_18 = r1;
  *(v_17) = vec4<f32>(v_18.xyw, (*(v_17)).w);
  let v_19 = fma(r0.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = &(x0[1u]);
  let v_21 = r3;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r0.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = &(x0[2u]);
  let v_24 = r4;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = fma(r0.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = &(x0[3u]);
  let v_27 = r0;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  let v_28 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(5.59999990463256835938f, 1.39999997615814208984f));
  r3 = vec4<f32>(r3.xy, v_28.xy);
  r0.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_29 = -(r1.zzzz);
  r0.z = fma(r0.z, 0.5f, v_29.z);
  let v_30 = abs(r4.yyyy);
  r1.z = max(v_30.z, abs(r4.xxxx).z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z < r0.z)));
  let v_31 = (bitcast<u32>(r1.z) != 0u);
  let v_32 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.z = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_32, v_31);
  let v_33 = abs(r3.yyyy);
  r1.w = max(v_33.w, abs(r3.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.z)));
  let v_34 = bitcast<u32>(r1.w);
  r1.z = select(r1.z, bitcast<f32>(v.tint_symbol_4[2i].x), (v_34 != 0u));
  let v_35 = abs(r1.yyyy);
  r1.x = max(v_35.x, abs(r1.xxxx).x);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.z)));
  let v_36 = bitcast<u32>(r0.z);
  r0.z = select(r1.z, 0.0f, (v_36 != 0u));
  let v_37 = x0[bitcast<i32>(r0.z)];
  r1 = vec4<f32>(v_37.xyz, r1.w);
  r0.z = f32(bitcast<i32>(r0.z));
  r1.w = (r0.z + 0.5f);
  r1.w = (r1.w * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.zzzz)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r0.z = dot(r4, cb6_6.tint_symbol_1[12u]);
  r3.x = dot(r4, cb6_6.tint_symbol_1[13u]);
  r4.x = (r1.x + 0.5f);
  r4.y = fma(r1.y, 0.25f, r1.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((r0.z == 0.0f))));
  r0.z = ((-(r0.zzzz)).z + r1.z);
  let v_38 = dpdx(r4.xyy);
  r5 = vec4<f32>(v_38.xy, r5.z, v_38.z);
  r5.z = dpdx(r0.z);
  let v_39 = dpdy(r4.yxy);
  r6 = vec4<f32>(v_39.xyz, r6.w);
  r6.w = dpdy(r0.z);
  let v_40 = (r5.yw * r6.yw);
  let v_41 = r1;
  r1 = vec4<f32>(v_41.x, v_40.x, v_41.z, v_40.y);
  let v_42 = -(r1.ywyy);
  let v_43 = fma(r5.xz, r6.xz, v_42.xy);
  r7 = vec4<f32>(v_43.xy, r7.zw);
  r1.y = (1.0f / r7.x);
  r1.w = (r5.z * r6.y);
  let v_44 = -(r1.wwww);
  r7.z = fma(r5.x, r6.w, v_44.z);
  let v_45 = (r1.yy * r7.yz);
  let v_46 = r1;
  r1 = vec4<f32>(v_46.x, v_45.x, v_46.z, v_45.y);
  let v_47 = max(r1.yw, vec2<f32>());
  let v_48 = r1;
  r1 = vec4<f32>(v_48.x, v_47.x, v_48.z, v_47.y);
  let v_49 = min(r1.yw, vec2<f32>(0.5f));
  let v_50 = r1;
  r1 = vec4<f32>(v_50.x, v_49.x, v_50.z, v_49.y);
  r0.z = fma((-(r3.xxxx)).z, r1.y, r0.z);
  r0.z = fma((-(r3.xxxx)).z, r1.w, r0.z);
  let v_51 = bitcast<u32>(r1.x);
  let v_52 = r0.z;
  r4.z = select(r1.z, v_52, (v_51 != 0u));
  r1 = (r2.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_53 = (r2.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r5 = vec4<f32>(v_53.xy, r5.zw);
  let v_54 = (r2.xy * r3.zw);
  r6 = vec4<f32>(v_54.xy, r6.zw);
  r6.z = 0.0f;
  let v_55 = (r4.xyz + r6.xyz);
  r6 = vec4<f32>(v_55.xyz, r6.w);
  let v_56 = (-(r2.yyyx)).zw;
  r2 = vec4<f32>(r2.xy, v_56.xy);
  r7 = (r2.zxyw * r3.zwzw);
  let v_57 = (r7.xy * vec2<f32>(0.5f));
  r8 = vec4<f32>(v_57.xy, r8.zw);
  r8.z = 0.0f;
  let v_58 = (r4.xyz + r8.xyz);
  r8 = vec4<f32>(v_58.xyz, r8.w);
  let v_59 = ((-(r2.xyxx)).xy * r3.zw);
  r2 = vec4<f32>(v_59.xy, r2.zw);
  let v_60 = (r2.xy * vec2<f32>(0.75f));
  r2 = vec4<f32>(v_60.xy, r2.zw);
  r2.z = 0.0f;
  let v_61 = (r2.xyz + r4.xyz);
  r2 = vec4<f32>(v_61.xyz, r2.w);
  let v_62 = (r7.zw * vec2<f32>(0.25f));
  r7 = vec4<f32>(v_62.xy, r7.zw);
  r7.z = 0.0f;
  let v_63 = (r4.xyz + r7.xyz);
  r7 = vec4<f32>(v_63.xyz, r7.w);
  r9 = (r1.zwxy * r3.zwzw);
  let v_64 = r9;
  r10 = vec4<f32>(v_64.zw, r10.zw);
  r10.z = 0.0f;
  let v_65 = (r4.xyz + r10.xyz);
  r10 = vec4<f32>(v_65.xyz, r10.w);
  r11 = (r1.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r11 = (r3.zwzw * r11);
  let v_66 = (r11.xy * vec2<f32>(0.5f));
  r12 = vec4<f32>(v_66.xy, r12.zw);
  r12.z = 0.0f;
  let v_67 = (r4.xyz + r12.xyz);
  r12 = vec4<f32>(v_67.xyz, r12.w);
  r13 = (-(r1) * r3.zwzw);
  r13 = (r13.zwxy * vec4<f32>(0.75f));
  let v_68 = r13;
  r14 = vec4<f32>(v_68.zw, r14.zw);
  r14.z = 0.0f;
  let v_69 = (r4.xyz + r14.xyz);
  r14 = vec4<f32>(v_69.xyz, r14.w);
  let v_70 = (r11.zw * vec2<f32>(0.25f));
  r11 = vec4<f32>(v_70.xy, r11.zw);
  r11.z = 0.0f;
  let v_71 = (r4.xyz + r11.xyz);
  r11 = vec4<f32>(v_71.xyz, r11.w);
  r9.z = 0.0f;
  let v_72 = (r4.xyz + r9.xyz);
  r9 = vec4<f32>(v_72.xyz, r9.w);
  r1 = (r1.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r1 = (r1 * r3.zwzw);
  let v_73 = (r1.xy * vec2<f32>(0.5f));
  r15 = vec4<f32>(v_73.xy, r15.zw);
  r15.z = 0.0f;
  let v_74 = (r4.xyz + r15.xyz);
  r15 = vec4<f32>(v_74.xyz, r15.w);
  r13.z = 0.0f;
  let v_75 = (r4.xyz + r13.xyz);
  r13 = vec4<f32>(v_75.xyz, r13.w);
  let v_76 = (r1.zw * vec2<f32>(0.25f));
  r1 = vec4<f32>(v_76.xy, r1.zw);
  r1.z = 0.0f;
  let v_77 = (r1.xyz + r4.xyz);
  r1 = vec4<f32>(v_77.xyz, r1.w);
  let v_78 = (r3.zw * r5.xy);
  r16 = vec4<f32>(v_78.xy, r16.zw);
  r16.z = 0.0f;
  let v_79 = (r4.xyz + r16.xyz);
  r16 = vec4<f32>(v_79.xyz, r16.w);
  let v_80 = (-(r5.yyyx)).zw;
  r5 = vec4<f32>(r5.xy, v_80.xy);
  r17 = (r3.zwzw * r5.zxyw);
  let v_81 = (r17.xy * vec2<f32>(0.5f));
  r18 = vec4<f32>(v_81.xy, r18.zw);
  r18.z = 0.0f;
  let v_82 = (r4.xyz + r18.xyz);
  r18 = vec4<f32>(v_82.xyz, r18.w);
  let v_83 = -(r5.xyxx);
  let v_84 = (r3.zw * v_83.xy);
  r3 = vec4<f32>(v_84.xy, r3.zw);
  let v_85 = (r3.xy * vec2<f32>(0.75f));
  r3 = vec4<f32>(v_85.xy, r3.zw);
  r3.z = 0.0f;
  let v_86 = (r3.xyz + r4.xyz);
  r3 = vec4<f32>(v_86.xyz, r3.w);
  let v_87 = (r17.zw * vec2<f32>(0.25f));
  r5 = vec4<f32>(v_87.xy, r5.zw);
  r5.z = 0.0f;
  let v_88 = (r4.xyz + r5.xyz);
  r5 = vec4<f32>(v_88.xyz, r5.w);
  let v_89 = r6.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_89.xy, r6.z);
  let v_90 = r8.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_90.xy, r8.z);
  let v_91 = r2.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_91.xy, r2.z);
  let v_92 = r7.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_92.xy, r7.z);
  let v_93 = r10.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_93.xy, r10.z);
  let v_94 = r12.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_94.xy, r12.z);
  let v_95 = r14.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_95.xy, r14.z);
  let v_96 = r11.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_96.xy, r11.z);
  let v_97 = r9.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_97.xy, r9.z);
  let v_98 = r15.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_98.xy, r15.z);
  let v_99 = r13.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_99.xy, r13.z);
  let v_100 = r1.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_100.xy, r1.z);
  let v_101 = r16.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_101.xy, r16.z);
  let v_102 = r18.xyxx;
  r1.y = textureSampleCompareLevel(t15, s15, v_102.xy, r18.z);
  let v_103 = r3.xyxx;
  r1.z = textureSampleCompareLevel(t15, s15, v_103.xy, r3.z);
  let v_104 = r5.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_104.xy, r5.z);
  r2 = (r2 + r6);
  r2 = (r7 + r2);
  r1 = (r1 + r2);
  r0.z = dot(r1, vec4<f32>(1.0f));
  r1.x = (r0.z * 0.0625f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r0.z = textureSample(t2, s2, r4.xyxx.xy).w;
    r1.y = ((-(r0.zzzz)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.z = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).z, 0.0f, 1.0f);
  let v_105 = abs(r0.yyyy);
  r0.x = max(v_105.x, abs(r0.xxxx).x);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r0.y = ((-(r0.zzzz)).y + 1.0f);
  let v_106 = fma(r0.yy, r0.xx, r1.xy);
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
