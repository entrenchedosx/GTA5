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

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

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
  r2 = textureSample(t4, s4, v1.xy.xyxx.xy);
  let v_7 = fma(r2.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r1 = vec4<f32>(r1.x, v_7.xyz);
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = inverseSqrt(r0.w);
  let v_8 = (r0.www * r1.yzw);
  r1 = vec4<f32>(r1.x, v_8.xyz);
  r0.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r1.xxxx)).w + r0.w);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_9 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  r2 = (cb6_6.tint_symbol_1[14u].zwzw * cb11_11.tint_symbol_3[6u].xxxx);
  let v_10 = (r0.www * v3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r4 = vec4<f32>(v_11.xy, r4.zw);
  let v_12 = (r4.xy * vec2<f32>(0.015625f));
  r4 = vec4<f32>(v_12.xy, r4.zw);
  r4 = textureSample(t14, s14, r4.xyxx.xy);
  r1.x = (r4.z * cb12_12.tint_symbol_2[0u].w);
  let v_13 = fma(r3.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = &(x0[0u]);
  let v_15 = r4;
  *(v_14) = vec4<f32>(v_15.xyz, (*(v_14)).w);
  let v_16 = fma(r3.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = &(x0[1u]);
  let v_18 = r5;
  *(v_17) = vec4<f32>(v_18.xyz, (*(v_17)).w);
  let v_19 = fma(r3.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = &(x0[2u]);
  let v_21 = r3;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = &(x0[3u]);
  let v_23 = r3;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  r3.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_24 = -(r1.xxxx);
  r1.x = fma(r3.z, 0.5f, v_24.x);
  let v_25 = abs(r3.yyyy);
  let v_26 = max(v_25.xy, abs(r3.xxxx).xy);
  r3 = vec4<f32>(v_26.xy, r3.zw);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r1.x)));
  let v_27 = (bitcast<u32>(r3.x) != 0u);
  let v_28 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r3.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_28, v_27);
  let v_29 = abs(r5.yyyy);
  r3.z = max(v_29.z, abs(r5.xxxx).z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r1.x)));
  let v_30 = bitcast<u32>(r3.z);
  r3.x = select(r3.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_30 != 0u));
  let v_31 = abs(r4.yyyy);
  r3.z = max(v_31.z, abs(r4.xxxx).z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r3.z < r1.x)));
  let v_32 = bitcast<u32>(r1.x);
  r1.x = select(r3.x, 0.0f, (v_32 != 0u));
  let v_33 = x0[bitcast<i32>(r1.x)];
  r3 = vec4<f32>(v_33.x, r3.y, v_33.yz);
  r4.x = f32(bitcast<i32>(r1.x));
  r4.y = (r4.x + 0.5f);
  r4.y = (r4.y * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.xxxx)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r4.x = dot(r5, cb6_6.tint_symbol_1[12u]);
  r4.z = dot(r5, cb6_6.tint_symbol_1[13u]);
  r5.x = (r3.x + 0.5f);
  r5.y = fma(r3.z, 0.25f, r4.y);
  r3.x = bitcast<f32>(select(0u, 4294967295u, !((r4.x == 0.0f))));
  let v_34 = -(r4.xxxx);
  r3.z = (r3.w + v_34.z);
  let v_35 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_35.xy, r6.z, v_35.z);
  r6.z = dpdx(r3.z);
  let v_36 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_36.xyz, r7.w);
  r7.w = dpdy(r3.z);
  let v_37 = (r6.yw * r7.yw);
  r4 = vec4<f32>(v_37.xy, r4.zw);
  let v_38 = -(r4.xyxx);
  let v_39 = fma(r6.xz, r7.xz, v_38.xy);
  r8 = vec4<f32>(v_39.xy, r8.zw);
  r4.x = (1.0f / r8.x);
  r4.y = (r6.z * r7.y);
  let v_40 = -(r4.yyyy);
  r8.z = fma(r6.x, r7.w, v_40.z);
  let v_41 = (r4.xx * r8.yz);
  r4 = vec4<f32>(v_41.xy, r4.zw);
  let v_42 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_42.xy, r4.zw);
  let v_43 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_43.xy, r4.zw);
  r3.z = fma((-(r4.zzzz)).z, r4.x, r3.z);
  r3.z = fma((-(r4.zzzz)).z, r4.y, r3.z);
  let v_44 = bitcast<u32>(r3.x);
  let v_45 = r3.z;
  r4.z = select(r3.w, v_45, (v_44 != 0u));
  let v_46 = (r1.zzz * cb6_6.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_46.x, r3.y, v_46.yz);
  let v_47 = fma(r1.yyy, cb6_6.tint_symbol_1[0u].xyz, r3.xzw);
  r3 = vec4<f32>(v_47.x, r3.y, v_47.yz);
  let v_48 = fma(r1.www, cb6_6.tint_symbol_1[2u].xyz, r3.xzw);
  r1 = vec4<f32>(r1.x, v_48.xyz);
  let v_49 = (r1.yzw * vec3<f32>(1.0f, 0.0f, 0.0f));
  r3 = vec4<f32>(v_49.x, r3.y, v_49.yz);
  let v_50 = -(r3.xxzw);
  let v_51 = fma(r1.wyz, vec3<f32>(0.0f, 0.0f, 1.0f), v_50.xzw);
  r3 = vec4<f32>(v_51.x, r3.y, v_51.yz);
  let v_52 = ((-(r1.wyzw)).xyz * r3.xzw);
  r6 = vec4<f32>(v_52.xyz, r6.w);
  let v_53 = -(r1.zzwy);
  let v_54 = -(r6.xxyz);
  let v_55 = fma(v_53.yzw, r3.zwx, v_54.yzw);
  r1 = vec4<f32>(r1.x, v_55.xyz);
  r3.x = dot(r1.yz, r1.yz);
  r3.z = inverseSqrt(r3.x);
  let v_56 = (r1.yz * r3.zz);
  let v_57 = r1;
  r1 = vec4<f32>(v_57.x, v_56.xy, v_57.w);
  let v_58 = (r1.ww * r1.yz);
  let v_59 = r1;
  r1 = vec4<f32>(v_59.x, v_58.xy, v_59.w);
  r1.w = sqrt(r3.x);
  let v_60 = (r1.yz / r1.ww);
  let v_61 = r1;
  r1 = vec4<f32>(v_61.x, v_60.xy, v_61.w);
  r1.x = bitcast<f32>((4i + bitcast<i32>(r1.x)));
  let v_62 = (r1.yz / cb6_6.tint_symbol_1[bitcast<i32>(r1.x)].xy);
  let v_63 = r1;
  r1 = vec4<f32>(v_63.x, v_62.xy, v_63.w);
  let v_64 = (r1.yz * cb6_6.tint_symbol_1[bitcast<i32>(r1.x)].zz);
  r1 = vec4<f32>(v_64.xy, r1.zw);
  let v_65 = (r1.xy * vec2<f32>(1.0f, 4.0f));
  r1 = vec4<f32>(v_65.xy, r1.zw);
  r6 = (r2.zwzw * vec4<f32>(-0.34609651565551757812f, 0.32848981022834777832f, -0.79929149150848388672f, 0.20174059271812438965f));
  r5.z = dot(r1.xy, r6.xy);
  let v_66 = r6;
  r4 = vec4<f32>(v_66.xy, r4.zw);
  let v_67 = (r4.xyz + r5.xyz);
  r3 = vec4<f32>(v_67.x, r3.y, v_67.yz);
  r5.w = dot(r1.xy, r6.zw);
  let v_68 = r6;
  r4 = vec4<f32>(v_68.zw, r4.zw);
  let v_69 = (r5.xyw + r4.xyz);
  r6 = vec4<f32>(v_69.xyz, r6.w);
  r7 = (r2.zwzw * vec4<f32>(-0.03117550723254680634f, 0.17933775484561920166f, 0.51474946737289428711f, 0.25350245833396911621f));
  r8.x = dot(r1.xy, r7.xy);
  let v_70 = r7;
  r4 = vec4<f32>(v_70.xy, r4.zw);
  let v_71 = r5;
  let v_72 = r8;
  r8 = vec4<f32>(v_72.x, v_71.xy, v_72.w);
  let v_73 = (r8.yzx + r4.xyz);
  r9 = vec4<f32>(v_73.xyz, r9.w);
  r8.w = dot(r1.xy, r7.zw);
  let v_74 = r7;
  r4 = vec4<f32>(v_74.zw, r4.zw);
  let v_75 = (r8.yzw + r4.xyz);
  r7 = vec4<f32>(v_75.xyz, r7.w);
  r10 = (r2.zwzw * vec4<f32>(-0.07286971807479858398f, 0.00809734128415584564f, -0.96978127956390380859f, 0.03452160954475402832f));
  r8.x = dot(r1.xy, r10.xy);
  let v_76 = r10;
  r4 = vec4<f32>(v_76.xy, r4.zw);
  let v_77 = (r8.yzx + r4.xyz);
  r11 = vec4<f32>(v_77.xyz, r11.w);
  r8.w = dot(r1.xy, r10.zw);
  let v_78 = r10;
  r4 = vec4<f32>(v_78.zw, r4.zw);
  let v_79 = (r8.yzw + r4.xyz);
  r10 = vec4<f32>(v_79.xyz, r10.w);
  r12 = (r2.zwzw * vec4<f32>(0.54554665088653564453f, 0.02412854135036468506f, -0.02890610881149768829f, -0.13678458333015441895f));
  r8.x = dot(r1.xy, r12.xy);
  let v_80 = r12;
  r4 = vec4<f32>(v_80.xy, r4.zw);
  let v_81 = (r8.yzx + r4.xyz);
  r13 = vec4<f32>(v_81.xyz, r13.w);
  r8.w = dot(r1.xy, r12.zw);
  let v_82 = r12;
  r4 = vec4<f32>(v_82.zw, r4.zw);
  let v_83 = (r8.yzw + r4.xyz);
  r12 = vec4<f32>(v_83.xyz, r12.w);
  r14 = (r2.zwzw * vec4<f32>(-0.47951146960258483887f, -0.24483287334442138672f, 0.7587884068489074707f, -0.1121091991662979126f));
  r8.x = dot(r1.xy, r14.xy);
  let v_84 = r14;
  r4 = vec4<f32>(v_84.xy, r4.zw);
  let v_85 = (r8.yzx + r4.xyz);
  r15 = vec4<f32>(v_85.xyz, r15.w);
  r8.w = dot(r1.xy, r14.zw);
  let v_86 = r14;
  r4 = vec4<f32>(v_86.zw, r4.zw);
  let v_87 = (r8.yzw + r4.xyz);
  r14 = vec4<f32>(v_87.xyz, r14.w);
  r16 = (r2.zwzw * vec4<f32>(0.33935257792472839355f, -0.24932782351970672607f, 1.07059764862060546875f, 0.2081225961446762085f));
  r8.x = dot(r1.xy, r16.xy);
  let v_88 = r16;
  r4 = vec4<f32>(v_88.xy, r4.zw);
  let v_89 = (r8.yzx + r4.xyz);
  r17 = vec4<f32>(v_89.xyz, r17.w);
  r8.w = dot(r1.xy, r16.zw);
  let v_90 = r16;
  r4 = vec4<f32>(v_90.zw, r4.zw);
  let v_91 = (r8.yzw + r4.xyz);
  r16 = vec4<f32>(v_91.xyz, r16.w);
  r18 = (r2.zwzw * vec4<f32>(1.29403817653656005859f, -0.01807767525315284729f, -0.7475630640983581543f, -0.11397434771060943604f));
  r8.x = dot(r1.xy, r18.xy);
  let v_92 = r18;
  r4 = vec4<f32>(v_92.xy, r4.zw);
  let v_93 = (r8.yzx + r4.xyz);
  r19 = vec4<f32>(v_93.xyz, r19.w);
  r8.w = dot(r1.xy, r18.zw);
  let v_94 = r18;
  r4 = vec4<f32>(v_94.zw, r4.zw);
  let v_95 = (r8.yzw + r4.xyz);
  r18 = vec4<f32>(v_95.xyz, r18.w);
  r2 = (r2 * vec4<f32>(0.94772171974182128906f, -0.24876354634761810303f, -1.34315288066864013672f, -0.08858405798673629761f));
  r8.x = dot(r1.xy, r2.xy);
  let v_96 = r2;
  r4 = vec4<f32>(v_96.xy, r4.zw);
  let v_97 = (r8.yzx + r4.xyz);
  r20 = vec4<f32>(v_97.xyz, r20.w);
  r8.w = dot(r1.xy, r2.zw);
  let v_98 = r2;
  r4 = vec4<f32>(v_98.zw, r4.zw);
  let v_99 = (r8.yzw + r4.xyz);
  r1 = vec4<f32>(v_99.xyz, r1.w);
  let v_100 = r3.xzxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_100.xy, r3.w);
  let v_101 = r6.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_101.xy, r6.z);
  let v_102 = r9.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_102.xy, r9.z);
  let v_103 = r7.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_103.xy, r7.z);
  let v_104 = r11.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_104.xy, r11.z);
  let v_105 = r10.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_105.xy, r10.z);
  let v_106 = r13.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_106.xy, r13.z);
  let v_107 = r12.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_107.xy, r12.z);
  let v_108 = r15.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_108.xy, r15.z);
  let v_109 = r14.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_109.xy, r14.z);
  let v_110 = r17.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_110.xy, r17.z);
  let v_111 = r16.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_111.xy, r16.z);
  let v_112 = r19.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_112.xy, r19.z);
  let v_113 = r18.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_113.xy, r18.z);
  let v_114 = r20.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_114.xy, r20.z);
  let v_115 = r1.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_115.xy, r1.z);
  r1 = (r2 + r4);
  r1 = (r6 + r1);
  r1 = (r7 + r1);
  r1.x = dot(r1, vec4<f32>(1.0f));
  r1.x = (r1.x * 0.0625f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r2 = textureSample(t2, s2, r5.xyxx.xy);
    r1.y = ((-(r2.wwww)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  r1.z = clamp(fma(r3.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).z, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_116 = fma(r0.ww, r1.zz, r1.xy);
  r1 = vec4<f32>(v_116.xy, r1.zw);
  let v_117 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_117.xy, r1.zw);
  let v_118 = min(r1.xy, vec2<f32>(1.0f));
  let v_119 = r1;
  r1 = vec4<f32>(v_119.x, v_118.xy, v_119.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r1.z * r1.y);
  let v_120 = bitcast<u32>(r0.w);
  let v_121 = r1.w;
  r1.x = select(r1.y, v_121, (v_120 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_122 = r2;
  r2 = vec4<f32>(v_122.x, 0.0f, v_122.z, 0.5f);
  let v_123 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_123.xy, r0.zw);
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
