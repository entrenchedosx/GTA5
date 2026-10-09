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
  r0 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r0.x = dot(v6.xyz, v6.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_3 = (r0.xx * v6.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.z = (cb12_12.tint_symbol_4[0u].x * 0.5f);
  let v_4 = -(r0.zzzz);
  r0.z = fma(r0.w, cb12_12.tint_symbol_4[0u].x, v_4.z);
  let v_5 = fma(r0.zz, r0.xy, v1.xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r1 = textureSample(t2, s2, r0.xyxx.xy);
  r0 = textureSample(t0, s0, r0.xyxx.xy);
  let v_6 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_6.xy);
  r2.x = dot(r1.zw, r1.zw);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = sqrt(abs(r2.xxxx).x);
  r2.y = max(cb12_12.tint_symbol_4[1u].x, 0.00100000004749745131f);
  let v_7 = (r1.zw * r2.yy);
  r1 = vec4<f32>(r1.xy, v_7.xy);
  let v_8 = (r1.www * v4.xyz);
  r2 = vec4<f32>(r2.x, v_8.xyz);
  let v_9 = fma(r1.zzz, v3.xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_9.xyz);
  let v_10 = fma(r2.xxx, v2.xyz, r2.yzw);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_11 = (r1.zzz * r2.xyz);
  r2 = vec4<f32>(v_11.xy, r2.z, v_11.z);
  r1.x = dot(r1.xy, r1.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.00200000009499490261f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  let v_12 = (r0.xyz * r1.xxx);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = (r1.xx * v0.xy);
  let v_14 = r1;
  r1 = vec4<f32>(v_14.x, v_13.x, v_14.z, v_13.y);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_4[0u].wwww)).x, 0.0f, 1.0f);
  r0.w = (r0.w * v0.w);
  let v_15 = (r1.yw * cb2_2.tint_symbol_1[15u].zy);
  let v_16 = r1;
  r1 = vec4<f32>(v_16.x, v_15.x, v_16.z, v_15.y);
  let v_17 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = -(v5.xyzx);
  let v_19 = (v_18.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_20 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_22 = fma(r3.xyz, r3.www, v_21.xyz);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_23 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  let v_24 = (r1.yw * r1.yw);
  let v_25 = r1;
  r1 = vec4<f32>(v_25.x, v_24.x, v_25.z, v_24.y);
  r4.w = (cb12_12.tint_symbol_4[0u].z + -500.0f);
  r4.w = max(r4.w, 0.0f);
  r5.w = ((-(r4.wwww)).w + cb12_12.tint_symbol_4[0u].z);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r5.w, 3.0f, r4.w);
  r5.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_26 = (v5.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_26.xyz, r6.w);
  let v_27 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_27.xyz, r7.w);
  let v_28 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_28.xyz, r7.w);
  let v_29 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_29.xyz, r7.w);
  let v_30 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_30.xyz, r8.w);
  let v_31 = &(x0[0u]);
  let v_32 = r8;
  *(v_31) = vec4<f32>(v_32.xyz, (*(v_31)).w);
  let v_33 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_33.xyz, r9.w);
  let v_34 = &(x0[1u]);
  let v_35 = r9;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_36.xyz, r10.w);
  let v_37 = &(x0[2u]);
  let v_38 = r10;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  let v_39 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_39.xyz, r7.w);
  let v_40 = &(x0[3u]);
  let v_41 = r7;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_43 = r11;
  r11 = vec4<f32>(v_43.x, v_42.x, v_43.z, v_42.y);
  r6.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r6.w = (r6.w * 0.5f);
  let v_44 = abs(r10.yyyy);
  r7.z = max(v_44.z, abs(r10.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r6.w)));
  let v_45 = (bitcast<u32>(r7.z) != 0u);
  let v_46 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r7.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_46, v_45);
  let v_47 = abs(r9.yyyy);
  r7.w = max(v_47.w, abs(r9.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_48 = bitcast<u32>(r7.w);
  r7.z = select(r7.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_48 != 0u));
  let v_49 = abs(r8.yyyy);
  r7.w = max(v_49.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_50 = bitcast<u32>(r6.w);
  r6.w = select(r7.z, 0.0f, (v_50 != 0u));
  let v_51 = x0[bitcast<i32>(r6.w)];
  r8 = vec4<f32>(v_51.xyz, r8.w);
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
  let v_52 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_52.xy, r10.z, v_52.z);
  r10.z = dpdx(r6.w);
  let v_53 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_53.xyz, r12.w);
  r12.w = dpdy(r6.w);
  let v_54 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_54.xy, r8.zw);
  let v_55 = -(r8.xyxx);
  let v_56 = fma(r10.xz, r12.xz, v_55.xy);
  r13 = vec4<f32>(v_56.xy, r13.zw);
  r8.x = (1.0f / r13.x);
  r8.y = (r10.z * r12.y);
  let v_57 = -(r8.yyyy);
  r13.z = fma(r10.x, r12.w, v_57.z);
  let v_58 = (r8.xx * r13.yz);
  r8 = vec4<f32>(v_58.xy, r8.zw);
  let v_59 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_59.xy, r8.zw);
  let v_60 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_60.xy, r8.zw);
  r6.w = fma((-(r7.wwww)).w, r8.x, r6.w);
  r6.w = fma((-(r7.wwww)).w, r8.y, r6.w);
  let v_61 = bitcast<u32>(r7.z);
  let v_62 = r6.w;
  r11.z = select(r8.z, v_62, (v_61 != 0u));
  r9.z = 0.0f;
  let v_63 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_63.xyz, r8.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_64.xy, r11.zw);
  let v_65 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_65.xyz, r10.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_66.xy, r11.zw);
  let v_67 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_67.xyz, r12.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_68.xy, r11.zw);
  let v_69 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_69.xyz, r13.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_70.xy, r11.zw);
  let v_71 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_71.xyz, r14.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_72.xy, r11.zw);
  let v_73 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_73.xyz, r15.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_74.xy, r11.zw);
  let v_75 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_75.xyz, r16.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_77.xyz, r17.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_79.xyz, r18.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_81.xyz, r19.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_83.xyz, r20.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_85.xyz, r21.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_86.xy, r11.zw);
  let v_87 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_87.xyz, r22.w);
  let v_88 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_88.xy, r11.zw);
  let v_89 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_89.xyz, r23.w);
  let v_90 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_90.xy, r11.zw);
  let v_91 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_91.xyz, r24.w);
  let v_92 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_92.xy, r11.zw);
  let v_93 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_93.xyz, r9.w);
  let v_94 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_94.xy, r8.z);
  let v_95 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_95.xy, r10.z);
  let v_96 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_96.xy, r12.z);
  let v_97 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_97.xy, r13.z);
  let v_98 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_98.xy, r14.z);
  let v_99 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_99.xy, r15.z);
  let v_100 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_100.xy, r16.z);
  let v_101 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_101.xy, r17.z);
  let v_102 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_102.xy, r18.z);
  let v_103 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_103.xy, r19.z);
  let v_104 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_104.xy, r20.z);
  let v_105 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_105.xy, r21.z);
  let v_106 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_106.xy, r22.z);
  let v_107 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_107.xy, r23.z);
  let v_108 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_108.xy, r24.z);
  let v_109 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_109.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r6.w = dot(r8, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_110 = abs(r7.yyyy);
  r7.x = max(v_110.x, abs(r7.xxxx).x);
  r7.x = clamp(fma(r7.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r7.x * r5.w);
  r5.w = fma(r6.w, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.w = clamp(fma(v5.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r6.w = sqrt(r6.w);
  r6.w = (r6.w * cb6_6.tint_symbol_5[3u].z);
  let v_111 = -(r5.wwww);
  r5.w = fma(r6.w, v_111.w, r5.w);
  let v_112 = dot(r2.xyw, v_21.xyz);
  r6.w = clamp(vec4<f32>(v_112, v_112, v_112, v_112).w, 0.0f, 1.0f);
  let v_113 = dot(r4.xyz, r2.xyw);
  r7.x = clamp(vec4<f32>(v_113, v_113, v_113, v_113).x, 0.0f, 1.0f);
  let v_114 = dot(r5.xyz, v_21.xyz);
  r7.y = clamp(vec4<f32>(v_114, v_114, v_114, v_114).y, 0.0f, 1.0f);
  let v_115 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_115.xy, r7.zw);
  let v_116 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_116.xy);
  let v_117 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_117.xy);
  let v_118 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_118.xy, r7.zw);
  r7.z = ((-(cb12_12.tint_symbol_4[0u].yyyy)).z + 1.0f);
  let v_119 = fma(cb12_12.tint_symbol_4[0u].yy, r7.xy, r7.zz);
  r7 = vec4<f32>(v_119.xy, r7.zw);
  let v_120 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_120.xy, r8.zw);
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
  let v_121 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_121.xyz, r5.w);
  let v_122 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_122.xyz, r5.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(0.0f, r8.y, vec2<f32>());
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_123 = ((-(v5.xxyz)).xzw + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_123.x, r8.y, v_123.yz);
    let v_124 = (v5.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_124.xyz, r9.w);
    r7.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_125 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_125.xyz, r9.w);
    let v_126 = (r9.xyz + v_18.xyz);
    r9 = vec4<f32>(v_126.xyz, r9.w);
    let v_127 = bitcast<vec3<u32>>(r7.yyy);
    let v_128 = r8.xzw;
    let v_129 = select(r9.xyz, v_128, (v_127 != vec3<u32>()));
    r8 = vec4<f32>(v_129.x, r8.y, v_129.yz);
    r7.y = dot(r8.xzw, r8.xzw);
    let v_130 = (r8.xzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_130.x, r8.y, v_130.yz);
    r7.w = dot(r8.xzw, r8.xzw);
    r7.w = inverseSqrt(r7.w);
    let v_131 = (r7.www * r8.xzw);
    r8 = vec4<f32>(v_131.x, r8.y, v_131.yz);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r7.w);
    let v_132 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r8.xzw, v_132.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_133 = dot(r8.xzw, r2.xyw);
    r9.x = clamp(vec4<f32>(v_133, v_133, v_133, v_133).x, 0.0f, 1.0f);
    r7.w = (r7.w * r9.x);
    r9.x = (r7.y * r7.w);
    let v_134 = (r9.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_134.xyz, r9.w);
    let v_135 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_135.xyz, r9.w);
    let v_136 = fma(r3.xyz, r3.www, r8.xzw);
    r8 = vec4<f32>(v_136.x, r8.y, v_136.yz);
    r9.w = dot(r8.xzw, r8.xzw);
    r9.w = inverseSqrt(r9.w);
    let v_137 = (r8.xzw * r9.www);
    r8 = vec4<f32>(v_137.x, r8.y, v_137.yz);
    let v_138 = dot(r8.xzw, r4.xyz);
    r9.w = clamp(vec4<f32>(v_138, v_138, v_138, v_138).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.x = (r9.w * r9.w);
    r10.x = (r10.x * r10.x);
    r9.w = (r9.w * r10.x);
    r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
    let v_139 = dot(r8.xzw, r2.xyw);
    r8.x = clamp(vec4<f32>(v_139, v_139, v_139, v_139).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.y);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.w);
    r7.w = (r7.w * r8.x);
    r7.y = (r7.y * r7.w);
    r7.y = (r4.w * r7.y);
    let v_140 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_140.x, r8.y, v_140.yz);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    let v_141 = bitcast<u32>(r7.w);
    let v_142 = r7.y;
    r6.w = select(r6.w, v_142, (v_141 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_143 = (v_18.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_143.xyz, r10.w);
      let v_144 = (v5.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_144.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_145 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_145.xyz, r11.w);
      let v_146 = (r11.xyz + v_18.xyz);
      r11 = vec4<f32>(v_146.xyz, r11.w);
      let v_147 = bitcast<vec3<u32>>(r7.yyy);
      let v_148 = r10.xyz;
      let v_149 = select(r11.xyz, v_148, (v_147 != vec3<u32>()));
      r10 = vec4<f32>(v_149.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_150 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_150.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_151 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_151.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r7.w);
      let v_152 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r10.xyz, v_152.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_153 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_153, v_153, v_153, v_153).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_154 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_154.xyz, r11.w);
      let v_155 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_155.xyz, r9.w);
      let v_156 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_156.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_157 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_157.xyz, r10.w);
      let v_158 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_158, v_158, v_158, v_158).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_159 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_159, v_159, v_159, v_159).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_160 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xzw);
      r8 = vec4<f32>(v_160.x, r8.y, v_160.yz);
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
      let v_161 = (v_18.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_161.xyz, r10.w);
      let v_162 = (v5.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_162.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_163 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_163.xyz, r11.w);
      let v_164 = (r11.xyz + v_18.xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      let v_165 = bitcast<vec3<u32>>(r7.yyy);
      let v_166 = r10.xyz;
      let v_167 = select(r11.xyz, v_166, (v_165 != vec3<u32>()));
      r10 = vec4<f32>(v_167.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_168 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_168.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_169 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_169.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r7.w);
      let v_170 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r10.xyz, v_170.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_171 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_171, v_171, v_171, v_171).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_172 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_172.xyz, r11.w);
      let v_173 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_173.xyz, r9.w);
      let v_174 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_175 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      let v_176 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_176, v_176, v_176, v_176).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_177 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_177, v_177, v_177, v_177).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_178 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xzw);
      r8 = vec4<f32>(v_178.x, r8.y, v_178.yz);
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
      let v_179 = (v_18.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      let v_180 = (v5.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_180.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[22u].w);
      let v_181 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      let v_182 = (r11.xyz + v_18.xyz);
      r11 = vec4<f32>(v_182.xyz, r11.w);
      let v_183 = bitcast<vec3<u32>>(r7.yyy);
      let v_184 = r10.xyz;
      let v_185 = select(r11.xyz, v_184, (v_183 != vec3<u32>()));
      r10 = vec4<f32>(v_185.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_186 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_186.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_187 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_187.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[14u].w);
      r7.y = (r7.y / r7.w);
      let v_188 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.w = dot(r10.xyz, v_188.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_189 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_189, v_189, v_189, v_189).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_190 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_190.xyz, r11.w);
      let v_191 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_191.xyz, r9.w);
      let v_192 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_192.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_193 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_193.xyz, r10.w);
      let v_194 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_194, v_194, v_194, v_194).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_195 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_195, v_195, v_195, v_195).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_196 = fma(r7.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xzw);
      r8 = vec4<f32>(v_196.x, r8.y, v_196.yz);
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
      let v_197 = (v_18.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_197.xyz, r10.w);
      let v_198 = (v5.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_198.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[23u].w);
      let v_199 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_199.xyz, r11.w);
      let v_200 = (r11.xyz + v_18.xyz);
      r11 = vec4<f32>(v_200.xyz, r11.w);
      let v_201 = bitcast<vec3<u32>>(r7.yyy);
      let v_202 = r10.xyz;
      let v_203 = select(r11.xyz, v_202, (v_201 != vec3<u32>()));
      r10 = vec4<f32>(v_203.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_204 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_204.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_205 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_205.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[15u].w);
      r7.y = (r7.y / r7.w);
      let v_206 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.w = dot(r10.xyz, v_206.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_207 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_207, v_207, v_207, v_207).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_208 = (r9.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_208.xyz, r11.w);
      let v_209 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_209.xyz, r9.w);
      let v_210 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_210.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_211 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_211.xyz, r10.w);
      let v_212 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_212, v_212, v_212, v_212).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_213 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_213, v_213, v_213, v_213).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_214 = fma(r7.yyy, cb3_3.tint_symbol_2[23u].xyz, r8.xzw);
      r8 = vec4<f32>(v_214.x, r8.y, v_214.yz);
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
      let v_215 = (v_18.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_215.xyz, r10.w);
      let v_216 = (v5.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_216.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[24u].w);
      let v_217 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_217.xyz, r11.w);
      let v_218 = (r11.xyz + v_18.xyz);
      r11 = vec4<f32>(v_218.xyz, r11.w);
      let v_219 = bitcast<vec3<u32>>(r7.yyy);
      let v_220 = r10.xyz;
      let v_221 = select(r11.xyz, v_220, (v_219 != vec3<u32>()));
      r10 = vec4<f32>(v_221.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_222 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_222.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_223 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_223.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[16u].w);
      r7.y = (r7.y / r7.w);
      let v_224 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.w = dot(r10.xyz, v_224.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_225 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_225, v_225, v_225, v_225).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_226 = (r9.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_226.xyz, r11.w);
      let v_227 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_227.xyz, r9.w);
      let v_228 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_228.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_229 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_229.xyz, r10.w);
      let v_230 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_230, v_230, v_230, v_230).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_231 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_231, v_231, v_231, v_231).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_232 = fma(r7.yyy, cb3_3.tint_symbol_2[24u].xyz, r8.xzw);
      r8 = vec4<f32>(v_232.x, r8.y, v_232.yz);
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
      let v_233 = (v_18.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_233.xyz, r10.w);
      let v_234 = (v5.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_234.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[25u].w);
      let v_235 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_235.xyz, r11.w);
      let v_236 = (r11.xyz + v_18.xyz);
      r11 = vec4<f32>(v_236.xyz, r11.w);
      let v_237 = bitcast<vec3<u32>>(r7.yyy);
      let v_238 = r10.xyz;
      let v_239 = select(r11.xyz, v_238, (v_237 != vec3<u32>()));
      r10 = vec4<f32>(v_239.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_240 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_240.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_241 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_241.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[17u].w);
      r7.y = (r7.y / r7.w);
      let v_242 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.w = dot(r10.xyz, v_242.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_243 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_243, v_243, v_243, v_243).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_244 = (r9.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_244.xyz, r11.w);
      let v_245 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_245.xyz, r9.w);
      let v_246 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_246.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_247 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_247.xyz, r10.w);
      let v_248 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_248, v_248, v_248, v_248).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_249 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_249, v_249, v_249, v_249).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_250 = fma(r7.yyy, cb3_3.tint_symbol_2[25u].xyz, r8.xzw);
      r8 = vec4<f32>(v_250.x, r8.y, v_250.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_251 = (v_18.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_251.xyz, r10.w);
      let v_252 = (v5.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_252.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[26u].wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[26u].w);
      let v_253 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_253.xyz, r11.w);
      let v_254 = (r11.xyz + v_18.xyz);
      r11 = vec4<f32>(v_254.xyz, r11.w);
      let v_255 = bitcast<vec3<u32>>(r6.www);
      let v_256 = r10.xyz;
      let v_257 = select(r11.xyz, v_256, (v_255 != vec3<u32>()));
      r10 = vec4<f32>(v_257.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_258 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_258.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_259 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_259.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r6.w, cb3_3.tint_symbol_2[18u].w);
      r6.w = (r6.w / r7.y);
      let v_260 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.y = dot(r10.xyz, v_260.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_261 = dot(r10.xyz, r2.xyw);
      r7.w = clamp(vec4<f32>(v_261, v_261, v_261, v_261).w, 0.0f, 1.0f);
      r7.y = (r7.y * r7.w);
      r7.w = (r6.w * r7.y);
      let v_262 = (r7.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_262.xyz, r11.w);
      let v_263 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_263.xyz, r9.w);
      let v_264 = fma(r3.xyz, r3.www, r10.xyz);
      r3 = vec4<f32>(v_264.xyz, r3.w);
      r3.w = dot(r3.xyz, r3.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_265 = (r3.www * r3.xyz);
      r3 = vec4<f32>(v_265.xyz, r3.w);
      let v_266 = dot(r3.xyz, r4.xyz);
      r3.w = clamp(vec4<f32>(v_266, v_266, v_266, v_266).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r4.x = (r3.w * r3.w);
      r4.x = (r4.x * r4.x);
      r3.w = (r3.w * r4.x);
      r3.w = fma(cb12_12.tint_symbol_4[0u].y, r3.w, r7.z);
      let v_267 = dot(r3.xyz, r2.xyw);
      r3.x = clamp(vec4<f32>(v_267, v_267, v_267, v_267).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r8.y);
      r3.x = exp2(r3.x);
      r3.x = (r3.x * r3.w);
      r3.x = (r7.y * r3.x);
      r3.x = (r6.w * r3.x);
      r3.x = (r4.w * r3.x);
      let v_268 = fma(r3.xxx, cb3_3.tint_symbol_2[26u].xyz, r8.xzw);
      r8 = vec4<f32>(v_268.x, r8.y, v_268.yz);
    }
  }
  r3.x = (r7.x * r7.x);
  r1.x = (r1.x * r1.x);
  let v_269 = (r8.xzw * r1.xxx);
  r3 = vec4<f32>(r3.x, v_269.xyz);
  let v_270 = fma(r3.xxx, r9.xyz, r3.yzw);
  r3 = vec4<f32>(v_270.xyz, r3.w);
  let v_271 = fma(r5.xyz, r5.www, r3.xyz);
  r3 = vec4<f32>(v_271.xyz, r3.w);
  r1.x = fma(r2.z, r1.z, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_272 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_272.xyz, r4.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_273 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_273.xyz, r5.w);
  let v_274 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_274.xyz, r5.w);
  let v_275 = fma(r4.xyz, r1.zzz, r5.xyz);
  r4 = vec4<f32>(v_275.xyz, r4.w);
  let v_276 = (r1.www * r4.xyz);
  r4 = vec4<f32>(v_276.xyz, r4.w);
  let v_277 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(v_277.x, r1.y, v_277.yz);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_278 = dot(r5.xyz, r2.xyw);
  r2.x = clamp(vec4<f32>(v_278, v_278, v_278, v_278).x, 0.0f, 1.0f);
  let v_279 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.xxx, r1.xzw);
  r1 = vec4<f32>(v_279.x, r1.y, v_279.yz);
  let v_280 = fma(r1.xzw, r1.yyy, r4.xyz);
  r1 = vec4<f32>(v_280.xyz, r1.w);
  let v_281 = (r7.xxx * r1.xyz);
  r1 = vec4<f32>(v_281.xyz, r1.w);
  let v_282 = fma(r1.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_282.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_283 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_283.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_284 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_284 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_285 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_285.xyz, r2.w);
    let v_286 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_286, v_286, v_286, v_286).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_287 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_287, v_287, v_287, v_287).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_288 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_288.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_289 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_289.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_290 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_290.xyz, r2.w);
    let v_291 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_291.xyz, r2.w);
    let v_292 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_292.xyz, r3.w);
    let v_293 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_293.xyz, r2.w);
    let v_294 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_295 = (r2.xyz + v_294.xyz);
    r2 = vec4<f32>(v_295.xyz, r2.w);
    let v_296 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_296.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_297 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_297.xyz, r3.w);
    let v_298 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_298.xy, r1.z, v_298.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_299 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_299.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_300 = -(r0.xyxz);
    let v_301 = fma(r1.xyw, r0.www, v_300.xyw);
    r1 = vec4<f32>(v_301.xy, r1.z, v_301.z);
    let v_302 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_302.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_303 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_303.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_304 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_304 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_305 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_305.xyz, r3.w);
    let v_306 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_306, v_306, v_306, v_306).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_307 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_307, v_307, v_307, v_307).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_308 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_308.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_309 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_309.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_310 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_310.xyz, r3.w);
    let v_311 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_311.xyz, r3.w);
    let v_312 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_312.xyz, r4.w);
    let v_313 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_313.xyz, r3.w);
    let v_314 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_315 = (r3.xyz + v_314.xyz);
    r3 = vec4<f32>(v_315.xyz, r3.w);
    let v_316 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_316.x, r2.y, v_316.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_317 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_317.xyz, r3.w);
    let v_318 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_318.x, r2.y, v_318.yz);
    let v_319 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_319.x, r2.y, v_319.yz);
    let v_320 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_320.xyz, r1.w);
  }
  let v_321 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_321.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_322 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_322);
  return o0;
}
