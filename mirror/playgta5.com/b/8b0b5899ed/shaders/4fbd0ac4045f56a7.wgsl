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

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v9 : vec4<f32>;

var<private> v10 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v9 = v_2;
  x1[0u].x = v10[0u];
  x1[0u].y = v10[1u];
  x1[0u].z = v10[2u];
  x1[0u].w = v10[3u];
  r0 = textureSample(t0, s0, v2.xyxx.xy);
  r1 = textureSample(t2, s2, v2.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_4 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_6.xy, r1.z, v_6.z);
  let v_7 = fma(r1.zzz, v3.xyz, r1.xyw);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_8 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r3 = textureSample(t3, s3, v2.xyxx.xy);
  let v_9 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  r1.x = dot(r3.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  let v_10 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = -(v7.xyz.xyzx);
  let v_12 = (v_11.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_13 = (r1.yyy * r3.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_15 = fma(r3.xyz, r1.yyy, v_14.xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_16 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = (cb2_2.tint_symbol_1[15u].zy * cb2_2.tint_symbol_1[15u].zy);
  r6 = vec4<f32>(v_17.xy, r6.zw);
  r2.w = fma(r3.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r2.w = max(r2.w, 0.0f);
  let v_18 = -(r2.wwww);
  r3.w = fma(r3.w, cb12_12.tint_symbol_4[0u].y, v_18.w);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.w, 3.0f, r2.w);
  r3.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_19 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_19.xyz, r7.w);
  let v_20 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_20.xyz, r8.w);
  let v_21 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_21.xyz, r8.w);
  let v_22 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_22.xyz, r8.w);
  let v_23 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_23.xyz, r9.w);
  let v_24 = &(x0[0u]);
  let v_25 = r9;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  let v_26 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_26.xyz, r10.w);
  let v_27 = &(x0[1u]);
  let v_28 = r10;
  *(v_27) = vec4<f32>(v_28.xyz, (*(v_27)).w);
  let v_29 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_29.xyz, r11.w);
  let v_30 = &(x0[2u]);
  let v_31 = r11;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_32.xyz, r8.w);
  let v_33 = &(x0[3u]);
  let v_34 = r8;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_36 = r12;
  r12 = vec4<f32>(v_36.x, v_35.x, v_36.z, v_35.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_37 = abs(r11.yyyy);
  r5.w = max(v_37.w, abs(r11.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_38 = (bitcast<u32>(r5.w) != 0u);
  let v_39 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_39, v_38);
  let v_40 = abs(r10.yyyy);
  r6.z = max(v_40.z, abs(r10.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_41 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_41 != 0u));
  let v_42 = abs(r9.yyyy);
  r6.z = max(v_42.z, abs(r9.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_43 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_43 != 0u));
  let v_44 = x0[bitcast<i32>(r4.w)];
  r9 = vec4<f32>(v_44.xyz, r9.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r4.w = dot(r10, cb6_6.tint_symbol_5[12u]);
  r6.z = dot(r10, cb6_6.tint_symbol_5[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r9.z);
  let v_45 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_45.xy, r11.z, v_45.z);
  r11.z = dpdx(r4.w);
  let v_46 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_46.xyz, r13.w);
  r13.w = dpdy(r4.w);
  let v_47 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_47.xy);
  let v_48 = -(r8.zwzz);
  let v_49 = fma(r11.xz, r13.xz, v_48.xy);
  r14 = vec4<f32>(v_49.xy, r14.zw);
  r6.w = (1.0f / r14.x);
  r7.w = (r11.z * r13.y);
  let v_50 = -(r7.wwww);
  r14.z = fma(r11.x, r13.w, v_50.z);
  let v_51 = (r6.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_51.xy);
  let v_52 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_52.xy);
  let v_53 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_53.xy);
  r4.w = fma((-(r6.zzzz)).w, r8.z, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r8.w, r4.w);
  let v_54 = bitcast<u32>(r5.w);
  let v_55 = r4.w;
  r12.z = select(r9.z, v_55, (v_54 != 0u));
  r10.z = 0.0f;
  let v_56 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_56.xyz, r9.w);
  let v_57 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_57.xy, r12.zw);
  let v_58 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_58.xyz, r11.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_59.xy, r12.zw);
  let v_60 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_60.xyz, r13.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_61.xy, r12.zw);
  let v_62 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_62.xyz, r14.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_63.xy, r12.zw);
  let v_64 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_64.xyz, r15.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_65.xy, r12.zw);
  let v_66 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_66.xyz, r16.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_67.xy, r12.zw);
  let v_68 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_68.xyz, r17.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_69.xy, r12.zw);
  let v_70 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_70.xyz, r18.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_71.xy, r12.zw);
  let v_72 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_72.xyz, r19.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_73.xy, r12.zw);
  let v_74 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_74.xyz, r20.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_75.xy, r12.zw);
  let v_76 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_76.xyz, r21.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_77.xy, r12.zw);
  let v_78 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_78.xyz, r22.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_79.xy, r12.zw);
  let v_80 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_80.xyz, r23.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_81.xy, r12.zw);
  let v_82 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_82.xyz, r24.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_83.xy, r12.zw);
  let v_84 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_84.xyz, r25.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_85.xy, r12.zw);
  let v_86 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_86.xyz, r10.w);
  let v_87 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_87.xy, r9.z);
  let v_88 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_88.xy, r11.z);
  let v_89 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_89.xy, r13.z);
  let v_90 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_90.xy, r14.z);
  let v_91 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_91.xy, r15.z);
  let v_92 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_92.xy, r16.z);
  let v_93 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_93.xy, r17.z);
  let v_94 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_94.xy, r18.z);
  let v_95 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_95.xy, r19.z);
  let v_96 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_96.xy, r20.z);
  let v_97 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_97.xy, r21.z);
  let v_98 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_98.xy, r22.z);
  let v_99 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_99.xy, r23.z);
  let v_100 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_100.xy, r24.z);
  let v_101 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_101.xy, r25.z);
  let v_102 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_102.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r4.w = dot(r9, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_103 = abs(r8.yyyy);
  r5.w = max(v_103.w, abs(r8.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v7.xyz.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_104 = -(r3.wwww);
  r3.w = fma(r4.w, v_104.w, r3.w);
  r4.w = dot(r2.xyz, v_14.xyz);
  r5.w = clamp(r4.wwww.w, 0.0f, 1.0f);
  r5.w = ((-(abs(r4.wwww))).w + r5.w);
  let v_105 = abs(r4.wwww);
  r4.w = fma(r0.w, r5.w, v_105.w);
  let v_106 = dot(r4.xyz, r2.xyz);
  r8.x = clamp(vec4<f32>(v_106, v_106, v_106, v_106).x, 0.0f, 1.0f);
  let v_107 = dot(r5.xyz, v_14.xyz);
  r8.y = clamp(vec4<f32>(v_107, v_107, v_107, v_107).y, 0.0f, 1.0f);
  let v_108 = ((-(r8.xxxy)).zw + vec2<f32>(1.0f));
  r6 = vec4<f32>(r6.xy, v_108.xy);
  let v_109 = (r6.zw * r6.zw);
  r8 = vec4<f32>(v_109.xy, r8.zw);
  let v_110 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_110.xy, r8.zw);
  let v_111 = (r6.zw * r8.xy);
  r6 = vec4<f32>(r6.xy, v_111.xy);
  r5.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_112 = fma(cb12_12.tint_symbol_4[0u].xx, r6.zw, r5.ww);
  r6 = vec4<f32>(r6.xy, v_112.xy);
  let v_113 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_113.xy, r8.zw);
  r7.w = (r8.x * 0.125f);
  r8.x = max(r0.w, r6.z);
  r6.z = (r6.z + -1.0f);
  r6.z = fma(r8.x, r6.z, 1.0f);
  r6.z = fma((-(r1.xxxx)).z, r6.z, 1.0f);
  r5.x = dot(r2.xyz, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r6.w * r5.x);
  r5.x = (r7.w * r5.x);
  r5.x = (r1.x * r5.x);
  r5.x = (r4.w * r5.x);
  r4.w = (r4.w * r6.z);
  let v_114 = fma(r0.xyz, r4.www, r5.xxx);
  r5 = vec4<f32>(v_114.xyz, r5.w);
  let v_115 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_115.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_116 = (v_11.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_116.xyz, r9.w);
    let v_117 = (v7.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_117.xyz, r10.w);
    r8.z = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[19u].wwww)).z, 0.0f, 1.0f);
    r8.z = (r8.z * cb3_3.tint_symbol_2[19u].w);
    let v_118 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_118.xyz, r10.w);
    let v_119 = (r10.xyz + v_11.xyz);
    r10 = vec4<f32>(v_119.xyz, r10.w);
    let v_120 = bitcast<vec3<u32>>(r6.www);
    let v_121 = r9.xyz;
    let v_122 = select(r10.xyz, v_121, (v_120 != vec3<u32>()));
    r9 = vec4<f32>(v_122.xyz, r9.w);
    r6.w = dot(r9.xyz, r9.xyz);
    let v_123 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_123.xyz, r9.w);
    r8.z = dot(r9.xyz, r9.xyz);
    r8.z = inverseSqrt(r8.z);
    let v_124 = (r8.zzz * r9.xyz);
    r9 = vec4<f32>(v_124.xyz, r9.w);
    r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r8.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[11u].w);
    r6.w = (r6.w / r8.z);
    let v_125 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.z = dot(r9.xyz, v_125.xyz);
    r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    r8.w = dot(r9.xyz, r2.xyz);
    r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
    r9.w = ((-(abs(r8.wwww))).w + r9.w);
    let v_126 = abs(r8.wwww);
    r8.w = fma(r0.w, r9.w, v_126.w);
    r8.z = (r8.z * r8.w);
    r8.w = (r6.w * r8.z);
    let v_127 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_127.xyz, r10.w);
    let v_128 = (r0.xyz * r10.xyz);
    r10 = vec4<f32>(v_128.xyz, r10.w);
    let v_129 = fma(r3.xyz, r1.yyy, r9.xyz);
    r9 = vec4<f32>(v_129.xyz, r9.w);
    r8.w = dot(r9.xyz, r9.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_130 = (r8.www * r9.xyz);
    r9 = vec4<f32>(v_130.xyz, r9.w);
    let v_131 = dot(r9.xyz, r4.xyz);
    r8.w = clamp(vec4<f32>(v_131, v_131, v_131, v_131).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.w = (r8.w * r8.w);
    r9.w = (r9.w * r9.w);
    r8.w = (r8.w * r9.w);
    r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
    let v_132 = dot(r9.xyz, r2.xyz);
    r9.x = clamp(vec4<f32>(v_132, v_132, v_132, v_132).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r8.y * r9.x);
    r9.x = exp2(r9.x);
    r8.w = (r8.w * r9.x);
    r8.z = (r8.z * r8.w);
    r6.w = (r6.w * r8.z);
    r6.w = (r7.w * r6.w);
    let v_133 = (r6.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_133.xyz, r9.w);
  }
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r8.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    let v_134 = bitcast<u32>(r8.z);
    let v_135 = r6.w;
    r4.w = select(r4.w, v_135, (v_134 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_136 = (v_11.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_136.xyz, r11.w);
      let v_137 = (v7.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_137.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[20u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[20u].w);
      let v_138 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_138.xyz, r12.w);
      let v_139 = (r12.xyz + v_11.xyz);
      r12 = vec4<f32>(v_139.xyz, r12.w);
      let v_140 = bitcast<vec3<u32>>(r6.www);
      let v_141 = r11.xyz;
      let v_142 = select(r12.xyz, v_141, (v_140 != vec3<u32>()));
      r11 = vec4<f32>(v_142.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_143 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_143.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_144 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_144.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[12u].w);
      r6.w = (r6.w / r8.z);
      let v_145 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.z = dot(r11.xyz, v_145.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r2.xyz);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_146 = abs(r8.wwww);
      r8.w = fma(r0.w, r9.w, v_146.w);
      r8.z = (r8.z * r8.w);
      r8.w = (r6.w * r8.z);
      let v_147 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r12 = vec4<f32>(v_147.xyz, r12.w);
      let v_148 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_148.xyz, r10.w);
      let v_149 = fma(r3.xyz, r1.yyy, r11.xyz);
      r11 = vec4<f32>(v_149.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_150 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_150.xyz, r11.w);
      let v_151 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_151, v_151, v_151, v_151).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
      let v_152 = dot(r11.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_152, v_152, v_152, v_152).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r6.w = (r6.w * r8.z);
      r6.w = (r7.w * r6.w);
      let v_153 = fma(r6.www, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_153.xyz, r9.w);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_154 = (v_11.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_154.xyz, r11.w);
      let v_155 = (v7.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_155.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[21u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[21u].w);
      let v_156 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_156.xyz, r12.w);
      let v_157 = (r12.xyz + v_11.xyz);
      r12 = vec4<f32>(v_157.xyz, r12.w);
      let v_158 = bitcast<vec3<u32>>(r6.www);
      let v_159 = r11.xyz;
      let v_160 = select(r12.xyz, v_159, (v_158 != vec3<u32>()));
      r11 = vec4<f32>(v_160.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_161 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_161.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_162 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_162.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[13u].w);
      r6.w = (r6.w / r8.z);
      let v_163 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.z = dot(r11.xyz, v_163.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r2.xyz);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_164 = abs(r8.wwww);
      r8.w = fma(r0.w, r9.w, v_164.w);
      r8.z = (r8.z * r8.w);
      r8.w = (r6.w * r8.z);
      let v_165 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r12 = vec4<f32>(v_165.xyz, r12.w);
      let v_166 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_166.xyz, r10.w);
      let v_167 = fma(r3.xyz, r1.yyy, r11.xyz);
      r11 = vec4<f32>(v_167.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_168 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      let v_169 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_169, v_169, v_169, v_169).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
      let v_170 = dot(r11.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_170, v_170, v_170, v_170).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r6.w = (r6.w * r8.z);
      r6.w = (r7.w * r6.w);
      let v_171 = fma(r6.www, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_171.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_172 = (v_11.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_172.xyz, r11.w);
      let v_173 = (v7.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_173.xyz, r12.w);
      r6.w = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[22u].w);
      let v_174 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.www, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_174.xyz, r12.w);
      let v_175 = (r12.xyz + v_11.xyz);
      r12 = vec4<f32>(v_175.xyz, r12.w);
      let v_176 = bitcast<vec3<u32>>(r4.www);
      let v_177 = r11.xyz;
      let v_178 = select(r12.xyz, v_177, (v_176 != vec3<u32>()));
      r11 = vec4<f32>(v_178.xyz, r11.w);
      r4.w = dot(r11.xyz, r11.xyz);
      let v_179 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_179.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_180 = (r6.www * r11.xyz);
      r11 = vec4<f32>(v_180.xyz, r11.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[14u].w);
      r4.w = (r4.w / r6.w);
      let v_181 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.w = dot(r11.xyz, v_181.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      r8.z = dot(r11.xyz, r2.xyz);
      r8.w = clamp(r8.zzzz.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r8.zzzz))).w + r8.w);
      let v_182 = abs(r8.zzzz);
      r0.w = fma(r0.w, r8.w, v_182.w);
      r0.w = (r6.w * r0.w);
      r6.w = (r4.w * r0.w);
      let v_183 = (r6.www * cb3_3.tint_symbol_2[22u].xyz);
      r12 = vec4<f32>(v_183.xyz, r12.w);
      let v_184 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_184.xyz, r10.w);
      let v_185 = fma(r3.xyz, r1.yyy, r11.xyz);
      r3 = vec4<f32>(v_185.xyz, r3.w);
      r1.y = dot(r3.xyz, r3.xyz);
      r1.y = inverseSqrt(r1.y);
      let v_186 = (r1.yyy * r3.xyz);
      r3 = vec4<f32>(v_186.xyz, r3.w);
      let v_187 = dot(r3.xyz, r4.xyz);
      r1.y = clamp(vec4<f32>(v_187, v_187, v_187, v_187).y, 0.0f, 1.0f);
      r1.y = ((-(r1.yyyy)).y + 1.0f);
      r6.w = (r1.y * r1.y);
      r6.w = (r6.w * r6.w);
      r1.y = (r1.y * r6.w);
      r1.y = fma(cb12_12.tint_symbol_4[0u].x, r1.y, r5.w);
      let v_188 = dot(r3.xyz, r2.xyz);
      r3.x = clamp(vec4<f32>(v_188, v_188, v_188, v_188).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r8.y);
      r3.x = exp2(r3.x);
      r1.y = (r1.y * r3.x);
      r0.w = (r0.w * r1.y);
      r0.w = (r4.w * r0.w);
      r0.w = (r7.w * r0.w);
      let v_189 = fma(r0.www, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_189.xyz, r9.w);
    }
  }
  r0.w = (r6.z * r6.z);
  r1.x = (r1.x * r1.x);
  let v_190 = (r9.xyz * r1.xxx);
  r3 = vec4<f32>(v_190.xyz, r3.w);
  let v_191 = fma(r0.www, r10.xyz, r3.xyz);
  r3 = vec4<f32>(v_191.xyz, r3.w);
  let v_192 = fma(r5.xyz, r3.www, r3.xyz);
  r3 = vec4<f32>(v_192.xyz, r3.w);
  r0.w = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_193 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r1 = vec4<f32>(v_193.xyz, r1.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_194 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_194.xyz, r5.w);
  let v_195 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_195.xyz, r5.w);
  let v_196 = fma(r1.xyz, r1.www, r5.xyz);
  r1 = vec4<f32>(v_196.xyz, r1.w);
  let v_197 = (r6.yyy * r1.xyz);
  r1 = vec4<f32>(v_197.xyz, r1.w);
  let v_198 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_198.xyz, r5.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_199 = dot(r9.xyz, r2.xyz);
  r0.w = clamp(vec4<f32>(v_199, v_199, v_199, v_199).w, 0.0f, 1.0f);
  let v_200 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r5.xyz);
  r5 = vec4<f32>(v_200.xyz, r5.w);
  let v_201 = fma(r5.xyz, r6.xxx, r1.xyz);
  r1 = vec4<f32>(v_201.xyz, r1.w);
  let v_202 = (r6.zzz * r1.xyz);
  r1 = vec4<f32>(v_202.xyz, r1.w);
  let v_203 = fma(r1.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_203.xyz, r0.w);
  r0.w = ((-(r6.zzzz)).w + 1.0f);
  r1.x = dot((-(r4.xyzx)).xyz, r2.xyz);
  r1.x = (r1.x + r1.x);
  let v_204 = -(r1.xxxx);
  let v_205 = -(r4.xyzx);
  let v_206 = fma(r2.xyz, v_204.xyz, v_205.xyz);
  r1 = vec4<f32>(v_206.xyz, r1.w);
  let v_207 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_207.xy, r2.zw);
  r1.w = ((-(r2.xxxx)).w + 1.0f);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.z = (r1.w * cb5_5.tint_symbol_3[6u].z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.x)));
  r2.w = fma(r1.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.w = (r1.w * r1.w);
  r1.w = fma(r1.w, 5.0f, r2.x);
  let v_208 = bitcast<u32>(r2.z);
  let v_209 = r2.w;
  r1.w = select(r1.w, v_209, (v_208 != 0u));
  let v_210 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_210.x, r2.y, v_210.yz);
  r1.x = (abs(r1.zzzz).x + 1.0f);
  let v_211 = (r2.xzw / r1.xxx);
  r2 = vec4<f32>(v_211.x, r2.y, v_211.yz);
  let v_212 = ((-(r2.xxzw)).xzw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_212.x, r2.y, v_212.yz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_213 = bitcast<vec2<u32>>(r1.xx);
  let v_214 = r2.xz;
  let v_215 = select(r2.wz, v_214, (v_213 != vec2<u32>()));
  r1 = vec4<f32>(v_215.xy, r1.zw);
  let v_216 = r1.w;
  r1 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_216);
  r1.w = max(r6.y, r6.x);
  let v_217 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_217.xyz, r1.w);
  let v_218 = (r2.yyy * r1.xyz);
  r2 = vec4<f32>(v_218.xyz, r2.w);
  let v_219 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_219.xyz, r2.w);
  let v_220 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_220.xyz, r1.w);
  let v_221 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_221.xyz, r0.w);
  r0.w = (r8.x * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r1.x = dot(r7.xyz, r7.xyz);
    r1.y = sqrt(r1.x);
    let v_222 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.z = (r1.y + v_222.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r1.y * r7.z);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_223 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_223 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_224 = (r1.xxx * r7.xyz);
    r2 = vec4<f32>(v_224.xyz, r2.w);
    let v_225 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.x = clamp(vec4<f32>(v_225, v_225, v_225, v_225).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
    r1.x = exp2(r1.x);
    let v_226 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_226, v_226, v_226, v_226).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
    let v_227 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r1.z + v_227.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_228 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r1.z * v_228.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_229 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(r2.x, v_229.xyz);
    let v_230 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(r2.x, v_230.xyz);
    let v_231 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_231.xyz, r3.w);
    let v_232 = fma(r2.xxx, r3.xyz, r2.yzw);
    r2 = vec4<f32>(v_232.xyz, r2.w);
    let v_233 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_234 = (r2.xyz + v_233.xyz);
    r2 = vec4<f32>(v_234.xyz, r2.w);
    let v_235 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_235.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_236 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_236.xyz, r3.w);
    let v_237 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_237.xyz, r1.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_238 = (v9.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_238.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r2.x = (r2.x + -1.0f);
      r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r2.x = 1.0f;
    }
    let v_239 = -(r0.xyzx);
    let v_240 = fma(r1.xyz, r2.xxx, v_239.xyz);
    r1 = vec4<f32>(v_240.xyz, r1.w);
    let v_241 = fma(r1.www, r1.xyz, r0.xyz);
    r1 = vec4<f32>(v_241.xyz, r1.w);
  } else {
    r1.w = dot(r7.xyz, r7.xyz);
    r2.x = sqrt(r1.w);
    let v_242 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_242.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r2.x * r7.z);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_243 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_243 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_244 = (r1.www * r7.xyz);
    r3 = vec4<f32>(v_244.xyz, r3.w);
    let v_245 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_245, v_245, v_245, v_245).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_246 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_246, v_246, v_246, v_246).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].y);
    let v_247 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r2.y + v_247.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r2.z = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).z, 0.0f, 1.0f);
    let v_248 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.y = (r2.y * v_248.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    let v_249 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_249.xyz, r3.w);
    let v_250 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_250.xyz, r3.w);
    let v_251 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_251.xyz, r4.w);
    let v_252 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_252.xyz, r3.w);
    let v_253 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_254 = (r3.xyz + v_253.xyz);
    r3 = vec4<f32>(v_254.xyz, r3.w);
    let v_255 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_255.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_256 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_256.xyz, r4.w);
    let v_257 = fma(r2.xxx, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_257.xy, r2.z, v_257.z);
    let v_258 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_258.xy, r2.z, v_258.z);
    let v_259 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_259.xyz, r1.w);
  }
  o0.w = (r0.w * v8.x);
  let v_260 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_260.xyz, o0.w);
}

@fragment
fn main(@location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @builtin(position) v_261 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2, v3, v4, v5, v7, v8, v_261);
  return o0;
}
