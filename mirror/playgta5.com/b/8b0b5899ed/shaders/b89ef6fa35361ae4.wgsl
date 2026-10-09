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

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

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
  let v_1 = (v0.zw * cb11_11.tint_symbol_4[5u].ww);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r1 = textureSample(t5, s5, v0.zwzz.xy);
  r2 = textureSample(t0, s0, v0.xyxx.xy);
  r0 = textureSample(t7, s7, r0.xyxx.xy);
  let v_2 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.x = dot(r0.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r0.x = (r0.x * cb11_11.tint_symbol_4[4u].y);
  let v_3 = (r2.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  r0.y = (r1.w * cb11_11.tint_symbol_4[1u].w);
  let v_4 = -(r3.xyzx);
  let v_5 = fma(r1.xyz, cb11_11.tint_symbol_4[1u].xyz, v_4.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(r0.yyy, r1.xyz, r3.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r1 = (r2 * v4.xxxw);
  let v_7 = (v4.xx * cb2_2.tint_symbol_1[15u].zy);
  let v_8 = r0;
  r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  r2.x = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).x, 0.0f, 1.0f);
  r0.z = (r0.z * r2.x);
  r0.x = clamp(((r0.xxxx * v4.xxxx)).x, 0.0f, 1.0f);
  let v_9 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = -(v2.xyzx);
  let v_11 = (v_10.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_12 = (r2.www * r2.xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_14 = fma(r2.xyz, r2.www, v_13.xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_15 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  let v_16 = (r0.yz * r0.yz);
  let v_17 = r0;
  r0 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  r3.w = fma(r0.w, cb11_11.tint_symbol_4[4u].x, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_18 = -(r3.wwww);
  r0.w = fma(r0.w, cb11_11.tint_symbol_4[4u].x, v_18.w);
  r3.w = (r3.w * 558.0f);
  r0.w = fma(r0.w, 3.0f, r3.w);
  r3.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_19 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = (r5.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r6 = vec4<f32>(v_20.xyz, r6.w);
  let v_21 = fma(r5.xxx, cb6_6.tint_symbol_5[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_21.xyz, r6.w);
  let v_22 = fma(r5.zzz, cb6_6.tint_symbol_5[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_22.xyz, r6.w);
  let v_23 = fma(r6.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r7 = vec4<f32>(v_23.xyz, r7.w);
  let v_24 = &(x0[0u]);
  let v_25 = r7;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  let v_26 = fma(r6.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r8 = vec4<f32>(v_26.xyz, r8.w);
  let v_27 = &(x0[1u]);
  let v_28 = r8;
  *(v_27) = vec4<f32>(v_28.xyz, (*(v_27)).w);
  let v_29 = fma(r6.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r9 = vec4<f32>(v_29.xyz, r9.w);
  let v_30 = &(x0[2u]);
  let v_31 = r9;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = fma(r6.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r6 = vec4<f32>(v_32.xyz, r6.w);
  let v_33 = &(x0[3u]);
  let v_34 = r6;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_36 = r10;
  r10 = vec4<f32>(v_36.x, v_35.x, v_36.z, v_35.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_37 = abs(r9.yyyy);
  r5.w = max(v_37.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_38 = (bitcast<u32>(r5.w) != 0u);
  let v_39 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_39, v_38);
  let v_40 = abs(r8.yyyy);
  r6.z = max(v_40.z, abs(r8.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_41 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_41 != 0u));
  let v_42 = abs(r7.yyyy);
  r6.z = max(v_42.z, abs(r7.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_43 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_43 != 0u));
  let v_44 = x0[bitcast<i32>(r4.w)];
  r7 = vec4<f32>(v_44.xyz, r7.w);
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
  let v_45 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_45.xy, r9.z, v_45.z);
  r9.z = dpdx(r4.w);
  let v_46 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_46.xyz, r11.w);
  r11.w = dpdy(r4.w);
  let v_47 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_47.xy, r7.zw);
  let v_48 = -(r7.xyxx);
  let v_49 = fma(r9.xz, r11.xz, v_48.xy);
  r12 = vec4<f32>(v_49.xy, r12.zw);
  r6.w = (1.0f / r12.x);
  r7.x = (r9.z * r11.y);
  let v_50 = -(r7.xxxx);
  r12.z = fma(r9.x, r11.w, v_50.z);
  let v_51 = (r6.ww * r12.yz);
  r7 = vec4<f32>(v_51.xy, r7.zw);
  let v_52 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_52.xy, r7.zw);
  let v_53 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_53.xy, r7.zw);
  r4.w = fma((-(r6.zzzz)).w, r7.x, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r7.y, r4.w);
  let v_54 = bitcast<u32>(r5.w);
  let v_55 = r4.w;
  r10.z = select(r7.z, v_55, (v_54 != 0u));
  r8.z = 0.0f;
  let v_56 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_56.xyz, r7.w);
  let v_57 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_57.xy, r10.zw);
  let v_58 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_58.xyz, r9.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_59.xy, r10.zw);
  let v_60 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_60.xyz, r11.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_61.xy, r10.zw);
  let v_62 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_62.xyz, r12.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_63.xy, r10.zw);
  let v_64 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_64.xyz, r13.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_65.xy, r10.zw);
  let v_66 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_66.xyz, r14.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_67.xy, r10.zw);
  let v_68 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_68.xyz, r15.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_69.xy, r10.zw);
  let v_70 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_70.xyz, r16.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_71.xy, r10.zw);
  let v_72 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_72.xyz, r17.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_73.xy, r10.zw);
  let v_74 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_74.xyz, r18.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_75.xy, r10.zw);
  let v_76 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_76.xyz, r19.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_77.xy, r10.zw);
  let v_78 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_78.xyz, r20.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_79.xy, r10.zw);
  let v_80 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_80.xyz, r21.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_81.xy, r10.zw);
  let v_82 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_82.xyz, r22.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_83.xy, r10.zw);
  let v_84 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_84.xyz, r23.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_85.xy, r10.zw);
  let v_86 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_86.xyz, r8.w);
  let v_87 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_87.xy, r7.z);
  let v_88 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_88.xy, r9.z);
  let v_89 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_89.xy, r11.z);
  let v_90 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_90.xy, r12.z);
  let v_91 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_91.xy, r13.z);
  let v_92 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_92.xy, r14.z);
  let v_93 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_93.xy, r15.z);
  let v_94 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_94.xy, r16.z);
  let v_95 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_95.xy, r17.z);
  let v_96 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_96.xy, r18.z);
  let v_97 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_97.xy, r19.z);
  let v_98 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_98.xy, r20.z);
  let v_99 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_99.xy, r21.z);
  let v_100 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_100.xy, r22.z);
  let v_101 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_101.xy, r23.z);
  let v_102 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_102.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r4.w = dot(r7, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_103 = abs(r6.yyyy);
  r5.w = max(v_103.w, abs(r6.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_104 = -(r3.wwww);
  r3.w = fma(r4.w, v_104.w, r3.w);
  let v_105 = dot(v1.xyz, v_13.xyz);
  r4.w = clamp(vec4<f32>(v_105, v_105, v_105, v_105).w, 0.0f, 1.0f);
  let v_106 = dot(r3.xyz, v1.xyz);
  r6.x = clamp(vec4<f32>(v_106, v_106, v_106, v_106).x, 0.0f, 1.0f);
  let v_107 = dot(r4.xyz, v_13.xyz);
  r6.y = clamp(vec4<f32>(v_107, v_107, v_107, v_107).y, 0.0f, 1.0f);
  let v_108 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_108.xy, r6.zw);
  let v_109 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_109.xy);
  let v_110 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_110.xy);
  let v_111 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_111.xy, r6.zw);
  r5.w = ((-(cb11_11.tint_symbol_4[3u].wwww)).w + 1.0f);
  let v_112 = fma(cb11_11.tint_symbol_4[3u].ww, r6.xy, r5.ww);
  r6 = vec4<f32>(v_112.xy, r6.zw);
  let v_113 = (r0.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(r6.xy, v_113.xy);
  r6.z = (r6.z * 0.125f);
  r6.x = fma((-(r0.xxxx)).x, r6.x, 1.0f);
  r4.x = dot(v1.xyz, r4.xyz);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r6.w);
  r4.x = exp2(r4.x);
  r4.x = (r6.y * r4.x);
  r4.x = (r6.z * r4.x);
  r4.x = (r0.x * r4.x);
  r4.x = (r4.w * r4.x);
  r4.y = (r4.w * r6.x);
  let v_114 = fma(r1.xyz, r4.yyy, r4.xxx);
  r4 = vec4<f32>(v_114.xyz, r4.w);
  let v_115 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_115.xyz, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r8 = vec4<f32>(vec3<f32>(), r8.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_116 = (v_10.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_116.xyz, r7.w);
    let v_117 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_117.xyz, r8.w);
    r7.w = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_118 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_118.xyz, r8.w);
    let v_119 = (r8.xyz + v_10.xyz);
    r8 = vec4<f32>(v_119.xyz, r8.w);
    let v_120 = bitcast<vec3<u32>>(r6.yyy);
    let v_121 = r7.xyz;
    let v_122 = select(r8.xyz, v_121, (v_120 != vec3<u32>()));
    r7 = vec4<f32>(v_122.xyz, r7.w);
    r6.y = dot(r7.xyz, r7.xyz);
    let v_123 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_123.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_124 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_124.xyz, r7.w);
    r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[11u].w);
    r6.y = (r6.y / r7.w);
    let v_125 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r7.xyz, v_125.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_126 = dot(r7.xyz, v1.xyz);
    r8.x = clamp(vec4<f32>(v_126, v_126, v_126, v_126).x, 0.0f, 1.0f);
    r7.w = (r7.w * r8.x);
    r8.x = (r6.y * r7.w);
    let v_127 = (r8.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_127.xyz, r8.w);
    let v_128 = (r1.xyz * r8.xyz);
    r8 = vec4<f32>(v_128.xyz, r8.w);
    let v_129 = fma(r2.xyz, r2.www, r7.xyz);
    r7 = vec4<f32>(v_129.xyz, r7.w);
    r8.w = dot(r7.xyz, r7.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_130 = (r7.xyz * r8.www);
    r7 = vec4<f32>(v_130.xyz, r7.w);
    let v_131 = dot(r7.xyz, r3.xyz);
    r8.w = clamp(vec4<f32>(v_131, v_131, v_131, v_131).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.x = (r8.w * r8.w);
    r9.x = (r9.x * r9.x);
    r8.w = (r8.w * r9.x);
    r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
    let v_132 = dot(r7.xyz, v1.xyz);
    r7.x = clamp(vec4<f32>(v_132, v_132, v_132, v_132).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r6.w * r7.x);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r8.w);
    r7.x = (r7.w * r7.x);
    r6.y = (r6.y * r7.x);
    r6.y = (r6.z * r6.y);
    let v_133 = (r6.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_133.xyz, r7.w);
  }
  r6.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.y) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    let v_134 = bitcast<u32>(r7.w);
    let v_135 = r6.y;
    r4.w = select(r4.w, v_135, (v_134 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_136 = (v_10.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_136.xyz, r9.w);
      let v_137 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_137.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_138 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_138.xyz, r10.w);
      let v_139 = (r10.xyz + v_10.xyz);
      r10 = vec4<f32>(v_139.xyz, r10.w);
      let v_140 = bitcast<vec3<u32>>(r6.yyy);
      let v_141 = r9.xyz;
      let v_142 = select(r10.xyz, v_141, (v_140 != vec3<u32>()));
      r9 = vec4<f32>(v_142.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_143 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_143.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_144 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_144.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[12u].w);
      r6.y = (r6.y / r7.w);
      let v_145 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r9.xyz, v_145.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_146 = dot(r9.xyz, v1.xyz);
      r8.w = clamp(vec4<f32>(v_146, v_146, v_146, v_146).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_147 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_147.xyz, r10.w);
      let v_148 = fma(r10.xyz, r1.xyz, r8.xyz);
      r8 = vec4<f32>(v_148.xyz, r8.w);
      let v_149 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_149.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_150 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_150.xyz, r9.w);
      let v_151 = dot(r9.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_151, v_151, v_151, v_151).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_152 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_152, v_152, v_152, v_152).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_153 = fma(r6.yyy, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_153.xyz, r7.w);
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
      let v_154 = (v_10.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_154.xyz, r9.w);
      let v_155 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_155.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_156 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_156.xyz, r10.w);
      let v_157 = (r10.xyz + v_10.xyz);
      r10 = vec4<f32>(v_157.xyz, r10.w);
      let v_158 = bitcast<vec3<u32>>(r6.yyy);
      let v_159 = r9.xyz;
      let v_160 = select(r10.xyz, v_159, (v_158 != vec3<u32>()));
      r9 = vec4<f32>(v_160.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_161 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_161.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_162 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_162.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[13u].w);
      r6.y = (r6.y / r7.w);
      let v_163 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r9.xyz, v_163.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_164 = dot(r9.xyz, v1.xyz);
      r8.w = clamp(vec4<f32>(v_164, v_164, v_164, v_164).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_165 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_165.xyz, r10.w);
      let v_166 = fma(r10.xyz, r1.xyz, r8.xyz);
      r8 = vec4<f32>(v_166.xyz, r8.w);
      let v_167 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_167.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_168 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_168.xyz, r9.w);
      let v_169 = dot(r9.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_169, v_169, v_169, v_169).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_170 = dot(r9.xyz, v1.xyz);
      r9.x = clamp(vec4<f32>(v_170, v_170, v_170, v_170).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_171 = fma(r6.yyy, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_171.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_172 = (v_10.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_172.xyz, r9.w);
      let v_173 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      r6.y = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.y = clamp(((r6.yyyy / cb3_3.tint_symbol_2[22u].wwww)).y, 0.0f, 1.0f);
      r6.y = (r6.y * cb3_3.tint_symbol_2[22u].w);
      let v_174 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      let v_175 = (r10.xyz + v_10.xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      let v_176 = bitcast<vec3<u32>>(r4.www);
      let v_177 = r9.xyz;
      let v_178 = select(r10.xyz, v_177, (v_176 != vec3<u32>()));
      r9 = vec4<f32>(v_178.xyz, r9.w);
      r4.w = dot(r9.xyz, r9.xyz);
      let v_179 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_179.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      r6.y = inverseSqrt(r6.y);
      let v_180 = (r6.yyy * r9.xyz);
      r9 = vec4<f32>(v_180.xyz, r9.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r6.y = fma(r6.y, r4.w, cb3_3.tint_symbol_2[14u].w);
      r4.w = (r4.w / r6.y);
      let v_181 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.y = dot(r9.xyz, v_181.xyz);
      r6.y = clamp(fma(r6.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_182 = dot(r9.xyz, v1.xyz);
      r7.w = clamp(vec4<f32>(v_182, v_182, v_182, v_182).w, 0.0f, 1.0f);
      r6.y = (r6.y * r7.w);
      r7.w = (r4.w * r6.y);
      let v_183 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_183.xyz, r10.w);
      let v_184 = fma(r10.xyz, r1.xyz, r8.xyz);
      r8 = vec4<f32>(v_184.xyz, r8.w);
      let v_185 = fma(r2.xyz, r2.www, r9.xyz);
      r2 = vec4<f32>(v_185.xyz, r2.w);
      r2.w = dot(r2.xyz, r2.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_186 = (r2.www * r2.xyz);
      r2 = vec4<f32>(v_186.xyz, r2.w);
      let v_187 = dot(r2.xyz, r3.xyz);
      r2.w = clamp(vec4<f32>(v_187, v_187, v_187, v_187).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r7.w = (r2.w * r2.w);
      r7.w = (r7.w * r7.w);
      r2.w = (r2.w * r7.w);
      r2.w = fma(cb11_11.tint_symbol_4[3u].w, r2.w, r5.w);
      let v_188 = dot(r2.xyz, v1.xyz);
      r2.x = clamp(vec4<f32>(v_188, v_188, v_188, v_188).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r6.w);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r2.w);
      r2.x = (r6.y * r2.x);
      r2.x = (r4.w * r2.x);
      r2.x = (r6.z * r2.x);
      let v_189 = fma(r2.xxx, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_189.xyz, r7.w);
    }
  }
  r2.x = (r6.x * r6.x);
  r0.x = (r0.x * r0.x);
  let v_190 = (r7.xyz * r0.xxx);
  r2 = vec4<f32>(r2.x, v_190.xyz);
  let v_191 = fma(r2.xxx, r8.xyz, r2.yzw);
  r2 = vec4<f32>(v_191.xyz, r2.w);
  let v_192 = fma(r4.xyz, r3.www, r2.xyz);
  r2 = vec4<f32>(v_192.xyz, r2.w);
  r0.x = (v1.z + cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_193 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_193.xyz, r4.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_194 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(r6.x, v_194.xyz);
  let v_195 = (r6.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(r6.x, v_195.xyz);
  let v_196 = fma(r4.xyz, r2.www, r6.yzw);
  r4 = vec4<f32>(v_196.xyz, r4.w);
  let v_197 = (r0.zzz * r4.xyz);
  r4 = vec4<f32>(v_197.xyz, r4.w);
  let v_198 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(r6.x, v_198.xyz);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_199 = dot(r7.xyz, v1.xyz);
  r0.x = clamp(vec4<f32>(v_199, v_199, v_199, v_199).x, 0.0f, 1.0f);
  let v_200 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.xxx, r6.yzw);
  r6 = vec4<f32>(r6.x, v_200.xyz);
  let v_201 = fma(r6.yzw, r0.yyy, r4.xyz);
  r4 = vec4<f32>(v_201.xyz, r4.w);
  let v_202 = (r6.xxx * r4.xyz);
  r4 = vec4<f32>(v_202.xyz, r4.w);
  let v_203 = fma(r4.xyz, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_203.xyz, r1.w);
  r0.x = ((-(r6.xxxx)).x + 1.0f);
  r2.x = dot((-(r3.xyzx)).xyz, v1.xyz);
  r2.x = (r2.x + r2.x);
  let v_204 = -(r2.xxxx);
  let v_205 = fma(v1.xyz, v_204.xyz, (-(r3.xyzx)).xyz);
  r2 = vec4<f32>(v_205.xyz, r2.w);
  let v_206 = clamp(((r0.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_206.xy, r3.zw);
  r0.w = ((-(r3.xxxx)).w + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r0.w * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.w)));
  r3.z = fma(r0.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.w = (r0.w * r0.w);
  r0.w = fma(r0.w, 5.0f, r2.w);
  let v_207 = bitcast<u32>(r3.x);
  let v_208 = r3.z;
  r0.w = select(r0.w, v_208, (v_207 != 0u));
  let v_209 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_209.xy, r2.z, v_209.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_210 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_210.xy, r2.z, v_210.z);
  let v_211 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_211.xy, r2.z, v_211.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_212 = bitcast<vec2<u32>>(r2.zz);
  let v_213 = r2.xy;
  let v_214 = select(r2.wy, v_213, (v_212 != vec2<u32>()));
  r2 = vec4<f32>(v_214.xy, r2.zw);
  let v_215 = r0.w;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_215);
  r0.y = max(r0.z, r0.y);
  let v_216 = (r0.yyy * r2.xyz);
  r0 = vec4<f32>(r0.x, v_216.xyz);
  let v_217 = (r3.yyy * r0.yzw);
  r2 = vec4<f32>(v_217.xyz, r2.w);
  let v_218 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_218.xyz, r2.w);
  let v_219 = fma(r0.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r0 = vec4<f32>(r0.x, v_219.xyz);
  let v_220 = fma(r0.yzw, r0.xxx, r1.xyz);
  r0 = vec4<f32>(v_220.xyz, r0.w);
  o0.w = (r1.w * cb2_2.tint_symbol_1[15u].x);
  r0.w = dot(r5.xyz, r5.xyz);
  r1.x = sqrt(r0.w);
  let v_221 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_221.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r5.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_222 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_222 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_223 = (r0.www * r5.xyz);
  r2 = vec4<f32>(v_223.xyz, r2.w);
  let v_224 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_224, v_224, v_224, v_224).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_225 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_225, v_225, v_225, v_225).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_226 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_226.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_227 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_227.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_228 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_228.xyz, r2.w);
  let v_229 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_229.xyz, r2.w);
  let v_230 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_230.xyz, r3.w);
  let v_231 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_231.xyz, r2.w);
  let v_232 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_233 = (r2.xyz + v_232.xyz);
  r2 = vec4<f32>(v_233.xyz, r2.w);
  let v_234 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_234.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_235 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_235.xy, r1.z, v_235.z);
  let v_236 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_236.xy, r1.z, v_236.z);
  let v_237 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_237.xyz, r0.w);
  let v_238 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_238.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4);
  return o0;
}
