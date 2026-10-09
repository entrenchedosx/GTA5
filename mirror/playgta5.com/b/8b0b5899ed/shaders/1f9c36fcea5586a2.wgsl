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

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb5_struct;

struct cb4_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb4_struct_1;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  x1[0u].x = v7[0u];
  x1[0u].y = v7[1u];
  x1[0u].z = v7[2u];
  x1[0u].w = v7[3u];
  let v_1 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(r0.xxx, cb6_6.tint_symbol_6[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(r0.zzz, cb6_6.tint_symbol_6[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(r1.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = &(x0[0u]);
  let v_7 = r2;
  *(v_6) = vec4<f32>(v_7.xyz, (*(v_6)).w);
  let v_8 = abs(r2.yyyy);
  r0.w = max(v_8.w, abs(r2.xxxx).w);
  let v_9 = fma(r1.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = &(x0[1u]);
  let v_11 = r2;
  *(v_10) = vec4<f32>(v_11.xyz, (*(v_10)).w);
  let v_12 = abs(r2.yyyy);
  r1.w = max(v_12.w, abs(r2.xxxx).w);
  let v_13 = fma(r1.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = fma(r1.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = &(x0[2u]);
  let v_16 = r2;
  *(v_15) = vec4<f32>(v_16.xyz, (*(v_15)).w);
  let v_17 = abs(r2.yyyy);
  r2.x = max(v_17.x, abs(r2.xxxx).x);
  let v_18 = &(x0[3u]);
  let v_19 = r1;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = abs(r1.yyyy);
  r1.x = max(v_20.x, abs(r1.xxxx).x);
  r1.x = clamp(fma(r1.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  let v_21 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_22 = r3;
  r3 = vec4<f32>(v_22.x, v_21.x, v_22.z, v_21.y);
  r1.y = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).y, 1.5f, 1.0f);
  r1.y = (r1.y * 0.5f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.y)));
  let v_23 = (bitcast<u32>(r1.z) != 0u);
  let v_24 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r1.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_24, v_23);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.y)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r1.y)));
  let v_25 = bitcast<u32>(r1.w);
  r1.y = select(r1.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_25 != 0u));
  let v_26 = bitcast<u32>(r0.w);
  r0.w = select(r1.y, 0.0f, (v_26 != 0u));
  let v_27 = x0[bitcast<i32>(r0.w)];
  r1 = vec4<f32>(r1.x, v_27.xyz);
  r0.w = f32(bitcast<i32>(r0.w));
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.wwww)));
  r0.w = (r0.w + 0.5f);
  r0.w = (r0.w * 0.25f);
  r4.y = fma(r1.z, 0.25f, r0.w);
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  r0.w = dot(r2, cb6_6.tint_symbol_6[12u]);
  r1.z = dot(r2, cb6_6.tint_symbol_6[13u]);
  r2.x = bitcast<f32>(select(0u, 4294967295u, !((r0.w == 0.0f))));
  r0.w = ((-(r0.wwww)).w + r1.w);
  r5.z = dpdx(r0.w);
  r6.w = dpdy(r0.w);
  r4.x = (r1.y + 0.5f);
  let v_28 = dpdx(r4.xyy);
  r5 = vec4<f32>(v_28.xy, r5.z, v_28.z);
  let v_29 = dpdy(r4.yxy);
  r6 = vec4<f32>(v_29.xyz, r6.w);
  let v_30 = (r6.yw * r5.yw);
  let v_31 = r2;
  r2 = vec4<f32>(v_31.x, v_30.xy, v_31.w);
  let v_32 = -(r2.yzyy);
  let v_33 = fma(r5.xz, r6.xz, v_32.xy);
  r7 = vec4<f32>(v_33.xy, r7.zw);
  r1.y = (r5.z * r6.y);
  let v_34 = -(r1.yyyy);
  r7.z = fma(r5.x, r6.w, v_34.z);
  r1.y = (1.0f / r7.x);
  let v_35 = (r1.yy * r7.yz);
  let v_36 = r2;
  r2 = vec4<f32>(v_36.x, v_35.xy, v_36.w);
  let v_37 = max(r2.yz, vec2<f32>());
  let v_38 = r2;
  r2 = vec4<f32>(v_38.x, v_37.xy, v_38.w);
  let v_39 = min(r2.yz, vec2<f32>(0.5f));
  let v_40 = r2;
  r2 = vec4<f32>(v_40.x, v_39.xy, v_40.w);
  r0.w = fma((-(r1.zzzz)).w, r2.y, r0.w);
  r0.w = fma((-(r1.zzzz)).w, r2.z, r0.w);
  let v_41 = bitcast<u32>(r2.x);
  let v_42 = r0.w;
  r3.z = select(r1.w, v_42, (v_41 != 0u));
  r4.z = 0.0f;
  let v_43 = (r3.ywz + r4.xyz);
  r1 = vec4<f32>(r1.x, v_43.xyz);
  let v_44 = r1.yzyy;
  r2.x = textureSampleCompareLevel(t15, s15, v_44.xy, r1.w);
  let v_45 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r3 = vec4<f32>(v_45.xy, r3.zw);
  let v_46 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_46.xyz);
  let v_47 = r1.yzyy;
  r2.y = textureSampleCompareLevel(t15, s15, v_47.xy, r1.w);
  let v_48 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r3 = vec4<f32>(v_48.xy, r3.zw);
  let v_49 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_49.xyz);
  let v_50 = r1.yzyy;
  r2.z = textureSampleCompareLevel(t15, s15, v_50.xy, r1.w);
  let v_51 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r3 = vec4<f32>(v_51.xy, r3.zw);
  let v_52 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_52.xyz);
  let v_53 = r1.yzyy;
  r2.w = textureSampleCompareLevel(t15, s15, v_53.xy, r1.w);
  let v_54 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r3 = vec4<f32>(v_54.xy, r3.zw);
  let v_55 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_55.xyz);
  let v_56 = r1.yzyy;
  r5.x = textureSampleCompareLevel(t15, s15, v_56.xy, r1.w);
  let v_57 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r3 = vec4<f32>(v_57.xy, r3.zw);
  let v_58 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_58.xyz);
  let v_59 = r1.yzyy;
  r5.y = textureSampleCompareLevel(t15, s15, v_59.xy, r1.w);
  let v_60 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r3 = vec4<f32>(v_60.xy, r3.zw);
  let v_61 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_61.xyz);
  let v_62 = r1.yzyy;
  r5.z = textureSampleCompareLevel(t15, s15, v_62.xy, r1.w);
  let v_63 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r3 = vec4<f32>(v_63.xy, r3.zw);
  let v_64 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_64.xyz);
  let v_65 = r1.yzyy;
  r5.w = textureSampleCompareLevel(t15, s15, v_65.xy, r1.w);
  r2 = (r2 + r5);
  let v_66 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r3 = vec4<f32>(v_66.xy, r3.zw);
  let v_67 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_67.xyz);
  let v_68 = r1.yzyy;
  r5.x = textureSampleCompareLevel(t15, s15, v_68.xy, r1.w);
  let v_69 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r3 = vec4<f32>(v_69.xy, r3.zw);
  let v_70 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_70.xyz);
  let v_71 = r1.yzyy;
  r5.y = textureSampleCompareLevel(t15, s15, v_71.xy, r1.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r3 = vec4<f32>(v_72.xy, r3.zw);
  let v_73 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_73.xyz);
  let v_74 = r1.yzyy;
  r5.z = textureSampleCompareLevel(t15, s15, v_74.xy, r1.w);
  let v_75 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r3 = vec4<f32>(v_75.xy, r3.zw);
  let v_76 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_76.xyz);
  let v_77 = r1.yzyy;
  r5.w = textureSampleCompareLevel(t15, s15, v_77.xy, r1.w);
  r2 = (r2 + r5);
  r5.z = r3.z;
  r6.z = r5.z;
  r7.z = r6.z;
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r7 = vec4<f32>(v_78.xy, r7.zw);
  let v_79 = (r4.xyz + r7.xyz);
  r1 = vec4<f32>(r1.x, v_79.xyz);
  let v_80 = r1.yzyy;
  r7.w = textureSampleCompareLevel(t15, s15, v_80.xy, r1.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r3 = vec4<f32>(v_81.xy, r3.zw);
  let v_82 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_82.xyz);
  let v_83 = r1.yzyy;
  r7.x = textureSampleCompareLevel(t15, s15, v_83.xy, r1.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r5 = vec4<f32>(v_84.xy, r5.zw);
  let v_85 = (r4.xyz + r5.xyz);
  r1 = vec4<f32>(r1.x, v_85.xyz);
  let v_86 = r1.yzyy;
  r7.y = textureSampleCompareLevel(t15, s15, v_86.xy, r1.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r6 = vec4<f32>(v_87.xy, r6.zw);
  let v_88 = (r4.xyz + r6.xyz);
  r1 = vec4<f32>(r1.x, v_88.xyz);
  let v_89 = r1.yzyy;
  r7.z = textureSampleCompareLevel(t15, s15, v_89.xy, r1.w);
  r2 = (r2 + r7);
  r0.w = dot(r2, vec4<f32>(1.0f));
  let v_90 = ((-(v2.xxyz)).yzw + cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(r1.x, v_90.xyz);
  r2.x = dot(r1.yzw, cb1_1.tint_symbol[14u].xyz);
  r2.x = clamp(fma(r2.xxxx, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).x, 0.0f, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.x = (r1.x * r2.x);
  r0.w = fma(r0.w, 0.0625f, r1.x);
  r0.w = (r0.w * r0.w);
  r0.w = min(r0.w, 1.0f);
  r1.x = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).x, 0.0f, 1.0f);
  r1.x = sqrt(r1.x);
  r1.x = (r1.x * cb6_6.tint_symbol_6[3u].z);
  let v_91 = -(r0.wwww);
  r0.w = fma(r1.x, v_91.w, r0.w);
  r1.x = dot(r1.yzw, r1.yzw);
  r1.x = inverseSqrt(r1.x);
  let v_92 = (r1.xxx * r1.yzw);
  r2 = vec4<f32>(v_92.xyz, r2.w);
  let v_93 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_94 = fma(r1.yzw, r1.xxx, v_93.xyz);
  r1 = vec4<f32>(v_94.xyz, r1.w);
  let v_95 = dot(r2.xyz, v_93.xyz);
  r2.x = clamp(vec4<f32>(v_95, v_95, v_95, v_95).x, 0.0f, 1.0f);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_96 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_96.xyz, r1.w);
  r1.x = dot(r1.xyz, v_93.xyz);
  r2.y = clamp(r1.xxxx.y, 0.0f, 1.0f);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  let v_97 = ((-(r2.xxyx)).yz + vec2<f32>(1.0f));
  let v_98 = r1;
  r1 = vec4<f32>(v_98.x, v_97.xy, v_98.w);
  let v_99 = (r1.yz * r1.yz);
  r2 = vec4<f32>(v_99.xy, r2.zw);
  let v_100 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_100.xy, r2.zw);
  let v_101 = (r1.yz * r2.xy);
  let v_102 = r1;
  r1 = vec4<f32>(v_102.x, v_101.xy, v_102.w);
  r1.w = ((-(cb10_10.tint_symbol_5[3u].yyyy)).w + 1.0f);
  let v_103 = fma(cb10_10.tint_symbol_5[3u].yy, r1.yz, r1.ww);
  let v_104 = r1;
  r1 = vec4<f32>(v_104.x, v_103.xy, v_104.w);
  r2 = textureSample(t6, s6, v0.xy.xyxx.xy);
  let v_105 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_105.xy, r2.zw);
  r1.w = fma(r2.y, cb10_10.tint_symbol_5[3u].z, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_106 = -(r1.wwww);
  r2.y = fma(r2.y, cb10_10.tint_symbol_5[3u].z, v_106.y);
  r1.w = (r1.w * 558.0f);
  r1.w = fma(r2.y, 3.0f, r1.w);
  let v_107 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  let v_108 = r2;
  r2 = vec4<f32>(v_108.x, v_107.xy, v_108.w);
  r1.w = (r2.x * cb10_10.tint_symbol_5[3u].w);
  r1.w = clamp(r1.wwww.w, 0.0f, 1.0f);
  r1.x = (r1.x * r2.z);
  r2.x = (r2.y * 0.125f);
  r1.x = exp2(r1.x);
  r1.x = (r1.z * r1.x);
  r1.y = fma((-(r1.wwww)).y, r1.y, 1.0f);
  r1.x = (r2.x * r1.x);
  r1.x = (r1.w * r1.x);
  r1.z = dot(v_93.xyz, v_93.xyz);
  r1.z = min(r1.z, 1.0f);
  r1.x = (r1.z * r1.x);
  r1.z = (r1.y * r1.z);
  r2 = textureSample(t0, s0, v0.xy.xyxx.xy);
  let v_109 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_109.xyz, r2.w);
  r1.w = (r2.w * v3.w);
  o0.w = (r1.w * cb2_2.tint_symbol_1[15u].x);
  let v_110 = (r2.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r2 = vec4<f32>(v_110.xyz, r2.w);
  let v_111 = fma(r2.xyz, r1.zzz, r1.xxx);
  r1 = vec4<f32>(v_111.x, r1.y, v_111.yz);
  let v_112 = (r1.xzw * cb3_3.tint_symbol_2[1u].xyz);
  r1 = vec4<f32>(v_112.x, r1.y, v_112.yz);
  r2.w = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  r3 = textureSample(t5, s5, v0.xy.xyxx.xy);
  let v_113 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_113.xy, r3.zw);
  let v_114 = (r2.ww * r3.xy);
  r3 = vec4<f32>(r3.xy, v_114.xy);
  r2.w = dot(r3.xy, r3.xy);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = sqrt(abs(r2.wwww).w);
  let v_115 = (r3.www * v5.xyz);
  r3 = vec4<f32>(v_115.xy, r3.z, v_115.z);
  let v_116 = fma(r3.zzz, v4.xyz, r3.xyw);
  r3 = vec4<f32>(v_116.xyz, r3.w);
  let v_117 = fma(r2.www, v1.xyz, r3.xyz);
  r3 = vec4<f32>(v_117.xyz, r3.w);
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = inverseSqrt(r2.w);
  r2.w = (r2.w * r3.z);
  r2.w = fma(r2.w, 0.5f, 0.5f);
  r3.x = fma(r2.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r3.y = (r2.w + 0.30000001192092895508f);
  let v_118 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(r3.xy, v_118.xy);
  let v_119 = (r3.zw * r3.xy);
  r3 = vec4<f32>(v_119.xy, r3.zw);
  let v_120 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_120.xy, r3.zw);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  r3.z = ((-(cb3_3.tint_symbol_2[0u].zzzz)).z + cb3_3.tint_symbol_2[43u].w);
  r3.z = (r3.z * cb3_3.tint_symbol_2[44u].w);
  r3.z = max(r3.z, 0.0f);
  let v_121 = fma(cb3_3.tint_symbol_2[45u].xyz, r3.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r4 = vec4<f32>(v_121.xyz, r4.w);
  let v_122 = (r4.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r4 = vec4<f32>(v_122.xyz, r4.w);
  let v_123 = fma(cb3_3.tint_symbol_2[47u].xyz, r3.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_123.xyz, r5.w);
  let v_124 = fma(cb3_3.tint_symbol_2[43u].xyz, r3.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_124.xyz, r6.w);
  let v_125 = fma(r5.xyz, r2.www, r4.xyz);
  r4 = vec4<f32>(v_125.xyz, r4.w);
  let v_126 = (r3.yyy * r4.xyz);
  r3 = vec4<f32>(r3.x, v_126.xyz);
  r4.x = cb3_3.tint_symbol_2[46u].w;
  r4.y = cb3_3.tint_symbol_2[47u].w;
  r4.z = cb3_3.tint_symbol_2[48u].w;
  let v_127 = dot(r4.xyz, v_93.xyz);
  r2.w = clamp(vec4<f32>(v_127, v_127, v_127, v_127).w, 0.0f, 1.0f);
  let v_128 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.www, r6.xyz);
  r4 = vec4<f32>(v_128.xyz, r4.w);
  let v_129 = fma(r4.xyz, r3.xxx, r3.yzw);
  r3 = vec4<f32>(v_129.xyz, r3.w);
  let v_130 = (r1.yyy * r3.xyz);
  r3 = vec4<f32>(v_130.xyz, r3.w);
  let v_131 = (r2.xyz * r3.xyz);
  r2 = vec4<f32>(v_131.xyz, r2.w);
  let v_132 = fma(r1.xzw, r0.www, r2.xyz);
  r1 = vec4<f32>(v_132.xyz, r1.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r1.w = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_133 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_133.xy, r0.z, v_133.z);
  let v_134 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r2.x = (r1.w + v_134.x);
  r2.x = max(r2.x, 0.0f);
  r1.w = (r2.x / r1.w);
  r0.z = (r0.z * r1.w);
  r1.w = (r0.z * cb3_3.tint_symbol_2[52u].z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.zzzz).z)));
  r2.y = (r1.w * -1.44269502162933349609f);
  r2.y = exp2(r2.y);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r1.w = (r2.y / r1.w);
  let v_135 = bitcast<u32>(r0.z);
  r0.z = select(1.0f, r1.w, (v_135 != 0u));
  r1.w = (r2.x * cb3_3.tint_symbol_2[51u].w);
  r0.z = (r0.z * r1.w);
  r0.z = min(r0.z, 1.0f);
  r0.z = (r0.z * 1.44269502162933349609f);
  r0.z = exp2(r0.z);
  r0.z = min(r0.z, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r1.w = fma((-(r0.zzzz)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r0.z = (r0.z * cb3_3.tint_symbol_2[52u].y);
  r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
  let v_136 = dot(r0.xyw, cb3_3.tint_symbol_2[53u].xyz);
  r2.y = clamp(vec4<f32>(v_136, v_136, v_136, v_136).y, 0.0f, 1.0f);
  let v_137 = dot(r0.xyw, cb3_3.tint_symbol_2[54u].xyz);
  r0.x = clamp(vec4<f32>(v_137, v_137, v_137, v_137).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
  r0.x = exp2(r0.x);
  r0.y = log2(r2.y);
  r0.y = (r0.y * cb3_3.tint_symbol_2[53u].w);
  r0.y = exp2(r0.y);
  let v_138 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(r2.x, v_138.xyz);
  let v_139 = fma(r0.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(r2.x, v_139.xyz);
  let v_140 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_140.xyz, r3.w);
  let v_141 = fma(r0.yyy, r3.xyz, r2.yzw);
  r0 = vec4<f32>(v_141.xy, r0.z, v_141.z);
  let v_142 = -(cb3_3.tint_symbol_2[57u].xyxz);
  let v_143 = (r0.xyw + v_142.xyw);
  r0 = vec4<f32>(v_143.xy, r0.z, v_143.z);
  let v_144 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r2.y = (r2.x * v_144.y);
  let v_145 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r2.x + v_145.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r0.z = clamp(fma(r1.wwww, r2.xxxx, r0.zzzz).z, 0.0f, 1.0f);
  r2.x = (r2.y * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  let v_146 = fma(r2.xxx, r0.xyw, cb3_3.tint_symbol_2[57u].xyz);
  r0 = vec4<f32>(v_146.xy, r0.z, v_146.z);
  r2.x = ((-(r0.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r2.y = ((-(r0.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r2.z = ((-(r0.wwww)).z + cb3_3.tint_symbol_2[57u].w);
  let v_147 = fma(r1.www, r2.xyz, r0.xyw);
  r0 = vec4<f32>(v_147.xy, r0.z, v_147.z);
  let v_148 = ((-(r1.xyxz)).xyw + r0.xyw);
  r0 = vec4<f32>(v_148.xy, r0.z, v_148.z);
  let v_149 = fma(r0.zzz, r0.xyw, r1.xyz);
  r0 = vec4<f32>(v_149.xyz, r0.w);
  let v_150 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_150.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5);
  return o0;
}
