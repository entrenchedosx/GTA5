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
  let v_1 = (r0.xxx * v3.xyz);
  r0 = vec4<f32>(r0.x, v_1.xyz);
  let v_2 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = (r1.xy * vec2<f32>(0.015625f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1 = textureSample(t14, s14, r1.xyxx.xy);
  r1.z = (r1.z * cb12_12.tint_symbol_2[0u].w);
  let v_4 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_4.xy, r2.zw);
  let v_5 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r1 = vec4<f32>(v_5.xy, r1.z, v_5.z);
  let v_6 = &(x0[0u]);
  let v_7 = r1;
  *(v_6) = vec4<f32>(v_7.xyw, (*(v_6)).w);
  let v_8 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = &(x0[1u]);
  let v_10 = r3;
  *(v_9) = vec4<f32>(v_10.xyz, (*(v_9)).w);
  let v_11 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r0 = vec4<f32>(r0.x, v_11.xyz);
  let v_12 = &(x0[2u]);
  let v_13 = r0;
  *(v_12) = vec4<f32>(v_13.yzw, (*(v_12)).w);
  let v_14 = &(x0[3u]);
  let v_15 = r0;
  *(v_14) = vec4<f32>(v_15.yzw, (*(v_14)).w);
  let v_16 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(5.59999990463256835938f, 1.39999997615814208984f));
  r3 = vec4<f32>(r3.xy, v_16.xy);
  r0.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  let v_17 = -(r1.zzzz);
  r0.w = fma(r0.w, 0.5f, v_17.w);
  let v_18 = abs(r0.zzzz);
  let v_19 = max(v_18.yz, abs(r0.yyyy).yz);
  let v_20 = r0;
  r0 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < r0.w)));
  let v_21 = (bitcast<u32>(r0.y) != 0u);
  let v_22 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r0.y = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_22, v_21);
  let v_23 = abs(r3.yyyy);
  r1.z = max(v_23.z, abs(r3.xxxx).z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z < r0.w)));
  let v_24 = bitcast<u32>(r1.z);
  r0.y = select(r0.y, bitcast<f32>(v.tint_symbol_4[2i].x), (v_24 != 0u));
  let v_25 = abs(r1.yyyy);
  r1.x = max(v_25.x, abs(r1.xxxx).x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.w)));
  let v_26 = bitcast<u32>(r0.w);
  r0.y = select(r0.y, 0.0f, (v_26 != 0u));
  let v_27 = x0[bitcast<i32>(r0.y)];
  r1 = vec4<f32>(v_27.xyz, r1.w);
  r0.y = f32(bitcast<i32>(r0.y));
  r0.w = (r0.y + 0.5f);
  r0.w = (r0.w * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.yyyy)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r0.y = dot(r4, cb6_6.tint_symbol_1[12u]);
  r1.w = dot(r4, cb6_6.tint_symbol_1[13u]);
  r4.x = (r1.x + 0.5f);
  r4.y = fma(r1.y, 0.25f, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((r0.y == 0.0f))));
  r0.y = ((-(r0.yyyy)).y + r1.z);
  let v_28 = dpdx(r4.xyy);
  r5 = vec4<f32>(v_28.xy, r5.z, v_28.z);
  r5.z = dpdx(r0.y);
  let v_29 = dpdy(r4.yxy);
  r6 = vec4<f32>(v_29.xyz, r6.w);
  r6.w = dpdy(r0.y);
  let v_30 = (r5.yw * r6.yw);
  r1 = vec4<f32>(v_30.xy, r1.zw);
  let v_31 = -(r1.xyxx);
  let v_32 = fma(r5.xz, r6.xz, v_31.xy);
  r7 = vec4<f32>(v_32.xy, r7.zw);
  r1.x = (1.0f / r7.x);
  r1.y = (r5.z * r6.y);
  let v_33 = -(r1.yyyy);
  r7.z = fma(r5.x, r6.w, v_33.z);
  let v_34 = (r1.xx * r7.yz);
  r1 = vec4<f32>(v_34.xy, r1.zw);
  let v_35 = max(r1.xy, vec2<f32>());
  r1 = vec4<f32>(v_35.xy, r1.zw);
  let v_36 = min(r1.xy, vec2<f32>(0.5f));
  r1 = vec4<f32>(v_36.xy, r1.zw);
  r0.y = fma((-(r1.wwww)).y, r1.x, r0.y);
  r0.y = fma((-(r1.wwww)).y, r1.y, r0.y);
  let v_37 = bitcast<u32>(r0.w);
  let v_38 = r0.y;
  r4.z = select(r1.z, v_38, (v_37 != 0u));
  r1 = (r2.yxxy * vec4<f32>(-0.88800001144409179688f, 0.88800001144409179688f, -0.77700001001358032227f, -0.77700001001358032227f));
  let v_39 = (r2.yx * vec2<f32>(0.66600000858306884766f, -0.66600000858306884766f));
  r5 = vec4<f32>(v_39.xy, r5.zw);
  let v_40 = (r2.xy * r3.zw);
  r6 = vec4<f32>(v_40.xy, r6.zw);
  r6.z = 0.0f;
  let v_41 = (r4.xyz + r6.xyz);
  r6 = vec4<f32>(v_41.xyz, r6.w);
  let v_42 = (-(r2.yyyx)).zw;
  r2 = vec4<f32>(r2.xy, v_42.xy);
  r7 = (r2.zxyw * r3.zwzw);
  let v_43 = (r7.xy * vec2<f32>(0.5f));
  r8 = vec4<f32>(v_43.xy, r8.zw);
  r8.z = 0.0f;
  let v_44 = (r4.xyz + r8.xyz);
  r8 = vec4<f32>(v_44.xyz, r8.w);
  let v_45 = ((-(r2.xxxy)).yw * r3.zw);
  let v_46 = r0;
  r0 = vec4<f32>(v_46.x, v_45.x, v_46.z, v_45.y);
  let v_47 = (r0.yw * vec2<f32>(0.75f));
  r2 = vec4<f32>(v_47.xy, r2.zw);
  r2.z = 0.0f;
  let v_48 = (r2.xyz + r4.xyz);
  r2 = vec4<f32>(v_48.xyz, r2.w);
  let v_49 = (r7.zw * vec2<f32>(0.25f));
  r7 = vec4<f32>(v_49.xy, r7.zw);
  r7.z = 0.0f;
  let v_50 = (r4.xyz + r7.xyz);
  r7 = vec4<f32>(v_50.xyz, r7.w);
  r9 = (r1.zwxy * r3.zwzw);
  let v_51 = r9;
  r10 = vec4<f32>(v_51.zw, r10.zw);
  r10.z = 0.0f;
  let v_52 = (r4.xyz + r10.xyz);
  r10 = vec4<f32>(v_52.xyz, r10.w);
  r11 = (r1.yxyx * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r11 = (r3.zwzw * r11);
  let v_53 = (r11.xy * vec2<f32>(0.5f));
  r12 = vec4<f32>(v_53.xy, r12.zw);
  r12.z = 0.0f;
  let v_54 = (r4.xyz + r12.xyz);
  r12 = vec4<f32>(v_54.xyz, r12.w);
  r13 = (-(r1) * r3.zwzw);
  r13 = (r13.zwxy * vec4<f32>(0.75f));
  let v_55 = r13;
  r14 = vec4<f32>(v_55.zw, r14.zw);
  r14.z = 0.0f;
  let v_56 = (r4.xyz + r14.xyz);
  r14 = vec4<f32>(v_56.xyz, r14.w);
  let v_57 = (r11.zw * vec2<f32>(0.25f));
  r11 = vec4<f32>(v_57.xy, r11.zw);
  r11.z = 0.0f;
  let v_58 = (r4.xyz + r11.xyz);
  r11 = vec4<f32>(v_58.xyz, r11.w);
  r9.z = 0.0f;
  let v_59 = (r4.xyz + r9.xyz);
  r9 = vec4<f32>(v_59.xyz, r9.w);
  r1 = (r1.wzwz * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f));
  r1 = (r1 * r3.zwzw);
  let v_60 = (r1.xy * vec2<f32>(0.5f));
  r15 = vec4<f32>(v_60.xy, r15.zw);
  r15.z = 0.0f;
  let v_61 = (r4.xyz + r15.xyz);
  r15 = vec4<f32>(v_61.xyz, r15.w);
  r13.z = 0.0f;
  let v_62 = (r4.xyz + r13.xyz);
  r13 = vec4<f32>(v_62.xyz, r13.w);
  let v_63 = (r1.zw * vec2<f32>(0.25f));
  r1 = vec4<f32>(v_63.xy, r1.zw);
  r1.z = 0.0f;
  let v_64 = (r1.xyz + r4.xyz);
  r1 = vec4<f32>(v_64.xyz, r1.w);
  let v_65 = (r3.zw * r5.xy);
  r16 = vec4<f32>(v_65.xy, r16.zw);
  r16.z = 0.0f;
  let v_66 = (r4.xyz + r16.xyz);
  r16 = vec4<f32>(v_66.xyz, r16.w);
  let v_67 = (-(r5.yyyx)).zw;
  r5 = vec4<f32>(r5.xy, v_67.xy);
  r17 = (r3.zwzw * r5.zxyw);
  let v_68 = (r17.xy * vec2<f32>(0.5f));
  r18 = vec4<f32>(v_68.xy, r18.zw);
  r18.z = 0.0f;
  let v_69 = (r4.xyz + r18.xyz);
  r18 = vec4<f32>(v_69.xyz, r18.w);
  let v_70 = -(r5.xxxy);
  let v_71 = (r3.zw * v_70.yw);
  let v_72 = r0;
  r0 = vec4<f32>(v_72.x, v_71.x, v_72.z, v_71.y);
  let v_73 = (r0.yw * vec2<f32>(0.75f));
  r3 = vec4<f32>(v_73.xy, r3.zw);
  r3.z = 0.0f;
  let v_74 = (r3.xyz + r4.xyz);
  r3 = vec4<f32>(v_74.xyz, r3.w);
  let v_75 = (r17.zw * vec2<f32>(0.25f));
  r5 = vec4<f32>(v_75.xy, r5.zw);
  r5.z = 0.0f;
  let v_76 = (r4.xyz + r5.xyz);
  r5 = vec4<f32>(v_76.xyz, r5.w);
  let v_77 = r6.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_77.xy, r6.z);
  let v_78 = r8.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_78.xy, r8.z);
  let v_79 = r2.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_79.xy, r2.z);
  let v_80 = r7.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_80.xy, r7.z);
  let v_81 = r10.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_81.xy, r10.z);
  let v_82 = r12.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_82.xy, r12.z);
  let v_83 = r14.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_83.xy, r14.z);
  let v_84 = r11.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_84.xy, r11.z);
  let v_85 = r9.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_85.xy, r9.z);
  let v_86 = r15.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_86.xy, r15.z);
  let v_87 = r13.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_87.xy, r13.z);
  let v_88 = r1.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_88.xy, r1.z);
  let v_89 = r16.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_89.xy, r16.z);
  let v_90 = r18.xyxx;
  r1.y = textureSampleCompareLevel(t15, s15, v_90.xy, r18.z);
  let v_91 = r3.xyxx;
  r1.z = textureSampleCompareLevel(t15, s15, v_91.xy, r3.z);
  let v_92 = r5.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_92.xy, r5.z);
  r2 = (r2 + r6);
  r2 = (r7 + r2);
  r1 = (r1 + r2);
  r0.y = dot(r1, vec4<f32>(1.0f));
  r1.x = (r0.y * 0.0625f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r2 = textureSample(t2, s2, r4.xyxx.xy);
    r1.y = ((-(r2.wwww)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.x = clamp(fma(r0.xxxx, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).x, 0.0f, 1.0f);
  r0.y = clamp(fma(r0.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.0f)).y, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_93 = fma(r0.xx, r0.yy, r1.xy);
  r0 = vec4<f32>(v_93.xy, r0.zw);
  let v_94 = clamp(((r0.xyxx * r0.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_94.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r0.w = (r0.y * r0.x);
  let v_95 = bitcast<u32>(r0.z);
  let v_96 = r0.w;
  r0.x = select(r0.x, v_96, (v_95 != 0u));
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
