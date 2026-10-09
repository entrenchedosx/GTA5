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

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb6_struct {
  tint_symbol_4 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v6 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>) {
  x1[0u].x = v6[0u];
  x1[0u].y = v6[1u];
  x1[0u].z = v6[2u];
  x1[0u].w = v6[3u];
  let v_1 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(r0.xxx, cb6_6.tint_symbol_5[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(r0.zzz, cb6_6.tint_symbol_5[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(r1.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = &(x0[0u]);
  let v_7 = r2;
  *(v_6) = vec4<f32>(v_7.xyz, (*(v_6)).w);
  let v_8 = abs(r2.yyyy);
  r0.w = max(v_8.w, abs(r2.xxxx).w);
  let v_9 = fma(r1.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = &(x0[1u]);
  let v_11 = r2;
  *(v_10) = vec4<f32>(v_11.xyz, (*(v_10)).w);
  let v_12 = abs(r2.yyyy);
  r1.w = max(v_12.w, abs(r2.xxxx).w);
  let v_13 = fma(r1.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = fma(r1.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
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
  let v_21 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_22 = r3;
  r3 = vec4<f32>(v_22.x, v_21.x, v_22.z, v_21.y);
  r1.y = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).y, 1.5f, 1.0f);
  r1.y = (r1.y * 0.5f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.y)));
  let v_23 = (bitcast<u32>(r1.z) != 0u);
  let v_24 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r1.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_24, v_23);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.y)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r1.y)));
  let v_25 = bitcast<u32>(r1.w);
  r1.y = select(r1.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_25 != 0u));
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
  r0.w = dot(r2, cb6_6.tint_symbol_5[12u]);
  r1.z = dot(r2, cb6_6.tint_symbol_5[13u]);
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
  let v_45 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r3 = vec4<f32>(v_45.xy, r3.zw);
  let v_46 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_46.xyz);
  let v_47 = r1.yzyy;
  r2.y = textureSampleCompareLevel(t15, s15, v_47.xy, r1.w);
  let v_48 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r3 = vec4<f32>(v_48.xy, r3.zw);
  let v_49 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_49.xyz);
  let v_50 = r1.yzyy;
  r2.z = textureSampleCompareLevel(t15, s15, v_50.xy, r1.w);
  let v_51 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r3 = vec4<f32>(v_51.xy, r3.zw);
  let v_52 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_52.xyz);
  let v_53 = r1.yzyy;
  r2.w = textureSampleCompareLevel(t15, s15, v_53.xy, r1.w);
  let v_54 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r3 = vec4<f32>(v_54.xy, r3.zw);
  let v_55 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_55.xyz);
  let v_56 = r1.yzyy;
  r5.x = textureSampleCompareLevel(t15, s15, v_56.xy, r1.w);
  let v_57 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r3 = vec4<f32>(v_57.xy, r3.zw);
  let v_58 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_58.xyz);
  let v_59 = r1.yzyy;
  r5.y = textureSampleCompareLevel(t15, s15, v_59.xy, r1.w);
  let v_60 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r3 = vec4<f32>(v_60.xy, r3.zw);
  let v_61 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_61.xyz);
  let v_62 = r1.yzyy;
  r5.z = textureSampleCompareLevel(t15, s15, v_62.xy, r1.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r3 = vec4<f32>(v_63.xy, r3.zw);
  let v_64 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_64.xyz);
  let v_65 = r1.yzyy;
  r5.w = textureSampleCompareLevel(t15, s15, v_65.xy, r1.w);
  r2 = (r2 + r5);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r3 = vec4<f32>(v_66.xy, r3.zw);
  let v_67 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_67.xyz);
  let v_68 = r1.yzyy;
  r5.x = textureSampleCompareLevel(t15, s15, v_68.xy, r1.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r3 = vec4<f32>(v_69.xy, r3.zw);
  let v_70 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_70.xyz);
  let v_71 = r1.yzyy;
  r5.y = textureSampleCompareLevel(t15, s15, v_71.xy, r1.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r3 = vec4<f32>(v_72.xy, r3.zw);
  let v_73 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_73.xyz);
  let v_74 = r1.yzyy;
  r5.z = textureSampleCompareLevel(t15, s15, v_74.xy, r1.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r3 = vec4<f32>(v_75.xy, r3.zw);
  let v_76 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_76.xyz);
  let v_77 = r1.yzyy;
  r5.w = textureSampleCompareLevel(t15, s15, v_77.xy, r1.w);
  r2 = (r2 + r5);
  r5.z = r3.z;
  r6.z = r5.z;
  r7.z = r6.z;
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r7 = vec4<f32>(v_78.xy, r7.zw);
  let v_79 = (r4.xyz + r7.xyz);
  r1 = vec4<f32>(r1.x, v_79.xyz);
  let v_80 = r1.yzyy;
  r7.w = textureSampleCompareLevel(t15, s15, v_80.xy, r1.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r3 = vec4<f32>(v_81.xy, r3.zw);
  let v_82 = (r4.xyz + r3.xyz);
  r1 = vec4<f32>(r1.x, v_82.xyz);
  let v_83 = r1.yzyy;
  r7.x = textureSampleCompareLevel(t15, s15, v_83.xy, r1.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r5 = vec4<f32>(v_84.xy, r5.zw);
  let v_85 = (r4.xyz + r5.xyz);
  r1 = vec4<f32>(r1.x, v_85.xyz);
  let v_86 = r1.yzyy;
  r7.y = textureSampleCompareLevel(t15, s15, v_86.xy, r1.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
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
  r2.x = clamp(fma(r2.xxxx, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).x, 0.0f, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.x = (r1.x * r2.x);
  r0.w = fma(r0.w, 0.0625f, r1.x);
  r0.w = (r0.w * r0.w);
  r0.w = min(r0.w, 1.0f);
  r1.x = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).x, 0.0f, 1.0f);
  r1.x = sqrt(r1.x);
  r1.x = (r1.x * cb6_6.tint_symbol_5[3u].z);
  let v_91 = -(r0.wwww);
  r0.w = fma(r1.x, v_91.w, r0.w);
  r1.x = dot(r1.yzw, r1.yzw);
  r1.x = inverseSqrt(r1.x);
  let v_92 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_93 = fma(r1.yzw, r1.xxx, v_92.xyz);
  r2 = vec4<f32>(v_93.xyz, r2.w);
  let v_94 = (r1.xxx * r1.yzw);
  r1 = vec4<f32>(v_94.xyz, r1.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_95 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_95.xyz, r2.w);
  let v_96 = dot(r2.xyz, v_92.xyz);
  r3.y = clamp(vec4<f32>(v_96, v_96, v_96, v_96).y, 0.0f, 1.0f);
  r1.w = dot(v1.xyz, r2.xyz);
  r1.w = clamp(((r1.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  let v_97 = dot(r1.xyz, v1.xyz);
  r3.x = clamp(vec4<f32>(v_97, v_97, v_97, v_97).x, 0.0f, 1.0f);
  let v_98 = ((-(r3.xyxx)).xy + vec2<f32>(1.0f));
  r2 = vec4<f32>(v_98.xy, r2.zw);
  let v_99 = (r2.xy * r2.xy);
  r2 = vec4<f32>(r2.xy, v_99.xy);
  let v_100 = (r2.zw * r2.zw);
  r2 = vec4<f32>(r2.xy, v_100.xy);
  let v_101 = (r2.xy * r2.zw);
  r2 = vec4<f32>(v_101.xy, r2.zw);
  r2.z = ((-(cb11_11.tint_symbol_4[3u].wwww)).z + 1.0f);
  let v_102 = fma(cb11_11.tint_symbol_4[3u].ww, r2.xy, r2.zz);
  r2 = vec4<f32>(v_102.xy, r2.zw);
  let v_103 = (v0.xy * cb11_11.tint_symbol_4[5u].ww);
  r2 = vec4<f32>(r2.xy, v_103.xy);
  r3 = textureSample(t5, s5, r2.zwzz.xy);
  r2.z = fma(r3.w, cb11_11.tint_symbol_4[4u].x, -500.0f);
  r2.z = max(r2.z, 0.0f);
  let v_104 = -(r2.zzzz);
  r2.w = fma(r3.w, cb11_11.tint_symbol_4[4u].x, v_104.w);
  r2.z = (r2.z * 558.0f);
  r2.z = fma(r2.w, 3.0f, r2.z);
  let v_105 = (r2.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(v_105.xy, r4.zw);
  let v_106 = clamp(((r2.zzzz * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, v_106.xy);
  r1.w = (r1.w * r4.y);
  r3.w = (r4.x * 0.125f);
  r1.w = exp2(r1.w);
  r1.w = (r2.y * r1.w);
  r1.w = (r3.w * r1.w);
  let v_107 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_107.xy, r3.zw);
  r2.y = dot(r3.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r2.y = (r2.y * cb11_11.tint_symbol_4[4u].y);
  r2.y = clamp(((r2.yyyy * v4.xxxx)).y, 0.0f, 1.0f);
  r1.w = (r1.w * r2.y);
  r2.x = fma((-(r2.yyyy)).x, r2.x, 1.0f);
  let v_108 = dot(v1.xyz, v_92.xyz);
  r2.y = clamp(vec4<f32>(v_108, v_108, v_108, v_108).y, 0.0f, 1.0f);
  r1.w = (r1.w * r2.y);
  r2.y = (r2.x * r2.y);
  r3 = textureSample(t3, s3, v0.zwzz.xy);
  r3.w = (r3.w * cb11_11.tint_symbol_4[1u].w);
  let v_109 = (v0.xy * cb11_11.tint_symbol_4[0u].xx);
  r4 = vec4<f32>(v_109.xy, r4.zw);
  r4 = textureSample(t0, s0, r4.xyxx.xy);
  let v_110 = (r4.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r5 = vec4<f32>(v_110.xyz, r5.w);
  let v_111 = -(r5.xyzx);
  let v_112 = fma(r3.xyz, cb11_11.tint_symbol_4[1u].xyz, v_111.xyz);
  r3 = vec4<f32>(v_112.xyz, r3.w);
  let v_113 = fma(r3.www, r3.xyz, r5.xyz);
  r4 = vec4<f32>(v_113.xyz, r4.w);
  r3 = (r4 * v4.xxxw);
  let v_114 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_114.xyz, r3.w);
  o0.w = (r3.w * cb2_2.tint_symbol_1[15u].x);
  let v_115 = fma(r3.xyz, r2.yyy, r1.www);
  r4 = vec4<f32>(v_115.xyz, r4.w);
  let v_116 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_116.xyz, r4.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  r2.y = (v1.z + cb3_3.tint_symbol_2[43u].w);
  r2.y = (r2.y * cb3_3.tint_symbol_2[44u].w);
  r2.y = max(r2.y, 0.0f);
  let v_117 = fma(cb3_3.tint_symbol_2[45u].xyz, r2.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_117.xyz, r5.w);
  let v_118 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_118.xyz, r5.w);
  let v_119 = fma(cb3_3.tint_symbol_2[47u].xyz, r2.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_119.xyz, r6.w);
  let v_120 = fma(cb3_3.tint_symbol_2[43u].xyz, r2.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(v_120.xyz, r7.w);
  let v_121 = fma(r6.xyz, r1.www, r5.xyz);
  r5 = vec4<f32>(v_121.xyz, r5.w);
  r1.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  let v_122 = (v4.xx * cb2_2.tint_symbol_1[15u].zy);
  r6 = vec4<f32>(v_122.xy, r6.zw);
  r1.w = (r1.w * r6.y);
  r2.y = (r6.x * r6.x);
  r1.w = (r1.w * r1.w);
  let v_123 = (r1.www * r5.xyz);
  r5 = vec4<f32>(v_123.xyz, r5.w);
  r1.w = max(r1.w, r2.y);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_124 = dot(r6.xyz, v1.xyz);
  r3.w = clamp(vec4<f32>(v_124, v_124, v_124, v_124).w, 0.0f, 1.0f);
  let v_125 = fma(cb3_3.tint_symbol_2[49u].xyz, r3.www, r7.xyz);
  r6 = vec4<f32>(v_125.xyz, r6.w);
  let v_126 = fma(r6.xyz, r2.yyy, r5.xyz);
  r5 = vec4<f32>(v_126.xyz, r5.w);
  let v_127 = (r2.xxx * r5.xyz);
  r5 = vec4<f32>(v_127.xyz, r5.w);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  let v_128 = (r3.xyz * r5.xyz);
  r3 = vec4<f32>(v_128.xyz, r3.w);
  let v_129 = fma(r4.xyz, r0.www, r3.xyz);
  r3 = vec4<f32>(v_129.xyz, r3.w);
  r0.w = dot((-(r1.xyzx)).xyz, v1.xyz);
  r0.w = (r0.w + r0.w);
  let v_130 = -(r0.wwww);
  let v_131 = fma(v1.xyz, v_130.xyz, (-(r1.xyzx)).xyz);
  r1 = vec4<f32>(v_131.xyz, r1.w);
  let v_132 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_132.xyz, r4.w);
  r0.w = (abs(r1.zzzz).w + 1.0f);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_133 = (r4.xyz / r0.www);
  r4 = vec4<f32>(v_133.xyz, r4.w);
  let v_134 = ((-(r4.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_134.xyz, r4.w);
  let v_135 = bitcast<vec2<u32>>(r1.xx);
  let v_136 = r4.xy;
  let v_137 = select(r4.zy, v_136, (v_135 != vec2<u32>()));
  r1 = vec4<f32>(v_137.xy, r1.zw);
  r0.w = ((-(r2.zzzz)).w + 1.0f);
  r1.z = fma(r0.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.y = (r0.w * cb5_5.tint_symbol_3[6u].z);
  r0.w = (r0.w * r0.w);
  r2.z = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.y < r2.z)));
  r0.w = fma(r0.w, 5.0f, r2.z);
  let v_138 = bitcast<u32>(r2.y);
  let v_139 = r1.z;
  r0.w = select(r0.w, v_139, (v_138 != 0u));
  let v_140 = r0.w;
  r4 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_140);
  let v_141 = (r1.www * r4.xyz);
  r1 = vec4<f32>(v_141.xyz, r1.w);
  let v_142 = (r2.www * r1.xyz);
  r2 = vec4<f32>(r2.x, v_142.xyz);
  let v_143 = (r2.yzw * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(r2.x, v_143.xyz);
  let v_144 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.yzw);
  r1 = vec4<f32>(v_144.xyz, r1.w);
  let v_145 = fma(r1.xyz, r2.xxx, r3.xyz);
  r1 = vec4<f32>(v_145.xyz, r1.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r1.w = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_146 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_146.xy, r0.z, v_146.z);
  let v_147 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r2.x = (r1.w + v_147.x);
  r2.x = max(r2.x, 0.0f);
  r1.w = (r2.x / r1.w);
  r0.z = (r0.z * r1.w);
  r1.w = (r0.z * cb3_3.tint_symbol_2[52u].z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.zzzz).z)));
  r2.y = (r1.w * -1.44269502162933349609f);
  r2.y = exp2(r2.y);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r1.w = (r2.y / r1.w);
  let v_148 = bitcast<u32>(r0.z);
  r0.z = select(1.0f, r1.w, (v_148 != 0u));
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
  let v_149 = dot(r0.xyw, cb3_3.tint_symbol_2[53u].xyz);
  r2.y = clamp(vec4<f32>(v_149, v_149, v_149, v_149).y, 0.0f, 1.0f);
  let v_150 = dot(r0.xyw, cb3_3.tint_symbol_2[54u].xyz);
  r0.x = clamp(vec4<f32>(v_150, v_150, v_150, v_150).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
  r0.x = exp2(r0.x);
  r0.y = log2(r2.y);
  r0.y = (r0.y * cb3_3.tint_symbol_2[53u].w);
  r0.y = exp2(r0.y);
  let v_151 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(r2.x, v_151.xyz);
  let v_152 = fma(r0.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(r2.x, v_152.xyz);
  let v_153 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_153.xyz, r3.w);
  let v_154 = fma(r0.yyy, r3.xyz, r2.yzw);
  r0 = vec4<f32>(v_154.xy, r0.z, v_154.z);
  let v_155 = -(cb3_3.tint_symbol_2[57u].xyxz);
  let v_156 = (r0.xyw + v_155.xyw);
  r0 = vec4<f32>(v_156.xy, r0.z, v_156.z);
  let v_157 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r2.y = (r2.x * v_157.y);
  let v_158 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r2.x + v_158.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r0.z = clamp(fma(r1.wwww, r2.xxxx, r0.zzzz).z, 0.0f, 1.0f);
  r2.x = (r2.y * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  let v_159 = fma(r2.xxx, r0.xyw, cb3_3.tint_symbol_2[57u].xyz);
  r0 = vec4<f32>(v_159.xy, r0.z, v_159.z);
  r2.x = ((-(r0.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r2.y = ((-(r0.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r2.z = ((-(r0.wwww)).z + cb3_3.tint_symbol_2[57u].w);
  let v_160 = fma(r1.www, r2.xyz, r0.xyw);
  r0 = vec4<f32>(v_160.xy, r0.z, v_160.z);
  let v_161 = ((-(r1.xyxz)).xyw + r0.xyw);
  r0 = vec4<f32>(v_161.xy, r0.z, v_161.z);
  let v_162 = fma(r0.zzz, r0.xyw, r1.xyz);
  r0 = vec4<f32>(v_162.xyz, r0.w);
  let v_163 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_163.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4);
  return o0;
}
