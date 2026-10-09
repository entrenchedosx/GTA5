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

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>, v4 : u32) {
  let v_1 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = r0.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.z = textureLoad(t3, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v4)).x;
  r0.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.z = ((-(r0.zzzz)).z + r0.w);
  r0.z = (cb11_11.tint_symbol_3[2u].w / r0.z);
  let v_5 = (cb6_6.tint_symbol_1[14u].zw * cb11_11.tint_symbol_3[6u].xx);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r2 = (r0.zzzz * v3.xyz.yxyz);
  let v_6 = (r0.xy * vec2<f32>(0.015625f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = textureSample(t14, s14, r0.xyxx.xy).xyz;
  r0 = vec4<f32>(v_7.xy, r0.z, v_7.z);
  r0.w = (r0.w * cb12_12.tint_symbol_2[0u].w);
  let v_8 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_8.xy, r3.zw);
  let v_9 = fma(r2.yzw, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = &(x0[0u]);
  let v_11 = r4;
  *(v_10) = vec4<f32>(v_11.xyz, (*(v_10)).w);
  let v_12 = fma(r2.yzw, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = &(x0[1u]);
  let v_14 = r5;
  *(v_13) = vec4<f32>(v_14.xyz, (*(v_13)).w);
  let v_15 = fma(r2.yzw, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r6 = vec4<f32>(v_15.xyz, r6.w);
  let v_16 = &(x0[2u]);
  let v_17 = r6;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = &(x0[3u]);
  let v_19 = r6;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  r0.x = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).x, 1.5f, 1.0f);
  let v_20 = -(r0.wwww);
  r0.x = fma(r0.x, 0.5f, v_20.x);
  let v_21 = abs(r6.yyyy);
  let v_22 = max(v_21.yw, abs(r6.xxxx).yw);
  let v_23 = r0;
  r0 = vec4<f32>(v_23.x, v_22.x, v_23.z, v_22.y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < r0.x)));
  let v_24 = (bitcast<u32>(r0.y) != 0u);
  let v_25 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r0.y = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_25, v_24);
  let v_26 = abs(r5.yyyy);
  r1.z = max(v_26.z, abs(r5.xxxx).z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z < r0.x)));
  let v_27 = bitcast<u32>(r1.z);
  r0.y = select(r0.y, bitcast<f32>(v.tint_symbol_4[2i].x), (v_27 != 0u));
  let v_28 = abs(r4.yyyy);
  r1.z = max(v_28.z, abs(r4.xxxx).z);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r0.x)));
  let v_29 = bitcast<u32>(r0.x);
  r0.x = select(r0.y, 0.0f, (v_29 != 0u));
  let v_30 = x0[bitcast<i32>(r0.x)];
  r4 = vec4<f32>(v_30.xyz, r4.w);
  r0.y = f32(bitcast<i32>(r0.x));
  r1.z = (r0.y + 0.5f);
  let v_31 = (r1.xyz * vec3<f32>(1.39999997615814208984f, 0.34999999403953552246f, 0.25f));
  r1 = vec4<f32>(v_31.xyz, r1.w);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.yyyy)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r0.y = dot(r5, cb6_6.tint_symbol_1[12u]);
  r1.w = dot(r5, cb6_6.tint_symbol_1[13u]);
  r5.x = (r4.x + 0.5f);
  r5.y = fma(r4.y, 0.25f, r1.z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((r0.y == 0.0f))));
  r0.y = ((-(r0.yyyy)).y + r4.z);
  let v_32 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_32.xy, r6.z, v_32.z);
  r6.z = dpdx(r0.y);
  let v_33 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  r7.w = dpdy(r0.y);
  let v_34 = (r6.yw * r7.yw);
  r4 = vec4<f32>(v_34.xy, r4.zw);
  let v_35 = -(r4.xyxx);
  let v_36 = fma(r6.xz, r7.xz, v_35.xy);
  r8 = vec4<f32>(v_36.xy, r8.zw);
  r4.x = (1.0f / r8.x);
  r4.y = (r6.z * r7.y);
  let v_37 = -(r4.yyyy);
  r8.z = fma(r6.x, r7.w, v_37.z);
  let v_38 = (r4.xx * r8.yz);
  r4 = vec4<f32>(v_38.xy, r4.zw);
  let v_39 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_39.xy, r4.zw);
  let v_40 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_40.xy, r4.zw);
  r0.y = fma((-(r1.wwww)).y, r4.x, r0.y);
  r0.y = fma((-(r1.wwww)).y, r4.y, r0.y);
  let v_41 = bitcast<u32>(r1.z);
  let v_42 = r0.y;
  r4.z = select(r4.z, v_42, (v_41 != 0u));
  r0.x = bitcast<f32>((4i + bitcast<i32>(r0.x)));
  r6 = (vec4<f32>(0.25f, 1.0f, 0.25f, 1.0f) * cb6_6.tint_symbol_1[bitcast<i32>(r0.x)].yxyz);
  r7 = dpdx(r2.yzwz);
  r7 = (r6.yzwz * r7);
  r2 = dpdy(r2);
  r2 = (r6 * r2);
  let v_43 = (r2.yw * r7.yw);
  r0 = vec4<f32>(v_43.xy, r0.zw);
  let v_44 = -(r0.xyxx);
  let v_45 = fma(r7.xz, r2.xz, v_44.xy);
  r6 = vec4<f32>(v_45.xy, r6.zw);
  r0.x = (1.0f / r6.x);
  r0.y = (r2.y * r7.z);
  let v_46 = -(r0.yyyy);
  r6.z = fma(r7.x, r2.w, v_46.z);
  let v_47 = (r0.xx * r6.yz);
  r0 = vec4<f32>(v_47.xy, r0.zw);
  let v_48 = max(r0.xy, vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_48.xy, r0.zw);
  let v_49 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_49.xy, r0.zw);
  r2 = (r3.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_50 = (r3.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r6 = vec4<f32>(v_50.xy, r6.zw);
  let v_51 = (r3.xy * r1.xy);
  r4 = vec4<f32>(v_51.xy, r4.zw);
  r5.z = dot(r0.xy, r4.xy);
  let v_52 = (r4.xyz + r5.xyz);
  r7 = vec4<f32>(v_52.xyz, r7.w);
  let v_53 = (-(r3.yyyx)).zw;
  r3 = vec4<f32>(r3.xy, v_53.xy);
  r8 = (r1.xyxy * r3.zxyw);
  let v_54 = (r8.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_54.xy, r4.zw);
  r5.w = dot(r0.xy, r4.xy);
  let v_55 = (r4.xyz + r5.xyw);
  r9 = vec4<f32>(v_55.xyz, r9.w);
  let v_56 = ((-(r3.xxxy)).zw * r1.xy);
  r1 = vec4<f32>(r1.xy, v_56.xy);
  let v_57 = (r1.zw * vec2<f32>(0.75f));
  r4 = vec4<f32>(v_57.xy, r4.zw);
  r3.x = dot(r0.xy, r4.xy);
  let v_58 = r5;
  let v_59 = r3;
  r3 = vec4<f32>(v_59.x, v_58.xy, v_59.w);
  let v_60 = (r3.yzx + r4.xyz);
  r10 = vec4<f32>(v_60.xyz, r10.w);
  let v_61 = (r8.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_61.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_62 = (r3.yzw + r4.xyz);
  r8 = vec4<f32>(v_62.xyz, r8.w);
  r11 = (r1.xyxy * r2);
  r3.x = dot(r0.xy, r11.xy);
  let v_63 = r11;
  r4 = vec4<f32>(v_63.xy, r4.zw);
  let v_64 = (r3.yzx + r4.xyz);
  r12 = vec4<f32>(v_64.xyz, r12.w);
  r13 = (r2.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r13 = (r1.xyxy * r13);
  let v_65 = (r13.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_65.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_66 = (r3.yzw + r4.xyz);
  r14 = vec4<f32>(v_66.xyz, r14.w);
  let v_67 = -(r2);
  r15 = (r1.xyxy * v_67);
  r15 = (r15 * vec4<f32>(0.75f));
  r3.x = dot(r0.xy, r15.xy);
  let v_68 = r15;
  r4 = vec4<f32>(v_68.xy, r4.zw);
  let v_69 = (r3.yzx + r4.xyz);
  r16 = vec4<f32>(v_69.xyz, r16.w);
  let v_70 = (r13.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_70.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_71 = (r3.yzw + r4.xyz);
  r13 = vec4<f32>(v_71.xyz, r13.w);
  r3.x = dot(r0.xy, r11.zw);
  let v_72 = r11;
  r4 = vec4<f32>(v_72.zw, r4.zw);
  let v_73 = (r3.yzx + r4.xyz);
  r11 = vec4<f32>(v_73.xyz, r11.w);
  r2 = (r2.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r2 = (r1.xyxy * r2);
  let v_74 = (r2.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_74.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_75 = (r3.yzw + r4.xyz);
  r17 = vec4<f32>(v_75.xyz, r17.w);
  r3.x = dot(r0.xy, r15.zw);
  let v_76 = r15;
  r4 = vec4<f32>(v_76.zw, r4.zw);
  let v_77 = (r3.yzx + r4.xyz);
  r15 = vec4<f32>(v_77.xyz, r15.w);
  let v_78 = (r2.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_78.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_79 = (r3.yzw + r4.xyz);
  r2 = vec4<f32>(v_79.xyz, r2.w);
  let v_80 = (r1.xy * r6.xy);
  r4 = vec4<f32>(v_80.xy, r4.zw);
  r3.x = dot(r0.xy, r4.xy);
  let v_81 = (r3.yzx + r4.xyz);
  r18 = vec4<f32>(v_81.xyz, r18.w);
  let v_82 = (-(r6.yyyx)).zw;
  r6 = vec4<f32>(r6.xy, v_82.xy);
  r19 = (r1.xyxy * r6.zxyw);
  let v_83 = (r19.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_83.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_84 = (r3.yzw + r4.xyz);
  r20 = vec4<f32>(v_84.xyz, r20.w);
  let v_85 = -(r6.xyxx);
  let v_86 = (r1.xy * v_85.xy);
  r1 = vec4<f32>(v_86.xy, r1.zw);
  let v_87 = (r1.xy * vec2<f32>(0.75f));
  r4 = vec4<f32>(v_87.xy, r4.zw);
  r3.x = dot(r0.xy, r4.xy);
  let v_88 = (r3.yzx + r4.xyz);
  r1 = vec4<f32>(v_88.xyz, r1.w);
  let v_89 = (r19.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_89.xy, r4.zw);
  r3.w = dot(r0.xy, r4.xy);
  let v_90 = (r3.yzw + r4.xyz);
  r3 = vec4<f32>(v_90.xyz, r3.w);
  let v_91 = r7.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_91.xy, r7.z);
  let v_92 = r9.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_92.xy, r9.z);
  let v_93 = r10.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_93.xy, r10.z);
  let v_94 = r8.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_94.xy, r8.z);
  let v_95 = r12.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_95.xy, r12.z);
  let v_96 = r14.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_96.xy, r14.z);
  let v_97 = r16.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_97.xy, r16.z);
  let v_98 = r13.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_98.xy, r13.z);
  let v_99 = r11.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_99.xy, r11.z);
  let v_100 = r17.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_100.xy, r17.z);
  let v_101 = r15.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_101.xy, r15.z);
  let v_102 = r2.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_102.xy, r2.z);
  let v_103 = r18.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_103.xy, r18.z);
  let v_104 = r20.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_104.xy, r20.z);
  let v_105 = r1.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_105.xy, r1.z);
  let v_106 = r3.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_106.xy, r3.z);
  r1 = (r4 + r6);
  r1 = (r7 + r1);
  r1 = (r2 + r1);
  r0.x = dot(r1, vec4<f32>(1.0f));
  r0.x = (r0.x * 0.0625f);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = textureSample(t2, s2, r5.xyxx.xy).w;
    r0.y = ((-(r1.xxxx)).y + 1.0f);
  } else {
    r0.y = 1.0f;
  }
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).z, 0.0f, 1.0f);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(15.0f), vec4<f32>(-6.0f)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_107 = fma(r0.zz, r0.ww, r0.xy);
  r0 = vec4<f32>(v_107.xy, r0.zw);
  let v_108 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_108.xy, r0.zw);
  let v_109 = min(r0.xy, vec2<f32>(1.0f));
  let v_110 = r0;
  r0 = vec4<f32>(v_110.x, v_109.xy, v_110.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.x = (r0.z * r0.y);
  let v_111 = bitcast<u32>(r0.w);
  let v_112 = r1.x;
  r0.x = select(r0.y, v_112, (v_111 != 0u));
  o0 = r0.xzzz;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
