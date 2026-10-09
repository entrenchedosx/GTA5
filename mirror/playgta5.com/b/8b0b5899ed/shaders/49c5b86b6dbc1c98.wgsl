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
  tint_symbol_7 : array<vec4<u32>, 4u>,
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
  r0.x = ((-(v0.wwww)).x + 1.0f);
  r1 = textureSample(t5, s5, v2.zwzz.xy);
  r2 = textureSample(t0, s0, v2.xyxx.xy);
  r3 = textureSample(t7, s7, v2.xyxx.xy);
  let v_3 = (v2.xy * cb11_11.tint_symbol_5[0u].zw);
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r4 = textureSample(t3, s3, r0.yzyy.xy);
  let v_5 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r4 = vec4<f32>(v_5.xy, r4.zw);
  let v_6 = (r0.yz * vec2<f32>(3.1700000762939453125f));
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r5 = textureSample(t3, s3, r0.yzyy.xy);
  let v_8 = fma(r5.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = (r0.yz * vec2<f32>(0.5f));
  let v_11 = r0;
  r0 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  let v_12 = fma(r4.xy, vec2<f32>(0.5f), r0.yz);
  let v_13 = r0;
  r0 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  r0.w = ((-(r0.yyyy)).w * cb11_11.tint_symbol_5[0u].x);
  r0.w = fma(r0.w, r3.w, 1.0f);
  let v_14 = (r0.yz * cb11_11.tint_symbol_5[0u].yy);
  let v_15 = r0;
  r0 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  r2 = (r0.wwww * r2);
  r4 = textureSample(t6, s6, v2.xyxx.xy);
  let v_16 = fma(r0.yz, r3.ww, r4.xy);
  let v_17 = r0;
  r0 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  let v_18 = fma(r0.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_19 = r0;
  r0 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  r1.w = dot(r0.yz, r0.yz);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r4.x = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_20 = (r0.yz * r4.xx);
  let v_21 = r0;
  r0 = vec4<f32>(v_21.x, v_20.xy, v_21.w);
  let v_22 = (r0.zzz * v6.xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = fma(r0.yyy, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = fma(r1.www, v3.xyz, r4.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  r0.y = dot(r4.xyz, r4.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_25 = (r0.yyy * r4.xyz);
  r4 = vec4<f32>(v_25.xy, r4.z, v_25.z);
  let v_26 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_26.xy, r3.zw);
  r0.z = dot(r3.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r0.z = (r0.z * cb12_12.tint_symbol_4[0u].w);
  r0.z = clamp(((r0.wwww * r0.zzzz)).z, 0.0f, 1.0f);
  let v_27 = (r2.xyz * v1.xyz);
  r2 = vec4<f32>(v_27.xyz, r2.w);
  r0.w = ((-(r0.xxxx)).w + 1.0f);
  let v_28 = (r0.xxx * r1.xyz);
  r1 = vec4<f32>(v_28.xyz, r1.w);
  let v_29 = fma(r2.xyz, r0.www, r1.xyz);
  r1 = vec4<f32>(v_29.xyz, r1.w);
  r0.x = (r2.w * v0.w);
  let v_30 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_30.xy, r2.zw);
  let v_31 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_31.xyz, r1.w);
  let v_32 = -(v7.xyzx);
  let v_33 = (v_32.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_33.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_34 = (r0.www * r3.xyz);
  r5 = vec4<f32>(v_34.xyz, r5.w);
  let v_35 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_36 = fma(r3.xyz, r0.www, v_35.xyz);
  r6 = vec4<f32>(v_36.xyz, r6.w);
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_37 = (r1.www * r6.xyz);
  r6 = vec4<f32>(v_37.xyz, r6.w);
  r1.w = fma(r3.w, cb12_12.tint_symbol_4[0u].z, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_38 = -(r1.wwww);
  r2.z = fma(r3.w, cb12_12.tint_symbol_4[0u].z, v_38.z);
  r1.w = (r1.w * 558.0f);
  r1.w = fma(r2.z, 3.0f, r1.w);
  r2.z = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_39 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_39.xyz, r7.w);
  let v_40 = (r7.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r8 = vec4<f32>(v_40.xyz, r8.w);
  let v_41 = fma(r7.xxx, cb6_6.tint_symbol_6[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_41.xyz, r8.w);
  let v_42 = fma(r7.zzz, cb6_6.tint_symbol_6[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_42.xyz, r8.w);
  let v_43 = fma(r8.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r9 = vec4<f32>(v_43.xyz, r9.w);
  let v_44 = &(x0[0u]);
  let v_45 = r9;
  *(v_44) = vec4<f32>(v_45.xyz, (*(v_44)).w);
  let v_46 = fma(r8.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r10 = vec4<f32>(v_46.xyz, r10.w);
  let v_47 = &(x0[1u]);
  let v_48 = r10;
  *(v_47) = vec4<f32>(v_48.xyz, (*(v_47)).w);
  let v_49 = fma(r8.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r11 = vec4<f32>(v_49.xyz, r11.w);
  let v_50 = &(x0[2u]);
  let v_51 = r11;
  *(v_50) = vec4<f32>(v_51.xyz, (*(v_50)).w);
  let v_52 = fma(r8.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r8 = vec4<f32>(v_52.xyz, r8.w);
  let v_53 = &(x0[3u]);
  let v_54 = r8;
  *(v_53) = vec4<f32>(v_54.xyz, (*(v_53)).w);
  let v_55 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_56 = r12;
  r12 = vec4<f32>(v_56.x, v_55.x, v_56.z, v_55.y);
  r2.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_57 = abs(r11.yyyy);
  r3.w = max(v_57.w, abs(r11.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_58 = (bitcast<u32>(r3.w) != 0u);
  let v_59 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_59, v_58);
  let v_60 = abs(r10.yyyy);
  r5.w = max(v_60.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r2.w)));
  let v_61 = bitcast<u32>(r5.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_61 != 0u));
  let v_62 = abs(r9.yyyy);
  r5.w = max(v_62.w, abs(r9.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r2.w)));
  let v_63 = bitcast<u32>(r2.w);
  r2.w = select(r3.w, 0.0f, (v_63 != 0u));
  let v_64 = x0[bitcast<i32>(r2.w)];
  r9 = vec4<f32>(v_64.xyz, r9.w);
  r2.w = f32(bitcast<i32>(r2.w));
  r3.w = (r2.w + 0.5f);
  r3.w = (r3.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r2.w = dot(r10, cb6_6.tint_symbol_6[12u]);
  r5.w = dot(r10, cb6_6.tint_symbol_6[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  r2.w = ((-(r2.wwww)).w + r9.z);
  let v_65 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_65.xy, r11.z, v_65.z);
  r11.z = dpdx(r2.w);
  let v_66 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_66.xyz, r13.w);
  r13.w = dpdy(r2.w);
  let v_67 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_67.xy);
  let v_68 = -(r8.zwzz);
  let v_69 = fma(r11.xz, r13.xz, v_68.xy);
  r14 = vec4<f32>(v_69.xy, r14.zw);
  r6.w = (1.0f / r14.x);
  r7.w = (r11.z * r13.y);
  let v_70 = -(r7.wwww);
  r14.z = fma(r11.x, r13.w, v_70.z);
  let v_71 = (r6.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_71.xy);
  let v_72 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_72.xy);
  let v_73 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_73.xy);
  r2.w = fma((-(r5.wwww)).w, r8.z, r2.w);
  r2.w = fma((-(r5.wwww)).w, r8.w, r2.w);
  let v_74 = bitcast<u32>(r3.w);
  let v_75 = r2.w;
  r12.z = select(r9.z, v_75, (v_74 != 0u));
  r10.z = 0.0f;
  let v_76 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_76.xyz, r9.w);
  let v_77 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_77.xy, r12.zw);
  let v_78 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_78.xyz, r11.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_79.xy, r12.zw);
  let v_80 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_80.xyz, r13.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_81.xy, r12.zw);
  let v_82 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_82.xyz, r14.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_83.xy, r12.zw);
  let v_84 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_84.xyz, r15.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_85.xy, r12.zw);
  let v_86 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_86.xyz, r16.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_87.xy, r12.zw);
  let v_88 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_88.xyz, r17.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_89.xy, r12.zw);
  let v_90 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_90.xyz, r18.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_91.xy, r12.zw);
  let v_92 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_92.xyz, r19.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_93.xy, r12.zw);
  let v_94 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_94.xyz, r20.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_95.xy, r12.zw);
  let v_96 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_96.xyz, r21.w);
  let v_97 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_97.xy, r12.zw);
  let v_98 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_98.xyz, r22.w);
  let v_99 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_99.xy, r12.zw);
  let v_100 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_100.xyz, r23.w);
  let v_101 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_101.xy, r12.zw);
  let v_102 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_102.xyz, r24.w);
  let v_103 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_103.xy, r12.zw);
  let v_104 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_104.xyz, r25.w);
  let v_105 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_105.xy, r12.zw);
  let v_106 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_106.xyz, r10.w);
  let v_107 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_107.xy, r9.z);
  let v_108 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_108.xy, r11.z);
  let v_109 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_109.xy, r13.z);
  let v_110 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_110.xy, r14.z);
  let v_111 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_111.xy, r15.z);
  let v_112 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_112.xy, r16.z);
  let v_113 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_113.xy, r17.z);
  let v_114 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_114.xy, r18.z);
  let v_115 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_115.xy, r19.z);
  let v_116 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_116.xy, r20.z);
  let v_117 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_117.xy, r21.z);
  let v_118 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_118.xy, r22.z);
  let v_119 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_119.xy, r23.z);
  let v_120 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_120.xy, r24.z);
  let v_121 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_121.xy, r25.z);
  let v_122 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_122.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r2.w = dot(r9, vec4<f32>(1.0f));
  r2.z = clamp(fma(r2.zzzz, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).z, 0.0f, 1.0f);
  let v_123 = abs(r8.yyyy);
  r3.w = max(v_123.w, abs(r8.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.z = (r3.w * r2.z);
  r2.z = fma(r2.w, 0.0625f, r2.z);
  let v_124 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_124.xyz, r2.w);
  r2.z = min(r2.z, 1.0f);
  r2.w = clamp(fma(v7.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_6[3u].z);
  let v_125 = -(r2.zzzz);
  r2.z = fma(r2.w, v_125.z, r2.z);
  let v_126 = dot(r4.xyw, v_35.xyz);
  r2.w = clamp(vec4<f32>(v_126, v_126, v_126, v_126).w, 0.0f, 1.0f);
  let v_127 = dot(r5.xyz, r4.xyw);
  r8.x = clamp(vec4<f32>(v_127, v_127, v_127, v_127).x, 0.0f, 1.0f);
  let v_128 = dot(r6.xyz, v_35.xyz);
  r8.y = clamp(vec4<f32>(v_128, v_128, v_128, v_128).y, 0.0f, 1.0f);
  let v_129 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_129.xy, r8.zw);
  let v_130 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_130.xy);
  let v_131 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_131.xy);
  let v_132 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_132.xy, r8.zw);
  r3.w = ((-(cb12_12.tint_symbol_4[0u].yyyy)).w + 1.0f);
  let v_133 = fma(cb12_12.tint_symbol_4[0u].yy, r8.xy, r3.ww);
  r8 = vec4<f32>(v_133.xy, r8.zw);
  let v_134 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_134.xy);
  r5.w = (r8.z * 0.125f);
  r6.w = fma((-(r0.zzzz)).w, r8.x, 1.0f);
  r6.x = dot(r4.xyw, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r8.w);
  r6.x = exp2(r6.x);
  r6.x = (r8.y * r6.x);
  r6.x = (r5.w * r6.x);
  r6.x = (r0.z * r6.x);
  r6.x = (r2.w * r6.x);
  r2.w = (r2.w * r6.w);
  let v_135 = fma(r1.xyz, r2.www, r6.xxx);
  r6 = vec4<f32>(v_135.xyz, r6.w);
  let v_136 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_136.xyz, r6.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r9 = vec4<f32>(r9.x, vec3<f32>());
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_137 = (v_32.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_137.xyz, r8.w);
    let v_138 = (v7.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_138.xyz, r9.w);
    r9.x = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[19u].wwww)).x, 0.0f, 1.0f);
    r9.x = (r9.x * cb3_3.tint_symbol_2[19u].w);
    let v_139 = fma(cb3_3.tint_symbol_2[11u].xyz, r9.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_139.xyz, r9.w);
    let v_140 = (r9.xyz + v_32.xyz);
    r9 = vec4<f32>(v_140.xyz, r9.w);
    let v_141 = bitcast<vec3<u32>>(r7.www);
    let v_142 = r8.xyz;
    let v_143 = select(r9.xyz, v_142, (v_141 != vec3<u32>()));
    r8 = vec4<f32>(v_143.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    let v_144 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_144.xyz, r8.w);
    r9.x = dot(r8.xyz, r8.xyz);
    r9.x = inverseSqrt(r9.x);
    let v_145 = (r8.xyz * r9.xxx);
    r8 = vec4<f32>(v_145.xyz, r8.w);
    r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r9.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[11u].w);
    r7.w = (r7.w / r9.x);
    let v_146 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.x = dot(r8.xyz, v_146.xyz);
    r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_147 = dot(r8.xyz, r4.xyw);
    r9.y = clamp(vec4<f32>(v_147, v_147, v_147, v_147).y, 0.0f, 1.0f);
    r9.x = (r9.x * r9.y);
    r9.y = (r7.w * r9.x);
    let v_148 = (r9.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(r9.x, v_148.xyz);
    let v_149 = (r1.xyz * r9.yzw);
    r9 = vec4<f32>(r9.x, v_149.xyz);
    let v_150 = fma(r3.xyz, r0.www, r8.xyz);
    r8 = vec4<f32>(v_150.xyz, r8.w);
    r10.x = dot(r8.xyz, r8.xyz);
    r10.x = inverseSqrt(r10.x);
    let v_151 = (r8.xyz * r10.xxx);
    r8 = vec4<f32>(v_151.xyz, r8.w);
    let v_152 = dot(r8.xyz, r5.xyz);
    r10.x = clamp(vec4<f32>(v_152, v_152, v_152, v_152).x, 0.0f, 1.0f);
    r10.x = ((-(r10.xxxx)).x + 1.0f);
    r10.y = (r10.x * r10.x);
    r10.y = (r10.y * r10.y);
    r10.x = (r10.y * r10.x);
    r10.x = fma(cb12_12.tint_symbol_4[0u].y, r10.x, r3.w);
    let v_153 = dot(r8.xyz, r4.xyw);
    r8.x = clamp(vec4<f32>(v_153, v_153, v_153, v_153).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.w);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r10.x);
    r8.x = (r9.x * r8.x);
    r7.w = (r7.w * r8.x);
    r7.w = (r5.w * r7.w);
    let v_154 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_154.xyz, r8.w);
  }
  r7.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.w) != 0u)) {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r7.w)));
    let v_155 = bitcast<u32>(r9.x);
    let v_156 = r7.w;
    r2.w = select(r2.w, v_156, (v_155 != 0u));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_157 = (v_32.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_157.xyz, r10.w);
      let v_158 = (v7.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[20u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[20u].w);
      let v_159 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      let v_160 = (r11.xyz + v_32.xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      let v_161 = bitcast<vec3<u32>>(r7.www);
      let v_162 = r10.xyz;
      let v_163 = select(r11.xyz, v_162, (v_161 != vec3<u32>()));
      r10 = vec4<f32>(v_163.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_164 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_164.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_165 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_165.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[12u].w);
      r7.w = (r7.w / r9.x);
      let v_166 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.x = dot(r10.xyz, v_166.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_167 = dot(r10.xyz, r4.xyw);
      r10.w = clamp(vec4<f32>(v_167, v_167, v_167, v_167).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_168 = (r10.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      let v_169 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_169.xyz);
      let v_170 = fma(r3.xyz, r0.www, r10.xyz);
      r10 = vec4<f32>(v_170.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_171 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      let v_172 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].y, r10.w, r3.w);
      let v_173 = dot(r10.xyz, r4.xyw);
      r10.x = clamp(vec4<f32>(v_173, v_173, v_173, v_173).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_174 = fma(r7.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_174.xyz, r8.w);
    }
  } else {
    r2.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_175 = (v_32.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      let v_176 = (v7.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[21u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[21u].w);
      let v_177 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      let v_178 = (r11.xyz + v_32.xyz);
      r11 = vec4<f32>(v_178.xyz, r11.w);
      let v_179 = bitcast<vec3<u32>>(r7.www);
      let v_180 = r10.xyz;
      let v_181 = select(r11.xyz, v_180, (v_179 != vec3<u32>()));
      r10 = vec4<f32>(v_181.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_182 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_182.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_183 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_183.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[13u].w);
      r7.w = (r7.w / r9.x);
      let v_184 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.x = dot(r10.xyz, v_184.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_185 = dot(r10.xyz, r4.xyw);
      r10.w = clamp(vec4<f32>(v_185, v_185, v_185, v_185).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_186 = (r10.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      let v_187 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_187.xyz);
      let v_188 = fma(r3.xyz, r0.www, r10.xyz);
      r10 = vec4<f32>(v_188.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_189 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      let v_190 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_190, v_190, v_190, v_190).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].y, r10.w, r3.w);
      let v_191 = dot(r10.xyz, r4.xyw);
      r10.x = clamp(vec4<f32>(v_191, v_191, v_191, v_191).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_192 = fma(r7.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_192.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_193 = (v_32.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_193.xyz, r10.w);
      let v_194 = (v7.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_194.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[22u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[22u].w);
      let v_195 = fma(cb3_3.tint_symbol_2[14u].xyz, r9.xxx, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      let v_196 = (r11.xyz + v_32.xyz);
      r11 = vec4<f32>(v_196.xyz, r11.w);
      let v_197 = bitcast<vec3<u32>>(r7.www);
      let v_198 = r10.xyz;
      let v_199 = select(r11.xyz, v_198, (v_197 != vec3<u32>()));
      r10 = vec4<f32>(v_199.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_200 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_200.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_201 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_201.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[14u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[14u].w);
      r7.w = (r7.w / r9.x);
      let v_202 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r9.x = dot(r10.xyz, v_202.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).x, 0.0f, 1.0f);
      let v_203 = dot(r10.xyz, r4.xyw);
      r10.w = clamp(vec4<f32>(v_203, v_203, v_203, v_203).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_204 = (r10.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_204.xyz, r11.w);
      let v_205 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_205.xyz);
      let v_206 = fma(r3.xyz, r0.www, r10.xyz);
      r10 = vec4<f32>(v_206.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_207 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_207.xyz, r10.w);
      let v_208 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_208, v_208, v_208, v_208).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].y, r10.w, r3.w);
      let v_209 = dot(r10.xyz, r4.xyw);
      r10.x = clamp(vec4<f32>(v_209, v_209, v_209, v_209).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_210 = fma(r7.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_210.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_211 = (v_32.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_211.xyz, r10.w);
      let v_212 = (v7.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_212.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[23u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[23u].w);
      let v_213 = fma(cb3_3.tint_symbol_2[15u].xyz, r9.xxx, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_213.xyz, r11.w);
      let v_214 = (r11.xyz + v_32.xyz);
      r11 = vec4<f32>(v_214.xyz, r11.w);
      let v_215 = bitcast<vec3<u32>>(r7.www);
      let v_216 = r10.xyz;
      let v_217 = select(r11.xyz, v_216, (v_215 != vec3<u32>()));
      r10 = vec4<f32>(v_217.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_218 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_218.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_219 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_219.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[15u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[15u].w);
      r7.w = (r7.w / r9.x);
      let v_220 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r9.x = dot(r10.xyz, v_220.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).x, 0.0f, 1.0f);
      let v_221 = dot(r10.xyz, r4.xyw);
      r10.w = clamp(vec4<f32>(v_221, v_221, v_221, v_221).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_222 = (r10.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_222.xyz, r11.w);
      let v_223 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_223.xyz);
      let v_224 = fma(r3.xyz, r0.www, r10.xyz);
      r10 = vec4<f32>(v_224.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_225 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_225.xyz, r10.w);
      let v_226 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_226, v_226, v_226, v_226).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].y, r10.w, r3.w);
      let v_227 = dot(r10.xyz, r4.xyw);
      r10.x = clamp(vec4<f32>(v_227, v_227, v_227, v_227).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_228 = fma(r7.www, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_228.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_229 = (v_32.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_229.xyz, r10.w);
      let v_230 = (v7.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_230.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[24u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[24u].w);
      let v_231 = fma(cb3_3.tint_symbol_2[16u].xyz, r9.xxx, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_231.xyz, r11.w);
      let v_232 = (r11.xyz + v_32.xyz);
      r11 = vec4<f32>(v_232.xyz, r11.w);
      let v_233 = bitcast<vec3<u32>>(r7.www);
      let v_234 = r10.xyz;
      let v_235 = select(r11.xyz, v_234, (v_233 != vec3<u32>()));
      r10 = vec4<f32>(v_235.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_236 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_236.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_237 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_237.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[16u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[16u].w);
      r7.w = (r7.w / r9.x);
      let v_238 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r9.x = dot(r10.xyz, v_238.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).x, 0.0f, 1.0f);
      let v_239 = dot(r10.xyz, r4.xyw);
      r10.w = clamp(vec4<f32>(v_239, v_239, v_239, v_239).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_240 = (r10.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_240.xyz, r11.w);
      let v_241 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_241.xyz);
      let v_242 = fma(r3.xyz, r0.www, r10.xyz);
      r10 = vec4<f32>(v_242.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_243 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_243.xyz, r10.w);
      let v_244 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_244, v_244, v_244, v_244).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].y, r10.w, r3.w);
      let v_245 = dot(r10.xyz, r4.xyw);
      r10.x = clamp(vec4<f32>(v_245, v_245, v_245, v_245).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_246 = fma(r7.www, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_246.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_247 = (v_32.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_247.xyz, r10.w);
      let v_248 = (v7.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_248.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[25u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[25u].w);
      let v_249 = fma(cb3_3.tint_symbol_2[17u].xyz, r9.xxx, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_249.xyz, r11.w);
      let v_250 = (r11.xyz + v_32.xyz);
      r11 = vec4<f32>(v_250.xyz, r11.w);
      let v_251 = bitcast<vec3<u32>>(r7.www);
      let v_252 = r10.xyz;
      let v_253 = select(r11.xyz, v_252, (v_251 != vec3<u32>()));
      r10 = vec4<f32>(v_253.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_254 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_254.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_255 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_255.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[17u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[17u].w);
      r7.w = (r7.w / r9.x);
      let v_256 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r9.x = dot(r10.xyz, v_256.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).x, 0.0f, 1.0f);
      let v_257 = dot(r10.xyz, r4.xyw);
      r10.w = clamp(vec4<f32>(v_257, v_257, v_257, v_257).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_258 = (r10.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_258.xyz, r11.w);
      let v_259 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_259.xyz);
      let v_260 = fma(r3.xyz, r0.www, r10.xyz);
      r10 = vec4<f32>(v_260.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_261 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_261.xyz, r10.w);
      let v_262 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_262, v_262, v_262, v_262).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].y, r10.w, r3.w);
      let v_263 = dot(r10.xyz, r4.xyw);
      r10.x = clamp(vec4<f32>(v_263, v_263, v_263, v_263).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_264 = fma(r7.www, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_264.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_265 = (v_32.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_265.xyz, r10.w);
      let v_266 = (v7.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_266.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[26u].w);
      let v_267 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.www, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_267.xyz, r11.w);
      let v_268 = (r11.xyz + v_32.xyz);
      r11 = vec4<f32>(v_268.xyz, r11.w);
      let v_269 = bitcast<vec3<u32>>(r2.www);
      let v_270 = r10.xyz;
      let v_271 = select(r11.xyz, v_270, (v_269 != vec3<u32>()));
      r10 = vec4<f32>(v_271.xyz, r10.w);
      r2.w = dot(r10.xyz, r10.xyz);
      let v_272 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_272.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_273 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_273.xyz, r10.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r2.w, cb3_3.tint_symbol_2[18u].w);
      r2.w = (r2.w / r7.w);
      let v_274 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.w = dot(r10.xyz, v_274.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_275 = dot(r10.xyz, r4.xyw);
      r9.x = clamp(vec4<f32>(v_275, v_275, v_275, v_275).x, 0.0f, 1.0f);
      r7.w = (r7.w * r9.x);
      r9.x = (r2.w * r7.w);
      let v_276 = (r9.xxx * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_276.xyz, r11.w);
      let v_277 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_277.xyz);
      let v_278 = fma(r3.xyz, r0.www, r10.xyz);
      r3 = vec4<f32>(v_278.xyz, r3.w);
      r0.w = dot(r3.xyz, r3.xyz);
      r0.w = inverseSqrt(r0.w);
      let v_279 = (r0.www * r3.xyz);
      r3 = vec4<f32>(v_279.xyz, r3.w);
      let v_280 = dot(r3.xyz, r5.xyz);
      r0.w = clamp(vec4<f32>(v_280, v_280, v_280, v_280).w, 0.0f, 1.0f);
      r0.w = ((-(r0.wwww)).w + 1.0f);
      r9.x = (r0.w * r0.w);
      r9.x = (r9.x * r9.x);
      r0.w = (r0.w * r9.x);
      r0.w = fma(cb12_12.tint_symbol_4[0u].y, r0.w, r3.w);
      let v_281 = dot(r3.xyz, r4.xyw);
      r3.x = clamp(vec4<f32>(v_281, v_281, v_281, v_281).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r8.w);
      r3.x = exp2(r3.x);
      r0.w = (r0.w * r3.x);
      r0.w = (r7.w * r0.w);
      r0.w = (r2.w * r0.w);
      r0.w = (r5.w * r0.w);
      let v_282 = fma(r0.www, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_282.xyz, r8.w);
    }
  }
  r0.w = (r6.w * r6.w);
  r0.z = (r0.z * r0.z);
  let v_283 = (r8.xyz * r0.zzz);
  r3 = vec4<f32>(v_283.xyz, r3.w);
  let v_284 = fma(r0.www, r9.yzw, r3.xyz);
  r3 = vec4<f32>(v_284.xyz, r3.w);
  let v_285 = fma(r6.xyz, r2.zzz, r3.xyz);
  r3 = vec4<f32>(v_285.xyz, r3.w);
  r0.y = fma(r4.z, r0.y, cb3_3.tint_symbol_2[43u].w);
  r0.y = (r0.y * cb3_3.tint_symbol_2[44u].w);
  r0.y = max(r0.y, 0.0f);
  let v_286 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_286.xyz, r6.w);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_287 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_287.xyz, r8.w);
  let v_288 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_288.xyz, r8.w);
  let v_289 = fma(r6.xyz, r0.zzz, r8.xyz);
  r6 = vec4<f32>(v_289.xyz, r6.w);
  let v_290 = (r2.yyy * r6.xyz);
  r6 = vec4<f32>(v_290.xyz, r6.w);
  let v_291 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(r0.x, v_291.xyz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_292 = dot(r8.xyz, r4.xyw);
  r2.z = clamp(vec4<f32>(v_292, v_292, v_292, v_292).z, 0.0f, 1.0f);
  let v_293 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.zzz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_293.xyz);
  let v_294 = fma(r0.yzw, r2.xxx, r6.xyz);
  r0 = vec4<f32>(r0.x, v_294.xyz);
  let v_295 = (r6.www * r0.yzw);
  r0 = vec4<f32>(r0.x, v_295.xyz);
  let v_296 = fma(r0.yzw, r1.xyz, r3.xyz);
  r0 = vec4<f32>(r0.x, v_296.xyz);
  r1.x = ((-(r6.wwww)).x + 1.0f);
  r1.y = dot((-(r5.xyzx)).xyz, r4.xyw);
  r1.y = (r1.y + r1.y);
  let v_297 = -(r1.yyyy);
  let v_298 = -(r5.xyzx);
  let v_299 = fma(r4.xyw, v_297.xyz, v_298.xyz);
  r3 = vec4<f32>(v_299.xyz, r3.w);
  let v_300 = clamp(((r1.wwww * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_301 = r1;
  r1 = vec4<f32>(v_301.x, v_300.xy, v_301.w);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.z = (r1.y * cb5_5.tint_symbol_3[6u].z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r1.w)));
  r2.w = fma(r1.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.y = (r1.y * r1.y);
  r1.y = fma(r1.y, 5.0f, r1.w);
  let v_302 = bitcast<u32>(r2.z);
  let v_303 = r2.w;
  r1.y = select(r1.y, v_303, (v_302 != 0u));
  let v_304 = (r3.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_304.xy, r3.z, v_304.z);
  r1.w = (abs(r3.zzzz).w + 1.0f);
  let v_305 = (r3.xyw / r1.www);
  r3 = vec4<f32>(v_305.xy, r3.z, v_305.z);
  let v_306 = ((-(r3.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_306.xy, r3.z, v_306.z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.z)));
  let v_307 = bitcast<vec2<u32>>(r1.ww);
  let v_308 = r3.xy;
  let v_309 = select(r3.wy, v_308, (v_307 != vec2<u32>()));
  r2 = vec4<f32>(r2.xy, v_309.xy);
  let v_310 = r1.y;
  r3 = textureSampleLevel(t1, s1, r2.zwzz.xy, v_310);
  r1.y = max(r2.y, r2.x);
  let v_311 = (r1.yyy * r3.xyz);
  r2 = vec4<f32>(v_311.xyz, r2.w);
  let v_312 = (r1.zzz * r2.xyz);
  r1 = vec4<f32>(r1.x, v_312.xyz);
  let v_313 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_313.xyz);
  let v_314 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_314.xyz);
  let v_315 = fma(r1.yzw, r1.xxx, r0.yzw);
  r0 = vec4<f32>(r0.x, v_315.xyz);
  o0.w = (r0.x * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.x = dot(r7.xyz, r7.xyz);
    r1.x = sqrt(r0.x);
    let v_316 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_316.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r7.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_317 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_317 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.x = inverseSqrt(r0.x);
    let v_318 = (r0.xxx * r7.xyz);
    r2 = vec4<f32>(v_318.xyz, r2.w);
    let v_319 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.x = clamp(vec4<f32>(v_319, v_319, v_319, v_319).x, 0.0f, 1.0f);
    r0.x = log2(r0.x);
    r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
    r0.x = exp2(r0.x);
    let v_320 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_320, v_320, v_320, v_320).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_321 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_321.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_322 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_322.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_323 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_323.xyz, r2.w);
    let v_324 = fma(r0.xxx, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_324.xyz, r2.w);
    let v_325 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_325.xyz, r3.w);
    let v_326 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_326.xyz, r2.w);
    let v_327 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_328 = (r2.xyz + v_327.xyz);
    r2 = vec4<f32>(v_328.xyz, r2.w);
    let v_329 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_329.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_330 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_330.xyz, r3.w);
    let v_331 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_331.xy, r1.z, v_331.z);
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.x) != 0u)) {
      let v_332 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_332.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.x = (r2.x + -1.0f);
      r0.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r0.x = 1.0f;
    }
    let v_333 = -(r0.yzyw);
    let v_334 = fma(r1.xyw, r0.xxx, v_333.xyw);
    r1 = vec4<f32>(v_334.xy, r1.z, v_334.z);
    let v_335 = fma(r1.zzz, r1.xyw, r0.yzw);
    r1 = vec4<f32>(v_335.xyz, r1.w);
  } else {
    r0.x = dot(r7.xyz, r7.xyz);
    r1.w = sqrt(r0.x);
    let v_336 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_336.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r7.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_337 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_337 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.x = inverseSqrt(r0.x);
    let v_338 = (r0.xxx * r7.xyz);
    r3 = vec4<f32>(v_338.xyz, r3.w);
    let v_339 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.x = clamp(vec4<f32>(v_339, v_339, v_339, v_339).x, 0.0f, 1.0f);
    r0.x = log2(r0.x);
    r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
    r0.x = exp2(r0.x);
    let v_340 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_340, v_340, v_340, v_340).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_341 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_341.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_342 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_342.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_343 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_343.xyz, r3.w);
    let v_344 = fma(r0.xxx, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_344.xyz, r3.w);
    let v_345 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_345.xyz, r4.w);
    let v_346 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_346.xyz, r3.w);
    let v_347 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_348 = (r3.xyz + v_347.xyz);
    r3 = vec4<f32>(v_348.xyz, r3.w);
    let v_349 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_349.x, r2.y, v_349.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_350 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_350.xyz, r3.w);
    let v_351 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_351.x, r2.y, v_351.yz);
    let v_352 = ((-(r0.yyzw)).xzw + r2.xzw);
    r2 = vec4<f32>(v_352.x, r2.y, v_352.yz);
    let v_353 = fma(r2.yyy, r2.xzw, r0.yzw);
    r1 = vec4<f32>(v_353.xyz, r1.w);
  }
  let v_354 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_354.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_355 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v5, v6, v7, v_355);
  return o0;
}
