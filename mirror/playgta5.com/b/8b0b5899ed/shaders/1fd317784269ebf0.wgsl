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

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v5 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  x1[0u].x = v5[0u];
  x1[0u].y = v5[1u];
  x1[0u].z = v5[2u];
  x1[0u].w = v5[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_1((bitcast<u32>(r1.x) != 0u));
  let v_2 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  r2.x = (r0.w * cb12_12.tint_symbol_4[0u].x);
  r2.x = (r2.x * cb2_2.tint_symbol_1[15u].w);
  r0.w = (r0.w * v0.w);
  let v_4 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_5 = r2;
  r2 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  r2.x = (r2.x * v0.z);
  let v_6 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = -(v3.xyzx);
  let v_8 = (v_7.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r2.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_9 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = (r3.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = fma(r3.xxx, cb6_6.tint_symbol_5[0u].xyz, r4.xyz);
  r3 = vec4<f32>(v_11.xy, r3.z, v_11.z);
  let v_12 = fma(r3.zzz, cb6_6.tint_symbol_5[2u].xyz, r3.xyw);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = fma(r3.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = &(x0[0u]);
  let v_15 = r4;
  *(v_14) = vec4<f32>(v_15.xyz, (*(v_14)).w);
  let v_16 = fma(r3.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = &(x0[1u]);
  let v_18 = r5;
  *(v_17) = vec4<f32>(v_18.xyz, (*(v_17)).w);
  let v_19 = fma(r3.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r6 = vec4<f32>(v_19.xyz, r6.w);
  let v_20 = &(x0[2u]);
  let v_21 = r6;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r3.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  let v_23 = &(x0[3u]);
  let v_24 = r3;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_26 = r7;
  r7 = vec4<f32>(v_26.x, v_25.x, v_26.z, v_25.y);
  r3.z = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_27 = abs(r6.yyyy);
  r3.w = max(v_27.w, abs(r6.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_28 = (bitcast<u32>(r3.w) != 0u);
  let v_29 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_29, v_28);
  let v_30 = abs(r5.yyyy);
  r4.z = max(v_30.z, abs(r5.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r3.z)));
  let v_31 = bitcast<u32>(r4.z);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_31 != 0u));
  let v_32 = abs(r4.yyyy);
  r4.x = max(v_32.x, abs(r4.xxxx).x);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r4.x < r3.z)));
  let v_33 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_33 != 0u));
  let v_34 = x0[bitcast<i32>(r3.z)];
  r4 = vec4<f32>(v_34.xyz, r4.w);
  r3.z = f32(bitcast<i32>(r3.z));
  r3.w = (r3.z + 0.5f);
  r3.w = (r3.w * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.zzzz)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r3.z = dot(r5, cb6_6.tint_symbol_5[12u]);
  r4.w = dot(r5, cb6_6.tint_symbol_5[13u]);
  r5.x = (r4.x + 0.5f);
  r5.y = fma(r4.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r3.z == 0.0f))));
  r3.z = ((-(r3.zzzz)).z + r4.z);
  let v_35 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_35.xy, r6.z, v_35.z);
  r6.z = dpdx(r3.z);
  let v_36 = dpdy(r5.yxy);
  r8 = vec4<f32>(v_36.xyz, r8.w);
  r8.w = dpdy(r3.z);
  let v_37 = (r6.yw * r8.yw);
  r4 = vec4<f32>(v_37.xy, r4.zw);
  let v_38 = -(r4.xyxx);
  let v_39 = fma(r6.xz, r8.xz, v_38.xy);
  r9 = vec4<f32>(v_39.xy, r9.zw);
  r4.x = (1.0f / r9.x);
  r4.y = (r6.z * r8.y);
  let v_40 = -(r4.yyyy);
  r9.z = fma(r6.x, r8.w, v_40.z);
  let v_41 = (r4.xx * r9.yz);
  r4 = vec4<f32>(v_41.xy, r4.zw);
  let v_42 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_42.xy, r4.zw);
  let v_43 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_43.xy, r4.zw);
  r3.z = fma((-(r4.wwww)).z, r4.x, r3.z);
  r3.z = fma((-(r4.wwww)).z, r4.y, r3.z);
  let v_44 = bitcast<u32>(r3.w);
  let v_45 = r3.z;
  r7.z = select(r4.z, v_45, (v_44 != 0u));
  r5.z = 0.0f;
  let v_46 = (r5.xyz + r7.ywz);
  r4 = vec4<f32>(v_46.xyz, r4.w);
  let v_47 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r7 = vec4<f32>(v_47.xy, r7.zw);
  let v_48 = (r5.xyz + r7.xyz);
  r6 = vec4<f32>(v_48.xyz, r6.w);
  let v_49 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r7 = vec4<f32>(v_49.xy, r7.zw);
  let v_50 = (r5.xyz + r7.xyz);
  r8 = vec4<f32>(v_50.xyz, r8.w);
  let v_51 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r7 = vec4<f32>(v_51.xy, r7.zw);
  let v_52 = (r5.xyz + r7.xyz);
  r9 = vec4<f32>(v_52.xyz, r9.w);
  let v_53 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r7 = vec4<f32>(v_53.xy, r7.zw);
  let v_54 = (r5.xyz + r7.xyz);
  r10 = vec4<f32>(v_54.xyz, r10.w);
  let v_55 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r7 = vec4<f32>(v_55.xy, r7.zw);
  let v_56 = (r5.xyz + r7.xyz);
  r11 = vec4<f32>(v_56.xyz, r11.w);
  let v_57 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r7 = vec4<f32>(v_57.xy, r7.zw);
  let v_58 = (r5.xyz + r7.xyz);
  r12 = vec4<f32>(v_58.xyz, r12.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r7 = vec4<f32>(v_59.xy, r7.zw);
  let v_60 = (r5.xyz + r7.xyz);
  r13 = vec4<f32>(v_60.xyz, r13.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r7 = vec4<f32>(v_61.xy, r7.zw);
  let v_62 = (r5.xyz + r7.xyz);
  r14 = vec4<f32>(v_62.xyz, r14.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r7 = vec4<f32>(v_63.xy, r7.zw);
  let v_64 = (r5.xyz + r7.xyz);
  r15 = vec4<f32>(v_64.xyz, r15.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r7 = vec4<f32>(v_65.xy, r7.zw);
  let v_66 = (r5.xyz + r7.xyz);
  r16 = vec4<f32>(v_66.xyz, r16.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r7 = vec4<f32>(v_67.xy, r7.zw);
  let v_68 = (r5.xyz + r7.xyz);
  r17 = vec4<f32>(v_68.xyz, r17.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r7 = vec4<f32>(v_69.xy, r7.zw);
  let v_70 = (r5.xyz + r7.xyz);
  r18 = vec4<f32>(v_70.xyz, r18.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r7 = vec4<f32>(v_71.xy, r7.zw);
  let v_72 = (r5.xyz + r7.xyz);
  r19 = vec4<f32>(v_72.xyz, r19.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r7 = vec4<f32>(v_73.xy, r7.zw);
  let v_74 = (r5.xyz + r7.xyz);
  r20 = vec4<f32>(v_74.xyz, r20.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r7 = vec4<f32>(v_75.xy, r7.zw);
  let v_76 = (r5.xyz + r7.xyz);
  r5 = vec4<f32>(v_76.xyz, r5.w);
  let v_77 = r4.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_77.xy, r4.z);
  let v_78 = r6.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_78.xy, r6.z);
  let v_79 = r8.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_79.xy, r8.z);
  let v_80 = r9.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_80.xy, r9.z);
  let v_81 = r10.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_81.xy, r10.z);
  let v_82 = r11.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_82.xy, r11.z);
  let v_83 = r12.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_83.xy, r12.z);
  let v_84 = r13.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_84.xy, r13.z);
  let v_85 = r14.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_85.xy, r14.z);
  let v_86 = r15.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_86.xy, r15.z);
  let v_87 = r16.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_87.xy, r16.z);
  let v_88 = r17.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_88.xy, r17.z);
  let v_89 = r18.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_89.xy, r18.z);
  let v_90 = r19.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_90.xy, r19.z);
  let v_91 = r20.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_91.xy, r20.z);
  let v_92 = r5.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_92.xy, r5.z);
  r4 = (r4 + r6);
  r4 = (r7 + r4);
  r4 = (r8 + r4);
  r3.z = dot(r4, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_93 = abs(r3.yyyy);
  r3.x = max(v_93.x, abs(r3.xxxx).x);
  r3.x = clamp(fma(r3.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r3.x * r2.w);
  r2.w = fma(r3.z, 0.0625f, r2.w);
  let v_94 = (r2.yzw * r2.yzw);
  r2 = vec4<f32>(r2.x, v_94.xyz);
  r2.w = min(r2.w, 1.0f);
  r3.x = clamp(fma(v3.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).x, 0.0f, 1.0f);
  r3.x = sqrt(r3.x);
  r3.x = (r3.x * cb6_6.tint_symbol_5[3u].z);
  let v_95 = -(r2.wwww);
  r2.w = fma(r3.x, v_95.w, r2.w);
  let v_96 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_97 = dot(r1.yzw, v_96.xyz);
  r3.x = clamp(vec4<f32>(v_97, v_97, v_97, v_97).x, 0.0f, 1.0f);
  let v_98 = (r0.xyz * r3.xxx);
  r3 = vec4<f32>(v_98.xyz, r3.w);
  let v_99 = (r3.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_99.xyz, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  r4.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
  let v_100 = ((-(v3.xxyz)).yzw + cb3_3.tint_symbol_2[3u].xyz);
  r4 = vec4<f32>(r4.x, v_100.xyz);
  let v_101 = (v3.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
  r5 = vec4<f32>(v_101.xyz, r5.w);
  r5.x = dot(r5.xyz, cb3_3.tint_symbol_2[11u].xyz);
  r5.y = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
  r5.x = clamp(((r5.xxxx / r5.yyyy)).x, 0.0f, 1.0f);
  r5.x = (r5.x * cb3_3.tint_symbol_2[19u].w);
  let v_102 = fma(cb3_3.tint_symbol_2[11u].xyz, r5.xxx, cb3_3.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_102.xyz, r5.w);
  let v_103 = (r5.xyz + v_7.xyz);
  r5 = vec4<f32>(v_103.xyz, r5.w);
  let v_104 = bitcast<vec3<u32>>(r4.xxx);
  let v_105 = r4.yzw;
  let v_106 = select(r5.xyz, v_105, (v_104 != vec3<u32>()));
  r4 = vec4<f32>(v_106.xyz, r4.w);
  r4.w = dot(r4.xyz, r4.xyz);
  let v_107 = (r4.xyz + vec3<f32>(0.00000099999999747524f));
  r4 = vec4<f32>(v_107.xyz, r4.w);
  r5.x = dot(r4.xyz, r4.xyz);
  r5.x = inverseSqrt(r5.x);
  let v_108 = (r4.xyz * r5.xxx);
  r4 = vec4<f32>(v_108.xyz, r4.w);
  r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r5.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
  r5.x = fma(r5.x, r4.w, cb3_3.tint_symbol_2[11u].w);
  r4.w = (r4.w / r5.x);
  let v_109 = -(cb3_3.tint_symbol_2[11u].xyzx);
  r5.x = dot(r4.xyz, v_109.xyz);
  r5.x = clamp(fma(r5.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
  let v_110 = dot(r4.xyz, r1.yzw);
  r4.x = clamp(vec4<f32>(v_110, v_110, v_110, v_110).x, 0.0f, 1.0f);
  r4.x = (r5.x * r4.x);
  r4.x = (r4.w * r4.x);
  let v_111 = (r4.xxx * cb3_3.tint_symbol_2[19u].xyz);
  r4 = vec4<f32>(v_111.xyz, r4.w);
  let v_112 = (r0.xyz * r4.xyz);
  r4 = vec4<f32>(v_112.xyz, r4.w);
  let v_113 = bitcast<vec3<u32>>(r3.www);
  let v_114 = select(r4.xyz, vec3<f32>(), (v_113 != vec3<u32>()));
  r4 = vec4<f32>(v_114.xyz, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
    let v_115 = (v_7.xyz + cb3_3.tint_symbol_2[4u].xyz);
    r5 = vec4<f32>(v_115.xyz, r5.w);
    let v_116 = (v3.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
    r6 = vec4<f32>(v_116.xyz, r6.w);
    r5.w = dot(r6.xyz, cb3_3.tint_symbol_2[12u].xyz);
    r6.x = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
    r5.w = clamp(((r5.wwww / r6.xxxx)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[20u].w);
    let v_117 = fma(cb3_3.tint_symbol_2[12u].xyz, r5.www, cb3_3.tint_symbol_2[4u].xyz);
    r6 = vec4<f32>(v_117.xyz, r6.w);
    let v_118 = (r6.xyz + v_7.xyz);
    r6 = vec4<f32>(v_118.xyz, r6.w);
    let v_119 = bitcast<vec3<u32>>(r4.www);
    let v_120 = r5.xyz;
    let v_121 = select(r6.xyz, v_120, (v_119 != vec3<u32>()));
    r5 = vec4<f32>(v_121.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    let v_122 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_122.xyz, r5.w);
    r5.w = dot(r5.xyz, r5.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_123 = (r5.www * r5.xyz);
    r5 = vec4<f32>(v_123.xyz, r5.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[12u].w);
    r4.w = (r4.w / r5.w);
    let v_124 = -(cb3_3.tint_symbol_2[12u].xyzx);
    r5.w = dot(r5.xyz, v_124.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
    let v_125 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_125, v_125, v_125, v_125).x, 0.0f, 1.0f);
    r5.x = (r5.w * r5.x);
    r4.w = (r4.w * r5.x);
    let v_126 = (r4.www * cb3_3.tint_symbol_2[20u].xyz);
    r5 = vec4<f32>(v_126.xyz, r5.w);
    let v_127 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_127.xyz, r5.w);
    let v_128 = bitcast<vec3<u32>>(r3.www);
    let v_129 = r4.xyz;
    let v_130 = select(r5.xyz, v_129, (v_128 != vec3<u32>()));
    r4 = vec4<f32>(v_130.xyz, r4.w);
  } else {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
    let v_131 = (v_7.xyz + cb3_3.tint_symbol_2[5u].xyz);
    r5 = vec4<f32>(v_131.xyz, r5.w);
    let v_132 = (v3.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
    r6 = vec4<f32>(v_132.xyz, r6.w);
    r5.w = dot(r6.xyz, cb3_3.tint_symbol_2[13u].xyz);
    r6.x = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
    r5.w = clamp(((r5.wwww / r6.xxxx)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[21u].w);
    let v_133 = fma(cb3_3.tint_symbol_2[13u].xyz, r5.www, cb3_3.tint_symbol_2[5u].xyz);
    r6 = vec4<f32>(v_133.xyz, r6.w);
    let v_134 = (r6.xyz + v_7.xyz);
    r6 = vec4<f32>(v_134.xyz, r6.w);
    let v_135 = bitcast<vec3<u32>>(r4.www);
    let v_136 = r5.xyz;
    let v_137 = select(r6.xyz, v_136, (v_135 != vec3<u32>()));
    r5 = vec4<f32>(v_137.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    let v_138 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_138.xyz, r5.w);
    r5.w = dot(r5.xyz, r5.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_139 = (r5.www * r5.xyz);
    r5 = vec4<f32>(v_139.xyz, r5.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[13u].w);
    r4.w = (r4.w / r5.w);
    let v_140 = -(cb3_3.tint_symbol_2[13u].xyzx);
    r5.w = dot(r5.xyz, v_140.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
    let v_141 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_141, v_141, v_141, v_141).x, 0.0f, 1.0f);
    r5.x = (r5.w * r5.x);
    r4.w = (r4.w * r5.x);
    let v_142 = (r4.www * cb3_3.tint_symbol_2[21u].xyz);
    r5 = vec4<f32>(v_142.xyz, r5.w);
    let v_143 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_143.xyz, r5.w);
    let v_144 = bitcast<vec3<u32>>(r3.www);
    let v_145 = r4.xyz;
    let v_146 = select(r5.xyz, v_145, (v_144 != vec3<u32>()));
    r4 = vec4<f32>(v_146.xyz, r4.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
    let v_147 = (v_7.xyz + cb3_3.tint_symbol_2[6u].xyz);
    r5 = vec4<f32>(v_147.xyz, r5.w);
    let v_148 = (v3.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
    r6 = vec4<f32>(v_148.xyz, r6.w);
    r5.w = dot(r6.xyz, cb3_3.tint_symbol_2[14u].xyz);
    r6.x = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
    r5.w = clamp(((r5.wwww / r6.xxxx)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[22u].w);
    let v_149 = fma(cb3_3.tint_symbol_2[14u].xyz, r5.www, cb3_3.tint_symbol_2[6u].xyz);
    r6 = vec4<f32>(v_149.xyz, r6.w);
    let v_150 = (r6.xyz + v_7.xyz);
    r6 = vec4<f32>(v_150.xyz, r6.w);
    let v_151 = bitcast<vec3<u32>>(r4.www);
    let v_152 = r5.xyz;
    let v_153 = select(r6.xyz, v_152, (v_151 != vec3<u32>()));
    r5 = vec4<f32>(v_153.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    let v_154 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_154.xyz, r5.w);
    r5.w = dot(r5.xyz, r5.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_155 = (r5.www * r5.xyz);
    r5 = vec4<f32>(v_155.xyz, r5.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[14u].w);
    r4.w = (r4.w / r5.w);
    let v_156 = -(cb3_3.tint_symbol_2[14u].xyzx);
    r5.w = dot(r5.xyz, v_156.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
    let v_157 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_157, v_157, v_157, v_157).x, 0.0f, 1.0f);
    r5.x = (r5.w * r5.x);
    r4.w = (r4.w * r5.x);
    let v_158 = (r4.www * cb3_3.tint_symbol_2[22u].xyz);
    r5 = vec4<f32>(v_158.xyz, r5.w);
    let v_159 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_159.xyz, r5.w);
    let v_160 = bitcast<vec3<u32>>(r3.www);
    let v_161 = r4.xyz;
    let v_162 = select(r5.xyz, v_161, (v_160 != vec3<u32>()));
    r4 = vec4<f32>(v_162.xyz, r4.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
    let v_163 = (v_7.xyz + cb3_3.tint_symbol_2[7u].xyz);
    r5 = vec4<f32>(v_163.xyz, r5.w);
    let v_164 = (v3.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
    r6 = vec4<f32>(v_164.xyz, r6.w);
    r5.w = dot(r6.xyz, cb3_3.tint_symbol_2[15u].xyz);
    r6.x = (cb3_3.tint_symbol_2[23u].w + 0.00009999999747378752f);
    r5.w = clamp(((r5.wwww / r6.xxxx)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[23u].w);
    let v_165 = fma(cb3_3.tint_symbol_2[15u].xyz, r5.www, cb3_3.tint_symbol_2[7u].xyz);
    r6 = vec4<f32>(v_165.xyz, r6.w);
    let v_166 = (r6.xyz + v_7.xyz);
    r6 = vec4<f32>(v_166.xyz, r6.w);
    let v_167 = bitcast<vec3<u32>>(r4.www);
    let v_168 = r5.xyz;
    let v_169 = select(r6.xyz, v_168, (v_167 != vec3<u32>()));
    r5 = vec4<f32>(v_169.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    let v_170 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_170.xyz, r5.w);
    r5.w = dot(r5.xyz, r5.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_171 = (r5.www * r5.xyz);
    r5 = vec4<f32>(v_171.xyz, r5.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[15u].w);
    r4.w = (r4.w / r5.w);
    let v_172 = -(cb3_3.tint_symbol_2[15u].xyzx);
    r5.w = dot(r5.xyz, v_172.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
    let v_173 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_173, v_173, v_173, v_173).x, 0.0f, 1.0f);
    r5.x = (r5.w * r5.x);
    r4.w = (r4.w * r5.x);
    let v_174 = (r4.www * cb3_3.tint_symbol_2[23u].xyz);
    r5 = vec4<f32>(v_174.xyz, r5.w);
    let v_175 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_175.xyz, r5.w);
    let v_176 = bitcast<vec3<u32>>(r3.www);
    let v_177 = r4.xyz;
    let v_178 = select(r5.xyz, v_177, (v_176 != vec3<u32>()));
    r4 = vec4<f32>(v_178.xyz, r4.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
    let v_179 = (v_7.xyz + cb3_3.tint_symbol_2[8u].xyz);
    r5 = vec4<f32>(v_179.xyz, r5.w);
    let v_180 = (v3.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
    r6 = vec4<f32>(v_180.xyz, r6.w);
    r5.w = dot(r6.xyz, cb3_3.tint_symbol_2[16u].xyz);
    r6.x = (cb3_3.tint_symbol_2[24u].w + 0.00009999999747378752f);
    r5.w = clamp(((r5.wwww / r6.xxxx)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[24u].w);
    let v_181 = fma(cb3_3.tint_symbol_2[16u].xyz, r5.www, cb3_3.tint_symbol_2[8u].xyz);
    r6 = vec4<f32>(v_181.xyz, r6.w);
    let v_182 = (r6.xyz + v_7.xyz);
    r6 = vec4<f32>(v_182.xyz, r6.w);
    let v_183 = bitcast<vec3<u32>>(r4.www);
    let v_184 = r5.xyz;
    let v_185 = select(r6.xyz, v_184, (v_183 != vec3<u32>()));
    r5 = vec4<f32>(v_185.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    let v_186 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_186.xyz, r5.w);
    r5.w = dot(r5.xyz, r5.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_187 = (r5.www * r5.xyz);
    r5 = vec4<f32>(v_187.xyz, r5.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[16u].w);
    r4.w = (r4.w / r5.w);
    let v_188 = -(cb3_3.tint_symbol_2[16u].xyzx);
    r5.w = dot(r5.xyz, v_188.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
    let v_189 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_189, v_189, v_189, v_189).x, 0.0f, 1.0f);
    r5.x = (r5.w * r5.x);
    r4.w = (r4.w * r5.x);
    let v_190 = (r4.www * cb3_3.tint_symbol_2[24u].xyz);
    r5 = vec4<f32>(v_190.xyz, r5.w);
    let v_191 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_191.xyz, r5.w);
    let v_192 = bitcast<vec3<u32>>(r3.www);
    let v_193 = r4.xyz;
    let v_194 = select(r5.xyz, v_193, (v_192 != vec3<u32>()));
    r4 = vec4<f32>(v_194.xyz, r4.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
    let v_195 = (v_7.xyz + cb3_3.tint_symbol_2[9u].xyz);
    r5 = vec4<f32>(v_195.xyz, r5.w);
    let v_196 = (v3.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
    r6 = vec4<f32>(v_196.xyz, r6.w);
    r5.w = dot(r6.xyz, cb3_3.tint_symbol_2[17u].xyz);
    r6.x = (cb3_3.tint_symbol_2[25u].w + 0.00009999999747378752f);
    r5.w = clamp(((r5.wwww / r6.xxxx)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[25u].w);
    let v_197 = fma(cb3_3.tint_symbol_2[17u].xyz, r5.www, cb3_3.tint_symbol_2[9u].xyz);
    r6 = vec4<f32>(v_197.xyz, r6.w);
    let v_198 = (r6.xyz + v_7.xyz);
    r6 = vec4<f32>(v_198.xyz, r6.w);
    let v_199 = bitcast<vec3<u32>>(r4.www);
    let v_200 = r5.xyz;
    let v_201 = select(r6.xyz, v_200, (v_199 != vec3<u32>()));
    r5 = vec4<f32>(v_201.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    let v_202 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_202.xyz, r5.w);
    r5.w = dot(r5.xyz, r5.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_203 = (r5.www * r5.xyz);
    r5 = vec4<f32>(v_203.xyz, r5.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[17u].w);
    r4.w = (r4.w / r5.w);
    let v_204 = -(cb3_3.tint_symbol_2[17u].xyzx);
    r5.w = dot(r5.xyz, v_204.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
    let v_205 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_205, v_205, v_205, v_205).x, 0.0f, 1.0f);
    r5.x = (r5.w * r5.x);
    r4.w = (r4.w * r5.x);
    let v_206 = (r4.www * cb3_3.tint_symbol_2[25u].xyz);
    r5 = vec4<f32>(v_206.xyz, r5.w);
    let v_207 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_207.xyz, r5.w);
    let v_208 = bitcast<vec3<u32>>(r3.www);
    let v_209 = r4.xyz;
    let v_210 = select(r5.xyz, v_209, (v_208 != vec3<u32>()));
    r4 = vec4<f32>(v_210.xyz, r4.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
    let v_211 = (v_7.xyz + cb3_3.tint_symbol_2[10u].xyz);
    r5 = vec4<f32>(v_211.xyz, r5.w);
    let v_212 = (v3.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
    r6 = vec4<f32>(v_212.xyz, r6.w);
    r5.w = dot(r6.xyz, cb3_3.tint_symbol_2[18u].xyz);
    r6.x = (cb3_3.tint_symbol_2[26u].w + 0.00009999999747378752f);
    r5.w = clamp(((r5.wwww / r6.xxxx)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[26u].w);
    let v_213 = fma(cb3_3.tint_symbol_2[18u].xyz, r5.www, cb3_3.tint_symbol_2[10u].xyz);
    r6 = vec4<f32>(v_213.xyz, r6.w);
    let v_214 = (r6.xyz + v_7.xyz);
    r6 = vec4<f32>(v_214.xyz, r6.w);
    let v_215 = bitcast<vec3<u32>>(r4.www);
    let v_216 = r5.xyz;
    let v_217 = select(r6.xyz, v_216, (v_215 != vec3<u32>()));
    r5 = vec4<f32>(v_217.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    let v_218 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_218.xyz, r5.w);
    r5.w = dot(r5.xyz, r5.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_219 = (r5.www * r5.xyz);
    r5 = vec4<f32>(v_219.xyz, r5.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[18u].w);
    r4.w = (r4.w / r5.w);
    let v_220 = -(cb3_3.tint_symbol_2[18u].xyzx);
    r5.w = dot(r5.xyz, v_220.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
    let v_221 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_221, v_221, v_221, v_221).x, 0.0f, 1.0f);
    r5.x = (r5.w * r5.x);
    r4.w = (r4.w * r5.x);
    let v_222 = (r4.www * cb3_3.tint_symbol_2[26u].xyz);
    r5 = vec4<f32>(v_222.xyz, r5.w);
    let v_223 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_223.xyz, r5.w);
    let v_224 = bitcast<vec3<u32>>(r3.www);
    let v_225 = r4.xyz;
    let v_226 = select(r5.xyz, v_225, (v_224 != vec3<u32>()));
    r4 = vec4<f32>(v_226.xyz, r4.w);
  }
  let v_227 = fma(r3.xyz, r2.www, r4.xyz);
  r3 = vec4<f32>(v_227.xyz, r3.w);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_228 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_228.xyz, r4.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_229 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_229.xyz, r5.w);
  let v_230 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_230.xyz, r5.w);
  let v_231 = fma(r4.xyz, r2.www, r5.xyz);
  r4 = vec4<f32>(v_231.xyz, r4.w);
  let v_232 = (r2.zzz * r4.xyz);
  r4 = vec4<f32>(v_232.xyz, r4.w);
  let v_233 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_233.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_234 = dot(r6.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_234, v_234, v_234, v_234).x, 0.0f, 1.0f);
  let v_235 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r5.xyz);
  r1 = vec4<f32>(v_235.xyz, r1.w);
  let v_236 = fma(r1.xyz, r2.yyy, r4.xyz);
  r1 = vec4<f32>(v_236.xyz, r1.w);
  let v_237 = fma(r1.xyz, r0.xyz, r3.xyz);
  r1 = vec4<f32>(v_237.xyz, r1.w);
  let v_238 = fma(r0.xyz, r2.xxx, r1.xyz);
  r0 = vec4<f32>(v_238.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  let v_239 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_239.xyz, o0.w);
}

fn v_1(v_240 : bool) {
  if (v_240) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3);
  return o0;
}
