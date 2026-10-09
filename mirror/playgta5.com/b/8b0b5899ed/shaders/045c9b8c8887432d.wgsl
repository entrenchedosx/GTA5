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
  r6 = vec4<f32>(v_29.xyz, r6.w);
  let v_30 = &(x0[2u]);
  let v_31 = r6;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = fma(r0.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  let v_33 = &(x0[3u]);
  let v_34 = r0;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  r0.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_35 = -(r1.wwww);
  r0.z = fma(r0.z, 0.5f, v_35.z);
  let v_36 = abs(r6.yyyy);
  r1.w = max(v_36.w, abs(r6.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.z)));
  let v_37 = (bitcast<u32>(r1.w) != 0u);
  let v_38 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.w = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_38, v_37);
  let v_39 = abs(r5.yyyy);
  r2.z = max(v_39.z, abs(r5.xxxx).z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r0.z)));
  let v_40 = bitcast<u32>(r2.z);
  r1.w = select(r1.w, bitcast<f32>(v.tint_symbol_4[2i].x), (v_40 != 0u));
  let v_41 = abs(r2.yyyy);
  r2.x = max(v_41.x, abs(r2.xxxx).x);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r2.x < r0.z)));
  let v_42 = bitcast<u32>(r0.z);
  r0.z = select(r1.w, 0.0f, (v_42 != 0u));
  let v_43 = x0[bitcast<i32>(r0.z)];
  r2 = vec4<f32>(v_43.xyz, r2.w);
  r1.w = f32(bitcast<i32>(r0.z));
  r2.w = (r1.w + 0.5f);
  r2.w = (r2.w * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.wwww)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r1.w = dot(r5, cb6_6.tint_symbol_1[12u]);
  r3.w = dot(r5, cb6_6.tint_symbol_1[13u]);
  r5.x = (r2.x + 0.5f);
  r5.y = fma(r2.y, 0.25f, r2.w);
  r2.x = bitcast<f32>(select(0u, 4294967295u, !((r1.w == 0.0f))));
  r1.w = ((-(r1.wwww)).w + r2.z);
  let v_44 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_44.xy, r6.z, v_44.z);
  r6.z = dpdx(r1.w);
  let v_45 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_45.xyz, r7.w);
  r7.w = dpdy(r1.w);
  let v_46 = (r6.yw * r7.yw);
  let v_47 = r2;
  r2 = vec4<f32>(v_47.x, v_46.x, v_47.z, v_46.y);
  let v_48 = -(r2.ywyy);
  let v_49 = fma(r6.xz, r7.xz, v_48.xy);
  r8 = vec4<f32>(v_49.xy, r8.zw);
  r2.y = (1.0f / r8.x);
  r2.w = (r6.z * r7.y);
  let v_50 = -(r2.wwww);
  r8.z = fma(r6.x, r7.w, v_50.z);
  let v_51 = (r2.yy * r8.yz);
  let v_52 = r2;
  r2 = vec4<f32>(v_52.x, v_51.x, v_52.z, v_51.y);
  let v_53 = max(r2.yw, vec2<f32>());
  let v_54 = r2;
  r2 = vec4<f32>(v_54.x, v_53.x, v_54.z, v_53.y);
  let v_55 = min(r2.yw, vec2<f32>(0.5f));
  let v_56 = r2;
  r2 = vec4<f32>(v_56.x, v_55.x, v_56.z, v_55.y);
  r1.w = fma((-(r3.wwww)).w, r2.y, r1.w);
  r1.w = fma((-(r3.wwww)).w, r2.w, r1.w);
  let v_57 = bitcast<u32>(r2.x);
  let v_58 = r1.w;
  r2.z = select(r2.z, v_58, (v_57 != 0u));
  let v_59 = (r3.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r6 = vec4<f32>(v_59.xyz, r6.w);
  let v_60 = fma(r3.xxx, cb6_6.tint_symbol_1[0u].xyz, r6.xyz);
  r3 = vec4<f32>(v_60.xy, r3.z, v_60.z);
  let v_61 = fma(r3.zzz, cb6_6.tint_symbol_1[2u].xyz, r3.xyw);
  r3 = vec4<f32>(v_61.xyz, r3.w);
  let v_62 = (r3.xyz * vec3<f32>(1.0f, 0.0f, 0.0f));
  r6 = vec4<f32>(v_62.xyz, r6.w);
  let v_63 = -(r6.xyzx);
  let v_64 = fma(r3.zxy, vec3<f32>(0.0f, 0.0f, 1.0f), v_63.xyz);
  r6 = vec4<f32>(v_64.xyz, r6.w);
  let v_65 = ((-(r3.zxyz)).xyz * r6.xyz);
  r7 = vec4<f32>(v_65.xyz, r7.w);
  let v_66 = -(r3.yzxy);
  let v_67 = -(r7.xyzx);
  let v_68 = fma(v_66.xyz, r6.yzx, v_67.xyz);
  r3 = vec4<f32>(v_68.xyz, r3.w);
  r1.w = dot(r3.xy, r3.xy);
  r2.w = inverseSqrt(r1.w);
  let v_69 = (r2.ww * r3.xy);
  r3 = vec4<f32>(v_69.xy, r3.zw);
  let v_70 = (r3.zz * r3.xy);
  r3 = vec4<f32>(v_70.xy, r3.zw);
  r1.w = sqrt(r1.w);
  let v_71 = (r3.xy / r1.ww);
  r3 = vec4<f32>(v_71.xy, r3.zw);
  r0.z = bitcast<f32>((4i + bitcast<i32>(r0.z)));
  let v_72 = (r3.xy / cb6_6.tint_symbol_1[bitcast<i32>(r0.z)].xy);
  r3 = vec4<f32>(v_72.xy, r3.zw);
  let v_73 = (r3.xy * cb6_6.tint_symbol_1[bitcast<i32>(r0.z)].zz);
  r3 = vec4<f32>(v_73.xy, r3.zw);
  let v_74 = (r3.xy * vec2<f32>(1.0f, 4.0f));
  r3 = vec4<f32>(v_74.xy, r3.zw);
  r6 = (r4.zwzw * vec4<f32>(-0.34609651565551757812f, 0.32848981022834777832f, -0.79929149150848388672f, 0.20174059271812438965f));
  r5.z = dot(r3.xy, r6.xy);
  let v_75 = r6;
  r2 = vec4<f32>(v_75.xy, r2.zw);
  let v_76 = (r2.xyz + r5.xyz);
  r7 = vec4<f32>(v_76.xyz, r7.w);
  r5.w = dot(r3.xy, r6.zw);
  let v_77 = r6;
  r2 = vec4<f32>(v_77.zw, r2.zw);
  let v_78 = (r5.xyw + r2.xyz);
  r6 = vec4<f32>(v_78.xyz, r6.w);
  r8 = (r4.zwzw * vec4<f32>(-0.03117550723254680634f, 0.17933775484561920166f, 0.51474946737289428711f, 0.25350245833396911621f));
  r9.x = dot(r3.xy, r8.xy);
  let v_79 = r8;
  r2 = vec4<f32>(v_79.xy, r2.zw);
  let v_80 = r5;
  let v_81 = r9;
  r9 = vec4<f32>(v_81.x, v_80.xy, v_81.w);
  let v_82 = (r9.yzx + r2.xyz);
  r10 = vec4<f32>(v_82.xyz, r10.w);
  r9.w = dot(r3.xy, r8.zw);
  let v_83 = r8;
  r2 = vec4<f32>(v_83.zw, r2.zw);
  let v_84 = (r9.yzw + r2.xyz);
  r8 = vec4<f32>(v_84.xyz, r8.w);
  r11 = (r4.zwzw * vec4<f32>(-0.07286971807479858398f, 0.00809734128415584564f, -0.96978127956390380859f, 0.03452160954475402832f));
  r9.x = dot(r3.xy, r11.xy);
  let v_85 = r11;
  r2 = vec4<f32>(v_85.xy, r2.zw);
  let v_86 = (r9.yzx + r2.xyz);
  r12 = vec4<f32>(v_86.xyz, r12.w);
  r9.w = dot(r3.xy, r11.zw);
  let v_87 = r11;
  r2 = vec4<f32>(v_87.zw, r2.zw);
  let v_88 = (r9.yzw + r2.xyz);
  r11 = vec4<f32>(v_88.xyz, r11.w);
  r13 = (r4.zwzw * vec4<f32>(0.54554665088653564453f, 0.02412854135036468506f, -0.02890610881149768829f, -0.13678458333015441895f));
  r9.x = dot(r3.xy, r13.xy);
  let v_89 = r13;
  r2 = vec4<f32>(v_89.xy, r2.zw);
  let v_90 = (r9.yzx + r2.xyz);
  r14 = vec4<f32>(v_90.xyz, r14.w);
  r9.w = dot(r3.xy, r13.zw);
  let v_91 = r13;
  r2 = vec4<f32>(v_91.zw, r2.zw);
  let v_92 = (r9.yzw + r2.xyz);
  r13 = vec4<f32>(v_92.xyz, r13.w);
  r15 = (r4.zwzw * vec4<f32>(-0.47951146960258483887f, -0.24483287334442138672f, 0.7587884068489074707f, -0.1121091991662979126f));
  r9.x = dot(r3.xy, r15.xy);
  let v_93 = r15;
  r2 = vec4<f32>(v_93.xy, r2.zw);
  let v_94 = (r9.yzx + r2.xyz);
  r16 = vec4<f32>(v_94.xyz, r16.w);
  r9.w = dot(r3.xy, r15.zw);
  let v_95 = r15;
  r2 = vec4<f32>(v_95.zw, r2.zw);
  let v_96 = (r9.yzw + r2.xyz);
  r15 = vec4<f32>(v_96.xyz, r15.w);
  r17 = (r4.zwzw * vec4<f32>(0.33935257792472839355f, -0.24932782351970672607f, 1.07059764862060546875f, 0.2081225961446762085f));
  r9.x = dot(r3.xy, r17.xy);
  let v_97 = r17;
  r2 = vec4<f32>(v_97.xy, r2.zw);
  let v_98 = (r9.yzx + r2.xyz);
  r18 = vec4<f32>(v_98.xyz, r18.w);
  r9.w = dot(r3.xy, r17.zw);
  let v_99 = r17;
  r2 = vec4<f32>(v_99.zw, r2.zw);
  let v_100 = (r9.yzw + r2.xyz);
  r17 = vec4<f32>(v_100.xyz, r17.w);
  r19 = (r4.zwzw * vec4<f32>(1.29403817653656005859f, -0.01807767525315284729f, -0.7475630640983581543f, -0.11397434771060943604f));
  r9.x = dot(r3.xy, r19.xy);
  let v_101 = r19;
  r2 = vec4<f32>(v_101.xy, r2.zw);
  let v_102 = (r9.yzx + r2.xyz);
  r20 = vec4<f32>(v_102.xyz, r20.w);
  r9.w = dot(r3.xy, r19.zw);
  let v_103 = r19;
  r2 = vec4<f32>(v_103.zw, r2.zw);
  let v_104 = (r9.yzw + r2.xyz);
  r19 = vec4<f32>(v_104.xyz, r19.w);
  r4 = (r4 * vec4<f32>(0.94772171974182128906f, -0.24876354634761810303f, -1.34315288066864013672f, -0.08858405798673629761f));
  r9.x = dot(r3.xy, r4.xy);
  let v_105 = r4;
  r2 = vec4<f32>(v_105.xy, r2.zw);
  let v_106 = (r9.yzx + r2.xyz);
  r21 = vec4<f32>(v_106.xyz, r21.w);
  r9.w = dot(r3.xy, r4.zw);
  let v_107 = r4;
  r2 = vec4<f32>(v_107.zw, r2.zw);
  let v_108 = (r9.yzw + r2.xyz);
  r2 = vec4<f32>(v_108.xyz, r2.w);
  let v_109 = r7.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_109.xy, r7.z);
  let v_110 = r6.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_110.xy, r6.z);
  let v_111 = r10.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_111.xy, r10.z);
  let v_112 = r8.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_112.xy, r8.z);
  let v_113 = r12.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_113.xy, r12.z);
  let v_114 = r11.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_114.xy, r11.z);
  let v_115 = r14.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_115.xy, r14.z);
  let v_116 = r13.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_116.xy, r13.z);
  let v_117 = r16.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_117.xy, r16.z);
  let v_118 = r15.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_118.xy, r15.z);
  let v_119 = r18.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_119.xy, r18.z);
  let v_120 = r17.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_120.xy, r17.z);
  let v_121 = r20.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_121.xy, r20.z);
  let v_122 = r19.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_122.xy, r19.z);
  let v_123 = r21.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_123.xy, r21.z);
  let v_124 = r2.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_124.xy, r2.z);
  r2 = (r3 + r4);
  r2 = (r6 + r2);
  r2 = (r7 + r2);
  r0.z = dot(r2, vec4<f32>(1.0f));
  r2.x = (r0.z * 0.0625f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r0.z = textureSample(t2, s2, r5.xyxx.xy).w;
    r2.y = ((-(r0.zzzz)).y + 1.0f);
  } else {
    r2.y = 1.0f;
  }
  r0.z = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).z, 0.0f, 1.0f);
  let v_125 = abs(r0.yyyy);
  r0.x = max(v_125.x, abs(r0.xxxx).x);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r0.y = ((-(r0.zzzz)).y + 1.0f);
  let v_126 = fma(r0.yy, r0.xx, r2.xy);
  r0 = vec4<f32>(v_126.xy, r0.zw);
  let v_127 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_127.xy, r0.zw);
  let v_128 = min(r0.xy, vec2<f32>(1.0f));
  let v_129 = r0;
  r0 = vec4<f32>(v_129.x, v_128.xy, v_129.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r0.z * r0.y);
  let v_130 = bitcast<u32>(r0.w);
  let v_131 = r1.w;
  r0.x = select(r0.y, v_131, (v_130 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_132 = r2;
  r2 = vec4<f32>(v_132.x, 0.0f, v_132.z, 0.5f);
  let v_133 = fma(r1.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  let v_134 = r0;
  r0 = vec4<f32>(v_134.x, v_133.x, v_134.z, v_133.y);
  r2.z = textureSample(t5, s5, r0.ywyy.xy).y;
  r0.y = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.w = clamp(fma(r1.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).w, 0.0f, 1.0f);
  r0.w = sqrt(r0.w);
  r0.w = fma((-(r0.wwww)).w, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.y = (r0.w * r0.y);
  let v_135 = (r0.yy * r0.xz);
  r0 = vec4<f32>(v_135.xy, r0.zw);
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
