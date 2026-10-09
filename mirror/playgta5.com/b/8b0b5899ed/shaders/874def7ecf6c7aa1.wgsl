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

var<private> v4 : vec4<f32>;

var<private> v5 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v4 = v_2;
  x1[0u].x = v5[0u];
  x1[0u].y = v5[1u];
  x1[0u].z = v5[2u];
  x1[0u].w = v5[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  r2 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_4 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r2.x = dot(r2.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r2.x = clamp(((r2.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  r0.w = (r0.w * v0.w);
  let v_5 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_6 = r2;
  r2 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  let v_7 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = ((-(v3.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_9 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_11 = fma(r3.xyz, r3.www, v_10.xyz);
  r5 = vec4<f32>(v_11.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_12 = (r3.www * r5.xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = (r2.yz * r2.yz);
  let v_14 = r2;
  r2 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r3.w = fma(r2.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_15 = -(r3.wwww);
  r2.w = fma(r2.w, cb12_12.tint_symbol_4[0u].y, v_15.w);
  r3.w = (r3.w * 558.0f);
  r2.w = fma(r2.w, 3.0f, r3.w);
  r3.x = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_16 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r3 = vec4<f32>(r3.x, v_16.xyz);
  let v_17 = (r3.zzz * cb6_6.tint_symbol_5[1u].xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  let v_18 = fma(r3.yyy, cb6_6.tint_symbol_5[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  let v_19 = fma(r3.www, cb6_6.tint_symbol_5[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_19.xyz, r6.w);
  let v_20 = fma(r6.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r7 = vec4<f32>(v_20.xyz, r7.w);
  let v_21 = &(x0[0u]);
  let v_22 = r7;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  let v_23 = fma(r6.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r8 = vec4<f32>(v_23.xyz, r8.w);
  let v_24 = &(x0[1u]);
  let v_25 = r8;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  let v_26 = fma(r6.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r9 = vec4<f32>(v_26.xyz, r9.w);
  let v_27 = &(x0[2u]);
  let v_28 = r9;
  *(v_27) = vec4<f32>(v_28.xyz, (*(v_27)).w);
  let v_29 = fma(r6.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r6 = vec4<f32>(v_29.xyz, r6.w);
  let v_30 = &(x0[3u]);
  let v_31 = r6;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_33 = r10;
  r10 = vec4<f32>(v_33.x, v_32.x, v_33.z, v_32.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_34 = abs(r9.yyyy);
  r5.w = max(v_34.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_35 = (bitcast<u32>(r5.w) != 0u);
  let v_36 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_36, v_35);
  let v_37 = abs(r8.yyyy);
  r6.z = max(v_37.z, abs(r8.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_38 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_38 != 0u));
  let v_39 = abs(r7.yyyy);
  r6.z = max(v_39.z, abs(r7.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_40 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_40 != 0u));
  let v_41 = x0[bitcast<i32>(r4.w)];
  r7 = vec4<f32>(v_41.xyz, r7.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r4.w = dot(r8, cb6_6.tint_symbol_5[12u]);
  r6.z = dot(r8, cb6_6.tint_symbol_5[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r7.z);
  let v_42 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_42.xy, r9.z, v_42.z);
  r9.z = dpdx(r4.w);
  let v_43 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_43.xyz, r11.w);
  r11.w = dpdy(r4.w);
  let v_44 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_44.xy, r7.zw);
  let v_45 = -(r7.xyxx);
  let v_46 = fma(r9.xz, r11.xz, v_45.xy);
  r12 = vec4<f32>(v_46.xy, r12.zw);
  r6.w = (1.0f / r12.x);
  r7.x = (r9.z * r11.y);
  let v_47 = -(r7.xxxx);
  r12.z = fma(r9.x, r11.w, v_47.z);
  let v_48 = (r6.ww * r12.yz);
  r7 = vec4<f32>(v_48.xy, r7.zw);
  let v_49 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_49.xy, r7.zw);
  let v_50 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_50.xy, r7.zw);
  r4.w = fma((-(r6.zzzz)).w, r7.x, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r7.y, r4.w);
  let v_51 = bitcast<u32>(r5.w);
  let v_52 = r4.w;
  r10.z = select(r7.z, v_52, (v_51 != 0u));
  r8.z = 0.0f;
  let v_53 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_53.xyz, r7.w);
  let v_54 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_54.xy, r10.zw);
  let v_55 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_55.xyz, r9.w);
  let v_56 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_56.xy, r10.zw);
  let v_57 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_57.xyz, r11.w);
  let v_58 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_58.xy, r10.zw);
  let v_59 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_59.xyz, r12.w);
  let v_60 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_60.xy, r10.zw);
  let v_61 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_61.xyz, r13.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_62.xy, r10.zw);
  let v_63 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_63.xyz, r14.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_64.xy, r10.zw);
  let v_65 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_65.xyz, r15.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_66.xy, r10.zw);
  let v_67 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_67.xyz, r16.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_68.xy, r10.zw);
  let v_69 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_69.xyz, r17.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_70.xy, r10.zw);
  let v_71 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_71.xyz, r18.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_72.xy, r10.zw);
  let v_73 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_73.xyz, r19.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_74.xy, r10.zw);
  let v_75 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_75.xyz, r20.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_76.xy, r10.zw);
  let v_77 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_77.xyz, r21.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_78.xy, r10.zw);
  let v_79 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_79.xyz, r22.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_80.xy, r10.zw);
  let v_81 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_81.xyz, r23.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_82.xy, r10.zw);
  let v_83 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_83.xyz, r8.w);
  let v_84 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_84.xy, r7.z);
  let v_85 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_85.xy, r9.z);
  let v_86 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_86.xy, r11.z);
  let v_87 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_87.xy, r12.z);
  let v_88 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_88.xy, r13.z);
  let v_89 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_89.xy, r14.z);
  let v_90 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_90.xy, r15.z);
  let v_91 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_91.xy, r16.z);
  let v_92 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_92.xy, r17.z);
  let v_93 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_93.xy, r18.z);
  let v_94 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_94.xy, r19.z);
  let v_95 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_95.xy, r20.z);
  let v_96 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_96.xy, r21.z);
  let v_97 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_97.xy, r22.z);
  let v_98 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_98.xy, r23.z);
  let v_99 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_99.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r4.w = dot(r7, vec4<f32>(1.0f));
  r3.x = clamp(fma(r3.xxxx, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).x, 0.0f, 1.0f);
  let v_100 = abs(r6.yyyy);
  r5.w = max(v_100.w, abs(r6.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = (r5.w * r3.x);
  r3.x = fma(r4.w, 0.0625f, r3.x);
  r3.x = (r3.x * r3.x);
  r3.x = min(r3.x, 1.0f);
  r4.w = clamp(fma(v3.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_101 = -(r3.xxxx);
  r3.x = fma(r4.w, v_101.x, r3.x);
  let v_102 = dot(r1.yzw, v_10.xyz);
  r4.w = clamp(vec4<f32>(v_102, v_102, v_102, v_102).w, 0.0f, 1.0f);
  let v_103 = dot(r4.xyz, r1.yzw);
  r4.x = clamp(vec4<f32>(v_103, v_103, v_103, v_103).x, 0.0f, 1.0f);
  let v_104 = dot(r5.xyz, v_10.xyz);
  r4.y = clamp(vec4<f32>(v_104, v_104, v_104, v_104).y, 0.0f, 1.0f);
  let v_105 = ((-(r4.xyxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_105.xy, r4.zw);
  let v_106 = (r4.xy * r4.xy);
  r6 = vec4<f32>(v_106.xy, r6.zw);
  let v_107 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_107.xy, r6.zw);
  let v_108 = (r4.xy * r6.xy);
  r4 = vec4<f32>(v_108.xy, r4.zw);
  r4.z = ((-(cb12_12.tint_symbol_4[0u].xxxx)).z + 1.0f);
  let v_109 = fma(cb12_12.tint_symbol_4[0u].xx, r4.xy, r4.zz);
  r4 = vec4<f32>(v_109.xy, r4.zw);
  let v_110 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(v_110.xy, r6.zw);
  r2.w = (r6.x * 0.125f);
  r4.x = fma((-(r2.xxxx)).x, r4.x, 1.0f);
  r4.z = dot(r1.yzw, r5.xyz);
  r4.z = clamp(((r4.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r4.z = log2(r4.z);
  r4.z = (r4.z * r6.y);
  r4.z = exp2(r4.z);
  r4.y = (r4.y * r4.z);
  r2.w = (r2.w * r4.y);
  r2.x = (r2.x * r2.w);
  r2.x = (r4.w * r2.x);
  r2.w = (r4.x * r4.w);
  let v_111 = fma(r0.xyz, r2.www, r2.xxx);
  r4 = vec4<f32>(r4.x, v_111.xyz);
  let v_112 = (r4.yzw * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(r4.x, v_112.xyz);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_113 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_113.xyz, r5.w);
  r2.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_114 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_114.xyz, r6.w);
  let v_115 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_115.xyz, r6.w);
  let v_116 = fma(r5.xyz, r2.xxx, r6.xyz);
  r5 = vec4<f32>(v_116.xyz, r5.w);
  let v_117 = (r2.zzz * r5.xyz);
  r2 = vec4<f32>(v_117.x, r2.y, v_117.yz);
  let v_118 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_118.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_119 = dot(r6.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_119, v_119, v_119, v_119).x, 0.0f, 1.0f);
  let v_120 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r5.xyz);
  r1 = vec4<f32>(v_120.xyz, r1.w);
  let v_121 = fma(r1.xyz, r2.yyy, r2.xzw);
  r1 = vec4<f32>(v_121.xyz, r1.w);
  let v_122 = (r4.xxx * r1.xyz);
  r1 = vec4<f32>(v_122.xyz, r1.w);
  let v_123 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_123.xyz, r0.w);
  let v_124 = fma(r4.yzw, r3.xxx, r0.xyz);
  r0 = vec4<f32>(v_124.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r3.yzw, r3.yzw);
    r1.x = sqrt(r0.w);
    let v_125 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_125.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r3.w);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_126 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_126 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_127 = (r0.www * r3.yzw);
    r2 = vec4<f32>(v_127.xyz, r2.w);
    let v_128 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_128, v_128, v_128, v_128).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_129 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_129, v_129, v_129, v_129).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_130 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_130.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_131 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_131.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_132 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_132.xyz, r2.w);
    let v_133 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_133.xyz, r2.w);
    let v_134 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_134.xyz, r4.w);
    let v_135 = fma(r1.www, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_135.xyz, r2.w);
    let v_136 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_137 = (r2.xyz + v_136.xyz);
    r2 = vec4<f32>(v_137.xyz, r2.w);
    let v_138 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_138.xyz, r2.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_139 = ((-(r2.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_139.xyz, r4.w);
    let v_140 = fma(r1.xxx, r4.xyz, r2.xyz);
    r1 = vec4<f32>(v_140.xy, r1.z, v_140.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_141 = (v4.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_141.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_142 = -(r0.xyxz);
    let v_143 = fma(r1.xyw, r0.www, v_142.xyw);
    r1 = vec4<f32>(v_143.xy, r1.z, v_143.z);
    let v_144 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_144.xyz, r1.w);
  } else {
    r0.w = dot(r3.yzw, r3.yzw);
    r1.w = sqrt(r0.w);
    let v_145 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_145.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r3.w);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_146 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_146 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_147 = (r0.www * r3.yzw);
    r3 = vec4<f32>(v_147.xyz, r3.w);
    let v_148 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_148, v_148, v_148, v_148).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_149 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_149, v_149, v_149, v_149).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_150 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_150.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_151 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_151.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_152 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_152.xyz, r3.w);
    let v_153 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_153.xyz, r3.w);
    let v_154 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_154.xyz, r4.w);
    let v_155 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_155.xyz, r3.w);
    let v_156 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_157 = (r3.xyz + v_156.xyz);
    r3 = vec4<f32>(v_157.xyz, r3.w);
    let v_158 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_158.x, r2.y, v_158.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_159 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_159.xyz, r3.w);
    let v_160 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_160.x, r2.y, v_160.yz);
    let v_161 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_161.x, r2.y, v_161.yz);
    let v_162 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_162.xyz, r1.w);
  }
  let v_163 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_163.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @builtin(position) v_164 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v_164);
  return o0;
}
