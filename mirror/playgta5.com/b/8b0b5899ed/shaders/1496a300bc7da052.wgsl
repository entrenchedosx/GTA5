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

struct cb6_struct {
  tint_symbol_4 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

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

var<private> v6 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>) {
  x1[0u].x = v6[0u];
  x1[0u].y = v6[1u];
  x1[0u].z = v6[2u];
  x1[0u].w = v6[3u];
  r0 = textureSample(t0, s0, v0.xy.xyxx.xy);
  r1 = textureSample(t4, s4, v0.xy.xyxx.xy);
  let v_1 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r1.x = dot(r1.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r1.x = (r1.x * cb11_11.tint_symbol_4[4u].y);
  let v_2 = (r0.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0 = (r0 * v4.xxxw);
  let v_3 = (v4.xx * cb2_2.tint_symbol_1[15u].zy);
  let v_4 = r1;
  r1 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r2.x = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).x, 0.0f, 1.0f);
  r1.z = (r1.z * r2.x);
  r1.x = clamp(((r1.xxxx * v4.xxxx)).x, 0.0f, 1.0f);
  let v_5 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = -(v2.xyzx);
  let v_7 = (v_6.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_8 = (r2.www * r2.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_10 = fma(r2.xyz, r2.www, v_9.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_11 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = (r1.yz * r1.yz);
  let v_13 = r1;
  r1 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  r3.w = fma(r1.w, cb11_11.tint_symbol_4[4u].x, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_14 = -(r3.wwww);
  r1.w = fma(r1.w, cb11_11.tint_symbol_4[4u].x, v_14.w);
  r3.w = (r3.w * 558.0f);
  r1.w = fma(r1.w, 3.0f, r3.w);
  r3.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_15 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = (r5.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r6 = vec4<f32>(v_16.xyz, r6.w);
  let v_17 = fma(r5.xxx, cb6_6.tint_symbol_5[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  let v_18 = fma(r5.zzz, cb6_6.tint_symbol_5[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  let v_19 = fma(r6.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r7 = vec4<f32>(v_19.xyz, r7.w);
  let v_20 = &(x0[0u]);
  let v_21 = r7;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r6.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r8 = vec4<f32>(v_22.xyz, r8.w);
  let v_23 = &(x0[1u]);
  let v_24 = r8;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = fma(r6.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r9 = vec4<f32>(v_25.xyz, r9.w);
  let v_26 = &(x0[2u]);
  let v_27 = r9;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  let v_28 = fma(r6.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r6 = vec4<f32>(v_28.xyz, r6.w);
  let v_29 = &(x0[3u]);
  let v_30 = r6;
  *(v_29) = vec4<f32>(v_30.xyz, (*(v_29)).w);
  let v_31 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_32 = r10;
  r10 = vec4<f32>(v_32.x, v_31.x, v_32.z, v_31.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_33 = abs(r9.yyyy);
  r5.w = max(v_33.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_34 = (bitcast<u32>(r5.w) != 0u);
  let v_35 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_35, v_34);
  let v_36 = abs(r8.yyyy);
  r6.z = max(v_36.z, abs(r8.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_37 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_37 != 0u));
  let v_38 = abs(r7.yyyy);
  r6.z = max(v_38.z, abs(r7.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_39 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_39 != 0u));
  let v_40 = x0[bitcast<i32>(r4.w)];
  r7 = vec4<f32>(v_40.xyz, r7.w);
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
  let v_41 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_41.xy, r9.z, v_41.z);
  r9.z = dpdx(r4.w);
  let v_42 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_42.xyz, r11.w);
  r11.w = dpdy(r4.w);
  let v_43 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_43.xy, r7.zw);
  let v_44 = -(r7.xyxx);
  let v_45 = fma(r9.xz, r11.xz, v_44.xy);
  r12 = vec4<f32>(v_45.xy, r12.zw);
  r6.w = (1.0f / r12.x);
  r7.x = (r9.z * r11.y);
  let v_46 = -(r7.xxxx);
  r12.z = fma(r9.x, r11.w, v_46.z);
  let v_47 = (r6.ww * r12.yz);
  r7 = vec4<f32>(v_47.xy, r7.zw);
  let v_48 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_48.xy, r7.zw);
  let v_49 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_49.xy, r7.zw);
  r4.w = fma((-(r6.zzzz)).w, r7.x, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r7.y, r4.w);
  let v_50 = bitcast<u32>(r5.w);
  let v_51 = r4.w;
  r10.z = select(r7.z, v_51, (v_50 != 0u));
  r8.z = 0.0f;
  let v_52 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_52.xyz, r7.w);
  let v_53 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_53.xy, r10.zw);
  let v_54 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_54.xyz, r9.w);
  let v_55 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_55.xy, r10.zw);
  let v_56 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_56.xyz, r11.w);
  let v_57 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_57.xy, r10.zw);
  let v_58 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_58.xyz, r12.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_59.xy, r10.zw);
  let v_60 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_60.xyz, r13.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_61.xy, r10.zw);
  let v_62 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_62.xyz, r14.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_63.xy, r10.zw);
  let v_64 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_64.xyz, r15.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_65.xy, r10.zw);
  let v_66 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_66.xyz, r16.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_67.xy, r10.zw);
  let v_68 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_68.xyz, r17.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_69.xy, r10.zw);
  let v_70 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_70.xyz, r18.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_71.xy, r10.zw);
  let v_72 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_72.xyz, r19.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_73.xy, r10.zw);
  let v_74 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_74.xyz, r20.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_75.xy, r10.zw);
  let v_76 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_76.xyz, r21.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_77.xy, r10.zw);
  let v_78 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_78.xyz, r22.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_79.xy, r10.zw);
  let v_80 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_80.xyz, r23.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_81.xy, r10.zw);
  let v_82 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_82.xyz, r8.w);
  let v_83 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_83.xy, r7.z);
  let v_84 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_84.xy, r9.z);
  let v_85 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_85.xy, r11.z);
  let v_86 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_86.xy, r12.z);
  let v_87 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_87.xy, r13.z);
  let v_88 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_88.xy, r14.z);
  let v_89 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_89.xy, r15.z);
  let v_90 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_90.xy, r16.z);
  let v_91 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_91.xy, r17.z);
  let v_92 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_92.xy, r18.z);
  let v_93 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_93.xy, r19.z);
  let v_94 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_94.xy, r20.z);
  let v_95 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_95.xy, r21.z);
  let v_96 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_96.xy, r22.z);
  let v_97 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_97.xy, r23.z);
  let v_98 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_98.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r4.w = dot(r7, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_99 = abs(r6.yyyy);
  r5.w = max(v_99.w, abs(r6.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_100 = -(r3.wwww);
  r3.w = fma(r4.w, v_100.w, r3.w);
  let v_101 = dot(v1.xyz, v_9.xyz);
  r4.w = clamp(vec4<f32>(v_101, v_101, v_101, v_101).w, 0.0f, 1.0f);
  let v_102 = dot(r3.xyz, v1.xyz);
  r6.x = clamp(vec4<f32>(v_102, v_102, v_102, v_102).x, 0.0f, 1.0f);
  let v_103 = dot(r4.xyz, v_9.xyz);
  r6.y = clamp(vec4<f32>(v_103, v_103, v_103, v_103).y, 0.0f, 1.0f);
  let v_104 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_104.xy, r6.zw);
  let v_105 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_105.xy);
  let v_106 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_106.xy);
  let v_107 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_107.xy, r6.zw);
  r5.w = ((-(cb11_11.tint_symbol_4[3u].wwww)).w + 1.0f);
  let v_108 = fma(cb11_11.tint_symbol_4[3u].ww, r6.xy, r5.ww);
  r6 = vec4<f32>(v_108.xy, r6.zw);
  let v_109 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(r6.xy, v_109.xy);
  r6.z = (r6.z * 0.125f);
  r6.x = fma((-(r1.xxxx)).x, r6.x, 1.0f);
  r4.x = dot(v1.xyz, r4.xyz);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r6.w);
  r4.x = exp2(r4.x);
  r4.x = (r6.y * r4.x);
  r4.x = (r6.z * r4.x);
  r4.x = (r1.x * r4.x);
  r4.x = (r4.w * r4.x);
  r4.y = (r4.w * r6.x);
  let v_110 = fma(r0.xyz, r4.yyy, r4.xxx);
  r4 = vec4<f32>(v_110.xyz, r4.w);
  let v_111 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_111.xyz, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r8 = vec4<f32>(vec3<f32>(), r8.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_112 = (v_6.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_112.xyz, r7.w);
    let v_113 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_113.xyz, r8.w);
    r7.w = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_114 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_114.xyz, r8.w);
    let v_115 = (r8.xyz + v_6.xyz);
    r8 = vec4<f32>(v_115.xyz, r8.w);
    let v_116 = bitcast<vec3<u32>>(r6.yyy);
    let v_117 = r7.xyz;
    let v_118 = select(r8.xyz, v_117, (v_116 != vec3<u32>()));
    r7 = vec4<f32>(v_118.xyz, r7.w);
    r6.y = dot(r7.xyz, r7.xyz);
    let v_119 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_119.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_120 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_120.xyz, r7.w);
    r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[11u].w);
    r6.y = (r6.y / r7.w);
    let v_121 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r7.xyz, v_121.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_122 = dot(r7.xyz, v1.xyz);
    r8.x = clamp(vec4<f32>(v_122, v_122, v_122, v_122).x, 0.0f, 1.0f);
    r7.w = (r7.w * r8.x);
    r8.x = (r6.y * r7.w);
    let v_123 = (r8.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_123.xyz, r8.w);
    let v_124 = (r0.xyz * r8.xyz);
    r8 = vec4<f32>(v_124.xyz, r8.w);
    let v_125 = fma(r2.xyz, r2.www, r7.xyz);
    r7 = vec4<f32>(v_125.xyz, r7.w);
    r8.w = dot(r7.xyz, r7.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_126 = (r7.xyz * r8.www);
    r7 = vec4<f32>(v_126.xyz, r7.w);
    let v_127 = dot(r7.xyz, r3.xyz);
    r8.w = clamp(vec4<f32>(v_127, v_127, v_127, v_127).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.x = (r8.w * r8.w);
    r9.x = (r9.x * r9.x);
    r8.w = (r8.w * r9.x);
    r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
    let v_128 = dot(r7.xyz, v1.xyz);
    r7.x = clamp(vec4<f32>(v_128, v_128, v_128, v_128).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r6.w * r7.x);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r8.w);
    r7.x = (r7.w * r7.x);
    r6.y = (r6.y * r7.x);
    r6.y = (r6.z * r6.y);
    let v_129 = (r6.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_129.xyz, r7.w);
  }
  r6.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.y) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    let v_130 = bitcast<u32>(r7.w);
    let v_131 = r6.y;
    r4.w = select(r4.w, v_131, (v_130 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_132 = (v_6.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_132.xyz, r9.w);
      let v_133 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_133.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_134 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_134.xyz, r10.w);
      let v_135 = (r10.xyz + v_6.xyz);
      r10 = vec4<f32>(v_135.xyz, r10.w);
      let v_136 = bitcast<vec3<u32>>(r6.yyy);
      let v_137 = r9.xyz;
      let v_138 = select(r10.xyz, v_137, (v_136 != vec3<u32>()));
      r9 = vec4<f32>(v_138.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_139 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_139.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_140 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_140.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[12u].w);
      r6.y = (r6.y / r7.w);
      let v_141 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r9.xyz, v_141.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_142 = dot(r9.xyz, v1.xyz);
      r8.w = clamp(vec4<f32>(v_142, v_142, v_142, v_142).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_143 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_143.xyz, r10.w);
      let v_144 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_144.xyz, r8.w);
      let v_145 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_145.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_146 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_146.xyz, r9.w);
      let v_147 = dot(r9.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_147, v_147, v_147, v_147).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_148 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_148, v_148, v_148, v_148).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_149 = fma(r6.yyy, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_149.xyz, r7.w);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_150 = (v_6.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_150.xyz, r9.w);
      let v_151 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_151.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_152 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_152.xyz, r10.w);
      let v_153 = (r10.xyz + v_6.xyz);
      r10 = vec4<f32>(v_153.xyz, r10.w);
      let v_154 = bitcast<vec3<u32>>(r6.yyy);
      let v_155 = r9.xyz;
      let v_156 = select(r10.xyz, v_155, (v_154 != vec3<u32>()));
      r9 = vec4<f32>(v_156.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_157 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_157.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_158 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_158.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[13u].w);
      r6.y = (r6.y / r7.w);
      let v_159 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r9.xyz, v_159.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_160 = dot(r9.xyz, v1.xyz);
      r8.w = clamp(vec4<f32>(v_160, v_160, v_160, v_160).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_161 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_161.xyz, r10.w);
      let v_162 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_162.xyz, r8.w);
      let v_163 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_163.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_164 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_164.xyz, r9.w);
      let v_165 = dot(r9.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_165, v_165, v_165, v_165).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_166 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_166, v_166, v_166, v_166).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_167 = fma(r6.yyy, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_167.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_168 = (v_6.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_168.xyz, r9.w);
      let v_169 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_169.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[22u].w);
      let v_170 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.www, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_170.xyz, r10.w);
      let v_171 = (r10.xyz + v_6.xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      let v_172 = bitcast<vec3<u32>>(r6.yyy);
      let v_173 = r9.xyz;
      let v_174 = select(r10.xyz, v_173, (v_172 != vec3<u32>()));
      r9 = vec4<f32>(v_174.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_175 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_175.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_176 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_176.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[14u].w);
      r6.y = (r6.y / r7.w);
      let v_177 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.w = dot(r9.xyz, v_177.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_178 = dot(r9.xyz, v1.xyz);
      r8.w = clamp(vec4<f32>(v_178, v_178, v_178, v_178).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_179 = (r8.www * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      let v_180 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_180.xyz, r8.w);
      let v_181 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_181.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_182 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_182.xyz, r9.w);
      let v_183 = dot(r9.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_183, v_183, v_183, v_183).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_184 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_184, v_184, v_184, v_184).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_185 = fma(r6.yyy, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_185.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_186 = (v_6.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r9 = vec4<f32>(v_186.xyz, r9.w);
      let v_187 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r10 = vec4<f32>(v_187.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[23u].w);
      let v_188 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.www, cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_188.xyz, r10.w);
      let v_189 = (r10.xyz + v_6.xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      let v_190 = bitcast<vec3<u32>>(r6.yyy);
      let v_191 = r9.xyz;
      let v_192 = select(r10.xyz, v_191, (v_190 != vec3<u32>()));
      r9 = vec4<f32>(v_192.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_193 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_193.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_194 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_194.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[15u].w);
      r6.y = (r6.y / r7.w);
      let v_195 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.w = dot(r9.xyz, v_195.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_196 = dot(r9.xyz, v1.xyz);
      r8.w = clamp(vec4<f32>(v_196, v_196, v_196, v_196).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_197 = (r8.www * cb3_3.tint_symbol_2[23u].xyz);
      r10 = vec4<f32>(v_197.xyz, r10.w);
      let v_198 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_198.xyz, r8.w);
      let v_199 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_199.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_200 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_200.xyz, r9.w);
      let v_201 = dot(r9.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_201, v_201, v_201, v_201).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_202 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_202, v_202, v_202, v_202).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_203 = fma(r6.yyy, cb3_3.tint_symbol_2[23u].xyz, r7.xyz);
      r7 = vec4<f32>(v_203.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_204 = (v_6.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r9 = vec4<f32>(v_204.xyz, r9.w);
      let v_205 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r10 = vec4<f32>(v_205.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[24u].w);
      let v_206 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.www, cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_206.xyz, r10.w);
      let v_207 = (r10.xyz + v_6.xyz);
      r10 = vec4<f32>(v_207.xyz, r10.w);
      let v_208 = bitcast<vec3<u32>>(r6.yyy);
      let v_209 = r9.xyz;
      let v_210 = select(r10.xyz, v_209, (v_208 != vec3<u32>()));
      r9 = vec4<f32>(v_210.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_211 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_211.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_212 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_212.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[16u].w);
      r6.y = (r6.y / r7.w);
      let v_213 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.w = dot(r9.xyz, v_213.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_214 = dot(r9.xyz, v1.xyz);
      r8.w = clamp(vec4<f32>(v_214, v_214, v_214, v_214).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_215 = (r8.www * cb3_3.tint_symbol_2[24u].xyz);
      r10 = vec4<f32>(v_215.xyz, r10.w);
      let v_216 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_216.xyz, r8.w);
      let v_217 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_217.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_218 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_218.xyz, r9.w);
      let v_219 = dot(r9.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_219, v_219, v_219, v_219).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_220 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_220, v_220, v_220, v_220).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_221 = fma(r6.yyy, cb3_3.tint_symbol_2[24u].xyz, r7.xyz);
      r7 = vec4<f32>(v_221.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_222 = (v_6.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r9 = vec4<f32>(v_222.xyz, r9.w);
      let v_223 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r10 = vec4<f32>(v_223.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[25u].w);
      let v_224 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.www, cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_224.xyz, r10.w);
      let v_225 = (r10.xyz + v_6.xyz);
      r10 = vec4<f32>(v_225.xyz, r10.w);
      let v_226 = bitcast<vec3<u32>>(r6.yyy);
      let v_227 = r9.xyz;
      let v_228 = select(r10.xyz, v_227, (v_226 != vec3<u32>()));
      r9 = vec4<f32>(v_228.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_229 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_229.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_230 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_230.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[17u].w);
      r6.y = (r6.y / r7.w);
      let v_231 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.w = dot(r9.xyz, v_231.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_232 = dot(r9.xyz, v1.xyz);
      r8.w = clamp(vec4<f32>(v_232, v_232, v_232, v_232).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_233 = (r8.www * cb3_3.tint_symbol_2[25u].xyz);
      r10 = vec4<f32>(v_233.xyz, r10.w);
      let v_234 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_234.xyz, r8.w);
      let v_235 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_235.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_236 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_236.xyz, r9.w);
      let v_237 = dot(r9.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_237, v_237, v_237, v_237).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_238 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_238, v_238, v_238, v_238).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_239 = fma(r6.yyy, cb3_3.tint_symbol_2[25u].xyz, r7.xyz);
      r7 = vec4<f32>(v_239.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_240 = (v_6.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r9 = vec4<f32>(v_240.xyz, r9.w);
      let v_241 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r10 = vec4<f32>(v_241.xyz, r10.w);
      r6.y = dot(r10.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r6.y = clamp(((r6.yyyy / cb3_3.tint_symbol_2[26u].wwww)).y, 0.0f, 1.0f);
      r6.y = (r6.y * cb3_3.tint_symbol_2[26u].w);
      let v_242 = fma(cb3_3.tint_symbol_2[18u].xyz, r6.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_242.xyz, r10.w);
      let v_243 = (r10.xyz + v_6.xyz);
      r10 = vec4<f32>(v_243.xyz, r10.w);
      let v_244 = bitcast<vec3<u32>>(r4.www);
      let v_245 = r9.xyz;
      let v_246 = select(r10.xyz, v_245, (v_244 != vec3<u32>()));
      r9 = vec4<f32>(v_246.xyz, r9.w);
      r4.w = dot(r9.xyz, r9.xyz);
      let v_247 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_247.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      r6.y = inverseSqrt(r6.y);
      let v_248 = (r6.yyy * r9.xyz);
      r9 = vec4<f32>(v_248.xyz, r9.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r6.y = fma(r6.y, r4.w, cb3_3.tint_symbol_2[18u].w);
      r4.w = (r4.w / r6.y);
      let v_249 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r6.y = dot(r9.xyz, v_249.xyz);
      r6.y = clamp(fma(r6.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_250 = dot(r9.xyz, v1.xyz);
      r7.w = clamp(vec4<f32>(v_250, v_250, v_250, v_250).w, 0.0f, 1.0f);
      r6.y = (r6.y * r7.w);
      r7.w = (r4.w * r6.y);
      let v_251 = (r7.www * cb3_3.tint_symbol_2[26u].xyz);
      r10 = vec4<f32>(v_251.xyz, r10.w);
      let v_252 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_252.xyz, r8.w);
      let v_253 = fma(r2.xyz, r2.www, r9.xyz);
      r2 = vec4<f32>(v_253.xyz, r2.w);
      r2.w = dot(r2.xyz, r2.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_254 = (r2.www * r2.xyz);
      r2 = vec4<f32>(v_254.xyz, r2.w);
      let v_255 = dot(r2.xyz, r3.xyz);
      r2.w = clamp(vec4<f32>(v_255, v_255, v_255, v_255).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r7.w = (r2.w * r2.w);
      r7.w = (r7.w * r7.w);
      r2.w = (r2.w * r7.w);
      r2.w = fma(cb11_11.tint_symbol_4[3u].w, r2.w, r5.w);
      let v_256 = dot(r2.xyz, v1.xyz);
      r2.x = clamp(vec4<f32>(v_256, v_256, v_256, v_256).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r6.w);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r2.w);
      r2.x = (r6.y * r2.x);
      r2.x = (r4.w * r2.x);
      r2.x = (r6.z * r2.x);
      let v_257 = fma(r2.xxx, cb3_3.tint_symbol_2[26u].xyz, r7.xyz);
      r7 = vec4<f32>(v_257.xyz, r7.w);
    }
  }
  r2.x = (r6.x * r6.x);
  r1.x = (r1.x * r1.x);
  let v_258 = (r7.xyz * r1.xxx);
  r2 = vec4<f32>(r2.x, v_258.xyz);
  let v_259 = fma(r2.xxx, r8.xyz, r2.yzw);
  r2 = vec4<f32>(v_259.xyz, r2.w);
  let v_260 = fma(r4.xyz, r3.www, r2.xyz);
  r2 = vec4<f32>(v_260.xyz, r2.w);
  r1.x = (v1.z + cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_261 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_261.xyz, r4.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_262 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(r6.x, v_262.xyz);
  let v_263 = (r6.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(r6.x, v_263.xyz);
  let v_264 = fma(r4.xyz, r2.www, r6.yzw);
  r4 = vec4<f32>(v_264.xyz, r4.w);
  let v_265 = (r1.zzz * r4.xyz);
  r4 = vec4<f32>(v_265.xyz, r4.w);
  let v_266 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(r6.x, v_266.xyz);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_267 = dot(r7.xyz, v1.xyz);
  r1.x = clamp(vec4<f32>(v_267, v_267, v_267, v_267).x, 0.0f, 1.0f);
  let v_268 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.yzw);
  r6 = vec4<f32>(r6.x, v_268.xyz);
  let v_269 = fma(r6.yzw, r1.yyy, r4.xyz);
  r4 = vec4<f32>(v_269.xyz, r4.w);
  let v_270 = (r6.xxx * r4.xyz);
  r4 = vec4<f32>(v_270.xyz, r4.w);
  let v_271 = fma(r4.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_271.xyz, r0.w);
  r1.x = ((-(r6.xxxx)).x + 1.0f);
  r2.x = dot((-(r3.xyzx)).xyz, v1.xyz);
  r2.x = (r2.x + r2.x);
  let v_272 = -(r2.xxxx);
  let v_273 = fma(v1.xyz, v_272.xyz, (-(r3.xyzx)).xyz);
  r2 = vec4<f32>(v_273.xyz, r2.w);
  let v_274 = clamp(((r1.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_274.xy, r3.zw);
  r1.w = ((-(r3.xxxx)).w + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.w * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.w)));
  r3.z = fma(r1.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.w = (r1.w * r1.w);
  r1.w = fma(r1.w, 5.0f, r2.w);
  let v_275 = bitcast<u32>(r3.x);
  let v_276 = r3.z;
  r1.w = select(r1.w, v_276, (v_275 != 0u));
  let v_277 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_277.xy, r2.z, v_277.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_278 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_278.xy, r2.z, v_278.z);
  let v_279 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_279.xy, r2.z, v_279.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_280 = bitcast<vec2<u32>>(r2.zz);
  let v_281 = r2.xy;
  let v_282 = select(r2.wy, v_281, (v_280 != vec2<u32>()));
  r2 = vec4<f32>(v_282.xy, r2.zw);
  let v_283 = r1.w;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_283);
  r1.y = max(r1.z, r1.y);
  let v_284 = (r1.yyy * r2.xyz);
  r1 = vec4<f32>(r1.x, v_284.xyz);
  let v_285 = (r3.yyy * r1.yzw);
  r2 = vec4<f32>(v_285.xyz, r2.w);
  let v_286 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_286.xyz, r2.w);
  let v_287 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_287.xyz);
  let v_288 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_288.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.w = dot(r5.xyz, r5.xyz);
  r1.x = sqrt(r0.w);
  let v_289 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_289.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r5.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_290 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_290 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_291 = (r0.www * r5.xyz);
  r2 = vec4<f32>(v_291.xyz, r2.w);
  let v_292 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_292, v_292, v_292, v_292).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_293 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_293, v_293, v_293, v_293).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_294 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_294.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_295 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_295.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_296 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_296.xyz, r2.w);
  let v_297 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_297.xyz, r2.w);
  let v_298 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_298.xyz, r3.w);
  let v_299 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_299.xyz, r2.w);
  let v_300 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_301 = (r2.xyz + v_300.xyz);
  r2 = vec4<f32>(v_301.xyz, r2.w);
  let v_302 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_302.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_303 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_303.xy, r1.z, v_303.z);
  let v_304 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_304.xy, r1.z, v_304.z);
  let v_305 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_305.xyz, r0.w);
  let v_306 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_306.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4);
  return o0;
}
