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

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

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
  r1 = textureSample(t4, s4, v0.xy.xyxx.xy);
  let v_1 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_5[0u].x, 0.00100000004749745131f);
  let v_2 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  let v_4 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_4.xy, r1.z, v_4.z);
  let v_5 = fma(r1.zzz, v1.xyz, r1.xyw);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_6 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r3 = textureSample(t5, s5, v0.xy.xyxx.xy);
  let v_7 = (r3.xy * r3.xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  r1.x = (r1.x * cb10_10.tint_symbol_5[0u].w);
  r0.w = (r0.w * v3.w);
  let v_8 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_8.xy, r3.zw);
  r2.w = fma(r2.z, 0.5f, 0.5f);
  r4.x = fma(r2.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r4.y = (r2.w + 0.30000001192092895508f);
  let v_9 = (r3.xy * r4.xy);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  let v_10 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = -(v2.xyzx);
  let v_12 = (v_11.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_13 = (r2.www * r4.xyz);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_15 = fma(r4.xyz, r2.www, v_14.xyz);
  r6 = vec4<f32>(v_15.xyz, r6.w);
  r3.z = dot(r6.xyz, r6.xyz);
  r3.z = inverseSqrt(r3.z);
  let v_16 = (r3.zzz * r6.xyz);
  r6 = vec4<f32>(v_16.xyz, r6.w);
  r1.x = clamp(r1.xxxx.x, 0.0f, 1.0f);
  r3.z = fma(r1.y, cb10_10.tint_symbol_5[0u].z, -500.0f);
  r3.z = max(r3.z, 0.0f);
  let v_17 = -(r3.zzzz);
  r1.y = fma(r1.y, cb10_10.tint_symbol_5[0u].z, v_17.y);
  r3.z = (r3.z * 558.0f);
  r1.y = fma(r1.y, 3.0f, r3.z);
  r3.z = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_18 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_18.xyz, r7.w);
  let v_19 = (r7.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r8 = vec4<f32>(v_19.xyz, r8.w);
  let v_20 = fma(r7.xxx, cb6_6.tint_symbol_6[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_20.xyz, r8.w);
  let v_21 = fma(r7.zzz, cb6_6.tint_symbol_6[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_21.xyz, r8.w);
  let v_22 = fma(r8.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r9 = vec4<f32>(v_22.xyz, r9.w);
  let v_23 = &(x0[0u]);
  let v_24 = r9;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = fma(r8.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r10 = vec4<f32>(v_25.xyz, r10.w);
  let v_26 = &(x0[1u]);
  let v_27 = r10;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  let v_28 = fma(r8.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r11 = vec4<f32>(v_28.xyz, r11.w);
  let v_29 = &(x0[2u]);
  let v_30 = r11;
  *(v_29) = vec4<f32>(v_30.xyz, (*(v_29)).w);
  let v_31 = fma(r8.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r8 = vec4<f32>(v_31.xyz, r8.w);
  let v_32 = &(x0[3u]);
  let v_33 = r8;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_35 = r12;
  r12 = vec4<f32>(v_35.x, v_34.x, v_35.z, v_34.y);
  r3.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_36 = abs(r11.yyyy);
  r4.w = max(v_36.w, abs(r11.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_37 = (bitcast<u32>(r4.w) != 0u);
  let v_38 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_38, v_37);
  let v_39 = abs(r10.yyyy);
  r5.w = max(v_39.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_40 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_40 != 0u));
  let v_41 = abs(r9.yyyy);
  r5.w = max(v_41.w, abs(r9.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_42 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_42 != 0u));
  let v_43 = x0[bitcast<i32>(r3.w)];
  r9 = vec4<f32>(v_43.xyz, r9.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.w = (r3.w + 0.5f);
  r4.w = (r4.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r3.w = dot(r10, cb6_6.tint_symbol_6[12u]);
  r5.w = dot(r10, cb6_6.tint_symbol_6[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r9.z);
  let v_44 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_44.xy, r11.z, v_44.z);
  r11.z = dpdx(r3.w);
  let v_45 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_45.xyz, r13.w);
  r13.w = dpdy(r3.w);
  let v_46 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_46.xy);
  let v_47 = -(r8.zwzz);
  let v_48 = fma(r11.xz, r13.xz, v_47.xy);
  r14 = vec4<f32>(v_48.xy, r14.zw);
  r6.w = (1.0f / r14.x);
  r7.w = (r11.z * r13.y);
  let v_49 = -(r7.wwww);
  r14.z = fma(r11.x, r13.w, v_49.z);
  let v_50 = (r6.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_50.xy);
  let v_51 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_51.xy);
  let v_52 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_52.xy);
  r3.w = fma((-(r5.wwww)).w, r8.z, r3.w);
  r3.w = fma((-(r5.wwww)).w, r8.w, r3.w);
  let v_53 = bitcast<u32>(r4.w);
  let v_54 = r3.w;
  r12.z = select(r9.z, v_54, (v_53 != 0u));
  r10.z = 0.0f;
  let v_55 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_55.xyz, r9.w);
  let v_56 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_56.xy, r12.zw);
  let v_57 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_57.xyz, r11.w);
  let v_58 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_58.xy, r12.zw);
  let v_59 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_59.xyz, r13.w);
  let v_60 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_60.xy, r12.zw);
  let v_61 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_61.xyz, r14.w);
  let v_62 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_62.xy, r12.zw);
  let v_63 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_63.xyz, r15.w);
  let v_64 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_64.xy, r12.zw);
  let v_65 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_65.xyz, r16.w);
  let v_66 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_66.xy, r12.zw);
  let v_67 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_67.xyz, r17.w);
  let v_68 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_68.xy, r12.zw);
  let v_69 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_69.xyz, r18.w);
  let v_70 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_70.xy, r12.zw);
  let v_71 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_71.xyz, r19.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_72.xy, r12.zw);
  let v_73 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_73.xyz, r20.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_74.xy, r12.zw);
  let v_75 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_75.xyz, r21.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_76.xy, r12.zw);
  let v_77 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_77.xyz, r22.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_79.xyz, r23.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_81.xyz, r24.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_83.xyz, r25.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_85.xyz, r10.w);
  let v_86 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_86.xy, r9.z);
  let v_87 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_87.xy, r11.z);
  let v_88 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_88.xy, r13.z);
  let v_89 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_89.xy, r14.z);
  let v_90 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_90.xy, r15.z);
  let v_91 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_91.xy, r16.z);
  let v_92 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_92.xy, r17.z);
  let v_93 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_93.xy, r18.z);
  let v_94 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_94.xy, r19.z);
  let v_95 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_95.xy, r20.z);
  let v_96 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_96.xy, r21.z);
  let v_97 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_97.xy, r22.z);
  let v_98 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_98.xy, r23.z);
  let v_99 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_99.xy, r24.z);
  let v_100 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_100.xy, r25.z);
  let v_101 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_101.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r3.w = dot(r9, vec4<f32>(1.0f));
  r3.z = clamp(fma(r3.zzzz, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).z, 0.0f, 1.0f);
  let v_102 = abs(r8.yyyy);
  r4.w = max(v_102.w, abs(r8.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.z = ((-(r3.zzzz)).z + 1.0f);
  r3.z = (r4.w * r3.z);
  r3.z = fma(r3.w, 0.0625f, r3.z);
  let v_103 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_103.xyz, r3.w);
  r3.z = min(r3.z, 1.0f);
  r3.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_6[3u].z);
  let v_104 = -(r3.zzzz);
  r3.z = fma(r3.w, v_104.z, r3.z);
  let v_105 = dot(r2.xyz, v_14.xyz);
  r3.w = clamp(vec4<f32>(v_105, v_105, v_105, v_105).w, 0.0f, 1.0f);
  let v_106 = dot(r5.xyz, r2.xyz);
  r8.x = clamp(vec4<f32>(v_106, v_106, v_106, v_106).x, 0.0f, 1.0f);
  let v_107 = dot(r6.xyz, v_14.xyz);
  r8.y = clamp(vec4<f32>(v_107, v_107, v_107, v_107).y, 0.0f, 1.0f);
  let v_108 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_108.xy, r8.zw);
  let v_109 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_109.xy);
  let v_110 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_110.xy);
  let v_111 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_111.xy, r8.zw);
  r4.w = ((-(cb10_10.tint_symbol_5[0u].yyyy)).w + 1.0f);
  let v_112 = fma(cb10_10.tint_symbol_5[0u].yy, r8.xy, r4.ww);
  r8 = vec4<f32>(v_112.xy, r8.zw);
  let v_113 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_113.xy);
  r1.y = (r8.z * 0.125f);
  r5.w = fma((-(r1.xxxx)).w, r8.x, 1.0f);
  r6.x = dot(r2.xyz, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r8.w);
  r6.x = exp2(r6.x);
  r6.x = (r8.y * r6.x);
  r6.x = (r1.y * r6.x);
  r6.x = (r1.x * r6.x);
  r6.x = (r3.w * r6.x);
  r3.w = (r3.w * r5.w);
  let v_114 = fma(r0.xyz, r3.www, r6.xxx);
  r6 = vec4<f32>(v_114.xyz, r6.w);
  let v_115 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_115.xyz, r6.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_116 = (v_11.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_116.xyz, r8.w);
    let v_117 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_117.xyz, r9.w);
    r7.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_118 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_118.xyz, r9.w);
    let v_119 = (r9.xyz + v_11.xyz);
    r9 = vec4<f32>(v_119.xyz, r9.w);
    let v_120 = bitcast<vec3<u32>>(r6.www);
    let v_121 = r8.xyz;
    let v_122 = select(r9.xyz, v_121, (v_120 != vec3<u32>()));
    r8 = vec4<f32>(v_122.xyz, r8.w);
    r6.w = dot(r8.xyz, r8.xyz);
    let v_123 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_123.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_124 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_124.xyz, r8.w);
    r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[11u].w);
    r6.w = (r6.w / r7.w);
    let v_125 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r8.xyz, v_125.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_126 = dot(r8.xyz, r2.xyz);
    r9.x = clamp(vec4<f32>(v_126, v_126, v_126, v_126).x, 0.0f, 1.0f);
    r7.w = (r7.w * r9.x);
    r9.x = (r6.w * r7.w);
    let v_127 = (r9.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_127.xyz, r9.w);
    let v_128 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_128.xyz, r9.w);
    let v_129 = fma(r4.xyz, r2.www, r8.xyz);
    r8 = vec4<f32>(v_129.xyz, r8.w);
    r9.w = dot(r8.xyz, r8.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_130 = (r8.xyz * r9.www);
    r8 = vec4<f32>(v_130.xyz, r8.w);
    let v_131 = dot(r8.xyz, r5.xyz);
    r9.w = clamp(vec4<f32>(v_131, v_131, v_131, v_131).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.x = (r9.w * r9.w);
    r10.x = (r10.x * r10.x);
    r9.w = (r9.w * r10.x);
    r9.w = fma(cb10_10.tint_symbol_5[0u].y, r9.w, r4.w);
    let v_132 = dot(r8.xyz, r2.xyz);
    r8.x = clamp(vec4<f32>(v_132, v_132, v_132, v_132).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.w);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.w);
    r7.w = (r7.w * r8.x);
    r6.w = (r6.w * r7.w);
    r6.w = (r1.y * r6.w);
    let v_133 = (r6.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_133.xyz, r8.w);
  }
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    let v_134 = bitcast<u32>(r7.w);
    let v_135 = r6.w;
    r3.w = select(r3.w, v_135, (v_134 != 0u));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_136 = (v_11.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_136.xyz, r10.w);
      let v_137 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_137.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_138 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_138.xyz, r11.w);
      let v_139 = (r11.xyz + v_11.xyz);
      r11 = vec4<f32>(v_139.xyz, r11.w);
      let v_140 = bitcast<vec3<u32>>(r6.www);
      let v_141 = r10.xyz;
      let v_142 = select(r11.xyz, v_141, (v_140 != vec3<u32>()));
      r10 = vec4<f32>(v_142.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_143 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_143.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_144 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_144.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[12u].w);
      r6.w = (r6.w / r7.w);
      let v_145 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r10.xyz, v_145.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_146 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_146, v_146, v_146, v_146).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_147 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_147.xyz, r11.w);
      let v_148 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_148.xyz, r9.w);
      let v_149 = fma(r4.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_149.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_150 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_150.xyz, r10.w);
      let v_151 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_151, v_151, v_151, v_151).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb10_10.tint_symbol_5[0u].y, r9.w, r4.w);
      let v_152 = dot(r10.xyz, r2.xyz);
      r10.x = clamp(vec4<f32>(v_152, v_152, v_152, v_152).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r1.y * r6.w);
      let v_153 = fma(r6.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_153.xyz, r8.w);
    }
  } else {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_154 = (v_11.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_154.xyz, r10.w);
      let v_155 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_155.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_156 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      let v_157 = (r11.xyz + v_11.xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      let v_158 = bitcast<vec3<u32>>(r6.www);
      let v_159 = r10.xyz;
      let v_160 = select(r11.xyz, v_159, (v_158 != vec3<u32>()));
      r10 = vec4<f32>(v_160.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_161 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_161.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_162 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_162.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[13u].w);
      r6.w = (r6.w / r7.w);
      let v_163 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r10.xyz, v_163.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_164 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_164, v_164, v_164, v_164).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_165 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      let v_166 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_166.xyz, r9.w);
      let v_167 = fma(r4.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_167.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_168 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      let v_169 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_169, v_169, v_169, v_169).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb10_10.tint_symbol_5[0u].y, r9.w, r4.w);
      let v_170 = dot(r10.xyz, r2.xyz);
      r10.x = clamp(vec4<f32>(v_170, v_170, v_170, v_170).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r1.y * r6.w);
      let v_171 = fma(r6.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_171.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_172 = (v_11.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[22u].w);
      let v_174 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = (r11.xyz + v_11.xyz);
      r11 = vec4<f32>(v_175.xyz, r11.w);
      let v_176 = bitcast<vec3<u32>>(r6.www);
      let v_177 = r10.xyz;
      let v_178 = select(r11.xyz, v_177, (v_176 != vec3<u32>()));
      r10 = vec4<f32>(v_178.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_179 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_179.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_180 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_180.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[14u].w);
      r6.w = (r6.w / r7.w);
      let v_181 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.w = dot(r10.xyz, v_181.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_182 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_182, v_182, v_182, v_182).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_183 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_183.xyz, r11.w);
      let v_184 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_184.xyz, r9.w);
      let v_185 = fma(r4.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_185.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_186 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_186.xyz, r10.w);
      let v_187 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_187, v_187, v_187, v_187).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb10_10.tint_symbol_5[0u].y, r9.w, r4.w);
      let v_188 = dot(r10.xyz, r2.xyz);
      r10.x = clamp(vec4<f32>(v_188, v_188, v_188, v_188).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r1.y * r6.w);
      let v_189 = fma(r6.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_189.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_190 = (v_11.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_190.xyz, r10.w);
      let v_191 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_191.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[23u].w);
      let v_192 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_192.xyz, r11.w);
      let v_193 = (r11.xyz + v_11.xyz);
      r11 = vec4<f32>(v_193.xyz, r11.w);
      let v_194 = bitcast<vec3<u32>>(r6.www);
      let v_195 = r10.xyz;
      let v_196 = select(r11.xyz, v_195, (v_194 != vec3<u32>()));
      r10 = vec4<f32>(v_196.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_197 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_197.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_198 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_198.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[15u].w);
      r6.w = (r6.w / r7.w);
      let v_199 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.w = dot(r10.xyz, v_199.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_200 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_200, v_200, v_200, v_200).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_201 = (r9.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_201.xyz, r11.w);
      let v_202 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_202.xyz, r9.w);
      let v_203 = fma(r4.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_203.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_204 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_204.xyz, r10.w);
      let v_205 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_205, v_205, v_205, v_205).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb10_10.tint_symbol_5[0u].y, r9.w, r4.w);
      let v_206 = dot(r10.xyz, r2.xyz);
      r10.x = clamp(vec4<f32>(v_206, v_206, v_206, v_206).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r1.y * r6.w);
      let v_207 = fma(r6.www, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_207.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_208 = (v_11.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_208.xyz, r10.w);
      let v_209 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_209.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[24u].w);
      let v_210 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_210.xyz, r11.w);
      let v_211 = (r11.xyz + v_11.xyz);
      r11 = vec4<f32>(v_211.xyz, r11.w);
      let v_212 = bitcast<vec3<u32>>(r6.www);
      let v_213 = r10.xyz;
      let v_214 = select(r11.xyz, v_213, (v_212 != vec3<u32>()));
      r10 = vec4<f32>(v_214.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_215 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_215.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_216 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_216.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[16u].w);
      r6.w = (r6.w / r7.w);
      let v_217 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.w = dot(r10.xyz, v_217.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_218 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_218, v_218, v_218, v_218).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_219 = (r9.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_219.xyz, r11.w);
      let v_220 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_220.xyz, r9.w);
      let v_221 = fma(r4.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_221.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_222 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_222.xyz, r10.w);
      let v_223 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_223, v_223, v_223, v_223).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb10_10.tint_symbol_5[0u].y, r9.w, r4.w);
      let v_224 = dot(r10.xyz, r2.xyz);
      r10.x = clamp(vec4<f32>(v_224, v_224, v_224, v_224).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r1.y * r6.w);
      let v_225 = fma(r6.www, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_225.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_226 = (v_11.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_226.xyz, r10.w);
      let v_227 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_227.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[25u].w);
      let v_228 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_228.xyz, r11.w);
      let v_229 = (r11.xyz + v_11.xyz);
      r11 = vec4<f32>(v_229.xyz, r11.w);
      let v_230 = bitcast<vec3<u32>>(r6.www);
      let v_231 = r10.xyz;
      let v_232 = select(r11.xyz, v_231, (v_230 != vec3<u32>()));
      r10 = vec4<f32>(v_232.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_233 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_233.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_234 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_234.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[17u].w);
      r6.w = (r6.w / r7.w);
      let v_235 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.w = dot(r10.xyz, v_235.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_236 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_236, v_236, v_236, v_236).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_237 = (r9.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_237.xyz, r11.w);
      let v_238 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_238.xyz, r9.w);
      let v_239 = fma(r4.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_239.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_240 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_240.xyz, r10.w);
      let v_241 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_241, v_241, v_241, v_241).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb10_10.tint_symbol_5[0u].y, r9.w, r4.w);
      let v_242 = dot(r10.xyz, r2.xyz);
      r10.x = clamp(vec4<f32>(v_242, v_242, v_242, v_242).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r1.y * r6.w);
      let v_243 = fma(r6.www, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_243.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_244 = (v_11.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_244.xyz, r10.w);
      let v_245 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_245.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[26u].w);
      let v_246 = fma(cb3_3.tint_symbol_2[18u].xyz, r6.www, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_246.xyz, r11.w);
      let v_247 = (r11.xyz + v_11.xyz);
      r11 = vec4<f32>(v_247.xyz, r11.w);
      let v_248 = bitcast<vec3<u32>>(r3.www);
      let v_249 = r10.xyz;
      let v_250 = select(r11.xyz, v_249, (v_248 != vec3<u32>()));
      r10 = vec4<f32>(v_250.xyz, r10.w);
      r3.w = dot(r10.xyz, r10.xyz);
      let v_251 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_251.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_252 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_252.xyz, r10.w);
      r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r3.w, cb3_3.tint_symbol_2[18u].w);
      r3.w = (r3.w / r6.w);
      let v_253 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r6.w = dot(r10.xyz, v_253.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_254 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_254, v_254, v_254, v_254).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r3.w * r6.w);
      let v_255 = (r7.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_255.xyz, r11.w);
      let v_256 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_256.xyz, r9.w);
      let v_257 = fma(r4.xyz, r2.www, r10.xyz);
      r4 = vec4<f32>(v_257.xyz, r4.w);
      r2.w = dot(r4.xyz, r4.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_258 = (r2.www * r4.xyz);
      r4 = vec4<f32>(v_258.xyz, r4.w);
      let v_259 = dot(r4.xyz, r5.xyz);
      r2.w = clamp(vec4<f32>(v_259, v_259, v_259, v_259).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r5.x = (r2.w * r2.w);
      r5.x = (r5.x * r5.x);
      r2.w = (r2.w * r5.x);
      r2.w = fma(cb10_10.tint_symbol_5[0u].y, r2.w, r4.w);
      let v_260 = dot(r4.xyz, r2.xyz);
      r4.x = clamp(vec4<f32>(v_260, v_260, v_260, v_260).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r8.w);
      r4.x = exp2(r4.x);
      r2.w = (r2.w * r4.x);
      r2.w = (r6.w * r2.w);
      r2.w = (r3.w * r2.w);
      r1.y = (r1.y * r2.w);
      let v_261 = fma(r1.yyy, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_261.xyz, r8.w);
    }
  }
  r1.y = (r5.w * r5.w);
  r1.x = (r1.x * r1.x);
  let v_262 = (r8.xyz * r1.xxx);
  r4 = vec4<f32>(v_262.xyz, r4.w);
  let v_263 = fma(r1.yyy, r9.xyz, r4.xyz);
  r4 = vec4<f32>(v_263.xyz, r4.w);
  let v_264 = fma(r6.xyz, r3.zzz, r4.xyz);
  r4 = vec4<f32>(v_264.xyz, r4.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_265 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r1 = vec4<f32>(r1.x, v_265.xyz);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_266 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_266.xyz, r5.w);
  let v_267 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_267.xyz, r5.w);
  let v_268 = fma(r1.yzw, r2.www, r5.xyz);
  r1 = vec4<f32>(r1.x, v_268.xyz);
  let v_269 = (r3.yyy * r1.yzw);
  r1 = vec4<f32>(r1.x, v_269.xyz);
  let v_270 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r3 = vec4<f32>(r3.x, v_270.xyz);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_271 = dot(r5.xyz, r2.xyz);
  r1.x = clamp(vec4<f32>(v_271, v_271, v_271, v_271).x, 0.0f, 1.0f);
  let v_272 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r3.yzw);
  r2 = vec4<f32>(v_272.xyz, r2.w);
  let v_273 = fma(r2.xyz, r3.xxx, r1.yzw);
  r1 = vec4<f32>(v_273.xyz, r1.w);
  let v_274 = (r5.www * r1.xyz);
  r1 = vec4<f32>(v_274.xyz, r1.w);
  let v_275 = fma(r1.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_275.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.w = dot(r7.xyz, r7.xyz);
  r1.x = sqrt(r0.w);
  let v_276 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_276.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r7.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_277 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_277 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_278 = (r0.www * r7.xyz);
  r2 = vec4<f32>(v_278.xyz, r2.w);
  let v_279 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_279, v_279, v_279, v_279).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_280 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_280, v_280, v_280, v_280).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_281 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_281.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_282 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_282.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_283 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_283.xyz, r2.w);
  let v_284 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_284.xyz, r2.w);
  let v_285 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_285.xyz, r3.w);
  let v_286 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_286.xyz, r2.w);
  let v_287 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_288 = (r2.xyz + v_287.xyz);
  r2 = vec4<f32>(v_288.xyz, r2.w);
  let v_289 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_289.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_290 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_290.xy, r1.z, v_290.z);
  let v_291 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_291.xy, r1.z, v_291.z);
  let v_292 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_292.xyz, r0.w);
  let v_293 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_293.xyz, r0.w);
  let v_294 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_294.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5);
  return o0;
}
