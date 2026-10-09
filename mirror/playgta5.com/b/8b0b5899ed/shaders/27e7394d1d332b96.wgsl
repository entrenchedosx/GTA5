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

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r0.x)));
  v_3((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r0.x = dot(v6.xyz, v6.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_4 = (r0.xx * v6.xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0.z = (cb12_12.tint_symbol_4[0u].x * 0.5f);
  let v_5 = -(r0.zzzz);
  r0.z = fma(r0.w, cb12_12.tint_symbol_4[0u].x, v_5.z);
  let v_6 = fma(r0.zz, r0.xy, v1.xy);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r1 = textureSample(t2, s2, r0.xyxx.xy);
  r0 = textureSample(t0, s0, r0.xyxx.xy);
  let v_7 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_7.xy);
  r2.x = dot(r1.zw, r1.zw);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = sqrt(abs(r2.xxxx).x);
  r2.y = max(cb12_12.tint_symbol_4[1u].x, 0.00100000004749745131f);
  let v_8 = (r1.zw * r2.yy);
  r1 = vec4<f32>(r1.xy, v_8.xy);
  let v_9 = (r1.www * v4.xyz);
  r2 = vec4<f32>(r2.x, v_9.xyz);
  let v_10 = fma(r1.zzz, v3.xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_10.xyz);
  let v_11 = fma(r2.xxx, v2.xyz, r2.yzw);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_12 = (r1.zzz * r2.xyz);
  r2 = vec4<f32>(v_12.xy, r2.z, v_12.z);
  r1.x = dot(r1.xy, r1.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.00200000009499490261f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  let v_13 = (r0.xyz * r1.xxx);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = (r1.xx * v0.xy);
  let v_15 = r1;
  r1 = vec4<f32>(v_15.x, v_14.x, v_15.z, v_14.y);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_4[0u].wwww)).x, 0.0f, 1.0f);
  r0.w = (r0.w * v0.w);
  let v_16 = (r1.yw * cb2_2.tint_symbol_1[15u].zy);
  let v_17 = r1;
  r1 = vec4<f32>(v_17.x, v_16.x, v_17.z, v_16.y);
  let v_18 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = -(v5.xyzx);
  let v_20 = (v_19.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_21 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_23 = fma(r3.xyz, r3.www, v_22.xyz);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_24 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = (r1.yw * r1.yw);
  let v_26 = r1;
  r1 = vec4<f32>(v_26.x, v_25.x, v_26.z, v_25.y);
  r4.w = (cb12_12.tint_symbol_4[0u].z + -500.0f);
  r4.w = max(r4.w, 0.0f);
  r5.w = ((-(r4.wwww)).w + cb12_12.tint_symbol_4[0u].z);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r5.w, 3.0f, r4.w);
  r5.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_27 = (v5.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_27.xyz, r6.w);
  let v_28 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_28.xyz, r7.w);
  let v_29 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_29.xyz, r7.w);
  let v_30 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_30.xyz, r7.w);
  let v_31 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_31.xyz, r8.w);
  let v_32 = &(x0[0u]);
  let v_33 = r8;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_34.xyz, r9.w);
  let v_35 = &(x0[1u]);
  let v_36 = r9;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_37.xyz, r10.w);
  let v_38 = &(x0[2u]);
  let v_39 = r10;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  let v_41 = &(x0[3u]);
  let v_42 = r7;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  let v_43 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_44 = r11;
  r11 = vec4<f32>(v_44.x, v_43.x, v_44.z, v_43.y);
  r6.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r6.w = (r6.w * 0.5f);
  let v_45 = abs(r10.yyyy);
  r7.z = max(v_45.z, abs(r10.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r6.w)));
  let v_46 = (bitcast<u32>(r7.z) != 0u);
  let v_47 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r7.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_47, v_46);
  let v_48 = abs(r9.yyyy);
  r7.w = max(v_48.w, abs(r9.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_49 = bitcast<u32>(r7.w);
  r7.z = select(r7.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_49 != 0u));
  let v_50 = abs(r8.yyyy);
  r7.w = max(v_50.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_51 = bitcast<u32>(r6.w);
  r6.w = select(r7.z, 0.0f, (v_51 != 0u));
  let v_52 = x0[bitcast<i32>(r6.w)];
  r8 = vec4<f32>(v_52.xyz, r8.w);
  r6.w = f32(bitcast<i32>(r6.w));
  r7.z = (r6.w + 0.5f);
  r7.z = (r7.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r6.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r6.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r7.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r7.z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 0.0f))));
  r6.w = ((-(r6.wwww)).w + r8.z);
  let v_53 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_53.xy, r10.z, v_53.z);
  r10.z = dpdx(r6.w);
  let v_54 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_54.xyz, r12.w);
  r12.w = dpdy(r6.w);
  let v_55 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_55.xy, r8.zw);
  let v_56 = -(r8.xyxx);
  let v_57 = fma(r10.xz, r12.xz, v_56.xy);
  r13 = vec4<f32>(v_57.xy, r13.zw);
  r8.x = (1.0f / r13.x);
  r8.y = (r10.z * r12.y);
  let v_58 = -(r8.yyyy);
  r13.z = fma(r10.x, r12.w, v_58.z);
  let v_59 = (r8.xx * r13.yz);
  r8 = vec4<f32>(v_59.xy, r8.zw);
  let v_60 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_60.xy, r8.zw);
  let v_61 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_61.xy, r8.zw);
  r6.w = fma((-(r7.wwww)).w, r8.x, r6.w);
  r6.w = fma((-(r7.wwww)).w, r8.y, r6.w);
  let v_62 = bitcast<u32>(r7.z);
  let v_63 = r6.w;
  r11.z = select(r8.z, v_63, (v_62 != 0u));
  r9.z = 0.0f;
  let v_64 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_64.xyz, r8.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_65.xy, r11.zw);
  let v_66 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_66.xyz, r10.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_68.xyz, r12.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_70.xyz, r13.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_72.xyz, r14.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_74.xyz, r15.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_76.xyz, r16.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_78.xyz, r17.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_80.xyz, r18.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_82.xyz, r19.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_84.xyz, r20.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_86.xyz, r21.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_88.xyz, r22.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_90.xyz, r23.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_92.xyz, r24.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_94.xyz, r9.w);
  let v_95 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_95.xy, r8.z);
  let v_96 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_96.xy, r10.z);
  let v_97 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_97.xy, r12.z);
  let v_98 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_98.xy, r13.z);
  let v_99 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_99.xy, r14.z);
  let v_100 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_100.xy, r15.z);
  let v_101 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_101.xy, r16.z);
  let v_102 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_102.xy, r17.z);
  let v_103 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_103.xy, r18.z);
  let v_104 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_104.xy, r19.z);
  let v_105 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_105.xy, r20.z);
  let v_106 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_106.xy, r21.z);
  let v_107 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_107.xy, r22.z);
  let v_108 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_108.xy, r23.z);
  let v_109 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_109.xy, r24.z);
  let v_110 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_110.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r6.w = dot(r8, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_111 = abs(r7.yyyy);
  r7.x = max(v_111.x, abs(r7.xxxx).x);
  r7.x = clamp(fma(r7.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r7.x * r5.w);
  r5.w = fma(r6.w, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.w = clamp(fma(v5.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r6.w = sqrt(r6.w);
  r6.w = (r6.w * cb6_6.tint_symbol_5[3u].z);
  let v_112 = -(r5.wwww);
  r5.w = fma(r6.w, v_112.w, r5.w);
  let v_113 = dot(r2.xyw, v_22.xyz);
  r6.w = clamp(vec4<f32>(v_113, v_113, v_113, v_113).w, 0.0f, 1.0f);
  let v_114 = dot(r4.xyz, r2.xyw);
  r7.x = clamp(vec4<f32>(v_114, v_114, v_114, v_114).x, 0.0f, 1.0f);
  let v_115 = dot(r5.xyz, v_22.xyz);
  r7.y = clamp(vec4<f32>(v_115, v_115, v_115, v_115).y, 0.0f, 1.0f);
  let v_116 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_116.xy, r7.zw);
  let v_117 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_117.xy);
  let v_118 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_118.xy);
  let v_119 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_119.xy, r7.zw);
  r7.z = ((-(cb12_12.tint_symbol_4[0u].yyyy)).z + 1.0f);
  let v_120 = fma(cb12_12.tint_symbol_4[0u].yy, r7.xy, r7.zz);
  r7 = vec4<f32>(v_120.xy, r7.zw);
  let v_121 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_121.xy, r8.zw);
  r4.w = (r8.x * 0.125f);
  r7.x = fma((-(r1.xxxx)).x, r7.x, 1.0f);
  r5.x = dot(r2.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r4.w * r5.x);
  r5.x = (r1.x * r5.x);
  r5.x = (r6.w * r5.x);
  r5.y = (r6.w * r7.x);
  let v_122 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_122.xyz, r5.w);
  let v_123 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_123.xyz, r5.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(0.0f, r8.y, vec2<f32>());
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_124 = ((-(v5.xxyz)).xzw + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_124.x, r8.y, v_124.yz);
    let v_125 = (v5.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_125.xyz, r9.w);
    r7.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_126 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_126.xyz, r9.w);
    let v_127 = (r9.xyz + v_19.xyz);
    r9 = vec4<f32>(v_127.xyz, r9.w);
    let v_128 = bitcast<vec3<u32>>(r7.yyy);
    let v_129 = r8.xzw;
    let v_130 = select(r9.xyz, v_129, (v_128 != vec3<u32>()));
    r8 = vec4<f32>(v_130.x, r8.y, v_130.yz);
    r7.y = dot(r8.xzw, r8.xzw);
    let v_131 = (r8.xzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_131.x, r8.y, v_131.yz);
    r7.w = dot(r8.xzw, r8.xzw);
    r7.w = inverseSqrt(r7.w);
    let v_132 = (r7.www * r8.xzw);
    r8 = vec4<f32>(v_132.x, r8.y, v_132.yz);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r7.w);
    let v_133 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r8.xzw, v_133.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_134 = dot(r8.xzw, r2.xyw);
    r9.x = clamp(vec4<f32>(v_134, v_134, v_134, v_134).x, 0.0f, 1.0f);
    r7.w = (r7.w * r9.x);
    r9.x = (r7.y * r7.w);
    let v_135 = (r9.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_135.xyz, r9.w);
    let v_136 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_136.xyz, r9.w);
    let v_137 = fma(r3.xyz, r3.www, r8.xzw);
    r8 = vec4<f32>(v_137.x, r8.y, v_137.yz);
    r9.w = dot(r8.xzw, r8.xzw);
    r9.w = inverseSqrt(r9.w);
    let v_138 = (r8.xzw * r9.www);
    r8 = vec4<f32>(v_138.x, r8.y, v_138.yz);
    let v_139 = dot(r8.xzw, r4.xyz);
    r9.w = clamp(vec4<f32>(v_139, v_139, v_139, v_139).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.x = (r9.w * r9.w);
    r10.x = (r10.x * r10.x);
    r9.w = (r9.w * r10.x);
    r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
    let v_140 = dot(r8.xzw, r2.xyw);
    r8.x = clamp(vec4<f32>(v_140, v_140, v_140, v_140).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.y);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.w);
    r7.w = (r7.w * r8.x);
    r7.y = (r7.y * r7.w);
    r7.y = (r4.w * r7.y);
    let v_141 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_141.x, r8.y, v_141.yz);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    let v_142 = bitcast<u32>(r7.w);
    let v_143 = r7.y;
    r6.w = select(r6.w, v_143, (v_142 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_144 = (v_19.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_144.xyz, r10.w);
      let v_145 = (v5.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_145.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_146 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_146.xyz, r11.w);
      let v_147 = (r11.xyz + v_19.xyz);
      r11 = vec4<f32>(v_147.xyz, r11.w);
      let v_148 = bitcast<vec3<u32>>(r7.yyy);
      let v_149 = r10.xyz;
      let v_150 = select(r11.xyz, v_149, (v_148 != vec3<u32>()));
      r10 = vec4<f32>(v_150.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_151 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_151.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_152 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_152.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r7.w);
      let v_153 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r10.xyz, v_153.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_154 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_154, v_154, v_154, v_154).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_155 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_155.xyz, r11.w);
      let v_156 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_156.xyz, r9.w);
      let v_157 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_157.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_158 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_158.xyz, r10.w);
      let v_159 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_159, v_159, v_159, v_159).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_160 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_160, v_160, v_160, v_160).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_161 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xzw);
      r8 = vec4<f32>(v_161.x, r8.y, v_161.yz);
    }
  } else {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_162 = (v_19.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_162.xyz, r10.w);
      let v_163 = (v5.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_163.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_164 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      let v_165 = (r11.xyz + v_19.xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      let v_166 = bitcast<vec3<u32>>(r7.yyy);
      let v_167 = r10.xyz;
      let v_168 = select(r11.xyz, v_167, (v_166 != vec3<u32>()));
      r10 = vec4<f32>(v_168.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_169 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_169.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_170 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_170.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r7.w);
      let v_171 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r10.xyz, v_171.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_172 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_173 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      let v_174 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_174.xyz, r9.w);
      let v_175 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_176 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_176.xyz, r10.w);
      let v_177 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_177, v_177, v_177, v_177).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_178 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_178, v_178, v_178, v_178).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_179 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xzw);
      r8 = vec4<f32>(v_179.x, r8.y, v_179.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_180 = (v_19.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_180.xyz, r10.w);
      let v_181 = (v5.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[22u].w);
      let v_182 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_182.xyz, r11.w);
      let v_183 = (r11.xyz + v_19.xyz);
      r11 = vec4<f32>(v_183.xyz, r11.w);
      let v_184 = bitcast<vec3<u32>>(r7.yyy);
      let v_185 = r10.xyz;
      let v_186 = select(r11.xyz, v_185, (v_184 != vec3<u32>()));
      r10 = vec4<f32>(v_186.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_187 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_187.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_188 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_188.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[14u].w);
      r7.y = (r7.y / r7.w);
      let v_189 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.w = dot(r10.xyz, v_189.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_190 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_190, v_190, v_190, v_190).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_191 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_191.xyz, r11.w);
      let v_192 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_192.xyz, r9.w);
      let v_193 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_193.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_194 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_194.xyz, r10.w);
      let v_195 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_195, v_195, v_195, v_195).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_196 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_196, v_196, v_196, v_196).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_197 = fma(r7.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xzw);
      r8 = vec4<f32>(v_197.x, r8.y, v_197.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_198 = (v_19.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_198.xyz, r10.w);
      let v_199 = (v5.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_199.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[23u].w);
      let v_200 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_200.xyz, r11.w);
      let v_201 = (r11.xyz + v_19.xyz);
      r11 = vec4<f32>(v_201.xyz, r11.w);
      let v_202 = bitcast<vec3<u32>>(r7.yyy);
      let v_203 = r10.xyz;
      let v_204 = select(r11.xyz, v_203, (v_202 != vec3<u32>()));
      r10 = vec4<f32>(v_204.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_205 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_205.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_206 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_206.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[15u].w);
      r7.y = (r7.y / r7.w);
      let v_207 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.w = dot(r10.xyz, v_207.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_208 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_208, v_208, v_208, v_208).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_209 = (r9.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_209.xyz, r11.w);
      let v_210 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_210.xyz, r9.w);
      let v_211 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_211.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_212 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_212.xyz, r10.w);
      let v_213 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_213, v_213, v_213, v_213).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_214 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_214, v_214, v_214, v_214).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_215 = fma(r7.yyy, cb3_3.tint_symbol_2[23u].xyz, r8.xzw);
      r8 = vec4<f32>(v_215.x, r8.y, v_215.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_216 = (v_19.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_216.xyz, r10.w);
      let v_217 = (v5.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_217.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[24u].w);
      let v_218 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_218.xyz, r11.w);
      let v_219 = (r11.xyz + v_19.xyz);
      r11 = vec4<f32>(v_219.xyz, r11.w);
      let v_220 = bitcast<vec3<u32>>(r7.yyy);
      let v_221 = r10.xyz;
      let v_222 = select(r11.xyz, v_221, (v_220 != vec3<u32>()));
      r10 = vec4<f32>(v_222.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_223 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_223.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_224 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_224.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[16u].w);
      r7.y = (r7.y / r7.w);
      let v_225 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.w = dot(r10.xyz, v_225.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_226 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_226, v_226, v_226, v_226).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_227 = (r9.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_227.xyz, r11.w);
      let v_228 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_228.xyz, r9.w);
      let v_229 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_229.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_230 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_230.xyz, r10.w);
      let v_231 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_231, v_231, v_231, v_231).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_232 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_232, v_232, v_232, v_232).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_233 = fma(r7.yyy, cb3_3.tint_symbol_2[24u].xyz, r8.xzw);
      r8 = vec4<f32>(v_233.x, r8.y, v_233.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_234 = (v_19.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_234.xyz, r10.w);
      let v_235 = (v5.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_235.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[25u].w);
      let v_236 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_236.xyz, r11.w);
      let v_237 = (r11.xyz + v_19.xyz);
      r11 = vec4<f32>(v_237.xyz, r11.w);
      let v_238 = bitcast<vec3<u32>>(r7.yyy);
      let v_239 = r10.xyz;
      let v_240 = select(r11.xyz, v_239, (v_238 != vec3<u32>()));
      r10 = vec4<f32>(v_240.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_241 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_241.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_242 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_242.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[17u].w);
      r7.y = (r7.y / r7.w);
      let v_243 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.w = dot(r10.xyz, v_243.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_244 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_244, v_244, v_244, v_244).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_245 = (r9.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_245.xyz, r11.w);
      let v_246 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_246.xyz, r9.w);
      let v_247 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_247.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_248 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_248.xyz, r10.w);
      let v_249 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_249, v_249, v_249, v_249).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_250 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_250, v_250, v_250, v_250).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_251 = fma(r7.yyy, cb3_3.tint_symbol_2[25u].xyz, r8.xzw);
      r8 = vec4<f32>(v_251.x, r8.y, v_251.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_252 = (v_19.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_252.xyz, r10.w);
      let v_253 = (v5.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_253.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[26u].wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[26u].w);
      let v_254 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_254.xyz, r11.w);
      let v_255 = (r11.xyz + v_19.xyz);
      r11 = vec4<f32>(v_255.xyz, r11.w);
      let v_256 = bitcast<vec3<u32>>(r6.www);
      let v_257 = r10.xyz;
      let v_258 = select(r11.xyz, v_257, (v_256 != vec3<u32>()));
      r10 = vec4<f32>(v_258.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_259 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_259.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_260 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_260.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r6.w, cb3_3.tint_symbol_2[18u].w);
      r6.w = (r6.w / r7.y);
      let v_261 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.y = dot(r10.xyz, v_261.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_262 = dot(r10.xyz, r2.xyw);
      r7.w = clamp(vec4<f32>(v_262, v_262, v_262, v_262).w, 0.0f, 1.0f);
      r7.y = (r7.y * r7.w);
      r7.w = (r6.w * r7.y);
      let v_263 = (r7.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_263.xyz, r11.w);
      let v_264 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_264.xyz, r9.w);
      let v_265 = fma(r3.xyz, r3.www, r10.xyz);
      r3 = vec4<f32>(v_265.xyz, r3.w);
      r3.w = dot(r3.xyz, r3.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_266 = (r3.www * r3.xyz);
      r3 = vec4<f32>(v_266.xyz, r3.w);
      let v_267 = dot(r3.xyz, r4.xyz);
      r3.w = clamp(vec4<f32>(v_267, v_267, v_267, v_267).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r4.x = (r3.w * r3.w);
      r4.x = (r4.x * r4.x);
      r3.w = (r3.w * r4.x);
      r3.w = fma(cb12_12.tint_symbol_4[0u].y, r3.w, r7.z);
      let v_268 = dot(r3.xyz, r2.xyw);
      r3.x = clamp(vec4<f32>(v_268, v_268, v_268, v_268).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r8.y);
      r3.x = exp2(r3.x);
      r3.x = (r3.x * r3.w);
      r3.x = (r7.y * r3.x);
      r3.x = (r6.w * r3.x);
      r3.x = (r4.w * r3.x);
      let v_269 = fma(r3.xxx, cb3_3.tint_symbol_2[26u].xyz, r8.xzw);
      r8 = vec4<f32>(v_269.x, r8.y, v_269.yz);
    }
  }
  r3.x = (r7.x * r7.x);
  r1.x = (r1.x * r1.x);
  let v_270 = (r8.xzw * r1.xxx);
  r3 = vec4<f32>(r3.x, v_270.xyz);
  let v_271 = fma(r3.xxx, r9.xyz, r3.yzw);
  r3 = vec4<f32>(v_271.xyz, r3.w);
  let v_272 = fma(r5.xyz, r5.www, r3.xyz);
  r3 = vec4<f32>(v_272.xyz, r3.w);
  r1.x = fma(r2.z, r1.z, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_273 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_273.xyz, r4.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_274 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_274.xyz, r5.w);
  let v_275 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_275.xyz, r5.w);
  let v_276 = fma(r4.xyz, r1.zzz, r5.xyz);
  r4 = vec4<f32>(v_276.xyz, r4.w);
  let v_277 = (r1.www * r4.xyz);
  r4 = vec4<f32>(v_277.xyz, r4.w);
  let v_278 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(v_278.x, r1.y, v_278.yz);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_279 = dot(r5.xyz, r2.xyw);
  r2.x = clamp(vec4<f32>(v_279, v_279, v_279, v_279).x, 0.0f, 1.0f);
  let v_280 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.xxx, r1.xzw);
  r1 = vec4<f32>(v_280.x, r1.y, v_280.yz);
  let v_281 = fma(r1.xzw, r1.yyy, r4.xyz);
  r1 = vec4<f32>(v_281.xyz, r1.w);
  let v_282 = (r7.xxx * r1.xyz);
  r1 = vec4<f32>(v_282.xyz, r1.w);
  let v_283 = fma(r1.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_283.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_284 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_284.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_285 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_285 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_286 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_286.xyz, r2.w);
    let v_287 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_287, v_287, v_287, v_287).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_288 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_288, v_288, v_288, v_288).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_289 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_289.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_290 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_290.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_291 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_291.xyz, r2.w);
    let v_292 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_292.xyz, r2.w);
    let v_293 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_293.xyz, r3.w);
    let v_294 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_294.xyz, r2.w);
    let v_295 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_296 = (r2.xyz + v_295.xyz);
    r2 = vec4<f32>(v_296.xyz, r2.w);
    let v_297 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_297.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_298 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_298.xyz, r3.w);
    let v_299 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_299.xy, r1.z, v_299.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_300 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_300.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_301 = -(r0.xyxz);
    let v_302 = fma(r1.xyw, r0.www, v_301.xyw);
    r1 = vec4<f32>(v_302.xy, r1.z, v_302.z);
    let v_303 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_303.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_304 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_304.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_305 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_305 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_306 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_306.xyz, r3.w);
    let v_307 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_307, v_307, v_307, v_307).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_308 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_308, v_308, v_308, v_308).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_309 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_309.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_310 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_310.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_311 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_311.xyz, r3.w);
    let v_312 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_312.xyz, r3.w);
    let v_313 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_313.xyz, r4.w);
    let v_314 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_314.xyz, r3.w);
    let v_315 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_316 = (r3.xyz + v_315.xyz);
    r3 = vec4<f32>(v_316.xyz, r3.w);
    let v_317 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_317.x, r2.y, v_317.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_318 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_318.xyz, r3.w);
    let v_319 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_319.x, r2.y, v_319.yz);
    let v_320 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_320.x, r2.y, v_320.yz);
    let v_321 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_321.xyz, r1.w);
  }
  let v_322 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_322.xyz, o0.w);
}

fn v_3(v_323 : bool) {
  if (v_323) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_324 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_324);
  return o0;
}
