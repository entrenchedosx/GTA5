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

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb1_struct;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

@group(1u) @binding(71u) var t39 : texture_2d<f32>;

@group(1u) @binding(72u) var t40 : texture_2d<f32>;

var<private> v5 : vec4<f32>;

var<private> v6 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v5 = v_2;
  x1[0u].x = v6[0u];
  x1[0u].y = v6[1u];
  x1[0u].z = v6[2u];
  x1[0u].w = v6[3u];
  r0 = textureSample(t0, s0, v0.xy.xyxx.xy);
  r1.x = dot(v1.xyz, v1.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xxx * v1.xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  r2 = textureSample(t2, s2, v0.xy.xyxx.xy);
  let v_4 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r2.x = dot(r2.xyz, cb12_12.tint_symbol_4[4u].xyz);
  r2.x = (r2.x * v4.x);
  let v_5 = (r0.xyz * cb12_12.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = (r0.w * v4.w);
  r2.y = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).y, 0.0f, 1.0f);
  r2.y = (r2.y * cb2_2.tint_symbol_1[15u].y);
  r2.z = (v4.x * cb12_12.tint_symbol_4[2u].x);
  let v_6 = (r2.xz * cb12_12.tint_symbol_4[3u].zz);
  let v_7 = r2;
  r2 = vec4<f32>(v_6.x, v_7.y, v_6.y, v_7.w);
  r2.x = clamp(((r2.xxxx * vec4<f32>(0.40000000596046447754f))).x, 0.0f, 1.0f);
  let v_8 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = -(v2.xyzx);
  let v_10 = (v_9.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_11 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_13 = fma(r3.xyz, r3.www, v_12.xyz);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_14 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  r4.w = (cb2_2.tint_symbol_1[15u].z * cb2_2.tint_symbol_1[15u].z);
  r2.y = (r2.y * r2.y);
  r5.w = fma(r2.w, 512.0f, -500.0f);
  r5.w = max(r5.w, 0.0f);
  let v_15 = -(r5.wwww);
  r2.w = fma(r2.w, 512.0f, v_15.w);
  r5.w = (r5.w * 558.0f);
  r2.w = fma(r2.w, 3.0f, r5.w);
  r5.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_16 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_16.xyz, r6.w);
  let v_17 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_17.xyz, r7.w);
  let v_18 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r6 = vec4<f32>(v_18.xy, r6.z, v_18.z);
  let v_19 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r6.xyw);
  r6 = vec4<f32>(v_19.xyz, r6.w);
  let v_20 = fma(r6.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_20.xyz, r7.w);
  let v_21 = &(x0[0u]);
  let v_22 = r7;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  let v_23 = fma(r6.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_23.xyz, r8.w);
  let v_24 = &(x0[1u]);
  let v_25 = r8;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  let v_26 = fma(r6.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_26.xyz, r9.w);
  let v_27 = &(x0[2u]);
  let v_28 = r9;
  *(v_27) = vec4<f32>(v_28.xyz, (*(v_27)).w);
  let v_29 = fma(r6.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r6 = vec4<f32>(v_29.xyz, r6.w);
  let v_30 = &(x0[3u]);
  let v_31 = r6;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_33 = r10;
  r10 = vec4<f32>(v_33.x, v_32.x, v_33.z, v_32.y);
  r6.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r6.z = (r6.z * 0.5f);
  let v_34 = abs(r9.yyyy);
  r6.w = max(v_34.w, abs(r9.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r6.z)));
  let v_35 = (bitcast<u32>(r6.w) != 0u);
  let v_36 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_36, v_35);
  let v_37 = abs(r8.yyyy);
  r7.z = max(v_37.z, abs(r8.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r6.z)));
  let v_38 = bitcast<u32>(r7.z);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_38 != 0u));
  let v_39 = abs(r7.yyyy);
  r7.x = max(v_39.x, abs(r7.xxxx).x);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r7.x < r6.z)));
  let v_40 = bitcast<u32>(r6.z);
  r6.z = select(r6.w, 0.0f, (v_40 != 0u));
  let v_41 = x0[bitcast<i32>(r6.z)];
  r7 = vec4<f32>(v_41.xyz, r7.w);
  r6.z = f32(bitcast<i32>(r6.z));
  r6.w = (r6.z + 0.5f);
  r6.w = (r6.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r6.zzzz)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r6.z = dot(r8, cb6_6.tint_symbol_6[12u]);
  r7.w = dot(r8, cb6_6.tint_symbol_6[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r6.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, !((r6.z == 0.0f))));
  r6.z = ((-(r6.zzzz)).z + r7.z);
  let v_42 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_42.xy, r9.z, v_42.z);
  r9.z = dpdx(r6.z);
  let v_43 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_43.xyz, r11.w);
  r11.w = dpdy(r6.z);
  let v_44 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_44.xy, r7.zw);
  let v_45 = -(r7.xyxx);
  let v_46 = fma(r9.xz, r11.xz, v_45.xy);
  r12 = vec4<f32>(v_46.xy, r12.zw);
  r7.x = (1.0f / r12.x);
  r7.y = (r9.z * r11.y);
  let v_47 = -(r7.yyyy);
  r12.z = fma(r9.x, r11.w, v_47.z);
  let v_48 = (r7.xx * r12.yz);
  r7 = vec4<f32>(v_48.xy, r7.zw);
  let v_49 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_49.xy, r7.zw);
  let v_50 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_50.xy, r7.zw);
  r6.z = fma((-(r7.wwww)).z, r7.x, r6.z);
  r6.z = fma((-(r7.wwww)).z, r7.y, r6.z);
  let v_51 = bitcast<u32>(r6.w);
  let v_52 = r6.z;
  r10.z = select(r7.z, v_52, (v_51 != 0u));
  r8.z = 0.0f;
  let v_53 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_53.xyz, r7.w);
  let v_54 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_54.xy, r10.zw);
  let v_55 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_55.xyz, r9.w);
  let v_56 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_56.xy, r10.zw);
  let v_57 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_57.xyz, r11.w);
  let v_58 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_58.xy, r10.zw);
  let v_59 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_59.xyz, r12.w);
  let v_60 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_60.xy, r10.zw);
  let v_61 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_61.xyz, r13.w);
  let v_62 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_62.xy, r10.zw);
  let v_63 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_63.xyz, r14.w);
  let v_64 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_64.xy, r10.zw);
  let v_65 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_65.xyz, r15.w);
  let v_66 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_66.xy, r10.zw);
  let v_67 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_67.xyz, r16.w);
  let v_68 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_68.xy, r10.zw);
  let v_69 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_69.xyz, r17.w);
  let v_70 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_70.xy, r10.zw);
  let v_71 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_71.xyz, r18.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_72.xy, r10.zw);
  let v_73 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_73.xyz, r19.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_74.xy, r10.zw);
  let v_75 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_75.xyz, r20.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_76.xy, r10.zw);
  let v_77 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_77.xyz, r21.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_78.xy, r10.zw);
  let v_79 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_79.xyz, r22.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_80.xy, r10.zw);
  let v_81 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_81.xyz, r23.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
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
  r6.z = dot(r7, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_100 = abs(r6.yyyy);
  r6.x = max(v_100.x, abs(r6.xxxx).x);
  r6.x = clamp(fma(r6.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r6.x * r5.w);
  r5.w = fma(r6.z, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.x = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).x, 0.0f, 1.0f);
  r6.x = sqrt(r6.x);
  r6.x = (r6.x * cb6_6.tint_symbol_6[3u].z);
  let v_101 = -(r5.wwww);
  r5.w = fma(r6.x, v_101.w, r5.w);
  let v_102 = dot(r1.yzw, v_12.xyz);
  r6.x = clamp(vec4<f32>(v_102, v_102, v_102, v_102).x, 0.0f, 1.0f);
  let v_103 = dot(r4.xyz, r1.yzw);
  r7.x = clamp(vec4<f32>(v_103, v_103, v_103, v_103).x, 0.0f, 1.0f);
  let v_104 = dot(r5.xyz, v_12.xyz);
  r7.y = clamp(vec4<f32>(v_104, v_104, v_104, v_104).y, 0.0f, 1.0f);
  let v_105 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_106 = r6;
  r6 = vec4<f32>(v_106.x, v_105.xy, v_106.w);
  let v_107 = (r6.yz * r6.yz);
  let v_108 = r7;
  r7 = vec4<f32>(v_108.x, v_107.xy, v_108.w);
  let v_109 = (r7.yz * r7.yz);
  let v_110 = r7;
  r7 = vec4<f32>(v_110.x, v_109.xy, v_110.w);
  let v_111 = (r6.yz * r7.yz);
  let v_112 = r6;
  r6 = vec4<f32>(v_112.x, v_111.xy, v_112.w);
  let v_113 = fma(r6.yz, vec2<f32>(0.96799999475479125977f), vec2<f32>(0.03200000151991844177f));
  let v_114 = r6;
  r6 = vec4<f32>(v_114.x, v_113.xy, v_114.w);
  let v_115 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  let v_116 = r7;
  r7 = vec4<f32>(v_116.x, v_115.xy, v_116.w);
  r6.w = (r7.y * 0.125f);
  r6.y = fma((-(r2.xxxx)).y, r6.y, 1.0f);
  r5.x = dot(r1.yzw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.z);
  r5.x = exp2(r5.x);
  r5.x = (r6.z * r5.x);
  r5.x = (r6.w * r5.x);
  r5.x = (r2.x * r5.x);
  r5.x = (r6.x * r5.x);
  r5.y = (r6.y * r6.x);
  let v_117 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_117.xyz, r5.w);
  let v_118 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_118.xyz, r5.w);
  r6.x = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.x) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_119 = (v_9.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_119.xyz, r8.w);
    let v_120 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_120.xyz, r9.w);
    r7.y = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r7.y = clamp(((r7.yyyy / r7.wwww)).y, 0.0f, 1.0f);
    r7.y = (r7.y * cb3_3.tint_symbol_2[19u].w);
    let v_121 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.yyy, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_121.xyz, r9.w);
    let v_122 = (r9.xyz + v_9.xyz);
    r9 = vec4<f32>(v_122.xyz, r9.w);
    let v_123 = bitcast<vec3<u32>>(r6.zzz);
    let v_124 = r8.xyz;
    let v_125 = select(r9.xyz, v_124, (v_123 != vec3<u32>()));
    r8 = vec4<f32>(v_125.xyz, r8.w);
    r6.z = dot(r8.xyz, r8.xyz);
    let v_126 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_126.xyz, r8.w);
    r7.y = dot(r8.xyz, r8.xyz);
    r7.y = inverseSqrt(r7.y);
    let v_127 = (r7.yyy * r8.xyz);
    r8 = vec4<f32>(v_127.xyz, r8.w);
    r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r7.y = ((-(cb3_3.tint_symbol_2[11u].wwww)).y + 1.0f);
    r7.y = fma(r7.y, r6.z, cb3_3.tint_symbol_2[11u].w);
    r6.z = (r6.z / r7.y);
    let v_128 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.y = dot(r8.xyz, v_128.xyz);
    r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).y, 0.0f, 1.0f);
    let v_129 = dot(r8.xyz, r1.yzw);
    r7.w = clamp(vec4<f32>(v_129, v_129, v_129, v_129).w, 0.0f, 1.0f);
    r7.y = (r7.y * r7.w);
    r7.w = (r6.z * r7.y);
    let v_130 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_130.xyz, r9.w);
    let v_131 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_131.xyz, r9.w);
    let v_132 = fma(r3.xyz, r3.www, r8.xyz);
    r8 = vec4<f32>(v_132.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_133 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_133.xyz, r8.w);
    let v_134 = dot(r8.xyz, r4.xyz);
    r7.w = clamp(vec4<f32>(v_134, v_134, v_134, v_134).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r8.w = (r7.w * r7.w);
    r8.w = (r8.w * r8.w);
    r7.w = (r7.w * r8.w);
    r7.w = fma(r7.w, 0.96799999475479125977f, 0.03200000151991844177f);
    let v_135 = dot(r8.xyz, r1.yzw);
    r8.x = clamp(vec4<f32>(v_135, v_135, v_135, v_135).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.z * r8.x);
    r8.x = exp2(r8.x);
    r7.w = (r7.w * r8.x);
    r7.y = (r7.y * r7.w);
    r6.z = (r6.z * r7.y);
    r6.z = (r6.w * r6.z);
    let v_136 = (r6.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_136.xyz, r8.w);
  }
  r6.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.z) != 0u)) {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    let v_137 = bitcast<u32>(r7.y);
    let v_138 = r6.z;
    r6.x = select(r6.x, v_138, (v_137 != 0u));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_139 = (v_9.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_139.xyz, r10.w);
      let v_140 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_140.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r7.y = clamp(((r7.yyyy / r7.wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[20u].w);
      let v_141 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.yyy, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_141.xyz, r11.w);
      let v_142 = (r11.xyz + v_9.xyz);
      r11 = vec4<f32>(v_142.xyz, r11.w);
      let v_143 = bitcast<vec3<u32>>(r6.zzz);
      let v_144 = r10.xyz;
      let v_145 = select(r11.xyz, v_144, (v_143 != vec3<u32>()));
      r10 = vec4<f32>(v_145.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_146 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_146.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_147 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_147.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[12u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r6.z, cb3_3.tint_symbol_2[12u].w);
      r6.z = (r6.z / r7.y);
      let v_148 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.y = dot(r10.xyz, v_148.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).y, 0.0f, 1.0f);
      let v_149 = dot(r10.xyz, r1.yzw);
      r7.w = clamp(vec4<f32>(v_149, v_149, v_149, v_149).w, 0.0f, 1.0f);
      r7.y = (r7.y * r7.w);
      r7.w = (r6.z * r7.y);
      let v_150 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_150.xyz, r11.w);
      let v_151 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_151.xyz, r9.w);
      let v_152 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_152.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_153 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_153.xyz, r10.w);
      let v_154 = dot(r10.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_154, v_154, v_154, v_154).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(r7.w, 0.96799999475479125977f, 0.03200000151991844177f);
      let v_155 = dot(r10.xyz, r1.yzw);
      r8.w = clamp(vec4<f32>(v_155, v_155, v_155, v_155).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r7.z * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r7.y = (r7.y * r7.w);
      r6.z = (r6.z * r7.y);
      r6.z = (r6.w * r6.z);
      let v_156 = fma(r6.zzz, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_156.xyz, r8.w);
    }
  } else {
    r6.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_157 = (v_9.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_157.xyz, r10.w);
      let v_158 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r7.y = clamp(((r7.yyyy / r7.wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[21u].w);
      let v_159 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.yyy, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      let v_160 = (r11.xyz + v_9.xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      let v_161 = bitcast<vec3<u32>>(r6.zzz);
      let v_162 = r10.xyz;
      let v_163 = select(r11.xyz, v_162, (v_161 != vec3<u32>()));
      r10 = vec4<f32>(v_163.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_164 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_164.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_165 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_165.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[13u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r6.z, cb3_3.tint_symbol_2[13u].w);
      r6.z = (r6.z / r7.y);
      let v_166 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.y = dot(r10.xyz, v_166.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).y, 0.0f, 1.0f);
      let v_167 = dot(r10.xyz, r1.yzw);
      r7.w = clamp(vec4<f32>(v_167, v_167, v_167, v_167).w, 0.0f, 1.0f);
      r7.y = (r7.y * r7.w);
      r7.w = (r6.z * r7.y);
      let v_168 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      let v_169 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_169.xyz, r9.w);
      let v_170 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_170.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_171 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      let v_172 = dot(r10.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(r7.w, 0.96799999475479125977f, 0.03200000151991844177f);
      let v_173 = dot(r10.xyz, r1.yzw);
      r8.w = clamp(vec4<f32>(v_173, v_173, v_173, v_173).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r7.z * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r7.y = (r7.y * r7.w);
      r6.z = (r6.z * r7.y);
      r6.z = (r6.w * r6.z);
      let v_174 = fma(r6.zzz, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_174.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_175 = (v_9.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      let v_176 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      r6.z = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.y = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r6.z = clamp(((r6.zzzz / r7.yyyy)).z, 0.0f, 1.0f);
      r6.z = (r6.z * cb3_3.tint_symbol_2[22u].w);
      let v_177 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      let v_178 = (r11.xyz + v_9.xyz);
      r11 = vec4<f32>(v_178.xyz, r11.w);
      let v_179 = bitcast<vec3<u32>>(r6.xxx);
      let v_180 = r10.xyz;
      let v_181 = select(r11.xyz, v_180, (v_179 != vec3<u32>()));
      r10 = vec4<f32>(v_181.xyz, r10.w);
      r6.x = dot(r10.xyz, r10.xyz);
      let v_182 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_182.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      r6.z = inverseSqrt(r6.z);
      let v_183 = (r6.zzz * r10.xyz);
      r10 = vec4<f32>(v_183.xyz, r10.w);
      r6.x = clamp(fma(-(r6.xxxx), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
      r6.z = ((-(cb3_3.tint_symbol_2[14u].wwww)).z + 1.0f);
      r6.z = fma(r6.z, r6.x, cb3_3.tint_symbol_2[14u].w);
      r6.x = (r6.x / r6.z);
      let v_184 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.z = dot(r10.xyz, v_184.xyz);
      r6.z = clamp(fma(r6.zzzz, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).z, 0.0f, 1.0f);
      let v_185 = dot(r10.xyz, r1.yzw);
      r7.y = clamp(vec4<f32>(v_185, v_185, v_185, v_185).y, 0.0f, 1.0f);
      r6.z = (r6.z * r7.y);
      r7.y = (r6.x * r6.z);
      let v_186 = (r7.yyy * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      let v_187 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_187.xyz, r9.w);
      let v_188 = fma(r3.xyz, r3.www, r10.xyz);
      r3 = vec4<f32>(v_188.xyz, r3.w);
      r3.w = dot(r3.xyz, r3.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_189 = (r3.www * r3.xyz);
      r3 = vec4<f32>(v_189.xyz, r3.w);
      let v_190 = dot(r3.xyz, r4.xyz);
      r3.w = clamp(vec4<f32>(v_190, v_190, v_190, v_190).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r7.y = (r3.w * r3.w);
      r7.y = (r7.y * r7.y);
      r3.w = (r3.w * r7.y);
      r3.w = fma(r3.w, 0.96799999475479125977f, 0.03200000151991844177f);
      let v_191 = dot(r3.xyz, r1.yzw);
      r3.x = clamp(vec4<f32>(v_191, v_191, v_191, v_191).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r7.z);
      r3.x = exp2(r3.x);
      r3.x = (r3.x * r3.w);
      r3.x = (r6.z * r3.x);
      r3.x = (r6.x * r3.x);
      r3.x = (r6.w * r3.x);
      let v_192 = fma(r3.xxx, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_192.xyz, r8.w);
    }
  }
  r3.x = (r6.y * r6.y);
  r2.x = (r2.x * r2.x);
  let v_193 = (r8.xyz * r2.xxx);
  r3 = vec4<f32>(r3.x, v_193.xyz);
  let v_194 = fma(r3.xxx, r9.xyz, r3.yzw);
  r3 = vec4<f32>(v_194.xyz, r3.w);
  let v_195 = fma(r5.xyz, r5.www, r3.xyz);
  r3 = vec4<f32>(v_195.xyz, r3.w);
  r1.x = fma(v1.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_196 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_196.xyz, r5.w);
  r2.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_197 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_197.x, r6.y, v_197.yz);
  let v_198 = (r6.xzw * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_198.x, r6.y, v_198.yz);
  let v_199 = fma(r5.xyz, r2.xxx, r6.xzw);
  r5 = vec4<f32>(v_199.xyz, r5.w);
  let v_200 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_200.xyz, r5.w);
  let v_201 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_201.x, r6.y, v_201.yz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_202 = dot(r8.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_202, v_202, v_202, v_202).x, 0.0f, 1.0f);
  let v_203 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xzw);
  r6 = vec4<f32>(v_203.x, r6.y, v_203.yz);
  let v_204 = fma(r6.xzw, r4.www, r5.xyz);
  r5 = vec4<f32>(v_204.xyz, r5.w);
  let v_205 = (r6.yyy * r5.xyz);
  r5 = vec4<f32>(v_205.xyz, r5.w);
  let v_206 = fma(r5.xyz, r0.xyz, r3.xyz);
  r3 = vec4<f32>(v_206.xyz, r3.w);
  r1.x = ((-(r6.yyyy)).x + 1.0f);
  r2.x = dot((-(r4.xyzx)).xyz, r1.yzw);
  r2.x = (r2.x + r2.x);
  let v_207 = -(r2.xxxx);
  let v_208 = -(r4.xxyz);
  let v_209 = fma(r1.yzw, v_207.yzw, v_208.yzw);
  r1 = vec4<f32>(r1.x, v_209.xyz);
  let v_210 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.0f, 0.0f, 0.00177619897294789553f))).xw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_210.x, r2.yz, v_210.y);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r3.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r4.x = (r2.x * cb5_5.tint_symbol_3[6u].z);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r4.x < r3.w)));
  r4.y = fma(r2.x, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.x = (r2.x * r2.x);
  r2.x = fma(r2.x, 5.0f, r3.w);
  let v_211 = bitcast<u32>(r4.x);
  let v_212 = r4.y;
  r2.x = select(r2.x, v_212, (v_211 != 0u));
  let v_213 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_213.xyz, r4.w);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_214 = (r4.xyz / r1.yyy);
  r4 = vec4<f32>(v_214.xyz, r4.w);
  let v_215 = ((-(r4.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_215.xyz, r4.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_216 = bitcast<vec2<u32>>(r1.yy);
  let v_217 = r4.xy;
  let v_218 = select(r4.zy, v_217, (v_216 != vec2<u32>()));
  let v_219 = r1;
  r1 = vec4<f32>(v_219.x, v_218.xy, v_219.w);
  let v_220 = r2.x;
  r5 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_220);
  r1.y = max(r2.y, r4.w);
  let v_221 = (r1.yyy * r5.xyz);
  r1 = vec4<f32>(r1.x, v_221.xyz);
  let v_222 = (r2.www * r1.yzw);
  r2 = vec4<f32>(v_222.xy, r2.z, v_222.z);
  let v_223 = (r2.xyw * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_223.xy, r2.z, v_223.z);
  let v_224 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyw);
  r1 = vec4<f32>(r1.x, v_224.xyz);
  let v_225 = fma(r1.yzw, r1.xxx, r3.xyz);
  r1 = vec4<f32>(v_225.xyz, r1.w);
  r1.w = (r2.z * r7.x);
  let v_226 = fma(r0.xyz, r1.www, r1.xyz);
  r1 = vec4<f32>(v_226.xyz, r1.w);
  r0.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  let v_227 = v5.xy;
  let v_228 = max(v_227, vec2<f32>(-2147483648.0f));
  let v_229 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_228), vec2<i32>(2147483647i), (v_228 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_227 == v_227))));
  r2 = vec4<f32>(v_229.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r3 = textureLoad(t40, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
  r0.y = (r3.x * r3.x);
  r0.z = dot(v3.xyz, cb1_1.tint_symbol[14u].xyz);
  r2 = textureLoad(t39, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
  r0.w = (cb7_7.tint_symbol_5[0u].y + 1.0f);
  r0.w = ((-(r2.xxxx)).w + r0.w);
  r0.w = (cb7_7.tint_symbol_5[0u].x / r0.w);
  r0.z = ((-(r0.wwww)).z + r0.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f >= r0.z)));
  r0.y = (r0.y * r0.z);
  r0.y = (r0.y * -78.43303680419921875f);
  r0.y = exp2(r0.y);
  r0.y = min(r0.y, 1.0f);
  r0.y = (r0.y * r0.x);
  let v_230 = bitcast<vec4<u32>>(r0.wwww);
  let v_231 = r0.xxxx;
  r1.w = clamp(select(r0.yyyy, v_231, (v_230 != vec4<u32>())).w, 0.0f, 1.0f);
  let v_232 = bitcast<vec4<u32>>(r0.wwww);
  r0 = select(r1, vec4<f32>(), (v_232 != vec4<u32>()));
  let v_233 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_233.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_234 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_234);
  return o0;
}
