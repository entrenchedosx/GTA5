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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v6 : vec4<f32>) {
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v0.xyxx.xy);
  r1 = textureSample(t4, s4, v0.xyxx.xy);
  let v_1 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  let v_2 = (r0.xyz * cb12_12.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0 = (r0 * v6.xxxw);
  let v_3 = (v6.xx * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_3.xy, r2.zw);
  r1.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  r1.w = (r1.w * r2.y);
  r1.x = clamp(((r1.xxxx * v6.xxxx)).x, 0.0f, 1.0f);
  let v_4 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = -(v2.xxyz);
  let v_6 = (v_5.yzw + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(r2.x, v_6.xyz);
  r3.x = dot(r2.yzw, r2.yzw);
  r3.x = inverseSqrt(r3.x);
  let v_7 = (r2.yzw * r3.xxx);
  r3 = vec4<f32>(r3.x, v_7.xyz);
  let v_8 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_9 = fma(r2.yzw, r3.xxx, v_8.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  r4.w = dot(r4.xyz, r4.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_10 = (r4.www * r4.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  r2.x = (r2.x * r2.x);
  r1.w = (r1.w * r1.w);
  r4.w = fma(r1.y, 512.0f, -500.0f);
  r4.w = max(r4.w, 0.0f);
  let v_11 = -(r4.wwww);
  r1.y = fma(r1.y, 512.0f, v_11.y);
  r4.w = (r4.w * 558.0f);
  r1.y = fma(r1.y, 3.0f, r4.w);
  r4.w = dot(r2.yzw, cb1_1.tint_symbol[14u].xyz);
  let v_12 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = (r5.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r6 = vec4<f32>(v_13.xyz, r6.w);
  let v_14 = fma(r5.xxx, cb6_6.tint_symbol_5[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_14.xyz, r6.w);
  let v_15 = fma(r5.zzz, cb6_6.tint_symbol_5[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_15.xyz, r6.w);
  let v_16 = fma(r6.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r7 = vec4<f32>(v_16.xyz, r7.w);
  let v_17 = &(x0[0u]);
  let v_18 = r7;
  *(v_17) = vec4<f32>(v_18.xyz, (*(v_17)).w);
  let v_19 = fma(r6.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r8 = vec4<f32>(v_19.xyz, r8.w);
  let v_20 = &(x0[1u]);
  let v_21 = r8;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r6.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r9 = vec4<f32>(v_22.xyz, r9.w);
  let v_23 = &(x0[2u]);
  let v_24 = r9;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = fma(r6.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r6 = vec4<f32>(v_25.xyz, r6.w);
  let v_26 = &(x0[3u]);
  let v_27 = r6;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  let v_28 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_29 = r10;
  r10 = vec4<f32>(v_29.x, v_28.x, v_29.z, v_28.y);
  r5.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_30 = abs(r9.yyyy);
  r6.z = max(v_30.z, abs(r9.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r5.w)));
  let v_31 = (bitcast<u32>(r6.z) != 0u);
  let v_32 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r6.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_32, v_31);
  let v_33 = abs(r8.yyyy);
  r6.w = max(v_33.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_34 = bitcast<u32>(r6.w);
  r6.z = select(r6.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_34 != 0u));
  let v_35 = abs(r7.yyyy);
  r6.w = max(v_35.w, abs(r7.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_36 = bitcast<u32>(r5.w);
  r5.w = select(r6.z, 0.0f, (v_36 != 0u));
  let v_37 = x0[bitcast<i32>(r5.w)];
  r7 = vec4<f32>(v_37.xyz, r7.w);
  r5.w = f32(bitcast<i32>(r5.w));
  r6.z = (r5.w + 0.5f);
  r6.z = (r6.z * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r5.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r5.w = dot(r8, cb6_6.tint_symbol_5[12u]);
  r6.w = dot(r8, cb6_6.tint_symbol_5[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r6.z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, !((r5.w == 0.0f))));
  r5.w = ((-(r5.wwww)).w + r7.z);
  let v_38 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_38.xy, r9.z, v_38.z);
  r9.z = dpdx(r5.w);
  let v_39 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_39.xyz, r11.w);
  r11.w = dpdy(r5.w);
  let v_40 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_40.xy, r7.zw);
  let v_41 = -(r7.xyxx);
  let v_42 = fma(r9.xz, r11.xz, v_41.xy);
  r12 = vec4<f32>(v_42.xy, r12.zw);
  r7.x = (1.0f / r12.x);
  r7.y = (r9.z * r11.y);
  let v_43 = -(r7.yyyy);
  r12.z = fma(r9.x, r11.w, v_43.z);
  let v_44 = (r7.xx * r12.yz);
  r7 = vec4<f32>(v_44.xy, r7.zw);
  let v_45 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_45.xy, r7.zw);
  let v_46 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_46.xy, r7.zw);
  r5.w = fma((-(r6.wwww)).w, r7.x, r5.w);
  r5.w = fma((-(r6.wwww)).w, r7.y, r5.w);
  let v_47 = bitcast<u32>(r6.z);
  let v_48 = r5.w;
  r10.z = select(r7.z, v_48, (v_47 != 0u));
  r8.z = 0.0f;
  let v_49 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_49.xyz, r7.w);
  let v_50 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_50.xy, r10.zw);
  let v_51 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_51.xyz, r9.w);
  let v_52 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_52.xy, r10.zw);
  let v_53 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_53.xyz, r11.w);
  let v_54 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_54.xy, r10.zw);
  let v_55 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_55.xyz, r12.w);
  let v_56 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_56.xy, r10.zw);
  let v_57 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_57.xyz, r13.w);
  let v_58 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_58.xy, r10.zw);
  let v_59 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_59.xyz, r14.w);
  let v_60 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_60.xy, r10.zw);
  let v_61 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_61.xyz, r15.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_62.xy, r10.zw);
  let v_63 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_63.xyz, r16.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_64.xy, r10.zw);
  let v_65 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_65.xyz, r17.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_66.xy, r10.zw);
  let v_67 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_67.xyz, r18.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_68.xy, r10.zw);
  let v_69 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_69.xyz, r19.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_70.xy, r10.zw);
  let v_71 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_71.xyz, r20.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_72.xy, r10.zw);
  let v_73 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_73.xyz, r21.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_74.xy, r10.zw);
  let v_75 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_75.xyz, r22.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_76.xy, r10.zw);
  let v_77 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_77.xyz, r23.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_78.xy, r10.zw);
  let v_79 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_79.xyz, r8.w);
  let v_80 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_80.xy, r7.z);
  let v_81 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_81.xy, r9.z);
  let v_82 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_82.xy, r11.z);
  let v_83 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_83.xy, r12.z);
  let v_84 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_84.xy, r13.z);
  let v_85 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_85.xy, r14.z);
  let v_86 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_86.xy, r15.z);
  let v_87 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_87.xy, r16.z);
  let v_88 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_88.xy, r17.z);
  let v_89 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_89.xy, r18.z);
  let v_90 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_90.xy, r19.z);
  let v_91 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_91.xy, r20.z);
  let v_92 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_92.xy, r21.z);
  let v_93 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_93.xy, r22.z);
  let v_94 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_94.xy, r23.z);
  let v_95 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_95.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r5.w = dot(r7, vec4<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_96 = abs(r6.yyyy);
  r6.x = max(v_96.x, abs(r6.xxxx).x);
  r6.x = clamp(fma(r6.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.x * r4.w);
  r4.w = fma(r5.w, 0.0625f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_5[3u].z);
  let v_97 = -(r4.wwww);
  r4.w = fma(r5.w, v_97.w, r4.w);
  let v_98 = dot(v1.xyz, v_8.xyz);
  r5.w = clamp(vec4<f32>(v_98, v_98, v_98, v_98).w, 0.0f, 1.0f);
  let v_99 = dot(r3.yzw, v1.xyz);
  r6.x = clamp(vec4<f32>(v_99, v_99, v_99, v_99).x, 0.0f, 1.0f);
  let v_100 = dot(r4.xyz, v_8.xyz);
  r6.y = clamp(vec4<f32>(v_100, v_100, v_100, v_100).y, 0.0f, 1.0f);
  let v_101 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_101.xy, r6.zw);
  let v_102 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_102.xy);
  let v_103 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_103.xy);
  let v_104 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_104.xy, r6.zw);
  r6.z = ((-(r1.zzzz)).z + 1.0f);
  let v_105 = fma(r1.zz, r6.xy, r6.zz);
  r6 = vec4<f32>(v_105.xy, r6.zw);
  let v_106 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_106.xy, r7.zw);
  r6.w = (r7.x * 0.125f);
  r6.x = fma((-(r1.xxxx)).x, r6.x, 1.0f);
  r4.x = dot(v1.xyz, r4.xyz);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r7.y);
  r4.x = exp2(r4.x);
  r4.x = (r6.y * r4.x);
  r4.x = (r6.w * r4.x);
  r4.x = (r1.x * r4.x);
  r4.x = (r5.w * r4.x);
  r4.y = (r5.w * r6.x);
  let v_107 = fma(r0.xyz, r4.yyy, r4.xxx);
  r4 = vec4<f32>(v_107.xyz, r4.w);
  let v_108 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_108.xyz, r4.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r8 = vec4<f32>(r8.x, vec3<f32>());
    r7 = vec4<f32>(0.0f, r7.y, vec2<f32>());
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_109 = (v_5.xzw + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_109.x, r7.y, v_109.yz);
    let v_110 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_110.xyz, r8.w);
    r8.x = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.x = clamp(((r8.xxxx / cb3_3.tint_symbol_2[19u].wwww)).x, 0.0f, 1.0f);
    r8.x = (r8.x * cb3_3.tint_symbol_2[19u].w);
    let v_111 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_111.xyz, r8.w);
    let v_112 = (r8.xyz + (-(v2.xyzx)).xyz);
    r8 = vec4<f32>(v_112.xyz, r8.w);
    let v_113 = bitcast<vec3<u32>>(r6.yyy);
    let v_114 = r7.xzw;
    let v_115 = select(r8.xyz, v_114, (v_113 != vec3<u32>()));
    r7 = vec4<f32>(v_115.x, r7.y, v_115.yz);
    r6.y = dot(r7.xzw, r7.xzw);
    let v_116 = (r7.xzw + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_116.x, r7.y, v_116.yz);
    r8.x = dot(r7.xzw, r7.xzw);
    r8.x = inverseSqrt(r8.x);
    let v_117 = (r7.xzw * r8.xxx);
    r7 = vec4<f32>(v_117.x, r7.y, v_117.yz);
    r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r8.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[11u].w);
    r6.y = (r6.y / r8.x);
    let v_118 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.x = dot(r7.xzw, v_118.xyz);
    r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_119 = dot(r7.xzw, v1.xyz);
    r8.y = clamp(vec4<f32>(v_119, v_119, v_119, v_119).y, 0.0f, 1.0f);
    r8.x = (r8.x * r8.y);
    r8.y = (r6.y * r8.x);
    let v_120 = (r8.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(r8.x, v_120.xyz);
    let v_121 = (r0.xyz * r8.yzw);
    r8 = vec4<f32>(r8.x, v_121.xyz);
    let v_122 = fma(r2.yzw, r3.xxx, r7.xzw);
    r7 = vec4<f32>(v_122.x, r7.y, v_122.yz);
    r9.x = dot(r7.xzw, r7.xzw);
    r9.x = inverseSqrt(r9.x);
    let v_123 = (r7.xzw * r9.xxx);
    r7 = vec4<f32>(v_123.x, r7.y, v_123.yz);
    let v_124 = dot(r7.xzw, r3.yzw);
    r9.x = clamp(vec4<f32>(v_124, v_124, v_124, v_124).x, 0.0f, 1.0f);
    r9.x = ((-(r9.xxxx)).x + 1.0f);
    r9.y = (r9.x * r9.x);
    r9.y = (r9.y * r9.y);
    r9.x = (r9.y * r9.x);
    r9.x = fma(r1.z, r9.x, r6.z);
    let v_125 = dot(r7.xzw, v1.xyz);
    r7.x = clamp(vec4<f32>(v_125, v_125, v_125, v_125).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r7.x * r7.y);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r9.x);
    r7.x = (r8.x * r7.x);
    r6.y = (r6.y * r7.x);
    r6.y = (r6.w * r6.y);
    let v_126 = (r6.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_126.x, r7.y, v_126.yz);
  }
  r6.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.y) != 0u)) {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    let v_127 = bitcast<u32>(r8.x);
    let v_128 = r6.y;
    r5.w = select(r5.w, v_128, (v_127 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_129 = -(v2.xyzx);
      let v_130 = (v_129.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_130.xyz, r9.w);
      let v_131 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_131.xyz, r10.w);
      r8.x = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.x = clamp(((r8.xxxx / cb3_3.tint_symbol_2[20u].wwww)).x, 0.0f, 1.0f);
      r8.x = (r8.x * cb3_3.tint_symbol_2[20u].w);
      let v_132 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_132.xyz, r10.w);
      let v_133 = (r10.xyz + v_129.xyz);
      r10 = vec4<f32>(v_133.xyz, r10.w);
      let v_134 = bitcast<vec3<u32>>(r6.yyy);
      let v_135 = r9.xyz;
      let v_136 = select(r10.xyz, v_135, (v_134 != vec3<u32>()));
      r9 = vec4<f32>(v_136.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_137 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_137.xyz, r9.w);
      r8.x = dot(r9.xyz, r9.xyz);
      r8.x = inverseSqrt(r8.x);
      let v_138 = (r8.xxx * r9.xyz);
      r9 = vec4<f32>(v_138.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[12u].w);
      r6.y = (r6.y / r8.x);
      let v_139 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.x = dot(r9.xyz, v_139.xyz);
      r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_140 = dot(r9.xyz, v1.xyz);
      r9.w = clamp(vec4<f32>(v_140, v_140, v_140, v_140).w, 0.0f, 1.0f);
      r8.x = (r8.x * r9.w);
      r9.w = (r6.y * r8.x);
      let v_141 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_141.xyz, r10.w);
      let v_142 = fma(r10.xyz, r0.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_142.xyz);
      let v_143 = fma(r2.yzw, r3.xxx, r9.xyz);
      r9 = vec4<f32>(v_143.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_144 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_144.xyz, r9.w);
      let v_145 = dot(r9.xyz, r3.yzw);
      r9.w = clamp(vec4<f32>(v_145, v_145, v_145, v_145).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.x = (r9.w * r9.w);
      r10.x = (r10.x * r10.x);
      r9.w = (r9.w * r10.x);
      r9.w = fma(r1.z, r9.w, r6.z);
      let v_146 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_146, v_146, v_146, v_146).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r9.w);
      r8.x = (r8.x * r9.x);
      r6.y = (r6.y * r8.x);
      r6.y = (r6.w * r6.y);
      let v_147 = fma(r6.yyy, cb3_3.tint_symbol_2[20u].xyz, r7.xzw);
      r7 = vec4<f32>(v_147.x, r7.y, v_147.yz);
    }
  } else {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_148 = -(v2.xyzx);
      let v_149 = (v_148.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_149.xyz, r9.w);
      let v_150 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_150.xyz, r10.w);
      r8.x = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.x = clamp(((r8.xxxx / cb3_3.tint_symbol_2[21u].wwww)).x, 0.0f, 1.0f);
      r8.x = (r8.x * cb3_3.tint_symbol_2[21u].w);
      let v_151 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_151.xyz, r10.w);
      let v_152 = (r10.xyz + v_148.xyz);
      r10 = vec4<f32>(v_152.xyz, r10.w);
      let v_153 = bitcast<vec3<u32>>(r6.yyy);
      let v_154 = r9.xyz;
      let v_155 = select(r10.xyz, v_154, (v_153 != vec3<u32>()));
      r9 = vec4<f32>(v_155.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_156 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_156.xyz, r9.w);
      r8.x = dot(r9.xyz, r9.xyz);
      r8.x = inverseSqrt(r8.x);
      let v_157 = (r8.xxx * r9.xyz);
      r9 = vec4<f32>(v_157.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[13u].w);
      r6.y = (r6.y / r8.x);
      let v_158 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.x = dot(r9.xyz, v_158.xyz);
      r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_159 = dot(r9.xyz, v1.xyz);
      r9.w = clamp(vec4<f32>(v_159, v_159, v_159, v_159).w, 0.0f, 1.0f);
      r8.x = (r8.x * r9.w);
      r9.w = (r6.y * r8.x);
      let v_160 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_160.xyz, r10.w);
      let v_161 = fma(r10.xyz, r0.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_161.xyz);
      let v_162 = fma(r2.yzw, r3.xxx, r9.xyz);
      r9 = vec4<f32>(v_162.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_163 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_163.xyz, r9.w);
      let v_164 = dot(r9.xyz, r3.yzw);
      r9.w = clamp(vec4<f32>(v_164, v_164, v_164, v_164).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.x = (r9.w * r9.w);
      r10.x = (r10.x * r10.x);
      r9.w = (r9.w * r10.x);
      r9.w = fma(r1.z, r9.w, r6.z);
      let v_165 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_165, v_165, v_165, v_165).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r9.w);
      r8.x = (r8.x * r9.x);
      r6.y = (r6.y * r8.x);
      r6.y = (r6.w * r6.y);
      let v_166 = fma(r6.yyy, cb3_3.tint_symbol_2[21u].xyz, r7.xzw);
      r7 = vec4<f32>(v_166.x, r7.y, v_166.yz);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_167 = -(v2.xyzx);
      let v_168 = (v_167.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_168.xyz, r9.w);
      let v_169 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_169.xyz, r10.w);
      r8.x = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.x = clamp(((r8.xxxx / cb3_3.tint_symbol_2[22u].wwww)).x, 0.0f, 1.0f);
      r8.x = (r8.x * cb3_3.tint_symbol_2[22u].w);
      let v_170 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.xxx, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_170.xyz, r10.w);
      let v_171 = (r10.xyz + v_167.xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      let v_172 = bitcast<vec3<u32>>(r6.yyy);
      let v_173 = r9.xyz;
      let v_174 = select(r10.xyz, v_173, (v_172 != vec3<u32>()));
      r9 = vec4<f32>(v_174.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_175 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_175.xyz, r9.w);
      r8.x = dot(r9.xyz, r9.xyz);
      r8.x = inverseSqrt(r8.x);
      let v_176 = (r8.xxx * r9.xyz);
      r9 = vec4<f32>(v_176.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.x = ((-(cb3_3.tint_symbol_2[14u].wwww)).x + 1.0f);
      r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[14u].w);
      r6.y = (r6.y / r8.x);
      let v_177 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.x = dot(r9.xyz, v_177.xyz);
      r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).x, 0.0f, 1.0f);
      let v_178 = dot(r9.xyz, v1.xyz);
      r9.w = clamp(vec4<f32>(v_178, v_178, v_178, v_178).w, 0.0f, 1.0f);
      r8.x = (r8.x * r9.w);
      r9.w = (r6.y * r8.x);
      let v_179 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      let v_180 = fma(r10.xyz, r0.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_180.xyz);
      let v_181 = fma(r2.yzw, r3.xxx, r9.xyz);
      r9 = vec4<f32>(v_181.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_182 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_182.xyz, r9.w);
      let v_183 = dot(r9.xyz, r3.yzw);
      r9.w = clamp(vec4<f32>(v_183, v_183, v_183, v_183).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.x = (r9.w * r9.w);
      r10.x = (r10.x * r10.x);
      r9.w = (r9.w * r10.x);
      r9.w = fma(r1.z, r9.w, r6.z);
      let v_184 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_184, v_184, v_184, v_184).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r9.w);
      r8.x = (r8.x * r9.x);
      r6.y = (r6.y * r8.x);
      r6.y = (r6.w * r6.y);
      let v_185 = fma(r6.yyy, cb3_3.tint_symbol_2[22u].xyz, r7.xzw);
      r7 = vec4<f32>(v_185.x, r7.y, v_185.yz);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_186 = -(v2.xyzx);
      let v_187 = (v_186.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r9 = vec4<f32>(v_187.xyz, r9.w);
      let v_188 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r10 = vec4<f32>(v_188.xyz, r10.w);
      r8.x = dot(r10.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r8.x = clamp(((r8.xxxx / cb3_3.tint_symbol_2[23u].wwww)).x, 0.0f, 1.0f);
      r8.x = (r8.x * cb3_3.tint_symbol_2[23u].w);
      let v_189 = fma(cb3_3.tint_symbol_2[15u].xyz, r8.xxx, cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      let v_190 = (r10.xyz + v_186.xyz);
      r10 = vec4<f32>(v_190.xyz, r10.w);
      let v_191 = bitcast<vec3<u32>>(r6.yyy);
      let v_192 = r9.xyz;
      let v_193 = select(r10.xyz, v_192, (v_191 != vec3<u32>()));
      r9 = vec4<f32>(v_193.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_194 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_194.xyz, r9.w);
      r8.x = dot(r9.xyz, r9.xyz);
      r8.x = inverseSqrt(r8.x);
      let v_195 = (r8.xxx * r9.xyz);
      r9 = vec4<f32>(v_195.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.x = ((-(cb3_3.tint_symbol_2[15u].wwww)).x + 1.0f);
      r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[15u].w);
      r6.y = (r6.y / r8.x);
      let v_196 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r8.x = dot(r9.xyz, v_196.xyz);
      r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).x, 0.0f, 1.0f);
      let v_197 = dot(r9.xyz, v1.xyz);
      r9.w = clamp(vec4<f32>(v_197, v_197, v_197, v_197).w, 0.0f, 1.0f);
      r8.x = (r8.x * r9.w);
      r9.w = (r6.y * r8.x);
      let v_198 = (r9.www * cb3_3.tint_symbol_2[23u].xyz);
      r10 = vec4<f32>(v_198.xyz, r10.w);
      let v_199 = fma(r10.xyz, r0.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_199.xyz);
      let v_200 = fma(r2.yzw, r3.xxx, r9.xyz);
      r9 = vec4<f32>(v_200.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_201 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_201.xyz, r9.w);
      let v_202 = dot(r9.xyz, r3.yzw);
      r9.w = clamp(vec4<f32>(v_202, v_202, v_202, v_202).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.x = (r9.w * r9.w);
      r10.x = (r10.x * r10.x);
      r9.w = (r9.w * r10.x);
      r9.w = fma(r1.z, r9.w, r6.z);
      let v_203 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_203, v_203, v_203, v_203).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r9.w);
      r8.x = (r8.x * r9.x);
      r6.y = (r6.y * r8.x);
      r6.y = (r6.w * r6.y);
      let v_204 = fma(r6.yyy, cb3_3.tint_symbol_2[23u].xyz, r7.xzw);
      r7 = vec4<f32>(v_204.x, r7.y, v_204.yz);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_205 = -(v2.xyzx);
      let v_206 = (v_205.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r9 = vec4<f32>(v_206.xyz, r9.w);
      let v_207 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r10 = vec4<f32>(v_207.xyz, r10.w);
      r8.x = dot(r10.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r8.x = clamp(((r8.xxxx / cb3_3.tint_symbol_2[24u].wwww)).x, 0.0f, 1.0f);
      r8.x = (r8.x * cb3_3.tint_symbol_2[24u].w);
      let v_208 = fma(cb3_3.tint_symbol_2[16u].xyz, r8.xxx, cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_208.xyz, r10.w);
      let v_209 = (r10.xyz + v_205.xyz);
      r10 = vec4<f32>(v_209.xyz, r10.w);
      let v_210 = bitcast<vec3<u32>>(r6.yyy);
      let v_211 = r9.xyz;
      let v_212 = select(r10.xyz, v_211, (v_210 != vec3<u32>()));
      r9 = vec4<f32>(v_212.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_213 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_213.xyz, r9.w);
      r8.x = dot(r9.xyz, r9.xyz);
      r8.x = inverseSqrt(r8.x);
      let v_214 = (r8.xxx * r9.xyz);
      r9 = vec4<f32>(v_214.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.x = ((-(cb3_3.tint_symbol_2[16u].wwww)).x + 1.0f);
      r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[16u].w);
      r6.y = (r6.y / r8.x);
      let v_215 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r8.x = dot(r9.xyz, v_215.xyz);
      r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).x, 0.0f, 1.0f);
      let v_216 = dot(r9.xyz, v1.xyz);
      r9.w = clamp(vec4<f32>(v_216, v_216, v_216, v_216).w, 0.0f, 1.0f);
      r8.x = (r8.x * r9.w);
      r9.w = (r6.y * r8.x);
      let v_217 = (r9.www * cb3_3.tint_symbol_2[24u].xyz);
      r10 = vec4<f32>(v_217.xyz, r10.w);
      let v_218 = fma(r10.xyz, r0.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_218.xyz);
      let v_219 = fma(r2.yzw, r3.xxx, r9.xyz);
      r9 = vec4<f32>(v_219.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_220 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_220.xyz, r9.w);
      let v_221 = dot(r9.xyz, r3.yzw);
      r9.w = clamp(vec4<f32>(v_221, v_221, v_221, v_221).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.x = (r9.w * r9.w);
      r10.x = (r10.x * r10.x);
      r9.w = (r9.w * r10.x);
      r9.w = fma(r1.z, r9.w, r6.z);
      let v_222 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_222, v_222, v_222, v_222).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r9.w);
      r8.x = (r8.x * r9.x);
      r6.y = (r6.y * r8.x);
      r6.y = (r6.w * r6.y);
      let v_223 = fma(r6.yyy, cb3_3.tint_symbol_2[24u].xyz, r7.xzw);
      r7 = vec4<f32>(v_223.x, r7.y, v_223.yz);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_224 = -(v2.xyzx);
      let v_225 = (v_224.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r9 = vec4<f32>(v_225.xyz, r9.w);
      let v_226 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r10 = vec4<f32>(v_226.xyz, r10.w);
      r8.x = dot(r10.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r8.x = clamp(((r8.xxxx / cb3_3.tint_symbol_2[25u].wwww)).x, 0.0f, 1.0f);
      r8.x = (r8.x * cb3_3.tint_symbol_2[25u].w);
      let v_227 = fma(cb3_3.tint_symbol_2[17u].xyz, r8.xxx, cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_227.xyz, r10.w);
      let v_228 = (r10.xyz + v_224.xyz);
      r10 = vec4<f32>(v_228.xyz, r10.w);
      let v_229 = bitcast<vec3<u32>>(r6.yyy);
      let v_230 = r9.xyz;
      let v_231 = select(r10.xyz, v_230, (v_229 != vec3<u32>()));
      r9 = vec4<f32>(v_231.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_232 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_232.xyz, r9.w);
      r8.x = dot(r9.xyz, r9.xyz);
      r8.x = inverseSqrt(r8.x);
      let v_233 = (r8.xxx * r9.xyz);
      r9 = vec4<f32>(v_233.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.x = ((-(cb3_3.tint_symbol_2[17u].wwww)).x + 1.0f);
      r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[17u].w);
      r6.y = (r6.y / r8.x);
      let v_234 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r8.x = dot(r9.xyz, v_234.xyz);
      r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).x, 0.0f, 1.0f);
      let v_235 = dot(r9.xyz, v1.xyz);
      r9.w = clamp(vec4<f32>(v_235, v_235, v_235, v_235).w, 0.0f, 1.0f);
      r8.x = (r8.x * r9.w);
      r9.w = (r6.y * r8.x);
      let v_236 = (r9.www * cb3_3.tint_symbol_2[25u].xyz);
      r10 = vec4<f32>(v_236.xyz, r10.w);
      let v_237 = fma(r10.xyz, r0.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_237.xyz);
      let v_238 = fma(r2.yzw, r3.xxx, r9.xyz);
      r9 = vec4<f32>(v_238.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_239 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_239.xyz, r9.w);
      let v_240 = dot(r9.xyz, r3.yzw);
      r9.w = clamp(vec4<f32>(v_240, v_240, v_240, v_240).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.x = (r9.w * r9.w);
      r10.x = (r10.x * r10.x);
      r9.w = (r9.w * r10.x);
      r9.w = fma(r1.z, r9.w, r6.z);
      let v_241 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_241, v_241, v_241, v_241).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r9.w);
      r8.x = (r8.x * r9.x);
      r6.y = (r6.y * r8.x);
      r6.y = (r6.w * r6.y);
      let v_242 = fma(r6.yyy, cb3_3.tint_symbol_2[25u].xyz, r7.xzw);
      r7 = vec4<f32>(v_242.x, r7.y, v_242.yz);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_243 = -(v2.xyzx);
      let v_244 = (v_243.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r9 = vec4<f32>(v_244.xyz, r9.w);
      let v_245 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r10 = vec4<f32>(v_245.xyz, r10.w);
      r6.y = dot(r10.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r6.y = clamp(((r6.yyyy / cb3_3.tint_symbol_2[26u].wwww)).y, 0.0f, 1.0f);
      r6.y = (r6.y * cb3_3.tint_symbol_2[26u].w);
      let v_246 = fma(cb3_3.tint_symbol_2[18u].xyz, r6.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_246.xyz, r10.w);
      let v_247 = (r10.xyz + v_243.xyz);
      r10 = vec4<f32>(v_247.xyz, r10.w);
      let v_248 = bitcast<vec3<u32>>(r5.www);
      let v_249 = r9.xyz;
      let v_250 = select(r10.xyz, v_249, (v_248 != vec3<u32>()));
      r9 = vec4<f32>(v_250.xyz, r9.w);
      r5.w = dot(r9.xyz, r9.xyz);
      let v_251 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_251.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      r6.y = inverseSqrt(r6.y);
      let v_252 = (r6.yyy * r9.xyz);
      r9 = vec4<f32>(v_252.xyz, r9.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r6.y = fma(r6.y, r5.w, cb3_3.tint_symbol_2[18u].w);
      r5.w = (r5.w / r6.y);
      let v_253 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r6.y = dot(r9.xyz, v_253.xyz);
      r6.y = clamp(fma(r6.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_254 = dot(r9.xyz, v1.xyz);
      r8.x = clamp(vec4<f32>(v_254, v_254, v_254, v_254).x, 0.0f, 1.0f);
      r6.y = (r6.y * r8.x);
      r8.x = (r5.w * r6.y);
      let v_255 = (r8.xxx * cb3_3.tint_symbol_2[26u].xyz);
      r10 = vec4<f32>(v_255.xyz, r10.w);
      let v_256 = fma(r10.xyz, r0.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_256.xyz);
      let v_257 = fma(r2.yzw, r3.xxx, r9.xyz);
      r2 = vec4<f32>(r2.x, v_257.xyz);
      r3.x = dot(r2.yzw, r2.yzw);
      r3.x = inverseSqrt(r3.x);
      let v_258 = (r2.yzw * r3.xxx);
      r2 = vec4<f32>(r2.x, v_258.xyz);
      let v_259 = dot(r2.yzw, r3.yzw);
      r3.x = clamp(vec4<f32>(v_259, v_259, v_259, v_259).x, 0.0f, 1.0f);
      r3.x = ((-(r3.xxxx)).x + 1.0f);
      r8.x = (r3.x * r3.x);
      r8.x = (r8.x * r8.x);
      r3.x = (r3.x * r8.x);
      r1.z = fma(r1.z, r3.x, r6.z);
      let v_260 = dot(r2.yzw, v1.xyz);
      r2.y = clamp(vec4<f32>(v_260, v_260, v_260, v_260).y, 0.0f, 1.0f);
      r2.y = log2(r2.y);
      r2.y = (r2.y * r7.y);
      r2.y = exp2(r2.y);
      r1.z = (r1.z * r2.y);
      r1.z = (r6.y * r1.z);
      r1.z = (r5.w * r1.z);
      r1.z = (r6.w * r1.z);
      let v_261 = fma(r1.zzz, cb3_3.tint_symbol_2[26u].xyz, r7.xzw);
      r7 = vec4<f32>(v_261.x, r7.y, v_261.yz);
    }
  }
  r1.z = (r6.x * r6.x);
  r1.x = (r1.x * r1.x);
  let v_262 = (r7.xzw * r1.xxx);
  r2 = vec4<f32>(r2.x, v_262.xyz);
  let v_263 = fma(r1.zzz, r8.yzw, r2.yzw);
  r2 = vec4<f32>(r2.x, v_263.xyz);
  let v_264 = fma(r4.xyz, r4.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_264.xyz);
  r1.x = (v1.z + cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_265 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_265.xyz, r4.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_266 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(r6.x, v_266.xyz);
  let v_267 = (r6.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(r6.x, v_267.xyz);
  let v_268 = fma(r4.xyz, r1.zzz, r6.yzw);
  r4 = vec4<f32>(v_268.xyz, r4.w);
  let v_269 = (r1.www * r4.xyz);
  r4 = vec4<f32>(v_269.xyz, r4.w);
  let v_270 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(r6.x, v_270.xyz);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_271 = dot(r7.xyz, v1.xyz);
  r1.x = clamp(vec4<f32>(v_271, v_271, v_271, v_271).x, 0.0f, 1.0f);
  let v_272 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.yzw);
  r6 = vec4<f32>(r6.x, v_272.xyz);
  let v_273 = fma(r6.yzw, r2.xxx, r4.xyz);
  r4 = vec4<f32>(v_273.xyz, r4.w);
  let v_274 = (r6.xxx * r4.xyz);
  r4 = vec4<f32>(v_274.xyz, r4.w);
  let v_275 = fma(r4.xyz, r0.xyz, r2.yzw);
  r0 = vec4<f32>(v_275.xyz, r0.w);
  r1.x = ((-(r6.xxxx)).x + 1.0f);
  r1.z = dot((-(r3.yzwy)).xyz, v1.xyz);
  r1.z = (r1.z + r1.z);
  let v_276 = -(r1.zzzz);
  let v_277 = fma(v1.xyz, v_276.yzw, (-(r3.yyzw)).yzw);
  r2 = vec4<f32>(r2.x, v_277.xyz);
  let v_278 = clamp(((r1.yyyy * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_279 = r1;
  r1 = vec4<f32>(v_279.x, v_278.xy, v_279.w);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r3.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.y = (r1.y * cb5_5.tint_symbol_3[6u].z);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r3.x)));
  r3.z = fma(r1.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.y = (r1.y * r1.y);
  r1.y = fma(r1.y, 5.0f, r3.x);
  let v_280 = bitcast<u32>(r3.y);
  let v_281 = r3.z;
  r1.y = select(r1.y, v_281, (v_280 != 0u));
  let v_282 = (r2.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_282.xyz, r3.w);
  r2.y = (abs(r2.wwww).y + 1.0f);
  let v_283 = (r3.xyz / r2.yyy);
  r3 = vec4<f32>(v_283.xyz, r3.w);
  let v_284 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_284.xyz, r3.w);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
  let v_285 = bitcast<vec2<u32>>(r2.yy);
  let v_286 = r3.xy;
  let v_287 = select(r3.zy, v_286, (v_285 != vec2<u32>()));
  let v_288 = r2;
  r2 = vec4<f32>(v_288.x, v_287.xy, v_288.w);
  let v_289 = r1.y;
  r3 = textureSampleLevel(t1, s1, r2.yzyy.xy, v_289);
  r1.y = max(r1.w, r2.x);
  let v_290 = (r1.yyy * r3.xyz);
  r2 = vec4<f32>(v_290.xyz, r2.w);
  let v_291 = (r1.zzz * r2.xyz);
  r1 = vec4<f32>(r1.x, v_291.xyz);
  let v_292 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_292.xyz);
  let v_293 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_293.xyz);
  let v_294 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_294.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.w = dot(r5.xyz, r5.xyz);
  r1.x = sqrt(r0.w);
  let v_295 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_295.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r5.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_296 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_296 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_297 = (r0.www * r5.xyz);
  r2 = vec4<f32>(v_297.xyz, r2.w);
  let v_298 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_298, v_298, v_298, v_298).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_299 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_299, v_299, v_299, v_299).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_300 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_300.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_301 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_301.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_302 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_302.xyz, r2.w);
  let v_303 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_303.xyz, r2.w);
  let v_304 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_304.xyz, r3.w);
  let v_305 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_305.xyz, r2.w);
  let v_306 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_307 = (r2.xyz + v_306.xyz);
  r2 = vec4<f32>(v_307.xyz, r2.w);
  let v_308 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_308.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_309 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_309.xy, r1.z, v_309.z);
  let v_310 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_310.xy, r1.z, v_310.z);
  let v_311 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_311.xyz, r0.w);
  let v_312 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_312.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v6);
  return o0;
}
