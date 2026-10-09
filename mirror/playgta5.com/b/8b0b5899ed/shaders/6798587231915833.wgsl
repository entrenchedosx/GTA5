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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

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
  r0 = textureSample(t3, s3, v1.xyz.xyxx.xy);
  r0.x = dot(v6.xyz, v6.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_3 = (r0.xx * v6.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.z = (cb12_12.tint_symbol_4[0u].y * 0.5f);
  let v_4 = -(r0.zzzz);
  r0.z = fma(r0.w, cb12_12.tint_symbol_4[0u].y, v_4.z);
  let v_5 = fma(r0.zz, r0.xy, v1.xyz.xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r1 = textureSample(t3, s3, r0.xyxx.xy);
  r0 = textureSample(t0, s0, r0.xyxx.xy);
  let v_6 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_6.xy);
  r2.x = dot(r1.zw, r1.zw);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = sqrt(abs(r2.xxxx).x);
  r2.y = max(cb12_12.tint_symbol_4[1u].y, 0.00100000004749745131f);
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
  let v_13 = (r1.xxx * v0.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_4[1u].xxxx)).x, 0.0f, 1.0f);
  r3.w = v0.w;
  r0 = (r0 * r3);
  let v_14 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = -(v5.xyzx);
  let v_16 = (v_15.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_17 = (r1.yyy * r3.xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_19 = fma(r3.xyz, r1.yyy, v_18.xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_20 = (r1.www * r5.xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = (cb2_2.tint_symbol_1[15u].zy * cb2_2.tint_symbol_1[15u].zy);
  r6 = vec4<f32>(v_21.xy, r6.zw);
  r1.w = (cb12_12.tint_symbol_4[0u].w + -500.0f);
  r1.w = max(r1.w, 0.0f);
  r3.w = ((-(r1.wwww)).w + cb12_12.tint_symbol_4[0u].w);
  r1.w = (r1.w * 558.0f);
  r1.w = fma(r3.w, 3.0f, r1.w);
  r3.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_22 = (v5.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_22.xyz, r7.w);
  let v_23 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_23.xyz, r8.w);
  let v_24 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_24.xyz, r8.w);
  let v_25 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_25.xyz, r8.w);
  let v_26 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_26.xyz, r9.w);
  let v_27 = &(x0[0u]);
  let v_28 = r9;
  *(v_27) = vec4<f32>(v_28.xyz, (*(v_27)).w);
  let v_29 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_29.xyz, r10.w);
  let v_30 = &(x0[1u]);
  let v_31 = r10;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_32.xyz, r11.w);
  let v_33 = &(x0[2u]);
  let v_34 = r11;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_35.xyz, r8.w);
  let v_36 = &(x0[3u]);
  let v_37 = r8;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_39 = r12;
  r12 = vec4<f32>(v_39.x, v_38.x, v_39.z, v_38.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_40 = abs(r11.yyyy);
  r5.w = max(v_40.w, abs(r11.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_41 = (bitcast<u32>(r5.w) != 0u);
  let v_42 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_42, v_41);
  let v_43 = abs(r10.yyyy);
  r6.z = max(v_43.z, abs(r10.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_44 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_44 != 0u));
  let v_45 = abs(r9.yyyy);
  r6.z = max(v_45.z, abs(r9.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_46 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_46 != 0u));
  let v_47 = x0[bitcast<i32>(r4.w)];
  r9 = vec4<f32>(v_47.xyz, r9.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r4.w = dot(r10, cb6_6.tint_symbol_5[12u]);
  r6.z = dot(r10, cb6_6.tint_symbol_5[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r9.z);
  let v_48 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_48.xy, r11.z, v_48.z);
  r11.z = dpdx(r4.w);
  let v_49 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_49.xyz, r13.w);
  r13.w = dpdy(r4.w);
  let v_50 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_50.xy);
  let v_51 = -(r8.zwzz);
  let v_52 = fma(r11.xz, r13.xz, v_51.xy);
  r14 = vec4<f32>(v_52.xy, r14.zw);
  r6.w = (1.0f / r14.x);
  r7.w = (r11.z * r13.y);
  let v_53 = -(r7.wwww);
  r14.z = fma(r11.x, r13.w, v_53.z);
  let v_54 = (r6.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_54.xy);
  let v_55 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_55.xy);
  let v_56 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_56.xy);
  r4.w = fma((-(r6.zzzz)).w, r8.z, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r8.w, r4.w);
  let v_57 = bitcast<u32>(r5.w);
  let v_58 = r4.w;
  r12.z = select(r9.z, v_58, (v_57 != 0u));
  r10.z = 0.0f;
  let v_59 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_59.xyz, r9.w);
  let v_60 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_60.xy, r12.zw);
  let v_61 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_61.xyz, r11.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_62.xy, r12.zw);
  let v_63 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_63.xyz, r13.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_64.xy, r12.zw);
  let v_65 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_65.xyz, r14.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_66.xy, r12.zw);
  let v_67 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_67.xyz, r15.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_68.xy, r12.zw);
  let v_69 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_69.xyz, r16.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_70.xy, r12.zw);
  let v_71 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_71.xyz, r17.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_72.xy, r12.zw);
  let v_73 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_73.xyz, r18.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_74.xy, r12.zw);
  let v_75 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_75.xyz, r19.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_76.xy, r12.zw);
  let v_77 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_77.xyz, r20.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_79.xyz, r21.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_81.xyz, r22.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_83.xyz, r23.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_85.xyz, r24.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_86.xy, r12.zw);
  let v_87 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_87.xyz, r25.w);
  let v_88 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_88.xy, r12.zw);
  let v_89 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_89.xyz, r10.w);
  let v_90 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_90.xy, r9.z);
  let v_91 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_91.xy, r11.z);
  let v_92 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_92.xy, r13.z);
  let v_93 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_93.xy, r14.z);
  let v_94 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_94.xy, r15.z);
  let v_95 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_95.xy, r16.z);
  let v_96 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_96.xy, r17.z);
  let v_97 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_97.xy, r18.z);
  let v_98 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_98.xy, r19.z);
  let v_99 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_99.xy, r20.z);
  let v_100 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_100.xy, r21.z);
  let v_101 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_101.xy, r22.z);
  let v_102 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_102.xy, r23.z);
  let v_103 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_103.xy, r24.z);
  let v_104 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_104.xy, r25.z);
  let v_105 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_105.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r4.w = dot(r9, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_106 = abs(r8.yyyy);
  r5.w = max(v_106.w, abs(r8.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v5.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_107 = -(r3.wwww);
  r3.w = fma(r4.w, v_107.w, r3.w);
  let v_108 = dot(r2.xyw, v_18.xyz);
  r4.w = clamp(vec4<f32>(v_108, v_108, v_108, v_108).w, 0.0f, 1.0f);
  let v_109 = dot(r4.xyz, r2.xyw);
  r8.x = clamp(vec4<f32>(v_109, v_109, v_109, v_109).x, 0.0f, 1.0f);
  let v_110 = dot(r5.xyz, v_18.xyz);
  r8.y = clamp(vec4<f32>(v_110, v_110, v_110, v_110).y, 0.0f, 1.0f);
  let v_111 = ((-(r8.xxxy)).zw + vec2<f32>(1.0f));
  r6 = vec4<f32>(r6.xy, v_111.xy);
  let v_112 = (r6.zw * r6.zw);
  r8 = vec4<f32>(v_112.xy, r8.zw);
  let v_113 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_113.xy, r8.zw);
  let v_114 = (r6.zw * r8.xy);
  r6 = vec4<f32>(r6.xy, v_114.xy);
  r5.w = ((-(cb12_12.tint_symbol_4[0u].zzzz)).w + 1.0f);
  let v_115 = fma(cb12_12.tint_symbol_4[0u].zz, r6.zw, r5.ww);
  r6 = vec4<f32>(r6.xy, v_115.xy);
  let v_116 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_116.xy, r8.zw);
  r1.w = (r8.x * 0.125f);
  r6.z = fma((-(r1.xxxx)).z, r6.z, 1.0f);
  r5.x = dot(r2.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r6.w * r5.x);
  r5.x = (r1.w * r5.x);
  r5.x = (r1.x * r5.x);
  r5.x = (r4.w * r5.x);
  r4.w = (r4.w * r6.z);
  let v_117 = fma(r0.xyz, r4.www, r5.xxx);
  r5 = vec4<f32>(v_117.xyz, r5.w);
  let v_118 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_118.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(0.0f, r8.y, vec2<f32>());
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_119 = ((-(v5.xxyz)).xzw + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_119.x, r8.y, v_119.yz);
    let v_120 = (v5.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_120.xyz, r9.w);
    r7.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_121 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_121.xyz, r9.w);
    let v_122 = (r9.xyz + v_15.xyz);
    r9 = vec4<f32>(v_122.xyz, r9.w);
    let v_123 = bitcast<vec3<u32>>(r6.www);
    let v_124 = r8.xzw;
    let v_125 = select(r9.xyz, v_124, (v_123 != vec3<u32>()));
    r8 = vec4<f32>(v_125.x, r8.y, v_125.yz);
    r6.w = dot(r8.xzw, r8.xzw);
    let v_126 = (r8.xzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_126.x, r8.y, v_126.yz);
    r7.w = dot(r8.xzw, r8.xzw);
    r7.w = inverseSqrt(r7.w);
    let v_127 = (r7.www * r8.xzw);
    r8 = vec4<f32>(v_127.x, r8.y, v_127.yz);
    r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[11u].w);
    r6.w = (r6.w / r7.w);
    let v_128 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r8.xzw, v_128.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_129 = dot(r8.xzw, r2.xyw);
    r9.x = clamp(vec4<f32>(v_129, v_129, v_129, v_129).x, 0.0f, 1.0f);
    r7.w = (r7.w * r9.x);
    r9.x = (r6.w * r7.w);
    let v_130 = (r9.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_130.xyz, r9.w);
    let v_131 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_131.xyz, r9.w);
    let v_132 = fma(r3.xyz, r1.yyy, r8.xzw);
    r8 = vec4<f32>(v_132.x, r8.y, v_132.yz);
    r9.w = dot(r8.xzw, r8.xzw);
    r9.w = inverseSqrt(r9.w);
    let v_133 = (r8.xzw * r9.www);
    r8 = vec4<f32>(v_133.x, r8.y, v_133.yz);
    let v_134 = dot(r8.xzw, r4.xyz);
    r9.w = clamp(vec4<f32>(v_134, v_134, v_134, v_134).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.x = (r9.w * r9.w);
    r10.x = (r10.x * r10.x);
    r9.w = (r9.w * r10.x);
    r9.w = fma(cb12_12.tint_symbol_4[0u].z, r9.w, r5.w);
    let v_135 = dot(r8.xzw, r2.xyw);
    r8.x = clamp(vec4<f32>(v_135, v_135, v_135, v_135).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.y);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.w);
    r7.w = (r7.w * r8.x);
    r6.w = (r6.w * r7.w);
    r6.w = (r1.w * r6.w);
    let v_136 = (r6.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_136.x, r8.y, v_136.yz);
  }
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    let v_137 = bitcast<u32>(r7.w);
    let v_138 = r6.w;
    r4.w = select(r4.w, v_138, (v_137 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_139 = (v_15.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_139.xyz, r10.w);
      let v_140 = (v5.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_140.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_141 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_141.xyz, r11.w);
      let v_142 = (r11.xyz + v_15.xyz);
      r11 = vec4<f32>(v_142.xyz, r11.w);
      let v_143 = bitcast<vec3<u32>>(r6.www);
      let v_144 = r10.xyz;
      let v_145 = select(r11.xyz, v_144, (v_143 != vec3<u32>()));
      r10 = vec4<f32>(v_145.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_146 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_146.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_147 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_147.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[12u].w);
      r6.w = (r6.w / r7.w);
      let v_148 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r10.xyz, v_148.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_149 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_149, v_149, v_149, v_149).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_150 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_150.xyz, r11.w);
      let v_151 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_151.xyz, r9.w);
      let v_152 = fma(r3.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_152.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_153 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_153.xyz, r10.w);
      let v_154 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_154, v_154, v_154, v_154).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].z, r9.w, r5.w);
      let v_155 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_155, v_155, v_155, v_155).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r1.w * r6.w);
      let v_156 = fma(r6.www, cb3_3.tint_symbol_2[20u].xyz, r8.xzw);
      r8 = vec4<f32>(v_156.x, r8.y, v_156.yz);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_157 = (v_15.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_157.xyz, r10.w);
      let v_158 = (v5.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_159 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      let v_160 = (r11.xyz + v_15.xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      let v_161 = bitcast<vec3<u32>>(r6.www);
      let v_162 = r10.xyz;
      let v_163 = select(r11.xyz, v_162, (v_161 != vec3<u32>()));
      r10 = vec4<f32>(v_163.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_164 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_164.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_165 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_165.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[13u].w);
      r6.w = (r6.w / r7.w);
      let v_166 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r10.xyz, v_166.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_167 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_167, v_167, v_167, v_167).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_168 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      let v_169 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_169.xyz, r9.w);
      let v_170 = fma(r3.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_170.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_171 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      let v_172 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].z, r9.w, r5.w);
      let v_173 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_173, v_173, v_173, v_173).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r1.w * r6.w);
      let v_174 = fma(r6.www, cb3_3.tint_symbol_2[21u].xyz, r8.xzw);
      r8 = vec4<f32>(v_174.x, r8.y, v_174.yz);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_175 = (v_15.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      let v_176 = (v5.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[22u].w);
      let v_177 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      let v_178 = (r11.xyz + v_15.xyz);
      r11 = vec4<f32>(v_178.xyz, r11.w);
      let v_179 = bitcast<vec3<u32>>(r6.www);
      let v_180 = r10.xyz;
      let v_181 = select(r11.xyz, v_180, (v_179 != vec3<u32>()));
      r10 = vec4<f32>(v_181.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_182 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_182.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_183 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_183.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[14u].w);
      r6.w = (r6.w / r7.w);
      let v_184 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.w = dot(r10.xyz, v_184.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_185 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_185, v_185, v_185, v_185).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_186 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      let v_187 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_187.xyz, r9.w);
      let v_188 = fma(r3.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_188.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_189 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      let v_190 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_190, v_190, v_190, v_190).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].z, r9.w, r5.w);
      let v_191 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_191, v_191, v_191, v_191).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r1.w * r6.w);
      let v_192 = fma(r6.www, cb3_3.tint_symbol_2[22u].xyz, r8.xzw);
      r8 = vec4<f32>(v_192.x, r8.y, v_192.yz);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_193 = (v_15.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_193.xyz, r10.w);
      let v_194 = (v5.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_194.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[23u].w);
      let v_195 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      let v_196 = (r11.xyz + v_15.xyz);
      r11 = vec4<f32>(v_196.xyz, r11.w);
      let v_197 = bitcast<vec3<u32>>(r6.www);
      let v_198 = r10.xyz;
      let v_199 = select(r11.xyz, v_198, (v_197 != vec3<u32>()));
      r10 = vec4<f32>(v_199.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_200 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_200.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_201 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_201.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[15u].w);
      r6.w = (r6.w / r7.w);
      let v_202 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.w = dot(r10.xyz, v_202.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_203 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_203, v_203, v_203, v_203).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_204 = (r9.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_204.xyz, r11.w);
      let v_205 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_205.xyz, r9.w);
      let v_206 = fma(r3.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_206.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_207 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_207.xyz, r10.w);
      let v_208 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_208, v_208, v_208, v_208).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].z, r9.w, r5.w);
      let v_209 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_209, v_209, v_209, v_209).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r1.w * r6.w);
      let v_210 = fma(r6.www, cb3_3.tint_symbol_2[23u].xyz, r8.xzw);
      r8 = vec4<f32>(v_210.x, r8.y, v_210.yz);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_211 = (v_15.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_211.xyz, r10.w);
      let v_212 = (v5.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_212.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[24u].w);
      let v_213 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_213.xyz, r11.w);
      let v_214 = (r11.xyz + v_15.xyz);
      r11 = vec4<f32>(v_214.xyz, r11.w);
      let v_215 = bitcast<vec3<u32>>(r6.www);
      let v_216 = r10.xyz;
      let v_217 = select(r11.xyz, v_216, (v_215 != vec3<u32>()));
      r10 = vec4<f32>(v_217.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_218 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_218.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_219 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_219.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[16u].w);
      r6.w = (r6.w / r7.w);
      let v_220 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.w = dot(r10.xyz, v_220.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_221 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_221, v_221, v_221, v_221).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_222 = (r9.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_222.xyz, r11.w);
      let v_223 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_223.xyz, r9.w);
      let v_224 = fma(r3.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_224.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_225 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_225.xyz, r10.w);
      let v_226 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_226, v_226, v_226, v_226).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].z, r9.w, r5.w);
      let v_227 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_227, v_227, v_227, v_227).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r1.w * r6.w);
      let v_228 = fma(r6.www, cb3_3.tint_symbol_2[24u].xyz, r8.xzw);
      r8 = vec4<f32>(v_228.x, r8.y, v_228.yz);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_229 = (v_15.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_229.xyz, r10.w);
      let v_230 = (v5.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_230.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[25u].w);
      let v_231 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_231.xyz, r11.w);
      let v_232 = (r11.xyz + v_15.xyz);
      r11 = vec4<f32>(v_232.xyz, r11.w);
      let v_233 = bitcast<vec3<u32>>(r6.www);
      let v_234 = r10.xyz;
      let v_235 = select(r11.xyz, v_234, (v_233 != vec3<u32>()));
      r10 = vec4<f32>(v_235.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_236 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_236.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_237 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_237.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[17u].w);
      r6.w = (r6.w / r7.w);
      let v_238 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.w = dot(r10.xyz, v_238.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_239 = dot(r10.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_239, v_239, v_239, v_239).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_240 = (r9.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_240.xyz, r11.w);
      let v_241 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_241.xyz, r9.w);
      let v_242 = fma(r3.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_242.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_243 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_243.xyz, r10.w);
      let v_244 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_244, v_244, v_244, v_244).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].z, r9.w, r5.w);
      let v_245 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_245, v_245, v_245, v_245).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r1.w * r6.w);
      let v_246 = fma(r6.www, cb3_3.tint_symbol_2[25u].xyz, r8.xzw);
      r8 = vec4<f32>(v_246.x, r8.y, v_246.yz);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_247 = (v_15.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_247.xyz, r10.w);
      let v_248 = (v5.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_248.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[26u].w);
      let v_249 = fma(cb3_3.tint_symbol_2[18u].xyz, r6.www, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_249.xyz, r11.w);
      let v_250 = (r11.xyz + v_15.xyz);
      r11 = vec4<f32>(v_250.xyz, r11.w);
      let v_251 = bitcast<vec3<u32>>(r4.www);
      let v_252 = r10.xyz;
      let v_253 = select(r11.xyz, v_252, (v_251 != vec3<u32>()));
      r10 = vec4<f32>(v_253.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_254 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_254.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_255 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_255.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[18u].w);
      r4.w = (r4.w / r6.w);
      let v_256 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r6.w = dot(r10.xyz, v_256.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_257 = dot(r10.xyz, r2.xyw);
      r7.w = clamp(vec4<f32>(v_257, v_257, v_257, v_257).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_258 = (r7.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_258.xyz, r11.w);
      let v_259 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_259.xyz, r9.w);
      let v_260 = fma(r3.xyz, r1.yyy, r10.xyz);
      r3 = vec4<f32>(v_260.xyz, r3.w);
      r1.y = dot(r3.xyz, r3.xyz);
      r1.y = inverseSqrt(r1.y);
      let v_261 = (r1.yyy * r3.xyz);
      r3 = vec4<f32>(v_261.xyz, r3.w);
      let v_262 = dot(r3.xyz, r4.xyz);
      r1.y = clamp(vec4<f32>(v_262, v_262, v_262, v_262).y, 0.0f, 1.0f);
      r1.y = ((-(r1.yyyy)).y + 1.0f);
      r4.x = (r1.y * r1.y);
      r4.x = (r4.x * r4.x);
      r1.y = (r1.y * r4.x);
      r1.y = fma(cb12_12.tint_symbol_4[0u].z, r1.y, r5.w);
      let v_263 = dot(r3.xyz, r2.xyw);
      r3.x = clamp(vec4<f32>(v_263, v_263, v_263, v_263).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r8.y);
      r3.x = exp2(r3.x);
      r1.y = (r1.y * r3.x);
      r1.y = (r6.w * r1.y);
      r1.y = (r4.w * r1.y);
      r1.y = (r1.w * r1.y);
      let v_264 = fma(r1.yyy, cb3_3.tint_symbol_2[26u].xyz, r8.xzw);
      r8 = vec4<f32>(v_264.x, r8.y, v_264.yz);
    }
  }
  r1.y = (r6.z * r6.z);
  r1.x = (r1.x * r1.x);
  let v_265 = (r8.xzw * r1.xxx);
  r3 = vec4<f32>(v_265.xyz, r3.w);
  let v_266 = fma(r1.yyy, r9.xyz, r3.xyz);
  r1 = vec4<f32>(v_266.xy, r1.z, v_266.z);
  let v_267 = fma(r5.xyz, r3.www, r1.xyw);
  r1 = vec4<f32>(v_267.xy, r1.z, v_267.z);
  r1.z = fma(r2.z, r1.z, cb3_3.tint_symbol_2[43u].w);
  r1.z = (r1.z * cb3_3.tint_symbol_2[44u].w);
  r1.z = max(r1.z, 0.0f);
  let v_268 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_268.xyz, r3.w);
  r2.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_269 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r4 = vec4<f32>(v_269.xyz, r4.w);
  let v_270 = (r4.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r4 = vec4<f32>(v_270.xyz, r4.w);
  let v_271 = fma(r3.xyz, r2.zzz, r4.xyz);
  r3 = vec4<f32>(v_271.xyz, r3.w);
  let v_272 = (r6.yyy * r3.xyz);
  r3 = vec4<f32>(v_272.xyz, r3.w);
  let v_273 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_273.xyz, r4.w);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_274 = dot(r5.xyz, r2.xyw);
  r1.z = clamp(vec4<f32>(v_274, v_274, v_274, v_274).z, 0.0f, 1.0f);
  let v_275 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.zzz, r4.xyz);
  r2 = vec4<f32>(v_275.xyz, r2.w);
  let v_276 = fma(r2.xyz, r6.xxx, r3.xyz);
  r2 = vec4<f32>(v_276.xyz, r2.w);
  let v_277 = (r6.zzz * r2.xyz);
  r2 = vec4<f32>(v_277.xyz, r2.w);
  let v_278 = fma(r2.xyz, r0.xyz, r1.xyw);
  r0 = vec4<f32>(v_278.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r1.x = dot(r7.xyz, r7.xyz);
    r1.y = sqrt(r1.x);
    let v_279 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.z = (r1.y + v_279.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r1.y * r7.z);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_280 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_280 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_281 = (r1.xxx * r7.xyz);
    r2 = vec4<f32>(v_281.xyz, r2.w);
    let v_282 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.x = clamp(vec4<f32>(v_282, v_282, v_282, v_282).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
    r1.x = exp2(r1.x);
    let v_283 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_283, v_283, v_283, v_283).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
    let v_284 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r1.z + v_284.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_285 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r1.z * v_285.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_286 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(r2.x, v_286.xyz);
    let v_287 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(r2.x, v_287.xyz);
    let v_288 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_288.xyz, r3.w);
    let v_289 = fma(r2.xxx, r3.xyz, r2.yzw);
    r2 = vec4<f32>(v_289.xyz, r2.w);
    let v_290 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_291 = (r2.xyz + v_290.xyz);
    r2 = vec4<f32>(v_291.xyz, r2.w);
    let v_292 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_292.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_293 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_293.xyz, r3.w);
    let v_294 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_294.xyz, r1.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_295 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_295.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r2.x = (r2.x + -1.0f);
      r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r2.x = 1.0f;
    }
    let v_296 = -(r0.xyzx);
    let v_297 = fma(r1.xyz, r2.xxx, v_296.xyz);
    r1 = vec4<f32>(v_297.xyz, r1.w);
    let v_298 = fma(r1.www, r1.xyz, r0.xyz);
    r1 = vec4<f32>(v_298.xyz, r1.w);
  } else {
    r1.w = dot(r7.xyz, r7.xyz);
    r2.x = sqrt(r1.w);
    let v_299 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_299.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r2.x * r7.z);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_300 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_300 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_301 = (r1.www * r7.xyz);
    r3 = vec4<f32>(v_301.xyz, r3.w);
    let v_302 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_302, v_302, v_302, v_302).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_303 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_303, v_303, v_303, v_303).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].y);
    let v_304 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r2.y + v_304.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r2.z = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).z, 0.0f, 1.0f);
    let v_305 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.y = (r2.y * v_305.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    let v_306 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_306.xyz, r3.w);
    let v_307 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_307.xyz, r3.w);
    let v_308 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_308.xyz, r4.w);
    let v_309 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_309.xyz, r3.w);
    let v_310 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_311 = (r3.xyz + v_310.xyz);
    r3 = vec4<f32>(v_311.xyz, r3.w);
    let v_312 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_312.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_313 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_313.xyz, r4.w);
    let v_314 = fma(r2.xxx, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_314.xy, r2.z, v_314.z);
    let v_315 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_315.xy, r2.z, v_315.z);
    let v_316 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_316.xyz, r1.w);
  }
  let v_317 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_317.xyz, o0.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.15000000596046447754f < r0.w)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  o1 = (r0.x * v1.z);
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_318 : vec4<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_318);
  return tint_symbol_8(o0, o1, o2);
}
