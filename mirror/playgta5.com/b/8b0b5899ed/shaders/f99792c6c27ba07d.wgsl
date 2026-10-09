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

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v4 : vec4<f32>;

var<private> v5 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
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
  r2.x = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r3.x = (r2.x * cb12_12.tint_symbol_4[0u].w);
  r2.y = (r0.w * cb12_12.tint_symbol_4[0u].x);
  r2.y = (r2.y * cb2_2.tint_symbol_1[15u].w);
  r0.w = (r0.w * v0.w);
  let v_4 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(r2.xy, v_4.xy);
  r2.y = (r2.y * v0.z);
  let v_5 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = -(v3.xxyz);
  let v_7 = (v_6.yzw + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(r3.x, v_7.xyz);
  r4.x = dot(r3.yzw, r3.yzw);
  r4.x = inverseSqrt(r4.x);
  let v_8 = (r3.yzw * r4.xxx);
  r4 = vec4<f32>(r4.x, v_8.xyz);
  let v_9 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_10 = fma(r3.yzw, r4.xxx, v_9.xyz);
  r5 = vec4<f32>(v_10.xyz, r5.w);
  r5.w = dot(r5.xyz, r5.xyz);
  r5.w = inverseSqrt(r5.w);
  let v_11 = (r5.www * r5.xyz);
  r5 = vec4<f32>(v_11.xyz, r5.w);
  r3.x = clamp(r3.xxxx.x, 0.0f, 1.0f);
  let v_12 = (r2.zw * r2.zw);
  r2 = vec4<f32>(r2.xy, v_12.xy);
  r5.w = fma(r2.x, cb12_12.tint_symbol_4[0u].z, -500.0f);
  r5.w = max(r5.w, 0.0f);
  let v_13 = -(r5.wwww);
  r2.x = fma(r2.x, cb12_12.tint_symbol_4[0u].z, v_13.x);
  r5.w = (r5.w * 558.0f);
  r2.x = fma(r2.x, 3.0f, r5.w);
  r5.w = dot(r3.yzw, cb1_1.tint_symbol[14u].xyz);
  let v_14 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_14.xyz, r6.w);
  let v_15 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_15.xyz, r7.w);
  let v_16 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_16.xyz, r7.w);
  let v_17 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_17.xyz, r7.w);
  let v_18 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_18.xyz, r8.w);
  let v_19 = &(x0[0u]);
  let v_20 = r8;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_21.xyz, r9.w);
  let v_22 = &(x0[1u]);
  let v_23 = r9;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  let v_24 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_24.xyz, r10.w);
  let v_25 = &(x0[2u]);
  let v_26 = r10;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  let v_27 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_27.xyz, r7.w);
  let v_28 = &(x0[3u]);
  let v_29 = r7;
  *(v_28) = vec4<f32>(v_29.xyz, (*(v_28)).w);
  let v_30 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_31 = r11;
  r11 = vec4<f32>(v_31.x, v_30.x, v_31.z, v_30.y);
  r6.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r6.w = (r6.w * 0.5f);
  let v_32 = abs(r10.yyyy);
  r7.z = max(v_32.z, abs(r10.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r6.w)));
  let v_33 = (bitcast<u32>(r7.z) != 0u);
  let v_34 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r7.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_34, v_33);
  let v_35 = abs(r9.yyyy);
  r7.w = max(v_35.w, abs(r9.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_36 = bitcast<u32>(r7.w);
  r7.z = select(r7.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_36 != 0u));
  let v_37 = abs(r8.yyyy);
  r7.w = max(v_37.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_38 = bitcast<u32>(r6.w);
  r6.w = select(r7.z, 0.0f, (v_38 != 0u));
  let v_39 = x0[bitcast<i32>(r6.w)];
  r8 = vec4<f32>(v_39.xyz, r8.w);
  r6.w = f32(bitcast<i32>(r6.w));
  r7.z = (r6.w + 0.5f);
  r7.z = (r7.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r6.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r6.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r7.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r7.z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 0.0f))));
  r6.w = ((-(r6.wwww)).w + r8.z);
  let v_40 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_40.xy, r10.z, v_40.z);
  r10.z = dpdx(r6.w);
  let v_41 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_41.xyz, r12.w);
  r12.w = dpdy(r6.w);
  let v_42 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_42.xy, r8.zw);
  let v_43 = -(r8.xyxx);
  let v_44 = fma(r10.xz, r12.xz, v_43.xy);
  r13 = vec4<f32>(v_44.xy, r13.zw);
  r8.x = (1.0f / r13.x);
  r8.y = (r10.z * r12.y);
  let v_45 = -(r8.yyyy);
  r13.z = fma(r10.x, r12.w, v_45.z);
  let v_46 = (r8.xx * r13.yz);
  r8 = vec4<f32>(v_46.xy, r8.zw);
  let v_47 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_47.xy, r8.zw);
  let v_48 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_48.xy, r8.zw);
  r6.w = fma((-(r7.wwww)).w, r8.x, r6.w);
  r6.w = fma((-(r7.wwww)).w, r8.y, r6.w);
  let v_49 = bitcast<u32>(r7.z);
  let v_50 = r6.w;
  r11.z = select(r8.z, v_50, (v_49 != 0u));
  r9.z = 0.0f;
  let v_51 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_51.xyz, r8.w);
  let v_52 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_52.xy, r11.zw);
  let v_53 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_53.xyz, r10.w);
  let v_54 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_54.xy, r11.zw);
  let v_55 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_55.xyz, r12.w);
  let v_56 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_56.xy, r11.zw);
  let v_57 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_57.xyz, r13.w);
  let v_58 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_58.xy, r11.zw);
  let v_59 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_59.xyz, r14.w);
  let v_60 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_60.xy, r11.zw);
  let v_61 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_61.xyz, r15.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_62.xy, r11.zw);
  let v_63 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_63.xyz, r16.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_64.xy, r11.zw);
  let v_65 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_65.xyz, r17.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_66.xy, r11.zw);
  let v_67 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_67.xyz, r18.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_68.xy, r11.zw);
  let v_69 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_69.xyz, r19.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_70.xy, r11.zw);
  let v_71 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_71.xyz, r20.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_72.xy, r11.zw);
  let v_73 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_73.xyz, r21.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_74.xy, r11.zw);
  let v_75 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_75.xyz, r22.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_77.xyz, r23.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_79.xyz, r24.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_81.xyz, r9.w);
  let v_82 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_82.xy, r8.z);
  let v_83 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_83.xy, r10.z);
  let v_84 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_84.xy, r12.z);
  let v_85 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_85.xy, r13.z);
  let v_86 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_86.xy, r14.z);
  let v_87 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_87.xy, r15.z);
  let v_88 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_88.xy, r16.z);
  let v_89 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_89.xy, r17.z);
  let v_90 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_90.xy, r18.z);
  let v_91 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_91.xy, r19.z);
  let v_92 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_92.xy, r20.z);
  let v_93 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_93.xy, r21.z);
  let v_94 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_94.xy, r22.z);
  let v_95 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_95.xy, r23.z);
  let v_96 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_96.xy, r24.z);
  let v_97 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_97.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r6.w = dot(r8, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_98 = abs(r7.yyyy);
  r7.x = max(v_98.x, abs(r7.xxxx).x);
  r7.x = clamp(fma(r7.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r7.x * r5.w);
  r5.w = fma(r6.w, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.w = clamp(fma(v3.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r6.w = sqrt(r6.w);
  r6.w = (r6.w * cb6_6.tint_symbol_5[3u].z);
  let v_99 = -(r5.wwww);
  r5.w = fma(r6.w, v_99.w, r5.w);
  let v_100 = dot(r1.yzw, v_9.xyz);
  r6.w = clamp(vec4<f32>(v_100, v_100, v_100, v_100).w, 0.0f, 1.0f);
  let v_101 = dot(r4.yzw, r1.yzw);
  r7.x = clamp(vec4<f32>(v_101, v_101, v_101, v_101).x, 0.0f, 1.0f);
  let v_102 = dot(r5.xyz, v_9.xyz);
  r7.y = clamp(vec4<f32>(v_102, v_102, v_102, v_102).y, 0.0f, 1.0f);
  let v_103 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_104 = r7;
  r7 = vec4<f32>(v_104.x, v_103.xy, v_104.w);
  let v_105 = (r7.yz * r7.yz);
  r8 = vec4<f32>(v_105.xy, r8.zw);
  let v_106 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_106.xy, r8.zw);
  let v_107 = (r7.yz * r8.xy);
  let v_108 = r7;
  r7 = vec4<f32>(v_108.x, v_107.xy, v_108.w);
  r7.w = ((-(cb12_12.tint_symbol_4[0u].yyyy)).w + 1.0f);
  let v_109 = fma(cb12_12.tint_symbol_4[0u].yy, r7.yz, r7.ww);
  let v_110 = r7;
  r7 = vec4<f32>(v_110.x, v_109.xy, v_110.w);
  let v_111 = (r2.xx + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_111.xy, r8.zw);
  r2.x = (r8.x * 0.125f);
  r7.y = fma((-(r3.xxxx)).y, r7.y, 1.0f);
  r5.x = dot(r1.yzw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r7.z * r5.x);
  r5.x = (r2.x * r5.x);
  r5.x = (r3.x * r5.x);
  r5.x = (r6.w * r5.x);
  r5.y = (r6.w * r7.y);
  let v_112 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_112.xyz, r5.w);
  let v_113 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_113.xyz, r5.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r9 = vec4<f32>(r9.x, vec3<f32>());
    r8 = vec4<f32>(0.0f, r8.y, vec2<f32>());
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_114 = (v_6.xzw + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_114.x, r8.y, v_114.yz);
    let v_115 = (v3.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_115.xyz, r9.w);
    r9.x = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[19u].wwww)).x, 0.0f, 1.0f);
    r9.x = (r9.x * cb3_3.tint_symbol_2[19u].w);
    let v_116 = fma(cb3_3.tint_symbol_2[11u].xyz, r9.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_116.xyz, r9.w);
    let v_117 = (r9.xyz + (-(v3.xyzx)).xyz);
    r9 = vec4<f32>(v_117.xyz, r9.w);
    let v_118 = bitcast<vec3<u32>>(r7.zzz);
    let v_119 = r8.xzw;
    let v_120 = select(r9.xyz, v_119, (v_118 != vec3<u32>()));
    r8 = vec4<f32>(v_120.x, r8.y, v_120.yz);
    r7.z = dot(r8.xzw, r8.xzw);
    let v_121 = (r8.xzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_121.x, r8.y, v_121.yz);
    r9.x = dot(r8.xzw, r8.xzw);
    r9.x = inverseSqrt(r9.x);
    let v_122 = (r8.xzw * r9.xxx);
    r8 = vec4<f32>(v_122.x, r8.y, v_122.yz);
    r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r9.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r9.x = fma(r9.x, r7.z, cb3_3.tint_symbol_2[11u].w);
    r7.z = (r7.z / r9.x);
    let v_123 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.x = dot(r8.xzw, v_123.xyz);
    r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_124 = dot(r8.xzw, r1.yzw);
    r9.y = clamp(vec4<f32>(v_124, v_124, v_124, v_124).y, 0.0f, 1.0f);
    r9.x = (r9.x * r9.y);
    r9.y = (r7.z * r9.x);
    let v_125 = (r9.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(r9.x, v_125.xyz);
    let v_126 = (r0.xyz * r9.yzw);
    r9 = vec4<f32>(r9.x, v_126.xyz);
    let v_127 = fma(r3.yzw, r4.xxx, r8.xzw);
    r8 = vec4<f32>(v_127.x, r8.y, v_127.yz);
    r10.x = dot(r8.xzw, r8.xzw);
    r10.x = inverseSqrt(r10.x);
    let v_128 = (r8.xzw * r10.xxx);
    r8 = vec4<f32>(v_128.x, r8.y, v_128.yz);
    let v_129 = dot(r8.xzw, r4.yzw);
    r10.x = clamp(vec4<f32>(v_129, v_129, v_129, v_129).x, 0.0f, 1.0f);
    r10.x = ((-(r10.xxxx)).x + 1.0f);
    r10.y = (r10.x * r10.x);
    r10.y = (r10.y * r10.y);
    r10.x = (r10.y * r10.x);
    r10.x = fma(cb12_12.tint_symbol_4[0u].y, r10.x, r7.w);
    let v_130 = dot(r8.xzw, r1.yzw);
    r8.x = clamp(vec4<f32>(v_130, v_130, v_130, v_130).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.y);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r10.x);
    r8.x = (r9.x * r8.x);
    r7.z = (r7.z * r8.x);
    r7.z = (r2.x * r7.z);
    let v_131 = (r7.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_131.x, r8.y, v_131.yz);
  }
  r7.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.z) != 0u)) {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.z = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.z)));
    let v_132 = bitcast<u32>(r9.x);
    let v_133 = r7.z;
    r6.w = select(r6.w, v_133, (v_132 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_134 = -(v3.xyzx);
      let v_135 = (v_134.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_135.xyz, r10.w);
      let v_136 = (v3.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_136.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[20u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[20u].w);
      let v_137 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_137.xyz, r11.w);
      let v_138 = (r11.xyz + v_134.xyz);
      r11 = vec4<f32>(v_138.xyz, r11.w);
      let v_139 = bitcast<vec3<u32>>(r7.zzz);
      let v_140 = r10.xyz;
      let v_141 = select(r11.xyz, v_140, (v_139 != vec3<u32>()));
      r10 = vec4<f32>(v_141.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      let v_142 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_142.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_143 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_143.xyz, r10.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.z, cb3_3.tint_symbol_2[12u].w);
      r7.z = (r7.z / r9.x);
      let v_144 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.x = dot(r10.xyz, v_144.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_145 = dot(r10.xyz, r1.yzw);
      r10.w = clamp(vec4<f32>(v_145, v_145, v_145, v_145).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.z * r9.x);
      let v_146 = (r10.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_146.xyz, r11.w);
      let v_147 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_147.xyz);
      let v_148 = fma(r3.yzw, r4.xxx, r10.xyz);
      r10 = vec4<f32>(v_148.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_149 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_149.xyz, r10.w);
      let v_150 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_150, v_150, v_150, v_150).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].y, r10.w, r7.w);
      let v_151 = dot(r10.xyz, r1.yzw);
      r10.x = clamp(vec4<f32>(v_151, v_151, v_151, v_151).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.z = (r7.z * r9.x);
      r7.z = (r2.x * r7.z);
      let v_152 = fma(r7.zzz, cb3_3.tint_symbol_2[20u].xyz, r8.xzw);
      r8 = vec4<f32>(v_152.x, r8.y, v_152.yz);
    }
  } else {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_153 = -(v3.xyzx);
      let v_154 = (v_153.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_154.xyz, r10.w);
      let v_155 = (v3.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_155.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[21u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[21u].w);
      let v_156 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      let v_157 = (r11.xyz + v_153.xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      let v_158 = bitcast<vec3<u32>>(r7.zzz);
      let v_159 = r10.xyz;
      let v_160 = select(r11.xyz, v_159, (v_158 != vec3<u32>()));
      r10 = vec4<f32>(v_160.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      let v_161 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_161.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_162 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_162.xyz, r10.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.z, cb3_3.tint_symbol_2[13u].w);
      r7.z = (r7.z / r9.x);
      let v_163 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.x = dot(r10.xyz, v_163.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_164 = dot(r10.xyz, r1.yzw);
      r10.w = clamp(vec4<f32>(v_164, v_164, v_164, v_164).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.z * r9.x);
      let v_165 = (r10.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      let v_166 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_166.xyz);
      let v_167 = fma(r3.yzw, r4.xxx, r10.xyz);
      r10 = vec4<f32>(v_167.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_168 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      let v_169 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_169, v_169, v_169, v_169).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].y, r10.w, r7.w);
      let v_170 = dot(r10.xyz, r1.yzw);
      r10.x = clamp(vec4<f32>(v_170, v_170, v_170, v_170).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.z = (r7.z * r9.x);
      r7.z = (r2.x * r7.z);
      let v_171 = fma(r7.zzz, cb3_3.tint_symbol_2[21u].xyz, r8.xzw);
      r8 = vec4<f32>(v_171.x, r8.y, v_171.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_172 = -(v3.xyzx);
      let v_173 = (v_172.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      let v_174 = (v3.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[22u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[22u].w);
      let v_175 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_175.xyz, r11.w);
      let v_176 = (r11.xyz + v_172.xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      let v_177 = bitcast<vec3<u32>>(r6.www);
      let v_178 = r10.xyz;
      let v_179 = select(r11.xyz, v_178, (v_177 != vec3<u32>()));
      r10 = vec4<f32>(v_179.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_180 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_180.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_181 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_181.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[14u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r6.w, cb3_3.tint_symbol_2[14u].w);
      r6.w = (r6.w / r7.z);
      let v_182 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.z = dot(r10.xyz, v_182.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).z, 0.0f, 1.0f);
      let v_183 = dot(r10.xyz, r1.yzw);
      r9.x = clamp(vec4<f32>(v_183, v_183, v_183, v_183).x, 0.0f, 1.0f);
      r7.z = (r7.z * r9.x);
      r9.x = (r6.w * r7.z);
      let v_184 = (r9.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_184.xyz, r11.w);
      let v_185 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_185.xyz);
      let v_186 = fma(r3.yzw, r4.xxx, r10.xyz);
      r3 = vec4<f32>(r3.x, v_186.xyz);
      r4.x = dot(r3.yzw, r3.yzw);
      r4.x = inverseSqrt(r4.x);
      let v_187 = (r3.yzw * r4.xxx);
      r3 = vec4<f32>(r3.x, v_187.xyz);
      let v_188 = dot(r3.yzw, r4.yzw);
      r4.x = clamp(vec4<f32>(v_188, v_188, v_188, v_188).x, 0.0f, 1.0f);
      r4.x = ((-(r4.xxxx)).x + 1.0f);
      r4.y = (r4.x * r4.x);
      r4.y = (r4.y * r4.y);
      r4.x = (r4.y * r4.x);
      r4.x = fma(cb12_12.tint_symbol_4[0u].y, r4.x, r7.w);
      let v_189 = dot(r3.yzw, r1.yzw);
      r3.y = clamp(vec4<f32>(v_189, v_189, v_189, v_189).y, 0.0f, 1.0f);
      r3.y = log2(r3.y);
      r3.y = (r3.y * r8.y);
      r3.y = exp2(r3.y);
      r3.y = (r3.y * r4.x);
      r3.y = (r7.z * r3.y);
      r3.y = (r6.w * r3.y);
      r2.x = (r2.x * r3.y);
      let v_190 = fma(r2.xxx, cb3_3.tint_symbol_2[22u].xyz, r8.xzw);
      r8 = vec4<f32>(v_190.x, r8.y, v_190.yz);
    }
  }
  r2.x = (r7.y * r7.y);
  r3.x = (r3.x * r3.x);
  let v_191 = (r8.xzw * r3.xxx);
  r3 = vec4<f32>(v_191.xyz, r3.w);
  let v_192 = fma(r2.xxx, r9.yzw, r3.xyz);
  r3 = vec4<f32>(v_192.xyz, r3.w);
  let v_193 = fma(r5.xyz, r5.www, r3.xyz);
  r3 = vec4<f32>(v_193.xyz, r3.w);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_194 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_194.xyz, r4.w);
  r2.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_195 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_195.xyz, r5.w);
  let v_196 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_196.xyz, r5.w);
  let v_197 = fma(r4.xyz, r2.xxx, r5.xyz);
  r4 = vec4<f32>(v_197.xyz, r4.w);
  let v_198 = (r2.www * r4.xyz);
  r4 = vec4<f32>(v_198.xyz, r4.w);
  let v_199 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_199.xyz, r5.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_200 = dot(r8.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_200, v_200, v_200, v_200).x, 0.0f, 1.0f);
  let v_201 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r5.xyz);
  r1 = vec4<f32>(v_201.xyz, r1.w);
  let v_202 = fma(r1.xyz, r2.zzz, r4.xyz);
  r1 = vec4<f32>(v_202.xyz, r1.w);
  let v_203 = (r7.yyy * r1.xyz);
  r1 = vec4<f32>(v_203.xyz, r1.w);
  let v_204 = fma(r1.xyz, r0.xyz, r3.xyz);
  r1 = vec4<f32>(v_204.xyz, r1.w);
  r1.w = (r2.y * r7.x);
  let v_205 = fma(r0.xyz, r1.www, r1.xyz);
  r0 = vec4<f32>(v_205.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_206 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_206.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_207 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_207 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_208 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_208.xyz, r2.w);
    let v_209 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_209, v_209, v_209, v_209).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_210 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_210, v_210, v_210, v_210).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_211 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_211.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_212 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_212.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_213 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_213.xyz, r2.w);
    let v_214 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_214.xyz, r2.w);
    let v_215 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_215.xyz, r3.w);
    let v_216 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_216.xyz, r2.w);
    let v_217 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_218 = (r2.xyz + v_217.xyz);
    r2 = vec4<f32>(v_218.xyz, r2.w);
    let v_219 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_219.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_220 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_220.xyz, r3.w);
    let v_221 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_221.xy, r1.z, v_221.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_222 = (v4.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_222.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_223 = -(r0.xyxz);
    let v_224 = fma(r1.xyw, r0.www, v_223.xyw);
    r1 = vec4<f32>(v_224.xy, r1.z, v_224.z);
    let v_225 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_225.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_226 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_226.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_227 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_227 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_228 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_228.xyz, r3.w);
    let v_229 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_229, v_229, v_229, v_229).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_230 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_230, v_230, v_230, v_230).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_231 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_231.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_232 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_232.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_233 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_233.xyz, r3.w);
    let v_234 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_234.xyz, r3.w);
    let v_235 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_235.xyz, r4.w);
    let v_236 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_236.xyz, r3.w);
    let v_237 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_238 = (r3.xyz + v_237.xyz);
    r3 = vec4<f32>(v_238.xyz, r3.w);
    let v_239 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_239.x, r2.y, v_239.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_240 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_240.xyz, r3.w);
    let v_241 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_241.x, r2.y, v_241.yz);
    let v_242 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_242.x, r2.y, v_242.yz);
    let v_243 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_243.xyz, r1.w);
  }
  let v_244 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_244.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @builtin(position) v_245 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v_245);
  return o0;
}
