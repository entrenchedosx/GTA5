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

var<private> r22 : vec4<f32>;

var<private> r23 : vec4<f32>;

var<private> r24 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb8_struct {
  tint_symbol_3 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb8_struct;

struct cb2_struct {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v8 : vec4<f32>;

var<private> v9 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v8 = v_2;
  x1[0u].x = v9[0u];
  x1[0u].y = v9[1u];
  x1[0u].z = v9[2u];
  x1[0u].w = v9[3u];
  r0 = textureSample(t0, s0, v2.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1.x = ((-(v0.wwww)).x + 1.0f);
  r2 = textureSample(t5, s5, v2.zwzz.xy);
  r3 = textureSample(t7, s7, v2.xyxx.xy);
  let v_4 = (v2.xy * cb11_11.tint_symbol_5[0u].zw);
  let v_5 = r1;
  r1 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  r4 = textureSample(t3, s3, r1.yzyy.xy);
  let v_6 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r4 = vec4<f32>(v_6.xy, r4.zw);
  let v_7 = (r1.yz * vec2<f32>(3.1700000762939453125f));
  let v_8 = r1;
  r1 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  r5 = textureSample(t3, s3, r1.yzyy.xy);
  let v_9 = fma(r5.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_10 = r1;
  r1 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  let v_11 = (r1.yz * vec2<f32>(0.5f));
  let v_12 = r1;
  r1 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  let v_13 = fma(r4.xy, vec2<f32>(0.5f), r1.yz);
  let v_14 = r1;
  r1 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r1.w = ((-(r1.yyyy)).w * cb11_11.tint_symbol_5[0u].x);
  r1.w = fma(r1.w, r3.w, 1.0f);
  let v_15 = (r1.yz * cb11_11.tint_symbol_5[0u].yy);
  let v_16 = r1;
  r1 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  r0 = (r0 * r1.wwww);
  r4 = textureSample(t6, s6, v2.xyxx.xy);
  let v_17 = fma(r1.yz, r3.ww, r4.xy);
  let v_18 = r1;
  r1 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  let v_19 = fma(r1.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_20 = r1;
  r1 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  r2.w = dot(r1.yz, r1.yz);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = sqrt(abs(r2.wwww).w);
  r4.x = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_21 = (r1.yz * r4.xx);
  let v_22 = r1;
  r1 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  let v_23 = (r1.zzz * v6.xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = fma(r1.yyy, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = fma(r2.www, v3.xyz, r4.xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_26 = (r1.yyy * r4.xyz);
  r4 = vec4<f32>(v_26.xy, r4.z, v_26.z);
  let v_27 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_27.xy, r3.zw);
  r1.z = dot(r3.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r1.z = (r1.z * cb12_12.tint_symbol_4[0u].w);
  r1.z = clamp(((r1.wwww * r1.zzzz)).z, 0.0f, 1.0f);
  let v_28 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  r1.w = ((-(r1.xxxx)).w + 1.0f);
  let v_29 = (r1.xxx * r2.xyz);
  r2 = vec4<f32>(v_29.xyz, r2.w);
  let v_30 = fma(r0.xyz, r1.www, r2.xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  r0.w = (r0.w * v0.w);
  let v_31 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_31.x, r1.yz, v_31.y);
  let v_32 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  let v_33 = ((-(v7.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_34 = (r2.www * r2.xyz);
  r3 = vec4<f32>(v_34.xyz, r3.w);
  let v_35 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_36 = fma(r2.xyz, r2.www, v_35.xyz);
  r5 = vec4<f32>(v_36.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_37 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_37.xyz, r5.w);
  let v_38 = (r1.xw * r1.xw);
  r1 = vec4<f32>(v_38.x, r1.yz, v_38.y);
  r2.w = fma(r3.w, cb12_12.tint_symbol_4[0u].z, -500.0f);
  r2.w = max(r2.w, 0.0f);
  let v_39 = -(r2.wwww);
  r3.w = fma(r3.w, cb12_12.tint_symbol_4[0u].z, v_39.w);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.w, 3.0f, r2.w);
  r2.x = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_40 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_40.xyz, r6.w);
  let v_41 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  let v_42 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_42.xyz, r7.w);
  let v_43 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_43.xyz, r7.w);
  let v_44 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_44.xyz, r8.w);
  let v_45 = &(x0[0u]);
  let v_46 = r8;
  *(v_45) = vec4<f32>(v_46.xyz, (*(v_45)).w);
  let v_47 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_47.xyz, r9.w);
  let v_48 = &(x0[1u]);
  let v_49 = r9;
  *(v_48) = vec4<f32>(v_49.xyz, (*(v_48)).w);
  let v_50 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_50.xyz, r10.w);
  let v_51 = &(x0[2u]);
  let v_52 = r10;
  *(v_51) = vec4<f32>(v_52.xyz, (*(v_51)).w);
  let v_53 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_53.xyz, r7.w);
  let v_54 = &(x0[3u]);
  let v_55 = r7;
  *(v_54) = vec4<f32>(v_55.xyz, (*(v_54)).w);
  let v_56 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_57 = r11;
  r11 = vec4<f32>(v_57.x, v_56.x, v_57.z, v_56.y);
  r2.y = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).y, 1.5f, 1.0f);
  r2.y = (r2.y * 0.5f);
  let v_58 = abs(r10.yyyy);
  r2.z = max(v_58.z, abs(r10.xxxx).z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.y)));
  let v_59 = (bitcast<u32>(r2.z) != 0u);
  let v_60 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r2.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_60, v_59);
  let v_61 = abs(r9.yyyy);
  r3.w = max(v_61.w, abs(r9.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.y)));
  let v_62 = bitcast<u32>(r3.w);
  r2.z = select(r2.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_62 != 0u));
  let v_63 = abs(r8.yyyy);
  r3.w = max(v_63.w, abs(r8.xxxx).w);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.y)));
  let v_64 = bitcast<u32>(r2.y);
  r2.y = select(r2.z, 0.0f, (v_64 != 0u));
  let v_65 = x0[bitcast<i32>(r2.y)];
  r8 = vec4<f32>(v_65.xyz, r8.w);
  r2.y = f32(bitcast<i32>(r2.y));
  r2.z = (r2.y + 0.5f);
  r2.z = (r2.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.yyyy)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r2.y = dot(r9, cb6_6.tint_symbol_6[12u]);
  r3.w = dot(r9, cb6_6.tint_symbol_6[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r2.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, !((r2.y == 0.0f))));
  r2.y = ((-(r2.yyyy)).y + r8.z);
  let v_66 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_66.xy, r10.z, v_66.z);
  r10.z = dpdx(r2.y);
  let v_67 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_67.xyz, r12.w);
  r12.w = dpdy(r2.y);
  let v_68 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_68.xy);
  let v_69 = -(r7.zwzz);
  let v_70 = fma(r10.xz, r12.xz, v_69.xy);
  r13 = vec4<f32>(v_70.xy, r13.zw);
  r5.w = (1.0f / r13.x);
  r6.w = (r10.z * r12.y);
  let v_71 = -(r6.wwww);
  r13.z = fma(r10.x, r12.w, v_71.z);
  let v_72 = (r5.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_72.xy);
  let v_73 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_73.xy);
  let v_74 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_74.xy);
  r2.y = fma((-(r3.wwww)).y, r7.z, r2.y);
  r2.y = fma((-(r3.wwww)).y, r7.w, r2.y);
  let v_75 = bitcast<u32>(r2.z);
  let v_76 = r2.y;
  r11.z = select(r8.z, v_76, (v_75 != 0u));
  r9.z = 0.0f;
  let v_77 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_77.xyz, r8.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_79.xyz, r10.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_81.xyz, r12.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_83.xyz, r13.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_85.xyz, r14.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_86.xy, r11.zw);
  let v_87 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_87.xyz, r15.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_88.xy, r11.zw);
  let v_89 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_89.xyz, r16.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_90.xy, r11.zw);
  let v_91 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_91.xyz, r17.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_92.xy, r11.zw);
  let v_93 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_93.xyz, r18.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_94.xy, r11.zw);
  let v_95 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_95.xyz, r19.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_96.xy, r11.zw);
  let v_97 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_97.xyz, r20.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_98.xy, r11.zw);
  let v_99 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_99.xyz, r21.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_100.xy, r11.zw);
  let v_101 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_101.xyz, r22.w);
  let v_102 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_102.xy, r11.zw);
  let v_103 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_103.xyz, r23.w);
  let v_104 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_104.xy, r11.zw);
  let v_105 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_105.xyz, r24.w);
  let v_106 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_106.xy, r11.zw);
  let v_107 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_107.xyz, r9.w);
  let v_108 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_108.xy, r8.z);
  let v_109 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_109.xy, r10.z);
  let v_110 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_110.xy, r12.z);
  let v_111 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_111.xy, r13.z);
  let v_112 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_112.xy, r14.z);
  let v_113 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_113.xy, r15.z);
  let v_114 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_114.xy, r16.z);
  let v_115 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_115.xy, r17.z);
  let v_116 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_116.xy, r18.z);
  let v_117 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_117.xy, r19.z);
  let v_118 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_118.xy, r20.z);
  let v_119 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_119.xy, r21.z);
  let v_120 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_120.xy, r22.z);
  let v_121 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_121.xy, r23.z);
  let v_122 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_122.xy, r24.z);
  let v_123 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_123.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r2.y = dot(r8, vec4<f32>(1.0f));
  r2.x = clamp(fma(r2.xxxx, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).x, 0.0f, 1.0f);
  let v_124 = abs(r7.yyyy);
  r2.z = max(v_124.z, abs(r7.xxxx).z);
  r2.z = clamp(fma(r2.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).z, 0.0f, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = (r2.z * r2.x);
  r2.x = fma(r2.y, 0.0625f, r2.x);
  r2.x = (r2.x * r2.x);
  r2.x = min(r2.x, 1.0f);
  r2.y = clamp(fma(v7.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).y, 0.0f, 1.0f);
  r2.y = sqrt(r2.y);
  r2.y = (r2.y * cb6_6.tint_symbol_6[3u].z);
  let v_125 = -(r2.xxxx);
  r2.x = fma(r2.y, v_125.x, r2.x);
  let v_126 = dot(r4.xyw, v_35.xyz);
  r2.y = clamp(vec4<f32>(v_126, v_126, v_126, v_126).y, 0.0f, 1.0f);
  let v_127 = dot(r3.xyz, r4.xyw);
  r7.x = clamp(vec4<f32>(v_127, v_127, v_127, v_127).x, 0.0f, 1.0f);
  let v_128 = dot(r5.xyz, v_35.xyz);
  r7.y = clamp(vec4<f32>(v_128, v_128, v_128, v_128).y, 0.0f, 1.0f);
  let v_129 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_129.xy, r7.zw);
  let v_130 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_130.xy);
  let v_131 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_131.xy);
  let v_132 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_132.xy, r7.zw);
  r2.z = ((-(cb12_12.tint_symbol_4[0u].yyyy)).z + 1.0f);
  let v_133 = fma(cb12_12.tint_symbol_4[0u].yy, r7.xy, r2.zz);
  r7 = vec4<f32>(v_133.xy, r7.zw);
  let v_134 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_134.xy);
  r2.z = (r7.z * 0.125f);
  r3.w = fma((-(r1.zzzz)).w, r7.x, 1.0f);
  r5.x = dot(r4.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.w);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r2.z = (r2.z * r5.x);
  r1.z = (r1.z * r2.z);
  r1.z = (r2.y * r1.z);
  r2.y = (r2.y * r3.w);
  let v_135 = fma(r0.xyz, r2.yyy, r1.zzz);
  r5 = vec4<f32>(v_135.xyz, r5.w);
  let v_136 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_136.xyz, r5.w);
  r1.y = fma(r4.z, r1.y, cb3_3.tint_symbol_2[43u].w);
  r1.y = (r1.y * cb3_3.tint_symbol_2[44u].w);
  r1.y = max(r1.y, 0.0f);
  let v_137 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(v_137.xyz, r7.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_138 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_138.xyz, r8.w);
  let v_139 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_139.xyz, r8.w);
  let v_140 = fma(r7.xyz, r1.zzz, r8.xyz);
  r7 = vec4<f32>(v_140.xyz, r7.w);
  let v_141 = (r1.www * r7.xyz);
  r7 = vec4<f32>(v_141.xyz, r7.w);
  let v_142 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r8 = vec4<f32>(v_142.xyz, r8.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_143 = dot(r9.xyz, r4.xyw);
  r1.y = clamp(vec4<f32>(v_143, v_143, v_143, v_143).y, 0.0f, 1.0f);
  let v_144 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.yyy, r8.xyz);
  r8 = vec4<f32>(v_144.xyz, r8.w);
  let v_145 = fma(r8.xyz, r1.xxx, r7.xyz);
  r7 = vec4<f32>(v_145.xyz, r7.w);
  let v_146 = (r3.www * r7.xyz);
  r7 = vec4<f32>(v_146.xyz, r7.w);
  let v_147 = (r0.xyz * r7.xyz);
  r0 = vec4<f32>(v_147.xyz, r0.w);
  let v_148 = fma(r5.xyz, r2.xxx, r0.xyz);
  r0 = vec4<f32>(v_148.xyz, r0.w);
  r1.y = ((-(r3.wwww)).y + 1.0f);
  r1.z = dot((-(r3.xyzx)).xyz, r4.xyw);
  r1.z = (r1.z + r1.z);
  let v_149 = -(r1.zzzz);
  let v_150 = -(r3.xyzx);
  let v_151 = fma(r4.xyw, v_149.xyz, v_150.xyz);
  r2 = vec4<f32>(v_151.xyz, r2.w);
  let v_152 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_152.xy, r3.zw);
  r1.z = ((-(r3.xxxx)).z + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.z * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.w)));
  r3.z = fma(r1.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.z = (r1.z * r1.z);
  r1.z = fma(r1.z, 5.0f, r2.w);
  let v_153 = bitcast<u32>(r3.x);
  let v_154 = r3.z;
  r1.z = select(r1.z, v_154, (v_153 != 0u));
  let v_155 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_155.xy, r2.z, v_155.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_156 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_156.xy, r2.z, v_156.z);
  let v_157 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_157.xy, r2.z, v_157.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_158 = bitcast<vec2<u32>>(r2.zz);
  let v_159 = r2.xy;
  let v_160 = select(r2.wy, v_159, (v_158 != vec2<u32>()));
  r2 = vec4<f32>(v_160.xy, r2.zw);
  let v_161 = r1.z;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_161);
  r1.x = max(r1.w, r1.x);
  let v_162 = (r1.xxx * r2.xyz);
  r1 = vec4<f32>(v_162.x, r1.y, v_162.yz);
  let v_163 = (r3.yyy * r1.xzw);
  r2 = vec4<f32>(v_163.xyz, r2.w);
  let v_164 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_164.xyz, r2.w);
  let v_165 = fma(r1.xzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_165.x, r1.y, v_165.yz);
  let v_166 = fma(r1.xzw, r1.yyy, r0.xyz);
  r0 = vec4<f32>(v_166.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_167 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_167.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_168 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_168 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_169 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_169.xyz, r2.w);
    let v_170 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_170, v_170, v_170, v_170).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_171 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_171, v_171, v_171, v_171).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_172 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_172.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_173 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_173.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_174 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_174.xyz, r2.w);
    let v_175 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_175.xyz, r2.w);
    let v_176 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_176.xyz, r3.w);
    let v_177 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_177.xyz, r2.w);
    let v_178 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_179 = (r2.xyz + v_178.xyz);
    r2 = vec4<f32>(v_179.xyz, r2.w);
    let v_180 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_180.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_181 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_181.xyz, r3.w);
    let v_182 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_182.xy, r1.z, v_182.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_183 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_183.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_184 = -(r0.xyxz);
    let v_185 = fma(r1.xyw, r0.www, v_184.xyw);
    r1 = vec4<f32>(v_185.xy, r1.z, v_185.z);
    let v_186 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_186.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_187 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_187.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_188 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_188 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_189 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_189.xyz, r3.w);
    let v_190 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_190, v_190, v_190, v_190).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_191 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_191, v_191, v_191, v_191).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_192 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_192.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_193 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_193.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_194 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_194.xyz, r3.w);
    let v_195 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_195.xyz, r3.w);
    let v_196 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_196.xyz, r4.w);
    let v_197 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_197.xyz, r3.w);
    let v_198 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_199 = (r3.xyz + v_198.xyz);
    r3 = vec4<f32>(v_199.xyz, r3.w);
    let v_200 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_200.x, r2.y, v_200.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_201 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_201.xyz, r3.w);
    let v_202 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_202.x, r2.y, v_202.yz);
    let v_203 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_203.x, r2.y, v_203.yz);
    let v_204 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_204.xyz, r1.w);
  }
  let v_205 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_205.xyz, o0.w);
}

fn v_3(v_206 : bool) {
  if (v_206) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_207 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v5, v6, v7, v_207);
  return o0;
}
