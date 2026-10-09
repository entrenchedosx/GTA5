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
  r4.w = dot(v_14.xyz, v_14.xyz);
  r4.w = min(r4.w, 1.0f);
  let v_106 = dot(r3.xyz, v_14.xyz);
  r6.x = clamp(vec4<f32>(v_106, v_106, v_106, v_106).x, 0.0f, 1.0f);
  r4.x = dot(r4.xyz, v_14.xyz);
  r6.y = clamp(r4.xxxx.y, 0.0f, 1.0f);
  let v_107 = ((-(r6.xxyx)).yz + vec2<f32>(1.0f));
  let v_108 = r4;
  r4 = vec4<f32>(v_108.x, v_107.xy, v_108.w);
  let v_109 = (r4.yz * r4.yz);
  r6 = vec4<f32>(v_109.xy, r6.zw);
  let v_110 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_110.xy, r6.zw);
  let v_111 = (r4.yz * r6.xy);
  let v_112 = r4;
  r4 = vec4<f32>(v_112.x, v_111.xy, v_112.w);
  r5.w = ((-(cb10_10.tint_symbol_5[3u].yyyy)).w + 1.0f);
  let v_113 = fma(cb10_10.tint_symbol_5[3u].yy, r4.yz, r5.ww);
  let v_114 = r4;
  r4 = vec4<f32>(v_114.x, v_113.xy, v_114.w);
  let v_115 = (r1.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(v_115.xy, r6.zw);
  r1.z = (r6.x * 0.125f);
  r4.y = fma((-(r1.yyyy)).y, r4.y, 1.0f);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r6.y);
  r4.x = exp2(r4.x);
  r4.x = (r4.z * r4.x);
  r4.x = (r1.z * r4.x);
  r4.x = (r1.y * r4.x);
  let v_116 = (r4.wy * r4.xw);
  let v_117 = r4;
  r4 = vec4<f32>(v_116.x, v_117.y, v_116.y, v_117.w);
  let v_118 = fma(r0.xyz, r4.zzz, r4.xxx);
  r4 = vec4<f32>(v_118.x, r4.y, v_118.yz);
  let v_119 = (r4.xzw * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_119.x, r4.y, v_119.yz);
  r6.x = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.x) != 0u)) {
    r8 = vec4<f32>(vec3<f32>(), r8.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_120 = (v_11.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_120.xyz, r7.w);
    let v_121 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_121.xyz, r8.w);
    r6.w = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_2[19u].w);
    let v_122 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.www, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_122.xyz, r8.w);
    let v_123 = (r8.xyz + v_11.xyz);
    r8 = vec4<f32>(v_123.xyz, r8.w);
    let v_124 = bitcast<vec3<u32>>(r6.zzz);
    let v_125 = r7.xyz;
    let v_126 = select(r8.xyz, v_125, (v_124 != vec3<u32>()));
    r7 = vec4<f32>(v_126.xyz, r7.w);
    r6.z = dot(r7.xyz, r7.xyz);
    let v_127 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_127.xyz, r7.w);
    r6.w = dot(r7.xyz, r7.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_128 = (r6.www * r7.xyz);
    r7 = vec4<f32>(v_128.xyz, r7.w);
    r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[11u].w);
    r6.z = (r6.z / r6.w);
    let v_129 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.w = dot(r7.xyz, v_129.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_130 = dot(r7.xyz, v_14.xyz);
    r7.w = clamp(vec4<f32>(v_130, v_130, v_130, v_130).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r7.w = (r6.z * r6.w);
    let v_131 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_131.xyz, r8.w);
    let v_132 = (r0.xyz * r8.xyz);
    r8 = vec4<f32>(v_132.xyz, r8.w);
    let v_133 = fma(r2.xyz, r2.www, r7.xyz);
    r7 = vec4<f32>(v_133.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_134 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_134.xyz, r7.w);
    let v_135 = dot(r7.xyz, r3.xyz);
    r7.w = clamp(vec4<f32>(v_135, v_135, v_135, v_135).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r8.w = (r7.w * r7.w);
    r8.w = (r8.w * r8.w);
    r7.w = (r7.w * r8.w);
    r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
    let v_136 = dot(r7.xyz, v_14.xyz);
    r7.x = clamp(vec4<f32>(v_136, v_136, v_136, v_136).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r6.y * r7.x);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r7.w);
    r6.w = (r6.w * r7.x);
    r6.z = (r6.z * r6.w);
    r6.z = (r1.z * r6.z);
    let v_137 = (r6.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_137.xyz, r7.w);
  }
  r6.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.z) != 0u)) {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    let v_138 = bitcast<u32>(r6.w);
    let v_139 = r6.z;
    r6.x = select(r6.x, v_139, (v_138 != 0u));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_140 = (v_11.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_140.xyz, r9.w);
      let v_141 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_141.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_142 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_142.xyz, r10.w);
      let v_143 = (r10.xyz + v_11.xyz);
      r10 = vec4<f32>(v_143.xyz, r10.w);
      let v_144 = bitcast<vec3<u32>>(r6.zzz);
      let v_145 = r9.xyz;
      let v_146 = select(r10.xyz, v_145, (v_144 != vec3<u32>()));
      r9 = vec4<f32>(v_146.xyz, r9.w);
      r6.z = dot(r9.xyz, r9.xyz);
      let v_147 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_147.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_148 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_148.xyz, r9.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[12u].w);
      r6.z = (r6.z / r6.w);
      let v_149 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r9.xyz, v_149.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_150 = dot(r9.xyz, v_14.xyz);
      r7.w = clamp(vec4<f32>(v_150, v_150, v_150, v_150).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r6.z * r6.w);
      let v_151 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_151.xyz, r10.w);
      let v_152 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_152.xyz, r8.w);
      let v_153 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_153.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_154 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_154.xyz, r9.w);
      let v_155 = dot(r9.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_155, v_155, v_155, v_155).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
      let v_156 = dot(r9.xyz, v_14.xyz);
      r8.w = clamp(vec4<f32>(v_156, v_156, v_156, v_156).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r6.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.z = (r6.z * r6.w);
      r6.z = (r1.z * r6.z);
      let v_157 = fma(r6.zzz, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_157.xyz, r7.w);
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
      let v_158 = (v_11.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_158.xyz, r9.w);
      let v_159 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_159.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_160 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_160.xyz, r10.w);
      let v_161 = (r10.xyz + v_11.xyz);
      r10 = vec4<f32>(v_161.xyz, r10.w);
      let v_162 = bitcast<vec3<u32>>(r6.zzz);
      let v_163 = r9.xyz;
      let v_164 = select(r10.xyz, v_163, (v_162 != vec3<u32>()));
      r9 = vec4<f32>(v_164.xyz, r9.w);
      r6.z = dot(r9.xyz, r9.xyz);
      let v_165 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_165.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_166 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_166.xyz, r9.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[13u].w);
      r6.z = (r6.z / r6.w);
      let v_167 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r9.xyz, v_167.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_168 = dot(r9.xyz, v_14.xyz);
      r7.w = clamp(vec4<f32>(v_168, v_168, v_168, v_168).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r6.z * r6.w);
      let v_169 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_169.xyz, r10.w);
      let v_170 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_170.xyz, r8.w);
      let v_171 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_171.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_172 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_172.xyz, r9.w);
      let v_173 = dot(r9.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_173, v_173, v_173, v_173).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
      let v_174 = dot(r9.xyz, v_14.xyz);
      r8.w = clamp(vec4<f32>(v_174, v_174, v_174, v_174).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r6.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.z = (r6.z * r6.w);
      r6.z = (r1.z * r6.z);
      let v_175 = fma(r6.zzz, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_175.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_176 = (v_11.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_176.xyz, r9.w);
      let v_177 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_177.xyz, r10.w);
      r6.z = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r6.z = clamp(((r6.zzzz / r6.wwww)).z, 0.0f, 1.0f);
      r6.z = (r6.z * cb3_3.tint_symbol_2[22u].w);
      let v_178 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_178.xyz, r10.w);
      let v_179 = (r10.xyz + v_11.xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      let v_180 = bitcast<vec3<u32>>(r6.xxx);
      let v_181 = r9.xyz;
      let v_182 = select(r10.xyz, v_181, (v_180 != vec3<u32>()));
      r6 = vec4<f32>(v_182.x, r6.y, v_182.yz);
      r7.w = dot(r6.xzw, r6.xzw);
      let v_183 = (r6.xzw + vec3<f32>(0.00000099999999747524f));
      r6 = vec4<f32>(v_183.x, r6.y, v_183.yz);
      r8.w = dot(r6.xzw, r6.xzw);
      r8.w = inverseSqrt(r8.w);
      let v_184 = (r6.xzw * r8.www);
      r6 = vec4<f32>(v_184.x, r6.y, v_184.yz);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[14u].w);
      r7.w = (r7.w / r8.w);
      let v_185 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.w = dot(r6.xzw, v_185.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_186 = dot(r6.xzw, v_14.xyz);
      r9.x = clamp(vec4<f32>(v_186, v_186, v_186, v_186).x, 0.0f, 1.0f);
      r8.w = (r8.w * r9.x);
      r9.x = (r7.w * r8.w);
      let v_187 = (r9.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r9 = vec4<f32>(v_187.xyz, r9.w);
      let v_188 = fma(r9.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_188.xyz, r8.w);
      let v_189 = fma(r2.xyz, r2.www, r6.xzw);
      r2 = vec4<f32>(v_189.xyz, r2.w);
      r2.w = dot(r2.xyz, r2.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_190 = (r2.www * r2.xyz);
      r2 = vec4<f32>(v_190.xyz, r2.w);
      let v_191 = dot(r2.xyz, r3.xyz);
      r2.w = clamp(vec4<f32>(v_191, v_191, v_191, v_191).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r3.x = (r2.w * r2.w);
      r3.x = (r3.x * r3.x);
      r2.w = (r2.w * r3.x);
      r2.w = fma(cb10_10.tint_symbol_5[3u].y, r2.w, r5.w);
      let v_192 = dot(r2.xyz, v_14.xyz);
      r2.x = clamp(vec4<f32>(v_192, v_192, v_192, v_192).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r6.y);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r2.w);
      r2.x = (r8.w * r2.x);
      r2.x = (r7.w * r2.x);
      r1.z = (r1.z * r2.x);
      let v_193 = fma(r1.zzz, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_193.xyz, r7.w);
    }
  }
  r1.z = (r4.y * r4.y);
  r1.y = (r1.y * r1.y);
  let v_194 = (r7.xyz * r1.yyy);
  r2 = vec4<f32>(v_194.xyz, r2.w);
  let v_195 = fma(r1.zzz, r8.xyz, r2.xyz);
  r2 = vec4<f32>(v_195.xyz, r2.w);
  let v_196 = fma(r4.xzw, r3.www, r2.xyz);
  r2 = vec4<f32>(v_196.xyz, r2.w);
  r1.y = ((-(cb3_3.tint_symbol_2[0u].zzzz)).y + cb3_3.tint_symbol_2[43u].w);
  r1.y = (r1.y * cb3_3.tint_symbol_2[44u].w);
  r1.y = max(r1.y, 0.0f);
  let v_197 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_197.xyz, r3.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_198 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r4 = vec4<f32>(v_198.x, r4.y, v_198.yz);
  let v_199 = (r4.xzw * cb2_2.tint_symbol_1[16u].zzz);
  r4 = vec4<f32>(v_199.x, r4.y, v_199.yz);
  let v_200 = fma(r3.xyz, r1.zzz, r4.xzw);
  r3 = vec4<f32>(v_200.xyz, r3.w);
  let v_201 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_201.xyz, r3.w);
  let v_202 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(r1.x, v_202.xyz);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_203 = dot(r6.xyz, v_14.xyz);
  r2.w = clamp(vec4<f32>(v_203, v_203, v_203, v_203).w, 0.0f, 1.0f);
  let v_204 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.www, r1.yzw);
  r1 = vec4<f32>(r1.x, v_204.xyz);
  let v_205 = fma(r1.yzw, r1.xxx, r3.xyz);
  r1 = vec4<f32>(v_205.xyz, r1.w);
  let v_206 = (r4.yyy * r1.xyz);
  r1 = vec4<f32>(v_206.xyz, r1.w);
  let v_207 = fma(r1.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_207.xyz, r0.w);
  r0.w = clamp(((r0.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  r1.x = dot(r5.xyz, r5.xyz);
  r1.y = sqrt(r1.x);
  let v_208 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.z = (r1.y + v_208.z);
  r1.z = max(r1.z, 0.0f);
  r1.y = (r1.z / r1.y);
  r1.y = (r1.y * r5.z);
  r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
  r2.x = (r1.w * -1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.w = (r2.x / r1.w);
  let v_209 = bitcast<u32>(r1.y);
  r1.y = select(1.0f, r1.w, (v_209 != 0u));
  r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
  r1.y = (r1.y * r1.w);
  r1.y = min(r1.y, 1.0f);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = min(r1.y, 1.0f);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
  r1.x = inverseSqrt(r1.x);
  let v_210 = (r1.xxx * r5.xyz);
  r2 = vec4<f32>(v_210.xyz, r2.w);
  let v_211 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r1.x = clamp(vec4<f32>(v_211, v_211, v_211, v_211).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
  r1.x = exp2(r1.x);
  let v_212 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r2.x = clamp(vec4<f32>(v_212, v_212, v_212, v_212).x, 0.0f, 1.0f);
  r2.x = log2(r2.x);
  r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
  r2.x = exp2(r2.x);
  r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
  let v_213 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.y = (r1.z + v_213.y);
  r2.y = max(r2.y, 0.0f);
  r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
  r2.y = (r2.y * 1.44269502162933349609f);
  r2.y = exp2(r2.y);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
  let v_214 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.z = (r1.z * v_214.z);
  r1.z = (r1.z * 1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  let v_215 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(r2.x, v_215.xyz);
  let v_216 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(r2.x, v_216.xyz);
  let v_217 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_217.xyz, r3.w);
  let v_218 = fma(r2.xxx, r3.xyz, r2.yzw);
  r2 = vec4<f32>(v_218.xyz, r2.w);
  let v_219 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_220 = (r2.xyz + v_219.xyz);
  r2 = vec4<f32>(v_220.xyz, r2.w);
  let v_221 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_221.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_222 = fma(r1.yyy, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_222.xyz, r1.w);
  let v_223 = ((-(r0.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_223.xyz, r1.w);
  let v_224 = fma(r1.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_224.xyz, r0.w);
  let v_225 = clamp(((r0.xyzx * cb2_2.tint_symbol_1[17u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_225.xyz, r0.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r0.w)));
  v_226((bitcast<u32>(r1.x) != 0u));
  let v_227 = sqrt(r0.xyz);
  o0 = vec4<f32>(v_227.xyz, o0.w);
  o0.w = r0.w;
}

fn v_226(v_228 : bool) {
  if (v_228) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5);
  return o0;
}
