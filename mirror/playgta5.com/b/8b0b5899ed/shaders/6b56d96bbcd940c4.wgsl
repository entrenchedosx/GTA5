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
  let v_5 = (r0.zzz * v3.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = (r0.xy * vec2<f32>(0.015625f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = textureSample(t14, s14, r0.xyxx.xy).xyz;
  r0 = vec4<f32>(v_7.xy, r0.z, v_7.z);
  r0.w = (r0.w * cb12_12.tint_symbol_2[0u].w);
  let v_8 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_8.xy, r2.zw);
  let v_9 = fma(r1.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = &(x0[0u]);
  let v_11 = r3;
  *(v_10) = vec4<f32>(v_11.xyz, (*(v_10)).w);
  let v_12 = fma(r1.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = &(x0[1u]);
  let v_14 = r4;
  *(v_13) = vec4<f32>(v_14.xyz, (*(v_13)).w);
  let v_15 = fma(r1.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = &(x0[2u]);
  let v_17 = r1;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = &(x0[3u]);
  let v_19 = r1;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.39999997615814208984f, 0.34999999403953552246f));
  r0 = vec4<f32>(v_20.xy, r0.zw);
  r1.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_21 = -(r0.wwww);
  r0.w = fma(r1.z, 0.5f, v_21.w);
  let v_22 = abs(r1.yyyy);
  let v_23 = max(v_22.xy, abs(r1.xxxx).xy);
  r1 = vec4<f32>(v_23.xy, r1.zw);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.w)));
  let v_24 = (bitcast<u32>(r1.x) != 0u);
  let v_25 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_25, v_24);
  let v_26 = abs(r4.yyyy);
  r1.z = max(v_26.z, abs(r4.xxxx).z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z < r0.w)));
  let v_27 = bitcast<u32>(r1.z);
  r1.x = select(r1.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_27 != 0u));
  let v_28 = abs(r3.yyyy);
  r1.z = max(v_28.z, abs(r3.xxxx).z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.z < r0.w)));
  let v_29 = bitcast<u32>(r0.w);
  r0.w = select(r1.x, 0.0f, (v_29 != 0u));
  let v_30 = x0[bitcast<i32>(r0.w)];
  r1 = vec4<f32>(v_30.x, r1.y, v_30.yz);
  r0.w = f32(bitcast<i32>(r0.w));
  r3.x = (r0.w + 0.5f);
  r3.x = (r3.x * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.wwww)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r0.w = dot(r4, cb6_6.tint_symbol_1[12u]);
  r3.y = dot(r4, cb6_6.tint_symbol_1[13u]);
  r4.x = (r1.x + 0.5f);
  r4.y = fma(r1.z, 0.25f, r3.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((r0.w == 0.0f))));
  r0.w = ((-(r0.wwww)).w + r1.w);
  let v_31 = dpdx(r4.xyy);
  r5 = vec4<f32>(v_31.xy, r5.z, v_31.z);
  r5.z = dpdx(r0.w);
  let v_32 = dpdy(r4.yxy);
  r6 = vec4<f32>(v_32.xyz, r6.w);
  r6.w = dpdy(r0.w);
  let v_33 = (r5.yw * r6.yw);
  let v_34 = r3;
  r3 = vec4<f32>(v_33.x, v_34.y, v_33.y, v_34.w);
  let v_35 = -(r3.xzxx);
  let v_36 = fma(r5.xz, r6.xz, v_35.xy);
  r7 = vec4<f32>(v_36.xy, r7.zw);
  r1.z = (1.0f / r7.x);
  r3.x = (r5.z * r6.y);
  let v_37 = -(r3.xxxx);
  r7.z = fma(r5.x, r6.w, v_37.z);
  let v_38 = (r1.zz * r7.yz);
  let v_39 = r3;
  r3 = vec4<f32>(v_38.x, v_39.y, v_38.y, v_39.w);
  let v_40 = max(r3.xz, vec2<f32>());
  let v_41 = r3;
  r3 = vec4<f32>(v_40.x, v_41.y, v_40.y, v_41.w);
  let v_42 = min(r3.xz, vec2<f32>(0.5f));
  let v_43 = r3;
  r3 = vec4<f32>(v_42.x, v_43.y, v_42.y, v_43.w);
  r0.w = fma((-(r3.yyyy)).w, r3.x, r0.w);
  r0.w = fma((-(r3.yyyy)).w, r3.z, r0.w);
  let v_44 = bitcast<u32>(r1.x);
  let v_45 = r0.w;
  r4.z = select(r1.w, v_45, (v_44 != 0u));
  r3 = (r2.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_46 = (r2.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r5 = vec4<f32>(v_46.xy, r5.zw);
  let v_47 = (r2.xy * r0.xy);
  r6 = vec4<f32>(v_47.xy, r6.zw);
  r6.z = 0.0f;
  let v_48 = (r4.xyz + r6.xyz);
  r1 = vec4<f32>(v_48.x, r1.y, v_48.yz);
  let v_49 = (-(r2.yyyx)).zw;
  r2 = vec4<f32>(r2.xy, v_49.xy);
  r6 = (r0.xyxy * r2.zxyw);
  let v_50 = (r6.xy * vec2<f32>(0.5f));
  r7 = vec4<f32>(v_50.xy, r7.zw);
  r7.z = 0.0f;
  let v_51 = (r4.xyz + r7.xyz);
  r7 = vec4<f32>(v_51.xyz, r7.w);
  let v_52 = ((-(r2.xyxx)).xy * r0.xy);
  r2 = vec4<f32>(v_52.xy, r2.zw);
  let v_53 = (r2.xy * vec2<f32>(0.75f));
  r2 = vec4<f32>(v_53.xy, r2.zw);
  r2.z = 0.0f;
  let v_54 = (r2.xyz + r4.xyz);
  r2 = vec4<f32>(v_54.xyz, r2.w);
  let v_55 = (r6.zw * vec2<f32>(0.25f));
  r6 = vec4<f32>(v_55.xy, r6.zw);
  r6.z = 0.0f;
  let v_56 = (r4.xyz + r6.xyz);
  r6 = vec4<f32>(v_56.xyz, r6.w);
  r8 = (r0.xyxy * r3.zwxy);
  let v_57 = r8;
  r9 = vec4<f32>(v_57.zw, r9.zw);
  r9.z = 0.0f;
  let v_58 = (r4.xyz + r9.xyz);
  r9 = vec4<f32>(v_58.xyz, r9.w);
  r10 = (r3.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r10 = (r0.xyxy * r10);
  let v_59 = (r10.xy * vec2<f32>(0.5f));
  r11 = vec4<f32>(v_59.xy, r11.zw);
  r11.z = 0.0f;
  let v_60 = (r4.xyz + r11.xyz);
  r11 = vec4<f32>(v_60.xyz, r11.w);
  let v_61 = -(r3);
  r12 = (r0.xyxy * v_61);
  r12 = (r12.zwxy * vec4<f32>(0.75f));
  let v_62 = r12;
  r13 = vec4<f32>(v_62.zw, r13.zw);
  r13.z = 0.0f;
  let v_63 = (r4.xyz + r13.xyz);
  r13 = vec4<f32>(v_63.xyz, r13.w);
  let v_64 = (r10.zw * vec2<f32>(0.25f));
  r10 = vec4<f32>(v_64.xy, r10.zw);
  r10.z = 0.0f;
  let v_65 = (r4.xyz + r10.xyz);
  r10 = vec4<f32>(v_65.xyz, r10.w);
  r8.z = 0.0f;
  let v_66 = (r4.xyz + r8.xyz);
  r8 = vec4<f32>(v_66.xyz, r8.w);
  r3 = (r3.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r3 = (r0.xyxy * r3);
  let v_67 = (r3.xy * vec2<f32>(0.5f));
  r14 = vec4<f32>(v_67.xy, r14.zw);
  r14.z = 0.0f;
  let v_68 = (r4.xyz + r14.xyz);
  r14 = vec4<f32>(v_68.xyz, r14.w);
  r12.z = 0.0f;
  let v_69 = (r4.xyz + r12.xyz);
  r12 = vec4<f32>(v_69.xyz, r12.w);
  let v_70 = (r3.zw * vec2<f32>(0.25f));
  r3 = vec4<f32>(v_70.xy, r3.zw);
  r3.z = 0.0f;
  let v_71 = (r3.xyz + r4.xyz);
  r3 = vec4<f32>(v_71.xyz, r3.w);
  let v_72 = (r0.xy * r5.xy);
  r15 = vec4<f32>(v_72.xy, r15.zw);
  r15.z = 0.0f;
  let v_73 = (r4.xyz + r15.xyz);
  r15 = vec4<f32>(v_73.xyz, r15.w);
  let v_74 = (-(r5.yyyx)).zw;
  r5 = vec4<f32>(r5.xy, v_74.xy);
  r16 = (r0.xyxy * r5.zxyw);
  let v_75 = (r16.xy * vec2<f32>(0.5f));
  r17 = vec4<f32>(v_75.xy, r17.zw);
  r17.z = 0.0f;
  let v_76 = (r4.xyz + r17.xyz);
  r17 = vec4<f32>(v_76.xyz, r17.w);
  let v_77 = -(r5.xyxx);
  let v_78 = (r0.xy * v_77.xy);
  r0 = vec4<f32>(v_78.xy, r0.zw);
  let v_79 = (r0.xy * vec2<f32>(0.75f));
  r5 = vec4<f32>(v_79.xy, r5.zw);
  r5.z = 0.0f;
  let v_80 = (r4.xyz + r5.xyz);
  r0 = vec4<f32>(v_80.xy, r0.z, v_80.z);
  let v_81 = (r16.zw * vec2<f32>(0.25f));
  r5 = vec4<f32>(v_81.xy, r5.zw);
  r5.z = 0.0f;
  let v_82 = (r4.xyz + r5.xyz);
  r5 = vec4<f32>(v_82.xyz, r5.w);
  let v_83 = r1.xzxx;
  r16.x = textureSampleCompareLevel(t15, s15, v_83.xy, r1.w);
  let v_84 = r7.xyxx;
  r16.y = textureSampleCompareLevel(t15, s15, v_84.xy, r7.z);
  let v_85 = r2.xyxx;
  r16.z = textureSampleCompareLevel(t15, s15, v_85.xy, r2.z);
  let v_86 = r6.xyxx;
  r16.w = textureSampleCompareLevel(t15, s15, v_86.xy, r6.z);
  let v_87 = r9.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_87.xy, r9.z);
  let v_88 = r11.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_88.xy, r11.z);
  let v_89 = r13.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_89.xy, r13.z);
  let v_90 = r10.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_90.xy, r10.z);
  let v_91 = r8.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_91.xy, r8.z);
  let v_92 = r14.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_92.xy, r14.z);
  let v_93 = r12.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_93.xy, r12.z);
  let v_94 = r3.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_94.xy, r3.z);
  let v_95 = r15.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_95.xy, r15.z);
  let v_96 = r17.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_96.xy, r17.z);
  let v_97 = r0.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_97.xy, r0.w);
  let v_98 = r5.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_98.xy, r5.z);
  r2 = (r2 + r16);
  r2 = (r6 + r2);
  r2 = (r3 + r2);
  r0.x = dot(r2, vec4<f32>(1.0f));
  r0.x = (r0.x * 0.0625f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = textureSample(t2, s2, r4.xyxx.xy).w;
    r0.y = ((-(r0.wwww)).y + 1.0f);
  } else {
    r0.y = 1.0f;
  }
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).z, 0.0f, 1.0f);
  r0.w = clamp(fma(r1.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_99 = fma(r0.zz, r0.ww, r0.xy);
  r0 = vec4<f32>(v_99.xy, r0.zw);
  let v_100 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_100.xy, r0.zw);
  let v_101 = min(r0.xy, vec2<f32>(1.0f));
  let v_102 = r0;
  r0 = vec4<f32>(v_102.x, v_101.xy, v_102.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.x = (r0.z * r0.y);
  let v_103 = bitcast<u32>(r0.w);
  let v_104 = r1.x;
  r0.x = select(r0.y, v_104, (v_103 != 0u));
  o0 = r0.xzzz;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
