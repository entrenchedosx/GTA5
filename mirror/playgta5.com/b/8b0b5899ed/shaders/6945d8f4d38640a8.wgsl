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
  let v_18 = fma(r2.yzw, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r7 = vec4<f32>(v_18.xyz, r7.w);
  let v_19 = &(x0[3u]);
  let v_20 = r7;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  r0.x = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).x, 1.5f, 1.0f);
  let v_21 = -(r0.wwww);
  r0.x = fma(r0.x, 0.5f, v_21.x);
  let v_22 = abs(r6.yyyy);
  r0.y = max(v_22.y, abs(r6.xxxx).y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < r0.x)));
  let v_23 = (bitcast<u32>(r0.y) != 0u);
  let v_24 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r0.y = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_24, v_23);
  let v_25 = abs(r5.yyyy);
  r0.w = max(v_25.w, abs(r5.xxxx).w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r0.x)));
  let v_26 = bitcast<u32>(r0.w);
  r0.y = select(r0.y, bitcast<f32>(v.tint_symbol_4[2i].x), (v_26 != 0u));
  let v_27 = abs(r4.yyyy);
  r0.w = max(v_27.w, abs(r4.xxxx).w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < r0.x)));
  let v_28 = bitcast<u32>(r0.x);
  r0.x = select(r0.y, 0.0f, (v_28 != 0u));
  let v_29 = x0[bitcast<i32>(r0.x)];
  r4 = vec4<f32>(v_29.xyz, r4.w);
  r0.y = f32(bitcast<i32>(r0.x));
  r0.w = (r0.y + 0.5f);
  r0.w = (r0.w * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.yyyy)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r0.y = dot(r5, cb6_6.tint_symbol_1[12u]);
  r1.z = dot(r5, cb6_6.tint_symbol_1[13u]);
  r5.x = (r4.x + 0.5f);
  r5.y = fma(r4.y, 0.25f, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((r0.y == 0.0f))));
  r0.y = ((-(r0.yyyy)).y + r4.z);
  let v_30 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_30.xy, r6.z, v_30.z);
  r6.z = dpdx(r0.y);
  let v_31 = dpdy(r5.yxy);
  r8 = vec4<f32>(v_31.xyz, r8.w);
  r8.w = dpdy(r0.y);
  let v_32 = (r6.yw * r8.yw);
  r4 = vec4<f32>(v_32.xy, r4.zw);
  let v_33 = -(r4.xyxx);
  let v_34 = fma(r6.xz, r8.xz, v_33.xy);
  r9 = vec4<f32>(v_34.xy, r9.zw);
  r1.w = (1.0f / r9.x);
  r4.x = (r6.z * r8.y);
  let v_35 = -(r4.xxxx);
  r9.z = fma(r6.x, r8.w, v_35.z);
  let v_36 = (r1.ww * r9.yz);
  r4 = vec4<f32>(v_36.xy, r4.zw);
  let v_37 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_37.xy, r4.zw);
  let v_38 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_38.xy, r4.zw);
  r0.y = fma((-(r1.zzzz)).y, r4.x, r0.y);
  r0.y = fma((-(r1.zzzz)).y, r4.y, r0.y);
  let v_39 = bitcast<u32>(r0.w);
  let v_40 = r0.y;
  r4.z = select(r4.z, v_40, (v_39 != 0u));
  let v_41 = (r1.xy * vec2<f32>(1.39999997615814208984f, 0.34999999403953552246f));
  let v_42 = r0;
  r0 = vec4<f32>(v_42.x, v_41.x, v_42.z, v_41.y);
  r0.x = bitcast<f32>((4i + bitcast<i32>(r0.x)));
  r1 = (vec4<f32>(0.25f, 1.0f, 0.25f, 1.0f) * cb6_6.tint_symbol_1[bitcast<i32>(r0.x)].yxyz);
  r6 = dpdx(r2.yzwz);
  r6 = (r1.yzwz * r6);
  r2 = dpdy(r2);
  r1 = (r1 * r2);
  let v_43 = (r1.yw * r6.yw);
  r2 = vec4<f32>(v_43.xy, r2.zw);
  let v_44 = -(r2.xyxx);
  let v_45 = fma(r6.xz, r1.xz, v_44.xy);
  r2 = vec4<f32>(v_45.xy, r2.zw);
  r0.x = (1.0f / r2.x);
  r1.x = (r1.y * r6.z);
  let v_46 = -(r1.xxxx);
  r2.z = fma(r6.x, r1.w, v_46.z);
  let v_47 = (r0.xx * r2.yz);
  r1 = vec4<f32>(v_47.xy, r1.zw);
  let v_48 = max(r1.xy, vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_48.xy, r1.zw);
  let v_49 = min(r1.xy, vec2<f32>(1.0f));
  r1 = vec4<f32>(v_49.xy, r1.zw);
  r2 = (r3.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_50 = (r3.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r6 = vec4<f32>(v_50.xy, r6.zw);
  let v_51 = (r3.xy * r0.yw);
  r4 = vec4<f32>(v_51.xy, r4.zw);
  r5.z = dot(r1.xy, r4.xy);
  let v_52 = (r4.xyz + r5.xyz);
  r8 = vec4<f32>(v_52.xyz, r8.w);
  let v_53 = (-(r3.yyyx)).zw;
  r3 = vec4<f32>(r3.xy, v_53.xy);
  r9 = (r0.ywyw * r3.zxyw);
  let v_54 = (r9.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_54.xy, r4.zw);
  r5.w = dot(r1.xy, r4.xy);
  let v_55 = (r4.xyz + r5.xyw);
  r10 = vec4<f32>(v_55.xyz, r10.w);
  let v_56 = ((-(r3.xxxy)).zw * r0.yw);
  r1 = vec4<f32>(r1.xy, v_56.xy);
  let v_57 = (r1.zw * vec2<f32>(0.75f));
  r4 = vec4<f32>(v_57.xy, r4.zw);
  r3.x = dot(r1.xy, r4.xy);
  let v_58 = r5;
  let v_59 = r3;
  r3 = vec4<f32>(v_59.x, v_58.xy, v_59.w);
  let v_60 = (r3.yzx + r4.xyz);
  r11 = vec4<f32>(v_60.xyz, r11.w);
  let v_61 = (r9.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_61.xy, r4.zw);
  r3.w = dot(r1.xy, r4.xy);
  let v_62 = (r3.yzw + r4.xyz);
  r9 = vec4<f32>(v_62.xyz, r9.w);
  r12 = (r0.ywyw * r2);
  r3.x = dot(r1.xy, r12.xy);
  let v_63 = r12;
  r4 = vec4<f32>(v_63.xy, r4.zw);
  let v_64 = (r3.yzx + r4.xyz);
  r13 = vec4<f32>(v_64.xyz, r13.w);
  r14 = (r2.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r14 = (r0.ywyw * r14);
  let v_65 = (r14.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_65.xy, r4.zw);
  r3.w = dot(r1.xy, r4.xy);
  let v_66 = (r3.yzw + r4.xyz);
  r15 = vec4<f32>(v_66.xyz, r15.w);
  let v_67 = -(r2);
  r16 = (r0.ywyw * v_67);
  r16 = (r16 * vec4<f32>(0.75f));
  r3.x = dot(r1.xy, r16.xy);
  let v_68 = r16;
  r4 = vec4<f32>(v_68.xy, r4.zw);
  let v_69 = (r3.yzx + r4.xyz);
  r17 = vec4<f32>(v_69.xyz, r17.w);
  let v_70 = (r14.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_70.xy, r4.zw);
  r3.w = dot(r1.xy, r4.xy);
  let v_71 = (r3.yzw + r4.xyz);
  r14 = vec4<f32>(v_71.xyz, r14.w);
  r3.x = dot(r1.xy, r12.zw);
  let v_72 = r12;
  r4 = vec4<f32>(v_72.zw, r4.zw);
  let v_73 = (r3.yzx + r4.xyz);
  r12 = vec4<f32>(v_73.xyz, r12.w);
  r2 = (r2.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r2 = (r0.ywyw * r2);
  let v_74 = (r2.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_74.xy, r4.zw);
  r3.w = dot(r1.xy, r4.xy);
  let v_75 = (r3.yzw + r4.xyz);
  r18 = vec4<f32>(v_75.xyz, r18.w);
  r3.x = dot(r1.xy, r16.zw);
  let v_76 = r16;
  r4 = vec4<f32>(v_76.zw, r4.zw);
  let v_77 = (r3.yzx + r4.xyz);
  r16 = vec4<f32>(v_77.xyz, r16.w);
  let v_78 = (r2.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_78.xy, r4.zw);
  r3.w = dot(r1.xy, r4.xy);
  let v_79 = (r3.yzw + r4.xyz);
  r2 = vec4<f32>(v_79.xyz, r2.w);
  let v_80 = (r0.yw * r6.xy);
  r4 = vec4<f32>(v_80.xy, r4.zw);
  r3.x = dot(r1.xy, r4.xy);
  let v_81 = (r3.yzx + r4.xyz);
  r19 = vec4<f32>(v_81.xyz, r19.w);
  let v_82 = (-(r6.yyyx)).zw;
  r6 = vec4<f32>(r6.xy, v_82.xy);
  r20 = (r0.ywyw * r6.zxyw);
  let v_83 = (r20.xy * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_83.xy, r4.zw);
  r3.w = dot(r1.xy, r4.xy);
  let v_84 = (r3.yzw + r4.xyz);
  r21 = vec4<f32>(v_84.xyz, r21.w);
  let v_85 = -(r6.xyxx);
  let v_86 = (r0.yw * v_85.xy);
  r0 = vec4<f32>(v_86.xy, r0.zw);
  let v_87 = (r0.xy * vec2<f32>(0.75f));
  r4 = vec4<f32>(v_87.xy, r4.zw);
  r3.x = dot(r1.xy, r4.xy);
  let v_88 = (r3.yzx + r4.xyz);
  r0 = vec4<f32>(v_88.xy, r0.z, v_88.z);
  let v_89 = (r20.zw * vec2<f32>(0.25f));
  r4 = vec4<f32>(v_89.xy, r4.zw);
  r3.w = dot(r1.xy, r4.xy);
  let v_90 = (r3.yzw + r4.xyz);
  r1 = vec4<f32>(v_90.xyz, r1.w);
  let v_91 = r8.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_91.xy, r8.z);
  let v_92 = r10.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_92.xy, r10.z);
  let v_93 = r11.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_93.xy, r11.z);
  let v_94 = r9.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_94.xy, r9.z);
  let v_95 = r13.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_95.xy, r13.z);
  let v_96 = r15.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_96.xy, r15.z);
  let v_97 = r17.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_97.xy, r17.z);
  let v_98 = r14.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_98.xy, r14.z);
  let v_99 = r12.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_99.xy, r12.z);
  let v_100 = r18.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_100.xy, r18.z);
  let v_101 = r16.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_101.xy, r16.z);
  let v_102 = r2.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_102.xy, r2.z);
  let v_103 = r19.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_103.xy, r19.z);
  let v_104 = r21.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_104.xy, r21.z);
  let v_105 = r0.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_105.xy, r0.w);
  let v_106 = r1.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_106.xy, r1.z);
  r1 = (r3 + r4);
  r1 = (r6 + r1);
  r1 = (r2 + r1);
  r0.x = dot(r1, vec4<f32>(1.0f));
  r0.x = (r0.x * 0.0625f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = textureSample(t2, s2, r5.xyxx.xy).w;
    r0.y = ((-(r0.wwww)).y + 1.0f);
  } else {
    r0.y = 1.0f;
  }
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).z, 0.0f, 1.0f);
  let v_107 = abs(r7.yyyy);
  r0.w = max(v_107.w, abs(r7.xxxx).w);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_108 = fma(r0.zz, r0.ww, r0.xy);
  r0 = vec4<f32>(v_108.xy, r0.zw);
  let v_109 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_109.xy, r0.zw);
  let v_110 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_110.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r0.w = (r0.y * r0.x);
  let v_111 = bitcast<u32>(r0.z);
  let v_112 = r0.w;
  r0.x = select(r0.x, v_112, (v_111 != 0u));
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
