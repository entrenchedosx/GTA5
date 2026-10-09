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

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>, v4 : u32) {
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
  let v_7 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = r1.xy;
  let v_9 = max(v_8, vec2<f32>(-2147483648.0f));
  let v_10 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_9), vec2<i32>(2147483647i), (v_9 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_8 == v_8))));
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0.w = textureLoad(t3, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v4)).x;
  let v_11 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v4)).xyz;
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = fma(r2.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_12.xyz, r2.w);
  r1.z = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.z);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_13 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  r3 = (cb6_6.tint_symbol_1[14u].zwzw * cb11_11.tint_symbol_3[6u].xxxx);
  let v_14 = (r0.www * v3.xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = (r1.xy * vec2<f32>(0.015625f));
  r1 = vec4<f32>(v_15.xy, r1.zw);
  r1.x = textureSample(t14, s14, r1.xyxx.xy).z;
  r1.x = (r1.x * cb12_12.tint_symbol_2[0u].w);
  let v_16 = fma(r4.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r1 = vec4<f32>(r1.x, v_16.xyz);
  let v_17 = &(x0[0u]);
  let v_18 = r1;
  *(v_17) = vec4<f32>(v_18.yzw, (*(v_17)).w);
  let v_19 = fma(r4.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = &(x0[1u]);
  let v_21 = r5;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r4.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r6 = vec4<f32>(v_22.xyz, r6.w);
  let v_23 = &(x0[2u]);
  let v_24 = r6;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = fma(r4.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  let v_26 = &(x0[3u]);
  let v_27 = r4;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  r1.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  let v_28 = -(r1.xxxx);
  r1.x = fma(r1.w, 0.5f, v_28.x);
  let v_29 = abs(r6.yyyy);
  r1.w = max(v_29.w, abs(r6.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.x)));
  let v_30 = (bitcast<u32>(r1.w) != 0u);
  let v_31 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.w = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_31, v_30);
  let v_32 = abs(r5.yyyy);
  r2.w = max(v_32.w, abs(r5.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.x)));
  let v_33 = bitcast<u32>(r2.w);
  r1.w = select(r1.w, bitcast<f32>(v.tint_symbol_4[2i].x), (v_33 != 0u));
  let v_34 = abs(r1.zzzz);
  r1.y = max(v_34.y, abs(r1.yyyy).y);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.y < r1.x)));
  let v_35 = bitcast<u32>(r1.x);
  r1.x = select(r1.w, 0.0f, (v_35 != 0u));
  let v_36 = x0[bitcast<i32>(r1.x)];
  r1 = vec4<f32>(r1.x, v_36.xyz);
  r2.w = f32(bitcast<i32>(r1.x));
  r4.z = (r2.w + 0.5f);
  r4.z = (r4.z * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r2.w = dot(r5, cb6_6.tint_symbol_1[12u]);
  r4.w = dot(r5, cb6_6.tint_symbol_1[13u]);
  r5.x = (r1.y + 0.5f);
  r5.y = fma(r1.z, 0.25f, r4.z);
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  let v_37 = -(r2.wwww);
  r1.z = (r1.w + v_37.z);
  let v_38 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_38.xy, r6.z, v_38.z);
  r6.z = dpdx(r1.z);
  let v_39 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_39.xyz, r7.w);
  r7.w = dpdy(r1.z);
  let v_40 = (r6.yw * r7.yw);
  let v_41 = r6;
  r6 = vec4<f32>(v_41.x, v_40.x, v_41.z, v_40.y);
  let v_42 = -(r6.ywyy);
  let v_43 = fma(r6.xz, r7.xz, v_42.xy);
  r8 = vec4<f32>(v_43.xy, r8.zw);
  r2.w = (1.0f / r8.x);
  r4.z = (r6.z * r7.y);
  let v_44 = -(r4.zzzz);
  r8.z = fma(r6.x, r7.w, v_44.z);
  let v_45 = (r2.ww * r8.yz);
  r6 = vec4<f32>(v_45.xy, r6.zw);
  let v_46 = max(r6.xy, vec2<f32>());
  r6 = vec4<f32>(v_46.xy, r6.zw);
  let v_47 = min(r6.xy, vec2<f32>(0.5f));
  r6 = vec4<f32>(v_47.xy, r6.zw);
  r1.z = fma((-(r4.wwww)).z, r6.x, r1.z);
  r1.z = fma((-(r4.wwww)).z, r6.y, r1.z);
  let v_48 = bitcast<u32>(r1.y);
  let v_49 = r1.z;
  r6.z = select(r1.w, v_49, (v_48 != 0u));
  let v_50 = (r2.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(r1.x, v_50.xyz);
  let v_51 = fma(r2.xxx, cb6_6.tint_symbol_1[0u].xyz, r1.yzw);
  r1 = vec4<f32>(r1.x, v_51.xyz);
  let v_52 = fma(r2.zzz, cb6_6.tint_symbol_1[2u].xyz, r1.yzw);
  r1 = vec4<f32>(r1.x, v_52.xyz);
  let v_53 = (r1.yzw * vec3<f32>(1.0f, 0.0f, 0.0f));
  r2 = vec4<f32>(v_53.xyz, r2.w);
  let v_54 = -(r2.xyzx);
  let v_55 = fma(r1.wyz, vec3<f32>(0.0f, 0.0f, 1.0f), v_54.xyz);
  r2 = vec4<f32>(v_55.xyz, r2.w);
  let v_56 = ((-(r1.wyzw)).xyz * r2.xyz);
  r7 = vec4<f32>(v_56.xyz, r7.w);
  let v_57 = -(r1.zzwy);
  let v_58 = -(r7.xxyz);
  let v_59 = fma(v_57.yzw, r2.yzx, v_58.yzw);
  r1 = vec4<f32>(r1.x, v_59.xyz);
  r2.x = dot(r1.yz, r1.yz);
  r2.y = inverseSqrt(r2.x);
  let v_60 = (r1.yz * r2.yy);
  let v_61 = r1;
  r1 = vec4<f32>(v_61.x, v_60.xy, v_61.w);
  let v_62 = (r1.ww * r1.yz);
  let v_63 = r1;
  r1 = vec4<f32>(v_63.x, v_62.xy, v_63.w);
  r1.w = sqrt(r2.x);
  let v_64 = (r1.yz / r1.ww);
  let v_65 = r1;
  r1 = vec4<f32>(v_65.x, v_64.xy, v_65.w);
  r1.x = bitcast<f32>((4i + bitcast<i32>(r1.x)));
  let v_66 = (r1.yz / cb6_6.tint_symbol_1[bitcast<i32>(r1.x)].xy);
  let v_67 = r1;
  r1 = vec4<f32>(v_67.x, v_66.xy, v_67.w);
  let v_68 = (r1.yz * cb6_6.tint_symbol_1[bitcast<i32>(r1.x)].zz);
  r1 = vec4<f32>(v_68.xy, r1.zw);
  let v_69 = (r1.xy * vec2<f32>(1.0f, 4.0f));
  r1 = vec4<f32>(v_69.xy, r1.zw);
  r2 = (r3.zwzw * vec4<f32>(-0.34609651565551757812f, 0.32848981022834777832f, -0.79929149150848388672f, 0.20174059271812438965f));
  r5.z = dot(r1.xy, r2.xy);
  let v_70 = r2;
  r6 = vec4<f32>(v_70.xy, r6.zw);
  let v_71 = (r5.xyz + r6.xyz);
  r7 = vec4<f32>(v_71.xyz, r7.w);
  r5.w = dot(r1.xy, r2.zw);
  let v_72 = r2;
  r6 = vec4<f32>(v_72.zw, r6.zw);
  let v_73 = (r5.xyw + r6.xyz);
  r2 = vec4<f32>(v_73.xyz, r2.w);
  r8 = (r3.zwzw * vec4<f32>(-0.03117550723254680634f, 0.17933775484561920166f, 0.51474946737289428711f, 0.25350245833396911621f));
  r9.x = dot(r1.xy, r8.xy);
  let v_74 = r8;
  r6 = vec4<f32>(v_74.xy, r6.zw);
  let v_75 = r5;
  let v_76 = r9;
  r9 = vec4<f32>(v_76.x, v_75.xy, v_76.w);
  let v_77 = (r9.yzx + r6.xyz);
  r10 = vec4<f32>(v_77.xyz, r10.w);
  r9.w = dot(r1.xy, r8.zw);
  let v_78 = r8;
  r6 = vec4<f32>(v_78.zw, r6.zw);
  let v_79 = (r9.yzw + r6.xyz);
  r8 = vec4<f32>(v_79.xyz, r8.w);
  r11 = (r3.zwzw * vec4<f32>(-0.07286971807479858398f, 0.00809734128415584564f, -0.96978127956390380859f, 0.03452160954475402832f));
  r9.x = dot(r1.xy, r11.xy);
  let v_80 = r11;
  r6 = vec4<f32>(v_80.xy, r6.zw);
  let v_81 = (r9.yzx + r6.xyz);
  r12 = vec4<f32>(v_81.xyz, r12.w);
  r9.w = dot(r1.xy, r11.zw);
  let v_82 = r11;
  r6 = vec4<f32>(v_82.zw, r6.zw);
  let v_83 = (r9.yzw + r6.xyz);
  r11 = vec4<f32>(v_83.xyz, r11.w);
  r13 = (r3.zwzw * vec4<f32>(0.54554665088653564453f, 0.02412854135036468506f, -0.02890610881149768829f, -0.13678458333015441895f));
  r9.x = dot(r1.xy, r13.xy);
  let v_84 = r13;
  r6 = vec4<f32>(v_84.xy, r6.zw);
  let v_85 = (r9.yzx + r6.xyz);
  r14 = vec4<f32>(v_85.xyz, r14.w);
  r9.w = dot(r1.xy, r13.zw);
  let v_86 = r13;
  r6 = vec4<f32>(v_86.zw, r6.zw);
  let v_87 = (r9.yzw + r6.xyz);
  r13 = vec4<f32>(v_87.xyz, r13.w);
  r15 = (r3.zwzw * vec4<f32>(-0.47951146960258483887f, -0.24483287334442138672f, 0.7587884068489074707f, -0.1121091991662979126f));
  r9.x = dot(r1.xy, r15.xy);
  let v_88 = r15;
  r6 = vec4<f32>(v_88.xy, r6.zw);
  let v_89 = (r9.yzx + r6.xyz);
  r16 = vec4<f32>(v_89.xyz, r16.w);
  r9.w = dot(r1.xy, r15.zw);
  let v_90 = r15;
  r6 = vec4<f32>(v_90.zw, r6.zw);
  let v_91 = (r9.yzw + r6.xyz);
  r15 = vec4<f32>(v_91.xyz, r15.w);
  r17 = (r3.zwzw * vec4<f32>(0.33935257792472839355f, -0.24932782351970672607f, 1.07059764862060546875f, 0.2081225961446762085f));
  r9.x = dot(r1.xy, r17.xy);
  let v_92 = r17;
  r6 = vec4<f32>(v_92.xy, r6.zw);
  let v_93 = (r9.yzx + r6.xyz);
  r18 = vec4<f32>(v_93.xyz, r18.w);
  r9.w = dot(r1.xy, r17.zw);
  let v_94 = r17;
  r6 = vec4<f32>(v_94.zw, r6.zw);
  let v_95 = (r9.yzw + r6.xyz);
  r17 = vec4<f32>(v_95.xyz, r17.w);
  r19 = (r3.zwzw * vec4<f32>(1.29403817653656005859f, -0.01807767525315284729f, -0.7475630640983581543f, -0.11397434771060943604f));
  r9.x = dot(r1.xy, r19.xy);
  let v_96 = r19;
  r6 = vec4<f32>(v_96.xy, r6.zw);
  let v_97 = (r9.yzx + r6.xyz);
  r20 = vec4<f32>(v_97.xyz, r20.w);
  r9.w = dot(r1.xy, r19.zw);
  let v_98 = r19;
  r6 = vec4<f32>(v_98.zw, r6.zw);
  let v_99 = (r9.yzw + r6.xyz);
  r19 = vec4<f32>(v_99.xyz, r19.w);
  r3 = (r3 * vec4<f32>(0.94772171974182128906f, -0.24876354634761810303f, -1.34315288066864013672f, -0.08858405798673629761f));
  r9.x = dot(r1.xy, r3.xy);
  let v_100 = r3;
  r6 = vec4<f32>(v_100.xy, r6.zw);
  let v_101 = (r9.yzx + r6.xyz);
  r21 = vec4<f32>(v_101.xyz, r21.w);
  r9.w = dot(r1.xy, r3.zw);
  let v_102 = r3;
  r6 = vec4<f32>(v_102.zw, r6.zw);
  let v_103 = (r9.yzw + r6.xyz);
  r1 = vec4<f32>(v_103.xyz, r1.w);
  let v_104 = r7.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_104.xy, r7.z);
  let v_105 = r2.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_105.xy, r2.z);
  let v_106 = r10.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_106.xy, r10.z);
  let v_107 = r8.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_107.xy, r8.z);
  let v_108 = r12.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_108.xy, r12.z);
  let v_109 = r11.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_109.xy, r11.z);
  let v_110 = r14.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_110.xy, r14.z);
  let v_111 = r13.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_111.xy, r13.z);
  let v_112 = r16.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_112.xy, r16.z);
  let v_113 = r15.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_113.xy, r15.z);
  let v_114 = r18.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_114.xy, r18.z);
  let v_115 = r17.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_115.xy, r17.z);
  let v_116 = r20.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_116.xy, r20.z);
  let v_117 = r19.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_117.xy, r19.z);
  let v_118 = r21.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_118.xy, r21.z);
  let v_119 = r1.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_119.xy, r1.z);
  r1 = (r2 + r3);
  r1 = (r6 + r1);
  r1 = (r7 + r1);
  r1.x = dot(r1, vec4<f32>(1.0f));
  r1.x = (r1.x * 0.0625f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r1.z = textureSample(t2, s2, r5.xyxx.xy).w;
    r1.y = ((-(r1.zzzz)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  let v_120 = abs(r4.yyyy);
  r1.z = max(v_120.z, abs(r4.xxxx).z);
  r1.z = clamp(fma(r1.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).z, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_121 = fma(r0.ww, r1.zz, r1.xy);
  r1 = vec4<f32>(v_121.xy, r1.zw);
  let v_122 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_122.xy, r1.zw);
  let v_123 = min(r1.xy, vec2<f32>(1.0f));
  let v_124 = r1;
  r1 = vec4<f32>(v_124.x, v_123.xy, v_124.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r1.z * r1.y);
  let v_125 = bitcast<u32>(r0.w);
  let v_126 = r1.w;
  r1.x = select(r1.y, v_126, (v_125 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_127 = r2;
  r2 = vec4<f32>(v_127.x, 0.0f, v_127.z, 0.5f);
  let v_128 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_128.xy, r0.zw);
  r2.z = textureSample(t5, s5, r0.xyxx.xy).y;
  r0.x = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.y = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).y, 0.0f, 1.0f);
  r0.y = sqrt(r0.y);
  r0.y = fma((-(r0.yyyy)).y, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.x = (r0.y * r0.x);
  o0 = (r0.xxxx * r1.xzzz);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
