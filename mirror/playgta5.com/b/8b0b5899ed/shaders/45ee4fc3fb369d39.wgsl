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

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb5_struct;

struct cb4_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb4_struct_1;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  x1[0u].x = v7[0u];
  x1[0u].y = v7[1u];
  x1[0u].z = v7[2u];
  x1[0u].w = v7[3u];
  r0 = textureSample(t0, s0, v0.xy.xyxx.xy);
  r1 = textureSample(t5, s5, v0.xy.xyxx.xy);
  let v_1 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_2 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  let v_4 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_4.xy, r1.z, v_4.z);
  let v_5 = fma(r1.zzz, v1.xyz, r1.xyw);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = inverseSqrt(r1.x);
  r1.x = (r1.x * r1.z);
  r2 = textureSample(t6, s6, v0.xy.xyxx.xy);
  let v_6 = (r2.xy * r2.xy);
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r1.y = (r1.y * cb10_10.tint_symbol_5[3u].w);
  r0.w = (r0.w * v3.w);
  let v_8 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_8.xy, r2.zw);
  r1.x = fma(r1.x, 0.5f, 0.5f);
  r3.x = fma(r1.x, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r3.y = (r1.x + 0.30000001192092895508f);
  let v_9 = (r2.xy * r3.xy);
  r1 = vec4<f32>(v_9.x, r1.yz, v_9.y);
  let v_10 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = -(v2.xyzx);
  let v_12 = (v_11.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_13 = (r2.www * r2.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_15 = fma(r2.xyz, r2.www, v_14.xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_16 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_16.xyz, r4.w);
  r1.y = clamp(r1.yyyy.y, 0.0f, 1.0f);
  let v_17 = (r1.xw * r1.xw);
  r1 = vec4<f32>(v_17.x, r1.yz, v_17.y);
  r3.w = fma(r1.z, cb10_10.tint_symbol_5[3u].z, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_18 = -(r3.wwww);
  r1.z = fma(r1.z, cb10_10.tint_symbol_5[3u].z, v_18.z);
  r3.w = (r3.w * 558.0f);
  r1.z = fma(r1.z, 3.0f, r3.w);
  let v_19 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r3.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_20 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = (r5.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r6 = vec4<f32>(v_21.xyz, r6.w);
  let v_22 = fma(r5.xxx, cb6_6.tint_symbol_6[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_22.xyz, r6.w);
  let v_23 = fma(r5.zzz, cb6_6.tint_symbol_6[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_23.xyz, r6.w);
  let v_24 = fma(r6.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_24.xyz, r7.w);
  let v_25 = &(x0[0u]);
  let v_26 = r7;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  let v_27 = fma(r6.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_27.xyz, r8.w);
  let v_28 = &(x0[1u]);
  let v_29 = r8;
  *(v_28) = vec4<f32>(v_29.xyz, (*(v_28)).w);
  let v_30 = fma(r6.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_30.xyz, r9.w);
  let v_31 = &(x0[2u]);
  let v_32 = r9;
  *(v_31) = vec4<f32>(v_32.xyz, (*(v_31)).w);
  let v_33 = fma(r6.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r6 = vec4<f32>(v_33.xyz, r6.w);
  let v_34 = &(x0[3u]);
  let v_35 = r6;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_37 = r10;
  r10 = vec4<f32>(v_37.x, v_36.x, v_37.z, v_36.y);
  r4.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_38 = abs(r9.yyyy);
  r5.w = max(v_38.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_39 = (bitcast<u32>(r5.w) != 0u);
  let v_40 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_40, v_39);
  let v_41 = abs(r8.yyyy);
  r6.z = max(v_41.z, abs(r8.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_42 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_42 != 0u));
  let v_43 = abs(r7.yyyy);
  r6.z = max(v_43.z, abs(r7.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_44 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_44 != 0u));
  let v_45 = x0[bitcast<i32>(r4.w)];
  r7 = vec4<f32>(v_45.xyz, r7.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r4.w = dot(r8, cb6_6.tint_symbol_6[12u]);
  r6.z = dot(r8, cb6_6.tint_symbol_6[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r7.z);
  let v_46 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_46.xy, r9.z, v_46.z);
  r9.z = dpdx(r4.w);
  let v_47 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_47.xyz, r11.w);
  r11.w = dpdy(r4.w);
  let v_48 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_48.xy, r7.zw);
  let v_49 = -(r7.xyxx);
  let v_50 = fma(r9.xz, r11.xz, v_49.xy);
  r12 = vec4<f32>(v_50.xy, r12.zw);
  r6.w = (1.0f / r12.x);
  r7.x = (r9.z * r11.y);
  let v_51 = -(r7.xxxx);
  r12.z = fma(r9.x, r11.w, v_51.z);
  let v_52 = (r6.ww * r12.yz);
  r7 = vec4<f32>(v_52.xy, r7.zw);
  let v_53 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_53.xy, r7.zw);
  let v_54 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_54.xy, r7.zw);
  r4.w = fma((-(r6.zzzz)).w, r7.x, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r7.y, r4.w);
  let v_55 = bitcast<u32>(r5.w);
  let v_56 = r4.w;
  r10.z = select(r7.z, v_56, (v_55 != 0u));
  r8.z = 0.0f;
  let v_57 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_57.xyz, r7.w);
  let v_58 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_58.xy, r10.zw);
  let v_59 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_59.xyz, r9.w);
  let v_60 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_60.xy, r10.zw);
  let v_61 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_61.xyz, r11.w);
  let v_62 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_62.xy, r10.zw);
  let v_63 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_63.xyz, r12.w);
  let v_64 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_64.xy, r10.zw);
  let v_65 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_65.xyz, r13.w);
  let v_66 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_66.xy, r10.zw);
  let v_67 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_67.xyz, r14.w);
  let v_68 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_68.xy, r10.zw);
  let v_69 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_69.xyz, r15.w);
  let v_70 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_70.xy, r10.zw);
  let v_71 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_71.xyz, r16.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_72.xy, r10.zw);
  let v_73 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_73.xyz, r17.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_74.xy, r10.zw);
  let v_75 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_75.xyz, r18.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_76.xy, r10.zw);
  let v_77 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_77.xyz, r19.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_78.xy, r10.zw);
  let v_79 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_79.xyz, r20.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_80.xy, r10.zw);
  let v_81 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_81.xyz, r21.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_82.xy, r10.zw);
  let v_83 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_83.xyz, r22.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_84.xy, r10.zw);
  let v_85 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_85.xyz, r23.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_86.xy, r10.zw);
  let v_87 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_87.xyz, r8.w);
  let v_88 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_88.xy, r7.z);
  let v_89 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_89.xy, r9.z);
  let v_90 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_90.xy, r11.z);
  let v_91 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_91.xy, r12.z);
  let v_92 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_92.xy, r13.z);
  let v_93 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_93.xy, r14.z);
  let v_94 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_94.xy, r15.z);
  let v_95 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_95.xy, r16.z);
  let v_96 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_96.xy, r17.z);
  let v_97 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_97.xy, r18.z);
  let v_98 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_98.xy, r19.z);
  let v_99 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_99.xy, r20.z);
  let v_100 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_100.xy, r21.z);
  let v_101 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_101.xy, r22.z);
  let v_102 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_102.xy, r23.z);
  let v_103 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_103.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r4.w = dot(r7, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_104 = abs(r6.yyyy);
  r5.w = max(v_104.w, abs(r6.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_6[3u].z);
  let v_105 = -(r3.wwww);
  r3.w = fma(r4.w, v_105.w, r3.w);
  let v_106 = dot(v_14.xyz, v_14.xyz);
  r4.w = clamp(vec4<f32>(v_106, v_106, v_106, v_106).w, 0.0f, 1.0f);
  let v_107 = dot(r3.xyz, v_14.xyz);
  r6.x = clamp(vec4<f32>(v_107, v_107, v_107, v_107).x, 0.0f, 1.0f);
  r4.x = dot(r4.xyz, v_14.xyz);
  r6.y = clamp(r4.xxxx.y, 0.0f, 1.0f);
  let v_108 = ((-(r6.xxyx)).yz + vec2<f32>(1.0f));
  let v_109 = r4;
  r4 = vec4<f32>(v_109.x, v_108.xy, v_109.w);
  let v_110 = (r4.yz * r4.yz);
  r6 = vec4<f32>(v_110.xy, r6.zw);
  let v_111 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_111.xy, r6.zw);
  let v_112 = (r4.yz * r6.xy);
  let v_113 = r4;
  r4 = vec4<f32>(v_113.x, v_112.xy, v_113.w);
  r5.w = ((-(cb10_10.tint_symbol_5[3u].yyyy)).w + 1.0f);
  let v_114 = fma(cb10_10.tint_symbol_5[3u].yy, r4.yz, r5.ww);
  let v_115 = r4;
  r4 = vec4<f32>(v_115.x, v_114.xy, v_115.w);
  let v_116 = (r1.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(v_116.xy, r6.zw);
  r1.z = (r6.x * 0.125f);
  r4.y = fma((-(r1.yyyy)).y, r4.y, 1.0f);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r6.y);
  r4.x = exp2(r4.x);
  r4.x = (r4.z * r4.x);
  r4.x = (r1.z * r4.x);
  r4.x = (r1.y * r4.x);
  r4.x = (r4.w * r4.x);
  r4.z = (r4.y * r4.w);
  let v_117 = fma(r0.xyz, r4.zzz, r4.xxx);
  r4 = vec4<f32>(v_117.x, r4.y, v_117.yz);
  let v_118 = (r4.xzw * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_118.x, r4.y, v_118.yz);
  r6.x = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.x) != 0u)) {
    r8 = vec4<f32>(vec3<f32>(), r8.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_119 = (v_11.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_119.xyz, r7.w);
    let v_120 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_120.xyz, r8.w);
    r6.w = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_2[19u].w);
    let v_121 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.www, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_121.xyz, r8.w);
    let v_122 = (r8.xyz + v_11.xyz);
    r8 = vec4<f32>(v_122.xyz, r8.w);
    let v_123 = bitcast<vec3<u32>>(r6.zzz);
    let v_124 = r7.xyz;
    let v_125 = select(r8.xyz, v_124, (v_123 != vec3<u32>()));
    r7 = vec4<f32>(v_125.xyz, r7.w);
    r6.z = dot(r7.xyz, r7.xyz);
    let v_126 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_126.xyz, r7.w);
    r6.w = dot(r7.xyz, r7.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_127 = (r6.www * r7.xyz);
    r7 = vec4<f32>(v_127.xyz, r7.w);
    r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[11u].w);
    r6.z = (r6.z / r6.w);
    let v_128 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.w = dot(r7.xyz, v_128.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_129 = dot(r7.xyz, v_14.xyz);
    r7.w = clamp(vec4<f32>(v_129, v_129, v_129, v_129).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r7.w = (r6.z * r6.w);
    let v_130 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_130.xyz, r8.w);
    let v_131 = (r0.xyz * r8.xyz);
    r8 = vec4<f32>(v_131.xyz, r8.w);
    let v_132 = fma(r2.xyz, r2.www, r7.xyz);
    r7 = vec4<f32>(v_132.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_133 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_133.xyz, r7.w);
    let v_134 = dot(r7.xyz, r3.xyz);
    r7.w = clamp(vec4<f32>(v_134, v_134, v_134, v_134).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r8.w = (r7.w * r7.w);
    r8.w = (r8.w * r8.w);
    r7.w = (r7.w * r8.w);
    r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
    let v_135 = dot(r7.xyz, v_14.xyz);
    r7.x = clamp(vec4<f32>(v_135, v_135, v_135, v_135).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r6.y * r7.x);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r7.w);
    r6.w = (r6.w * r7.x);
    r6.z = (r6.z * r6.w);
    r6.z = (r1.z * r6.z);
    let v_136 = (r6.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_136.xyz, r7.w);
  }
  r6.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.z) != 0u)) {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    let v_137 = bitcast<u32>(r6.w);
    let v_138 = r6.z;
    r6.x = select(r6.x, v_138, (v_137 != 0u));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_139 = (v_11.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_139.xyz, r9.w);
      let v_140 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_140.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_141 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_141.xyz, r10.w);
      let v_142 = (r10.xyz + v_11.xyz);
      r10 = vec4<f32>(v_142.xyz, r10.w);
      let v_143 = bitcast<vec3<u32>>(r6.zzz);
      let v_144 = r9.xyz;
      let v_145 = select(r10.xyz, v_144, (v_143 != vec3<u32>()));
      r9 = vec4<f32>(v_145.xyz, r9.w);
      r6.z = dot(r9.xyz, r9.xyz);
      let v_146 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_146.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_147 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_147.xyz, r9.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[12u].w);
      r6.z = (r6.z / r6.w);
      let v_148 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r9.xyz, v_148.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_149 = dot(r9.xyz, v_14.xyz);
      r7.w = clamp(vec4<f32>(v_149, v_149, v_149, v_149).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r6.z * r6.w);
      let v_150 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_150.xyz, r10.w);
      let v_151 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_151.xyz, r8.w);
      let v_152 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_152.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_153 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_153.xyz, r9.w);
      let v_154 = dot(r9.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_154, v_154, v_154, v_154).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
      let v_155 = dot(r9.xyz, v_14.xyz);
      r8.w = clamp(vec4<f32>(v_155, v_155, v_155, v_155).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r6.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.z = (r6.z * r6.w);
      r6.z = (r1.z * r6.z);
      let v_156 = fma(r6.zzz, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_156.xyz, r7.w);
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
      let v_157 = (v_11.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_157.xyz, r9.w);
      let v_158 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_158.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_159 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_159.xyz, r10.w);
      let v_160 = (r10.xyz + v_11.xyz);
      r10 = vec4<f32>(v_160.xyz, r10.w);
      let v_161 = bitcast<vec3<u32>>(r6.zzz);
      let v_162 = r9.xyz;
      let v_163 = select(r10.xyz, v_162, (v_161 != vec3<u32>()));
      r9 = vec4<f32>(v_163.xyz, r9.w);
      r6.z = dot(r9.xyz, r9.xyz);
      let v_164 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_164.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_165 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_165.xyz, r9.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[13u].w);
      r6.z = (r6.z / r6.w);
      let v_166 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r9.xyz, v_166.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_167 = dot(r9.xyz, v_14.xyz);
      r7.w = clamp(vec4<f32>(v_167, v_167, v_167, v_167).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r6.z * r6.w);
      let v_168 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      let v_169 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_169.xyz, r8.w);
      let v_170 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_170.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_171 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_171.xyz, r9.w);
      let v_172 = dot(r9.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
      let v_173 = dot(r9.xyz, v_14.xyz);
      r8.w = clamp(vec4<f32>(v_173, v_173, v_173, v_173).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r6.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.z = (r6.z * r6.w);
      r6.z = (r1.z * r6.z);
      let v_174 = fma(r6.zzz, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_174.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_175 = (v_11.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_175.xyz, r9.w);
      let v_176 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_176.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[22u].w);
      let v_177 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.www, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_177.xyz, r10.w);
      let v_178 = (r10.xyz + v_11.xyz);
      r10 = vec4<f32>(v_178.xyz, r10.w);
      let v_179 = bitcast<vec3<u32>>(r6.zzz);
      let v_180 = r9.xyz;
      let v_181 = select(r10.xyz, v_180, (v_179 != vec3<u32>()));
      r9 = vec4<f32>(v_181.xyz, r9.w);
      r6.z = dot(r9.xyz, r9.xyz);
      let v_182 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_182.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_183 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_183.xyz, r9.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[14u].w);
      r6.z = (r6.z / r6.w);
      let v_184 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.w = dot(r9.xyz, v_184.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_185 = dot(r9.xyz, v_14.xyz);
      r7.w = clamp(vec4<f32>(v_185, v_185, v_185, v_185).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r6.z * r6.w);
      let v_186 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_186.xyz, r10.w);
      let v_187 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_187.xyz, r8.w);
      let v_188 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_188.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_189 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_189.xyz, r9.w);
      let v_190 = dot(r9.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_190, v_190, v_190, v_190).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
      let v_191 = dot(r9.xyz, v_14.xyz);
      r8.w = clamp(vec4<f32>(v_191, v_191, v_191, v_191).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r6.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.z = (r6.z * r6.w);
      r6.z = (r1.z * r6.z);
      let v_192 = fma(r6.zzz, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_192.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_193 = (v_11.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r9 = vec4<f32>(v_193.xyz, r9.w);
      let v_194 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r10 = vec4<f32>(v_194.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r7.w = (cb3_3.tint_symbol_2[23u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[23u].w);
      let v_195 = fma(cb3_3.tint_symbol_2[15u].xyz, r6.www, cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_195.xyz, r10.w);
      let v_196 = (r10.xyz + v_11.xyz);
      r10 = vec4<f32>(v_196.xyz, r10.w);
      let v_197 = bitcast<vec3<u32>>(r6.zzz);
      let v_198 = r9.xyz;
      let v_199 = select(r10.xyz, v_198, (v_197 != vec3<u32>()));
      r9 = vec4<f32>(v_199.xyz, r9.w);
      r6.z = dot(r9.xyz, r9.xyz);
      let v_200 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_200.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_201 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_201.xyz, r9.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[15u].w);
      r6.z = (r6.z / r6.w);
      let v_202 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r6.w = dot(r9.xyz, v_202.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_203 = dot(r9.xyz, v_14.xyz);
      r7.w = clamp(vec4<f32>(v_203, v_203, v_203, v_203).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r6.z * r6.w);
      let v_204 = (r7.www * cb3_3.tint_symbol_2[23u].xyz);
      r10 = vec4<f32>(v_204.xyz, r10.w);
      let v_205 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_205.xyz, r8.w);
      let v_206 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_206.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_207 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_207.xyz, r9.w);
      let v_208 = dot(r9.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_208, v_208, v_208, v_208).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
      let v_209 = dot(r9.xyz, v_14.xyz);
      r8.w = clamp(vec4<f32>(v_209, v_209, v_209, v_209).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r6.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.z = (r6.z * r6.w);
      r6.z = (r1.z * r6.z);
      let v_210 = fma(r6.zzz, cb3_3.tint_symbol_2[23u].xyz, r7.xyz);
      r7 = vec4<f32>(v_210.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_211 = (v_11.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r9 = vec4<f32>(v_211.xyz, r9.w);
      let v_212 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r10 = vec4<f32>(v_212.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r7.w = (cb3_3.tint_symbol_2[24u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[24u].w);
      let v_213 = fma(cb3_3.tint_symbol_2[16u].xyz, r6.www, cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_213.xyz, r10.w);
      let v_214 = (r10.xyz + v_11.xyz);
      r10 = vec4<f32>(v_214.xyz, r10.w);
      let v_215 = bitcast<vec3<u32>>(r6.zzz);
      let v_216 = r9.xyz;
      let v_217 = select(r10.xyz, v_216, (v_215 != vec3<u32>()));
      r9 = vec4<f32>(v_217.xyz, r9.w);
      r6.z = dot(r9.xyz, r9.xyz);
      let v_218 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_218.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_219 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_219.xyz, r9.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[16u].w);
      r6.z = (r6.z / r6.w);
      let v_220 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r6.w = dot(r9.xyz, v_220.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_221 = dot(r9.xyz, v_14.xyz);
      r7.w = clamp(vec4<f32>(v_221, v_221, v_221, v_221).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r6.z * r6.w);
      let v_222 = (r7.www * cb3_3.tint_symbol_2[24u].xyz);
      r10 = vec4<f32>(v_222.xyz, r10.w);
      let v_223 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_223.xyz, r8.w);
      let v_224 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_224.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_225 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_225.xyz, r9.w);
      let v_226 = dot(r9.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_226, v_226, v_226, v_226).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
      let v_227 = dot(r9.xyz, v_14.xyz);
      r8.w = clamp(vec4<f32>(v_227, v_227, v_227, v_227).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r6.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.z = (r6.z * r6.w);
      r6.z = (r1.z * r6.z);
      let v_228 = fma(r6.zzz, cb3_3.tint_symbol_2[24u].xyz, r7.xyz);
      r7 = vec4<f32>(v_228.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_229 = (v_11.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r9 = vec4<f32>(v_229.xyz, r9.w);
      let v_230 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r10 = vec4<f32>(v_230.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r7.w = (cb3_3.tint_symbol_2[25u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[25u].w);
      let v_231 = fma(cb3_3.tint_symbol_2[17u].xyz, r6.www, cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_231.xyz, r10.w);
      let v_232 = (r10.xyz + v_11.xyz);
      r10 = vec4<f32>(v_232.xyz, r10.w);
      let v_233 = bitcast<vec3<u32>>(r6.zzz);
      let v_234 = r9.xyz;
      let v_235 = select(r10.xyz, v_234, (v_233 != vec3<u32>()));
      r9 = vec4<f32>(v_235.xyz, r9.w);
      r6.z = dot(r9.xyz, r9.xyz);
      let v_236 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_236.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_237 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_237.xyz, r9.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[17u].w);
      r6.z = (r6.z / r6.w);
      let v_238 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r6.w = dot(r9.xyz, v_238.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_239 = dot(r9.xyz, v_14.xyz);
      r7.w = clamp(vec4<f32>(v_239, v_239, v_239, v_239).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r6.z * r6.w);
      let v_240 = (r7.www * cb3_3.tint_symbol_2[25u].xyz);
      r10 = vec4<f32>(v_240.xyz, r10.w);
      let v_241 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_241.xyz, r8.w);
      let v_242 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_242.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_243 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_243.xyz, r9.w);
      let v_244 = dot(r9.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_244, v_244, v_244, v_244).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
      let v_245 = dot(r9.xyz, v_14.xyz);
      r8.w = clamp(vec4<f32>(v_245, v_245, v_245, v_245).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r6.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.z = (r6.z * r6.w);
      r6.z = (r1.z * r6.z);
      let v_246 = fma(r6.zzz, cb3_3.tint_symbol_2[25u].xyz, r7.xyz);
      r7 = vec4<f32>(v_246.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_247 = (v_11.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r9 = vec4<f32>(v_247.xyz, r9.w);
      let v_248 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r10 = vec4<f32>(v_248.xyz, r10.w);
      r6.z = dot(r10.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r6.w = (cb3_3.tint_symbol_2[26u].w + 0.00009999999747378752f);
      r6.z = clamp(((r6.zzzz / r6.wwww)).z, 0.0f, 1.0f);
      r6.z = (r6.z * cb3_3.tint_symbol_2[26u].w);
      let v_249 = fma(cb3_3.tint_symbol_2[18u].xyz, r6.zzz, cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_249.xyz, r10.w);
      let v_250 = (r10.xyz + v_11.xyz);
      r10 = vec4<f32>(v_250.xyz, r10.w);
      let v_251 = bitcast<vec3<u32>>(r6.xxx);
      let v_252 = r9.xyz;
      let v_253 = select(r10.xyz, v_252, (v_251 != vec3<u32>()));
      r6 = vec4<f32>(v_253.x, r6.y, v_253.yz);
      r7.w = dot(r6.xzw, r6.xzw);
      let v_254 = (r6.xzw + vec3<f32>(0.00000099999999747524f));
      r6 = vec4<f32>(v_254.x, r6.y, v_254.yz);
      r8.w = dot(r6.xzw, r6.xzw);
      r8.w = inverseSqrt(r8.w);
      let v_255 = (r6.xzw * r8.www);
      r6 = vec4<f32>(v_255.x, r6.y, v_255.yz);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[18u].w);
      r7.w = (r7.w / r8.w);
      let v_256 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r8.w = dot(r6.xzw, v_256.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_257 = dot(r6.xzw, v_14.xyz);
      r9.x = clamp(vec4<f32>(v_257, v_257, v_257, v_257).x, 0.0f, 1.0f);
      r8.w = (r8.w * r9.x);
      r9.x = (r7.w * r8.w);
      let v_258 = (r9.xxx * cb3_3.tint_symbol_2[26u].xyz);
      r9 = vec4<f32>(v_258.xyz, r9.w);
      let v_259 = fma(r9.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_259.xyz, r8.w);
      let v_260 = fma(r2.xyz, r2.www, r6.xzw);
      r2 = vec4<f32>(v_260.xyz, r2.w);
      r2.w = dot(r2.xyz, r2.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_261 = (r2.www * r2.xyz);
      r2 = vec4<f32>(v_261.xyz, r2.w);
      let v_262 = dot(r2.xyz, r3.xyz);
      r2.w = clamp(vec4<f32>(v_262, v_262, v_262, v_262).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r3.x = (r2.w * r2.w);
      r3.x = (r3.x * r3.x);
      r2.w = (r2.w * r3.x);
      r2.w = fma(cb10_10.tint_symbol_5[3u].y, r2.w, r5.w);
      let v_263 = dot(r2.xyz, v_14.xyz);
      r2.x = clamp(vec4<f32>(v_263, v_263, v_263, v_263).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r6.y);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r2.w);
      r2.x = (r8.w * r2.x);
      r2.x = (r7.w * r2.x);
      r1.z = (r1.z * r2.x);
      let v_264 = fma(r1.zzz, cb3_3.tint_symbol_2[26u].xyz, r7.xyz);
      r7 = vec4<f32>(v_264.xyz, r7.w);
    }
  }
  r1.z = (r4.y * r4.y);
  r1.y = (r1.y * r1.y);
  let v_265 = (r7.xyz * r1.yyy);
  r2 = vec4<f32>(v_265.xyz, r2.w);
  let v_266 = fma(r1.zzz, r8.xyz, r2.xyz);
  r2 = vec4<f32>(v_266.xyz, r2.w);
  let v_267 = fma(r4.xzw, r3.www, r2.xyz);
  r2 = vec4<f32>(v_267.xyz, r2.w);
  r1.y = ((-(cb3_3.tint_symbol_2[0u].zzzz)).y + cb3_3.tint_symbol_2[43u].w);
  r1.y = (r1.y * cb3_3.tint_symbol_2[44u].w);
  r1.y = max(r1.y, 0.0f);
  let v_268 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_268.xyz, r3.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_269 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r4 = vec4<f32>(v_269.x, r4.y, v_269.yz);
  let v_270 = (r4.xzw * cb2_2.tint_symbol_1[16u].zzz);
  r4 = vec4<f32>(v_270.x, r4.y, v_270.yz);
  let v_271 = fma(r3.xyz, r1.zzz, r4.xzw);
  r3 = vec4<f32>(v_271.xyz, r3.w);
  let v_272 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_272.xyz, r3.w);
  let v_273 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(r1.x, v_273.xyz);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_274 = dot(r6.xyz, v_14.xyz);
  r2.w = clamp(vec4<f32>(v_274, v_274, v_274, v_274).w, 0.0f, 1.0f);
  let v_275 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.www, r1.yzw);
  r1 = vec4<f32>(r1.x, v_275.xyz);
  let v_276 = fma(r1.yzw, r1.xxx, r3.xyz);
  r1 = vec4<f32>(v_276.xyz, r1.w);
  let v_277 = (r4.yyy * r1.xyz);
  r1 = vec4<f32>(v_277.xyz, r1.w);
  let v_278 = fma(r1.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_278.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.w = dot(r5.xyz, r5.xyz);
  r1.x = sqrt(r0.w);
  let v_279 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_279.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r5.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_280 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_280 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_281 = (r0.www * r5.xyz);
  r2 = vec4<f32>(v_281.xyz, r2.w);
  let v_282 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_282, v_282, v_282, v_282).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_283 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_283, v_283, v_283, v_283).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_284 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_284.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_285 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_285.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_286 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_286.xyz, r2.w);
  let v_287 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_287.xyz, r2.w);
  let v_288 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_288.xyz, r3.w);
  let v_289 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_289.xyz, r2.w);
  let v_290 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_291 = (r2.xyz + v_290.xyz);
  r2 = vec4<f32>(v_291.xyz, r2.w);
  let v_292 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_292.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_293 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_293.xy, r1.z, v_293.z);
  let v_294 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_294.xy, r1.z, v_294.z);
  let v_295 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_295.xyz, r0.w);
  let v_296 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_296.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5);
  return o0;
}
