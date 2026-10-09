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

struct cb4_struct {
  tint_symbol_4 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

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
  let v_1 = (v0.xy * cb11_11.tint_symbol_4[3u].ww);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r1 = textureSample(t0, s0, v0.xyxx.xy);
  r0 = textureSample(t7, s7, r0.xyxx.xy);
  let v_2 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.x = (r0.x * v6.x);
  let v_3 = (r1.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r1 = (r1 * v6.xxxw);
  let v_4 = (v6.xx * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r0.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  r0.w = (r0.w * r2.y);
  r0.x = clamp(((r0.xxxx * vec4<f32>(0.40000000596046447754f))).x, 0.0f, 1.0f);
  let v_5 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = -(v2.xxyz);
  let v_7 = (v_6.yzw + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(r2.x, v_7.xyz);
  r3.x = dot(r2.yzw, r2.yzw);
  r3.x = inverseSqrt(r3.x);
  let v_8 = (r2.yzw * r3.xxx);
  r3 = vec4<f32>(r3.x, v_8.xyz);
  let v_9 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_10 = fma(r2.yzw, r3.xxx, v_9.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  r4.w = dot(r4.xyz, r4.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_11 = (r4.www * r4.xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  r2.x = (r2.x * r2.x);
  r0.w = (r0.w * r0.w);
  r4.w = fma(r0.y, 512.0f, -500.0f);
  r4.w = max(r4.w, 0.0f);
  let v_12 = -(r4.wwww);
  r0.y = fma(r0.y, 512.0f, v_12.y);
  r4.w = (r4.w * 558.0f);
  r0.y = fma(r0.y, 3.0f, r4.w);
  r4.w = dot(r2.yzw, cb1_1.tint_symbol[14u].xyz);
  let v_13 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = (r5.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r6 = vec4<f32>(v_14.xyz, r6.w);
  let v_15 = fma(r5.xxx, cb6_6.tint_symbol_5[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_15.xyz, r6.w);
  let v_16 = fma(r5.zzz, cb6_6.tint_symbol_5[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_16.xyz, r6.w);
  let v_17 = fma(r6.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r7 = vec4<f32>(v_17.xyz, r7.w);
  let v_18 = &(x0[0u]);
  let v_19 = r7;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = fma(r6.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r8 = vec4<f32>(v_20.xyz, r8.w);
  let v_21 = &(x0[1u]);
  let v_22 = r8;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  let v_23 = fma(r6.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r9 = vec4<f32>(v_23.xyz, r9.w);
  let v_24 = &(x0[2u]);
  let v_25 = r9;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  let v_26 = fma(r6.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r6 = vec4<f32>(v_26.xyz, r6.w);
  let v_27 = &(x0[3u]);
  let v_28 = r6;
  *(v_27) = vec4<f32>(v_28.xyz, (*(v_27)).w);
  let v_29 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_30 = r10;
  r10 = vec4<f32>(v_30.x, v_29.x, v_30.z, v_29.y);
  r5.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_31 = abs(r9.yyyy);
  r6.z = max(v_31.z, abs(r9.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r5.w)));
  let v_32 = (bitcast<u32>(r6.z) != 0u);
  let v_33 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r6.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_33, v_32);
  let v_34 = abs(r8.yyyy);
  r6.w = max(v_34.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_35 = bitcast<u32>(r6.w);
  r6.z = select(r6.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_35 != 0u));
  let v_36 = abs(r7.yyyy);
  r6.w = max(v_36.w, abs(r7.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_37 = bitcast<u32>(r5.w);
  r5.w = select(r6.z, 0.0f, (v_37 != 0u));
  let v_38 = x0[bitcast<i32>(r5.w)];
  r7 = vec4<f32>(v_38.xyz, r7.w);
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
  let v_39 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_39.xy, r9.z, v_39.z);
  r9.z = dpdx(r5.w);
  let v_40 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_40.xyz, r11.w);
  r11.w = dpdy(r5.w);
  let v_41 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_41.xy, r7.zw);
  let v_42 = -(r7.xyxx);
  let v_43 = fma(r9.xz, r11.xz, v_42.xy);
  r12 = vec4<f32>(v_43.xy, r12.zw);
  r7.x = (1.0f / r12.x);
  r7.y = (r9.z * r11.y);
  let v_44 = -(r7.yyyy);
  r12.z = fma(r9.x, r11.w, v_44.z);
  let v_45 = (r7.xx * r12.yz);
  r7 = vec4<f32>(v_45.xy, r7.zw);
  let v_46 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_46.xy, r7.zw);
  let v_47 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_47.xy, r7.zw);
  r5.w = fma((-(r6.wwww)).w, r7.x, r5.w);
  r5.w = fma((-(r6.wwww)).w, r7.y, r5.w);
  let v_48 = bitcast<u32>(r6.z);
  let v_49 = r5.w;
  r10.z = select(r7.z, v_49, (v_48 != 0u));
  r8.z = 0.0f;
  let v_50 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_50.xyz, r7.w);
  let v_51 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_51.xy, r10.zw);
  let v_52 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_52.xyz, r9.w);
  let v_53 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_53.xy, r10.zw);
  let v_54 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_54.xyz, r11.w);
  let v_55 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_55.xy, r10.zw);
  let v_56 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_56.xyz, r12.w);
  let v_57 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_57.xy, r10.zw);
  let v_58 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_58.xyz, r13.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_59.xy, r10.zw);
  let v_60 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_60.xyz, r14.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_61.xy, r10.zw);
  let v_62 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_62.xyz, r15.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_63.xy, r10.zw);
  let v_64 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_64.xyz, r16.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_65.xy, r10.zw);
  let v_66 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_66.xyz, r17.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_67.xy, r10.zw);
  let v_68 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_68.xyz, r18.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_69.xy, r10.zw);
  let v_70 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_70.xyz, r19.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_71.xy, r10.zw);
  let v_72 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_72.xyz, r20.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_73.xy, r10.zw);
  let v_74 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_74.xyz, r21.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_75.xy, r10.zw);
  let v_76 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_76.xyz, r22.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_77.xy, r10.zw);
  let v_78 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_78.xyz, r23.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_79.xy, r10.zw);
  let v_80 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_80.xyz, r8.w);
  let v_81 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_81.xy, r7.z);
  let v_82 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_82.xy, r9.z);
  let v_83 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_83.xy, r11.z);
  let v_84 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_84.xy, r12.z);
  let v_85 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_85.xy, r13.z);
  let v_86 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_86.xy, r14.z);
  let v_87 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_87.xy, r15.z);
  let v_88 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_88.xy, r16.z);
  let v_89 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_89.xy, r17.z);
  let v_90 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_90.xy, r18.z);
  let v_91 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_91.xy, r19.z);
  let v_92 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_92.xy, r20.z);
  let v_93 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_93.xy, r21.z);
  let v_94 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_94.xy, r22.z);
  let v_95 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_95.xy, r23.z);
  let v_96 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_96.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r5.w = dot(r7, vec4<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_97 = abs(r6.yyyy);
  r6.x = max(v_97.x, abs(r6.xxxx).x);
  r6.x = clamp(fma(r6.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.x * r4.w);
  r4.w = fma(r5.w, 0.0625f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_5[3u].z);
  let v_98 = -(r4.wwww);
  r4.w = fma(r5.w, v_98.w, r4.w);
  let v_99 = dot(v1.xyz, v_9.xyz);
  r5.w = clamp(vec4<f32>(v_99, v_99, v_99, v_99).w, 0.0f, 1.0f);
  let v_100 = dot(r3.yzw, v1.xyz);
  r6.x = clamp(vec4<f32>(v_100, v_100, v_100, v_100).x, 0.0f, 1.0f);
  let v_101 = dot(r4.xyz, v_9.xyz);
  r6.y = clamp(vec4<f32>(v_101, v_101, v_101, v_101).y, 0.0f, 1.0f);
  let v_102 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_102.xy, r6.zw);
  let v_103 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_103.xy);
  let v_104 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_104.xy);
  let v_105 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_105.xy, r6.zw);
  r6.z = ((-(r0.zzzz)).z + 1.0f);
  let v_106 = fma(r0.zz, r6.xy, r6.zz);
  r6 = vec4<f32>(v_106.xy, r6.zw);
  let v_107 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_107.xy, r7.zw);
  r6.w = (r7.x * 0.125f);
  r6.x = fma((-(r0.xxxx)).x, r6.x, 1.0f);
  r4.x = dot(v1.xyz, r4.xyz);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r7.y);
  r4.x = exp2(r4.x);
  r4.x = (r6.y * r4.x);
  r4.x = (r6.w * r4.x);
  r4.x = (r0.x * r4.x);
  r4.x = (r5.w * r4.x);
  r4.y = (r5.w * r6.x);
  let v_108 = fma(r1.xyz, r4.yyy, r4.xxx);
  r4 = vec4<f32>(v_108.xyz, r4.w);
  let v_109 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_109.xyz, r4.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r8 = vec4<f32>(r8.x, vec3<f32>());
    r7 = vec4<f32>(0.0f, r7.y, vec2<f32>());
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_110 = (v_6.xzw + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_110.x, r7.y, v_110.yz);
    let v_111 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_111.xyz, r8.w);
    r8.x = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.x = clamp(((r8.xxxx / cb3_3.tint_symbol_2[19u].wwww)).x, 0.0f, 1.0f);
    r8.x = (r8.x * cb3_3.tint_symbol_2[19u].w);
    let v_112 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_112.xyz, r8.w);
    let v_113 = (r8.xyz + (-(v2.xyzx)).xyz);
    r8 = vec4<f32>(v_113.xyz, r8.w);
    let v_114 = bitcast<vec3<u32>>(r6.yyy);
    let v_115 = r7.xzw;
    let v_116 = select(r8.xyz, v_115, (v_114 != vec3<u32>()));
    r7 = vec4<f32>(v_116.x, r7.y, v_116.yz);
    r6.y = dot(r7.xzw, r7.xzw);
    let v_117 = (r7.xzw + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_117.x, r7.y, v_117.yz);
    r8.x = dot(r7.xzw, r7.xzw);
    r8.x = inverseSqrt(r8.x);
    let v_118 = (r7.xzw * r8.xxx);
    r7 = vec4<f32>(v_118.x, r7.y, v_118.yz);
    r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r8.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[11u].w);
    r6.y = (r6.y / r8.x);
    let v_119 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.x = dot(r7.xzw, v_119.xyz);
    r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_120 = dot(r7.xzw, v1.xyz);
    r8.y = clamp(vec4<f32>(v_120, v_120, v_120, v_120).y, 0.0f, 1.0f);
    r8.x = (r8.x * r8.y);
    r8.y = (r6.y * r8.x);
    let v_121 = (r8.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(r8.x, v_121.xyz);
    let v_122 = (r1.xyz * r8.yzw);
    r8 = vec4<f32>(r8.x, v_122.xyz);
    let v_123 = fma(r2.yzw, r3.xxx, r7.xzw);
    r7 = vec4<f32>(v_123.x, r7.y, v_123.yz);
    r9.x = dot(r7.xzw, r7.xzw);
    r9.x = inverseSqrt(r9.x);
    let v_124 = (r7.xzw * r9.xxx);
    r7 = vec4<f32>(v_124.x, r7.y, v_124.yz);
    let v_125 = dot(r7.xzw, r3.yzw);
    r9.x = clamp(vec4<f32>(v_125, v_125, v_125, v_125).x, 0.0f, 1.0f);
    r9.x = ((-(r9.xxxx)).x + 1.0f);
    r9.y = (r9.x * r9.x);
    r9.y = (r9.y * r9.y);
    r9.x = (r9.y * r9.x);
    r9.x = fma(r0.z, r9.x, r6.z);
    let v_126 = dot(r7.xzw, v1.xyz);
    r7.x = clamp(vec4<f32>(v_126, v_126, v_126, v_126).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r7.x * r7.y);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r9.x);
    r7.x = (r8.x * r7.x);
    r6.y = (r6.y * r7.x);
    r6.y = (r6.w * r6.y);
    let v_127 = (r6.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_127.x, r7.y, v_127.yz);
  }
  r6.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.y) != 0u)) {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    let v_128 = bitcast<u32>(r8.x);
    let v_129 = r6.y;
    r5.w = select(r5.w, v_129, (v_128 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_130 = -(v2.xyzx);
      let v_131 = (v_130.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_131.xyz, r9.w);
      let v_132 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_132.xyz, r10.w);
      r8.x = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.x = clamp(((r8.xxxx / cb3_3.tint_symbol_2[20u].wwww)).x, 0.0f, 1.0f);
      r8.x = (r8.x * cb3_3.tint_symbol_2[20u].w);
      let v_133 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_133.xyz, r10.w);
      let v_134 = (r10.xyz + v_130.xyz);
      r10 = vec4<f32>(v_134.xyz, r10.w);
      let v_135 = bitcast<vec3<u32>>(r6.yyy);
      let v_136 = r9.xyz;
      let v_137 = select(r10.xyz, v_136, (v_135 != vec3<u32>()));
      r9 = vec4<f32>(v_137.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_138 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_138.xyz, r9.w);
      r8.x = dot(r9.xyz, r9.xyz);
      r8.x = inverseSqrt(r8.x);
      let v_139 = (r8.xxx * r9.xyz);
      r9 = vec4<f32>(v_139.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[12u].w);
      r6.y = (r6.y / r8.x);
      let v_140 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.x = dot(r9.xyz, v_140.xyz);
      r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_141 = dot(r9.xyz, v1.xyz);
      r9.w = clamp(vec4<f32>(v_141, v_141, v_141, v_141).w, 0.0f, 1.0f);
      r8.x = (r8.x * r9.w);
      r9.w = (r6.y * r8.x);
      let v_142 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_142.xyz, r10.w);
      let v_143 = fma(r10.xyz, r1.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_143.xyz);
      let v_144 = fma(r2.yzw, r3.xxx, r9.xyz);
      r9 = vec4<f32>(v_144.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_145 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_145.xyz, r9.w);
      let v_146 = dot(r9.xyz, r3.yzw);
      r9.w = clamp(vec4<f32>(v_146, v_146, v_146, v_146).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.x = (r9.w * r9.w);
      r10.x = (r10.x * r10.x);
      r9.w = (r9.w * r10.x);
      r9.w = fma(r0.z, r9.w, r6.z);
      let v_147 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_147, v_147, v_147, v_147).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r9.w);
      r8.x = (r8.x * r9.x);
      r6.y = (r6.y * r8.x);
      r6.y = (r6.w * r6.y);
      let v_148 = fma(r6.yyy, cb3_3.tint_symbol_2[20u].xyz, r7.xzw);
      r7 = vec4<f32>(v_148.x, r7.y, v_148.yz);
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
      let v_149 = -(v2.xyzx);
      let v_150 = (v_149.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_150.xyz, r9.w);
      let v_151 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_151.xyz, r10.w);
      r8.x = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.x = clamp(((r8.xxxx / cb3_3.tint_symbol_2[21u].wwww)).x, 0.0f, 1.0f);
      r8.x = (r8.x * cb3_3.tint_symbol_2[21u].w);
      let v_152 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_152.xyz, r10.w);
      let v_153 = (r10.xyz + v_149.xyz);
      r10 = vec4<f32>(v_153.xyz, r10.w);
      let v_154 = bitcast<vec3<u32>>(r6.yyy);
      let v_155 = r9.xyz;
      let v_156 = select(r10.xyz, v_155, (v_154 != vec3<u32>()));
      r9 = vec4<f32>(v_156.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_157 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_157.xyz, r9.w);
      r8.x = dot(r9.xyz, r9.xyz);
      r8.x = inverseSqrt(r8.x);
      let v_158 = (r8.xxx * r9.xyz);
      r9 = vec4<f32>(v_158.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[13u].w);
      r6.y = (r6.y / r8.x);
      let v_159 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.x = dot(r9.xyz, v_159.xyz);
      r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_160 = dot(r9.xyz, v1.xyz);
      r9.w = clamp(vec4<f32>(v_160, v_160, v_160, v_160).w, 0.0f, 1.0f);
      r8.x = (r8.x * r9.w);
      r9.w = (r6.y * r8.x);
      let v_161 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_161.xyz, r10.w);
      let v_162 = fma(r10.xyz, r1.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_162.xyz);
      let v_163 = fma(r2.yzw, r3.xxx, r9.xyz);
      r9 = vec4<f32>(v_163.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_164 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_164.xyz, r9.w);
      let v_165 = dot(r9.xyz, r3.yzw);
      r9.w = clamp(vec4<f32>(v_165, v_165, v_165, v_165).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.x = (r9.w * r9.w);
      r10.x = (r10.x * r10.x);
      r9.w = (r9.w * r10.x);
      r9.w = fma(r0.z, r9.w, r6.z);
      let v_166 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_166, v_166, v_166, v_166).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r9.w);
      r8.x = (r8.x * r9.x);
      r6.y = (r6.y * r8.x);
      r6.y = (r6.w * r6.y);
      let v_167 = fma(r6.yyy, cb3_3.tint_symbol_2[21u].xyz, r7.xzw);
      r7 = vec4<f32>(v_167.x, r7.y, v_167.yz);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_168 = -(v2.xyzx);
      let v_169 = (v_168.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_169.xyz, r9.w);
      let v_170 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_170.xyz, r10.w);
      r6.y = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.y = clamp(((r6.yyyy / cb3_3.tint_symbol_2[22u].wwww)).y, 0.0f, 1.0f);
      r6.y = (r6.y * cb3_3.tint_symbol_2[22u].w);
      let v_171 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      let v_172 = (r10.xyz + v_168.xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = bitcast<vec3<u32>>(r5.www);
      let v_174 = r9.xyz;
      let v_175 = select(r10.xyz, v_174, (v_173 != vec3<u32>()));
      r9 = vec4<f32>(v_175.xyz, r9.w);
      r5.w = dot(r9.xyz, r9.xyz);
      let v_176 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_176.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      r6.y = inverseSqrt(r6.y);
      let v_177 = (r6.yyy * r9.xyz);
      r9 = vec4<f32>(v_177.xyz, r9.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r6.y = fma(r6.y, r5.w, cb3_3.tint_symbol_2[14u].w);
      r5.w = (r5.w / r6.y);
      let v_178 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.y = dot(r9.xyz, v_178.xyz);
      r6.y = clamp(fma(r6.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_179 = dot(r9.xyz, v1.xyz);
      r8.x = clamp(vec4<f32>(v_179, v_179, v_179, v_179).x, 0.0f, 1.0f);
      r6.y = (r6.y * r8.x);
      r8.x = (r5.w * r6.y);
      let v_180 = (r8.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_180.xyz, r10.w);
      let v_181 = fma(r10.xyz, r1.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_181.xyz);
      let v_182 = fma(r2.yzw, r3.xxx, r9.xyz);
      r2 = vec4<f32>(r2.x, v_182.xyz);
      r3.x = dot(r2.yzw, r2.yzw);
      r3.x = inverseSqrt(r3.x);
      let v_183 = (r2.yzw * r3.xxx);
      r2 = vec4<f32>(r2.x, v_183.xyz);
      let v_184 = dot(r2.yzw, r3.yzw);
      r3.x = clamp(vec4<f32>(v_184, v_184, v_184, v_184).x, 0.0f, 1.0f);
      r3.x = ((-(r3.xxxx)).x + 1.0f);
      r8.x = (r3.x * r3.x);
      r8.x = (r8.x * r8.x);
      r3.x = (r3.x * r8.x);
      r0.z = fma(r0.z, r3.x, r6.z);
      let v_185 = dot(r2.yzw, v1.xyz);
      r2.y = clamp(vec4<f32>(v_185, v_185, v_185, v_185).y, 0.0f, 1.0f);
      r2.y = log2(r2.y);
      r2.y = (r2.y * r7.y);
      r2.y = exp2(r2.y);
      r0.z = (r0.z * r2.y);
      r0.z = (r6.y * r0.z);
      r0.z = (r5.w * r0.z);
      r0.z = (r6.w * r0.z);
      let v_186 = fma(r0.zzz, cb3_3.tint_symbol_2[22u].xyz, r7.xzw);
      r7 = vec4<f32>(v_186.x, r7.y, v_186.yz);
    }
  }
  r0.z = (r6.x * r6.x);
  r0.x = (r0.x * r0.x);
  let v_187 = (r7.xzw * r0.xxx);
  r2 = vec4<f32>(r2.x, v_187.xyz);
  let v_188 = fma(r0.zzz, r8.yzw, r2.yzw);
  r2 = vec4<f32>(r2.x, v_188.xyz);
  let v_189 = fma(r4.xyz, r4.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_189.xyz);
  r0.x = (v1.z + cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_190 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_190.xyz, r4.w);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_191 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(r6.x, v_191.xyz);
  let v_192 = (r6.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(r6.x, v_192.xyz);
  let v_193 = fma(r4.xyz, r0.zzz, r6.yzw);
  r4 = vec4<f32>(v_193.xyz, r4.w);
  let v_194 = (r0.www * r4.xyz);
  r4 = vec4<f32>(v_194.xyz, r4.w);
  let v_195 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(r6.x, v_195.xyz);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_196 = dot(r7.xyz, v1.xyz);
  r0.x = clamp(vec4<f32>(v_196, v_196, v_196, v_196).x, 0.0f, 1.0f);
  let v_197 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.xxx, r6.yzw);
  r6 = vec4<f32>(r6.x, v_197.xyz);
  let v_198 = fma(r6.yzw, r2.xxx, r4.xyz);
  r4 = vec4<f32>(v_198.xyz, r4.w);
  let v_199 = (r6.xxx * r4.xyz);
  r4 = vec4<f32>(v_199.xyz, r4.w);
  let v_200 = fma(r4.xyz, r1.xyz, r2.yzw);
  r1 = vec4<f32>(v_200.xyz, r1.w);
  r0.x = ((-(r6.xxxx)).x + 1.0f);
  r0.z = dot((-(r3.yzwy)).xyz, v1.xyz);
  r0.z = (r0.z + r0.z);
  let v_201 = -(r0.zzzz);
  let v_202 = fma(v1.xyz, v_201.yzw, (-(r3.yyzw)).yzw);
  r2 = vec4<f32>(r2.x, v_202.xyz);
  let v_203 = clamp(((r0.yyyy * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_204 = r0;
  r0 = vec4<f32>(v_204.x, v_203.xy, v_204.w);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r3.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.y = (r0.y * cb5_5.tint_symbol_3[6u].z);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r3.x)));
  r3.z = fma(r0.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.y = (r0.y * r0.y);
  r0.y = fma(r0.y, 5.0f, r3.x);
  let v_205 = bitcast<u32>(r3.y);
  let v_206 = r3.z;
  r0.y = select(r0.y, v_206, (v_205 != 0u));
  let v_207 = (r2.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_207.xyz, r3.w);
  r2.y = (abs(r2.wwww).y + 1.0f);
  let v_208 = (r3.xyz / r2.yyy);
  r3 = vec4<f32>(v_208.xyz, r3.w);
  let v_209 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_209.xyz, r3.w);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
  let v_210 = bitcast<vec2<u32>>(r2.yy);
  let v_211 = r3.xy;
  let v_212 = select(r3.zy, v_211, (v_210 != vec2<u32>()));
  let v_213 = r2;
  r2 = vec4<f32>(v_213.x, v_212.xy, v_213.w);
  let v_214 = r0.y;
  r3 = textureSampleLevel(t1, s1, r2.yzyy.xy, v_214);
  r0.y = max(r0.w, r2.x);
  let v_215 = (r0.yyy * r3.xyz);
  r2 = vec4<f32>(v_215.xyz, r2.w);
  let v_216 = (r0.zzz * r2.xyz);
  r0 = vec4<f32>(r0.x, v_216.xyz);
  let v_217 = (r0.yzw * vec3<f32>(0.68169009685516357422f));
  r0 = vec4<f32>(r0.x, v_217.xyz);
  let v_218 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r0.yzw);
  r0 = vec4<f32>(r0.x, v_218.xyz);
  let v_219 = fma(r0.yzw, r0.xxx, r1.xyz);
  r0 = vec4<f32>(v_219.xyz, r0.w);
  o0.w = (r1.w * cb2_2.tint_symbol_1[15u].x);
  r0.w = dot(r5.xyz, r5.xyz);
  r1.x = sqrt(r0.w);
  let v_220 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_220.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r5.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_221 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_221 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_222 = (r0.www * r5.xyz);
  r2 = vec4<f32>(v_222.xyz, r2.w);
  let v_223 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_223, v_223, v_223, v_223).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_224 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_224, v_224, v_224, v_224).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_225 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_225.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_226 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_226.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_227 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_227.xyz, r2.w);
  let v_228 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_228.xyz, r2.w);
  let v_229 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_229.xyz, r3.w);
  let v_230 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_230.xyz, r2.w);
  let v_231 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_232 = (r2.xyz + v_231.xyz);
  r2 = vec4<f32>(v_232.xyz, r2.w);
  let v_233 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_233.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_234 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_234.xy, r1.z, v_234.z);
  let v_235 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_235.xy, r1.z, v_235.z);
  let v_236 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_236.xyz, r0.w);
  let v_237 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_237.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v6);
  return o0;
}
