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

struct cb3_struct {
  tint_symbol_4 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_3 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.z = dot(r0.xy, r0.xy);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = sqrt(abs(r0.zzzz).z);
  r0.w = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_4 = (r0.ww * r0.xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = (r0.yyy * v5.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(r0.xxx, v4.xyz, r1.xyz);
  r0 = vec4<f32>(v_6.xy, r0.z, v_6.z);
  let v_7 = fma(r0.zzz, v2.xyz, r0.xyw);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_8 = (r0.www * r0.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r2 = textureSample(t3, s3, v1.xy.xyxx.xy);
  let v_9 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  r0.x = dot(r2.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r0.x = clamp(((r0.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  r0.y = dot(v3.xyz, v3.xyz);
  r1.w = inverseSqrt(r0.y);
  let v_10 = (r1.www * v3.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r1.w = dot((-(r2.xyzx)).xyz, r1.xyz);
  r1.w = (r1.w + r1.w);
  let v_11 = -(r1.wwww);
  let v_12 = -(r2.xyzx);
  let v_13 = fma(r1.xyz, v_11.xyz, v_12.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_14 = fma(r2.xz, r1.ww, vec2<f32>(1.0f));
  r2 = vec4<f32>(v_14.xy, r2.zw);
  let v_15 = (r2.xy * vec2<f32>(-0.5f));
  r2 = vec4<f32>(v_15.xy, r2.zw);
  r3 = textureSample(t4, s4, r2.xyxx.xy);
  let v_16 = (r3.xyz * cb12_12.tint_symbol_4[2u].xxx);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  let v_17 = (v0.xyw * cb2_2.tint_symbol_1[15u].zyx);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = -(v6.xyzx);
  let v_19 = (v_18.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_20 = (r1.www * r4.xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_22 = fma(r4.xyz, r1.www, v_21.xyz);
  r6 = vec4<f32>(v_22.xyz, r6.w);
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_23 = (r3.www * r6.xyz);
  r6 = vec4<f32>(v_23.xyz, r6.w);
  r3.w = fma(r2.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_24 = -(r3.wwww);
  r2.w = fma(r2.w, cb12_12.tint_symbol_4[0u].y, v_24.w);
  r3.w = (r3.w * 558.0f);
  r2.w = fma(r2.w, 3.0f, r3.w);
  r3.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_25 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_25.xyz, r7.w);
  let v_26 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_26.xyz, r8.w);
  let v_27 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_27.xyz, r8.w);
  let v_28 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_28.xyz, r8.w);
  let v_29 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_29.xyz, r9.w);
  let v_30 = &(x0[0u]);
  let v_31 = r9;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_32.xyz, r10.w);
  let v_33 = &(x0[1u]);
  let v_34 = r10;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_35.xyz, r11.w);
  let v_36 = &(x0[2u]);
  let v_37 = r11;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_38.xyz, r8.w);
  let v_39 = &(x0[3u]);
  let v_40 = r8;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_42 = r12;
  r12 = vec4<f32>(v_42.x, v_41.x, v_42.z, v_41.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_43 = abs(r11.yyyy);
  r5.w = max(v_43.w, abs(r11.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_44 = (bitcast<u32>(r5.w) != 0u);
  let v_45 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_45, v_44);
  let v_46 = abs(r10.yyyy);
  r6.w = max(v_46.w, abs(r10.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_47 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_47 != 0u));
  let v_48 = abs(r9.yyyy);
  r6.w = max(v_48.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_49 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_49 != 0u));
  let v_50 = x0[bitcast<i32>(r4.w)];
  r9 = vec4<f32>(v_50.xyz, r9.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r4.w = dot(r10, cb6_6.tint_symbol_5[12u]);
  r6.w = dot(r10, cb6_6.tint_symbol_5[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r9.z);
  let v_51 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_51.xy, r11.z, v_51.z);
  r11.z = dpdx(r4.w);
  let v_52 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_52.xyz, r13.w);
  r13.w = dpdy(r4.w);
  let v_53 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_53.xy);
  let v_54 = -(r8.zwzz);
  let v_55 = fma(r11.xz, r13.xz, v_54.xy);
  r14 = vec4<f32>(v_55.xy, r14.zw);
  r7.w = (1.0f / r14.x);
  r8.z = (r11.z * r13.y);
  let v_56 = -(r8.zzzz);
  r14.z = fma(r11.x, r13.w, v_56.z);
  let v_57 = (r7.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_57.xy);
  let v_58 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_58.xy);
  let v_59 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_59.xy);
  r4.w = fma((-(r6.wwww)).w, r8.z, r4.w);
  r4.w = fma((-(r6.wwww)).w, r8.w, r4.w);
  let v_60 = bitcast<u32>(r5.w);
  let v_61 = r4.w;
  r12.z = select(r9.z, v_61, (v_60 != 0u));
  r10.z = 0.0f;
  let v_62 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_62.xyz, r9.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_63.xy, r12.zw);
  let v_64 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_64.xyz, r11.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_65.xy, r12.zw);
  let v_66 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_66.xyz, r13.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_67.xy, r12.zw);
  let v_68 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_68.xyz, r14.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_69.xy, r12.zw);
  let v_70 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_70.xyz, r15.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_71.xy, r12.zw);
  let v_72 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_72.xyz, r16.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_73.xy, r12.zw);
  let v_74 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_74.xyz, r17.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_75.xy, r12.zw);
  let v_76 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_76.xyz, r18.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_77.xy, r12.zw);
  let v_78 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_78.xyz, r19.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_79.xy, r12.zw);
  let v_80 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_80.xyz, r20.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_81.xy, r12.zw);
  let v_82 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_82.xyz, r21.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_83.xy, r12.zw);
  let v_84 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_84.xyz, r22.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_85.xy, r12.zw);
  let v_86 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_86.xyz, r23.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_87.xy, r12.zw);
  let v_88 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_88.xyz, r24.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_89.xy, r12.zw);
  let v_90 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_90.xyz, r25.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_91.xy, r12.zw);
  let v_92 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_92.xyz, r10.w);
  let v_93 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_93.xy, r9.z);
  let v_94 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_94.xy, r11.z);
  let v_95 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_95.xy, r13.z);
  let v_96 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_96.xy, r14.z);
  let v_97 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_97.xy, r15.z);
  let v_98 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_98.xy, r16.z);
  let v_99 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_99.xy, r17.z);
  let v_100 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_100.xy, r18.z);
  let v_101 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_101.xy, r19.z);
  let v_102 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_102.xy, r20.z);
  let v_103 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_103.xy, r21.z);
  let v_104 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_104.xy, r22.z);
  let v_105 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_105.xy, r23.z);
  let v_106 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_106.xy, r24.z);
  let v_107 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_107.xy, r25.z);
  let v_108 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_108.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r4.w = dot(r9, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_109 = abs(r8.yyyy);
  r5.w = max(v_109.w, abs(r8.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  let v_110 = (r3.xyw * r3.xyw);
  r3 = vec4<f32>(v_110.xy, r3.z, v_110.z);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v6.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_111 = -(r3.wwww);
  r3.w = fma(r4.w, v_111.w, r3.w);
  let v_112 = dot(r1.xyz, v_21.xyz);
  r4.w = clamp(vec4<f32>(v_112, v_112, v_112, v_112).w, 0.0f, 1.0f);
  let v_113 = dot(r5.xyz, r1.xyz);
  r8.x = clamp(vec4<f32>(v_113, v_113, v_113, v_113).x, 0.0f, 1.0f);
  let v_114 = dot(r6.xyz, v_21.xyz);
  r8.y = clamp(vec4<f32>(v_114, v_114, v_114, v_114).y, 0.0f, 1.0f);
  let v_115 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_115.xy, r8.zw);
  let v_116 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_116.xy);
  let v_117 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_117.xy);
  let v_118 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_118.xy, r8.zw);
  r5.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_119 = fma(cb12_12.tint_symbol_4[0u].xx, r8.xy, r5.ww);
  r8 = vec4<f32>(v_119.xy, r8.zw);
  let v_120 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_120.xy);
  r6.w = (r8.z * 0.125f);
  r7.w = fma((-(r0.xxxx)).w, r8.x, 1.0f);
  r6.x = dot(r1.xyz, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r8.w);
  r6.x = exp2(r6.x);
  r6.x = (r8.y * r6.x);
  r6.x = (r6.w * r6.x);
  r6.x = (r0.x * r6.x);
  r6.x = (r4.w * r6.x);
  r4.w = fma(r4.w, r7.w, r6.x);
  let v_121 = (r4.www * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_121.xyz, r6.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_122 = (v_18.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_122.xyz, r9.w);
    let v_123 = (v6.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_123.xyz, r10.w);
    r8.y = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.y = clamp(((r8.yyyy / cb3_3.tint_symbol_2[19u].wwww)).y, 0.0f, 1.0f);
    r8.y = (r8.y * cb3_3.tint_symbol_2[19u].w);
    let v_124 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.yyy, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_124.xyz, r10.w);
    let v_125 = (r10.xyz + v_18.xyz);
    r10 = vec4<f32>(v_125.xyz, r10.w);
    let v_126 = bitcast<vec3<u32>>(r8.xxx);
    let v_127 = r9.xyz;
    let v_128 = select(r10.xyz, v_127, (v_126 != vec3<u32>()));
    r8 = vec4<f32>(v_128.xyz, r8.w);
    r9.x = dot(r8.xyz, r8.xyz);
    let v_129 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_129.xyz, r8.w);
    r9.y = dot(r8.xyz, r8.xyz);
    r9.y = inverseSqrt(r9.y);
    let v_130 = (r8.xyz * r9.yyy);
    r8 = vec4<f32>(v_130.xyz, r8.w);
    r9.x = clamp(fma(-(r9.xxxx), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r9.y = ((-(cb3_3.tint_symbol_2[11u].wwww)).y + 1.0f);
    r9.y = fma(r9.y, r9.x, cb3_3.tint_symbol_2[11u].w);
    r9.x = (r9.x / r9.y);
    let v_131 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.y = dot(r8.xyz, v_131.xyz);
    r9.y = clamp(fma(r9.yyyy, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).y, 0.0f, 1.0f);
    let v_132 = dot(r8.xyz, r1.xyz);
    r9.z = clamp(vec4<f32>(v_132, v_132, v_132, v_132).z, 0.0f, 1.0f);
    r9.y = (r9.y * r9.z);
    r9.z = (r9.x * r9.y);
    let v_133 = (r9.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_133.xyz, r10.w);
    let v_134 = fma(r4.xyz, r1.www, r8.xyz);
    r8 = vec4<f32>(v_134.xyz, r8.w);
    r9.z = dot(r8.xyz, r8.xyz);
    r9.z = inverseSqrt(r9.z);
    let v_135 = (r8.xyz * r9.zzz);
    r8 = vec4<f32>(v_135.xyz, r8.w);
    let v_136 = dot(r8.xyz, r5.xyz);
    r9.z = clamp(vec4<f32>(v_136, v_136, v_136, v_136).z, 0.0f, 1.0f);
    r9.z = ((-(r9.zzzz)).z + 1.0f);
    r9.w = (r9.z * r9.z);
    r9.w = (r9.w * r9.w);
    r9.z = (r9.w * r9.z);
    r9.z = fma(cb12_12.tint_symbol_4[0u].x, r9.z, r5.w);
    let v_137 = dot(r8.xyz, r1.xyz);
    r8.x = clamp(vec4<f32>(v_137, v_137, v_137, v_137).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.w);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.z);
    r8.x = (r9.y * r8.x);
    r8.x = (r9.x * r8.x);
    r8.x = (r6.w * r8.x);
    let v_138 = (r8.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_138.xyz, r8.w);
  }
  r9.x = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r9.x) != 0u)) {
    r9.y = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r9.x = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r9.x)));
    let v_139 = bitcast<u32>(r9.y);
    let v_140 = r9.x;
    r4.w = select(r4.w, v_140, (v_139 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r9.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_141 = ((-(v6.xxyz)).yzw + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(r9.x, v_141.xyz);
      let v_142 = (v6.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_142.xyz, r11.w);
      r10.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r10.w = clamp(((r10.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r10.w = (r10.w * cb3_3.tint_symbol_2[20u].w);
      let v_143 = fma(cb3_3.tint_symbol_2[12u].xyz, r10.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_143.xyz, r11.w);
      let v_144 = (r11.xyz + v_18.xyz);
      r11 = vec4<f32>(v_144.xyz, r11.w);
      let v_145 = bitcast<vec3<u32>>(r9.xxx);
      let v_146 = r9.yzw;
      let v_147 = select(r11.xyz, v_146, (v_145 != vec3<u32>()));
      r9 = vec4<f32>(v_147.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      let v_148 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_148.xyz, r9.w);
      r10.w = dot(r9.xyz, r9.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_149 = (r9.xyz * r10.www);
      r9 = vec4<f32>(v_149.xyz, r9.w);
      r9.w = clamp(fma(-(r9.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r10.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r10.w = fma(r10.w, r9.w, cb3_3.tint_symbol_2[12u].w);
      r9.w = (r9.w / r10.w);
      let v_150 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r10.w = dot(r9.xyz, v_150.xyz);
      r10.w = clamp(fma(r10.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_151 = dot(r9.xyz, r1.xyz);
      r11.x = clamp(vec4<f32>(v_151, v_151, v_151, v_151).x, 0.0f, 1.0f);
      r10.w = (r10.w * r11.x);
      r11.x = (r9.w * r10.w);
      let v_152 = fma(r11.xxx, cb3_3.tint_symbol_2[20u].xyz, r10.xyz);
      r10 = vec4<f32>(v_152.xyz, r10.w);
      let v_153 = fma(r4.xyz, r1.www, r9.xyz);
      r9 = vec4<f32>(v_153.xyz, r9.w);
      r11.x = dot(r9.xyz, r9.xyz);
      r11.x = inverseSqrt(r11.x);
      let v_154 = (r9.xyz * r11.xxx);
      r9 = vec4<f32>(v_154.xyz, r9.w);
      let v_155 = dot(r9.xyz, r5.xyz);
      r11.x = clamp(vec4<f32>(v_155, v_155, v_155, v_155).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb12_12.tint_symbol_4[0u].x, r11.x, r5.w);
      let v_156 = dot(r9.xyz, r1.xyz);
      r9.x = clamp(vec4<f32>(v_156, v_156, v_156, v_156).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r8.w * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r10.w * r9.x);
      r9.x = (r9.w * r9.x);
      r9.x = (r6.w * r9.x);
      let v_157 = fma(r9.xxx, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_157.xyz, r8.w);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r9.x)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r9.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_158 = ((-(v6.xxyz)).yzw + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(r9.x, v_158.xyz);
      let v_159 = (v6.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      r10.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r10.w = clamp(((r10.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r10.w = (r10.w * cb3_3.tint_symbol_2[21u].w);
      let v_160 = fma(cb3_3.tint_symbol_2[13u].xyz, r10.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      let v_161 = (r11.xyz + v_18.xyz);
      r11 = vec4<f32>(v_161.xyz, r11.w);
      let v_162 = bitcast<vec3<u32>>(r9.xxx);
      let v_163 = r9.yzw;
      let v_164 = select(r11.xyz, v_163, (v_162 != vec3<u32>()));
      r9 = vec4<f32>(v_164.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      let v_165 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_165.xyz, r9.w);
      r10.w = dot(r9.xyz, r9.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_166 = (r9.xyz * r10.www);
      r9 = vec4<f32>(v_166.xyz, r9.w);
      r9.w = clamp(fma(-(r9.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r10.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r10.w = fma(r10.w, r9.w, cb3_3.tint_symbol_2[13u].w);
      r9.w = (r9.w / r10.w);
      let v_167 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r10.w = dot(r9.xyz, v_167.xyz);
      r10.w = clamp(fma(r10.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_168 = dot(r9.xyz, r1.xyz);
      r11.x = clamp(vec4<f32>(v_168, v_168, v_168, v_168).x, 0.0f, 1.0f);
      r10.w = (r10.w * r11.x);
      r11.x = (r9.w * r10.w);
      let v_169 = fma(r11.xxx, cb3_3.tint_symbol_2[21u].xyz, r10.xyz);
      r10 = vec4<f32>(v_169.xyz, r10.w);
      let v_170 = fma(r4.xyz, r1.www, r9.xyz);
      r9 = vec4<f32>(v_170.xyz, r9.w);
      r11.x = dot(r9.xyz, r9.xyz);
      r11.x = inverseSqrt(r11.x);
      let v_171 = (r9.xyz * r11.xxx);
      r9 = vec4<f32>(v_171.xyz, r9.w);
      let v_172 = dot(r9.xyz, r5.xyz);
      r11.x = clamp(vec4<f32>(v_172, v_172, v_172, v_172).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb12_12.tint_symbol_4[0u].x, r11.x, r5.w);
      let v_173 = dot(r9.xyz, r1.xyz);
      r9.x = clamp(vec4<f32>(v_173, v_173, v_173, v_173).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r8.w * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r10.w * r9.x);
      r9.x = (r9.w * r9.x);
      r9.x = (r6.w * r9.x);
      let v_174 = fma(r9.xxx, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_174.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r9.x)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_175 = (v_18.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_175.xyz, r9.w);
      let v_176 = (v6.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      r9.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[22u].w);
      let v_177 = fma(cb3_3.tint_symbol_2[14u].xyz, r9.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      let v_178 = (r11.xyz + v_18.xyz);
      r11 = vec4<f32>(v_178.xyz, r11.w);
      let v_179 = bitcast<vec3<u32>>(r4.www);
      let v_180 = r9.xyz;
      let v_181 = select(r11.xyz, v_180, (v_179 != vec3<u32>()));
      r9 = vec4<f32>(v_181.xyz, r9.w);
      r4.w = dot(r9.xyz, r9.xyz);
      let v_182 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_182.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_183 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_183.xyz, r9.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r4.w, cb3_3.tint_symbol_2[14u].w);
      r4.w = (r4.w / r9.w);
      let v_184 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r9.w = dot(r9.xyz, v_184.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_185 = dot(r9.xyz, r1.xyz);
      r10.w = clamp(vec4<f32>(v_185, v_185, v_185, v_185).w, 0.0f, 1.0f);
      r9.w = (r9.w * r10.w);
      r10.w = (r4.w * r9.w);
      let v_186 = fma(r10.www, cb3_3.tint_symbol_2[22u].xyz, r10.xyz);
      r10 = vec4<f32>(v_186.xyz, r10.w);
      let v_187 = fma(r4.xyz, r1.www, r9.xyz);
      r4 = vec4<f32>(v_187.xyz, r4.w);
      r1.w = dot(r4.xyz, r4.xyz);
      r1.w = inverseSqrt(r1.w);
      let v_188 = (r1.www * r4.xyz);
      r4 = vec4<f32>(v_188.xyz, r4.w);
      let v_189 = dot(r4.xyz, r5.xyz);
      r1.w = clamp(vec4<f32>(v_189, v_189, v_189, v_189).w, 0.0f, 1.0f);
      r1.w = ((-(r1.wwww)).w + 1.0f);
      r5.x = (r1.w * r1.w);
      r5.x = (r5.x * r5.x);
      r1.w = (r1.w * r5.x);
      r1.w = fma(cb12_12.tint_symbol_4[0u].x, r1.w, r5.w);
      let v_190 = dot(r4.xyz, r1.xyz);
      r4.x = clamp(vec4<f32>(v_190, v_190, v_190, v_190).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r8.w);
      r4.x = exp2(r4.x);
      r1.w = (r1.w * r4.x);
      r1.w = (r9.w * r1.w);
      r1.w = (r4.w * r1.w);
      r1.w = (r6.w * r1.w);
      let v_191 = fma(r1.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_191.xyz, r8.w);
    }
  }
  r1.w = (r7.w * r7.w);
  r0.x = (r0.x * r0.x);
  let v_192 = (r8.xyz * r0.xxx);
  r4 = vec4<f32>(v_192.xyz, r4.w);
  let v_193 = fma(r1.www, r10.xyz, r4.xyz);
  r4 = vec4<f32>(v_193.xyz, r4.w);
  let v_194 = fma(r6.xyz, r3.www, r4.xyz);
  r4 = vec4<f32>(v_194.xyz, r4.w);
  r0.x = fma(r0.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_195 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_195.xyz, r5.w);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_196 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_196.xyz, r6.w);
  let v_197 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_197.xyz, r6.w);
  let v_198 = fma(r5.xyz, r0.zzz, r6.xyz);
  r5 = vec4<f32>(v_198.xyz, r5.w);
  let v_199 = (r3.yyy * r5.xyz);
  r5 = vec4<f32>(v_199.xyz, r5.w);
  let v_200 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(v_200.x, r0.y, v_200.yz);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_201 = dot(r6.xyz, r1.xyz);
  r1.x = clamp(vec4<f32>(v_201, v_201, v_201, v_201).x, 0.0f, 1.0f);
  let v_202 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r0.xzw);
  r0 = vec4<f32>(v_202.x, r0.y, v_202.yz);
  let v_203 = fma(r0.xzw, r3.xxx, r5.xyz);
  r0 = vec4<f32>(v_203.x, r0.y, v_203.yz);
  let v_204 = fma(r0.xzw, r7.www, r4.xyz);
  r0 = vec4<f32>(v_204.x, r0.y, v_204.yz);
  r1.x = ((-(r7.wwww)).x + 1.0f);
  r1.y = max(r3.y, r3.x);
  let v_205 = (r1.yyy * r2.xyz);
  r1 = vec4<f32>(r1.x, v_205.xyz);
  r2.x = clamp(((r2.wwww * vec4<f32>(0.00177619897294789553f))).x, 0.0f, 1.0f);
  let v_206 = (r1.yzw * r2.xxx);
  r2 = vec4<f32>(v_206.xyz, r2.w);
  let v_207 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_207.xyz, r2.w);
  let v_208 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_208.xyz);
  let v_209 = fma(r1.yzw, r1.xxx, r0.xzw);
  r0 = vec4<f32>(v_209.x, r0.y, v_209.yz);
  r1 = textureSample(t0, s0, v1.xy.xyxx.xy);
  let v_210 = (r1.xy * cb12_12.tint_symbol_4[2u].yz);
  r1 = vec4<f32>(v_210.xy, r1.zw);
  r0.y = sqrt(r0.y);
  r0.y = ((-(r0.yyyy)).y + cb12_12.tint_symbol_4[2u].w);
  r0.y = clamp(((r0.yyyy / cb12_12.tint_symbol_4[2u].wwww)).y, 0.0f, 1.0f);
  let v_211 = fma(r1.xy, r0.yy, v7.xy);
  r1 = vec4<f32>(v_211.xy, r1.zw);
  let v_212 = clamp(((r1.xyxx / cb2_2.tint_symbol_1[18u].xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_212.xy, r1.zw);
  r1 = textureSampleLevel(t1, s1, r1.xyxx.xy, 0.0f);
  let v_213 = -(r1.xyzx);
  let v_214 = (r0.xzw + v_213.xyz);
  r0 = vec4<f32>(v_214.xyz, r0.w);
  let v_215 = fma(r3.zzz, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_215.xyz, r0.w);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.x = sqrt(r0.w);
    let v_216 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_216.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r7.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_217 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_217 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_218 = (r0.www * r7.xyz);
    r2 = vec4<f32>(v_218.xyz, r2.w);
    let v_219 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_219, v_219, v_219, v_219).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_220 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_220, v_220, v_220, v_220).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_221 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_221.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_222 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_222.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_223 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_223.xyz, r2.w);
    let v_224 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_224.xyz, r2.w);
    let v_225 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_225.xyz, r3.w);
    let v_226 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_226.xyz, r2.w);
    let v_227 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_228 = (r2.xyz + v_227.xyz);
    r2 = vec4<f32>(v_228.xyz, r2.w);
    let v_229 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_229.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_230 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_230.xyz, r3.w);
    let v_231 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_231.xy, r1.z, v_231.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_232 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_232.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_233 = -(r0.xyxz);
    let v_234 = fma(r1.xyw, r0.www, v_233.xyw);
    r1 = vec4<f32>(v_234.xy, r1.z, v_234.z);
    let v_235 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_235.xyz, r1.w);
  } else {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.w = sqrt(r0.w);
    let v_236 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_236.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r7.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_237 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_237 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_238 = (r0.www * r7.xyz);
    r3 = vec4<f32>(v_238.xyz, r3.w);
    let v_239 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_239, v_239, v_239, v_239).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_240 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_240, v_240, v_240, v_240).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_241 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_241.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_242 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_242.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_243 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_243.xyz, r3.w);
    let v_244 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_244.xyz, r3.w);
    let v_245 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_245.xyz, r4.w);
    let v_246 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_246.xyz, r3.w);
    let v_247 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_248 = (r3.xyz + v_247.xyz);
    r3 = vec4<f32>(v_248.xyz, r3.w);
    let v_249 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_249.x, r2.y, v_249.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_250 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_250.xyz, r3.w);
    let v_251 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_251.x, r2.y, v_251.yz);
    let v_252 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_252.x, r2.y, v_252.yz);
    let v_253 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_253.xyz, r1.w);
  }
  let v_254 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_254.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_255 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_255);
  return o0;
}
