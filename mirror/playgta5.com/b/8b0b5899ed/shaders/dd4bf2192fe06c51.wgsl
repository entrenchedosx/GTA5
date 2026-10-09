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
  r1 = dpdx(v3.xyz.yxyz);
  r2 = dpdy(v3.xyz.yxyz);
  r2 = (r0.yyyy * r2);
  r0 = fma(r0.xxxx, r1, r2);
  r0 = (r0 + v3.xyz.yxyz);
  let v_3 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = r1.xy;
  let v_5 = max(v_4, vec2<f32>(-2147483648.0f));
  let v_6 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_5), vec2<i32>(2147483647i), (v_5 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_4 == v_4))));
  r2 = vec4<f32>(v_6.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r1.z = textureLoad(t3, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r1.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r1.z = ((-(r1.zzzz)).z + r1.w);
  r1.z = (cb11_11.tint_symbol_3[2u].w / r1.z);
  let v_7 = (cb6_6.tint_symbol_1[14u].zw * cb11_11.tint_symbol_3[6u].xx);
  r2 = vec4<f32>(v_7.xy, r2.zw);
  r0 = (r0 * r1.zzzz);
  let v_8 = (r1.xy * vec2<f32>(0.015625f));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = textureSample(t14, s14, r1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_9.xy, r1.z, v_9.z);
  r1.w = (r1.w * cb12_12.tint_symbol_2[0u].w);
  let v_10 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_10.xy, r3.zw);
  let v_11 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = &(x0[0u]);
  let v_13 = r4;
  *(v_12) = vec4<f32>(v_13.xyz, (*(v_12)).w);
  let v_14 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = &(x0[1u]);
  let v_16 = r5;
  *(v_15) = vec4<f32>(v_16.xyz, (*(v_15)).w);
  let v_17 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  let v_18 = &(x0[2u]);
  let v_19 = r6;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = &(x0[3u]);
  let v_21 = r6;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  r1.x = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).x, 1.5f, 1.0f);
  let v_22 = -(r1.wwww);
  r1.x = fma(r1.x, 0.5f, v_22.x);
  let v_23 = abs(r6.yyyy);
  let v_24 = max(v_23.yw, abs(r6.xxxx).yw);
  let v_25 = r1;
  r1 = vec4<f32>(v_25.x, v_24.x, v_25.z, v_24.y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < r1.x)));
  let v_26 = (bitcast<u32>(r1.y) != 0u);
  let v_27 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.y = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_27, v_26);
  let v_28 = abs(r5.yyyy);
  r2.z = max(v_28.z, abs(r5.xxxx).z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r1.x)));
  let v_29 = bitcast<u32>(r2.z);
  r1.y = select(r1.y, bitcast<f32>(v.tint_symbol_4[2i].x), (v_29 != 0u));
  let v_30 = abs(r4.yyyy);
  r2.z = max(v_30.z, abs(r4.xxxx).z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r2.z < r1.x)));
  let v_31 = bitcast<u32>(r1.x);
  r1.x = select(r1.y, 0.0f, (v_31 != 0u));
  let v_32 = x0[bitcast<i32>(r1.x)];
  r4 = vec4<f32>(v_32.xyz, r4.w);
  r1.y = f32(bitcast<i32>(r1.x));
  r2.z = (r1.y + 0.5f);
  let v_33 = (r2.xyz * vec3<f32>(1.39999997615814208984f, 0.34999999403953552246f, 0.25f));
  r2 = vec4<f32>(v_33.xyz, r2.w);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.yyyy)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r1.y = dot(r5, cb6_6.tint_symbol_1[12u]);
  r2.w = dot(r5, cb6_6.tint_symbol_1[13u]);
  r5.x = (r4.x + 0.5f);
  r5.y = fma(r4.y, 0.25f, r2.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, !((r1.y == 0.0f))));
  r1.y = ((-(r1.yyyy)).y + r4.z);
  let v_34 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_34.xy, r6.z, v_34.z);
  r6.z = dpdx(r1.y);
  let v_35 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_35.xyz, r7.w);
  r7.w = dpdy(r1.y);
  let v_36 = (r6.yw * r7.yw);
  r4 = vec4<f32>(v_36.xy, r4.zw);
  let v_37 = -(r4.xyxx);
  let v_38 = fma(r6.xz, r7.xz, v_37.xy);
  r8 = vec4<f32>(v_38.xy, r8.zw);
  r4.x = (1.0f / r8.x);
  r4.y = (r6.z * r7.y);
  let v_39 = -(r4.yyyy);
  r8.z = fma(r6.x, r7.w, v_39.z);
  let v_40 = (r4.xx * r8.yz);
  r4 = vec4<f32>(v_40.xy, r4.zw);
  let v_41 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_41.xy, r4.zw);
  let v_42 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_42.xy, r4.zw);
  r1.y = fma((-(r2.wwww)).y, r4.x, r1.y);
  r1.y = fma((-(r2.wwww)).y, r4.y, r1.y);
  let v_43 = bitcast<u32>(r2.z);
  let v_44 = r1.y;
  r4.z = select(r4.z, v_44, (v_43 != 0u));
  r1.x = bitcast<f32>((4i + bitcast<i32>(r1.x)));
  r6 = (vec4<f32>(0.25f, 1.0f, 0.25f, 1.0f) * cb6_6.tint_symbol_1[bitcast<i32>(r1.x)].yxyz);
  r7 = dpdx(r0.yzwz);
  r7 = (r6.yzwz * r7);
  r0 = dpdy(r0);
  r0 = (r6 * r0);
  let v_45 = (r0.yw * r7.yw);
  r1 = vec4<f32>(v_45.xy, r1.zw);
  let v_46 = -(r1.xyxx);
  let v_47 = fma(r7.xz, r0.xz, v_46.xy);
  r6 = vec4<f32>(v_47.xy, r6.zw);
  r0.x = (1.0f / r6.x);
  r0.y = (r0.y * r7.z);
  let v_48 = -(r0.yyyy);
  r6.z = fma(r7.x, r0.w, v_48.z);
  let v_49 = (r0.xx * r6.yz);
  r0 = vec4<f32>(v_49.xy, r0.zw);
  let v_50 = max(r0.xy, vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_50.xy, r0.zw);
  let v_51 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_51.xy, r0.zw);
  r6 = (r3.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_52 = (r3.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r7 = vec4<f32>(v_52.xy, r7.zw);
  let v_53 = (r3.xy * r2.xy);
  r4 = vec4<f32>(v_53.xy, r4.zw);
  r5.z = dot(r0.xy, r4.xy);
  let v_54 = (r4.xyz + r5.xyz);
  r8 = vec4<f32>(v_54.xyz, r8.w);
  let v_55 = (-(r3.yyyx)).zw;
  r3 = vec4<f32>(r3.xy, v_55.xy);
  r9 = (r2.xyxy * r3.zxyw);
  let v_56 = (r9.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_56.xy, r4.zw);
  r5.w = dot(r0.xy, r4.xy);
  let v_57 = (r4.xyz + r5.xyw);
  r10 = vec4<f32>(v_57.xyz, r10.w);
  let v_58 = ((-(r3.xxxy)).zw * r2.xy);
  r0 = vec4<f32>(r0.xy, v_58.xy);
  let v_59 = (r0.zw * vec2<f32>(0.75f));
  r4 = vec4<f32>(v_59.xy, r4.zw);
  r3.x = dot(r0.xy, r4.xy);
  let v_60 = r5;
  let v_61 = r3;
  r3 = vec4<f32>(v_61.x, v_60.xy, v_61.w);
  let v_62 = (r3.yzx + r4.xyz);
  r11 = vec4<f32>(v_62.xyz, r11.w);
  let v_63 = (r9.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_63.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_64 = (r3.yzw + r4.xyz);
  r9 = vec4<f32>(v_64.xyz, r9.w);
  r12 = (r2.xyxy * r6);
  r3.x = dot(r0.xy, r12.xy);
  let v_65 = r12;
  r4 = vec4<f32>(v_65.xy, r4.zw);
  let v_66 = (r3.yzx + r4.xyz);
  r13 = vec4<f32>(v_66.xyz, r13.w);
  r14 = (r6.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r14 = (r2.xyxy * r14);
  let v_67 = (r14.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_67.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_68 = (r3.yzw + r4.xyz);
  r15 = vec4<f32>(v_68.xyz, r15.w);
  let v_69 = -(r6);
  r16 = (r2.xyxy * v_69);
  r16 = (r16 * vec4<f32>(0.75f));
  r3.x = dot(r0.xy, r16.xy);
  let v_70 = r16;
  r4 = vec4<f32>(v_70.xy, r4.zw);
  let v_71 = (r3.yzx + r4.xyz);
  r17 = vec4<f32>(v_71.xyz, r17.w);
  let v_72 = (r14.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_72.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_73 = (r3.yzw + r4.xyz);
  r14 = vec4<f32>(v_73.xyz, r14.w);
  r3.x = dot(r0.xy, r12.zw);
  let v_74 = r12;
  r4 = vec4<f32>(v_74.zw, r4.zw);
  let v_75 = (r3.yzx + r4.xyz);
  r12 = vec4<f32>(v_75.xyz, r12.w);
  r6 = (r6.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r6 = (r2.xyxy * r6);
  let v_76 = (r6.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_76.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_77 = (r3.yzw + r4.xyz);
  r18 = vec4<f32>(v_77.xyz, r18.w);
  r3.x = dot(r0.xy, r16.zw);
  let v_78 = r16;
  r4 = vec4<f32>(v_78.zw, r4.zw);
  let v_79 = (r3.yzx + r4.xyz);
  r16 = vec4<f32>(v_79.xyz, r16.w);
  let v_80 = (r6.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_80.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_81 = (r3.yzw + r4.xyz);
  r6 = vec4<f32>(v_81.xyz, r6.w);
  let v_82 = (r2.xy * r7.xy);
  r4 = vec4<f32>(v_82.xy, r4.zw);
  r3.x = dot(r0.xy, r4.xy);
  let v_83 = (r3.yzx + r4.xyz);
  r19 = vec4<f32>(v_83.xyz, r19.w);
  let v_84 = (-(r7.yyyx)).zw;
  r7 = vec4<f32>(r7.xy, v_84.xy);
  r20 = (r2.xyxy * r7.zxyw);
  let v_85 = (r20.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_85.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_86 = (r3.yzw + r4.xyz);
  r21 = vec4<f32>(v_86.xyz, r21.w);
  let v_87 = -(r7.xxxy);
  let v_88 = (r2.xy * v_87.zw);
  r0 = vec4<f32>(r0.xy, v_88.xy);
  let v_89 = (r0.zw * vec2<f32>(0.75f));
  r4 = vec4<f32>(v_89.xy, r4.zw);
  r3.x = dot(r0.xy, r4.xy);
  let v_90 = (r3.yzx + r4.xyz);
  r2 = vec4<f32>(v_90.xyz, r2.w);
  let v_91 = (r20.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_91.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_92 = (r3.yzw + r4.xyz);
  r0 = vec4<f32>(v_92.xyz, r0.w);
  let v_93 = r8.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_93.xy, r8.z);
  let v_94 = r10.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_94.xy, r10.z);
  let v_95 = r11.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_95.xy, r11.z);
  let v_96 = r9.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_96.xy, r9.z);
  let v_97 = r13.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_97.xy, r13.z);
  let v_98 = r15.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_98.xy, r15.z);
  let v_99 = r17.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_99.xy, r17.z);
  let v_100 = r14.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_100.xy, r14.z);
  let v_101 = r12.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_101.xy, r12.z);
  let v_102 = r18.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_102.xy, r18.z);
  let v_103 = r16.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_103.xy, r16.z);
  let v_104 = r6.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_104.xy, r6.z);
  let v_105 = r19.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_105.xy, r19.z);
  let v_106 = r21.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_106.xy, r21.z);
  let v_107 = r2.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_107.xy, r2.z);
  let v_108 = r0.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_108.xy, r0.z);
  r0 = (r3 + r4);
  r0 = (r7 + r0);
  r0 = (r6 + r0);
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.x = (r0.x * 0.0625f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r0.z = textureSample(t2, s2, r5.xyxx.xy).w;
    r0.y = ((-(r0.zzzz)).y + 1.0f);
  } else {
    r0.y = 1.0f;
  }
  r0.z = clamp(fma(r1.zzzz, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).z, 0.0f, 1.0f);
  r0.w = clamp(fma(r1.wwww, vec4<f32>(15.0f), vec4<f32>(-6.0f)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_109 = fma(r0.zz, r0.ww, r0.xy);
  r0 = vec4<f32>(v_109.xy, r0.zw);
  let v_110 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_110.xy, r0.zw);
  let v_111 = min(r0.xy, vec2<f32>(1.0f));
  let v_112 = r0;
  r0 = vec4<f32>(v_112.x, v_111.xy, v_112.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.x = (r0.z * r0.y);
  let v_113 = bitcast<u32>(r0.w);
  let v_114 = r1.x;
  r0.x = select(r0.y, v_114, (v_113 != 0u));
  o0 = r0.xzzz;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
