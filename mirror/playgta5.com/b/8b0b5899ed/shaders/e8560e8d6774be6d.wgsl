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

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

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
  let v_8 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = fma(r1.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_3[4u].xy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r0.w = (r1.x * cb11_11.tint_symbol_3[0u].w);
  r1.x = (r1.y * cb11_11.tint_symbol_3[1u].w);
  let v_10 = (r1.xxx * cb11_11.tint_symbol_3[1u].xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = fma(r0.www, cb11_11.tint_symbol_3[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = -(cb11_11.tint_symbol_3[2u].xyzx);
  let v_13 = (r1.xyz + v_12.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r2 = vec4<f32>(v_14.xy, r2.zw);
  let v_15 = r2.xy;
  let v_16 = max(v_15, vec2<f32>(-2147483648.0f));
  let v_17 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_16), vec2<i32>(2147483647i), (v_16 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_15 == v_15))));
  r3 = vec4<f32>(v_17.xy, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r0.w = textureLoad(t3, bitcast<vec2<i32>>(r3.xy), 0i).x;
  let v_18 = textureLoad(t4, bitcast<vec2<i32>>(r3.xy), 0i).xyz;
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = fma(r3.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r3 = vec4<f32>(v_19.xyz, r3.w);
  r1.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.w);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_20 = fma(r1.xyz, r0.www, cb11_11.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  r4 = (cb6_6.tint_symbol_1[14u].zwzw * cb11_11.tint_symbol_3[6u].xxxx);
  let v_21 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = (r2.xy * vec2<f32>(0.015625f));
  r2 = vec4<f32>(v_22.xy, r2.zw);
  r1.w = textureSample(t14, s14, r2.xyxx.xy).z;
  r1.w = (r1.w * cb12_12.tint_symbol_2[0u].w);
  let v_23 = fma(r0.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = &(x0[0u]);
  let v_25 = r2;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  let v_26 = fma(r0.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  let v_27 = &(x0[1u]);
  let v_28 = r5;
  *(v_27) = vec4<f32>(v_28.xyz, (*(v_27)).w);
  let v_29 = fma(r0.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = &(x0[2u]);
  let v_31 = r0;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = &(x0[3u]);
  let v_33 = r0;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  r0.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_34 = -(r1.wwww);
  r0.z = fma(r0.z, 0.5f, v_34.z);
  let v_35 = abs(r0.yyyy);
  let v_36 = max(v_35.xy, abs(r0.xxxx).xy);
  r0 = vec4<f32>(v_36.xy, r0.zw);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < r0.z)));
  let v_37 = (bitcast<u32>(r0.x) != 0u);
  let v_38 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r0.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_38, v_37);
  let v_39 = abs(r5.yyyy);
  r1.w = max(v_39.w, abs(r5.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.z)));
  let v_40 = bitcast<u32>(r1.w);
  r0.x = select(r0.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_40 != 0u));
  let v_41 = abs(r2.yyyy);
  r1.w = max(v_41.w, abs(r2.xxxx).w);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.z)));
  let v_42 = bitcast<u32>(r0.z);
  r0.x = select(r0.x, 0.0f, (v_42 != 0u));
  let v_43 = x0[bitcast<i32>(r0.x)];
  r2 = vec4<f32>(v_43.xyz, r2.w);
  r0.z = f32(bitcast<i32>(r0.x));
  r1.w = (r0.z + 0.5f);
  r1.w = (r1.w * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.zzzz)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r0.z = dot(r5, cb6_6.tint_symbol_1[12u]);
  r2.w = dot(r5, cb6_6.tint_symbol_1[13u]);
  r5.x = (r2.x + 0.5f);
  r5.y = fma(r2.y, 0.25f, r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((r0.z == 0.0f))));
  r0.z = ((-(r0.zzzz)).z + r2.z);
  let v_44 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_44.xy, r6.z, v_44.z);
  r6.z = dpdx(r0.z);
  let v_45 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_45.xyz, r7.w);
  r7.w = dpdy(r0.z);
  let v_46 = (r6.yw * r7.yw);
  r2 = vec4<f32>(v_46.xy, r2.zw);
  let v_47 = -(r2.xyxx);
  let v_48 = fma(r6.xz, r7.xz, v_47.xy);
  r8 = vec4<f32>(v_48.xy, r8.zw);
  r2.x = (1.0f / r8.x);
  r2.y = (r6.z * r7.y);
  let v_49 = -(r2.yyyy);
  r8.z = fma(r6.x, r7.w, v_49.z);
  let v_50 = (r2.xx * r8.yz);
  r2 = vec4<f32>(v_50.xy, r2.zw);
  let v_51 = max(r2.xy, vec2<f32>());
  r2 = vec4<f32>(v_51.xy, r2.zw);
  let v_52 = min(r2.xy, vec2<f32>(0.5f));
  r2 = vec4<f32>(v_52.xy, r2.zw);
  r0.z = fma((-(r2.wwww)).z, r2.x, r0.z);
  r0.z = fma((-(r2.wwww)).z, r2.y, r0.z);
  let v_53 = bitcast<u32>(r1.w);
  let v_54 = r0.z;
  r2.z = select(r2.z, v_54, (v_53 != 0u));
  let v_55 = (r3.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r6 = vec4<f32>(v_55.xyz, r6.w);
  let v_56 = fma(r3.xxx, cb6_6.tint_symbol_1[0u].xyz, r6.xyz);
  r3 = vec4<f32>(v_56.xy, r3.z, v_56.z);
  let v_57 = fma(r3.zzz, cb6_6.tint_symbol_1[2u].xyz, r3.xyw);
  r3 = vec4<f32>(v_57.xyz, r3.w);
  let v_58 = (r3.xyz * vec3<f32>(1.0f, 0.0f, 0.0f));
  r6 = vec4<f32>(v_58.xyz, r6.w);
  let v_59 = -(r6.xyzx);
  let v_60 = fma(r3.zxy, vec3<f32>(0.0f, 0.0f, 1.0f), v_59.xyz);
  r6 = vec4<f32>(v_60.xyz, r6.w);
  let v_61 = ((-(r3.zxyz)).xyz * r6.xyz);
  r7 = vec4<f32>(v_61.xyz, r7.w);
  let v_62 = -(r3.yzxy);
  let v_63 = -(r7.xyzx);
  let v_64 = fma(v_62.xyz, r6.yzx, v_63.xyz);
  r3 = vec4<f32>(v_64.xyz, r3.w);
  r0.z = dot(r3.xy, r3.xy);
  r1.w = inverseSqrt(r0.z);
  let v_65 = (r1.ww * r3.xy);
  r3 = vec4<f32>(v_65.xy, r3.zw);
  let v_66 = (r3.zz * r3.xy);
  r3 = vec4<f32>(v_66.xy, r3.zw);
  r0.z = sqrt(r0.z);
  let v_67 = (r3.xy / r0.zz);
  r3 = vec4<f32>(v_67.xy, r3.zw);
  r0.x = bitcast<f32>((4i + bitcast<i32>(r0.x)));
  let v_68 = (r3.xy / cb6_6.tint_symbol_1[bitcast<i32>(r0.x)].xy);
  r3 = vec4<f32>(v_68.xy, r3.zw);
  let v_69 = (r3.xy * cb6_6.tint_symbol_1[bitcast<i32>(r0.x)].zz);
  let v_70 = r0;
  r0 = vec4<f32>(v_69.x, v_70.y, v_69.y, v_70.w);
  let v_71 = (r0.xz * vec2<f32>(1.0f, 4.0f));
  let v_72 = r0;
  r0 = vec4<f32>(v_71.x, v_72.y, v_71.y, v_72.w);
  r3 = (r4.zwzw * vec4<f32>(-0.34609651565551757812f, 0.32848981022834777832f, -0.79929149150848388672f, 0.20174059271812438965f));
  r5.z = dot(r0.xz, r3.xy);
  let v_73 = r3;
  r2 = vec4<f32>(v_73.xy, r2.zw);
  let v_74 = (r2.xyz + r5.xyz);
  r6 = vec4<f32>(v_74.xyz, r6.w);
  r5.w = dot(r0.xz, r3.zw);
  let v_75 = r3;
  r2 = vec4<f32>(v_75.zw, r2.zw);
  let v_76 = (r5.xyw + r2.xyz);
  r3 = vec4<f32>(v_76.xyz, r3.w);
  r7 = (r4.zwzw * vec4<f32>(-0.03117550723254680634f, 0.17933775484561920166f, 0.51474946737289428711f, 0.25350245833396911621f));
  r8.x = dot(r0.xz, r7.xy);
  let v_77 = r7;
  r2 = vec4<f32>(v_77.xy, r2.zw);
  let v_78 = r5;
  let v_79 = r8;
  r8 = vec4<f32>(v_79.x, v_78.xy, v_79.w);
  let v_80 = (r8.yzx + r2.xyz);
  r9 = vec4<f32>(v_80.xyz, r9.w);
  r8.w = dot(r0.xz, r7.zw);
  let v_81 = r7;
  r2 = vec4<f32>(v_81.zw, r2.zw);
  let v_82 = (r8.yzw + r2.xyz);
  r7 = vec4<f32>(v_82.xyz, r7.w);
  r10 = (r4.zwzw * vec4<f32>(-0.07286971807479858398f, 0.00809734128415584564f, -0.96978127956390380859f, 0.03452160954475402832f));
  r8.x = dot(r0.xz, r10.xy);
  let v_83 = r10;
  r2 = vec4<f32>(v_83.xy, r2.zw);
  let v_84 = (r8.yzx + r2.xyz);
  r11 = vec4<f32>(v_84.xyz, r11.w);
  r8.w = dot(r0.xz, r10.zw);
  let v_85 = r10;
  r2 = vec4<f32>(v_85.zw, r2.zw);
  let v_86 = (r8.yzw + r2.xyz);
  r10 = vec4<f32>(v_86.xyz, r10.w);
  r12 = (r4.zwzw * vec4<f32>(0.54554665088653564453f, 0.02412854135036468506f, -0.02890610881149768829f, -0.13678458333015441895f));
  r8.x = dot(r0.xz, r12.xy);
  let v_87 = r12;
  r2 = vec4<f32>(v_87.xy, r2.zw);
  let v_88 = (r8.yzx + r2.xyz);
  r13 = vec4<f32>(v_88.xyz, r13.w);
  r8.w = dot(r0.xz, r12.zw);
  let v_89 = r12;
  r2 = vec4<f32>(v_89.zw, r2.zw);
  let v_90 = (r8.yzw + r2.xyz);
  r12 = vec4<f32>(v_90.xyz, r12.w);
  r14 = (r4.zwzw * vec4<f32>(-0.47951146960258483887f, -0.24483287334442138672f, 0.7587884068489074707f, -0.1121091991662979126f));
  r8.x = dot(r0.xz, r14.xy);
  let v_91 = r14;
  r2 = vec4<f32>(v_91.xy, r2.zw);
  let v_92 = (r8.yzx + r2.xyz);
  r15 = vec4<f32>(v_92.xyz, r15.w);
  r8.w = dot(r0.xz, r14.zw);
  let v_93 = r14;
  r2 = vec4<f32>(v_93.zw, r2.zw);
  let v_94 = (r8.yzw + r2.xyz);
  r14 = vec4<f32>(v_94.xyz, r14.w);
  r16 = (r4.zwzw * vec4<f32>(0.33935257792472839355f, -0.24932782351970672607f, 1.07059764862060546875f, 0.2081225961446762085f));
  r8.x = dot(r0.xz, r16.xy);
  let v_95 = r16;
  r2 = vec4<f32>(v_95.xy, r2.zw);
  let v_96 = (r8.yzx + r2.xyz);
  r17 = vec4<f32>(v_96.xyz, r17.w);
  r8.w = dot(r0.xz, r16.zw);
  let v_97 = r16;
  r2 = vec4<f32>(v_97.zw, r2.zw);
  let v_98 = (r8.yzw + r2.xyz);
  r16 = vec4<f32>(v_98.xyz, r16.w);
  r18 = (r4.zwzw * vec4<f32>(1.29403817653656005859f, -0.01807767525315284729f, -0.7475630640983581543f, -0.11397434771060943604f));
  r8.x = dot(r0.xz, r18.xy);
  let v_99 = r18;
  r2 = vec4<f32>(v_99.xy, r2.zw);
  let v_100 = (r8.yzx + r2.xyz);
  r19 = vec4<f32>(v_100.xyz, r19.w);
  r8.w = dot(r0.xz, r18.zw);
  let v_101 = r18;
  r2 = vec4<f32>(v_101.zw, r2.zw);
  let v_102 = (r8.yzw + r2.xyz);
  r18 = vec4<f32>(v_102.xyz, r18.w);
  r4 = (r4 * vec4<f32>(0.94772171974182128906f, -0.24876354634761810303f, -1.34315288066864013672f, -0.08858405798673629761f));
  r8.x = dot(r0.xz, r4.xy);
  let v_103 = r4;
  r2 = vec4<f32>(v_103.xy, r2.zw);
  let v_104 = (r8.yzx + r2.xyz);
  r20 = vec4<f32>(v_104.xyz, r20.w);
  r8.w = dot(r0.xz, r4.zw);
  let v_105 = r4;
  r2 = vec4<f32>(v_105.zw, r2.zw);
  let v_106 = (r8.yzw + r2.xyz);
  r2 = vec4<f32>(v_106.xyz, r2.w);
  let v_107 = r6.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_107.xy, r6.z);
  let v_108 = r3.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_108.xy, r3.z);
  let v_109 = r9.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_109.xy, r9.z);
  let v_110 = r7.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_110.xy, r7.z);
  let v_111 = r11.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_111.xy, r11.z);
  let v_112 = r10.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_112.xy, r10.z);
  let v_113 = r13.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_113.xy, r13.z);
  let v_114 = r12.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_114.xy, r12.z);
  let v_115 = r15.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_115.xy, r15.z);
  let v_116 = r14.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_116.xy, r14.z);
  let v_117 = r17.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_117.xy, r17.z);
  let v_118 = r16.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_118.xy, r16.z);
  let v_119 = r19.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_119.xy, r19.z);
  let v_120 = r18.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_120.xy, r18.z);
  let v_121 = r20.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_121.xy, r20.z);
  let v_122 = r2.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_122.xy, r2.z);
  r2 = (r3 + r4);
  r2 = (r6 + r2);
  r2 = (r7 + r2);
  r0.x = dot(r2, vec4<f32>(1.0f));
  r2.x = (r0.x * 0.0625f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = textureSample(t2, s2, r5.xyxx.xy).w;
    r2.y = ((-(r0.xxxx)).y + 1.0f);
  } else {
    r2.y = 1.0f;
  }
  r0.x = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).x, 0.0f, 1.0f);
  r0.y = clamp(fma(r0.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).y, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_123 = fma(r0.xx, r0.yy, r2.xy);
  r0 = vec4<f32>(v_123.xy, r0.zw);
  let v_124 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_124.xy, r0.zw);
  let v_125 = min(r0.xy, vec2<f32>(1.0f));
  let v_126 = r0;
  r0 = vec4<f32>(v_126.x, v_125.xy, v_126.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r0.z * r0.y);
  let v_127 = bitcast<u32>(r0.w);
  let v_128 = r1.w;
  r0.x = select(r0.y, v_128, (v_127 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_129 = r2;
  r2 = vec4<f32>(v_129.x, 0.0f, v_129.z, 0.5f);
  let v_130 = fma(r1.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  let v_131 = r0;
  r0 = vec4<f32>(v_131.x, v_130.x, v_131.z, v_130.y);
  r2.z = textureSample(t5, s5, r0.ywyy.xy).y;
  r0.y = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.w = clamp(fma(r1.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).w, 0.0f, 1.0f);
  r0.w = sqrt(r0.w);
  r0.w = fma((-(r0.wwww)).w, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.y = (r0.w * r0.y);
  o0 = (r0.yyyy * r0.xzzz);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
