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

var<private> r25 : vec4<f32>;

var<private> r26 : vec4<f32>;

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

struct cb3_struct {
  tint_symbol_4 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

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
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_4 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_5 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  let v_6 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
  let v_8 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_9 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r3 = textureSample(t3, s3, v1.xy.xyxx.xy);
  let v_10 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_10.xy, r3.zw);
  r1.x = dot(r3.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  r1.y = dot(v3.xyz, v3.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_11 = (r1.yyy * v3.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  r1.y = dot((-(r3.xyzx)).xyz, r2.xyz);
  r1.y = (r1.y + r1.y);
  let v_12 = -(r1.yyyy);
  let v_13 = -(r3.xyzx);
  let v_14 = fma(r2.xyz, v_12.xyz, v_13.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_15 = fma(r3.xz, r1.yy, vec2<f32>(1.0f));
  r3 = vec4<f32>(v_15.xy, r3.zw);
  let v_16 = (r3.xy * vec2<f32>(-0.5f));
  r3 = vec4<f32>(v_16.xy, r3.zw);
  r4 = textureSample(t4, s4, r3.xyxx.xy);
  let v_17 = (r4.xyz * cb12_12.tint_symbol_4[2u].xxx);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  r0.w = (r0.w * v0.w);
  let v_18 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r4 = vec4<f32>(v_18.xy, r4.zw);
  let v_19 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = -(v6.xyzx);
  let v_21 = (v_20.xyz + cb1_1.tint_symbol[15u].xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  r1.y = dot(r5.xyz, r5.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_22 = (r1.yyy * r5.xyz);
  r6 = vec4<f32>(v_22.xyz, r6.w);
  let v_23 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_24 = fma(r5.xyz, r1.yyy, v_23.xyz);
  r7 = vec4<f32>(v_24.xyz, r7.w);
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_25 = (r2.www * r7.xyz);
  r7 = vec4<f32>(v_25.xyz, r7.w);
  let v_26 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_26.xy, r4.zw);
  r2.w = fma(r3.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r2.w = max(r2.w, 0.0f);
  let v_27 = -(r2.wwww);
  r3.w = fma(r3.w, cb12_12.tint_symbol_4[0u].y, v_27.w);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.w, 3.0f, r2.w);
  r3.w = dot(r5.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_28 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r8 = vec4<f32>(v_28.xyz, r8.w);
  let v_29 = (r8.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r9 = vec4<f32>(v_29.xyz, r9.w);
  let v_30 = fma(r8.xxx, cb6_6.tint_symbol_5[0u].xyz, r9.xyz);
  r9 = vec4<f32>(v_30.xyz, r9.w);
  let v_31 = fma(r8.zzz, cb6_6.tint_symbol_5[2u].xyz, r9.xyz);
  r9 = vec4<f32>(v_31.xyz, r9.w);
  let v_32 = fma(r9.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r10 = vec4<f32>(v_32.xyz, r10.w);
  let v_33 = &(x0[0u]);
  let v_34 = r10;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = fma(r9.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r11 = vec4<f32>(v_35.xyz, r11.w);
  let v_36 = &(x0[1u]);
  let v_37 = r11;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r9.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r12 = vec4<f32>(v_38.xyz, r12.w);
  let v_39 = &(x0[2u]);
  let v_40 = r12;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = fma(r9.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r9 = vec4<f32>(v_41.xyz, r9.w);
  let v_42 = &(x0[3u]);
  let v_43 = r9;
  *(v_42) = vec4<f32>(v_43.xyz, (*(v_42)).w);
  let v_44 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_45 = r13;
  r13 = vec4<f32>(v_45.x, v_44.x, v_45.z, v_44.y);
  r4.z = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).z, 1.5f, 1.0f);
  r4.z = (r4.z * 0.5f);
  let v_46 = abs(r12.yyyy);
  r4.w = max(v_46.w, abs(r12.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r4.z)));
  let v_47 = (bitcast<u32>(r4.w) != 0u);
  let v_48 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_48, v_47);
  let v_49 = abs(r11.yyyy);
  r5.w = max(v_49.w, abs(r11.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.z)));
  let v_50 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_50 != 0u));
  let v_51 = abs(r10.yyyy);
  r5.w = max(v_51.w, abs(r10.xxxx).w);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.z)));
  let v_52 = bitcast<u32>(r4.z);
  r4.z = select(r4.w, 0.0f, (v_52 != 0u));
  let v_53 = x0[bitcast<i32>(r4.z)];
  r10 = vec4<f32>(v_53.xyz, r10.w);
  r4.z = f32(bitcast<i32>(r4.z));
  r4.w = (r4.z + 0.5f);
  r4.w = (r4.w * 0.25f);
  r11 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.zzzz)));
  r11 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r11) & vec4<u32>(1065353216u)));
  r4.z = dot(r11, cb6_6.tint_symbol_5[12u]);
  r5.w = dot(r11, cb6_6.tint_symbol_5[13u]);
  r11.x = (r10.x + 0.5f);
  r11.y = fma(r10.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r4.z == 0.0f))));
  r4.z = ((-(r4.zzzz)).z + r10.z);
  let v_54 = dpdx(r11.xyy);
  r12 = vec4<f32>(v_54.xy, r12.z, v_54.z);
  r12.z = dpdx(r4.z);
  let v_55 = dpdy(r11.yxy);
  r14 = vec4<f32>(v_55.xyz, r14.w);
  r14.w = dpdy(r4.z);
  let v_56 = (r12.yw * r14.yw);
  r9 = vec4<f32>(r9.xy, v_56.xy);
  let v_57 = -(r9.zwzz);
  let v_58 = fma(r12.xz, r14.xz, v_57.xy);
  r15 = vec4<f32>(v_58.xy, r15.zw);
  r6.w = (1.0f / r15.x);
  r7.w = (r12.z * r14.y);
  let v_59 = -(r7.wwww);
  r15.z = fma(r12.x, r14.w, v_59.z);
  let v_60 = (r6.ww * r15.yz);
  r9 = vec4<f32>(r9.xy, v_60.xy);
  let v_61 = max(r9.zw, vec2<f32>());
  r9 = vec4<f32>(r9.xy, v_61.xy);
  let v_62 = min(r9.zw, vec2<f32>(0.5f));
  r9 = vec4<f32>(r9.xy, v_62.xy);
  r4.z = fma((-(r5.wwww)).z, r9.z, r4.z);
  r4.z = fma((-(r5.wwww)).z, r9.w, r4.z);
  let v_63 = bitcast<u32>(r4.w);
  let v_64 = r4.z;
  r13.z = select(r10.z, v_64, (v_63 != 0u));
  r11.z = 0.0f;
  let v_65 = (r11.xyz + r13.ywz);
  r10 = vec4<f32>(v_65.xyz, r10.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r13 = vec4<f32>(v_66.xy, r13.zw);
  let v_67 = (r11.xyz + r13.xyz);
  r12 = vec4<f32>(v_67.xyz, r12.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r13 = vec4<f32>(v_68.xy, r13.zw);
  let v_69 = (r11.xyz + r13.xyz);
  r14 = vec4<f32>(v_69.xyz, r14.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r13 = vec4<f32>(v_70.xy, r13.zw);
  let v_71 = (r11.xyz + r13.xyz);
  r15 = vec4<f32>(v_71.xyz, r15.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r13 = vec4<f32>(v_72.xy, r13.zw);
  let v_73 = (r11.xyz + r13.xyz);
  r16 = vec4<f32>(v_73.xyz, r16.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r13 = vec4<f32>(v_74.xy, r13.zw);
  let v_75 = (r11.xyz + r13.xyz);
  r17 = vec4<f32>(v_75.xyz, r17.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r13 = vec4<f32>(v_76.xy, r13.zw);
  let v_77 = (r11.xyz + r13.xyz);
  r18 = vec4<f32>(v_77.xyz, r18.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r13 = vec4<f32>(v_78.xy, r13.zw);
  let v_79 = (r11.xyz + r13.xyz);
  r19 = vec4<f32>(v_79.xyz, r19.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r13 = vec4<f32>(v_80.xy, r13.zw);
  let v_81 = (r11.xyz + r13.xyz);
  r20 = vec4<f32>(v_81.xyz, r20.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r13 = vec4<f32>(v_82.xy, r13.zw);
  let v_83 = (r11.xyz + r13.xyz);
  r21 = vec4<f32>(v_83.xyz, r21.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r13 = vec4<f32>(v_84.xy, r13.zw);
  let v_85 = (r11.xyz + r13.xyz);
  r22 = vec4<f32>(v_85.xyz, r22.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r13 = vec4<f32>(v_86.xy, r13.zw);
  let v_87 = (r11.xyz + r13.xyz);
  r23 = vec4<f32>(v_87.xyz, r23.w);
  let v_88 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r13 = vec4<f32>(v_88.xy, r13.zw);
  let v_89 = (r11.xyz + r13.xyz);
  r24 = vec4<f32>(v_89.xyz, r24.w);
  let v_90 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r13 = vec4<f32>(v_90.xy, r13.zw);
  let v_91 = (r11.xyz + r13.xyz);
  r25 = vec4<f32>(v_91.xyz, r25.w);
  let v_92 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r13 = vec4<f32>(v_92.xy, r13.zw);
  let v_93 = (r11.xyz + r13.xyz);
  r26 = vec4<f32>(v_93.xyz, r26.w);
  let v_94 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r13 = vec4<f32>(v_94.xy, r13.zw);
  let v_95 = (r11.xyz + r13.xyz);
  r11 = vec4<f32>(v_95.xyz, r11.w);
  let v_96 = r10.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_96.xy, r10.z);
  let v_97 = r12.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_97.xy, r12.z);
  let v_98 = r14.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_98.xy, r14.z);
  let v_99 = r15.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_99.xy, r15.z);
  let v_100 = r16.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_100.xy, r16.z);
  let v_101 = r17.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_101.xy, r17.z);
  let v_102 = r18.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_102.xy, r18.z);
  let v_103 = r19.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_103.xy, r19.z);
  let v_104 = r20.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_104.xy, r20.z);
  let v_105 = r21.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_105.xy, r21.z);
  let v_106 = r22.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_106.xy, r22.z);
  let v_107 = r23.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_107.xy, r23.z);
  let v_108 = r24.xyxx;
  r14.x = textureSampleCompareLevel(t15, s15, v_108.xy, r24.z);
  let v_109 = r25.xyxx;
  r14.y = textureSampleCompareLevel(t15, s15, v_109.xy, r25.z);
  let v_110 = r26.xyxx;
  r14.z = textureSampleCompareLevel(t15, s15, v_110.xy, r26.z);
  let v_111 = r11.xyxx;
  r14.w = textureSampleCompareLevel(t15, s15, v_111.xy, r11.z);
  r10 = (r10 + r12);
  r10 = (r13 + r10);
  r10 = (r14 + r10);
  r4.z = dot(r10, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_112 = abs(r9.yyyy);
  r4.w = max(v_112.w, abs(r9.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r4.w * r3.w);
  r3.w = fma(r4.z, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.z = clamp(fma(v6.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).z, 0.0f, 1.0f);
  r4.z = sqrt(r4.z);
  r4.z = (r4.z * cb6_6.tint_symbol_5[3u].z);
  let v_113 = -(r3.wwww);
  r3.w = fma(r4.z, v_113.w, r3.w);
  let v_114 = dot(r2.xyz, v_23.xyz);
  r4.z = clamp(vec4<f32>(v_114, v_114, v_114, v_114).z, 0.0f, 1.0f);
  let v_115 = dot(r6.xyz, r2.xyz);
  r9.x = clamp(vec4<f32>(v_115, v_115, v_115, v_115).x, 0.0f, 1.0f);
  let v_116 = dot(r7.xyz, v_23.xyz);
  r9.y = clamp(vec4<f32>(v_116, v_116, v_116, v_116).y, 0.0f, 1.0f);
  let v_117 = ((-(r9.xyxx)).xy + vec2<f32>(1.0f));
  r9 = vec4<f32>(v_117.xy, r9.zw);
  let v_118 = (r9.xy * r9.xy);
  r9 = vec4<f32>(r9.xy, v_118.xy);
  let v_119 = (r9.zw * r9.zw);
  r9 = vec4<f32>(r9.xy, v_119.xy);
  let v_120 = (r9.xy * r9.zw);
  r9 = vec4<f32>(v_120.xy, r9.zw);
  r4.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_121 = fma(cb12_12.tint_symbol_4[0u].xx, r9.xy, r4.ww);
  r9 = vec4<f32>(v_121.xy, r9.zw);
  let v_122 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r9 = vec4<f32>(r9.xy, v_122.xy);
  r5.w = (r9.z * 0.125f);
  r6.w = fma((-(r1.xxxx)).w, r9.x, 1.0f);
  r7.x = dot(r2.xyz, r7.xyz);
  r7.x = clamp(((r7.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r7.x = log2(r7.x);
  r7.x = (r7.x * r9.w);
  r7.x = exp2(r7.x);
  r7.x = (r9.y * r7.x);
  r7.x = (r5.w * r7.x);
  r7.x = (r1.x * r7.x);
  r7.x = (r4.z * r7.x);
  r4.z = (r4.z * r6.w);
  let v_123 = fma(r0.xyz, r4.zzz, r7.xxx);
  r7 = vec4<f32>(v_123.xyz, r7.w);
  let v_124 = (r7.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r7 = vec4<f32>(v_124.xyz, r7.w);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.z) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_125 = (v_20.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_125.xyz, r9.w);
    let v_126 = (v6.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_126.xyz, r10.w);
    r8.w = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r8.w = (r8.w * cb3_3.tint_symbol_2[19u].w);
    let v_127 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.www, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_127.xyz, r10.w);
    let v_128 = (r10.xyz + v_20.xyz);
    r10 = vec4<f32>(v_128.xyz, r10.w);
    let v_129 = bitcast<vec3<u32>>(r7.www);
    let v_130 = r9.xyz;
    let v_131 = select(r10.xyz, v_130, (v_129 != vec3<u32>()));
    r9 = vec4<f32>(v_131.xyz, r9.w);
    r7.w = dot(r9.xyz, r9.xyz);
    let v_132 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_132.xyz, r9.w);
    r8.w = dot(r9.xyz, r9.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_133 = (r8.www * r9.xyz);
    r9 = vec4<f32>(v_133.xyz, r9.w);
    r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r8.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[11u].w);
    r7.w = (r7.w / r8.w);
    let v_134 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.w = dot(r9.xyz, v_134.xyz);
    r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_135 = dot(r9.xyz, r2.xyz);
    r10.x = clamp(vec4<f32>(v_135, v_135, v_135, v_135).x, 0.0f, 1.0f);
    r8.w = (r8.w * r10.x);
    r10.x = (r7.w * r8.w);
    let v_136 = (r10.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_136.xyz, r10.w);
    let v_137 = (r0.xyz * r10.xyz);
    r10 = vec4<f32>(v_137.xyz, r10.w);
    let v_138 = fma(r5.xyz, r1.yyy, r9.xyz);
    r9 = vec4<f32>(v_138.xyz, r9.w);
    r10.w = dot(r9.xyz, r9.xyz);
    r10.w = inverseSqrt(r10.w);
    let v_139 = (r9.xyz * r10.www);
    r9 = vec4<f32>(v_139.xyz, r9.w);
    let v_140 = dot(r9.xyz, r6.xyz);
    r10.w = clamp(vec4<f32>(v_140, v_140, v_140, v_140).w, 0.0f, 1.0f);
    r10.w = ((-(r10.wwww)).w + 1.0f);
    r11.x = (r10.w * r10.w);
    r11.x = (r11.x * r11.x);
    r10.w = (r10.w * r11.x);
    r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
    let v_141 = dot(r9.xyz, r2.xyz);
    r9.x = clamp(vec4<f32>(v_141, v_141, v_141, v_141).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r9.x * r9.w);
    r9.x = exp2(r9.x);
    r9.x = (r9.x * r10.w);
    r8.w = (r8.w * r9.x);
    r7.w = (r7.w * r8.w);
    r7.w = (r5.w * r7.w);
    let v_142 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_142.xyz, r9.w);
  }
  r7.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.w) != 0u)) {
    r8.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.w = bitcast<f32>((bitcast<u32>(r4.z) | bitcast<u32>(r7.w)));
    let v_143 = bitcast<u32>(r8.w);
    let v_144 = r7.w;
    r4.z = select(r4.z, v_144, (v_143 != 0u));
    if ((bitcast<u32>(r4.z) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_145 = (v_20.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_145.xyz, r11.w);
      let v_146 = (v6.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_146.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[20u].w);
      let v_147 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.www, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_147.xyz, r12.w);
      let v_148 = (r12.xyz + v_20.xyz);
      r12 = vec4<f32>(v_148.xyz, r12.w);
      let v_149 = bitcast<vec3<u32>>(r7.www);
      let v_150 = r11.xyz;
      let v_151 = select(r12.xyz, v_150, (v_149 != vec3<u32>()));
      r11 = vec4<f32>(v_151.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      let v_152 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_152.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_153 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_153.xyz, r11.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[12u].w);
      r7.w = (r7.w / r8.w);
      let v_154 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.w = dot(r11.xyz, v_154.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_155 = dot(r11.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_155, v_155, v_155, v_155).w, 0.0f, 1.0f);
      r8.w = (r8.w * r10.w);
      r10.w = (r7.w * r8.w);
      let v_156 = (r10.www * cb3_3.tint_symbol_2[20u].xyz);
      r12 = vec4<f32>(v_156.xyz, r12.w);
      let v_157 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_157.xyz, r10.w);
      let v_158 = fma(r5.xyz, r1.yyy, r11.xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_159 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      let v_160 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_160, v_160, v_160, v_160).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_161 = dot(r11.xyz, r2.xyz);
      r11.x = clamp(vec4<f32>(v_161, v_161, v_161, v_161).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r9.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r7.w = (r5.w * r7.w);
      let v_162 = fma(r7.www, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_162.xyz, r9.w);
    }
  } else {
    r4.z = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r4.z) != 0u)) {
    r4.z = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.z = bitcast<f32>((bitcast<u32>(r4.z) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r4.z) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_163 = (v_20.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_163.xyz, r11.w);
      let v_164 = (v6.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_164.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[21u].w);
      let v_165 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.www, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_165.xyz, r12.w);
      let v_166 = (r12.xyz + v_20.xyz);
      r12 = vec4<f32>(v_166.xyz, r12.w);
      let v_167 = bitcast<vec3<u32>>(r7.www);
      let v_168 = r11.xyz;
      let v_169 = select(r12.xyz, v_168, (v_167 != vec3<u32>()));
      r11 = vec4<f32>(v_169.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      let v_170 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_170.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_171 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_171.xyz, r11.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[13u].w);
      r7.w = (r7.w / r8.w);
      let v_172 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.w = dot(r11.xyz, v_172.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_173 = dot(r11.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_173, v_173, v_173, v_173).w, 0.0f, 1.0f);
      r8.w = (r8.w * r10.w);
      r10.w = (r7.w * r8.w);
      let v_174 = (r10.www * cb3_3.tint_symbol_2[21u].xyz);
      r12 = vec4<f32>(v_174.xyz, r12.w);
      let v_175 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      let v_176 = fma(r5.xyz, r1.yyy, r11.xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_177 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      let v_178 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_178, v_178, v_178, v_178).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_179 = dot(r11.xyz, r2.xyz);
      r11.x = clamp(vec4<f32>(v_179, v_179, v_179, v_179).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r9.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r7.w = (r5.w * r7.w);
      let v_180 = fma(r7.www, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_180.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.z) != 0u)) {
    r4.z = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.z = bitcast<f32>((bitcast<u32>(r4.z) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r4.z) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_181 = (v_20.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      let v_182 = (v6.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_182.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[22u].w);
      let v_183 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.www, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_183.xyz, r12.w);
      let v_184 = (r12.xyz + v_20.xyz);
      r12 = vec4<f32>(v_184.xyz, r12.w);
      let v_185 = bitcast<vec3<u32>>(r7.www);
      let v_186 = r11.xyz;
      let v_187 = select(r12.xyz, v_186, (v_185 != vec3<u32>()));
      r11 = vec4<f32>(v_187.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      let v_188 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_188.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_189 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_189.xyz, r11.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[14u].w);
      r7.w = (r7.w / r8.w);
      let v_190 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.w = dot(r11.xyz, v_190.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_191 = dot(r11.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_191, v_191, v_191, v_191).w, 0.0f, 1.0f);
      r8.w = (r8.w * r10.w);
      r10.w = (r7.w * r8.w);
      let v_192 = (r10.www * cb3_3.tint_symbol_2[22u].xyz);
      r12 = vec4<f32>(v_192.xyz, r12.w);
      let v_193 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_193.xyz, r10.w);
      let v_194 = fma(r5.xyz, r1.yyy, r11.xyz);
      r11 = vec4<f32>(v_194.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_195 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      let v_196 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_196, v_196, v_196, v_196).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_197 = dot(r11.xyz, r2.xyz);
      r11.x = clamp(vec4<f32>(v_197, v_197, v_197, v_197).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r9.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r7.w = (r5.w * r7.w);
      let v_198 = fma(r7.www, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_198.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.z) != 0u)) {
    r4.z = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.z = bitcast<f32>((bitcast<u32>(r4.z) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r4.z) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_199 = (v_20.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_199.xyz, r11.w);
      let v_200 = (v6.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r12 = vec4<f32>(v_200.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[23u].w);
      let v_201 = fma(cb3_3.tint_symbol_2[15u].xyz, r8.www, cb3_3.tint_symbol_2[7u].xyz);
      r12 = vec4<f32>(v_201.xyz, r12.w);
      let v_202 = (r12.xyz + v_20.xyz);
      r12 = vec4<f32>(v_202.xyz, r12.w);
      let v_203 = bitcast<vec3<u32>>(r7.www);
      let v_204 = r11.xyz;
      let v_205 = select(r12.xyz, v_204, (v_203 != vec3<u32>()));
      r11 = vec4<f32>(v_205.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      let v_206 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_206.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_207 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_207.xyz, r11.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[15u].w);
      r7.w = (r7.w / r8.w);
      let v_208 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r8.w = dot(r11.xyz, v_208.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_209 = dot(r11.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_209, v_209, v_209, v_209).w, 0.0f, 1.0f);
      r8.w = (r8.w * r10.w);
      r10.w = (r7.w * r8.w);
      let v_210 = (r10.www * cb3_3.tint_symbol_2[23u].xyz);
      r12 = vec4<f32>(v_210.xyz, r12.w);
      let v_211 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_211.xyz, r10.w);
      let v_212 = fma(r5.xyz, r1.yyy, r11.xyz);
      r11 = vec4<f32>(v_212.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_213 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_213.xyz, r11.w);
      let v_214 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_214, v_214, v_214, v_214).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_215 = dot(r11.xyz, r2.xyz);
      r11.x = clamp(vec4<f32>(v_215, v_215, v_215, v_215).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r9.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r7.w = (r5.w * r7.w);
      let v_216 = fma(r7.www, cb3_3.tint_symbol_2[23u].xyz, r9.xyz);
      r9 = vec4<f32>(v_216.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.z) != 0u)) {
    r4.z = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.z = bitcast<f32>((bitcast<u32>(r4.z) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r4.z) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_217 = (v_20.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_217.xyz, r11.w);
      let v_218 = (v6.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r12 = vec4<f32>(v_218.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[24u].w);
      let v_219 = fma(cb3_3.tint_symbol_2[16u].xyz, r8.www, cb3_3.tint_symbol_2[8u].xyz);
      r12 = vec4<f32>(v_219.xyz, r12.w);
      let v_220 = (r12.xyz + v_20.xyz);
      r12 = vec4<f32>(v_220.xyz, r12.w);
      let v_221 = bitcast<vec3<u32>>(r7.www);
      let v_222 = r11.xyz;
      let v_223 = select(r12.xyz, v_222, (v_221 != vec3<u32>()));
      r11 = vec4<f32>(v_223.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      let v_224 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_224.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_225 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_225.xyz, r11.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[16u].w);
      r7.w = (r7.w / r8.w);
      let v_226 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r8.w = dot(r11.xyz, v_226.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_227 = dot(r11.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_227, v_227, v_227, v_227).w, 0.0f, 1.0f);
      r8.w = (r8.w * r10.w);
      r10.w = (r7.w * r8.w);
      let v_228 = (r10.www * cb3_3.tint_symbol_2[24u].xyz);
      r12 = vec4<f32>(v_228.xyz, r12.w);
      let v_229 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_229.xyz, r10.w);
      let v_230 = fma(r5.xyz, r1.yyy, r11.xyz);
      r11 = vec4<f32>(v_230.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_231 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_231.xyz, r11.w);
      let v_232 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_232, v_232, v_232, v_232).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_233 = dot(r11.xyz, r2.xyz);
      r11.x = clamp(vec4<f32>(v_233, v_233, v_233, v_233).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r9.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r7.w = (r5.w * r7.w);
      let v_234 = fma(r7.www, cb3_3.tint_symbol_2[24u].xyz, r9.xyz);
      r9 = vec4<f32>(v_234.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.z) != 0u)) {
    r4.z = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.z = bitcast<f32>((bitcast<u32>(r4.z) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r4.z) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_235 = (v_20.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_235.xyz, r11.w);
      let v_236 = (v6.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r12 = vec4<f32>(v_236.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[25u].w);
      let v_237 = fma(cb3_3.tint_symbol_2[17u].xyz, r8.www, cb3_3.tint_symbol_2[9u].xyz);
      r12 = vec4<f32>(v_237.xyz, r12.w);
      let v_238 = (r12.xyz + v_20.xyz);
      r12 = vec4<f32>(v_238.xyz, r12.w);
      let v_239 = bitcast<vec3<u32>>(r7.www);
      let v_240 = r11.xyz;
      let v_241 = select(r12.xyz, v_240, (v_239 != vec3<u32>()));
      r11 = vec4<f32>(v_241.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      let v_242 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_242.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_243 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_243.xyz, r11.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[17u].w);
      r7.w = (r7.w / r8.w);
      let v_244 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r8.w = dot(r11.xyz, v_244.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_245 = dot(r11.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_245, v_245, v_245, v_245).w, 0.0f, 1.0f);
      r8.w = (r8.w * r10.w);
      r10.w = (r7.w * r8.w);
      let v_246 = (r10.www * cb3_3.tint_symbol_2[25u].xyz);
      r12 = vec4<f32>(v_246.xyz, r12.w);
      let v_247 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_247.xyz, r10.w);
      let v_248 = fma(r5.xyz, r1.yyy, r11.xyz);
      r11 = vec4<f32>(v_248.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_249 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_249.xyz, r11.w);
      let v_250 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_250, v_250, v_250, v_250).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_251 = dot(r11.xyz, r2.xyz);
      r11.x = clamp(vec4<f32>(v_251, v_251, v_251, v_251).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r9.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r7.w = (r5.w * r7.w);
      let v_252 = fma(r7.www, cb3_3.tint_symbol_2[25u].xyz, r9.xyz);
      r9 = vec4<f32>(v_252.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.z) != 0u)) {
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.z = bitcast<f32>((bitcast<u32>(r4.z) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r4.z) != 0u)) {
    } else {
      r4.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_253 = (v_20.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_253.xyz, r11.w);
      let v_254 = (v6.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r12 = vec4<f32>(v_254.xyz, r12.w);
      r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[26u].w);
      let v_255 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.www, cb3_3.tint_symbol_2[10u].xyz);
      r12 = vec4<f32>(v_255.xyz, r12.w);
      let v_256 = (r12.xyz + v_20.xyz);
      r12 = vec4<f32>(v_256.xyz, r12.w);
      let v_257 = bitcast<vec3<u32>>(r4.zzz);
      let v_258 = r11.xyz;
      let v_259 = select(r12.xyz, v_258, (v_257 != vec3<u32>()));
      r11 = vec4<f32>(v_259.xyz, r11.w);
      r4.z = dot(r11.xyz, r11.xyz);
      let v_260 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_260.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_261 = (r7.www * r11.xyz);
      r11 = vec4<f32>(v_261.xyz, r11.w);
      r4.z = clamp(fma(-(r4.zzzz), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r4.z, cb3_3.tint_symbol_2[18u].w);
      r4.z = (r4.z / r7.w);
      let v_262 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.w = dot(r11.xyz, v_262.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_263 = dot(r11.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_263, v_263, v_263, v_263).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r4.z * r7.w);
      let v_264 = (r8.www * cb3_3.tint_symbol_2[26u].xyz);
      r12 = vec4<f32>(v_264.xyz, r12.w);
      let v_265 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_265.xyz, r10.w);
      let v_266 = fma(r5.xyz, r1.yyy, r11.xyz);
      r5 = vec4<f32>(v_266.xyz, r5.w);
      r1.y = dot(r5.xyz, r5.xyz);
      r1.y = inverseSqrt(r1.y);
      let v_267 = (r1.yyy * r5.xyz);
      r5 = vec4<f32>(v_267.xyz, r5.w);
      let v_268 = dot(r5.xyz, r6.xyz);
      r1.y = clamp(vec4<f32>(v_268, v_268, v_268, v_268).y, 0.0f, 1.0f);
      r1.y = ((-(r1.yyyy)).y + 1.0f);
      r6.x = (r1.y * r1.y);
      r6.x = (r6.x * r6.x);
      r1.y = (r1.y * r6.x);
      r1.y = fma(cb12_12.tint_symbol_4[0u].x, r1.y, r4.w);
      let v_269 = dot(r5.xyz, r2.xyz);
      r4.w = clamp(vec4<f32>(v_269, v_269, v_269, v_269).w, 0.0f, 1.0f);
      r4.w = log2(r4.w);
      r4.w = (r4.w * r9.w);
      r4.w = exp2(r4.w);
      r1.y = (r1.y * r4.w);
      r1.y = (r7.w * r1.y);
      r1.y = (r4.z * r1.y);
      r1.y = (r5.w * r1.y);
      let v_270 = fma(r1.yyy, cb3_3.tint_symbol_2[26u].xyz, r9.xyz);
      r9 = vec4<f32>(v_270.xyz, r9.w);
    }
  }
  r1.y = (r6.w * r6.w);
  r1.x = (r1.x * r1.x);
  let v_271 = (r9.xyz * r1.xxx);
  r5 = vec4<f32>(v_271.xyz, r5.w);
  let v_272 = fma(r1.yyy, r10.xyz, r5.xyz);
  r5 = vec4<f32>(v_272.xyz, r5.w);
  let v_273 = fma(r7.xyz, r3.www, r5.xyz);
  r5 = vec4<f32>(v_273.xyz, r5.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_274 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r1 = vec4<f32>(r1.x, v_274.xyz);
  r3.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_275 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_275.xyz, r6.w);
  let v_276 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_276.xyz, r6.w);
  let v_277 = fma(r1.yzw, r3.www, r6.xyz);
  r1 = vec4<f32>(r1.x, v_277.xyz);
  let v_278 = (r4.yyy * r1.yzw);
  r1 = vec4<f32>(r1.x, v_278.xyz);
  let v_279 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_279.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_280 = dot(r7.xyz, r2.xyz);
  r1.x = clamp(vec4<f32>(v_280, v_280, v_280, v_280).x, 0.0f, 1.0f);
  let v_281 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r2 = vec4<f32>(v_281.xyz, r2.w);
  let v_282 = fma(r2.xyz, r4.xxx, r1.yzw);
  r1 = vec4<f32>(v_282.xyz, r1.w);
  let v_283 = (r6.www * r1.xyz);
  r1 = vec4<f32>(v_283.xyz, r1.w);
  let v_284 = fma(r1.xyz, r0.xyz, r5.xyz);
  r0 = vec4<f32>(v_284.xyz, r0.w);
  r1.x = ((-(r6.wwww)).x + 1.0f);
  r1.y = max(r4.y, r4.x);
  let v_285 = (r1.yyy * r3.xyz);
  r1 = vec4<f32>(r1.x, v_285.xyz);
  r2.x = clamp(((r2.wwww * vec4<f32>(0.00177619897294789553f))).x, 0.0f, 1.0f);
  let v_286 = (r1.yzw * r2.xxx);
  r2 = vec4<f32>(v_286.xyz, r2.w);
  let v_287 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_287.xyz, r2.w);
  let v_288 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_288.xyz);
  let v_289 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_289.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r8.xyz, r8.xyz);
    r1.x = sqrt(r0.w);
    let v_290 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_290.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r8.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_291 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_291 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_292 = (r0.www * r8.xyz);
    r2 = vec4<f32>(v_292.xyz, r2.w);
    let v_293 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_293, v_293, v_293, v_293).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_294 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_294, v_294, v_294, v_294).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_295 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_295.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_296 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_296.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_297 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_297.xyz, r2.w);
    let v_298 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_298.xyz, r2.w);
    let v_299 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_299.xyz, r3.w);
    let v_300 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_300.xyz, r2.w);
    let v_301 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_302 = (r2.xyz + v_301.xyz);
    r2 = vec4<f32>(v_302.xyz, r2.w);
    let v_303 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_303.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_304 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_304.xyz, r3.w);
    let v_305 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_305.xy, r1.z, v_305.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_306 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_306.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_307 = -(r0.xyxz);
    let v_308 = fma(r1.xyw, r0.www, v_307.xyw);
    r1 = vec4<f32>(v_308.xy, r1.z, v_308.z);
    let v_309 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_309.xyz, r1.w);
  } else {
    r0.w = dot(r8.xyz, r8.xyz);
    r1.w = sqrt(r0.w);
    let v_310 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_310.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r8.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_311 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_311 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_312 = (r0.www * r8.xyz);
    r3 = vec4<f32>(v_312.xyz, r3.w);
    let v_313 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_313, v_313, v_313, v_313).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_314 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_314, v_314, v_314, v_314).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_315 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_315.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_316 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_316.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_317 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_317.xyz, r3.w);
    let v_318 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_318.xyz, r3.w);
    let v_319 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_319.xyz, r4.w);
    let v_320 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_320.xyz, r3.w);
    let v_321 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_322 = (r3.xyz + v_321.xyz);
    r3 = vec4<f32>(v_322.xyz, r3.w);
    let v_323 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_323.x, r2.y, v_323.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_324 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_324.xyz, r3.w);
    let v_325 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_325.x, r2.y, v_325.yz);
    let v_326 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_326.x, r2.y, v_326.yz);
    let v_327 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_327.xyz, r1.w);
  }
  let v_328 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_328.xyz, o0.w);
}

fn v_3(v_329 : bool) {
  if (v_329) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_330 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_330);
  return o0;
}
