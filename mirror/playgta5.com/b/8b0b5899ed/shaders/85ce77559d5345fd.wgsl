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
  tint_symbol_6 : array<vec4<u32>, 3u>,
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
  let v_19 = ((-(v5.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_20 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_22 = fma(r3.xyz, r3.www, v_21.xyz);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_23 = (r3.www * r5.xyz);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  let v_24 = (r1.yw * r1.yw);
  let v_25 = r1;
  r1 = vec4<f32>(v_25.x, v_24.x, v_25.z, v_24.y);
  r3.w = (cb12_12.tint_symbol_4[0u].z + -500.0f);
  r3.w = max(r3.w, 0.0f);
  r4.w = ((-(r3.wwww)).w + cb12_12.tint_symbol_4[0u].z);
  r3.w = (r3.w * 558.0f);
  r3.w = fma(r4.w, 3.0f, r3.w);
  r3.x = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
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
  r3.y = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).y, 1.5f, 1.0f);
  r3.y = (r3.y * 0.5f);
  let v_44 = abs(r10.yyyy);
  r3.z = max(v_44.z, abs(r10.xxxx).z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r3.y)));
  let v_45 = (bitcast<u32>(r3.z) != 0u);
  let v_46 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_46, v_45);
  let v_47 = abs(r9.yyyy);
  r4.w = max(v_47.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.y)));
  let v_48 = bitcast<u32>(r4.w);
  r3.z = select(r3.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_48 != 0u));
  let v_49 = abs(r8.yyyy);
  r4.w = max(v_49.w, abs(r8.xxxx).w);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.y)));
  let v_50 = bitcast<u32>(r3.y);
  r3.y = select(r3.z, 0.0f, (v_50 != 0u));
  let v_51 = x0[bitcast<i32>(r3.y)];
  r8 = vec4<f32>(v_51.xyz, r8.w);
  r3.y = f32(bitcast<i32>(r3.y));
  r3.z = (r3.y + 0.5f);
  r3.z = (r3.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.yyyy)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r3.y = dot(r9, cb6_6.tint_symbol_5[12u]);
  r4.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r3.z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, !((r3.y == 0.0f))));
  r3.y = ((-(r3.yyyy)).y + r8.z);
  let v_52 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_52.xy, r10.z, v_52.z);
  r10.z = dpdx(r3.y);
  let v_53 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_53.xyz, r12.w);
  r12.w = dpdy(r3.y);
  let v_54 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_54.xy);
  let v_55 = -(r7.zwzz);
  let v_56 = fma(r10.xz, r12.xz, v_55.xy);
  r13 = vec4<f32>(v_56.xy, r13.zw);
  r5.w = (1.0f / r13.x);
  r6.w = (r10.z * r12.y);
  let v_57 = -(r6.wwww);
  r13.z = fma(r10.x, r12.w, v_57.z);
  let v_58 = (r5.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_58.xy);
  let v_59 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_59.xy);
  let v_60 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_60.xy);
  r3.y = fma((-(r4.wwww)).y, r7.z, r3.y);
  r3.y = fma((-(r4.wwww)).y, r7.w, r3.y);
  let v_61 = bitcast<u32>(r3.z);
  let v_62 = r3.y;
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
  r3.y = dot(r8, vec4<f32>(1.0f));
  r3.x = clamp(fma(r3.xxxx, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).x, 0.0f, 1.0f);
  let v_110 = abs(r7.yyyy);
  r3.z = max(v_110.z, abs(r7.xxxx).z);
  r3.z = clamp(fma(r3.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).z, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = (r3.z * r3.x);
  r3.x = fma(r3.y, 0.0625f, r3.x);
  r3.x = (r3.x * r3.x);
  r3.x = min(r3.x, 1.0f);
  r3.y = clamp(fma(v5.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).y, 0.0f, 1.0f);
  r3.y = sqrt(r3.y);
  r3.y = (r3.y * cb6_6.tint_symbol_5[3u].z);
  let v_111 = -(r3.xxxx);
  r3.x = fma(r3.y, v_111.x, r3.x);
  let v_112 = dot(r2.xyw, v_21.xyz);
  r3.y = clamp(vec4<f32>(v_112, v_112, v_112, v_112).y, 0.0f, 1.0f);
  let v_113 = dot(r4.xyz, r2.xyw);
  r4.x = clamp(vec4<f32>(v_113, v_113, v_113, v_113).x, 0.0f, 1.0f);
  let v_114 = dot(r5.xyz, v_21.xyz);
  r4.y = clamp(vec4<f32>(v_114, v_114, v_114, v_114).y, 0.0f, 1.0f);
  let v_115 = ((-(r4.xyxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_115.xy, r4.zw);
  let v_116 = (r4.xy * r4.xy);
  r4 = vec4<f32>(r4.xy, v_116.xy);
  let v_117 = (r4.zw * r4.zw);
  r4 = vec4<f32>(r4.xy, v_117.xy);
  let v_118 = (r4.xy * r4.zw);
  r4 = vec4<f32>(v_118.xy, r4.zw);
  r3.z = ((-(cb12_12.tint_symbol_4[0u].yyyy)).z + 1.0f);
  let v_119 = fma(cb12_12.tint_symbol_4[0u].yy, r4.xy, r3.zz);
  r4 = vec4<f32>(v_119.xy, r4.zw);
  let v_120 = (r3.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r3 = vec4<f32>(r3.xy, v_120.xy);
  r3.z = (r3.z * 0.125f);
  r4.x = fma((-(r1.xxxx)).x, r4.x, 1.0f);
  r4.z = dot(r2.xyw, r5.xyz);
  r4.z = clamp(((r4.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r4.z = log2(r4.z);
  r3.w = (r3.w * r4.z);
  r3.w = exp2(r3.w);
  r3.w = (r4.y * r3.w);
  r3.z = (r3.z * r3.w);
  r1.x = (r1.x * r3.z);
  r1.x = (r3.y * r1.x);
  r3.y = (r3.y * r4.x);
  let v_121 = fma(r0.xyz, r3.yyy, r1.xxx);
  r3 = vec4<f32>(r3.x, v_121.xyz);
  let v_122 = (r3.yzw * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(r3.x, v_122.xyz);
  r1.x = fma(r2.z, r1.z, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_123 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(r4.x, v_123.xyz);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_124 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_124.xyz, r5.w);
  let v_125 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_125.xyz, r5.w);
  let v_126 = fma(r4.yzw, r1.zzz, r5.xyz);
  r4 = vec4<f32>(r4.x, v_126.xyz);
  let v_127 = (r1.www * r4.yzw);
  r4 = vec4<f32>(r4.x, v_127.xyz);
  let v_128 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(v_128.x, r1.y, v_128.yz);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_129 = dot(r5.xyz, r2.xyw);
  r2.x = clamp(vec4<f32>(v_129, v_129, v_129, v_129).x, 0.0f, 1.0f);
  let v_130 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.xxx, r1.xzw);
  r1 = vec4<f32>(v_130.x, r1.y, v_130.yz);
  let v_131 = fma(r1.xzw, r1.yyy, r4.yzw);
  r1 = vec4<f32>(v_131.xyz, r1.w);
  let v_132 = (r4.xxx * r1.xyz);
  r1 = vec4<f32>(v_132.xyz, r1.w);
  let v_133 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_133.xyz, r0.w);
  let v_134 = fma(r3.yzw, r3.xxx, r0.xyz);
  r0 = vec4<f32>(v_134.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_135 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_135.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_136 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_136 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_137 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_137.xyz, r2.w);
    let v_138 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_138, v_138, v_138, v_138).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_139 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_139, v_139, v_139, v_139).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_140 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_140.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_141 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_141.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_142 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_142.xyz, r2.w);
    let v_143 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_143.xyz, r2.w);
    let v_144 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_144.xyz, r3.w);
    let v_145 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_145.xyz, r2.w);
    let v_146 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_147 = (r2.xyz + v_146.xyz);
    r2 = vec4<f32>(v_147.xyz, r2.w);
    let v_148 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_148.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_149 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_149.xyz, r3.w);
    let v_150 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_150.xy, r1.z, v_150.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_151 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_151.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_152 = -(r0.xyxz);
    let v_153 = fma(r1.xyw, r0.www, v_152.xyw);
    r1 = vec4<f32>(v_153.xy, r1.z, v_153.z);
    let v_154 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_154.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_155 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_155.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_156 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_156 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_157 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_157.xyz, r3.w);
    let v_158 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_158, v_158, v_158, v_158).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_159 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_159, v_159, v_159, v_159).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_160 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_160.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_161 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_161.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_162 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_162.xyz, r3.w);
    let v_163 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_163.xyz, r3.w);
    let v_164 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_164.xyz, r4.w);
    let v_165 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_165.xyz, r3.w);
    let v_166 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_167 = (r3.xyz + v_166.xyz);
    r3 = vec4<f32>(v_167.xyz, r3.w);
    let v_168 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_168.x, r2.y, v_168.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_169 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_169.xyz, r3.w);
    let v_170 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_170.x, r2.y, v_170.yz);
    let v_171 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_171.x, r2.y, v_171.yz);
    let v_172 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_172.xyz, r1.w);
  }
  let v_173 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_173.xyz, o0.w);
}

fn v_3(v_174 : bool) {
  if (v_174) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_175 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_175);
  return o0;
}
