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

var<private> r26 : vec4<f32>;

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
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r0.z = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r0.z)));
  v_3((bitcast<u32>(r0.z) != 0u));
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_4 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_4.xy);
  r1.x = dot(r0.zw, r0.zw);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.x = sqrt(abs(r1.xxxx).x);
  r1.y = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_5 = (r0.zw * r1.yy);
  r0 = vec4<f32>(r0.xy, v_5.xy);
  let v_6 = (r0.www * v5.xyz);
  r1 = vec4<f32>(r1.x, v_6.xyz);
  let v_7 = fma(r0.zzz, v4.xyz, r1.yzw);
  r1 = vec4<f32>(r1.x, v_7.xyz);
  let v_8 = fma(r1.xxx, v2.xyz, r1.yzw);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_9 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_9.xy, r1.z, v_9.z);
  r2 = textureSample(t3, s3, v1.xy.xyxx.xy);
  let v_10 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r0.w = dot(r2.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r0.w = clamp(((r0.wwww * cb12_12.tint_symbol_4[0u].zzzz)).w, 0.0f, 1.0f);
  r2.x = dot(v3.xyz, v3.xyz);
  r2.y = inverseSqrt(r2.x);
  let v_11 = (r2.yyy * v3.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  r2.y = dot((-(r3.xyzx)).xyz, r1.xyw);
  r2.y = (r2.y + r2.y);
  let v_12 = -(r2.yyyy);
  let v_13 = -(r3.xyzx);
  let v_14 = fma(r1.xyw, v_12.xyz, v_13.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  r2.y = dot(r3.xyz, r3.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_15 = fma(r3.xz, r2.yy, vec2<f32>(1.0f));
  let v_16 = r2;
  r2 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  let v_17 = (r2.yz * vec2<f32>(-0.5f));
  let v_18 = r2;
  r2 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  r3 = textureSample(t4, s4, r2.yzyy.xy);
  let v_19 = (r3.xyz * cb12_12.tint_symbol_4[2u].xxx);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = (v0.xyw * cb2_2.tint_symbol_1[15u].zyx);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = -(v6.xyzx);
  let v_22 = (v_21.xyz + cb1_1.tint_symbol[15u].xyz);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  r2.y = dot(r5.xyz, r5.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_23 = (r2.yyy * r5.xyz);
  r6 = vec4<f32>(v_23.xyz, r6.w);
  let v_24 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_25 = fma(r5.xyz, r2.yyy, v_24.xyz);
  r7 = vec4<f32>(v_25.xyz, r7.w);
  r2.z = dot(r7.xyz, r7.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_26 = (r2.zzz * r7.xyz);
  r7 = vec4<f32>(v_26.xyz, r7.w);
  let v_27 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_27.xy, r4.zw);
  r2.z = fma(r2.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r2.z = max(r2.z, 0.0f);
  let v_28 = -(r2.zzzz);
  r2.w = fma(r2.w, cb12_12.tint_symbol_4[0u].y, v_28.w);
  r2.z = (r2.z * 558.0f);
  r2.z = fma(r2.w, 3.0f, r2.z);
  r2.w = dot(r5.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_29 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r8 = vec4<f32>(v_29.xyz, r8.w);
  let v_30 = (r8.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r9 = vec4<f32>(v_30.xyz, r9.w);
  let v_31 = fma(r8.xxx, cb6_6.tint_symbol_5[0u].xyz, r9.xyz);
  r9 = vec4<f32>(v_31.xyz, r9.w);
  let v_32 = fma(r8.zzz, cb6_6.tint_symbol_5[2u].xyz, r9.xyz);
  r9 = vec4<f32>(v_32.xyz, r9.w);
  let v_33 = fma(r9.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r10 = vec4<f32>(v_33.xyz, r10.w);
  let v_34 = &(x0[0u]);
  let v_35 = r10;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(r9.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r11 = vec4<f32>(v_36.xyz, r11.w);
  let v_37 = &(x0[1u]);
  let v_38 = r11;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  let v_39 = fma(r9.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r12 = vec4<f32>(v_39.xyz, r12.w);
  let v_40 = &(x0[2u]);
  let v_41 = r12;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = fma(r9.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r9 = vec4<f32>(v_42.xyz, r9.w);
  let v_43 = &(x0[3u]);
  let v_44 = r9;
  *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
  let v_45 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_46 = r13;
  r13 = vec4<f32>(v_46.x, v_45.x, v_46.z, v_45.y);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_47 = abs(r12.yyyy);
  r4.w = max(v_47.w, abs(r12.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_48 = (bitcast<u32>(r4.w) != 0u);
  let v_49 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_49, v_48);
  let v_50 = abs(r11.yyyy);
  r5.w = max(v_50.w, abs(r11.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_51 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_51 != 0u));
  let v_52 = abs(r10.yyyy);
  r5.w = max(v_52.w, abs(r10.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_53 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_53 != 0u));
  let v_54 = x0[bitcast<i32>(r3.w)];
  r10 = vec4<f32>(v_54.xyz, r10.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.w = (r3.w + 0.5f);
  r4.w = (r4.w * 0.25f);
  r11 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r11 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r11) & vec4<u32>(1065353216u)));
  r3.w = dot(r11, cb6_6.tint_symbol_5[12u]);
  r5.w = dot(r11, cb6_6.tint_symbol_5[13u]);
  r11.x = (r10.x + 0.5f);
  r11.y = fma(r10.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r10.z);
  let v_55 = dpdx(r11.xyy);
  r12 = vec4<f32>(v_55.xy, r12.z, v_55.z);
  r12.z = dpdx(r3.w);
  let v_56 = dpdy(r11.yxy);
  r14 = vec4<f32>(v_56.xyz, r14.w);
  r14.w = dpdy(r3.w);
  let v_57 = (r12.yw * r14.yw);
  r9 = vec4<f32>(r9.xy, v_57.xy);
  let v_58 = -(r9.zwzz);
  let v_59 = fma(r12.xz, r14.xz, v_58.xy);
  r15 = vec4<f32>(v_59.xy, r15.zw);
  r6.w = (1.0f / r15.x);
  r7.w = (r12.z * r14.y);
  let v_60 = -(r7.wwww);
  r15.z = fma(r12.x, r14.w, v_60.z);
  let v_61 = (r6.ww * r15.yz);
  r9 = vec4<f32>(r9.xy, v_61.xy);
  let v_62 = max(r9.zw, vec2<f32>());
  r9 = vec4<f32>(r9.xy, v_62.xy);
  let v_63 = min(r9.zw, vec2<f32>(0.5f));
  r9 = vec4<f32>(r9.xy, v_63.xy);
  r3.w = fma((-(r5.wwww)).w, r9.z, r3.w);
  r3.w = fma((-(r5.wwww)).w, r9.w, r3.w);
  let v_64 = bitcast<u32>(r4.w);
  let v_65 = r3.w;
  r13.z = select(r10.z, v_65, (v_64 != 0u));
  r11.z = 0.0f;
  let v_66 = (r11.xyz + r13.ywz);
  r10 = vec4<f32>(v_66.xyz, r10.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r13 = vec4<f32>(v_67.xy, r13.zw);
  let v_68 = (r11.xyz + r13.xyz);
  r12 = vec4<f32>(v_68.xyz, r12.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r13 = vec4<f32>(v_69.xy, r13.zw);
  let v_70 = (r11.xyz + r13.xyz);
  r14 = vec4<f32>(v_70.xyz, r14.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r13 = vec4<f32>(v_71.xy, r13.zw);
  let v_72 = (r11.xyz + r13.xyz);
  r15 = vec4<f32>(v_72.xyz, r15.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r13 = vec4<f32>(v_73.xy, r13.zw);
  let v_74 = (r11.xyz + r13.xyz);
  r16 = vec4<f32>(v_74.xyz, r16.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r13 = vec4<f32>(v_75.xy, r13.zw);
  let v_76 = (r11.xyz + r13.xyz);
  r17 = vec4<f32>(v_76.xyz, r17.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r13 = vec4<f32>(v_77.xy, r13.zw);
  let v_78 = (r11.xyz + r13.xyz);
  r18 = vec4<f32>(v_78.xyz, r18.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r13 = vec4<f32>(v_79.xy, r13.zw);
  let v_80 = (r11.xyz + r13.xyz);
  r19 = vec4<f32>(v_80.xyz, r19.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r13 = vec4<f32>(v_81.xy, r13.zw);
  let v_82 = (r11.xyz + r13.xyz);
  r20 = vec4<f32>(v_82.xyz, r20.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r13 = vec4<f32>(v_83.xy, r13.zw);
  let v_84 = (r11.xyz + r13.xyz);
  r21 = vec4<f32>(v_84.xyz, r21.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r13 = vec4<f32>(v_85.xy, r13.zw);
  let v_86 = (r11.xyz + r13.xyz);
  r22 = vec4<f32>(v_86.xyz, r22.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r13 = vec4<f32>(v_87.xy, r13.zw);
  let v_88 = (r11.xyz + r13.xyz);
  r23 = vec4<f32>(v_88.xyz, r23.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r13 = vec4<f32>(v_89.xy, r13.zw);
  let v_90 = (r11.xyz + r13.xyz);
  r24 = vec4<f32>(v_90.xyz, r24.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r13 = vec4<f32>(v_91.xy, r13.zw);
  let v_92 = (r11.xyz + r13.xyz);
  r25 = vec4<f32>(v_92.xyz, r25.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r13 = vec4<f32>(v_93.xy, r13.zw);
  let v_94 = (r11.xyz + r13.xyz);
  r26 = vec4<f32>(v_94.xyz, r26.w);
  let v_95 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r13 = vec4<f32>(v_95.xy, r13.zw);
  let v_96 = (r11.xyz + r13.xyz);
  r11 = vec4<f32>(v_96.xyz, r11.w);
  let v_97 = r10.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_97.xy, r10.z);
  let v_98 = r12.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_98.xy, r12.z);
  let v_99 = r14.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_99.xy, r14.z);
  let v_100 = r15.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_100.xy, r15.z);
  let v_101 = r16.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_101.xy, r16.z);
  let v_102 = r17.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_102.xy, r17.z);
  let v_103 = r18.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_103.xy, r18.z);
  let v_104 = r19.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_104.xy, r19.z);
  let v_105 = r20.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_105.xy, r20.z);
  let v_106 = r21.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_106.xy, r21.z);
  let v_107 = r22.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_107.xy, r22.z);
  let v_108 = r23.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_108.xy, r23.z);
  let v_109 = r24.xyxx;
  r14.x = textureSampleCompareLevel(t15, s15, v_109.xy, r24.z);
  let v_110 = r25.xyxx;
  r14.y = textureSampleCompareLevel(t15, s15, v_110.xy, r25.z);
  let v_111 = r26.xyxx;
  r14.z = textureSampleCompareLevel(t15, s15, v_111.xy, r26.z);
  let v_112 = r11.xyxx;
  r14.w = textureSampleCompareLevel(t15, s15, v_112.xy, r11.z);
  r10 = (r10 + r12);
  r10 = (r13 + r10);
  r10 = (r14 + r10);
  r3.w = dot(r10, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_113 = abs(r9.yyyy);
  r4.w = max(v_113.w, abs(r9.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r4.w * r2.w);
  r2.w = fma(r3.w, 0.0625f, r2.w);
  r2.w = (r2.w * r2.w);
  r2.w = min(r2.w, 1.0f);
  r3.w = clamp(fma(v6.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_5[3u].z);
  let v_114 = -(r2.wwww);
  r2.w = fma(r3.w, v_114.w, r2.w);
  let v_115 = dot(r1.xyw, v_24.xyz);
  r3.w = clamp(vec4<f32>(v_115, v_115, v_115, v_115).w, 0.0f, 1.0f);
  let v_116 = dot(r6.xyz, r1.xyw);
  r9.x = clamp(vec4<f32>(v_116, v_116, v_116, v_116).x, 0.0f, 1.0f);
  let v_117 = dot(r7.xyz, v_24.xyz);
  r9.y = clamp(vec4<f32>(v_117, v_117, v_117, v_117).y, 0.0f, 1.0f);
  let v_118 = ((-(r9.xyxx)).xy + vec2<f32>(1.0f));
  r9 = vec4<f32>(v_118.xy, r9.zw);
  let v_119 = (r9.xy * r9.xy);
  r9 = vec4<f32>(r9.xy, v_119.xy);
  let v_120 = (r9.zw * r9.zw);
  r9 = vec4<f32>(r9.xy, v_120.xy);
  let v_121 = (r9.xy * r9.zw);
  r9 = vec4<f32>(v_121.xy, r9.zw);
  r4.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_122 = fma(cb12_12.tint_symbol_4[0u].xx, r9.xy, r4.ww);
  r9 = vec4<f32>(v_122.xy, r9.zw);
  let v_123 = (r2.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r9 = vec4<f32>(r9.xy, v_123.xy);
  r5.w = (r9.z * 0.125f);
  r6.w = fma((-(r0.wwww)).w, r9.x, 1.0f);
  r7.x = dot(r1.xyw, r7.xyz);
  r7.x = clamp(((r7.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r7.x = log2(r7.x);
  r7.x = (r7.x * r9.w);
  r7.x = exp2(r7.x);
  r7.x = (r9.y * r7.x);
  r7.x = (r5.w * r7.x);
  r7.x = (r0.w * r7.x);
  r7.x = (r3.w * r7.x);
  r3.w = fma(r3.w, r6.w, r7.x);
  let v_124 = (r3.www * cb3_3.tint_symbol_2[1u].xyz);
  r7 = vec4<f32>(v_124.xyz, r7.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_125 = (v_21.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_125.xyz, r9.w);
    let v_126 = (v6.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_126.xyz, r10.w);
    r8.w = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r8.w = (r8.w * cb3_3.tint_symbol_2[19u].w);
    let v_127 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.www, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_127.xyz, r10.w);
    let v_128 = (r10.xyz + v_21.xyz);
    r10 = vec4<f32>(v_128.xyz, r10.w);
    let v_129 = bitcast<vec3<u32>>(r7.www);
    let v_130 = r9.xyz;
    let v_131 = select(r10.xyz, v_130, (v_129 != vec3<u32>()));
    r9 = vec4<f32>(v_131.xyz, r9.w);
    r7.w = dot(r9.xyz, r9.xyz);
    let v_132 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_132.xyz, r9.w);
    r8.w = dot(r9.xyz, r9.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_133 = (r8.www * r9.xyz);
    r9 = vec4<f32>(v_133.xyz, r9.w);
    r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r8.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[11u].w);
    r7.w = (r7.w / r8.w);
    let v_134 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.w = dot(r9.xyz, v_134.xyz);
    r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_135 = dot(r9.xyz, r1.xyw);
    r10.x = clamp(vec4<f32>(v_135, v_135, v_135, v_135).x, 0.0f, 1.0f);
    r8.w = (r8.w * r10.x);
    r10.x = (r7.w * r8.w);
    let v_136 = (r10.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_136.xyz, r10.w);
    let v_137 = fma(r5.xyz, r2.yyy, r9.xyz);
    r9 = vec4<f32>(v_137.xyz, r9.w);
    r10.w = dot(r9.xyz, r9.xyz);
    r10.w = inverseSqrt(r10.w);
    let v_138 = (r9.xyz * r10.www);
    r9 = vec4<f32>(v_138.xyz, r9.w);
    let v_139 = dot(r9.xyz, r6.xyz);
    r10.w = clamp(vec4<f32>(v_139, v_139, v_139, v_139).w, 0.0f, 1.0f);
    r10.w = ((-(r10.wwww)).w + 1.0f);
    r11.x = (r10.w * r10.w);
    r11.x = (r11.x * r11.x);
    r10.w = (r10.w * r11.x);
    r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
    let v_140 = dot(r9.xyz, r1.xyw);
    r9.x = clamp(vec4<f32>(v_140, v_140, v_140, v_140).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r9.x * r9.w);
    r9.x = exp2(r9.x);
    r9.x = (r9.x * r10.w);
    r8.w = (r8.w * r9.x);
    r7.w = (r7.w * r8.w);
    r7.w = (r5.w * r7.w);
    let v_141 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_141.xyz, r9.w);
  }
  r7.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.w) != 0u)) {
    r8.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    let v_142 = bitcast<u32>(r8.w);
    let v_143 = r7.w;
    r3.w = select(r3.w, v_143, (v_142 != 0u));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_144 = (v_21.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_144.xyz, r11.w);
      let v_145 = (v6.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_145.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[20u].w);
      let v_146 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.www, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_146.xyz, r12.w);
      let v_147 = (r12.xyz + v_21.xyz);
      r12 = vec4<f32>(v_147.xyz, r12.w);
      let v_148 = bitcast<vec3<u32>>(r7.www);
      let v_149 = r11.xyz;
      let v_150 = select(r12.xyz, v_149, (v_148 != vec3<u32>()));
      r11 = vec4<f32>(v_150.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      let v_151 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_151.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_152 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_152.xyz, r11.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[12u].w);
      r7.w = (r7.w / r8.w);
      let v_153 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.w = dot(r11.xyz, v_153.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_154 = dot(r11.xyz, r1.xyw);
      r10.w = clamp(vec4<f32>(v_154, v_154, v_154, v_154).w, 0.0f, 1.0f);
      r8.w = (r8.w * r10.w);
      r10.w = (r7.w * r8.w);
      let v_155 = fma(r10.www, cb3_3.tint_symbol_2[20u].xyz, r10.xyz);
      r10 = vec4<f32>(v_155.xyz, r10.w);
      let v_156 = fma(r5.xyz, r2.yyy, r11.xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_157 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      let v_158 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_158, v_158, v_158, v_158).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_159 = dot(r11.xyz, r1.xyw);
      r11.x = clamp(vec4<f32>(v_159, v_159, v_159, v_159).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r9.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r7.w = (r5.w * r7.w);
      let v_160 = fma(r7.www, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_160.xyz, r9.w);
    }
  } else {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_161 = (v_21.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_161.xyz, r11.w);
      let v_162 = (v6.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_162.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[21u].w);
      let v_163 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.www, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_163.xyz, r12.w);
      let v_164 = (r12.xyz + v_21.xyz);
      r12 = vec4<f32>(v_164.xyz, r12.w);
      let v_165 = bitcast<vec3<u32>>(r7.www);
      let v_166 = r11.xyz;
      let v_167 = select(r12.xyz, v_166, (v_165 != vec3<u32>()));
      r11 = vec4<f32>(v_167.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      let v_168 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_168.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_169 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[13u].w);
      r7.w = (r7.w / r8.w);
      let v_170 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.w = dot(r11.xyz, v_170.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_171 = dot(r11.xyz, r1.xyw);
      r10.w = clamp(vec4<f32>(v_171, v_171, v_171, v_171).w, 0.0f, 1.0f);
      r8.w = (r8.w * r10.w);
      r10.w = (r7.w * r8.w);
      let v_172 = fma(r10.www, cb3_3.tint_symbol_2[21u].xyz, r10.xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = fma(r5.xyz, r2.yyy, r11.xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_174 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_175, v_175, v_175, v_175).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_176 = dot(r11.xyz, r1.xyw);
      r11.x = clamp(vec4<f32>(v_176, v_176, v_176, v_176).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r9.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r7.w = (r5.w * r7.w);
      let v_177 = fma(r7.www, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_177.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_178 = (v_21.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_178.xyz, r11.w);
      let v_179 = (v6.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_179.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[22u].w);
      let v_180 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.www, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_180.xyz, r12.w);
      let v_181 = (r12.xyz + v_21.xyz);
      r12 = vec4<f32>(v_181.xyz, r12.w);
      let v_182 = bitcast<vec3<u32>>(r7.www);
      let v_183 = r11.xyz;
      let v_184 = select(r12.xyz, v_183, (v_182 != vec3<u32>()));
      r11 = vec4<f32>(v_184.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      let v_185 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_185.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_186 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[14u].w);
      r7.w = (r7.w / r8.w);
      let v_187 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.w = dot(r11.xyz, v_187.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_188 = dot(r11.xyz, r1.xyw);
      r10.w = clamp(vec4<f32>(v_188, v_188, v_188, v_188).w, 0.0f, 1.0f);
      r8.w = (r8.w * r10.w);
      r10.w = (r7.w * r8.w);
      let v_189 = fma(r10.www, cb3_3.tint_symbol_2[22u].xyz, r10.xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      let v_190 = fma(r5.xyz, r2.yyy, r11.xyz);
      r11 = vec4<f32>(v_190.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_191 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_191.xyz, r11.w);
      let v_192 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_192, v_192, v_192, v_192).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_193 = dot(r11.xyz, r1.xyw);
      r11.x = clamp(vec4<f32>(v_193, v_193, v_193, v_193).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r9.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r7.w = (r5.w * r7.w);
      let v_194 = fma(r7.www, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_194.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_195 = (v_21.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      let v_196 = (v6.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r12 = vec4<f32>(v_196.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[23u].w);
      let v_197 = fma(cb3_3.tint_symbol_2[15u].xyz, r8.www, cb3_3.tint_symbol_2[7u].xyz);
      r12 = vec4<f32>(v_197.xyz, r12.w);
      let v_198 = (r12.xyz + v_21.xyz);
      r12 = vec4<f32>(v_198.xyz, r12.w);
      let v_199 = bitcast<vec3<u32>>(r7.www);
      let v_200 = r11.xyz;
      let v_201 = select(r12.xyz, v_200, (v_199 != vec3<u32>()));
      r11 = vec4<f32>(v_201.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      let v_202 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_202.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_203 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_203.xyz, r11.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[15u].w);
      r7.w = (r7.w / r8.w);
      let v_204 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r8.w = dot(r11.xyz, v_204.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_205 = dot(r11.xyz, r1.xyw);
      r10.w = clamp(vec4<f32>(v_205, v_205, v_205, v_205).w, 0.0f, 1.0f);
      r8.w = (r8.w * r10.w);
      r10.w = (r7.w * r8.w);
      let v_206 = fma(r10.www, cb3_3.tint_symbol_2[23u].xyz, r10.xyz);
      r10 = vec4<f32>(v_206.xyz, r10.w);
      let v_207 = fma(r5.xyz, r2.yyy, r11.xyz);
      r11 = vec4<f32>(v_207.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_208 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_208.xyz, r11.w);
      let v_209 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_209, v_209, v_209, v_209).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_210 = dot(r11.xyz, r1.xyw);
      r11.x = clamp(vec4<f32>(v_210, v_210, v_210, v_210).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r9.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r7.w = (r5.w * r7.w);
      let v_211 = fma(r7.www, cb3_3.tint_symbol_2[23u].xyz, r9.xyz);
      r9 = vec4<f32>(v_211.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_212 = (v_21.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_212.xyz, r11.w);
      let v_213 = (v6.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r12 = vec4<f32>(v_213.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[24u].w);
      let v_214 = fma(cb3_3.tint_symbol_2[16u].xyz, r8.www, cb3_3.tint_symbol_2[8u].xyz);
      r12 = vec4<f32>(v_214.xyz, r12.w);
      let v_215 = (r12.xyz + v_21.xyz);
      r12 = vec4<f32>(v_215.xyz, r12.w);
      let v_216 = bitcast<vec3<u32>>(r7.www);
      let v_217 = r11.xyz;
      let v_218 = select(r12.xyz, v_217, (v_216 != vec3<u32>()));
      r11 = vec4<f32>(v_218.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      let v_219 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_219.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_220 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_220.xyz, r11.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[16u].w);
      r7.w = (r7.w / r8.w);
      let v_221 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r8.w = dot(r11.xyz, v_221.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_222 = dot(r11.xyz, r1.xyw);
      r10.w = clamp(vec4<f32>(v_222, v_222, v_222, v_222).w, 0.0f, 1.0f);
      r8.w = (r8.w * r10.w);
      r10.w = (r7.w * r8.w);
      let v_223 = fma(r10.www, cb3_3.tint_symbol_2[24u].xyz, r10.xyz);
      r10 = vec4<f32>(v_223.xyz, r10.w);
      let v_224 = fma(r5.xyz, r2.yyy, r11.xyz);
      r11 = vec4<f32>(v_224.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_225 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_225.xyz, r11.w);
      let v_226 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_226, v_226, v_226, v_226).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_227 = dot(r11.xyz, r1.xyw);
      r11.x = clamp(vec4<f32>(v_227, v_227, v_227, v_227).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r9.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r7.w = (r5.w * r7.w);
      let v_228 = fma(r7.www, cb3_3.tint_symbol_2[24u].xyz, r9.xyz);
      r9 = vec4<f32>(v_228.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_229 = (v_21.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_229.xyz, r11.w);
      let v_230 = (v6.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r12 = vec4<f32>(v_230.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[25u].w);
      let v_231 = fma(cb3_3.tint_symbol_2[17u].xyz, r8.www, cb3_3.tint_symbol_2[9u].xyz);
      r12 = vec4<f32>(v_231.xyz, r12.w);
      let v_232 = (r12.xyz + v_21.xyz);
      r12 = vec4<f32>(v_232.xyz, r12.w);
      let v_233 = bitcast<vec3<u32>>(r7.www);
      let v_234 = r11.xyz;
      let v_235 = select(r12.xyz, v_234, (v_233 != vec3<u32>()));
      r11 = vec4<f32>(v_235.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      let v_236 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_236.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_237 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_237.xyz, r11.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[17u].w);
      r7.w = (r7.w / r8.w);
      let v_238 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r8.w = dot(r11.xyz, v_238.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_239 = dot(r11.xyz, r1.xyw);
      r10.w = clamp(vec4<f32>(v_239, v_239, v_239, v_239).w, 0.0f, 1.0f);
      r8.w = (r8.w * r10.w);
      r10.w = (r7.w * r8.w);
      let v_240 = fma(r10.www, cb3_3.tint_symbol_2[25u].xyz, r10.xyz);
      r10 = vec4<f32>(v_240.xyz, r10.w);
      let v_241 = fma(r5.xyz, r2.yyy, r11.xyz);
      r11 = vec4<f32>(v_241.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_242 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_242.xyz, r11.w);
      let v_243 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_243, v_243, v_243, v_243).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r4.w);
      let v_244 = dot(r11.xyz, r1.xyw);
      r11.x = clamp(vec4<f32>(v_244, v_244, v_244, v_244).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r9.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r7.w = (r5.w * r7.w);
      let v_245 = fma(r7.www, cb3_3.tint_symbol_2[25u].xyz, r9.xyz);
      r9 = vec4<f32>(v_245.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_246 = (v_21.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_246.xyz, r11.w);
      let v_247 = (v6.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r12 = vec4<f32>(v_247.xyz, r12.w);
      r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[26u].w);
      let v_248 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.www, cb3_3.tint_symbol_2[10u].xyz);
      r12 = vec4<f32>(v_248.xyz, r12.w);
      let v_249 = (r12.xyz + v_21.xyz);
      r12 = vec4<f32>(v_249.xyz, r12.w);
      let v_250 = bitcast<vec3<u32>>(r3.www);
      let v_251 = r11.xyz;
      let v_252 = select(r12.xyz, v_251, (v_250 != vec3<u32>()));
      r11 = vec4<f32>(v_252.xyz, r11.w);
      r3.w = dot(r11.xyz, r11.xyz);
      let v_253 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_253.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_254 = (r7.www * r11.xyz);
      r11 = vec4<f32>(v_254.xyz, r11.w);
      r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r3.w, cb3_3.tint_symbol_2[18u].w);
      r3.w = (r3.w / r7.w);
      let v_255 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.w = dot(r11.xyz, v_255.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_256 = dot(r11.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_256, v_256, v_256, v_256).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r3.w * r7.w);
      let v_257 = fma(r8.www, cb3_3.tint_symbol_2[26u].xyz, r10.xyz);
      r10 = vec4<f32>(v_257.xyz, r10.w);
      let v_258 = fma(r5.xyz, r2.yyy, r11.xyz);
      r5 = vec4<f32>(v_258.xyz, r5.w);
      r2.y = dot(r5.xyz, r5.xyz);
      r2.y = inverseSqrt(r2.y);
      let v_259 = (r2.yyy * r5.xyz);
      r5 = vec4<f32>(v_259.xyz, r5.w);
      let v_260 = dot(r5.xyz, r6.xyz);
      r2.y = clamp(vec4<f32>(v_260, v_260, v_260, v_260).y, 0.0f, 1.0f);
      r2.y = ((-(r2.yyyy)).y + 1.0f);
      r6.x = (r2.y * r2.y);
      r6.x = (r6.x * r6.x);
      r2.y = (r2.y * r6.x);
      r2.y = fma(cb12_12.tint_symbol_4[0u].x, r2.y, r4.w);
      let v_261 = dot(r5.xyz, r1.xyw);
      r4.w = clamp(vec4<f32>(v_261, v_261, v_261, v_261).w, 0.0f, 1.0f);
      r4.w = log2(r4.w);
      r4.w = (r4.w * r9.w);
      r4.w = exp2(r4.w);
      r2.y = (r2.y * r4.w);
      r2.y = (r7.w * r2.y);
      r2.y = (r3.w * r2.y);
      r2.y = (r5.w * r2.y);
      let v_262 = fma(r2.yyy, cb3_3.tint_symbol_2[26u].xyz, r9.xyz);
      r9 = vec4<f32>(v_262.xyz, r9.w);
    }
  }
  r2.y = (r6.w * r6.w);
  r0.w = (r0.w * r0.w);
  let v_263 = (r9.xyz * r0.www);
  r5 = vec4<f32>(v_263.xyz, r5.w);
  let v_264 = fma(r2.yyy, r10.xyz, r5.xyz);
  r5 = vec4<f32>(v_264.xyz, r5.w);
  let v_265 = fma(r7.xyz, r2.www, r5.xyz);
  r5 = vec4<f32>(v_265.xyz, r5.w);
  r0.z = fma(r1.z, r0.z, cb3_3.tint_symbol_2[43u].w);
  r0.z = (r0.z * cb3_3.tint_symbol_2[44u].w);
  r0.z = max(r0.z, 0.0f);
  let v_266 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_266.xyz, r6.w);
  r0.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_267 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_267.xyz, r7.w);
  let v_268 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_268.xyz, r7.w);
  let v_269 = fma(r6.xyz, r0.www, r7.xyz);
  r6 = vec4<f32>(v_269.xyz, r6.w);
  let v_270 = (r4.yyy * r6.xyz);
  r6 = vec4<f32>(v_270.xyz, r6.w);
  let v_271 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(v_271.xyz, r7.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_272 = dot(r9.xyz, r1.xyw);
  r0.z = clamp(vec4<f32>(v_272, v_272, v_272, v_272).z, 0.0f, 1.0f);
  let v_273 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.zzz, r7.xyz);
  r1 = vec4<f32>(v_273.xyz, r1.w);
  let v_274 = fma(r1.xyz, r4.xxx, r6.xyz);
  r1 = vec4<f32>(v_274.xyz, r1.w);
  let v_275 = fma(r1.xyz, r6.www, r5.xyz);
  r1 = vec4<f32>(v_275.xyz, r1.w);
  r0.z = ((-(r6.wwww)).z + 1.0f);
  r0.w = max(r4.y, r4.x);
  let v_276 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_276.xyz, r3.w);
  r0.w = clamp(((r2.zzzz * vec4<f32>(0.00177619897294789553f))).w, 0.0f, 1.0f);
  let v_277 = (r0.www * r3.xyz);
  r2 = vec4<f32>(r2.x, v_277.xyz);
  let v_278 = (r2.yzw * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(r2.x, v_278.xyz);
  let v_279 = fma(r3.xyz, vec3<f32>(0.31830990314483642578f), r2.yzw);
  r2 = vec4<f32>(r2.x, v_279.xyz);
  let v_280 = fma(r2.yzw, r0.zzz, r1.xyz);
  r1 = vec4<f32>(v_280.xyz, r1.w);
  let v_281 = (r0.xy * cb12_12.tint_symbol_4[2u].yz);
  r0 = vec4<f32>(v_281.xy, r0.zw);
  r0.z = sqrt(r2.x);
  r0.z = ((-(r0.zzzz)).z + cb12_12.tint_symbol_4[2u].w);
  r0.z = clamp(((r0.zzzz / cb12_12.tint_symbol_4[2u].wwww)).z, 0.0f, 1.0f);
  let v_282 = fma(r0.xy, r0.zz, v7.xy);
  r0 = vec4<f32>(v_282.xy, r0.zw);
  let v_283 = clamp(((r0.xyxx / cb2_2.tint_symbol_1[18u].xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_283.xy, r0.zw);
  r0 = textureSampleLevel(t1, s1, r0.xyxx.xy, 0.0f);
  let v_284 = ((-(r0.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_284.xyz, r1.w);
  let v_285 = fma(r4.zzz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_285.xyz, r0.w);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r8.xyz, r8.xyz);
    r1.x = sqrt(r0.w);
    let v_286 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_286.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r8.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_287 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_287 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_288 = (r0.www * r8.xyz);
    r2 = vec4<f32>(v_288.xyz, r2.w);
    let v_289 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_289, v_289, v_289, v_289).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_290 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_290, v_290, v_290, v_290).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_291 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_291.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_292 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_292.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_293 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_293.xyz, r2.w);
    let v_294 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_294.xyz, r2.w);
    let v_295 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_295.xyz, r3.w);
    let v_296 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_296.xyz, r2.w);
    let v_297 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_298 = (r2.xyz + v_297.xyz);
    r2 = vec4<f32>(v_298.xyz, r2.w);
    let v_299 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_299.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_300 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_300.xyz, r3.w);
    let v_301 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_301.xy, r1.z, v_301.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_302 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_302.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_303 = -(r0.xyxz);
    let v_304 = fma(r1.xyw, r0.www, v_303.xyw);
    r1 = vec4<f32>(v_304.xy, r1.z, v_304.z);
    let v_305 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_305.xyz, r1.w);
  } else {
    r0.w = dot(r8.xyz, r8.xyz);
    r1.w = sqrt(r0.w);
    let v_306 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_306.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r8.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_307 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_307 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_308 = (r0.www * r8.xyz);
    r3 = vec4<f32>(v_308.xyz, r3.w);
    let v_309 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_309, v_309, v_309, v_309).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_310 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_310, v_310, v_310, v_310).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_311 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_311.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_312 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_312.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_313 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_313.xyz, r3.w);
    let v_314 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_314.xyz, r3.w);
    let v_315 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_315.xyz, r4.w);
    let v_316 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_316.xyz, r3.w);
    let v_317 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_318 = (r3.xyz + v_317.xyz);
    r3 = vec4<f32>(v_318.xyz, r3.w);
    let v_319 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_319.x, r2.y, v_319.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_320 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_320.xyz, r3.w);
    let v_321 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_321.x, r2.y, v_321.yz);
    let v_322 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_322.x, r2.y, v_322.yz);
    let v_323 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_323.xyz, r1.w);
  }
  let v_324 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_324.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_3(v_325 : bool) {
  if (v_325) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_326 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_326);
  return o0;
}
