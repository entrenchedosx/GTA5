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
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = &(x0[2u]);
  let v_24 = r0;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = &(x0[3u]);
  let v_26 = r0;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  r0.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_27 = -(r1.xxxx);
  r0.z = fma(r0.z, 0.5f, v_27.z);
  let v_28 = abs(r0.yyyy);
  let v_29 = max(v_28.xy, abs(r0.xxxx).xy);
  r0 = vec4<f32>(v_29.xy, r0.zw);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < r0.z)));
  let v_30 = (bitcast<u32>(r0.x) != 0u);
  let v_31 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r0.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_31, v_30);
  let v_32 = abs(r4.yyyy);
  r1.x = max(v_32.x, abs(r4.xxxx).x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.z)));
  let v_33 = bitcast<u32>(r1.x);
  r0.x = select(r0.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_33 != 0u));
  let v_34 = abs(r1.zzzz);
  r1.x = max(v_34.x, abs(r1.yyyy).x);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.z)));
  let v_35 = bitcast<u32>(r0.z);
  r0.x = select(r0.x, 0.0f, (v_35 != 0u));
  let v_36 = x0[bitcast<i32>(r0.x)];
  r1 = vec4<f32>(v_36.xyz, r1.w);
  r0.z = f32(bitcast<i32>(r0.x));
  r1.w = (r0.z + 0.5f);
  r1.w = (r1.w * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.zzzz)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r0.z = dot(r4, cb6_6.tint_symbol_1[12u]);
  r2.w = dot(r4, cb6_6.tint_symbol_1[13u]);
  r4.x = (r1.x + 0.5f);
  r4.y = fma(r1.y, 0.25f, r1.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((r0.z == 0.0f))));
  r0.z = ((-(r0.zzzz)).z + r1.z);
  let v_37 = dpdx(r4.xyy);
  r5 = vec4<f32>(v_37.xy, r5.z, v_37.z);
  r5.z = dpdx(r0.z);
  let v_38 = dpdy(r4.yxy);
  r6 = vec4<f32>(v_38.xyz, r6.w);
  r6.w = dpdy(r0.z);
  let v_39 = (r5.yw * r6.yw);
  let v_40 = r1;
  r1 = vec4<f32>(v_40.x, v_39.x, v_40.z, v_39.y);
  let v_41 = -(r1.ywyy);
  let v_42 = fma(r5.xz, r6.xz, v_41.xy);
  r7 = vec4<f32>(v_42.xy, r7.zw);
  r1.y = (1.0f / r7.x);
  r1.w = (r5.z * r6.y);
  let v_43 = -(r1.wwww);
  r7.z = fma(r5.x, r6.w, v_43.z);
  let v_44 = (r1.yy * r7.yz);
  let v_45 = r1;
  r1 = vec4<f32>(v_45.x, v_44.x, v_45.z, v_44.y);
  let v_46 = max(r1.yw, vec2<f32>());
  let v_47 = r1;
  r1 = vec4<f32>(v_47.x, v_46.x, v_47.z, v_46.y);
  let v_48 = min(r1.yw, vec2<f32>(0.5f));
  let v_49 = r1;
  r1 = vec4<f32>(v_49.x, v_48.x, v_49.z, v_48.y);
  r0.z = fma((-(r2.wwww)).z, r1.y, r0.z);
  r0.z = fma((-(r2.wwww)).z, r1.w, r0.z);
  let v_50 = bitcast<u32>(r1.x);
  let v_51 = r0.z;
  r1.z = select(r1.z, v_51, (v_50 != 0u));
  let v_52 = (r2.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r5 = vec4<f32>(v_52.xyz, r5.w);
  let v_53 = fma(r2.xxx, cb6_6.tint_symbol_1[0u].xyz, r5.xyz);
  r2 = vec4<f32>(v_53.xy, r2.z, v_53.z);
  let v_54 = fma(r2.zzz, cb6_6.tint_symbol_1[2u].xyz, r2.xyw);
  r2 = vec4<f32>(v_54.xyz, r2.w);
  let v_55 = (r2.xyz * vec3<f32>(1.0f, 0.0f, 0.0f));
  r5 = vec4<f32>(v_55.xyz, r5.w);
  let v_56 = -(r5.xyzx);
  let v_57 = fma(r2.zxy, vec3<f32>(0.0f, 0.0f, 1.0f), v_56.xyz);
  r5 = vec4<f32>(v_57.xyz, r5.w);
  let v_58 = ((-(r2.zxyz)).xyz * r5.xyz);
  r6 = vec4<f32>(v_58.xyz, r6.w);
  let v_59 = -(r2.yzxy);
  let v_60 = -(r6.xyzx);
  let v_61 = fma(v_59.xyz, r5.yzx, v_60.xyz);
  r2 = vec4<f32>(v_61.xyz, r2.w);
  r0.z = dot(r2.xy, r2.xy);
  r1.w = inverseSqrt(r0.z);
  let v_62 = (r1.ww * r2.xy);
  r2 = vec4<f32>(v_62.xy, r2.zw);
  let v_63 = (r2.zz * r2.xy);
  r2 = vec4<f32>(v_63.xy, r2.zw);
  r0.z = sqrt(r0.z);
  let v_64 = (r2.xy / r0.zz);
  r2 = vec4<f32>(v_64.xy, r2.zw);
  r0.x = bitcast<f32>((4i + bitcast<i32>(r0.x)));
  let v_65 = (r2.xy / cb6_6.tint_symbol_1[bitcast<i32>(r0.x)].xy);
  r2 = vec4<f32>(v_65.xy, r2.zw);
  let v_66 = (r2.xy * cb6_6.tint_symbol_1[bitcast<i32>(r0.x)].zz);
  let v_67 = r0;
  r0 = vec4<f32>(v_66.x, v_67.y, v_66.y, v_67.w);
  let v_68 = (r0.xz * vec2<f32>(1.0f, 4.0f));
  let v_69 = r0;
  r0 = vec4<f32>(v_68.x, v_69.y, v_68.y, v_69.w);
  r2 = (r3.zwzw * vec4<f32>(-0.34609651565551757812f, 0.32848981022834777832f, -0.79929149150848388672f, 0.20174059271812438965f));
  r4.z = dot(r0.xz, r2.xy);
  let v_70 = r2;
  r1 = vec4<f32>(v_70.xy, r1.zw);
  let v_71 = (r1.xyz + r4.xyz);
  r5 = vec4<f32>(v_71.xyz, r5.w);
  r4.w = dot(r0.xz, r2.zw);
  let v_72 = r2;
  r1 = vec4<f32>(v_72.zw, r1.zw);
  let v_73 = (r4.xyw + r1.xyz);
  r2 = vec4<f32>(v_73.xyz, r2.w);
  r6 = (r3.zwzw * vec4<f32>(-0.03117550723254680634f, 0.17933775484561920166f, 0.51474946737289428711f, 0.25350245833396911621f));
  r7.x = dot(r0.xz, r6.xy);
  let v_74 = r6;
  r1 = vec4<f32>(v_74.xy, r1.zw);
  let v_75 = r4;
  let v_76 = r7;
  r7 = vec4<f32>(v_76.x, v_75.xy, v_76.w);
  let v_77 = (r7.yzx + r1.xyz);
  r8 = vec4<f32>(v_77.xyz, r8.w);
  r7.w = dot(r0.xz, r6.zw);
  let v_78 = r6;
  r1 = vec4<f32>(v_78.zw, r1.zw);
  let v_79 = (r7.yzw + r1.xyz);
  r6 = vec4<f32>(v_79.xyz, r6.w);
  r9 = (r3.zwzw * vec4<f32>(-0.07286971807479858398f, 0.00809734128415584564f, -0.96978127956390380859f, 0.03452160954475402832f));
  r7.x = dot(r0.xz, r9.xy);
  let v_80 = r9;
  r1 = vec4<f32>(v_80.xy, r1.zw);
  let v_81 = (r7.yzx + r1.xyz);
  r10 = vec4<f32>(v_81.xyz, r10.w);
  r7.w = dot(r0.xz, r9.zw);
  let v_82 = r9;
  r1 = vec4<f32>(v_82.zw, r1.zw);
  let v_83 = (r7.yzw + r1.xyz);
  r9 = vec4<f32>(v_83.xyz, r9.w);
  r11 = (r3.zwzw * vec4<f32>(0.54554665088653564453f, 0.02412854135036468506f, -0.02890610881149768829f, -0.13678458333015441895f));
  r7.x = dot(r0.xz, r11.xy);
  let v_84 = r11;
  r1 = vec4<f32>(v_84.xy, r1.zw);
  let v_85 = (r7.yzx + r1.xyz);
  r12 = vec4<f32>(v_85.xyz, r12.w);
  r7.w = dot(r0.xz, r11.zw);
  let v_86 = r11;
  r1 = vec4<f32>(v_86.zw, r1.zw);
  let v_87 = (r7.yzw + r1.xyz);
  r11 = vec4<f32>(v_87.xyz, r11.w);
  r13 = (r3.zwzw * vec4<f32>(-0.47951146960258483887f, -0.24483287334442138672f, 0.7587884068489074707f, -0.1121091991662979126f));
  r7.x = dot(r0.xz, r13.xy);
  let v_88 = r13;
  r1 = vec4<f32>(v_88.xy, r1.zw);
  let v_89 = (r7.yzx + r1.xyz);
  r14 = vec4<f32>(v_89.xyz, r14.w);
  r7.w = dot(r0.xz, r13.zw);
  let v_90 = r13;
  r1 = vec4<f32>(v_90.zw, r1.zw);
  let v_91 = (r7.yzw + r1.xyz);
  r13 = vec4<f32>(v_91.xyz, r13.w);
  r15 = (r3.zwzw * vec4<f32>(0.33935257792472839355f, -0.24932782351970672607f, 1.07059764862060546875f, 0.2081225961446762085f));
  r7.x = dot(r0.xz, r15.xy);
  let v_92 = r15;
  r1 = vec4<f32>(v_92.xy, r1.zw);
  let v_93 = (r7.yzx + r1.xyz);
  r16 = vec4<f32>(v_93.xyz, r16.w);
  r7.w = dot(r0.xz, r15.zw);
  let v_94 = r15;
  r1 = vec4<f32>(v_94.zw, r1.zw);
  let v_95 = (r7.yzw + r1.xyz);
  r15 = vec4<f32>(v_95.xyz, r15.w);
  r17 = (r3.zwzw * vec4<f32>(1.29403817653656005859f, -0.01807767525315284729f, -0.7475630640983581543f, -0.11397434771060943604f));
  r7.x = dot(r0.xz, r17.xy);
  let v_96 = r17;
  r1 = vec4<f32>(v_96.xy, r1.zw);
  let v_97 = (r7.yzx + r1.xyz);
  r18 = vec4<f32>(v_97.xyz, r18.w);
  r7.w = dot(r0.xz, r17.zw);
  let v_98 = r17;
  r1 = vec4<f32>(v_98.zw, r1.zw);
  let v_99 = (r7.yzw + r1.xyz);
  r17 = vec4<f32>(v_99.xyz, r17.w);
  r3 = (r3 * vec4<f32>(0.94772171974182128906f, -0.24876354634761810303f, -1.34315288066864013672f, -0.08858405798673629761f));
  r7.x = dot(r0.xz, r3.xy);
  let v_100 = r3;
  r1 = vec4<f32>(v_100.xy, r1.zw);
  let v_101 = (r7.yzx + r1.xyz);
  r19 = vec4<f32>(v_101.xyz, r19.w);
  r7.w = dot(r0.xz, r3.zw);
  let v_102 = r3;
  r1 = vec4<f32>(v_102.zw, r1.zw);
  let v_103 = (r7.yzw + r1.xyz);
  r1 = vec4<f32>(v_103.xyz, r1.w);
  let v_104 = r5.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_104.xy, r5.z);
  let v_105 = r2.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_105.xy, r2.z);
  let v_106 = r8.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_106.xy, r8.z);
  let v_107 = r6.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_107.xy, r6.z);
  let v_108 = r10.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_108.xy, r10.z);
  let v_109 = r9.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_109.xy, r9.z);
  let v_110 = r12.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_110.xy, r12.z);
  let v_111 = r11.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_111.xy, r11.z);
  let v_112 = r14.xyxx;
  r5.x = textureSampleCompareLevel(t15, s15, v_112.xy, r14.z);
  let v_113 = r13.xyxx;
  r5.y = textureSampleCompareLevel(t15, s15, v_113.xy, r13.z);
  let v_114 = r16.xyxx;
  r5.z = textureSampleCompareLevel(t15, s15, v_114.xy, r16.z);
  let v_115 = r15.xyxx;
  r5.w = textureSampleCompareLevel(t15, s15, v_115.xy, r15.z);
  let v_116 = r18.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_116.xy, r18.z);
  let v_117 = r17.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_117.xy, r17.z);
  let v_118 = r19.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_118.xy, r19.z);
  let v_119 = r1.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_119.xy, r1.z);
  r1 = (r2 + r3);
  r1 = (r5 + r1);
  r1 = (r6 + r1);
  r0.x = dot(r1, vec4<f32>(1.0f));
  r1.x = (r0.x * 0.0625f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = textureSample(t2, s2, r4.xyxx.xy).w;
    r1.y = ((-(r0.xxxx)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.x = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).x, 0.0f, 1.0f);
  r0.y = clamp(fma(r0.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).y, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_120 = fma(r0.xx, r0.yy, r1.xy);
  r0 = vec4<f32>(v_120.xy, r0.zw);
  let v_121 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_121.xy, r0.zw);
  let v_122 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_122.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r0.w = (r0.y * r0.x);
  let v_123 = bitcast<u32>(r0.z);
  let v_124 = r0.w;
  r0.x = select(r0.x, v_124, (v_123 != 0u));
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
