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

@group(1u) @binding(36u) var t4 : texture_multisampled_2d<f32>;

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
  let v_12 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), 0i).xyz;
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = fma(r2.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_13.xyz, r2.w);
  r1.z = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.z);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  r3 = (cb6_6.tint_symbol_1[14u].zwzw * cb11_11.tint_symbol_3[6u].xxxx);
  let v_14 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = (r1.xy * vec2<f32>(0.015625f));
  r1 = vec4<f32>(v_15.xy, r1.zw);
  r1.x = textureSample(t14, s14, r1.xyxx.xy).z;
  r1.x = (r1.x * cb12_12.tint_symbol_2[0u].w);
  let v_16 = fma(r0.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r1 = vec4<f32>(r1.x, v_16.xyz);
  let v_17 = &(x0[0u]);
  let v_18 = r1;
  *(v_17) = vec4<f32>(v_18.yzw, (*(v_17)).w);
  let v_19 = fma(r0.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = &(x0[1u]);
  let v_21 = r4;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r0.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  let v_23 = &(x0[2u]);
  let v_24 = r5;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = fma(r0.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = &(x0[3u]);
  let v_27 = r0;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  r0.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_28 = -(r1.xxxx);
  r0.z = fma(r0.z, 0.5f, v_28.z);
  let v_29 = abs(r5.yyyy);
  r1.x = max(v_29.x, abs(r5.xxxx).x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.z)));
  let v_30 = (bitcast<u32>(r1.x) != 0u);
  let v_31 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_31, v_30);
  let v_32 = abs(r4.yyyy);
  r1.w = max(v_32.w, abs(r4.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.z)));
  let v_33 = bitcast<u32>(r1.w);
  r1.x = select(r1.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_33 != 0u));
  let v_34 = abs(r1.zzzz);
  r1.y = max(v_34.y, abs(r1.yyyy).y);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.y < r0.z)));
  let v_35 = bitcast<u32>(r0.z);
  r0.z = select(r1.x, 0.0f, (v_35 != 0u));
  let v_36 = x0[bitcast<i32>(r0.z)];
  r1 = vec4<f32>(v_36.xyz, r1.w);
  r1.w = f32(bitcast<i32>(r0.z));
  r2.w = (r1.w + 0.5f);
  r2.w = (r2.w * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.wwww)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r1.w = dot(r4, cb6_6.tint_symbol_1[12u]);
  r4.x = dot(r4, cb6_6.tint_symbol_1[13u]);
  r5.x = (r1.x + 0.5f);
  r5.y = fma(r1.y, 0.25f, r2.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((r1.w == 0.0f))));
  r1.y = ((-(r1.wwww)).y + r1.z);
  let v_37 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_37.xy, r6.z, v_37.z);
  r6.z = dpdx(r1.y);
  let v_38 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_38.xyz, r7.w);
  r7.w = dpdy(r1.y);
  let v_39 = (r6.yw * r7.yw);
  let v_40 = r4;
  r4 = vec4<f32>(v_40.x, v_39.xy, v_40.w);
  let v_41 = -(r4.yzyy);
  let v_42 = fma(r6.xz, r7.xz, v_41.xy);
  r8 = vec4<f32>(v_42.xy, r8.zw);
  r1.w = (1.0f / r8.x);
  r2.w = (r6.z * r7.y);
  let v_43 = -(r2.wwww);
  r8.z = fma(r6.x, r7.w, v_43.z);
  let v_44 = (r1.ww * r8.yz);
  let v_45 = r4;
  r4 = vec4<f32>(v_45.x, v_44.xy, v_45.w);
  let v_46 = max(r4.yz, vec2<f32>());
  let v_47 = r4;
  r4 = vec4<f32>(v_47.x, v_46.xy, v_47.w);
  let v_48 = min(r4.yz, vec2<f32>(0.5f));
  let v_49 = r4;
  r4 = vec4<f32>(v_49.x, v_48.xy, v_49.w);
  r1.y = fma((-(r4.xxxx)).y, r4.y, r1.y);
  r1.y = fma((-(r4.xxxx)).y, r4.z, r1.y);
  let v_50 = bitcast<u32>(r1.x);
  let v_51 = r1.y;
  r1.z = select(r1.z, v_51, (v_50 != 0u));
  let v_52 = (r2.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r4 = vec4<f32>(v_52.xyz, r4.w);
  let v_53 = fma(r2.xxx, cb6_6.tint_symbol_1[0u].xyz, r4.xyz);
  r2 = vec4<f32>(v_53.xy, r2.z, v_53.z);
  let v_54 = fma(r2.zzz, cb6_6.tint_symbol_1[2u].xyz, r2.xyw);
  r2 = vec4<f32>(v_54.xyz, r2.w);
  let v_55 = (r2.xyz * vec3<f32>(1.0f, 0.0f, 0.0f));
  r4 = vec4<f32>(v_55.xyz, r4.w);
  let v_56 = -(r4.xyzx);
  let v_57 = fma(r2.zxy, vec3<f32>(0.0f, 0.0f, 1.0f), v_56.xyz);
  r4 = vec4<f32>(v_57.xyz, r4.w);
  let v_58 = ((-(r2.zxyz)).xyz * r4.xyz);
  r6 = vec4<f32>(v_58.xyz, r6.w);
  let v_59 = -(r2.yzxy);
  let v_60 = -(r6.xyzx);
  let v_61 = fma(v_59.xyz, r4.yzx, v_60.xyz);
  r2 = vec4<f32>(v_61.xyz, r2.w);
  r1.w = dot(r2.xy, r2.xy);
  r2.w = inverseSqrt(r1.w);
  let v_62 = (r2.ww * r2.xy);
  r2 = vec4<f32>(v_62.xy, r2.zw);
  let v_63 = (r2.zz * r2.xy);
  r2 = vec4<f32>(v_63.xy, r2.zw);
  r1.w = sqrt(r1.w);
  let v_64 = (r2.xy / r1.ww);
  r2 = vec4<f32>(v_64.xy, r2.zw);
  r0.z = bitcast<f32>((4i + bitcast<i32>(r0.z)));
  let v_65 = (r2.xy / cb6_6.tint_symbol_1[bitcast<i32>(r0.z)].xy);
  r2 = vec4<f32>(v_65.xy, r2.zw);
  let v_66 = (r2.xy * cb6_6.tint_symbol_1[bitcast<i32>(r0.z)].zz);
  r2 = vec4<f32>(v_66.xy, r2.zw);
  let v_67 = (r2.xy * vec2<f32>(1.0f, 4.0f));
  r2 = vec4<f32>(v_67.xy, r2.zw);
  r4 = (r3.zwzw * vec4<f32>(-0.34609651565551757812f, 0.32848981022834777832f, -0.79929149150848388672f, 0.20174059271812438965f));
  r5.z = dot(r2.xy, r4.xy);
  let v_68 = r4;
  r1 = vec4<f32>(v_68.xy, r1.zw);
  let v_69 = (r1.xyz + r5.xyz);
  r6 = vec4<f32>(v_69.xyz, r6.w);
  r5.w = dot(r2.xy, r4.zw);
  let v_70 = r4;
  r1 = vec4<f32>(v_70.zw, r1.zw);
  let v_71 = (r5.xyw + r1.xyz);
  r4 = vec4<f32>(v_71.xyz, r4.w);
  r7 = (r3.zwzw * vec4<f32>(-0.03117550723254680634f, 0.17933775484561920166f, 0.51474946737289428711f, 0.25350245833396911621f));
  r8.x = dot(r2.xy, r7.xy);
  let v_72 = r7;
  r1 = vec4<f32>(v_72.xy, r1.zw);
  let v_73 = r5;
  let v_74 = r8;
  r8 = vec4<f32>(v_74.x, v_73.xy, v_74.w);
  let v_75 = (r8.yzx + r1.xyz);
  r9 = vec4<f32>(v_75.xyz, r9.w);
  r8.w = dot(r2.xy, r7.zw);
  let v_76 = r7;
  r1 = vec4<f32>(v_76.zw, r1.zw);
  let v_77 = (r8.yzw + r1.xyz);
  r7 = vec4<f32>(v_77.xyz, r7.w);
  r10 = (r3.zwzw * vec4<f32>(-0.07286971807479858398f, 0.00809734128415584564f, -0.96978127956390380859f, 0.03452160954475402832f));
  r8.x = dot(r2.xy, r10.xy);
  let v_78 = r10;
  r1 = vec4<f32>(v_78.xy, r1.zw);
  let v_79 = (r8.yzx + r1.xyz);
  r11 = vec4<f32>(v_79.xyz, r11.w);
  r8.w = dot(r2.xy, r10.zw);
  let v_80 = r10;
  r1 = vec4<f32>(v_80.zw, r1.zw);
  let v_81 = (r8.yzw + r1.xyz);
  r10 = vec4<f32>(v_81.xyz, r10.w);
  r12 = (r3.zwzw * vec4<f32>(0.54554665088653564453f, 0.02412854135036468506f, -0.02890610881149768829f, -0.13678458333015441895f));
  r8.x = dot(r2.xy, r12.xy);
  let v_82 = r12;
  r1 = vec4<f32>(v_82.xy, r1.zw);
  let v_83 = (r8.yzx + r1.xyz);
  r13 = vec4<f32>(v_83.xyz, r13.w);
  r8.w = dot(r2.xy, r12.zw);
  let v_84 = r12;
  r1 = vec4<f32>(v_84.zw, r1.zw);
  let v_85 = (r8.yzw + r1.xyz);
  r12 = vec4<f32>(v_85.xyz, r12.w);
  r14 = (r3.zwzw * vec4<f32>(-0.47951146960258483887f, -0.24483287334442138672f, 0.7587884068489074707f, -0.1121091991662979126f));
  r8.x = dot(r2.xy, r14.xy);
  let v_86 = r14;
  r1 = vec4<f32>(v_86.xy, r1.zw);
  let v_87 = (r8.yzx + r1.xyz);
  r15 = vec4<f32>(v_87.xyz, r15.w);
  r8.w = dot(r2.xy, r14.zw);
  let v_88 = r14;
  r1 = vec4<f32>(v_88.zw, r1.zw);
  let v_89 = (r8.yzw + r1.xyz);
  r14 = vec4<f32>(v_89.xyz, r14.w);
  r16 = (r3.zwzw * vec4<f32>(0.33935257792472839355f, -0.24932782351970672607f, 1.07059764862060546875f, 0.2081225961446762085f));
  r8.x = dot(r2.xy, r16.xy);
  let v_90 = r16;
  r1 = vec4<f32>(v_90.xy, r1.zw);
  let v_91 = (r8.yzx + r1.xyz);
  r17 = vec4<f32>(v_91.xyz, r17.w);
  r8.w = dot(r2.xy, r16.zw);
  let v_92 = r16;
  r1 = vec4<f32>(v_92.zw, r1.zw);
  let v_93 = (r8.yzw + r1.xyz);
  r16 = vec4<f32>(v_93.xyz, r16.w);
  r18 = (r3.zwzw * vec4<f32>(1.29403817653656005859f, -0.01807767525315284729f, -0.7475630640983581543f, -0.11397434771060943604f));
  r8.x = dot(r2.xy, r18.xy);
  let v_94 = r18;
  r1 = vec4<f32>(v_94.xy, r1.zw);
  let v_95 = (r8.yzx + r1.xyz);
  r19 = vec4<f32>(v_95.xyz, r19.w);
  r8.w = dot(r2.xy, r18.zw);
  let v_96 = r18;
  r1 = vec4<f32>(v_96.zw, r1.zw);
  let v_97 = (r8.yzw + r1.xyz);
  r18 = vec4<f32>(v_97.xyz, r18.w);
  r3 = (r3 * vec4<f32>(0.94772171974182128906f, -0.24876354634761810303f, -1.34315288066864013672f, -0.08858405798673629761f));
  r8.x = dot(r2.xy, r3.xy);
  let v_98 = r3;
  r1 = vec4<f32>(v_98.xy, r1.zw);
  let v_99 = (r8.yzx + r1.xyz);
  r20 = vec4<f32>(v_99.xyz, r20.w);
  r8.w = dot(r2.xy, r3.zw);
  let v_100 = r3;
  r1 = vec4<f32>(v_100.zw, r1.zw);
  let v_101 = (r8.yzw + r1.xyz);
  r1 = vec4<f32>(v_101.xyz, r1.w);
  let v_102 = r6.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_102.xy, r6.z);
  let v_103 = r4.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_103.xy, r4.z);
  let v_104 = r9.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_104.xy, r9.z);
  let v_105 = r7.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_105.xy, r7.z);
  let v_106 = r11.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_106.xy, r11.z);
  let v_107 = r10.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_107.xy, r10.z);
  let v_108 = r13.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_108.xy, r13.z);
  let v_109 = r12.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_109.xy, r12.z);
  let v_110 = r15.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_110.xy, r15.z);
  let v_111 = r14.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_111.xy, r14.z);
  let v_112 = r17.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_112.xy, r17.z);
  let v_113 = r16.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_113.xy, r16.z);
  let v_114 = r19.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_114.xy, r19.z);
  let v_115 = r18.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_115.xy, r18.z);
  let v_116 = r20.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_116.xy, r20.z);
  let v_117 = r1.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_117.xy, r1.z);
  r1 = (r2 + r3);
  r1 = (r4 + r1);
  r1 = (r6 + r1);
  r0.z = dot(r1, vec4<f32>(1.0f));
  r1.x = (r0.z * 0.0625f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r0.z = textureSample(t2, s2, r5.xyxx.xy).w;
    r1.y = ((-(r0.zzzz)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.z = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).z, 0.0f, 1.0f);
  let v_118 = abs(r0.yyyy);
  r0.x = max(v_118.x, abs(r0.xxxx).x);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r0.y = ((-(r0.zzzz)).y + 1.0f);
  let v_119 = fma(r0.yy, r0.xx, r1.xy);
  r0 = vec4<f32>(v_119.xy, r0.zw);
  let v_120 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_120.xy, r0.zw);
  let v_121 = min(r0.xy, vec2<f32>(1.0f));
  let v_122 = r0;
  r0 = vec4<f32>(v_122.x, v_121.xy, v_122.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.x = (r0.z * r0.y);
  let v_123 = bitcast<u32>(r0.w);
  let v_124 = r1.x;
  r0.x = select(r0.y, v_124, (v_123 != 0u));
  o0 = r0.xzzz;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
