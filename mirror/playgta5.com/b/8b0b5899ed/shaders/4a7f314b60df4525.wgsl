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

struct cb7_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb7_struct_1;

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb1_struct;

struct cb16_struct_1 {
  tint_symbol_6 : array<vec4<f32>, 16u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb16_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

@group(1u) @binding(71u) var t39 : texture_2d<f32>;

@group(1u) @binding(72u) var t40 : texture_2d<f32>;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  let v_3 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (r0.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(r0.xxx, cb6_6.tint_symbol_6[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_5.xy, r0.z, v_5.z);
  let v_6 = fma(r0.zzz, cb6_6.tint_symbol_6[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = fma(r0.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = &(x0[0u]);
  let v_9 = r1;
  *(v_8) = vec4<f32>(v_9.xyz, (*(v_8)).w);
  let v_10 = abs(r1.yyyy);
  r0.w = max(v_10.w, abs(r1.xxxx).w);
  let v_11 = fma(r0.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = &(x0[1u]);
  let v_13 = r1;
  *(v_12) = vec4<f32>(v_13.xyz, (*(v_12)).w);
  let v_14 = abs(r1.yyyy);
  r1.x = max(v_14.x, abs(r1.xxxx).x);
  let v_15 = fma(r0.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r1 = vec4<f32>(r1.x, v_15.xyz);
  let v_16 = fma(r0.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = &(x0[2u]);
  let v_18 = r1;
  *(v_17) = vec4<f32>(v_18.yzw, (*(v_17)).w);
  let v_19 = abs(r1.zzzz);
  r1.y = max(v_19.y, abs(r1.yyyy).y);
  let v_20 = &(x0[3u]);
  let v_21 = r0;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = abs(r0.yyyy);
  r0.x = max(v_22.x, abs(r0.xxxx).x);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  let v_23 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_24 = r2;
  r2 = vec4<f32>(v_24.x, v_23.x, v_24.z, v_23.y);
  r0.y = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).y, 1.5f, 1.0f);
  r0.y = (r0.y * 0.5f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.y < r0.y)));
  let v_25 = (bitcast<u32>(r0.z) != 0u);
  let v_26 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r0.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_26, v_25);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.y)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.w < r0.y)));
  let v_27 = bitcast<u32>(r1.x);
  r0.z = select(r0.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_27 != 0u));
  let v_28 = bitcast<u32>(r0.y);
  r0.y = select(r0.z, 0.0f, (v_28 != 0u));
  let v_29 = x0[bitcast<i32>(r0.y)];
  r1 = vec4<f32>(v_29.xyz, r1.w);
  r0.y = f32(bitcast<i32>(r0.y));
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.yyyy)));
  r0.y = (r0.y + 0.5f);
  r0.y = (r0.y * 0.25f);
  r4.y = fma(r1.y, 0.25f, r0.y);
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  r0.y = dot(r3, cb6_6.tint_symbol_6[12u]);
  r0.z = dot(r3, cb6_6.tint_symbol_6[13u]);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((r0.y == 0.0f))));
  r0.y = ((-(r0.yyyy)).y + r1.z);
  r3.z = dpdx(r0.y);
  r5.w = dpdy(r0.y);
  r4.x = (r1.x + 0.5f);
  let v_30 = dpdx(r4.xyy);
  r3 = vec4<f32>(v_30.xy, r3.z, v_30.z);
  let v_31 = dpdy(r4.yxy);
  r5 = vec4<f32>(v_31.xyz, r5.w);
  let v_32 = (r5.yw * r3.yw);
  r1 = vec4<f32>(v_32.xy, r1.zw);
  let v_33 = -(r1.xyxx);
  let v_34 = fma(r3.xz, r5.xz, v_33.xy);
  r6 = vec4<f32>(v_34.xy, r6.zw);
  r1.x = (r3.z * r5.y);
  let v_35 = -(r1.xxxx);
  r6.z = fma(r3.x, r5.w, v_35.z);
  r1.x = (1.0f / r6.x);
  let v_36 = (r1.xx * r6.yz);
  r1 = vec4<f32>(v_36.xy, r1.zw);
  let v_37 = max(r1.xy, vec2<f32>());
  r1 = vec4<f32>(v_37.xy, r1.zw);
  let v_38 = min(r1.xy, vec2<f32>(0.5f));
  r1 = vec4<f32>(v_38.xy, r1.zw);
  r0.y = fma((-(r0.zzzz)).y, r1.x, r0.y);
  r0.y = fma((-(r0.zzzz)).y, r1.y, r0.y);
  let v_39 = bitcast<u32>(r0.w);
  let v_40 = r0.y;
  r2.z = select(r1.z, v_40, (v_39 != 0u));
  r4.z = 0.0f;
  let v_41 = (r2.ywz + r4.xyz);
  r0 = vec4<f32>(r0.x, v_41.xyz);
  let v_42 = r0.yzyy;
  r1.x = textureSampleCompareLevel(t15, s15, v_42.xy, r0.w);
  let v_43 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r2 = vec4<f32>(v_43.xy, r2.zw);
  let v_44 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_44.xyz);
  let v_45 = r0.yzyy;
  r1.y = textureSampleCompareLevel(t15, s15, v_45.xy, r0.w);
  let v_46 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r2 = vec4<f32>(v_46.xy, r2.zw);
  let v_47 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_47.xyz);
  let v_48 = r0.yzyy;
  r1.z = textureSampleCompareLevel(t15, s15, v_48.xy, r0.w);
  let v_49 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r2 = vec4<f32>(v_49.xy, r2.zw);
  let v_50 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_50.xyz);
  let v_51 = r0.yzyy;
  r1.w = textureSampleCompareLevel(t15, s15, v_51.xy, r0.w);
  let v_52 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r2 = vec4<f32>(v_52.xy, r2.zw);
  let v_53 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_53.xyz);
  let v_54 = r0.yzyy;
  r3.x = textureSampleCompareLevel(t15, s15, v_54.xy, r0.w);
  let v_55 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r2 = vec4<f32>(v_55.xy, r2.zw);
  let v_56 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_56.xyz);
  let v_57 = r0.yzyy;
  r3.y = textureSampleCompareLevel(t15, s15, v_57.xy, r0.w);
  let v_58 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r2 = vec4<f32>(v_58.xy, r2.zw);
  let v_59 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_59.xyz);
  let v_60 = r0.yzyy;
  r3.z = textureSampleCompareLevel(t15, s15, v_60.xy, r0.w);
  let v_61 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r2 = vec4<f32>(v_61.xy, r2.zw);
  let v_62 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_62.xyz);
  let v_63 = r0.yzyy;
  r3.w = textureSampleCompareLevel(t15, s15, v_63.xy, r0.w);
  r1 = (r1 + r3);
  let v_64 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r2 = vec4<f32>(v_64.xy, r2.zw);
  let v_65 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_65.xyz);
  let v_66 = r0.yzyy;
  r3.x = textureSampleCompareLevel(t15, s15, v_66.xy, r0.w);
  let v_67 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r2 = vec4<f32>(v_67.xy, r2.zw);
  let v_68 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_68.xyz);
  let v_69 = r0.yzyy;
  r3.y = textureSampleCompareLevel(t15, s15, v_69.xy, r0.w);
  let v_70 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r2 = vec4<f32>(v_70.xy, r2.zw);
  let v_71 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_71.xyz);
  let v_72 = r0.yzyy;
  r3.z = textureSampleCompareLevel(t15, s15, v_72.xy, r0.w);
  let v_73 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r2 = vec4<f32>(v_73.xy, r2.zw);
  let v_74 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_74.xyz);
  let v_75 = r0.yzyy;
  r3.w = textureSampleCompareLevel(t15, s15, v_75.xy, r0.w);
  r1 = (r1 + r3);
  r3.z = r2.z;
  r5.z = r3.z;
  r6.z = r5.z;
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r6 = vec4<f32>(v_76.xy, r6.zw);
  let v_77 = (r4.xyz + r6.xyz);
  r0 = vec4<f32>(r0.x, v_77.xyz);
  let v_78 = r0.yzyy;
  r6.w = textureSampleCompareLevel(t15, s15, v_78.xy, r0.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r2 = vec4<f32>(v_79.xy, r2.zw);
  let v_80 = (r4.xyz + r2.xyz);
  r0 = vec4<f32>(r0.x, v_80.xyz);
  let v_81 = r0.yzyy;
  r6.x = textureSampleCompareLevel(t15, s15, v_81.xy, r0.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r3 = vec4<f32>(v_82.xy, r3.zw);
  let v_83 = (r4.xyz + r3.xyz);
  r0 = vec4<f32>(r0.x, v_83.xyz);
  let v_84 = r0.yzyy;
  r6.y = textureSampleCompareLevel(t15, s15, v_84.xy, r0.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r5 = vec4<f32>(v_85.xy, r5.zw);
  let v_86 = (r4.xyz + r5.xyz);
  r0 = vec4<f32>(r0.x, v_86.xyz);
  let v_87 = r0.yzyy;
  r6.z = textureSampleCompareLevel(t15, s15, v_87.xy, r0.w);
  r1 = (r1 + r6);
  r0.y = dot(r1, vec4<f32>(1.0f));
  let v_88 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_88.xyz, r1.w);
  r0.z = dot(r1.xyz, cb1_1.tint_symbol[14u].xyz);
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).z, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.x = (r0.x * r0.z);
  r0.x = fma(r0.y, 0.0625f, r0.x);
  r0.x = (r0.x * r0.x);
  r0.x = min(r0.x, 1.0f);
  r0.y = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).y, 0.0f, 1.0f);
  r0.y = sqrt(r0.y);
  r0.y = (r0.y * cb6_6.tint_symbol_6[3u].z);
  let v_89 = -(r0.xxxx);
  r0.x = fma(r0.y, v_89.x, r0.x);
  r2.x = (-(cb6_6.tint_symbol_6[15u].wwww)).x;
  let v_90 = r2;
  r2 = vec4<f32>(v_90.x, 0.0f, v_90.z, 0.5f);
  let v_91 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  let v_92 = r0;
  r0 = vec4<f32>(v_92.x, v_91.xy, v_92.w);
  r3 = textureSample(t12, s12, r0.yzyy.xy);
  r2.z = r3.y;
  r2 = textureSample(t13, s13, r2.zwzz.xy);
  r0.x = (r0.x * r2.x);
  r2 = textureSample(t0, s0, v0.xyxx.xy);
  let v_93 = (r2.xyz * cb12_12.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(r0.x, v_93.xyz);
  let v_94 = (r0.yzw * v6.xxx);
  r0 = vec4<f32>(r0.x, v_94.xyz);
  let v_95 = -(r0.yzwy);
  let v_96 = fma(cb12_12.tint_symbol_4[4u].xyz, cb12_12.tint_symbol_4[3u].yyy, v_95.xyz);
  r2 = vec4<f32>(v_96.xyz, r2.w);
  r1.w = (cb5_5.tint_symbol_3[3u].z * cb12_12.tint_symbol_4[3u].z);
  let v_97 = ((-(cb12_12.tint_symbol_4[3u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_97.xy, r3.zw);
  let v_98 = (r3.yy * v0.zw);
  let v_99 = r3;
  r3 = vec4<f32>(v_99.x, v_98.xy, v_99.w);
  r4 = textureSample(t2, s2, r3.yzyy.xy);
  r2.w = ((-(r4.xxxx)).w + r4.z);
  r4.x = fma(r1.w, r2.w, r4.x);
  let v_100 = (r4.xy * cb12_12.tint_symbol_4[3u].xx);
  let v_101 = r3;
  r3 = vec4<f32>(v_101.x, v_100.xy, v_101.w);
  r1.w = fma(v6.z, r3.x, -1.0f);
  r1.w = fma(r3.x, r1.w, 1.0f);
  r2.w = (r3.x * v6.z);
  r2.w = (r2.w * cb12_12.tint_symbol_4[3u].x);
  r3.x = (r1.w * r3.y);
  r1.w = fma((-(r3.zzzz)).w, r1.w, 1.0f);
  let v_102 = fma(r3.xxx, r2.xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_102.xyz);
  let v_103 = ((-(r0.yzwy)).xyz + r4.zzz);
  r2 = vec4<f32>(v_103.xyz, r2.w);
  let v_104 = fma(r2.www, r2.xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_104.xyz);
  let v_105 = (r0.yzw * r0.yzw);
  r0 = vec4<f32>(r0.x, v_105.xyz);
  r2 = textureSample(t4, s4, v0.xyxx.xy);
  let v_106 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_106.xy, r2.zw);
  r2.x = dot(r2.xyz, cb12_12.tint_symbol_4[6u].xyz);
  r2.x = (r2.x * cb12_12.tint_symbol_4[5u].y);
  r2.x = (r2.x * v6.x);
  r1.w = clamp(((r1.wwww * r2.xxxx)).w, 0.0f, 1.0f);
  r2.x = fma(r2.w, cb12_12.tint_symbol_4[5u].x, -500.0f);
  r2.x = max(r2.x, 0.0f);
  let v_107 = -(r2.xxxx);
  r2.y = fma(r2.w, cb12_12.tint_symbol_4[5u].x, v_107.y);
  r2.x = (r2.x * 558.0f);
  r2.x = fma(r2.y, 3.0f, r2.x);
  let v_108 = (r2.xx + vec2<f32>(2.0f, 0.00000000999999993923f));
  let v_109 = r2;
  r2 = vec4<f32>(v_109.x, v_108.xy, v_109.w);
  let v_110 = clamp(((r2.xxxx * vec4<f32>(0.00066666665952652693f, 0.0f, 0.0f, 0.00177619897294789553f))).xw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_110.x, r2.yz, v_110.y);
  r2.y = (r2.y * 0.125f);
  r3.x = dot(r1.xyz, r1.xyz);
  r3.x = inverseSqrt(r3.x);
  let v_111 = -(cb3_3.tint_symbol_2[0u].xxyz);
  let v_112 = fma(r1.xyz, r3.xxx, v_111.yzw);
  r3 = vec4<f32>(r3.x, v_112.xyz);
  let v_113 = (r1.xyz * r3.xxx);
  r1 = vec4<f32>(v_113.xyz, r1.w);
  r3.x = dot(r3.yzw, r3.yzw);
  r3.x = inverseSqrt(r3.x);
  let v_114 = (r3.xxx * r3.yzw);
  r3 = vec4<f32>(v_114.xyz, r3.w);
  r3.w = max(cb12_12.tint_symbol_4[6u].w, 0.00100000004749745131f);
  r4 = textureSample(t3, s3, v0.xyxx.xy);
  let v_115 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r4 = vec4<f32>(v_115.xy, r4.zw);
  let v_116 = (r3.ww * r4.xy);
  r4 = vec4<f32>(r4.xy, v_116.xy);
  r3.w = dot(r4.xy, r4.xy);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = sqrt(abs(r3.wwww).w);
  let v_117 = (r4.www * v5.xyz);
  r4 = vec4<f32>(v_117.xy, r4.z, v_117.z);
  let v_118 = fma(r4.zzz, v4.xyz, r4.xyw);
  r4 = vec4<f32>(v_118.xyz, r4.w);
  let v_119 = fma(r3.www, v1.xyz, r4.xyz);
  r4 = vec4<f32>(v_119.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_120 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_120.xy, r4.z, v_120.z);
  r3.w = fma(r4.z, r3.w, cb3_3.tint_symbol_2[43u].w);
  r3.w = (r3.w * cb3_3.tint_symbol_2[44u].w);
  r3.w = max(r3.w, 0.0f);
  r4.z = dot(r4.xyw, r3.xyz);
  let v_121 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_122 = dot(r3.xyz, v_121.xyz);
  r3.y = clamp(vec4<f32>(v_122, v_122, v_122, v_122).y, 0.0f, 1.0f);
  r3.z = clamp(((r4.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r3.z = log2(r3.z);
  r2.z = (r2.z * r3.z);
  r2.z = exp2(r2.z);
  let v_123 = dot(r1.xyz, r4.xyw);
  r3.x = clamp(vec4<f32>(v_123, v_123, v_123, v_123).x, 0.0f, 1.0f);
  let v_124 = ((-(r3.xyxx)).xy + vec2<f32>(1.0f));
  r3 = vec4<f32>(v_124.xy, r3.zw);
  let v_125 = (r3.xy * r3.xy);
  r5 = vec4<f32>(v_125.xy, r5.zw);
  let v_126 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_126.xy, r5.zw);
  let v_127 = (r3.xy * r5.xy);
  r3 = vec4<f32>(v_127.xy, r3.zw);
  r3.z = ((-(cb12_12.tint_symbol_4[4u].wwww)).z + 1.0f);
  let v_128 = fma(cb12_12.tint_symbol_4[4u].ww, r3.xy, r3.zz);
  r3 = vec4<f32>(v_128.xy, r3.zw);
  r2.z = (r2.z * r3.y);
  r3.x = fma((-(r1.wwww)).x, r3.x, 1.0f);
  r2.y = (r2.y * r2.z);
  r1.w = (r1.w * r2.y);
  let v_129 = dot(r4.xyw, v_121.xyz);
  r2.y = clamp(vec4<f32>(v_129, v_129, v_129, v_129).y, 0.0f, 1.0f);
  r1.w = (r1.w * r2.y);
  r2.y = (r3.x * r2.y);
  let v_130 = fma(r0.yzw, r2.yyy, r1.www);
  r5 = vec4<f32>(v_130.xyz, r5.w);
  let v_131 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_131.xyz, r5.w);
  let v_132 = fma(cb3_3.tint_symbol_2[45u].xyz, r3.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_132.xyz, r6.w);
  let v_133 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_133.xyz, r6.w);
  let v_134 = fma(cb3_3.tint_symbol_2[47u].xyz, r3.www, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(v_134.xyz, r7.w);
  let v_135 = fma(cb3_3.tint_symbol_2[43u].xyz, r3.www, cb3_3.tint_symbol_2[44u].xyz);
  r3 = vec4<f32>(r3.x, v_135.xyz);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_136 = fma(r7.xyz, r1.www, r6.xyz);
  r6 = vec4<f32>(v_136.xyz, r6.w);
  r1.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  let v_137 = (v6.xx * cb2_2.tint_symbol_1[15u].zy);
  let v_138 = r2;
  r2 = vec4<f32>(v_138.x, v_137.xy, v_138.w);
  r1.w = (r1.w * r2.z);
  r2.y = (r2.y * r2.y);
  r1.w = (r1.w * r1.w);
  let v_139 = (r1.www * r6.xyz);
  r6 = vec4<f32>(v_139.xyz, r6.w);
  r1.w = max(r1.w, r2.y);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_140 = dot(r7.xyz, r4.xyw);
  r2.z = clamp(vec4<f32>(v_140, v_140, v_140, v_140).z, 0.0f, 1.0f);
  let v_141 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.zzz, r3.yzw);
  r3 = vec4<f32>(r3.x, v_141.xyz);
  let v_142 = fma(r3.yzw, r2.yyy, r6.xyz);
  r3 = vec4<f32>(r3.x, v_142.xyz);
  let v_143 = (r3.xxx * r3.yzw);
  r3 = vec4<f32>(r3.x, v_143.xyz);
  r2.y = ((-(r3.xxxx)).y + 1.0f);
  let v_144 = (r0.yzw * r3.yzw);
  r0 = vec4<f32>(r0.x, v_144.xyz);
  let v_145 = fma(r5.xyz, r0.xxx, r0.yzw);
  r0 = vec4<f32>(v_145.xyz, r0.w);
  r0.w = dot((-(r1.xyzx)).xyz, r4.xyw);
  r0.w = (r0.w + r0.w);
  let v_146 = -(r0.wwww);
  let v_147 = -(r1.xyzx);
  let v_148 = fma(r4.xyw, v_146.xyz, v_147.xyz);
  r1 = vec4<f32>(v_148.xyz, r1.w);
  let v_149 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_149.xyz, r3.w);
  r0.w = (abs(r1.zzzz).w + 1.0f);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_150 = (r3.xyz / r0.www);
  r3 = vec4<f32>(v_150.xyz, r3.w);
  let v_151 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_151.xyz, r3.w);
  let v_152 = bitcast<vec2<u32>>(r1.xx);
  let v_153 = r3.xy;
  let v_154 = select(r3.zy, v_153, (v_152 != vec2<u32>()));
  r1 = vec4<f32>(v_154.xy, r1.zw);
  r0.w = ((-(r2.xxxx)).w + 1.0f);
  r1.z = fma(r0.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.x = (r0.w * cb5_5.tint_symbol_3[6u].z);
  r0.w = (r0.w * r0.w);
  r2.z = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < r2.z)));
  r0.w = fma(r0.w, 5.0f, r2.z);
  let v_155 = bitcast<u32>(r2.x);
  let v_156 = r1.z;
  r0.w = select(r0.w, v_156, (v_155 != 0u));
  let v_157 = r0.w;
  r3 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_157);
  let v_158 = (r1.www * r3.xyz);
  r1 = vec4<f32>(v_158.xyz, r1.w);
  let v_159 = (r2.www * r1.xyz);
  r2 = vec4<f32>(v_159.x, r2.y, v_159.yz);
  let v_160 = (r2.xzw * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_160.x, r2.y, v_160.yz);
  let v_161 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xzw);
  r1 = vec4<f32>(v_161.xyz, r1.w);
  let v_162 = fma(r1.xyz, r2.yyy, r0.xyz);
  r0 = vec4<f32>(v_162.xyz, r0.w);
  r1.x = (cb7_7.tint_symbol_5[0u].y + 1.0f);
  let v_163 = v7.xy;
  let v_164 = max(v_163, vec2<f32>(-2147483648.0f));
  let v_165 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_164), vec2<i32>(2147483647i), (v_164 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_163 == v_163))));
  r2 = vec4<f32>(v_165.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r3 = textureLoad(t39, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
  r2 = textureLoad(t40, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
  r1.y = (r2.x * r2.x);
  let v_166 = -(r3.xxxx);
  r1.x = (r1.x + v_166.x);
  r1.x = (cb7_7.tint_symbol_5[0u].x / r1.x);
  r1.z = dot(v3.xyz, cb1_1.tint_symbol[14u].xyz);
  r1.x = ((-(r1.xxxx)).x + r1.z);
  r1.y = (r1.y * r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f >= r1.x)));
  r1.y = (r1.y * -78.43303680419921875f);
  r1.y = exp2(r1.y);
  r1.y = min(r1.y, 1.0f);
  r1.y = (r1.y * cb2_2.tint_symbol_1[15u].x);
  let v_167 = bitcast<u32>(r1.x);
  let v_168 = cb2_2.tint_symbol_1[15u].x;
  r0.w = select(r1.y, v_168, (v_167 != 0u));
  let v_169 = bitcast<vec4<u32>>(r1.xxxx);
  r0 = select(r0, vec4<f32>(), (v_169 != vec4<u32>()));
  let v_170 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_170.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_171 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_171);
  return o0;
}
