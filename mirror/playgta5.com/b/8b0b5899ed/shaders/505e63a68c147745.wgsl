diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb4_struct {
  tint_symbol_4 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb7_struct_1 {
  tint_symbol_6 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb7_struct_1;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  let v_1 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(r0.xxx, cb6_6.tint_symbol_5[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_3.xy, r0.z, v_3.z);
  let v_4 = fma(r0.zzz, cb6_6.tint_symbol_5[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(r0.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = &(x0[0u]);
  let v_7 = r1;
  *(v_6) = vec4<f32>(v_7.xyz, (*(v_6)).w);
  let v_8 = abs(r1.yyyy);
  r0.w = max(v_8.w, abs(r1.xxxx).w);
  let v_9 = fma(r0.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = &(x0[1u]);
  let v_11 = r1;
  *(v_10) = vec4<f32>(v_11.xyz, (*(v_10)).w);
  let v_12 = abs(r1.yyyy);
  r1.x = max(v_12.x, abs(r1.xxxx).x);
  let v_13 = fma(r0.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r1 = vec4<f32>(r1.x, v_13.xyz);
  let v_14 = fma(r0.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = &(x0[2u]);
  let v_16 = r1;
  *(v_15) = vec4<f32>(v_16.yzw, (*(v_15)).w);
  let v_17 = abs(r1.zzzz);
  r1.y = max(v_17.y, abs(r1.yyyy).y);
  let v_18 = &(x0[3u]);
  let v_19 = r0;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = abs(r0.yyyy);
  r0.x = max(v_20.x, abs(r0.xxxx).x);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  let v_21 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_22 = r2;
  r2 = vec4<f32>(v_22.x, v_21.x, v_22.z, v_21.y);
  r0.y = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).y, 1.5f, 1.0f);
  r0.y = (r0.y * 0.5f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.y < r0.y)));
  let v_23 = (bitcast<u32>(r0.z) != 0u);
  let v_24 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r0.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_24, v_23);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.y)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.w < r0.y)));
  let v_25 = bitcast<u32>(r1.x);
  r0.z = select(r0.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_25 != 0u));
  let v_26 = bitcast<u32>(r0.y);
  r0.y = select(r0.z, 0.0f, (v_26 != 0u));
  let v_27 = x0[bitcast<i32>(r0.y)];
  r1 = vec4<f32>(v_27.xyz, r1.w);
  r0.y = f32(bitcast<i32>(r0.y));
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.yyyy)));
  r0.y = (r0.y + 0.5f);
  r0.y = (r0.y * 0.25f);
  r4.y = fma(r1.y, 0.25f, r0.y);
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  r0.y = dot(r3, cb6_6.tint_symbol_5[12u]);
  r0.z = dot(r3, cb6_6.tint_symbol_5[13u]);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((r0.y == 0.0f))));
  r0.y = ((-(r0.yyyy)).y + r1.z);
  r3.z = dpdx(r0.y);
  r5.w = dpdy(r0.y);
  r4.x = (r1.x + 0.5f);
  let v_28 = dpdx(r4.xyy);
  r3 = vec4<f32>(v_28.xy, r3.z, v_28.z);
  let v_29 = dpdy(r4.yxy);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = (r5.yw * r3.yw);
  r1 = vec4<f32>(v_30.xy, r1.zw);
  let v_31 = -(r1.xyxx);
  let v_32 = fma(r3.xz, r5.xz, v_31.xy);
  r6 = vec4<f32>(v_32.xy, r6.zw);
  r1.x = (r3.z * r5.y);
  let v_33 = -(r1.xxxx);
  r6.z = fma(r3.x, r5.w, v_33.z);
  r1.x = (1.0f / r6.x);
  let v_34 = (r1.xx * r6.yz);
  r1 = vec4<f32>(v_34.xy, r1.zw);
  let v_35 = max(r1.xy, vec2<f32>());
  r1 = vec4<f32>(v_35.xy, r1.zw);
  let v_36 = min(r1.xy, vec2<f32>(0.5f));
  r1 = vec4<f32>(v_36.xy, r1.zw);
  r0.y = fma((-(r0.zzzz)).y, r1.x, r0.y);
  r0.y = fma((-(r0.zzzz)).y, r1.y, r0.y);
  let v_37 = bitcast<u32>(r0.w);
  let v_38 = r0.y;
  r2.z = select(r1.z, v_38, (v_37 != 0u));
  r4.z = 0.0f;
  let v_39 = (r2.ywz + r4.xyz);
  r0 = vec4<f32>(r0.x, v_39.xyz);
  let v_40 = r0.yzyy;
  r1.x = textureSampleCompareLevel(t15, s15, v_40.xy, r0.w);
  let v_41 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r2 = vec4<f32>(v_41.xy, r2.zw);
  let v_42 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_42.xyz);
  let v_43 = r0.yzyy;
  r1.y = textureSampleCompareLevel(t15, s15, v_43.xy, r0.w);
  let v_44 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r2 = vec4<f32>(v_44.xy, r2.zw);
  let v_45 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_45.xyz);
  let v_46 = r0.yzyy;
  r1.z = textureSampleCompareLevel(t15, s15, v_46.xy, r0.w);
  let v_47 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r2 = vec4<f32>(v_47.xy, r2.zw);
  let v_48 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_48.xyz);
  let v_49 = r0.yzyy;
  r1.w = textureSampleCompareLevel(t15, s15, v_49.xy, r0.w);
  let v_50 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r2 = vec4<f32>(v_50.xy, r2.zw);
  let v_51 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_51.xyz);
  let v_52 = r0.yzyy;
  r3.x = textureSampleCompareLevel(t15, s15, v_52.xy, r0.w);
  let v_53 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r2 = vec4<f32>(v_53.xy, r2.zw);
  let v_54 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_54.xyz);
  let v_55 = r0.yzyy;
  r3.y = textureSampleCompareLevel(t15, s15, v_55.xy, r0.w);
  let v_56 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r2 = vec4<f32>(v_56.xy, r2.zw);
  let v_57 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_57.xyz);
  let v_58 = r0.yzyy;
  r3.z = textureSampleCompareLevel(t15, s15, v_58.xy, r0.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r2 = vec4<f32>(v_59.xy, r2.zw);
  let v_60 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_60.xyz);
  let v_61 = r0.yzyy;
  r3.w = textureSampleCompareLevel(t15, s15, v_61.xy, r0.w);
  r1 = (r1 + r3);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r2 = vec4<f32>(v_62.xy, r2.zw);
  let v_63 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_63.xyz);
  let v_64 = r0.yzyy;
  r3.x = textureSampleCompareLevel(t15, s15, v_64.xy, r0.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r2 = vec4<f32>(v_65.xy, r2.zw);
  let v_66 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_66.xyz);
  let v_67 = r0.yzyy;
  r3.y = textureSampleCompareLevel(t15, s15, v_67.xy, r0.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r2 = vec4<f32>(v_68.xy, r2.zw);
  let v_69 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_69.xyz);
  let v_70 = r0.yzyy;
  r3.z = textureSampleCompareLevel(t15, s15, v_70.xy, r0.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r2 = vec4<f32>(v_71.xy, r2.zw);
  let v_72 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_72.xyz);
  let v_73 = r0.yzyy;
  r3.w = textureSampleCompareLevel(t15, s15, v_73.xy, r0.w);
  r1 = (r1 + r3);
  r3.z = r2.z;
  r5.z = r3.z;
  r6.z = r5.z;
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r6 = vec4<f32>(v_74.xy, r6.zw);
  let v_75 = (r4.xyz + r6.xyz);
  r0 = vec4<f32>(r0.x, v_75.xyz);
  let v_76 = r0.yzyy;
  r6.w = textureSampleCompareLevel(t15, s15, v_76.xy, r0.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r2 = vec4<f32>(v_77.xy, r2.zw);
  let v_78 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_78.xyz);
  let v_79 = r0.yzyy;
  r6.x = textureSampleCompareLevel(t15, s15, v_79.xy, r0.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r3 = vec4<f32>(v_80.xy, r3.zw);
  let v_81 = (r4.xyz + r3.xyz);
  r0 = vec4<f32>(r0.x, v_81.xyz);
  let v_82 = r0.yzyy;
  r6.y = textureSampleCompareLevel(t15, s15, v_82.xy, r0.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r5 = vec4<f32>(v_83.xy, r5.zw);
  let v_84 = (r4.xyz + r5.xyz);
  r0 = vec4<f32>(r0.x, v_84.xyz);
  let v_85 = r0.yzyy;
  r6.z = textureSampleCompareLevel(t15, s15, v_85.xy, r0.w);
  r1 = (r1 + r6);
  r0.y = dot(r1, vec4<f32>(1.0f));
  let v_86 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_86.xyz, r1.w);
  r0.z = dot(r1.xyz, cb1_1.tint_symbol[14u].xyz);
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).z, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.x = (r0.x * r0.z);
  r0.x = fma(r0.y, 0.0625f, r0.x);
  r0.x = (r0.x * r0.x);
  r0.x = min(r0.x, 1.0f);
  r0.y = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).y, 0.0f, 1.0f);
  r0.y = sqrt(r0.y);
  r0.y = (r0.y * cb6_6.tint_symbol_5[3u].z);
  let v_87 = -(r0.xxxx);
  r0.x = fma(r0.y, v_87.x, r0.x);
  let v_88 = ((-(cb9_9.tint_symbol_6[3u].xxyx)).yz + cb9_9.tint_symbol_6[3u].zw);
  let v_89 = r0;
  r0 = vec4<f32>(v_89.x, v_88.xy, v_89.w);
  let v_90 = (vec2<f32>(8.0f, 1.0f) / r0.yz);
  let v_91 = r0;
  r0 = vec4<f32>(v_91.x, v_90.xy, v_91.w);
  let v_92 = clamp(((v0.xyxx + -(cb9_9.tint_symbol_6[3u].xyxx))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_92.xy, r2.zw);
  let v_93 = (r0.yz * r2.xy);
  r2 = vec4<f32>(r2.xy, v_93.xy);
  let v_94 = trunc(r2.zw);
  r2 = vec4<f32>(r2.xy, v_94.xy);
  let v_95 = r2.z;
  let v_96 = max(v_95, -2147483648.0f);
  r0.w = bitcast<f32>(select(select(i32(v_96), 2147483647i, (v_96 >= 2147483648.0f)), 0i, !((v_95 == v_95))));
  let v_97 = -(r2.zzwz);
  let v_98 = fma(r2.xy, r0.yz, v_97.yz);
  let v_99 = r0;
  r0 = vec4<f32>(v_99.x, v_98.xy, v_99.w);
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r0.wwww) == vec4<i32>(0i, 1i, 2i, 3i))));
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r0.wwww) == vec4<i32>(4i, 5i, 6i, 7i))));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  r0.w = dot(cb9_9.tint_symbol_6[1u], r3);
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  r1.w = dot(cb9_9.tint_symbol_6[0u], r2);
  r0.w = (r0.w + r1.w);
  r0.w = trunc(r0.w);
  r0.w = (r0.w / cb9_9.tint_symbol_6[2u].z);
  r1.w = trunc(r0.w);
  let v_100 = -(r1.wwww);
  r2.x = (r0.w + v_100.x);
  r2.y = (r1.w / cb9_9.tint_symbol_6[2u].w);
  let v_101 = fma(r0.yz, cb9_9.tint_symbol_6[2u].xy, r2.xy);
  let v_102 = r0;
  r0 = vec4<f32>(v_102.x, v_101.xy, v_102.w);
  let v_103 = dpdx(v0.xy);
  r2 = vec4<f32>(v_103.xy, r2.zw);
  let v_104 = dpdy(v0.xy);
  r2 = vec4<f32>(r2.xy, v_104.xy);
  r2 = (r2 * vec4<f32>(0.5f));
  let v_105 = r2.xy;
  let v_106 = r2.zw;
  r3 = textureSampleGrad(t7, s7, r0.yzyy.xy, v_105, v_106);
  let v_107 = r2.xy;
  let v_108 = r2.zw;
  r4 = textureSampleGrad(t8, s8, r0.yzyy.xy, v_107, v_108);
  let v_109 = abs(r2.zzwz);
  let v_110 = max(v_109.yz, abs(r2.xxyx).yz);
  let v_111 = r0;
  r0 = vec4<f32>(v_111.x, v_110.xy, v_111.w);
  r0.y = max(r0.z, r0.y);
  let v_112 = (r0.yy * cb9_9.tint_symbol_6[6u].xy);
  let v_113 = r0;
  r0 = vec4<f32>(v_113.x, v_112.xy, v_113.w);
  let v_114 = max(r0.yz, cb9_9.tint_symbol_6[6u].zw);
  let v_115 = r0;
  r0 = vec4<f32>(v_115.x, v_114.xy, v_115.w);
  let v_116 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (v0.xy < cb9_9.tint_symbol_6[3u].xy)));
  r2 = vec4<f32>(v_116.xy, r2.zw);
  let v_117 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb9_9.tint_symbol_6[3u].zw < v0.xy)));
  r2 = vec4<f32>(r2.xy, v_117.xy);
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  r0.w = dot(r2, r2);
  r0.w = min(r0.w, 1.0f);
  let v_118 = -(r3.xxxx);
  r1.w = fma(r0.w, v_118.w, r3.x);
  let v_119 = -(r4.xyxx);
  let v_120 = fma(r0.ww, v_119.xy, r4.xy);
  r2 = vec4<f32>(v_120.xy, r2.zw);
  let v_121 = (r2.xy + vec2<f32>(-0.5f));
  r2 = vec4<f32>(v_121.xy, r2.zw);
  let v_122 = (r2.xy * cb9_9.tint_symbol_6[5u].xx);
  r2 = vec4<f32>(v_122.xy, r2.zw);
  r0.y = ((-(r0.yyyy)).y + cb9_9.tint_symbol_6[5u].y);
  r0.z = (r0.z + cb9_9.tint_symbol_6[5u].y);
  r0.z = ((-(r0.yyyy)).z + r0.z);
  r0.y = ((-(r0.yyyy)).y + r1.w);
  r0.z = (1.0f / r0.z);
  r0.y = clamp(((r0.zzzz * r0.yyyy)).y, 0.0f, 1.0f);
  r0.z = fma(r0.y, -2.0f, 3.0f);
  r0.y = (r0.y * r0.y);
  r0.y = (r0.y * r0.z);
  r3 = textureSample(t6, s6, v0.xyxx.xy);
  let v_123 = fma(r2.xy, r0.yy, r3.xy);
  r0 = vec4<f32>(r0.xy, v_123.xy);
  let v_124 = fma(r0.zw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_124.xy);
  r1.w = max(cb11_11.tint_symbol_4[3u].w, 0.00100000004749745131f);
  let v_125 = (r0.zw * r1.ww);
  r2 = vec4<f32>(v_125.xy, r2.zw);
  r0.z = dot(r0.zw, r0.zw);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = sqrt(abs(r0.zzzz).z);
  let v_126 = (r2.yyy * v5.xyz);
  r2 = vec4<f32>(r2.x, v_126.xyz);
  let v_127 = fma(r2.xxx, v4.xyz, r2.yzw);
  r2 = vec4<f32>(v_127.xyz, r2.w);
  let v_128 = fma(r0.zzz, v1.xyz, r2.xyz);
  r2 = vec4<f32>(v_128.xyz, r2.w);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_129 = (r0.zzz * r2.xyz);
  r2 = vec4<f32>(v_129.xy, r2.z, v_129.z);
  r0.z = fma(r2.z, r0.z, cb3_3.tint_symbol_2[43u].w);
  r0.z = (r0.z * cb3_3.tint_symbol_2[44u].w);
  r0.z = max(r0.z, 0.0f);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_130 = (r0.www * r1.xyz);
  r3 = vec4<f32>(v_130.xyz, r3.w);
  let v_131 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_132 = fma(r1.xyz, r0.www, v_131.xyz);
  r1 = vec4<f32>(v_132.xyz, r1.w);
  let v_133 = dot(r3.xyz, r2.xyw);
  r4.x = clamp(vec4<f32>(v_133, v_133, v_133, v_133).x, 0.0f, 1.0f);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_134 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_134.xyz, r1.w);
  let v_135 = dot(r1.xyz, v_131.xyz);
  r4.y = clamp(vec4<f32>(v_135, v_135, v_135, v_135).y, 0.0f, 1.0f);
  r0.w = dot(r2.xyw, r1.xyz);
  r0.w = clamp(((r0.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * 1500.0f);
  r0.w = exp2(r0.w);
  let v_136 = ((-(r4.xyxx)).xy + vec2<f32>(1.0f));
  r1 = vec4<f32>(v_136.xy, r1.zw);
  let v_137 = (r1.xy * r1.xy);
  r1 = vec4<f32>(r1.xy, v_137.xy);
  let v_138 = (r1.zw * r1.zw);
  r1 = vec4<f32>(r1.xy, v_138.xy);
  let v_139 = (r1.xy * r1.zw);
  r1 = vec4<f32>(v_139.xy, r1.zw);
  let v_140 = fma(r1.xy, vec2<f32>(0.98000001907348632812f), vec2<f32>(0.01999999955296516418f));
  r1 = vec4<f32>(v_140.xy, r1.zw);
  r0.w = (r0.w * r1.y);
  r1.x = fma((-(r1.xxxx)).x, 0.20000000298023223877f, 1.0f);
  let v_141 = dot(r2.xyw, v_131.xyz);
  r1.y = clamp(vec4<f32>(v_141, v_141, v_141, v_141).y, 0.0f, 1.0f);
  r0.w = (r0.w * r1.y);
  r1.y = (r1.x * r1.y);
  r0.w = (r0.w * 37.549999237060546875f);
  r4 = textureSample(t5, s5, v0.xyxx.xy);
  let v_142 = -(r4.xyzx);
  let v_143 = fma(cb9_9.tint_symbol_6[4u].www, cb9_9.tint_symbol_6[4u].xyz, v_142.xyz);
  r5 = vec4<f32>(v_143.xyz, r5.w);
  let v_144 = fma(r0.yyy, r5.xyz, r4.xyz);
  r4 = vec4<f32>(v_144.xyz, r4.w);
  r0.y = (r4.w * v6.w);
  o0.w = (r0.y * cb2_2.tint_symbol_1[15u].x);
  let v_145 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_145.xyz, r4.w);
  let v_146 = fma(r4.xyz, r1.yyy, r0.www);
  r1 = vec4<f32>(r1.x, v_146.xyz);
  let v_147 = (r1.yzw * cb3_3.tint_symbol_2[1u].xyz);
  r1 = vec4<f32>(r1.x, v_147.xyz);
  let v_148 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_148.xyz, r5.w);
  let v_149 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_149.xyz, r5.w);
  let v_150 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_150.xyz, r6.w);
  let v_151 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(r0.x, v_151.xyz);
  r2.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_152 = fma(r6.xyz, r2.zzz, r5.xyz);
  r5 = vec4<f32>(v_152.xyz, r5.w);
  let v_153 = (v6.xx * cb2_2.tint_symbol_1[15u].zy);
  r6 = vec4<f32>(v_153.xy, r6.zw);
  let v_154 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_154.xy, r6.zw);
  let v_155 = (r5.xyz * r6.yyy);
  r5 = vec4<f32>(v_155.xyz, r5.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_156 = dot(r7.xyz, r2.xyw);
  r2.z = clamp(vec4<f32>(v_156, v_156, v_156, v_156).z, 0.0f, 1.0f);
  let v_157 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.zzz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_157.xyz);
  let v_158 = fma(r0.yzw, r6.xxx, r5.xyz);
  r0 = vec4<f32>(r0.x, v_158.xyz);
  r2.z = max(r6.y, r6.x);
  let v_159 = (r1.xxx * r0.yzw);
  r0 = vec4<f32>(r0.x, v_159.xyz);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  let v_160 = (r4.xyz * r0.yzw);
  r0 = vec4<f32>(r0.x, v_160.xyz);
  let v_161 = fma(r1.yzw, r0.xxx, r0.yzw);
  r0 = vec4<f32>(v_161.xyz, r0.w);
  r0.w = dot((-(r3.xyzx)).xyz, r2.xyw);
  r0.w = (r0.w + r0.w);
  let v_162 = -(r0.wwww);
  let v_163 = -(r3.xxyz);
  let v_164 = fma(r2.xyw, v_162.yzw, v_163.yzw);
  r1 = vec4<f32>(r1.x, v_164.xyz);
  let v_165 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_165.xy, r2.z, v_165.z);
  r0.w = (abs(r1.wwww).w + 1.0f);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_166 = (r2.xyw / r0.www);
  r2 = vec4<f32>(v_166.xy, r2.z, v_166.z);
  let v_167 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_167.xy, r2.z, v_167.z);
  let v_168 = bitcast<vec2<u32>>(r1.yy);
  let v_169 = r2.xy;
  let v_170 = select(r2.wy, v_169, (v_168 != vec2<u32>()));
  let v_171 = r1;
  r1 = vec4<f32>(v_171.x, v_170.xy, v_171.w);
  r0.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  let v_172 = bitcast<u32>(r1.w);
  r0.w = select(r0.w, -5.0f, (v_172 != 0u));
  let v_173 = r0.w;
  r3 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_173);
  let v_174 = (r2.zzz * r3.xyz);
  r1 = vec4<f32>(r1.x, v_174.xyz);
  let v_175 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_175.xyz, r0.w);
  let v_176 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_176.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6);
  return o0;
}
