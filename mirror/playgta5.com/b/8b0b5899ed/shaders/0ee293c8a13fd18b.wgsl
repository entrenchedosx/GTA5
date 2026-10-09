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
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_4 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  r2.x = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r3.x = (r2.x * cb12_12.tint_symbol_4[0u].w);
  r2.y = (r0.w * cb12_12.tint_symbol_4[0u].x);
  r2.y = (r2.y * cb2_2.tint_symbol_1[15u].w);
  r0.w = (r0.w * v0.w);
  let v_5 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(r2.xy, v_5.xy);
  r2.y = (r2.y * v0.z);
  let v_6 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = ((-(v3.xxyz)).yzw + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(r3.x, v_7.xyz);
  r4.x = dot(r3.yzw, r3.yzw);
  r4.x = inverseSqrt(r4.x);
  let v_8 = (r3.yzw * r4.xxx);
  r4 = vec4<f32>(r4.x, v_8.xyz);
  let v_9 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_10 = fma(r3.yzw, r4.xxx, v_9.xyz);
  r5 = vec4<f32>(v_10.xyz, r5.w);
  r4.x = dot(r5.xyz, r5.xyz);
  r4.x = inverseSqrt(r4.x);
  let v_11 = (r4.xxx * r5.xyz);
  r5 = vec4<f32>(v_11.xyz, r5.w);
  r3.x = clamp(r3.xxxx.x, 0.0f, 1.0f);
  let v_12 = (r2.zw * r2.zw);
  r2 = vec4<f32>(r2.xy, v_12.xy);
  r4.x = fma(r2.x, cb12_12.tint_symbol_4[0u].z, -500.0f);
  r4.x = max(r4.x, 0.0f);
  let v_13 = -(r4.xxxx);
  r2.x = fma(r2.x, cb12_12.tint_symbol_4[0u].z, v_13.x);
  r4.x = (r4.x * 558.0f);
  r2.x = fma(r2.x, 3.0f, r4.x);
  r3.y = dot(r3.yzw, cb1_1.tint_symbol[14u].xyz);
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
  r3.z = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_32 = abs(r10.yyyy);
  r3.w = max(v_32.w, abs(r10.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_33 = (bitcast<u32>(r3.w) != 0u);
  let v_34 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_34, v_33);
  let v_35 = abs(r9.yyyy);
  r4.x = max(v_35.x, abs(r9.xxxx).x);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r4.x < r3.z)));
  let v_36 = bitcast<u32>(r4.x);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_36 != 0u));
  let v_37 = abs(r8.yyyy);
  r4.x = max(v_37.x, abs(r8.xxxx).x);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r4.x < r3.z)));
  let v_38 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_38 != 0u));
  let v_39 = x0[bitcast<i32>(r3.z)];
  r8 = vec4<f32>(v_39.xyz, r8.w);
  r3.z = f32(bitcast<i32>(r3.z));
  r3.w = (r3.z + 0.5f);
  r3.w = (r3.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.zzzz)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r3.z = dot(r9, cb6_6.tint_symbol_5[12u]);
  r4.x = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r3.z == 0.0f))));
  r3.z = ((-(r3.zzzz)).z + r8.z);
  let v_40 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_40.xy, r10.z, v_40.z);
  r10.z = dpdx(r3.z);
  let v_41 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_41.xyz, r12.w);
  r12.w = dpdy(r3.z);
  let v_42 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_42.xy);
  let v_43 = -(r7.zwzz);
  let v_44 = fma(r10.xz, r12.xz, v_43.xy);
  r13 = vec4<f32>(v_44.xy, r13.zw);
  r5.w = (1.0f / r13.x);
  r6.w = (r10.z * r12.y);
  let v_45 = -(r6.wwww);
  r13.z = fma(r10.x, r12.w, v_45.z);
  let v_46 = (r5.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_46.xy);
  let v_47 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_47.xy);
  let v_48 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_48.xy);
  r3.z = fma((-(r4.xxxx)).z, r7.z, r3.z);
  r3.z = fma((-(r4.xxxx)).z, r7.w, r3.z);
  let v_49 = bitcast<u32>(r3.w);
  let v_50 = r3.z;
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
  r3.z = dot(r8, vec4<f32>(1.0f));
  r3.y = clamp(fma(r3.yyyy, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).y, 0.0f, 1.0f);
  let v_98 = abs(r7.yyyy);
  r3.w = max(v_98.w, abs(r7.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.y = ((-(r3.yyyy)).y + 1.0f);
  r3.y = (r3.w * r3.y);
  r3.y = fma(r3.z, 0.0625f, r3.y);
  r3.y = (r3.y * r3.y);
  r3.y = min(r3.y, 1.0f);
  r3.z = clamp(fma(v3.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).z, 0.0f, 1.0f);
  r3.z = sqrt(r3.z);
  r3.z = (r3.z * cb6_6.tint_symbol_5[3u].z);
  let v_99 = -(r3.yyyy);
  r3.y = fma(r3.z, v_99.y, r3.y);
  let v_100 = dot(r1.yzw, v_9.xyz);
  r3.z = clamp(vec4<f32>(v_100, v_100, v_100, v_100).z, 0.0f, 1.0f);
  let v_101 = dot(r4.yzw, r1.yzw);
  r4.x = clamp(vec4<f32>(v_101, v_101, v_101, v_101).x, 0.0f, 1.0f);
  let v_102 = dot(r5.xyz, v_9.xyz);
  r4.y = clamp(vec4<f32>(v_102, v_102, v_102, v_102).y, 0.0f, 1.0f);
  let v_103 = ((-(r4.xxyx)).yz + vec2<f32>(1.0f));
  let v_104 = r4;
  r4 = vec4<f32>(v_104.x, v_103.xy, v_104.w);
  let v_105 = (r4.yz * r4.yz);
  r7 = vec4<f32>(v_105.xy, r7.zw);
  let v_106 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_106.xy, r7.zw);
  let v_107 = (r4.yz * r7.xy);
  let v_108 = r4;
  r4 = vec4<f32>(v_108.x, v_107.xy, v_108.w);
  r3.w = ((-(cb12_12.tint_symbol_4[0u].yyyy)).w + 1.0f);
  let v_109 = fma(cb12_12.tint_symbol_4[0u].yy, r4.yz, r3.ww);
  let v_110 = r4;
  r4 = vec4<f32>(v_110.x, v_109.xy, v_110.w);
  let v_111 = (r2.xx + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_111.xy, r7.zw);
  r2.x = (r7.x * 0.125f);
  r3.w = fma((-(r3.xxxx)).w, r4.y, 1.0f);
  r4.y = dot(r1.yzw, r5.xyz);
  r4.y = clamp(((r4.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r4.y = log2(r4.y);
  r4.y = (r4.y * r7.y);
  r4.y = exp2(r4.y);
  r4.y = (r4.z * r4.y);
  r2.x = (r2.x * r4.y);
  r2.x = (r3.x * r2.x);
  r2.x = (r3.z * r2.x);
  r3.x = (r3.w * r3.z);
  let v_112 = fma(r0.xyz, r3.xxx, r2.xxx);
  r4 = vec4<f32>(r4.x, v_112.xyz);
  let v_113 = (r4.yzw * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(r4.x, v_113.xyz);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_114 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_114.xyz, r5.w);
  r2.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_115 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_115.xyz, r7.w);
  let v_116 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_116.xyz, r7.w);
  let v_117 = fma(r5.xyz, r2.xxx, r7.xyz);
  r5 = vec4<f32>(v_117.xyz, r5.w);
  let v_118 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_118.xyz, r5.w);
  let v_119 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(v_119.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_120 = dot(r8.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_120, v_120, v_120, v_120).x, 0.0f, 1.0f);
  let v_121 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r7.xyz);
  r1 = vec4<f32>(v_121.xyz, r1.w);
  let v_122 = fma(r1.xyz, r2.zzz, r5.xyz);
  r1 = vec4<f32>(v_122.xyz, r1.w);
  let v_123 = (r3.www * r1.xyz);
  r1 = vec4<f32>(v_123.xyz, r1.w);
  let v_124 = (r0.xyz * r1.xyz);
  r1 = vec4<f32>(v_124.xyz, r1.w);
  let v_125 = fma(r4.yzw, r3.yyy, r1.xyz);
  r1 = vec4<f32>(v_125.xyz, r1.w);
  r1.w = (r2.y * r4.x);
  let v_126 = fma(r0.xyz, r1.www, r1.xyz);
  r0 = vec4<f32>(v_126.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_127 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_127.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_128 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_128 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_129 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_129.xyz, r2.w);
    let v_130 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_130, v_130, v_130, v_130).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_131 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_131, v_131, v_131, v_131).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_132 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_132.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_133 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_133.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_134 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_134.xyz, r2.w);
    let v_135 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_135.xyz, r2.w);
    let v_136 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_136.xyz, r3.w);
    let v_137 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_137.xyz, r2.w);
    let v_138 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_139 = (r2.xyz + v_138.xyz);
    r2 = vec4<f32>(v_139.xyz, r2.w);
    let v_140 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_140.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_141 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_141.xyz, r3.w);
    let v_142 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_142.xy, r1.z, v_142.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_143 = (v4.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_143.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_144 = -(r0.xyxz);
    let v_145 = fma(r1.xyw, r0.www, v_144.xyw);
    r1 = vec4<f32>(v_145.xy, r1.z, v_145.z);
    let v_146 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_146.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_147 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_147.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_148 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_148 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_149 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_149.xyz, r3.w);
    let v_150 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_150, v_150, v_150, v_150).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_151 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_151, v_151, v_151, v_151).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_152 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_152.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_153 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_153.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_154 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_154.xyz, r3.w);
    let v_155 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_155.xyz, r3.w);
    let v_156 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_156.xyz, r4.w);
    let v_157 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_157.xyz, r3.w);
    let v_158 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_159 = (r3.xyz + v_158.xyz);
    r3 = vec4<f32>(v_159.xyz, r3.w);
    let v_160 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_160.x, r2.y, v_160.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_161 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_161.xyz, r3.w);
    let v_162 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_162.x, r2.y, v_162.yz);
    let v_163 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_163.x, r2.y, v_163.yz);
    let v_164 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_164.xyz, r1.w);
  }
  let v_165 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_165.xyz, o0.w);
}

fn v_3(v_166 : bool) {
  if (v_166) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @builtin(position) v_167 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v_167);
  return o0;
}
