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
  let v_31 = ((-(v7.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_31.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_32 = (r0.www * r3.xyz);
  r5 = vec4<f32>(v_32.xyz, r5.w);
  let v_33 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_34 = fma(r3.xyz, r0.www, v_33.xyz);
  r6 = vec4<f32>(v_34.xyz, r6.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_35 = (r0.www * r6.xyz);
  r6 = vec4<f32>(v_35.xyz, r6.w);
  let v_36 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_36.xy, r2.zw);
  r0.w = fma(r3.w, cb12_12.tint_symbol_4[0u].z, -500.0f);
  r0.w = max(r0.w, 0.0f);
  let v_37 = -(r0.wwww);
  r1.w = fma(r3.w, cb12_12.tint_symbol_4[0u].z, v_37.w);
  r0.w = (r0.w * 558.0f);
  r0.w = fma(r1.w, 3.0f, r0.w);
  r1.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_38 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_38.xyz, r3.w);
  let v_39 = (r3.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_39.xyz, r7.w);
  let v_40 = fma(r3.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  let v_41 = fma(r3.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  let v_42 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_42.xyz, r8.w);
  let v_43 = &(x0[0u]);
  let v_44 = r8;
  *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
  let v_45 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_45.xyz, r9.w);
  let v_46 = &(x0[1u]);
  let v_47 = r9;
  *(v_46) = vec4<f32>(v_47.xyz, (*(v_46)).w);
  let v_48 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_48.xyz, r10.w);
  let v_49 = &(x0[2u]);
  let v_50 = r10;
  *(v_49) = vec4<f32>(v_50.xyz, (*(v_49)).w);
  let v_51 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_51.xyz, r7.w);
  let v_52 = &(x0[3u]);
  let v_53 = r7;
  *(v_52) = vec4<f32>(v_53.xyz, (*(v_52)).w);
  let v_54 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_55 = r11;
  r11 = vec4<f32>(v_55.x, v_54.x, v_55.z, v_54.y);
  r2.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r2.z = (r2.z * 0.5f);
  let v_56 = abs(r10.yyyy);
  r2.w = max(v_56.w, abs(r10.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r2.z)));
  let v_57 = (bitcast<u32>(r2.w) != 0u);
  let v_58 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r2.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_58, v_57);
  let v_59 = abs(r9.yyyy);
  r3.w = max(v_59.w, abs(r9.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.z)));
  let v_60 = bitcast<u32>(r3.w);
  r2.w = select(r2.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_60 != 0u));
  let v_61 = abs(r8.yyyy);
  r3.w = max(v_61.w, abs(r8.xxxx).w);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.z)));
  let v_62 = bitcast<u32>(r2.z);
  r2.z = select(r2.w, 0.0f, (v_62 != 0u));
  let v_63 = x0[bitcast<i32>(r2.z)];
  r8 = vec4<f32>(v_63.xyz, r8.w);
  r2.z = f32(bitcast<i32>(r2.z));
  r2.w = (r2.z + 0.5f);
  r2.w = (r2.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.zzzz)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r2.z = dot(r9, cb6_6.tint_symbol_6[12u]);
  r3.w = dot(r9, cb6_6.tint_symbol_6[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r2.z == 0.0f))));
  r2.z = ((-(r2.zzzz)).z + r8.z);
  let v_64 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_64.xy, r10.z, v_64.z);
  r10.z = dpdx(r2.z);
  let v_65 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_65.xyz, r12.w);
  r12.w = dpdy(r2.z);
  let v_66 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_66.xy);
  let v_67 = -(r7.zwzz);
  let v_68 = fma(r10.xz, r12.xz, v_67.xy);
  r13 = vec4<f32>(v_68.xy, r13.zw);
  r5.w = (1.0f / r13.x);
  r6.w = (r10.z * r12.y);
  let v_69 = -(r6.wwww);
  r13.z = fma(r10.x, r12.w, v_69.z);
  let v_70 = (r5.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_70.xy);
  let v_71 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_71.xy);
  let v_72 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_72.xy);
  r2.z = fma((-(r3.wwww)).z, r7.z, r2.z);
  r2.z = fma((-(r3.wwww)).z, r7.w, r2.z);
  let v_73 = bitcast<u32>(r2.w);
  let v_74 = r2.z;
  r11.z = select(r8.z, v_74, (v_73 != 0u));
  r9.z = 0.0f;
  let v_75 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_75.xyz, r8.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_77.xyz, r10.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_79.xyz, r12.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_81.xyz, r13.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_83.xyz, r14.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_85.xyz, r15.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_86.xy, r11.zw);
  let v_87 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_87.xyz, r16.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_88.xy, r11.zw);
  let v_89 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_89.xyz, r17.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_90.xy, r11.zw);
  let v_91 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_91.xyz, r18.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_92.xy, r11.zw);
  let v_93 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_93.xyz, r19.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_94.xy, r11.zw);
  let v_95 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_95.xyz, r20.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_96.xy, r11.zw);
  let v_97 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_97.xyz, r21.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_98.xy, r11.zw);
  let v_99 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_99.xyz, r22.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_100.xy, r11.zw);
  let v_101 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_101.xyz, r23.w);
  let v_102 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_102.xy, r11.zw);
  let v_103 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_103.xyz, r24.w);
  let v_104 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_104.xy, r11.zw);
  let v_105 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_105.xyz, r9.w);
  let v_106 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_106.xy, r8.z);
  let v_107 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_107.xy, r10.z);
  let v_108 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_108.xy, r12.z);
  let v_109 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_109.xy, r13.z);
  let v_110 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_110.xy, r14.z);
  let v_111 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_111.xy, r15.z);
  let v_112 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_112.xy, r16.z);
  let v_113 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_113.xy, r17.z);
  let v_114 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_114.xy, r18.z);
  let v_115 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_115.xy, r19.z);
  let v_116 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_116.xy, r20.z);
  let v_117 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_117.xy, r21.z);
  let v_118 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_118.xy, r22.z);
  let v_119 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_119.xy, r23.z);
  let v_120 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_120.xy, r24.z);
  let v_121 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_121.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r2.z = dot(r8, vec4<f32>(1.0f));
  r1.w = clamp(fma(r1.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_122 = abs(r7.yyyy);
  r2.w = max(v_122.w, abs(r7.xxxx).w);
  r2.w = clamp(fma(r2.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = (r2.w * r1.w);
  r1.w = fma(r2.z, 0.0625f, r1.w);
  r1 = (r1 * r1);
  r1.w = min(r1.w, 1.0f);
  r2.z = clamp(fma(v7.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).z, 0.0f, 1.0f);
  r2.z = sqrt(r2.z);
  r2.z = (r2.z * cb6_6.tint_symbol_6[3u].z);
  let v_123 = -(r1.wwww);
  r1.w = fma(r2.z, v_123.w, r1.w);
  let v_124 = dot(r4.xyw, v_33.xyz);
  r2.z = clamp(vec4<f32>(v_124, v_124, v_124, v_124).z, 0.0f, 1.0f);
  let v_125 = dot(r5.xyz, r4.xyw);
  r7.x = clamp(vec4<f32>(v_125, v_125, v_125, v_125).x, 0.0f, 1.0f);
  let v_126 = dot(r6.xyz, v_33.xyz);
  r7.y = clamp(vec4<f32>(v_126, v_126, v_126, v_126).y, 0.0f, 1.0f);
  let v_127 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_127.xy, r7.zw);
  let v_128 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_128.xy);
  let v_129 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_129.xy);
  let v_130 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_130.xy, r7.zw);
  r2.w = ((-(cb12_12.tint_symbol_4[0u].yyyy)).w + 1.0f);
  let v_131 = fma(cb12_12.tint_symbol_4[0u].yy, r7.xy, r2.ww);
  r7 = vec4<f32>(v_131.xy, r7.zw);
  let v_132 = (r0.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_132.xy);
  r2.w = (r7.z * 0.125f);
  r3.w = fma((-(r0.zzzz)).w, r7.x, 1.0f);
  r5.w = dot(r4.xyw, r6.xyz);
  r5.w = clamp(((r5.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r5.w = log2(r5.w);
  r5.w = (r5.w * r7.w);
  r5.w = exp2(r5.w);
  r5.w = (r7.y * r5.w);
  r2.w = (r2.w * r5.w);
  r0.z = (r0.z * r2.w);
  r0.z = (r2.z * r0.z);
  r2.z = (r2.z * r3.w);
  let v_133 = fma(r1.xyz, r2.zzz, r0.zzz);
  r6 = vec4<f32>(v_133.xyz, r6.w);
  let v_134 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_134.xyz, r6.w);
  r0.y = fma(r4.z, r0.y, cb3_3.tint_symbol_2[43u].w);
  r0.y = (r0.y * cb3_3.tint_symbol_2[44u].w);
  r0.y = max(r0.y, 0.0f);
  let v_135 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(v_135.xyz, r7.w);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_136 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_136.xyz, r8.w);
  let v_137 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_137.xyz, r8.w);
  let v_138 = fma(r7.xyz, r0.zzz, r8.xyz);
  r7 = vec4<f32>(v_138.xyz, r7.w);
  let v_139 = (r2.yyy * r7.xyz);
  r7 = vec4<f32>(v_139.xyz, r7.w);
  let v_140 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r8 = vec4<f32>(v_140.xyz, r8.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_141 = dot(r9.xyz, r4.xyw);
  r0.y = clamp(vec4<f32>(v_141, v_141, v_141, v_141).y, 0.0f, 1.0f);
  let v_142 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.yyy, r8.xyz);
  r8 = vec4<f32>(v_142.xyz, r8.w);
  let v_143 = fma(r8.xyz, r2.xxx, r7.xyz);
  r7 = vec4<f32>(v_143.xyz, r7.w);
  let v_144 = (r3.www * r7.xyz);
  r7 = vec4<f32>(v_144.xyz, r7.w);
  let v_145 = (r1.xyz * r7.xyz);
  r1 = vec4<f32>(v_145.xyz, r1.w);
  let v_146 = fma(r6.xyz, r1.www, r1.xyz);
  r1 = vec4<f32>(v_146.xyz, r1.w);
  r0.y = ((-(r3.wwww)).y + 1.0f);
  r0.z = dot((-(r5.xyzx)).xyz, r4.xyw);
  r0.z = (r0.z + r0.z);
  let v_147 = -(r0.zzzz);
  let v_148 = -(r5.xyzx);
  let v_149 = fma(r4.xyw, v_147.xyz, v_148.xyz);
  r4 = vec4<f32>(v_149.xyz, r4.w);
  let v_150 = clamp(((r0.wwww * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(r0.xy, v_150.xy);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r1.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.z = (r0.z * cb5_5.tint_symbol_3[6u].z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r1.w)));
  r2.w = fma(r0.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.z = (r0.z * r0.z);
  r0.z = fma(r0.z, 5.0f, r1.w);
  let v_151 = bitcast<u32>(r2.z);
  let v_152 = r2.w;
  r0.z = select(r0.z, v_152, (v_151 != 0u));
  let v_153 = (r4.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_153.xy, r4.z, v_153.z);
  r1.w = (abs(r4.zzzz).w + 1.0f);
  let v_154 = (r4.xyw / r1.www);
  r4 = vec4<f32>(v_154.xy, r4.z, v_154.z);
  let v_155 = ((-(r4.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_155.xy, r4.z, v_155.z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.z)));
  let v_156 = bitcast<vec2<u32>>(r1.ww);
  let v_157 = r4.xy;
  let v_158 = select(r4.wy, v_157, (v_156 != vec2<u32>()));
  r2 = vec4<f32>(r2.xy, v_158.xy);
  let v_159 = r0.z;
  r4 = textureSampleLevel(t1, s1, r2.zwzz.xy, v_159);
  r0.z = max(r2.y, r2.x);
  let v_160 = (r0.zzz * r4.xyz);
  r2 = vec4<f32>(v_160.xyz, r2.w);
  let v_161 = (r0.www * r2.xyz);
  r4 = vec4<f32>(v_161.xyz, r4.w);
  let v_162 = (r4.xyz * vec3<f32>(0.68169009685516357422f));
  r4 = vec4<f32>(v_162.xyz, r4.w);
  let v_163 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r4.xyz);
  r2 = vec4<f32>(v_163.xyz, r2.w);
  let v_164 = fma(r2.xyz, r0.yyy, r1.xyz);
  r0 = vec4<f32>(r0.x, v_164.xyz);
  o0.w = (r0.x * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.x = dot(r3.xyz, r3.xyz);
    r1.x = sqrt(r0.x);
    let v_165 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_165.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r3.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_166 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_166 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.x = inverseSqrt(r0.x);
    let v_167 = (r0.xxx * r3.xyz);
    r2 = vec4<f32>(v_167.xyz, r2.w);
    let v_168 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.x = clamp(vec4<f32>(v_168, v_168, v_168, v_168).x, 0.0f, 1.0f);
    r0.x = log2(r0.x);
    r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
    r0.x = exp2(r0.x);
    let v_169 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_169, v_169, v_169, v_169).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_170 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_170.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_171 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_171.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_172 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_172.xyz, r2.w);
    let v_173 = fma(r0.xxx, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_173.xyz, r2.w);
    let v_174 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_174.xyz, r4.w);
    let v_175 = fma(r1.www, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_175.xyz, r2.w);
    let v_176 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_177 = (r2.xyz + v_176.xyz);
    r2 = vec4<f32>(v_177.xyz, r2.w);
    let v_178 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_178.xyz, r2.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_179 = ((-(r2.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_179.xyz, r4.w);
    let v_180 = fma(r1.xxx, r4.xyz, r2.xyz);
    r1 = vec4<f32>(v_180.xy, r1.z, v_180.z);
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.x) != 0u)) {
      let v_181 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_181.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.x = (r2.x + -1.0f);
      r0.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r0.x = 1.0f;
    }
    let v_182 = -(r0.yzyw);
    let v_183 = fma(r1.xyw, r0.xxx, v_182.xyw);
    r1 = vec4<f32>(v_183.xy, r1.z, v_183.z);
    let v_184 = fma(r1.zzz, r1.xyw, r0.yzw);
    r1 = vec4<f32>(v_184.xyz, r1.w);
  } else {
    r0.x = dot(r3.xyz, r3.xyz);
    r1.w = sqrt(r0.x);
    let v_185 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_185.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r3.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_186 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_186 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.x = inverseSqrt(r0.x);
    let v_187 = (r0.xxx * r3.xyz);
    r3 = vec4<f32>(v_187.xyz, r3.w);
    let v_188 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.x = clamp(vec4<f32>(v_188, v_188, v_188, v_188).x, 0.0f, 1.0f);
    r0.x = log2(r0.x);
    r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
    r0.x = exp2(r0.x);
    let v_189 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_189, v_189, v_189, v_189).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_190 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_190.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_191 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_191.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_192 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_192.xyz, r3.w);
    let v_193 = fma(r0.xxx, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_193.xyz, r3.w);
    let v_194 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_194.xyz, r4.w);
    let v_195 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_195.xyz, r3.w);
    let v_196 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_197 = (r3.xyz + v_196.xyz);
    r3 = vec4<f32>(v_197.xyz, r3.w);
    let v_198 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_198.x, r2.y, v_198.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_199 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_199.xyz, r3.w);
    let v_200 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_200.x, r2.y, v_200.yz);
    let v_201 = ((-(r0.yyzw)).xzw + r2.xzw);
    r2 = vec4<f32>(v_201.x, r2.y, v_201.yz);
    let v_202 = fma(r2.yyy, r2.xzw, r0.yzw);
    r1 = vec4<f32>(v_202.xyz, r1.w);
  }
  let v_203 = log2(r1.xyz);
  r0 = vec4<f32>(v_203.xyz, r0.w);
  let v_204 = (r0.xyz * vec3<f32>(0.45454546809196472168f));
  r0 = vec4<f32>(v_204.xyz, r0.w);
  let v_205 = exp2(r0.xyz);
  o0 = vec4<f32>(v_205.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_206 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v5, v6, v7, v_206);
  return o0;
}
