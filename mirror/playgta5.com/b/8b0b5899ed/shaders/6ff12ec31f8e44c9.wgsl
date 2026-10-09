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
  let v_33 = -(v7.xyzx);
  let v_34 = (v_33.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_35 = (r2.www * r2.xyz);
  r3 = vec4<f32>(v_35.xyz, r3.w);
  let v_36 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_37 = fma(r2.xyz, r2.www, v_36.xyz);
  r5 = vec4<f32>(v_37.xyz, r5.w);
  r5.w = dot(r5.xyz, r5.xyz);
  r5.w = inverseSqrt(r5.w);
  let v_38 = (r5.www * r5.xyz);
  r5 = vec4<f32>(v_38.xyz, r5.w);
  let v_39 = (r1.xw * r1.xw);
  r1 = vec4<f32>(v_39.x, r1.yz, v_39.y);
  r5.w = fma(r3.w, cb12_12.tint_symbol_4[0u].z, -500.0f);
  r5.w = max(r5.w, 0.0f);
  let v_40 = -(r5.wwww);
  r3.w = fma(r3.w, cb12_12.tint_symbol_4[0u].z, v_40.w);
  r5.w = (r5.w * 558.0f);
  r3.w = fma(r3.w, 3.0f, r5.w);
  r5.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_41 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_41.xyz, r6.w);
  let v_42 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_42.xyz, r7.w);
  let v_43 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_43.xyz, r7.w);
  let v_44 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_44.xyz, r7.w);
  let v_45 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_45.xyz, r8.w);
  let v_46 = &(x0[0u]);
  let v_47 = r8;
  *(v_46) = vec4<f32>(v_47.xyz, (*(v_46)).w);
  let v_48 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_48.xyz, r9.w);
  let v_49 = &(x0[1u]);
  let v_50 = r9;
  *(v_49) = vec4<f32>(v_50.xyz, (*(v_49)).w);
  let v_51 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_51.xyz, r10.w);
  let v_52 = &(x0[2u]);
  let v_53 = r10;
  *(v_52) = vec4<f32>(v_53.xyz, (*(v_52)).w);
  let v_54 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_54.xyz, r7.w);
  let v_55 = &(x0[3u]);
  let v_56 = r7;
  *(v_55) = vec4<f32>(v_56.xyz, (*(v_55)).w);
  let v_57 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_58 = r11;
  r11 = vec4<f32>(v_58.x, v_57.x, v_58.z, v_57.y);
  r6.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r6.w = (r6.w * 0.5f);
  let v_59 = abs(r10.yyyy);
  r7.z = max(v_59.z, abs(r10.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r6.w)));
  let v_60 = (bitcast<u32>(r7.z) != 0u);
  let v_61 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r7.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_61, v_60);
  let v_62 = abs(r9.yyyy);
  r7.w = max(v_62.w, abs(r9.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_63 = bitcast<u32>(r7.w);
  r7.z = select(r7.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_63 != 0u));
  let v_64 = abs(r8.yyyy);
  r7.w = max(v_64.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_65 = bitcast<u32>(r6.w);
  r6.w = select(r7.z, 0.0f, (v_65 != 0u));
  let v_66 = x0[bitcast<i32>(r6.w)];
  r8 = vec4<f32>(v_66.xyz, r8.w);
  r6.w = f32(bitcast<i32>(r6.w));
  r7.z = (r6.w + 0.5f);
  r7.z = (r7.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r6.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r6.w = dot(r9, cb6_6.tint_symbol_6[12u]);
  r7.w = dot(r9, cb6_6.tint_symbol_6[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r7.z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 0.0f))));
  r6.w = ((-(r6.wwww)).w + r8.z);
  let v_67 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_67.xy, r10.z, v_67.z);
  r10.z = dpdx(r6.w);
  let v_68 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_68.xyz, r12.w);
  r12.w = dpdy(r6.w);
  let v_69 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_69.xy, r8.zw);
  let v_70 = -(r8.xyxx);
  let v_71 = fma(r10.xz, r12.xz, v_70.xy);
  r13 = vec4<f32>(v_71.xy, r13.zw);
  r8.x = (1.0f / r13.x);
  r8.y = (r10.z * r12.y);
  let v_72 = -(r8.yyyy);
  r13.z = fma(r10.x, r12.w, v_72.z);
  let v_73 = (r8.xx * r13.yz);
  r8 = vec4<f32>(v_73.xy, r8.zw);
  let v_74 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_74.xy, r8.zw);
  let v_75 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_75.xy, r8.zw);
  r6.w = fma((-(r7.wwww)).w, r8.x, r6.w);
  r6.w = fma((-(r7.wwww)).w, r8.y, r6.w);
  let v_76 = bitcast<u32>(r7.z);
  let v_77 = r6.w;
  r11.z = select(r8.z, v_77, (v_76 != 0u));
  r9.z = 0.0f;
  let v_78 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_78.xyz, r8.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_80.xyz, r10.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_82.xyz, r12.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_84.xyz, r13.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_86.xyz, r14.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_88.xyz, r15.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_90.xyz, r16.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_92.xyz, r17.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_94.xyz, r18.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_95.xy, r11.zw);
  let v_96 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_96.xyz, r19.w);
  let v_97 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_97.xy, r11.zw);
  let v_98 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_98.xyz, r20.w);
  let v_99 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_99.xy, r11.zw);
  let v_100 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_100.xyz, r21.w);
  let v_101 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_101.xy, r11.zw);
  let v_102 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_102.xyz, r22.w);
  let v_103 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_103.xy, r11.zw);
  let v_104 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_104.xyz, r23.w);
  let v_105 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_105.xy, r11.zw);
  let v_106 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_106.xyz, r24.w);
  let v_107 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_107.xy, r11.zw);
  let v_108 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_108.xyz, r9.w);
  let v_109 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_109.xy, r8.z);
  let v_110 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_110.xy, r10.z);
  let v_111 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_111.xy, r12.z);
  let v_112 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_112.xy, r13.z);
  let v_113 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_113.xy, r14.z);
  let v_114 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_114.xy, r15.z);
  let v_115 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_115.xy, r16.z);
  let v_116 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_116.xy, r17.z);
  let v_117 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_117.xy, r18.z);
  let v_118 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_118.xy, r19.z);
  let v_119 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_119.xy, r20.z);
  let v_120 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_120.xy, r21.z);
  let v_121 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_121.xy, r22.z);
  let v_122 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_122.xy, r23.z);
  let v_123 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_123.xy, r24.z);
  let v_124 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_124.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r6.w = dot(r8, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_125 = abs(r7.yyyy);
  r7.x = max(v_125.x, abs(r7.xxxx).x);
  r7.x = clamp(fma(r7.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r7.x * r5.w);
  r5.w = fma(r6.w, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.w = clamp(fma(v7.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r6.w = sqrt(r6.w);
  r6.w = (r6.w * cb6_6.tint_symbol_6[3u].z);
  let v_126 = -(r5.wwww);
  r5.w = fma(r6.w, v_126.w, r5.w);
  let v_127 = dot(r4.xyw, v_36.xyz);
  r6.w = clamp(vec4<f32>(v_127, v_127, v_127, v_127).w, 0.0f, 1.0f);
  let v_128 = dot(r3.xyz, r4.xyw);
  r7.x = clamp(vec4<f32>(v_128, v_128, v_128, v_128).x, 0.0f, 1.0f);
  let v_129 = dot(r5.xyz, v_36.xyz);
  r7.y = clamp(vec4<f32>(v_129, v_129, v_129, v_129).y, 0.0f, 1.0f);
  let v_130 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_130.xy, r7.zw);
  let v_131 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_131.xy);
  let v_132 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_132.xy);
  let v_133 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_133.xy, r7.zw);
  r7.z = ((-(cb12_12.tint_symbol_4[0u].yyyy)).z + 1.0f);
  let v_134 = fma(cb12_12.tint_symbol_4[0u].yy, r7.xy, r7.zz);
  r7 = vec4<f32>(v_134.xy, r7.zw);
  let v_135 = (r3.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_135.xy, r8.zw);
  r7.w = (r8.x * 0.125f);
  r7.x = fma((-(r1.zzzz)).x, r7.x, 1.0f);
  r5.x = dot(r4.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r7.w * r5.x);
  r5.x = (r1.z * r5.x);
  r5.x = (r6.w * r5.x);
  r5.y = (r6.w * r7.x);
  let v_136 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_136.xyz, r5.w);
  let v_137 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_137.xyz, r5.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r9 = vec4<f32>(r9.x, vec3<f32>());
    r8 = vec4<f32>(0.0f, r8.y, vec2<f32>());
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_138 = ((-(v7.xxyz)).xzw + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_138.x, r8.y, v_138.yz);
    let v_139 = (v7.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_139.xyz, r9.w);
    r9.x = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[19u].wwww)).x, 0.0f, 1.0f);
    r9.x = (r9.x * cb3_3.tint_symbol_2[19u].w);
    let v_140 = fma(cb3_3.tint_symbol_2[11u].xyz, r9.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_140.xyz, r9.w);
    let v_141 = (r9.xyz + v_33.xyz);
    r9 = vec4<f32>(v_141.xyz, r9.w);
    let v_142 = bitcast<vec3<u32>>(r7.yyy);
    let v_143 = r8.xzw;
    let v_144 = select(r9.xyz, v_143, (v_142 != vec3<u32>()));
    r8 = vec4<f32>(v_144.x, r8.y, v_144.yz);
    r7.y = dot(r8.xzw, r8.xzw);
    let v_145 = (r8.xzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_145.x, r8.y, v_145.yz);
    r9.x = dot(r8.xzw, r8.xzw);
    r9.x = inverseSqrt(r9.x);
    let v_146 = (r8.xzw * r9.xxx);
    r8 = vec4<f32>(v_146.x, r8.y, v_146.yz);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r9.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r9.x);
    let v_147 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.x = dot(r8.xzw, v_147.xyz);
    r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_148 = dot(r8.xzw, r4.xyw);
    r9.y = clamp(vec4<f32>(v_148, v_148, v_148, v_148).y, 0.0f, 1.0f);
    r9.x = (r9.x * r9.y);
    r9.y = (r7.y * r9.x);
    let v_149 = (r9.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(r9.x, v_149.xyz);
    let v_150 = (r0.xyz * r9.yzw);
    r9 = vec4<f32>(r9.x, v_150.xyz);
    let v_151 = fma(r2.xyz, r2.www, r8.xzw);
    r8 = vec4<f32>(v_151.x, r8.y, v_151.yz);
    r10.x = dot(r8.xzw, r8.xzw);
    r10.x = inverseSqrt(r10.x);
    let v_152 = (r8.xzw * r10.xxx);
    r8 = vec4<f32>(v_152.x, r8.y, v_152.yz);
    let v_153 = dot(r8.xzw, r3.xyz);
    r10.x = clamp(vec4<f32>(v_153, v_153, v_153, v_153).x, 0.0f, 1.0f);
    r10.x = ((-(r10.xxxx)).x + 1.0f);
    r10.y = (r10.x * r10.x);
    r10.y = (r10.y * r10.y);
    r10.x = (r10.y * r10.x);
    r10.x = fma(cb12_12.tint_symbol_4[0u].y, r10.x, r7.z);
    let v_154 = dot(r8.xzw, r4.xyw);
    r8.x = clamp(vec4<f32>(v_154, v_154, v_154, v_154).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.y);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r10.x);
    r8.x = (r9.x * r8.x);
    r7.y = (r7.y * r8.x);
    r7.y = (r7.w * r7.y);
    let v_155 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_155.x, r8.y, v_155.yz);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    let v_156 = bitcast<u32>(r9.x);
    let v_157 = r7.y;
    r6.w = select(r6.w, v_157, (v_156 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_158 = (v_33.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_158.xyz, r10.w);
      let v_159 = (v7.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[20u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[20u].w);
      let v_160 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      let v_161 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_161.xyz, r11.w);
      let v_162 = bitcast<vec3<u32>>(r7.yyy);
      let v_163 = r10.xyz;
      let v_164 = select(r11.xyz, v_163, (v_162 != vec3<u32>()));
      r10 = vec4<f32>(v_164.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_165 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_165.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_166 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_166.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r9.x);
      let v_167 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.x = dot(r10.xyz, v_167.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_168 = dot(r10.xyz, r4.xyw);
      r10.w = clamp(vec4<f32>(v_168, v_168, v_168, v_168).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_169 = (r10.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      let v_170 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_170.xyz);
      let v_171 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_172 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = dot(r10.xyz, r3.xyz);
      r10.w = clamp(vec4<f32>(v_173, v_173, v_173, v_173).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].y, r10.w, r7.z);
      let v_174 = dot(r10.xyz, r4.xyw);
      r10.x = clamp(vec4<f32>(v_174, v_174, v_174, v_174).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_175 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xzw);
      r8 = vec4<f32>(v_175.x, r8.y, v_175.yz);
    }
  } else {
    r6.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_176 = (v_33.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_176.xyz, r10.w);
      let v_177 = (v7.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[21u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[21u].w);
      let v_178 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_178.xyz, r11.w);
      let v_179 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_179.xyz, r11.w);
      let v_180 = bitcast<vec3<u32>>(r7.yyy);
      let v_181 = r10.xyz;
      let v_182 = select(r11.xyz, v_181, (v_180 != vec3<u32>()));
      r10 = vec4<f32>(v_182.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_183 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_183.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_184 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_184.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r9.x);
      let v_185 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.x = dot(r10.xyz, v_185.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_186 = dot(r10.xyz, r4.xyw);
      r10.w = clamp(vec4<f32>(v_186, v_186, v_186, v_186).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_187 = (r10.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_187.xyz, r11.w);
      let v_188 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_188.xyz);
      let v_189 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_190 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_190.xyz, r10.w);
      let v_191 = dot(r10.xyz, r3.xyz);
      r10.w = clamp(vec4<f32>(v_191, v_191, v_191, v_191).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].y, r10.w, r7.z);
      let v_192 = dot(r10.xyz, r4.xyw);
      r10.x = clamp(vec4<f32>(v_192, v_192, v_192, v_192).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_193 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xzw);
      r8 = vec4<f32>(v_193.x, r8.y, v_193.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_194 = (v_33.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_194.xyz, r10.w);
      let v_195 = (v7.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[22u].wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[22u].w);
      let v_196 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_196.xyz, r11.w);
      let v_197 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_197.xyz, r11.w);
      let v_198 = bitcast<vec3<u32>>(r6.www);
      let v_199 = r10.xyz;
      let v_200 = select(r11.xyz, v_199, (v_198 != vec3<u32>()));
      r10 = vec4<f32>(v_200.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_201 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_201.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_202 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_202.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r6.w, cb3_3.tint_symbol_2[14u].w);
      r6.w = (r6.w / r7.y);
      let v_203 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.y = dot(r10.xyz, v_203.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_204 = dot(r10.xyz, r4.xyw);
      r9.x = clamp(vec4<f32>(v_204, v_204, v_204, v_204).x, 0.0f, 1.0f);
      r7.y = (r7.y * r9.x);
      r9.x = (r6.w * r7.y);
      let v_205 = (r9.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_205.xyz, r11.w);
      let v_206 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_206.xyz);
      let v_207 = fma(r2.xyz, r2.www, r10.xyz);
      r2 = vec4<f32>(v_207.xyz, r2.w);
      r2.w = dot(r2.xyz, r2.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_208 = (r2.www * r2.xyz);
      r2 = vec4<f32>(v_208.xyz, r2.w);
      let v_209 = dot(r2.xyz, r3.xyz);
      r2.w = clamp(vec4<f32>(v_209, v_209, v_209, v_209).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r9.x = (r2.w * r2.w);
      r9.x = (r9.x * r9.x);
      r2.w = (r2.w * r9.x);
      r2.w = fma(cb12_12.tint_symbol_4[0u].y, r2.w, r7.z);
      let v_210 = dot(r2.xyz, r4.xyw);
      r2.x = clamp(vec4<f32>(v_210, v_210, v_210, v_210).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r8.y);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r2.w);
      r2.x = (r7.y * r2.x);
      r2.x = (r6.w * r2.x);
      r2.x = (r7.w * r2.x);
      let v_211 = fma(r2.xxx, cb3_3.tint_symbol_2[22u].xyz, r8.xzw);
      r8 = vec4<f32>(v_211.x, r8.y, v_211.yz);
    }
  }
  r2.x = (r7.x * r7.x);
  r1.z = (r1.z * r1.z);
  let v_212 = (r8.xzw * r1.zzz);
  r2 = vec4<f32>(r2.x, v_212.xyz);
  let v_213 = fma(r2.xxx, r9.yzw, r2.yzw);
  r2 = vec4<f32>(v_213.xyz, r2.w);
  let v_214 = fma(r5.xyz, r5.www, r2.xyz);
  r2 = vec4<f32>(v_214.xyz, r2.w);
  r1.y = fma(r4.z, r1.y, cb3_3.tint_symbol_2[43u].w);
  r1.y = (r1.y * cb3_3.tint_symbol_2[44u].w);
  r1.y = max(r1.y, 0.0f);
  let v_215 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_215.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_216 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(r7.x, v_216.xyz);
  let v_217 = (r7.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(r7.x, v_217.xyz);
  let v_218 = fma(r5.xyz, r1.zzz, r7.yzw);
  r5 = vec4<f32>(v_218.xyz, r5.w);
  let v_219 = (r1.www * r5.xyz);
  r5 = vec4<f32>(v_219.xyz, r5.w);
  let v_220 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(r7.x, v_220.xyz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_221 = dot(r8.xyz, r4.xyw);
  r1.y = clamp(vec4<f32>(v_221, v_221, v_221, v_221).y, 0.0f, 1.0f);
  let v_222 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.yyy, r7.yzw);
  r7 = vec4<f32>(r7.x, v_222.xyz);
  let v_223 = fma(r7.yzw, r1.xxx, r5.xyz);
  r5 = vec4<f32>(v_223.xyz, r5.w);
  let v_224 = (r7.xxx * r5.xyz);
  r5 = vec4<f32>(v_224.xyz, r5.w);
  let v_225 = fma(r5.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_225.xyz, r0.w);
  r1.y = ((-(r7.xxxx)).y + 1.0f);
  r1.z = dot((-(r3.xyzx)).xyz, r4.xyw);
  r1.z = (r1.z + r1.z);
  let v_226 = -(r1.zzzz);
  let v_227 = -(r3.xyzx);
  let v_228 = fma(r4.xyw, v_226.xyz, v_227.xyz);
  r2 = vec4<f32>(v_228.xyz, r2.w);
  let v_229 = clamp(((r3.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_229.xy, r3.zw);
  r1.z = ((-(r3.xxxx)).z + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.z * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.w)));
  r3.z = fma(r1.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.z = (r1.z * r1.z);
  r1.z = fma(r1.z, 5.0f, r2.w);
  let v_230 = bitcast<u32>(r3.x);
  let v_231 = r3.z;
  r1.z = select(r1.z, v_231, (v_230 != 0u));
  let v_232 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_232.xy, r2.z, v_232.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_233 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_233.xy, r2.z, v_233.z);
  let v_234 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_234.xy, r2.z, v_234.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_235 = bitcast<vec2<u32>>(r2.zz);
  let v_236 = r2.xy;
  let v_237 = select(r2.wy, v_236, (v_235 != vec2<u32>()));
  r2 = vec4<f32>(v_237.xy, r2.zw);
  let v_238 = r1.z;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_238);
  r1.x = max(r1.w, r1.x);
  let v_239 = (r1.xxx * r2.xyz);
  r1 = vec4<f32>(v_239.x, r1.y, v_239.yz);
  let v_240 = (r3.yyy * r1.xzw);
  r2 = vec4<f32>(v_240.xyz, r2.w);
  let v_241 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_241.xyz, r2.w);
  let v_242 = fma(r1.xzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_242.x, r1.y, v_242.yz);
  let v_243 = fma(r1.xzw, r1.yyy, r0.xyz);
  r0 = vec4<f32>(v_243.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_244 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_244.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_245 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_245 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_246 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_246.xyz, r2.w);
    let v_247 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_247, v_247, v_247, v_247).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_248 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_248, v_248, v_248, v_248).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_249 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_249.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_250 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_250.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_251 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_251.xyz, r2.w);
    let v_252 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_252.xyz, r2.w);
    let v_253 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_253.xyz, r3.w);
    let v_254 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_254.xyz, r2.w);
    let v_255 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_256 = (r2.xyz + v_255.xyz);
    r2 = vec4<f32>(v_256.xyz, r2.w);
    let v_257 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_257.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_258 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_258.xyz, r3.w);
    let v_259 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_259.xy, r1.z, v_259.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_260 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_260.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_261 = -(r0.xyxz);
    let v_262 = fma(r1.xyw, r0.www, v_261.xyw);
    r1 = vec4<f32>(v_262.xy, r1.z, v_262.z);
    let v_263 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_263.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_264 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_264.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_265 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_265 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_266 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_266.xyz, r3.w);
    let v_267 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_267, v_267, v_267, v_267).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_268 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_268, v_268, v_268, v_268).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_269 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_269.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_270 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_270.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_271 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_271.xyz, r3.w);
    let v_272 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_272.xyz, r3.w);
    let v_273 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_273.xyz, r4.w);
    let v_274 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_274.xyz, r3.w);
    let v_275 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_276 = (r3.xyz + v_275.xyz);
    r3 = vec4<f32>(v_276.xyz, r3.w);
    let v_277 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_277.x, r2.y, v_277.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_278 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_278.xyz, r3.w);
    let v_279 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_279.x, r2.y, v_279.yz);
    let v_280 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_280.x, r2.y, v_280.yz);
    let v_281 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_281.xyz, r1.w);
  }
  let v_282 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_282.xyz, o0.w);
}

fn v_3(v_283 : bool) {
  if (v_283) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_284 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v5, v6, v7, v_284);
  return o0;
}
