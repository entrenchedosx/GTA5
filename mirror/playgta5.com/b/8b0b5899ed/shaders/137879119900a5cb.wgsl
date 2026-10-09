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

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v8 : vec4<f32>;

var<private> v9 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v8 = v_2;
  x1[0u].x = v9[0u];
  x1[0u].y = v9[1u];
  x1[0u].z = v9[2u];
  x1[0u].w = v9[3u];
  r0 = textureSample(t0, s0, v2.xyz.xyxx.xy);
  r1 = textureSample(t3, s3, v2.xyz.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_4 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_6.xy, r1.z, v_6.z);
  let v_7 = fma(r1.zzz, v3.xyz, r1.xyw);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_8 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r3 = textureSample(t4, s4, v2.xyz.xyxx.xy);
  let v_9 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  r1.x = dot(r3.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  let v_10 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r0.w = (r0.w * v0.w);
  let v_11 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_11.xy, r3.zw);
  let v_12 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = -(v7.xyzx);
  let v_14 = (v_13.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_15 = (r1.yyy * r4.xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_17 = fma(r4.xyz, r1.yyy, v_16.xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_18 = (r2.www * r6.xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  r2.w = fma(r3.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r2.w = max(r2.w, 0.0f);
  let v_19 = -(r2.wwww);
  r3.z = fma(r3.w, cb12_12.tint_symbol_4[0u].y, v_19.z);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.z, 3.0f, r2.w);
  r3.z = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_20 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_20.xyz, r7.w);
  let v_21 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_21.xyz, r8.w);
  let v_22 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_22.xyz, r8.w);
  let v_23 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_23.xyz, r8.w);
  let v_24 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_24.xyz, r9.w);
  let v_25 = &(x0[0u]);
  let v_26 = r9;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  let v_27 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_27.xyz, r10.w);
  let v_28 = &(x0[1u]);
  let v_29 = r10;
  *(v_28) = vec4<f32>(v_29.xyz, (*(v_28)).w);
  let v_30 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_30.xyz, r11.w);
  let v_31 = &(x0[2u]);
  let v_32 = r11;
  *(v_31) = vec4<f32>(v_32.xyz, (*(v_31)).w);
  let v_33 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_33.xyz, r8.w);
  let v_34 = &(x0[3u]);
  let v_35 = r8;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_37 = r12;
  r12 = vec4<f32>(v_37.x, v_36.x, v_37.z, v_36.y);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_38 = abs(r11.yyyy);
  r4.w = max(v_38.w, abs(r11.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_39 = (bitcast<u32>(r4.w) != 0u);
  let v_40 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_40, v_39);
  let v_41 = abs(r10.yyyy);
  r5.w = max(v_41.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_42 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_42 != 0u));
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
  r3.w = dot(r10, cb6_6.tint_symbol_5[12u]);
  r5.w = dot(r10, cb6_6.tint_symbol_5[13u]);
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
  let v_58 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_58.xy, r12.zw);
  let v_59 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_59.xyz, r11.w);
  let v_60 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_60.xy, r12.zw);
  let v_61 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_61.xyz, r13.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_62.xy, r12.zw);
  let v_63 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_63.xyz, r14.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_64.xy, r12.zw);
  let v_65 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_65.xyz, r15.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_66.xy, r12.zw);
  let v_67 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_67.xyz, r16.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_68.xy, r12.zw);
  let v_69 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_69.xyz, r17.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_70.xy, r12.zw);
  let v_71 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_71.xyz, r18.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_72.xy, r12.zw);
  let v_73 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_73.xyz, r19.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_74.xy, r12.zw);
  let v_75 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_75.xyz, r20.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_76.xy, r12.zw);
  let v_77 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_77.xyz, r21.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_79.xyz, r22.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_81.xyz, r23.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_83.xyz, r24.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_85.xyz, r25.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
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
  r3.z = clamp(fma(r3.zzzz, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).z, 0.0f, 1.0f);
  let v_104 = abs(r8.yyyy);
  r4.w = max(v_104.w, abs(r8.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.z = ((-(r3.zzzz)).z + 1.0f);
  r3.z = (r4.w * r3.z);
  r3.z = fma(r3.w, 0.0625f, r3.z);
  let v_105 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_105.xyz, r3.w);
  r3.z = min(r3.z, 1.0f);
  r3.w = clamp(fma(v7.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_5[3u].z);
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
  r4.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_114 = fma(cb12_12.tint_symbol_4[0u].xx, r8.xy, r4.ww);
  r8 = vec4<f32>(v_114.xy, r8.zw);
  let v_115 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
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
    r9 = vec4<f32>(r9.x, vec3<f32>());
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_118 = (v_13.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_118.xyz, r8.w);
    let v_119 = (v7.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_119.xyz, r9.w);
    r9.x = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.y = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r9.x = clamp(((r9.xxxx / r9.yyyy)).x, 0.0f, 1.0f);
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
    r9.x = (r9.x * r9.y);
    r9.y = (r7.w * r9.x);
    let v_129 = (r9.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(r9.x, v_129.xyz);
    let v_130 = (r0.xyz * r9.yzw);
    r9 = vec4<f32>(r9.x, v_130.xyz);
    let v_131 = fma(r4.xyz, r1.yyy, r8.xyz);
    r8 = vec4<f32>(v_131.xyz, r8.w);
    r10.x = dot(r8.xyz, r8.xyz);
    r10.x = inverseSqrt(r10.x);
    let v_132 = (r8.xyz * r10.xxx);
    r8 = vec4<f32>(v_132.xyz, r8.w);
    let v_133 = dot(r8.xyz, r5.xyz);
    r10.x = clamp(vec4<f32>(v_133, v_133, v_133, v_133).x, 0.0f, 1.0f);
    r10.x = ((-(r10.xxxx)).x + 1.0f);
    r10.y = (r10.x * r10.x);
    r10.y = (r10.y * r10.y);
    r10.x = (r10.y * r10.x);
    r10.x = fma(cb12_12.tint_symbol_4[0u].x, r10.x, r4.w);
    let v_134 = dot(r8.xyz, r2.xyz);
    r8.x = clamp(vec4<f32>(v_134, v_134, v_134, v_134).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.w);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r10.x);
    r8.x = (r9.x * r8.x);
    r7.w = (r7.w * r8.x);
    r7.w = (r5.w * r7.w);
    let v_135 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_135.xyz, r8.w);
  }
  r7.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.w) != 0u)) {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    let v_136 = bitcast<u32>(r9.x);
    let v_137 = r7.w;
    r3.w = select(r3.w, v_137, (v_136 != 0u));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_138 = (v_13.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_138.xyz, r10.w);
      let v_139 = (v7.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_139.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r10.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[20u].w);
      let v_140 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_140.xyz, r11.w);
      let v_141 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_141.xyz, r11.w);
      let v_142 = bitcast<vec3<u32>>(r7.www);
      let v_143 = r10.xyz;
      let v_144 = select(r11.xyz, v_143, (v_142 != vec3<u32>()));
      r10 = vec4<f32>(v_144.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_145 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_145.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_146 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_146.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[12u].w);
      r7.w = (r7.w / r9.x);
      let v_147 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.x = dot(r10.xyz, v_147.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_148 = dot(r10.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_148, v_148, v_148, v_148).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_149 = (r10.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_149.xyz, r11.w);
      let v_150 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_150.xyz);
      let v_151 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_151.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_152 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_152.xyz, r10.w);
      let v_153 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_153, v_153, v_153, v_153).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_154 = dot(r10.xyz, r2.xyz);
      r10.x = clamp(vec4<f32>(v_154, v_154, v_154, v_154).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_155 = fma(r7.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_155.xyz, r8.w);
    }
  } else {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_156 = (v_13.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_156.xyz, r10.w);
      let v_157 = (v7.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r10.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[21u].w);
      let v_158 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      let v_159 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      let v_160 = bitcast<vec3<u32>>(r7.www);
      let v_161 = r10.xyz;
      let v_162 = select(r11.xyz, v_161, (v_160 != vec3<u32>()));
      r10 = vec4<f32>(v_162.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_163 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_163.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_164 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_164.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[13u].w);
      r7.w = (r7.w / r9.x);
      let v_165 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.x = dot(r10.xyz, v_165.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_166 = dot(r10.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_166, v_166, v_166, v_166).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_167 = (r10.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_167.xyz, r11.w);
      let v_168 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_168.xyz);
      let v_169 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_169.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_170 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_170.xyz, r10.w);
      let v_171 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_171, v_171, v_171, v_171).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_172 = dot(r10.xyz, r2.xyz);
      r10.x = clamp(vec4<f32>(v_172, v_172, v_172, v_172).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_173 = fma(r7.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_173.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_174 = (v_13.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      let v_175 = (v7.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_175.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r10.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[22u].w);
      let v_176 = fma(cb3_3.tint_symbol_2[14u].xyz, r9.xxx, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      let v_177 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      let v_178 = bitcast<vec3<u32>>(r7.www);
      let v_179 = r10.xyz;
      let v_180 = select(r11.xyz, v_179, (v_178 != vec3<u32>()));
      r10 = vec4<f32>(v_180.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_181 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_181.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_182 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_182.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[14u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[14u].w);
      r7.w = (r7.w / r9.x);
      let v_183 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r9.x = dot(r10.xyz, v_183.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).x, 0.0f, 1.0f);
      let v_184 = dot(r10.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_184, v_184, v_184, v_184).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_185 = (r10.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_185.xyz, r11.w);
      let v_186 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_186.xyz);
      let v_187 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_187.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_188 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_188.xyz, r10.w);
      let v_189 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_189, v_189, v_189, v_189).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_190 = dot(r10.xyz, r2.xyz);
      r10.x = clamp(vec4<f32>(v_190, v_190, v_190, v_190).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_191 = fma(r7.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_191.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_192 = (v_13.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_192.xyz, r10.w);
      let v_193 = (v7.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_193.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r10.w = (cb3_3.tint_symbol_2[23u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[23u].w);
      let v_194 = fma(cb3_3.tint_symbol_2[15u].xyz, r9.xxx, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_194.xyz, r11.w);
      let v_195 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      let v_196 = bitcast<vec3<u32>>(r7.www);
      let v_197 = r10.xyz;
      let v_198 = select(r11.xyz, v_197, (v_196 != vec3<u32>()));
      r10 = vec4<f32>(v_198.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_199 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_199.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_200 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_200.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[15u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[15u].w);
      r7.w = (r7.w / r9.x);
      let v_201 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r9.x = dot(r10.xyz, v_201.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).x, 0.0f, 1.0f);
      let v_202 = dot(r10.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_202, v_202, v_202, v_202).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_203 = (r10.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_203.xyz, r11.w);
      let v_204 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_204.xyz);
      let v_205 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_205.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_206 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_206.xyz, r10.w);
      let v_207 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_207, v_207, v_207, v_207).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_208 = dot(r10.xyz, r2.xyz);
      r10.x = clamp(vec4<f32>(v_208, v_208, v_208, v_208).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_209 = fma(r7.www, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_209.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_210 = (v_13.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_210.xyz, r10.w);
      let v_211 = (v7.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_211.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r10.w = (cb3_3.tint_symbol_2[24u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[24u].w);
      let v_212 = fma(cb3_3.tint_symbol_2[16u].xyz, r9.xxx, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_212.xyz, r11.w);
      let v_213 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_213.xyz, r11.w);
      let v_214 = bitcast<vec3<u32>>(r7.www);
      let v_215 = r10.xyz;
      let v_216 = select(r11.xyz, v_215, (v_214 != vec3<u32>()));
      r10 = vec4<f32>(v_216.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_217 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_217.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_218 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_218.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[16u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[16u].w);
      r7.w = (r7.w / r9.x);
      let v_219 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r9.x = dot(r10.xyz, v_219.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).x, 0.0f, 1.0f);
      let v_220 = dot(r10.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_220, v_220, v_220, v_220).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_221 = (r10.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_221.xyz, r11.w);
      let v_222 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_222.xyz);
      let v_223 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_223.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_224 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_224.xyz, r10.w);
      let v_225 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_225, v_225, v_225, v_225).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_226 = dot(r10.xyz, r2.xyz);
      r10.x = clamp(vec4<f32>(v_226, v_226, v_226, v_226).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_227 = fma(r7.www, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_227.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_228 = (v_13.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_228.xyz, r10.w);
      let v_229 = (v7.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_229.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r10.w = (cb3_3.tint_symbol_2[25u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[25u].w);
      let v_230 = fma(cb3_3.tint_symbol_2[17u].xyz, r9.xxx, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_230.xyz, r11.w);
      let v_231 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_231.xyz, r11.w);
      let v_232 = bitcast<vec3<u32>>(r7.www);
      let v_233 = r10.xyz;
      let v_234 = select(r11.xyz, v_233, (v_232 != vec3<u32>()));
      r10 = vec4<f32>(v_234.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_235 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_235.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_236 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_236.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[17u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[17u].w);
      r7.w = (r7.w / r9.x);
      let v_237 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r9.x = dot(r10.xyz, v_237.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).x, 0.0f, 1.0f);
      let v_238 = dot(r10.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_238, v_238, v_238, v_238).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_239 = (r10.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_239.xyz, r11.w);
      let v_240 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_240.xyz);
      let v_241 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_241.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_242 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_242.xyz, r10.w);
      let v_243 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_243, v_243, v_243, v_243).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_244 = dot(r10.xyz, r2.xyz);
      r10.x = clamp(vec4<f32>(v_244, v_244, v_244, v_244).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_245 = fma(r7.www, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_245.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_246 = (v_13.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_246.xyz, r10.w);
      let v_247 = (v7.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_247.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r9.x = (cb3_3.tint_symbol_2[26u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r9.xxxx)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[26u].w);
      let v_248 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.www, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_248.xyz, r11.w);
      let v_249 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_249.xyz, r11.w);
      let v_250 = bitcast<vec3<u32>>(r3.www);
      let v_251 = r10.xyz;
      let v_252 = select(r11.xyz, v_251, (v_250 != vec3<u32>()));
      r10 = vec4<f32>(v_252.xyz, r10.w);
      r3.w = dot(r10.xyz, r10.xyz);
      let v_253 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_253.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_254 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_254.xyz, r10.w);
      r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r3.w, cb3_3.tint_symbol_2[18u].w);
      r3.w = (r3.w / r7.w);
      let v_255 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.w = dot(r10.xyz, v_255.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_256 = dot(r10.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_256, v_256, v_256, v_256).x, 0.0f, 1.0f);
      r7.w = (r7.w * r9.x);
      r9.x = (r3.w * r7.w);
      let v_257 = (r9.xxx * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_257.xyz, r11.w);
      let v_258 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_258.xyz);
      let v_259 = fma(r4.xyz, r1.yyy, r10.xyz);
      r4 = vec4<f32>(v_259.xyz, r4.w);
      r1.y = dot(r4.xyz, r4.xyz);
      r1.y = inverseSqrt(r1.y);
      let v_260 = (r1.yyy * r4.xyz);
      r4 = vec4<f32>(v_260.xyz, r4.w);
      let v_261 = dot(r4.xyz, r5.xyz);
      r1.y = clamp(vec4<f32>(v_261, v_261, v_261, v_261).y, 0.0f, 1.0f);
      r1.y = ((-(r1.yyyy)).y + 1.0f);
      r9.x = (r1.y * r1.y);
      r9.x = (r9.x * r9.x);
      r1.y = (r1.y * r9.x);
      r1.y = fma(cb12_12.tint_symbol_4[0u].x, r1.y, r4.w);
      let v_262 = dot(r4.xyz, r2.xyz);
      r4.x = clamp(vec4<f32>(v_262, v_262, v_262, v_262).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r8.w);
      r4.x = exp2(r4.x);
      r1.y = (r1.y * r4.x);
      r1.y = (r7.w * r1.y);
      r1.y = (r3.w * r1.y);
      r1.y = (r5.w * r1.y);
      let v_263 = fma(r1.yyy, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_263.xyz, r8.w);
    }
  }
  r1.y = (r6.w * r6.w);
  r1.x = (r1.x * r1.x);
  let v_264 = (r8.xyz * r1.xxx);
  r4 = vec4<f32>(v_264.xyz, r4.w);
  let v_265 = fma(r1.yyy, r9.yzw, r4.xyz);
  r4 = vec4<f32>(v_265.xyz, r4.w);
  let v_266 = fma(r6.xyz, r3.zzz, r4.xyz);
  r4 = vec4<f32>(v_266.xyz, r4.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_267 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r1 = vec4<f32>(r1.x, v_267.xyz);
  r3.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_268 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_268.xyz, r6.w);
  let v_269 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_269.xyz, r6.w);
  let v_270 = fma(r1.yzw, r3.zzz, r6.xyz);
  r1 = vec4<f32>(r1.x, v_270.xyz);
  let v_271 = (r3.yyy * r1.yzw);
  r1 = vec4<f32>(r1.x, v_271.xyz);
  let v_272 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_272.xyz, r6.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_273 = dot(r8.xyz, r2.xyz);
  r1.x = clamp(vec4<f32>(v_273, v_273, v_273, v_273).x, 0.0f, 1.0f);
  let v_274 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r6 = vec4<f32>(v_274.xyz, r6.w);
  let v_275 = fma(r6.xyz, r3.xxx, r1.yzw);
  r1 = vec4<f32>(v_275.xyz, r1.w);
  let v_276 = (r6.www * r1.xyz);
  r1 = vec4<f32>(v_276.xyz, r1.w);
  let v_277 = fma(r1.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_277.xyz, r0.w);
  r1.x = ((-(r6.wwww)).x + 1.0f);
  r1.y = dot((-(r5.xyzx)).xyz, r2.xyz);
  r1.y = (r1.y + r1.y);
  let v_278 = -(r1.yyyy);
  let v_279 = -(r5.xxyz);
  let v_280 = fma(r2.xyz, v_278.yzw, v_279.yzw);
  r1 = vec4<f32>(r1.x, v_280.xyz);
  let v_281 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_281.xy, r2.zw);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.z = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.w = (r2.x * cb5_5.tint_symbol_3[6u].z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r2.z)));
  r3.z = fma(r2.x, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.x = (r2.x * r2.x);
  r2.x = fma(r2.x, 5.0f, r2.z);
  let v_282 = bitcast<u32>(r2.w);
  let v_283 = r3.z;
  r2.x = select(r2.x, v_283, (v_282 != 0u));
  let v_284 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_284.xyz, r4.w);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_285 = (r4.xyz / r1.yyy);
  r4 = vec4<f32>(v_285.xyz, r4.w);
  let v_286 = ((-(r4.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_286.xyz, r4.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_287 = bitcast<vec2<u32>>(r1.yy);
  let v_288 = r4.xy;
  let v_289 = select(r4.zy, v_288, (v_287 != vec2<u32>()));
  let v_290 = r1;
  r1 = vec4<f32>(v_290.x, v_289.xy, v_290.w);
  let v_291 = r2.x;
  r4 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_291);
  r1.y = max(r3.y, r3.x);
  let v_292 = (r1.yyy * r4.xyz);
  r1 = vec4<f32>(r1.x, v_292.xyz);
  let v_293 = (r2.yyy * r1.yzw);
  r2 = vec4<f32>(v_293.xyz, r2.w);
  let v_294 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_294.xyz, r2.w);
  let v_295 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_295.xyz);
  let v_296 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_296.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r1.x = dot(r7.xyz, r7.xyz);
    r1.y = sqrt(r1.x);
    let v_297 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.z = (r1.y + v_297.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r1.y * r7.z);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_298 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_298 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_299 = (r1.xxx * r7.xyz);
    r2 = vec4<f32>(v_299.xyz, r2.w);
    let v_300 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.x = clamp(vec4<f32>(v_300, v_300, v_300, v_300).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
    r1.x = exp2(r1.x);
    let v_301 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_301, v_301, v_301, v_301).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
    let v_302 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r1.z + v_302.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_303 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r1.z * v_303.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_304 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(r2.x, v_304.xyz);
    let v_305 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(r2.x, v_305.xyz);
    let v_306 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_306.xyz, r3.w);
    let v_307 = fma(r2.xxx, r3.xyz, r2.yzw);
    r2 = vec4<f32>(v_307.xyz, r2.w);
    let v_308 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_309 = (r2.xyz + v_308.xyz);
    r2 = vec4<f32>(v_309.xyz, r2.w);
    let v_310 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_310.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_311 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_311.xyz, r3.w);
    let v_312 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_312.xyz, r1.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_313 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_313.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r2.x = (r2.x + -1.0f);
      r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r2.x = 1.0f;
    }
    let v_314 = -(r0.xyzx);
    let v_315 = fma(r1.xyz, r2.xxx, v_314.xyz);
    r1 = vec4<f32>(v_315.xyz, r1.w);
    let v_316 = fma(r1.www, r1.xyz, r0.xyz);
    r1 = vec4<f32>(v_316.xyz, r1.w);
  } else {
    r1.w = dot(r7.xyz, r7.xyz);
    r2.x = sqrt(r1.w);
    let v_317 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_317.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r2.x * r7.z);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_318 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_318 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_319 = (r1.www * r7.xyz);
    r3 = vec4<f32>(v_319.xyz, r3.w);
    let v_320 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_320, v_320, v_320, v_320).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_321 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_321, v_321, v_321, v_321).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].y);
    let v_322 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r2.y + v_322.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r2.z = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).z, 0.0f, 1.0f);
    let v_323 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.y = (r2.y * v_323.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    let v_324 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_324.xyz, r3.w);
    let v_325 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_325.xyz, r3.w);
    let v_326 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_326.xyz, r4.w);
    let v_327 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_327.xyz, r3.w);
    let v_328 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_329 = (r3.xyz + v_328.xyz);
    r3 = vec4<f32>(v_329.xyz, r3.w);
    let v_330 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_330.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_331 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_331.xyz, r4.w);
    let v_332 = fma(r2.xxx, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_332.xy, r2.z, v_332.z);
    let v_333 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_333.xy, r2.z, v_333.z);
    let v_334 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_334.xyz, r1.w);
  }
  let v_335 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_335.xyz, o0.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < r0.w)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  o1 = (r0.x * v2.z);
  o0.w = r0.w;
  o2 = r0.x;
}

struct tint_symbol_8 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_336 : vec4<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v3, v5, v6, v7, v_336);
  return tint_symbol_8(o0, o1, o2);
}
