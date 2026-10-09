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

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb5_struct;

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

struct cb47_struct {
  tint_symbol_6 : array<vec4<f32>, 47u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb47_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_depth_cube;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

@group(1u) @binding(56u) var t24 : texture_depth_2d;

@group(1u) @binding(57u) var t25 : texture_depth_cube;

@group(1u) @binding(58u) var t26 : texture_depth_2d;

@group(1u) @binding(59u) var t27 : texture_depth_cube;

@group(1u) @binding(60u) var t28 : texture_depth_2d;

@group(1u) @binding(61u) var t29 : texture_depth_cube;

@group(1u) @binding(62u) var t30 : texture_depth_2d;

@group(1u) @binding(63u) var t31 : texture_depth_cube;

@group(1u) @binding(64u) var t32 : texture_depth_2d;

@group(1u) @binding(65u) var t33 : texture_depth_cube;

@group(1u) @binding(66u) var t34 : texture_depth_2d;

@group(1u) @binding(67u) var t35 : texture_depth_cube;

@group(1u) @binding(68u) var t36 : texture_depth_2d;

@group(1u) @binding(69u) var t37 : texture_depth_cube;

@group(1u) @binding(70u) var t38 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v0.xy.xyxx.xy);
  r1 = textureSample(t4, s4, v0.xy.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_5[0u].x, 0.00100000004749745131f);
  let v_4 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_6.xy, r1.z, v_6.z);
  let v_7 = fma(r1.zzz, v1.xyz, r1.xyw);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_8 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r3 = textureSample(t5, s5, v0.xy.xyxx.xy);
  let v_9 = (r3.xy * r3.xy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r1.x = (r1.x * cb10_10.tint_symbol_5[0u].w);
  r0.w = (r0.w * v3.w);
  let v_10 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_10.xy, r3.zw);
  r2.w = fma(r2.z, 0.5f, 0.5f);
  r4.x = fma(r2.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r4.y = (r2.w + 0.30000001192092895508f);
  let v_11 = (r3.xy * r4.xy);
  r3 = vec4<f32>(v_11.xy, r3.zw);
  let v_12 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = -(v2.xyzx);
  let v_14 = (v_13.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_15 = (r2.www * r4.xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_17 = fma(r4.xyz, r2.www, v_16.xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  r3.z = dot(r6.xyz, r6.xyz);
  r3.z = inverseSqrt(r3.z);
  let v_18 = (r3.zzz * r6.xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  r1.x = clamp(r1.xxxx.x, 0.0f, 1.0f);
  r3.z = fma(r1.y, cb10_10.tint_symbol_5[0u].z, -500.0f);
  r3.z = max(r3.z, 0.0f);
  let v_19 = -(r3.zzzz);
  r1.y = fma(r1.y, cb10_10.tint_symbol_5[0u].z, v_19.y);
  r3.z = (r3.z * 558.0f);
  r1.y = fma(r1.y, 3.0f, r3.z);
  r3.z = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_20 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_20.xyz, r7.w);
  let v_21 = (r7.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r8 = vec4<f32>(v_21.xyz, r8.w);
  let v_22 = fma(r7.xxx, cb6_6.tint_symbol_6[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_22.xyz, r8.w);
  let v_23 = fma(r7.zzz, cb6_6.tint_symbol_6[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_23.xyz, r8.w);
  let v_24 = fma(r8.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r9 = vec4<f32>(v_24.xyz, r9.w);
  let v_25 = &(x0[0u]);
  let v_26 = r9;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  let v_27 = fma(r8.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r10 = vec4<f32>(v_27.xyz, r10.w);
  let v_28 = &(x0[1u]);
  let v_29 = r10;
  *(v_28) = vec4<f32>(v_29.xyz, (*(v_28)).w);
  let v_30 = fma(r8.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r11 = vec4<f32>(v_30.xyz, r11.w);
  let v_31 = &(x0[2u]);
  let v_32 = r11;
  *(v_31) = vec4<f32>(v_32.xyz, (*(v_31)).w);
  let v_33 = fma(r8.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r8 = vec4<f32>(v_33.xyz, r8.w);
  let v_34 = &(x0[3u]);
  let v_35 = r8;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_37 = r12;
  r12 = vec4<f32>(v_37.x, v_36.x, v_37.z, v_36.y);
  r3.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_38 = abs(r11.yyyy);
  r4.w = max(v_38.w, abs(r11.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_39 = (bitcast<u32>(r4.w) != 0u);
  let v_40 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_40, v_39);
  let v_41 = abs(r10.yyyy);
  r5.w = max(v_41.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_42 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_42 != 0u));
  let v_43 = abs(r9.yyyy);
  r5.w = max(v_43.w, abs(r9.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_44 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_44 != 0u));
  let v_45 = x0[bitcast<i32>(r3.w)];
  r9 = vec4<f32>(v_45.xyz, r9.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.w = (r3.w + 0.5f);
  r4.w = (r4.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r3.w = dot(r10, cb6_6.tint_symbol_6[12u]);
  r5.w = dot(r10, cb6_6.tint_symbol_6[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r9.z);
  let v_46 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_46.xy, r11.z, v_46.z);
  r11.z = dpdx(r3.w);
  let v_47 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_47.xyz, r13.w);
  r13.w = dpdy(r3.w);
  let v_48 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_48.xy);
  let v_49 = -(r8.zwzz);
  let v_50 = fma(r11.xz, r13.xz, v_49.xy);
  r14 = vec4<f32>(v_50.xy, r14.zw);
  r6.w = (1.0f / r14.x);
  r7.w = (r11.z * r13.y);
  let v_51 = -(r7.wwww);
  r14.z = fma(r11.x, r13.w, v_51.z);
  let v_52 = (r6.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_52.xy);
  let v_53 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_53.xy);
  let v_54 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_54.xy);
  r3.w = fma((-(r5.wwww)).w, r8.z, r3.w);
  r3.w = fma((-(r5.wwww)).w, r8.w, r3.w);
  let v_55 = bitcast<u32>(r4.w);
  let v_56 = r3.w;
  r12.z = select(r9.z, v_56, (v_55 != 0u));
  r10.z = 0.0f;
  let v_57 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_57.xyz, r9.w);
  let v_58 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_58.xy, r12.zw);
  let v_59 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_59.xyz, r11.w);
  let v_60 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_60.xy, r12.zw);
  let v_61 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_61.xyz, r13.w);
  let v_62 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_62.xy, r12.zw);
  let v_63 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_63.xyz, r14.w);
  let v_64 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_64.xy, r12.zw);
  let v_65 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_65.xyz, r15.w);
  let v_66 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_66.xy, r12.zw);
  let v_67 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_67.xyz, r16.w);
  let v_68 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_68.xy, r12.zw);
  let v_69 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_69.xyz, r17.w);
  let v_70 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_70.xy, r12.zw);
  let v_71 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_71.xyz, r18.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_72.xy, r12.zw);
  let v_73 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_73.xyz, r19.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_74.xy, r12.zw);
  let v_75 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_75.xyz, r20.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_76.xy, r12.zw);
  let v_77 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_77.xyz, r21.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_79.xyz, r22.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_81.xyz, r23.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_83.xyz, r24.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_85.xyz, r25.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_86.xy, r12.zw);
  let v_87 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_87.xyz, r10.w);
  let v_88 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_88.xy, r9.z);
  let v_89 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_89.xy, r11.z);
  let v_90 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_90.xy, r13.z);
  let v_91 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_91.xy, r14.z);
  let v_92 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_92.xy, r15.z);
  let v_93 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_93.xy, r16.z);
  let v_94 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_94.xy, r17.z);
  let v_95 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_95.xy, r18.z);
  let v_96 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_96.xy, r19.z);
  let v_97 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_97.xy, r20.z);
  let v_98 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_98.xy, r21.z);
  let v_99 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_99.xy, r22.z);
  let v_100 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_100.xy, r23.z);
  let v_101 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_101.xy, r24.z);
  let v_102 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_102.xy, r25.z);
  let v_103 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_103.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r3.w = dot(r9, vec4<f32>(1.0f));
  r3.z = clamp(fma(r3.zzzz, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).z, 0.0f, 1.0f);
  let v_104 = abs(r8.yyyy);
  r4.w = max(v_104.w, abs(r8.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.z = ((-(r3.zzzz)).z + 1.0f);
  r3.z = (r4.w * r3.z);
  r3.z = fma(r3.w, 0.0625f, r3.z);
  let v_105 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_105.xyz, r3.w);
  r3.z = min(r3.z, 1.0f);
  r3.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_6[3u].z);
  let v_106 = -(r3.zzzz);
  r3.z = fma(r3.w, v_106.z, r3.z);
  let v_107 = dot(r2.xyz, v_16.xyz);
  r3.w = clamp(vec4<f32>(v_107, v_107, v_107, v_107).w, 0.0f, 1.0f);
  let v_108 = dot(r5.xyz, r2.xyz);
  r8.x = clamp(vec4<f32>(v_108, v_108, v_108, v_108).x, 0.0f, 1.0f);
  let v_109 = dot(r6.xyz, v_16.xyz);
  r8.y = clamp(vec4<f32>(v_109, v_109, v_109, v_109).y, 0.0f, 1.0f);
  let v_110 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_110.xy, r8.zw);
  let v_111 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_111.xy);
  let v_112 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_112.xy);
  let v_113 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_113.xy, r8.zw);
  r4.w = ((-(cb10_10.tint_symbol_5[0u].yyyy)).w + 1.0f);
  let v_114 = fma(cb10_10.tint_symbol_5[0u].yy, r8.xy, r4.ww);
  r8 = vec4<f32>(v_114.xy, r8.zw);
  let v_115 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_115.xy);
  r5.w = (r8.z * 0.125f);
  r6.w = fma((-(r1.xxxx)).w, r8.x, 1.0f);
  r6.x = dot(r2.xyz, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r8.w);
  r6.x = exp2(r6.x);
  r6.x = (r8.y * r6.x);
  r6.x = (r5.w * r6.x);
  r6.x = (r1.x * r6.x);
  r6.x = (r3.w * r6.x);
  r3.w = (r3.w * r6.w);
  let v_116 = fma(r0.xyz, r3.www, r6.xxx);
  r6 = vec4<f32>(v_116.xyz, r6.w);
  let v_117 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_117.xyz, r6.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_118 = (v_13.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_118.xyz, r8.w);
    let v_119 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_119.xyz, r9.w);
    r9.x = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[19u].wwww)).x, 0.0f, 1.0f);
    r9.x = (r9.x * cb3_3.tint_symbol_2[19u].w);
    let v_120 = fma(cb3_3.tint_symbol_2[11u].xyz, r9.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_120.xyz, r9.w);
    let v_121 = (r9.xyz + v_13.xyz);
    r9 = vec4<f32>(v_121.xyz, r9.w);
    let v_122 = bitcast<vec3<u32>>(r7.www);
    let v_123 = r8.xyz;
    let v_124 = select(r9.xyz, v_123, (v_122 != vec3<u32>()));
    r8 = vec4<f32>(v_124.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    let v_125 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_125.xyz, r8.w);
    r9.x = dot(r8.xyz, r8.xyz);
    r9.x = inverseSqrt(r9.x);
    let v_126 = (r8.xyz * r9.xxx);
    r8 = vec4<f32>(v_126.xyz, r8.w);
    r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r9.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[11u].w);
    r7.w = (r7.w / r9.x);
    let v_127 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.x = dot(r8.xyz, v_127.xyz);
    r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_128 = dot(r8.xyz, r2.xyz);
    r9.y = clamp(vec4<f32>(v_128, v_128, v_128, v_128).y, 0.0f, 1.0f);
    r9.z = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[15u].w == 0.0f))));
    if ((bitcast<u32>(r9.z) != 0u)) {
      let v_129 = (r7.xyz + cb6_6.tint_symbol_6[18u].xyz);
      r10 = vec4<f32>(v_129.xyz, r10.w);
      r11.x = dot(r10.xyz, cb6_6.tint_symbol_6[15u].xyz);
      r11.y = dot(r10.xyz, cb6_6.tint_symbol_6[16u].xyz);
      r11.z = dot(r10.xyz, cb6_6.tint_symbol_6[17u].xyz);
      r9.z = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[15u].w == 3.0f))));
      if ((bitcast<u32>(r9.z) != 0u)) {
        let v_130 = (-(r11.xyzx)).xyz;
        r12 = vec4<f32>(v_130.xyz, r12.w);
        r9.z = dot(r12.xyz, r12.xyz);
        r9.z = sqrt(r9.z);
        r9.z = (r9.z * cb6_6.tint_symbol_6[17u].w);
        let v_131 = r12.xyzx;
        r9.z = textureSampleCompareLevel(t14, s14, v_131.xyz, r9.z);
      } else {
        let v_132 = -(r11.zzzz);
        let v_133 = (r11.xy / v_132.xy);
        r11 = vec4<f32>(v_133.xy, r11.zw);
        let v_134 = fma(r11.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
        r11 = vec4<f32>(v_134.xy, r11.zw);
        r9.w = dot(r10.xyz, r10.xyz);
        r9.w = sqrt(r9.w);
        r9.w = (r9.w * cb6_6.tint_symbol_6[17u].w);
        let v_135 = r11.xyxx;
        r9.z = textureSampleCompareLevel(t24, s14, v_135.xy, r9.w);
      }
    } else {
      r9.z = 1.0f;
    }
    r9.w = (r9.y * r9.z);
    r9.w = (r9.x * r9.w);
    r9.w = (r7.w * r9.w);
    let v_136 = (r9.www * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_136.xyz, r10.w);
    let v_137 = (r0.xyz * r10.xyz);
    r10 = vec4<f32>(v_137.xyz, r10.w);
    let v_138 = fma(r4.xyz, r2.www, r8.xyz);
    r8 = vec4<f32>(v_138.xyz, r8.w);
    r9.w = dot(r8.xyz, r8.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_139 = (r8.xyz * r9.www);
    r8 = vec4<f32>(v_139.xyz, r8.w);
    let v_140 = dot(r8.xyz, r5.xyz);
    r9.w = clamp(vec4<f32>(v_140, v_140, v_140, v_140).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.w = (r9.w * r9.w);
    r10.w = (r10.w * r10.w);
    r9.w = (r9.w * r10.w);
    r9.w = fma(cb10_10.tint_symbol_5[0u].y, r9.w, r4.w);
    let v_141 = dot(r8.xyz, r2.xyz);
    r8.x = clamp(vec4<f32>(v_141, v_141, v_141, v_141).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.w);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.w);
    r8.x = (r8.x * r9.z);
    r8.y = (r9.x * r9.y);
    r8.x = (r8.y * r8.x);
    r7.w = (r7.w * r8.x);
    r7.w = (r5.w * r7.w);
    let v_142 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_142.xyz, r8.w);
  }
  r7.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.w) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    if ((bitcast<u32>(r7.w) != 0u)) {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_143 = (v_13.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_143.xyz, r9.w);
      let v_144 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_144.xyz, r11.w);
      r9.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[20u].w);
      let v_145 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_145.xyz, r11.w);
      let v_146 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_146.xyz, r11.w);
      let v_147 = bitcast<vec3<u32>>(r7.www);
      let v_148 = r9.xyz;
      let v_149 = select(r11.xyz, v_148, (v_147 != vec3<u32>()));
      r9 = vec4<f32>(v_149.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      let v_150 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_150.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_151 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_151.xyz, r9.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r7.w, cb3_3.tint_symbol_2[12u].w);
      r7.w = (r7.w / r9.w);
      let v_152 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.w = dot(r9.xyz, v_152.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_153 = dot(r9.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_153, v_153, v_153, v_153).w, 0.0f, 1.0f);
      r11.x = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[19u].w == 0.0f))));
      if ((bitcast<u32>(r11.x) != 0u)) {
        let v_154 = (r7.xyz + cb6_6.tint_symbol_6[22u].xyz);
        r11 = vec4<f32>(v_154.xyz, r11.w);
        r12.x = dot(r11.xyz, cb6_6.tint_symbol_6[19u].xyz);
        r12.y = dot(r11.xyz, cb6_6.tint_symbol_6[20u].xyz);
        r12.z = dot(r11.xyz, cb6_6.tint_symbol_6[21u].xyz);
        r11.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[19u].w == 3.0f))));
        if ((bitcast<u32>(r11.w) != 0u)) {
          let v_155 = (-(r12.xyzx)).xyz;
          r13 = vec4<f32>(v_155.xyz, r13.w);
          r11.w = dot(r13.xyz, r13.xyz);
          r11.w = sqrt(r11.w);
          r11.w = (r11.w * cb6_6.tint_symbol_6[21u].w);
          let v_156 = r13.xyzx;
          r11.w = textureSampleCompareLevel(t25, s14, v_156.xyz, r11.w);
        } else {
          let v_157 = -(r12.zzzz);
          let v_158 = (r12.xy / v_157.xy);
          r12 = vec4<f32>(v_158.xy, r12.zw);
          let v_159 = fma(r12.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
          r12 = vec4<f32>(v_159.xy, r12.zw);
          r11.x = dot(r11.xyz, r11.xyz);
          r11.x = sqrt(r11.x);
          r11.x = (r11.x * cb6_6.tint_symbol_6[21u].w);
          let v_160 = r12.xyxx;
          r11.w = textureSampleCompareLevel(t26, s14, v_160.xy, r11.x);
        }
      } else {
        r11.w = 1.0f;
      }
      r11.x = (r10.w * r11.w);
      r11.x = (r9.w * r11.x);
      r11.x = (r7.w * r11.x);
      let v_161 = (r11.xxx * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_161.xyz, r11.w);
      let v_162 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_162.xyz, r10.w);
      let v_163 = fma(r4.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_163.xyz, r9.w);
      r11.x = dot(r9.xyz, r9.xyz);
      r11.x = inverseSqrt(r11.x);
      let v_164 = (r9.xyz * r11.xxx);
      r9 = vec4<f32>(v_164.xyz, r9.w);
      let v_165 = dot(r9.xyz, r5.xyz);
      r11.x = clamp(vec4<f32>(v_165, v_165, v_165, v_165).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb10_10.tint_symbol_5[0u].y, r11.x, r4.w);
      let v_166 = dot(r9.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_166, v_166, v_166, v_166).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r8.w * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r9.x * r11.w);
      r9.y = (r9.w * r10.w);
      r9.x = (r9.y * r9.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_167 = fma(r7.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_167.xyz, r8.w);
    }
  } else {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_168 = (v_13.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_168.xyz, r9.w);
      let v_169 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      r9.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[21u].w);
      let v_170 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_170.xyz, r11.w);
      let v_171 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_171.xyz, r11.w);
      let v_172 = bitcast<vec3<u32>>(r7.www);
      let v_173 = r9.xyz;
      let v_174 = select(r11.xyz, v_173, (v_172 != vec3<u32>()));
      r9 = vec4<f32>(v_174.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      let v_175 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_175.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_176 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_176.xyz, r9.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r7.w, cb3_3.tint_symbol_2[13u].w);
      r7.w = (r7.w / r9.w);
      let v_177 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.w = dot(r9.xyz, v_177.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_178 = dot(r9.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_178, v_178, v_178, v_178).w, 0.0f, 1.0f);
      r11.x = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[23u].w == 0.0f))));
      if ((bitcast<u32>(r11.x) != 0u)) {
        let v_179 = (r7.xyz + cb6_6.tint_symbol_6[26u].xyz);
        r11 = vec4<f32>(v_179.xyz, r11.w);
        r12.x = dot(r11.xyz, cb6_6.tint_symbol_6[23u].xyz);
        r12.y = dot(r11.xyz, cb6_6.tint_symbol_6[24u].xyz);
        r12.z = dot(r11.xyz, cb6_6.tint_symbol_6[25u].xyz);
        r11.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[23u].w == 3.0f))));
        if ((bitcast<u32>(r11.w) != 0u)) {
          let v_180 = (-(r12.xyzx)).xyz;
          r13 = vec4<f32>(v_180.xyz, r13.w);
          r11.w = dot(r13.xyz, r13.xyz);
          r11.w = sqrt(r11.w);
          r11.w = (r11.w * cb6_6.tint_symbol_6[25u].w);
          let v_181 = r13.xyzx;
          r11.w = textureSampleCompareLevel(t27, s14, v_181.xyz, r11.w);
        } else {
          let v_182 = -(r12.zzzz);
          let v_183 = (r12.xy / v_182.xy);
          r12 = vec4<f32>(v_183.xy, r12.zw);
          let v_184 = fma(r12.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
          r12 = vec4<f32>(v_184.xy, r12.zw);
          r11.x = dot(r11.xyz, r11.xyz);
          r11.x = sqrt(r11.x);
          r11.x = (r11.x * cb6_6.tint_symbol_6[25u].w);
          let v_185 = r12.xyxx;
          r11.w = textureSampleCompareLevel(t28, s14, v_185.xy, r11.x);
        }
      } else {
        r11.w = 1.0f;
      }
      r11.x = (r10.w * r11.w);
      r11.x = (r9.w * r11.x);
      r11.x = (r7.w * r11.x);
      let v_186 = (r11.xxx * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      let v_187 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_187.xyz, r10.w);
      let v_188 = fma(r4.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_188.xyz, r9.w);
      r11.x = dot(r9.xyz, r9.xyz);
      r11.x = inverseSqrt(r11.x);
      let v_189 = (r9.xyz * r11.xxx);
      r9 = vec4<f32>(v_189.xyz, r9.w);
      let v_190 = dot(r9.xyz, r5.xyz);
      r11.x = clamp(vec4<f32>(v_190, v_190, v_190, v_190).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb10_10.tint_symbol_5[0u].y, r11.x, r4.w);
      let v_191 = dot(r9.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_191, v_191, v_191, v_191).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r8.w * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r9.x * r11.w);
      r9.y = (r9.w * r10.w);
      r9.x = (r9.y * r9.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_192 = fma(r7.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_192.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_193 = (v_13.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_193.xyz, r9.w);
      let v_194 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_194.xyz, r11.w);
      r9.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[22u].w);
      let v_195 = fma(cb3_3.tint_symbol_2[14u].xyz, r9.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      let v_196 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_196.xyz, r11.w);
      let v_197 = bitcast<vec3<u32>>(r7.www);
      let v_198 = r9.xyz;
      let v_199 = select(r11.xyz, v_198, (v_197 != vec3<u32>()));
      r9 = vec4<f32>(v_199.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      let v_200 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_200.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_201 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_201.xyz, r9.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r7.w, cb3_3.tint_symbol_2[14u].w);
      r7.w = (r7.w / r9.w);
      let v_202 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r9.w = dot(r9.xyz, v_202.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_203 = dot(r9.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_203, v_203, v_203, v_203).w, 0.0f, 1.0f);
      r11.x = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[27u].w == 0.0f))));
      if ((bitcast<u32>(r11.x) != 0u)) {
        let v_204 = (r7.xyz + cb6_6.tint_symbol_6[30u].xyz);
        r11 = vec4<f32>(v_204.xyz, r11.w);
        r12.x = dot(r11.xyz, cb6_6.tint_symbol_6[27u].xyz);
        r12.y = dot(r11.xyz, cb6_6.tint_symbol_6[28u].xyz);
        r12.z = dot(r11.xyz, cb6_6.tint_symbol_6[29u].xyz);
        r11.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[27u].w == 3.0f))));
        if ((bitcast<u32>(r11.w) != 0u)) {
          let v_205 = (-(r12.xyzx)).xyz;
          r13 = vec4<f32>(v_205.xyz, r13.w);
          r11.w = dot(r13.xyz, r13.xyz);
          r11.w = sqrt(r11.w);
          r11.w = (r11.w * cb6_6.tint_symbol_6[29u].w);
          let v_206 = r13.xyzx;
          r11.w = textureSampleCompareLevel(t29, s14, v_206.xyz, r11.w);
        } else {
          let v_207 = -(r12.zzzz);
          let v_208 = (r12.xy / v_207.xy);
          r12 = vec4<f32>(v_208.xy, r12.zw);
          let v_209 = fma(r12.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
          r12 = vec4<f32>(v_209.xy, r12.zw);
          r11.x = dot(r11.xyz, r11.xyz);
          r11.x = sqrt(r11.x);
          r11.x = (r11.x * cb6_6.tint_symbol_6[29u].w);
          let v_210 = r12.xyxx;
          r11.w = textureSampleCompareLevel(t30, s14, v_210.xy, r11.x);
        }
      } else {
        r11.w = 1.0f;
      }
      r11.x = (r10.w * r11.w);
      r11.x = (r9.w * r11.x);
      r11.x = (r7.w * r11.x);
      let v_211 = (r11.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_211.xyz, r11.w);
      let v_212 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_212.xyz, r10.w);
      let v_213 = fma(r4.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_213.xyz, r9.w);
      r11.x = dot(r9.xyz, r9.xyz);
      r11.x = inverseSqrt(r11.x);
      let v_214 = (r9.xyz * r11.xxx);
      r9 = vec4<f32>(v_214.xyz, r9.w);
      let v_215 = dot(r9.xyz, r5.xyz);
      r11.x = clamp(vec4<f32>(v_215, v_215, v_215, v_215).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb10_10.tint_symbol_5[0u].y, r11.x, r4.w);
      let v_216 = dot(r9.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_216, v_216, v_216, v_216).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r8.w * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r9.x * r11.w);
      r9.y = (r9.w * r10.w);
      r9.x = (r9.y * r9.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_217 = fma(r7.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_217.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_218 = (v_13.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r9 = vec4<f32>(v_218.xyz, r9.w);
      let v_219 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_219.xyz, r11.w);
      r9.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[23u].w);
      let v_220 = fma(cb3_3.tint_symbol_2[15u].xyz, r9.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_220.xyz, r11.w);
      let v_221 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_221.xyz, r11.w);
      let v_222 = bitcast<vec3<u32>>(r7.www);
      let v_223 = r9.xyz;
      let v_224 = select(r11.xyz, v_223, (v_222 != vec3<u32>()));
      r9 = vec4<f32>(v_224.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      let v_225 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_225.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_226 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_226.xyz, r9.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r7.w, cb3_3.tint_symbol_2[15u].w);
      r7.w = (r7.w / r9.w);
      let v_227 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r9.w = dot(r9.xyz, v_227.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_228 = dot(r9.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_228, v_228, v_228, v_228).w, 0.0f, 1.0f);
      r11.x = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[31u].w == 0.0f))));
      if ((bitcast<u32>(r11.x) != 0u)) {
        let v_229 = (r7.xyz + cb6_6.tint_symbol_6[34u].xyz);
        r11 = vec4<f32>(v_229.xyz, r11.w);
        r12.x = dot(r11.xyz, cb6_6.tint_symbol_6[31u].xyz);
        r12.y = dot(r11.xyz, cb6_6.tint_symbol_6[32u].xyz);
        r12.z = dot(r11.xyz, cb6_6.tint_symbol_6[33u].xyz);
        r11.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[31u].w == 3.0f))));
        if ((bitcast<u32>(r11.w) != 0u)) {
          let v_230 = (-(r12.xyzx)).xyz;
          r13 = vec4<f32>(v_230.xyz, r13.w);
          r11.w = dot(r13.xyz, r13.xyz);
          r11.w = sqrt(r11.w);
          r11.w = (r11.w * cb6_6.tint_symbol_6[33u].w);
          let v_231 = r13.xyzx;
          r11.w = textureSampleCompareLevel(t31, s14, v_231.xyz, r11.w);
        } else {
          let v_232 = -(r12.zzzz);
          let v_233 = (r12.xy / v_232.xy);
          r12 = vec4<f32>(v_233.xy, r12.zw);
          let v_234 = fma(r12.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
          r12 = vec4<f32>(v_234.xy, r12.zw);
          r11.x = dot(r11.xyz, r11.xyz);
          r11.x = sqrt(r11.x);
          r11.x = (r11.x * cb6_6.tint_symbol_6[33u].w);
          let v_235 = r12.xyxx;
          r11.w = textureSampleCompareLevel(t32, s14, v_235.xy, r11.x);
        }
      } else {
        r11.w = 1.0f;
      }
      r11.x = (r10.w * r11.w);
      r11.x = (r9.w * r11.x);
      r11.x = (r7.w * r11.x);
      let v_236 = (r11.xxx * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_236.xyz, r11.w);
      let v_237 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_237.xyz, r10.w);
      let v_238 = fma(r4.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_238.xyz, r9.w);
      r11.x = dot(r9.xyz, r9.xyz);
      r11.x = inverseSqrt(r11.x);
      let v_239 = (r9.xyz * r11.xxx);
      r9 = vec4<f32>(v_239.xyz, r9.w);
      let v_240 = dot(r9.xyz, r5.xyz);
      r11.x = clamp(vec4<f32>(v_240, v_240, v_240, v_240).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb10_10.tint_symbol_5[0u].y, r11.x, r4.w);
      let v_241 = dot(r9.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_241, v_241, v_241, v_241).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r8.w * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r9.x * r11.w);
      r9.y = (r9.w * r10.w);
      r9.x = (r9.y * r9.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_242 = fma(r7.www, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_242.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_243 = (v_13.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r9 = vec4<f32>(v_243.xyz, r9.w);
      let v_244 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_244.xyz, r11.w);
      r9.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[24u].w);
      let v_245 = fma(cb3_3.tint_symbol_2[16u].xyz, r9.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_245.xyz, r11.w);
      let v_246 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_246.xyz, r11.w);
      let v_247 = bitcast<vec3<u32>>(r7.www);
      let v_248 = r9.xyz;
      let v_249 = select(r11.xyz, v_248, (v_247 != vec3<u32>()));
      r9 = vec4<f32>(v_249.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      let v_250 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_250.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_251 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_251.xyz, r9.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r7.w, cb3_3.tint_symbol_2[16u].w);
      r7.w = (r7.w / r9.w);
      let v_252 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r9.w = dot(r9.xyz, v_252.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_253 = dot(r9.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_253, v_253, v_253, v_253).w, 0.0f, 1.0f);
      r11.x = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[35u].w == 0.0f))));
      if ((bitcast<u32>(r11.x) != 0u)) {
        let v_254 = (r7.xyz + cb6_6.tint_symbol_6[38u].xyz);
        r11 = vec4<f32>(v_254.xyz, r11.w);
        r12.x = dot(r11.xyz, cb6_6.tint_symbol_6[35u].xyz);
        r12.y = dot(r11.xyz, cb6_6.tint_symbol_6[36u].xyz);
        r12.z = dot(r11.xyz, cb6_6.tint_symbol_6[37u].xyz);
        r11.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[35u].w == 3.0f))));
        if ((bitcast<u32>(r11.w) != 0u)) {
          let v_255 = (-(r12.xyzx)).xyz;
          r13 = vec4<f32>(v_255.xyz, r13.w);
          r11.w = dot(r13.xyz, r13.xyz);
          r11.w = sqrt(r11.w);
          r11.w = (r11.w * cb6_6.tint_symbol_6[37u].w);
          let v_256 = r13.xyzx;
          r11.w = textureSampleCompareLevel(t33, s14, v_256.xyz, r11.w);
        } else {
          let v_257 = -(r12.zzzz);
          let v_258 = (r12.xy / v_257.xy);
          r12 = vec4<f32>(v_258.xy, r12.zw);
          let v_259 = fma(r12.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
          r12 = vec4<f32>(v_259.xy, r12.zw);
          r11.x = dot(r11.xyz, r11.xyz);
          r11.x = sqrt(r11.x);
          r11.x = (r11.x * cb6_6.tint_symbol_6[37u].w);
          let v_260 = r12.xyxx;
          r11.w = textureSampleCompareLevel(t34, s14, v_260.xy, r11.x);
        }
      } else {
        r11.w = 1.0f;
      }
      r11.x = (r10.w * r11.w);
      r11.x = (r9.w * r11.x);
      r11.x = (r7.w * r11.x);
      let v_261 = (r11.xxx * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_261.xyz, r11.w);
      let v_262 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_262.xyz, r10.w);
      let v_263 = fma(r4.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_263.xyz, r9.w);
      r11.x = dot(r9.xyz, r9.xyz);
      r11.x = inverseSqrt(r11.x);
      let v_264 = (r9.xyz * r11.xxx);
      r9 = vec4<f32>(v_264.xyz, r9.w);
      let v_265 = dot(r9.xyz, r5.xyz);
      r11.x = clamp(vec4<f32>(v_265, v_265, v_265, v_265).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb10_10.tint_symbol_5[0u].y, r11.x, r4.w);
      let v_266 = dot(r9.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_266, v_266, v_266, v_266).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r8.w * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r9.x * r11.w);
      r9.y = (r9.w * r10.w);
      r9.x = (r9.y * r9.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_267 = fma(r7.www, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_267.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_268 = (v_13.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r9 = vec4<f32>(v_268.xyz, r9.w);
      let v_269 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_269.xyz, r11.w);
      r9.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[25u].w);
      let v_270 = fma(cb3_3.tint_symbol_2[17u].xyz, r9.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_270.xyz, r11.w);
      let v_271 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_271.xyz, r11.w);
      let v_272 = bitcast<vec3<u32>>(r7.www);
      let v_273 = r9.xyz;
      let v_274 = select(r11.xyz, v_273, (v_272 != vec3<u32>()));
      r9 = vec4<f32>(v_274.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      let v_275 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_275.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_276 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_276.xyz, r9.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r7.w, cb3_3.tint_symbol_2[17u].w);
      r7.w = (r7.w / r9.w);
      let v_277 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r9.w = dot(r9.xyz, v_277.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_278 = dot(r9.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_278, v_278, v_278, v_278).w, 0.0f, 1.0f);
      r11.x = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[39u].w == 0.0f))));
      if ((bitcast<u32>(r11.x) != 0u)) {
        let v_279 = (r7.xyz + cb6_6.tint_symbol_6[42u].xyz);
        r11 = vec4<f32>(v_279.xyz, r11.w);
        r12.x = dot(r11.xyz, cb6_6.tint_symbol_6[39u].xyz);
        r12.y = dot(r11.xyz, cb6_6.tint_symbol_6[40u].xyz);
        r12.z = dot(r11.xyz, cb6_6.tint_symbol_6[41u].xyz);
        r11.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[39u].w == 3.0f))));
        if ((bitcast<u32>(r11.w) != 0u)) {
          let v_280 = (-(r12.xyzx)).xyz;
          r13 = vec4<f32>(v_280.xyz, r13.w);
          r11.w = dot(r13.xyz, r13.xyz);
          r11.w = sqrt(r11.w);
          r11.w = (r11.w * cb6_6.tint_symbol_6[41u].w);
          let v_281 = r13.xyzx;
          r11.w = textureSampleCompareLevel(t35, s14, v_281.xyz, r11.w);
        } else {
          let v_282 = -(r12.zzzz);
          let v_283 = (r12.xy / v_282.xy);
          r12 = vec4<f32>(v_283.xy, r12.zw);
          let v_284 = fma(r12.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
          r12 = vec4<f32>(v_284.xy, r12.zw);
          r11.x = dot(r11.xyz, r11.xyz);
          r11.x = sqrt(r11.x);
          r11.x = (r11.x * cb6_6.tint_symbol_6[41u].w);
          let v_285 = r12.xyxx;
          r11.w = textureSampleCompareLevel(t36, s14, v_285.xy, r11.x);
        }
      } else {
        r11.w = 1.0f;
      }
      r11.x = (r10.w * r11.w);
      r11.x = (r9.w * r11.x);
      r11.x = (r7.w * r11.x);
      let v_286 = (r11.xxx * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_286.xyz, r11.w);
      let v_287 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_287.xyz, r10.w);
      let v_288 = fma(r4.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_288.xyz, r9.w);
      r11.x = dot(r9.xyz, r9.xyz);
      r11.x = inverseSqrt(r11.x);
      let v_289 = (r9.xyz * r11.xxx);
      r9 = vec4<f32>(v_289.xyz, r9.w);
      let v_290 = dot(r9.xyz, r5.xyz);
      r11.x = clamp(vec4<f32>(v_290, v_290, v_290, v_290).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb10_10.tint_symbol_5[0u].y, r11.x, r4.w);
      let v_291 = dot(r9.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_291, v_291, v_291, v_291).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r8.w * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r9.x * r11.w);
      r9.y = (r9.w * r10.w);
      r9.x = (r9.y * r9.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_292 = fma(r7.www, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_292.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_293 = (v_13.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r9 = vec4<f32>(v_293.xyz, r9.w);
      let v_294 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_294.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[26u].w);
      let v_295 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.www, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_295.xyz, r11.w);
      let v_296 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_296.xyz, r11.w);
      let v_297 = bitcast<vec3<u32>>(r3.www);
      let v_298 = r9.xyz;
      let v_299 = select(r11.xyz, v_298, (v_297 != vec3<u32>()));
      r9 = vec4<f32>(v_299.xyz, r9.w);
      r3.w = dot(r9.xyz, r9.xyz);
      let v_300 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_300.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_301 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_301.xyz, r9.w);
      r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r3.w, cb3_3.tint_symbol_2[18u].w);
      r3.w = (r3.w / r7.w);
      let v_302 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.w = dot(r9.xyz, v_302.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_303 = dot(r9.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_303, v_303, v_303, v_303).w, 0.0f, 1.0f);
      r10.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[43u].w == 0.0f))));
      if ((bitcast<u32>(r10.w) != 0u)) {
        let v_304 = (r7.xyz + cb6_6.tint_symbol_6[46u].xyz);
        r11 = vec4<f32>(v_304.xyz, r11.w);
        r12.x = dot(r11.xyz, cb6_6.tint_symbol_6[43u].xyz);
        r12.y = dot(r11.xyz, cb6_6.tint_symbol_6[44u].xyz);
        r12.z = dot(r11.xyz, cb6_6.tint_symbol_6[45u].xyz);
        r10.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_6[43u].w == 3.0f))));
        if ((bitcast<u32>(r10.w) != 0u)) {
          let v_305 = (-(r12.xyzx)).xyz;
          r13 = vec4<f32>(v_305.xyz, r13.w);
          r10.w = dot(r13.xyz, r13.xyz);
          r10.w = sqrt(r10.w);
          r10.w = (r10.w * cb6_6.tint_symbol_6[45u].w);
          let v_306 = r13.xyzx;
          r10.w = textureSampleCompareLevel(t37, s14, v_306.xyz, r10.w);
        } else {
          let v_307 = -(r12.zzzz);
          let v_308 = (r12.xy / v_307.xy);
          r12 = vec4<f32>(v_308.xy, r12.zw);
          let v_309 = fma(r12.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
          r12 = vec4<f32>(v_309.xy, r12.zw);
          r11.x = dot(r11.xyz, r11.xyz);
          r11.x = sqrt(r11.x);
          r11.x = (r11.x * cb6_6.tint_symbol_6[45u].w);
          let v_310 = r12.xyxx;
          r10.w = textureSampleCompareLevel(t38, s14, v_310.xy, r11.x);
        }
      } else {
        r10.w = 1.0f;
      }
      r11.x = (r9.w * r10.w);
      r11.x = (r7.w * r11.x);
      r11.x = (r3.w * r11.x);
      let v_311 = (r11.xxx * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_311.xyz, r11.w);
      let v_312 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_312.xyz, r10.w);
      let v_313 = fma(r4.xyz, r2.www, r9.xyz);
      r4 = vec4<f32>(v_313.xyz, r4.w);
      r2.w = dot(r4.xyz, r4.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_314 = (r2.www * r4.xyz);
      r4 = vec4<f32>(v_314.xyz, r4.w);
      let v_315 = dot(r4.xyz, r5.xyz);
      r2.w = clamp(vec4<f32>(v_315, v_315, v_315, v_315).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r9.x = (r2.w * r2.w);
      r9.x = (r9.x * r9.x);
      r2.w = (r2.w * r9.x);
      r2.w = fma(cb10_10.tint_symbol_5[0u].y, r2.w, r4.w);
      let v_316 = dot(r4.xyz, r2.xyz);
      r4.x = clamp(vec4<f32>(v_316, v_316, v_316, v_316).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r8.w);
      r4.x = exp2(r4.x);
      r2.w = (r2.w * r4.x);
      r2.w = (r2.w * r10.w);
      r4.x = (r7.w * r9.w);
      r2.w = (r2.w * r4.x);
      r2.w = (r3.w * r2.w);
      r2.w = (r5.w * r2.w);
      let v_317 = fma(r2.www, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_317.xyz, r8.w);
    }
  }
  r2.w = (r6.w * r6.w);
  r1.x = (r1.x * r1.x);
  let v_318 = (r8.xyz * r1.xxx);
  r4 = vec4<f32>(v_318.xyz, r4.w);
  let v_319 = fma(r2.www, r10.xyz, r4.xyz);
  r4 = vec4<f32>(v_319.xyz, r4.w);
  let v_320 = fma(r6.xyz, r3.zzz, r4.xyz);
  r4 = vec4<f32>(v_320.xyz, r4.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_321 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_321.xyz, r6.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_322 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_322.xyz, r8.w);
  let v_323 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_323.xyz, r8.w);
  let v_324 = fma(r6.xyz, r1.zzz, r8.xyz);
  r6 = vec4<f32>(v_324.xyz, r6.w);
  let v_325 = (r3.yyy * r6.xyz);
  r6 = vec4<f32>(v_325.xyz, r6.w);
  let v_326 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(v_326.x, r1.y, v_326.yz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_327 = dot(r8.xyz, r2.xyz);
  r2.w = clamp(vec4<f32>(v_327, v_327, v_327, v_327).w, 0.0f, 1.0f);
  let v_328 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.www, r1.xzw);
  r1 = vec4<f32>(v_328.x, r1.y, v_328.yz);
  let v_329 = fma(r1.xzw, r3.xxx, r6.xyz);
  r1 = vec4<f32>(v_329.x, r1.y, v_329.yz);
  let v_330 = (r6.www * r1.xzw);
  r1 = vec4<f32>(v_330.x, r1.y, v_330.yz);
  let v_331 = fma(r1.xzw, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_331.xyz, r0.w);
  r1.x = ((-(r6.wwww)).x + 1.0f);
  r1.z = dot((-(r5.xyzx)).xyz, r2.xyz);
  r1.z = (r1.z + r1.z);
  let v_332 = -(r1.zzzz);
  let v_333 = -(r5.xyzx);
  let v_334 = fma(r2.xyz, v_332.xyz, v_333.xyz);
  r2 = vec4<f32>(v_334.xyz, r2.w);
  let v_335 = clamp(((r1.yyyy * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_336 = r1;
  r1 = vec4<f32>(v_336.x, v_335.xy, v_336.w);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.w = (r1.y * cb5_5.tint_symbol_3[6u].z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.w)));
  r3.z = fma(r1.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.y = (r1.y * r1.y);
  r1.y = fma(r1.y, 5.0f, r1.w);
  let v_337 = bitcast<u32>(r2.w);
  let v_338 = r3.z;
  r1.y = select(r1.y, v_338, (v_337 != 0u));
  let v_339 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_339.xy, r2.z, v_339.z);
  r1.w = (abs(r2.zzzz).w + 1.0f);
  let v_340 = (r2.xyw / r1.www);
  r2 = vec4<f32>(v_340.xy, r2.z, v_340.z);
  let v_341 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_341.xy, r2.z, v_341.z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_342 = bitcast<vec2<u32>>(r1.ww);
  let v_343 = r2.xy;
  let v_344 = select(r2.wy, v_343, (v_342 != vec2<u32>()));
  r2 = vec4<f32>(v_344.xy, r2.zw);
  let v_345 = r1.y;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_345);
  r1.y = max(r3.y, r3.x);
  let v_346 = (r1.yyy * r2.xyz);
  r2 = vec4<f32>(v_346.xyz, r2.w);
  let v_347 = (r1.zzz * r2.xyz);
  r1 = vec4<f32>(r1.x, v_347.xyz);
  let v_348 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_348.xyz);
  let v_349 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_349.xyz);
  let v_350 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_350.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.x = sqrt(r0.w);
    let v_351 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_351.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r7.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_352 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_352 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_353 = (r0.www * r7.xyz);
    r2 = vec4<f32>(v_353.xyz, r2.w);
    let v_354 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_354, v_354, v_354, v_354).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_355 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_355, v_355, v_355, v_355).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_356 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_356.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_357 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_357.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_358 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_358.xyz, r2.w);
    let v_359 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_359.xyz, r2.w);
    let v_360 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_360.xyz, r3.w);
    let v_361 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_361.xyz, r2.w);
    let v_362 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_363 = (r2.xyz + v_362.xyz);
    r2 = vec4<f32>(v_363.xyz, r2.w);
    let v_364 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_364.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_365 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_365.xyz, r3.w);
    let v_366 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_366.xy, r1.z, v_366.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_367 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_367.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_368 = -(r0.xyxz);
    let v_369 = fma(r1.xyw, r0.www, v_368.xyw);
    r1 = vec4<f32>(v_369.xy, r1.z, v_369.z);
    let v_370 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_370.xyz, r1.w);
  } else {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.w = sqrt(r0.w);
    let v_371 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_371.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r7.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_372 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_372 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_373 = (r0.www * r7.xyz);
    r3 = vec4<f32>(v_373.xyz, r3.w);
    let v_374 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_374, v_374, v_374, v_374).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_375 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_375, v_375, v_375, v_375).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_376 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_376.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_377 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_377.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_378 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_378.xyz, r3.w);
    let v_379 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_379.xyz, r3.w);
    let v_380 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_380.xyz, r4.w);
    let v_381 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_381.xyz, r3.w);
    let v_382 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_383 = (r3.xyz + v_382.xyz);
    r3 = vec4<f32>(v_383.xyz, r3.w);
    let v_384 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_384.x, r2.y, v_384.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_385 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_385.xyz, r3.w);
    let v_386 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_386.x, r2.y, v_386.yz);
    let v_387 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_387.x, r2.y, v_387.yz);
    let v_388 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_388.xyz, r1.w);
  }
  let v_389 = (r1.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_389.xyz, r0.w);
  let v_390 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_390.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_391 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v5, v6, v_391);
  return o0;
}
