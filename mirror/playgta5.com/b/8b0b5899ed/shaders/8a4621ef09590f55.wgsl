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

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  let v_3 = (v2.xy * cb11_11.tint_symbol_5[0u].zw);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r2 = textureSample(t3, s3, r1.xyxx.xy);
  let v_4 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_4.xy);
  let v_5 = (r1.xy * vec2<f32>(3.1700000762939453125f));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r2 = textureSample(t3, s3, r1.xyxx.xy);
  let v_6 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = (r1.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = fma(r1.zw, vec2<f32>(0.5f), r1.xy);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r1.z = fma((-(r1.xxxx)).z, cb11_11.tint_symbol_5[0u].x, 1.0f);
  r0 = (r0 * r1.zzzz);
  r2 = textureSample(t5, s5, v2.xy.xyxx.xy);
  let v_9 = fma(r1.xy, cb11_11.tint_symbol_5[0u].yy, r2.xy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  let v_10 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_10.xy, r1.zw);
  r1.w = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r2.x = max(cb12_12.tint_symbol_4[1u].x, 0.00100000004749745131f);
  let v_11 = (r1.xy * r2.xx);
  r1 = vec4<f32>(v_11.xy, r1.zw);
  let v_12 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = fma(r1.xxx, v4.xyz, r2.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = fma(r1.www, v3.xyz, r2.xyz);
  r1 = vec4<f32>(v_14.xy, r1.z, v_14.z);
  r2.x = dot(r1.xyw, r1.xyw);
  r2.x = inverseSqrt(r2.x);
  let v_15 = (r1.xyw * r2.xxx);
  r2 = vec4<f32>(r2.x, v_15.xyz);
  r1.x = clamp(((r1.zzzz * cb12_12.tint_symbol_4[0u].wwww)).x, 0.0f, 1.0f);
  let v_16 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r0.w = (r0.w * v0.w);
  let v_17 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_18 = r1;
  r1 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  let v_19 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = -(v6.xyzx);
  let v_21 = (v_20.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_22 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_24 = fma(r3.xyz, r3.www, v_23.xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_25 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  let v_26 = (r1.yz * r1.yz);
  let v_27 = r1;
  r1 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
  r4.w = (cb12_12.tint_symbol_4[0u].z + -500.0f);
  r4.w = max(r4.w, 0.0f);
  r5.w = ((-(r4.wwww)).w + cb12_12.tint_symbol_4[0u].z);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r5.w, 3.0f, r4.w);
  r5.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_28 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_28.xyz, r6.w);
  let v_29 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_29.xyz, r7.w);
  let v_30 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_30.xyz, r7.w);
  let v_31 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_31.xyz, r7.w);
  let v_32 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_32.xyz, r8.w);
  let v_33 = &(x0[0u]);
  let v_34 = r8;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_35.xyz, r9.w);
  let v_36 = &(x0[1u]);
  let v_37 = r9;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_38.xyz, r10.w);
  let v_39 = &(x0[2u]);
  let v_40 = r10;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  let v_42 = &(x0[3u]);
  let v_43 = r7;
  *(v_42) = vec4<f32>(v_43.xyz, (*(v_42)).w);
  let v_44 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_45 = r11;
  r11 = vec4<f32>(v_45.x, v_44.x, v_45.z, v_44.y);
  r6.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r6.w = (r6.w * 0.5f);
  let v_46 = abs(r10.yyyy);
  r7.z = max(v_46.z, abs(r10.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r6.w)));
  let v_47 = (bitcast<u32>(r7.z) != 0u);
  let v_48 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r7.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_48, v_47);
  let v_49 = abs(r9.yyyy);
  r7.w = max(v_49.w, abs(r9.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_50 = bitcast<u32>(r7.w);
  r7.z = select(r7.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_50 != 0u));
  let v_51 = abs(r8.yyyy);
  r7.w = max(v_51.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_52 = bitcast<u32>(r6.w);
  r6.w = select(r7.z, 0.0f, (v_52 != 0u));
  let v_53 = x0[bitcast<i32>(r6.w)];
  r8 = vec4<f32>(v_53.xyz, r8.w);
  r6.w = f32(bitcast<i32>(r6.w));
  r7.z = (r6.w + 0.5f);
  r7.z = (r7.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r6.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r6.w = dot(r9, cb6_6.tint_symbol_6[12u]);
  r7.w = dot(r9, cb6_6.tint_symbol_6[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r7.z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 0.0f))));
  r6.w = ((-(r6.wwww)).w + r8.z);
  let v_54 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_54.xy, r10.z, v_54.z);
  r10.z = dpdx(r6.w);
  let v_55 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_55.xyz, r12.w);
  r12.w = dpdy(r6.w);
  let v_56 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_56.xy, r8.zw);
  let v_57 = -(r8.xyxx);
  let v_58 = fma(r10.xz, r12.xz, v_57.xy);
  r13 = vec4<f32>(v_58.xy, r13.zw);
  r8.x = (1.0f / r13.x);
  r8.y = (r10.z * r12.y);
  let v_59 = -(r8.yyyy);
  r13.z = fma(r10.x, r12.w, v_59.z);
  let v_60 = (r8.xx * r13.yz);
  r8 = vec4<f32>(v_60.xy, r8.zw);
  let v_61 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_61.xy, r8.zw);
  let v_62 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_62.xy, r8.zw);
  r6.w = fma((-(r7.wwww)).w, r8.x, r6.w);
  r6.w = fma((-(r7.wwww)).w, r8.y, r6.w);
  let v_63 = bitcast<u32>(r7.z);
  let v_64 = r6.w;
  r11.z = select(r8.z, v_64, (v_63 != 0u));
  r9.z = 0.0f;
  let v_65 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_65.xyz, r8.w);
  let v_66 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_66.xy, r11.zw);
  let v_67 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_67.xyz, r10.w);
  let v_68 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_68.xy, r11.zw);
  let v_69 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_69.xyz, r12.w);
  let v_70 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_70.xy, r11.zw);
  let v_71 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_71.xyz, r13.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_72.xy, r11.zw);
  let v_73 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_73.xyz, r14.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_74.xy, r11.zw);
  let v_75 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_75.xyz, r15.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_77.xyz, r16.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_79.xyz, r17.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_81.xyz, r18.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_83.xyz, r19.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_85.xyz, r20.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_86.xy, r11.zw);
  let v_87 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_87.xyz, r21.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_88.xy, r11.zw);
  let v_89 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_89.xyz, r22.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_90.xy, r11.zw);
  let v_91 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_91.xyz, r23.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_92.xy, r11.zw);
  let v_93 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_93.xyz, r24.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_94.xy, r11.zw);
  let v_95 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_95.xyz, r9.w);
  let v_96 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_96.xy, r8.z);
  let v_97 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_97.xy, r10.z);
  let v_98 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_98.xy, r12.z);
  let v_99 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_99.xy, r13.z);
  let v_100 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_100.xy, r14.z);
  let v_101 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_101.xy, r15.z);
  let v_102 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_102.xy, r16.z);
  let v_103 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_103.xy, r17.z);
  let v_104 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_104.xy, r18.z);
  let v_105 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_105.xy, r19.z);
  let v_106 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_106.xy, r20.z);
  let v_107 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_107.xy, r21.z);
  let v_108 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_108.xy, r22.z);
  let v_109 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_109.xy, r23.z);
  let v_110 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_110.xy, r24.z);
  let v_111 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_111.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r6.w = dot(r8, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_112 = abs(r7.yyyy);
  r7.x = max(v_112.x, abs(r7.xxxx).x);
  r7.x = clamp(fma(r7.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r7.x * r5.w);
  r5.w = fma(r6.w, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.w = clamp(fma(v6.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r6.w = sqrt(r6.w);
  r6.w = (r6.w * cb6_6.tint_symbol_6[3u].z);
  let v_113 = -(r5.wwww);
  r5.w = fma(r6.w, v_113.w, r5.w);
  let v_114 = dot(r2.yzw, v_23.xyz);
  r6.w = clamp(vec4<f32>(v_114, v_114, v_114, v_114).w, 0.0f, 1.0f);
  let v_115 = dot(r4.xyz, r2.yzw);
  r7.x = clamp(vec4<f32>(v_115, v_115, v_115, v_115).x, 0.0f, 1.0f);
  let v_116 = dot(r5.xyz, v_23.xyz);
  r7.y = clamp(vec4<f32>(v_116, v_116, v_116, v_116).y, 0.0f, 1.0f);
  let v_117 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_117.xy, r7.zw);
  let v_118 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_118.xy);
  let v_119 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_119.xy);
  let v_120 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_120.xy, r7.zw);
  r7.z = ((-(cb12_12.tint_symbol_4[0u].yyyy)).z + 1.0f);
  let v_121 = fma(cb12_12.tint_symbol_4[0u].yy, r7.xy, r7.zz);
  r7 = vec4<f32>(v_121.xy, r7.zw);
  let v_122 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_122.xy, r8.zw);
  r4.w = (r8.x * 0.125f);
  r7.x = fma((-(r1.xxxx)).x, r7.x, 1.0f);
  r5.x = dot(r2.yzw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r4.w * r5.x);
  r5.x = (r1.x * r5.x);
  r5.x = (r6.w * r5.x);
  r5.y = (r6.w * r7.x);
  let v_123 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_123.xyz, r5.w);
  let v_124 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_124.xyz, r5.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(0.0f, r8.y, vec2<f32>());
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_125 = ((-(v6.xxyz)).xzw + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_125.x, r8.y, v_125.yz);
    let v_126 = (v6.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_126.xyz, r9.w);
    r7.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_127 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_127.xyz, r9.w);
    let v_128 = (r9.xyz + v_20.xyz);
    r9 = vec4<f32>(v_128.xyz, r9.w);
    let v_129 = bitcast<vec3<u32>>(r7.yyy);
    let v_130 = r8.xzw;
    let v_131 = select(r9.xyz, v_130, (v_129 != vec3<u32>()));
    r8 = vec4<f32>(v_131.x, r8.y, v_131.yz);
    r7.y = dot(r8.xzw, r8.xzw);
    let v_132 = (r8.xzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_132.x, r8.y, v_132.yz);
    r7.w = dot(r8.xzw, r8.xzw);
    r7.w = inverseSqrt(r7.w);
    let v_133 = (r7.www * r8.xzw);
    r8 = vec4<f32>(v_133.x, r8.y, v_133.yz);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r7.w);
    let v_134 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r8.xzw, v_134.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_135 = dot(r8.xzw, r2.yzw);
    r9.x = clamp(vec4<f32>(v_135, v_135, v_135, v_135).x, 0.0f, 1.0f);
    r7.w = (r7.w * r9.x);
    r9.x = (r7.y * r7.w);
    let v_136 = (r9.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_136.xyz, r9.w);
    let v_137 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_137.xyz, r9.w);
    let v_138 = fma(r3.xyz, r3.www, r8.xzw);
    r8 = vec4<f32>(v_138.x, r8.y, v_138.yz);
    r9.w = dot(r8.xzw, r8.xzw);
    r9.w = inverseSqrt(r9.w);
    let v_139 = (r8.xzw * r9.www);
    r8 = vec4<f32>(v_139.x, r8.y, v_139.yz);
    let v_140 = dot(r8.xzw, r4.xyz);
    r9.w = clamp(vec4<f32>(v_140, v_140, v_140, v_140).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.x = (r9.w * r9.w);
    r10.x = (r10.x * r10.x);
    r9.w = (r9.w * r10.x);
    r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
    let v_141 = dot(r8.xzw, r2.yzw);
    r8.x = clamp(vec4<f32>(v_141, v_141, v_141, v_141).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.y);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.w);
    r7.w = (r7.w * r8.x);
    r7.y = (r7.y * r7.w);
    r7.y = (r4.w * r7.y);
    let v_142 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_142.x, r8.y, v_142.yz);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    let v_143 = bitcast<u32>(r7.w);
    let v_144 = r7.y;
    r6.w = select(r6.w, v_144, (v_143 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_145 = (v_20.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_145.xyz, r10.w);
      let v_146 = (v6.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_146.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_147 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_147.xyz, r11.w);
      let v_148 = (r11.xyz + v_20.xyz);
      r11 = vec4<f32>(v_148.xyz, r11.w);
      let v_149 = bitcast<vec3<u32>>(r7.yyy);
      let v_150 = r10.xyz;
      let v_151 = select(r11.xyz, v_150, (v_149 != vec3<u32>()));
      r10 = vec4<f32>(v_151.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_152 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_152.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_153 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_153.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r7.w);
      let v_154 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r10.xyz, v_154.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_155 = dot(r10.xyz, r2.yzw);
      r9.w = clamp(vec4<f32>(v_155, v_155, v_155, v_155).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_156 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      let v_157 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_157.xyz, r9.w);
      let v_158 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_158.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_159 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_159.xyz, r10.w);
      let v_160 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_160, v_160, v_160, v_160).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_161 = dot(r10.xyz, r2.yzw);
      r10.x = clamp(vec4<f32>(v_161, v_161, v_161, v_161).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_162 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xzw);
      r8 = vec4<f32>(v_162.x, r8.y, v_162.yz);
    }
  } else {
    r6.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_163 = (v_20.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_163.xyz, r10.w);
      let v_164 = (v6.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_165 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      let v_166 = (r11.xyz + v_20.xyz);
      r11 = vec4<f32>(v_166.xyz, r11.w);
      let v_167 = bitcast<vec3<u32>>(r7.yyy);
      let v_168 = r10.xyz;
      let v_169 = select(r11.xyz, v_168, (v_167 != vec3<u32>()));
      r10 = vec4<f32>(v_169.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_170 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_170.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_171 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r7.w);
      let v_172 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r10.xyz, v_172.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_173 = dot(r10.xyz, r2.yzw);
      r9.w = clamp(vec4<f32>(v_173, v_173, v_173, v_173).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_174 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_175.xyz, r9.w);
      let v_176 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_176.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_177 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_177.xyz, r10.w);
      let v_178 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_178, v_178, v_178, v_178).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_179 = dot(r10.xyz, r2.yzw);
      r10.x = clamp(vec4<f32>(v_179, v_179, v_179, v_179).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_180 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xzw);
      r8 = vec4<f32>(v_180.x, r8.y, v_180.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_181 = (v_20.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_181.xyz, r10.w);
      let v_182 = (v6.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_182.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[22u].w);
      let v_183 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_183.xyz, r11.w);
      let v_184 = (r11.xyz + v_20.xyz);
      r11 = vec4<f32>(v_184.xyz, r11.w);
      let v_185 = bitcast<vec3<u32>>(r7.yyy);
      let v_186 = r10.xyz;
      let v_187 = select(r11.xyz, v_186, (v_185 != vec3<u32>()));
      r10 = vec4<f32>(v_187.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_188 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_188.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_189 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[14u].w);
      r7.y = (r7.y / r7.w);
      let v_190 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.w = dot(r10.xyz, v_190.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_191 = dot(r10.xyz, r2.yzw);
      r9.w = clamp(vec4<f32>(v_191, v_191, v_191, v_191).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_192 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_192.xyz, r11.w);
      let v_193 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_193.xyz, r9.w);
      let v_194 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_194.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_195 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_195.xyz, r10.w);
      let v_196 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_196, v_196, v_196, v_196).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_197 = dot(r10.xyz, r2.yzw);
      r10.x = clamp(vec4<f32>(v_197, v_197, v_197, v_197).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_198 = fma(r7.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xzw);
      r8 = vec4<f32>(v_198.x, r8.y, v_198.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_199 = (v_20.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_199.xyz, r10.w);
      let v_200 = (v6.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_200.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[23u].w);
      let v_201 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_201.xyz, r11.w);
      let v_202 = (r11.xyz + v_20.xyz);
      r11 = vec4<f32>(v_202.xyz, r11.w);
      let v_203 = bitcast<vec3<u32>>(r7.yyy);
      let v_204 = r10.xyz;
      let v_205 = select(r11.xyz, v_204, (v_203 != vec3<u32>()));
      r10 = vec4<f32>(v_205.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_206 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_206.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_207 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_207.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[15u].w);
      r7.y = (r7.y / r7.w);
      let v_208 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.w = dot(r10.xyz, v_208.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_209 = dot(r10.xyz, r2.yzw);
      r9.w = clamp(vec4<f32>(v_209, v_209, v_209, v_209).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_210 = (r9.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_210.xyz, r11.w);
      let v_211 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_211.xyz, r9.w);
      let v_212 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_212.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_213 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_213.xyz, r10.w);
      let v_214 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_214, v_214, v_214, v_214).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_215 = dot(r10.xyz, r2.yzw);
      r10.x = clamp(vec4<f32>(v_215, v_215, v_215, v_215).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_216 = fma(r7.yyy, cb3_3.tint_symbol_2[23u].xyz, r8.xzw);
      r8 = vec4<f32>(v_216.x, r8.y, v_216.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_217 = (v_20.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_217.xyz, r10.w);
      let v_218 = (v6.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_218.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[24u].w);
      let v_219 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_219.xyz, r11.w);
      let v_220 = (r11.xyz + v_20.xyz);
      r11 = vec4<f32>(v_220.xyz, r11.w);
      let v_221 = bitcast<vec3<u32>>(r7.yyy);
      let v_222 = r10.xyz;
      let v_223 = select(r11.xyz, v_222, (v_221 != vec3<u32>()));
      r10 = vec4<f32>(v_223.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_224 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_224.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_225 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_225.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[16u].w);
      r7.y = (r7.y / r7.w);
      let v_226 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.w = dot(r10.xyz, v_226.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_227 = dot(r10.xyz, r2.yzw);
      r9.w = clamp(vec4<f32>(v_227, v_227, v_227, v_227).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_228 = (r9.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_228.xyz, r11.w);
      let v_229 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_229.xyz, r9.w);
      let v_230 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_230.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_231 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_231.xyz, r10.w);
      let v_232 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_232, v_232, v_232, v_232).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_233 = dot(r10.xyz, r2.yzw);
      r10.x = clamp(vec4<f32>(v_233, v_233, v_233, v_233).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_234 = fma(r7.yyy, cb3_3.tint_symbol_2[24u].xyz, r8.xzw);
      r8 = vec4<f32>(v_234.x, r8.y, v_234.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_235 = (v_20.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_235.xyz, r10.w);
      let v_236 = (v6.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_236.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[25u].w);
      let v_237 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_237.xyz, r11.w);
      let v_238 = (r11.xyz + v_20.xyz);
      r11 = vec4<f32>(v_238.xyz, r11.w);
      let v_239 = bitcast<vec3<u32>>(r7.yyy);
      let v_240 = r10.xyz;
      let v_241 = select(r11.xyz, v_240, (v_239 != vec3<u32>()));
      r10 = vec4<f32>(v_241.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_242 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_242.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_243 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_243.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.y, cb3_3.tint_symbol_2[17u].w);
      r7.y = (r7.y / r7.w);
      let v_244 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.w = dot(r10.xyz, v_244.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_245 = dot(r10.xyz, r2.yzw);
      r9.w = clamp(vec4<f32>(v_245, v_245, v_245, v_245).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.y * r7.w);
      let v_246 = (r9.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_246.xyz, r11.w);
      let v_247 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_247.xyz, r9.w);
      let v_248 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_248.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_249 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_249.xyz, r10.w);
      let v_250 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_250, v_250, v_250, v_250).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r7.z);
      let v_251 = dot(r10.xyz, r2.yzw);
      r10.x = clamp(vec4<f32>(v_251, v_251, v_251, v_251).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.y = (r7.y * r7.w);
      r7.y = (r4.w * r7.y);
      let v_252 = fma(r7.yyy, cb3_3.tint_symbol_2[25u].xyz, r8.xzw);
      r8 = vec4<f32>(v_252.x, r8.y, v_252.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_253 = (v_20.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_253.xyz, r10.w);
      let v_254 = (v6.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_254.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[26u].wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[26u].w);
      let v_255 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_255.xyz, r11.w);
      let v_256 = (r11.xyz + v_20.xyz);
      r11 = vec4<f32>(v_256.xyz, r11.w);
      let v_257 = bitcast<vec3<u32>>(r6.www);
      let v_258 = r10.xyz;
      let v_259 = select(r11.xyz, v_258, (v_257 != vec3<u32>()));
      r10 = vec4<f32>(v_259.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_260 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_260.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_261 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_261.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r6.w, cb3_3.tint_symbol_2[18u].w);
      r6.w = (r6.w / r7.y);
      let v_262 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.y = dot(r10.xyz, v_262.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_263 = dot(r10.xyz, r2.yzw);
      r7.w = clamp(vec4<f32>(v_263, v_263, v_263, v_263).w, 0.0f, 1.0f);
      r7.y = (r7.y * r7.w);
      r7.w = (r6.w * r7.y);
      let v_264 = (r7.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_264.xyz, r11.w);
      let v_265 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_265.xyz, r9.w);
      let v_266 = fma(r3.xyz, r3.www, r10.xyz);
      r3 = vec4<f32>(v_266.xyz, r3.w);
      r3.w = dot(r3.xyz, r3.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_267 = (r3.www * r3.xyz);
      r3 = vec4<f32>(v_267.xyz, r3.w);
      let v_268 = dot(r3.xyz, r4.xyz);
      r3.w = clamp(vec4<f32>(v_268, v_268, v_268, v_268).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r4.x = (r3.w * r3.w);
      r4.x = (r4.x * r4.x);
      r3.w = (r3.w * r4.x);
      r3.w = fma(cb12_12.tint_symbol_4[0u].y, r3.w, r7.z);
      let v_269 = dot(r3.xyz, r2.yzw);
      r3.x = clamp(vec4<f32>(v_269, v_269, v_269, v_269).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r8.y);
      r3.x = exp2(r3.x);
      r3.x = (r3.x * r3.w);
      r3.x = (r7.y * r3.x);
      r3.x = (r6.w * r3.x);
      r3.x = (r4.w * r3.x);
      let v_270 = fma(r3.xxx, cb3_3.tint_symbol_2[26u].xyz, r8.xzw);
      r8 = vec4<f32>(v_270.x, r8.y, v_270.yz);
    }
  }
  r3.x = (r7.x * r7.x);
  r1.x = (r1.x * r1.x);
  let v_271 = (r8.xzw * r1.xxx);
  r3 = vec4<f32>(r3.x, v_271.xyz);
  let v_272 = fma(r3.xxx, r9.xyz, r3.yzw);
  r3 = vec4<f32>(v_272.xyz, r3.w);
  let v_273 = fma(r5.xyz, r5.www, r3.xyz);
  r3 = vec4<f32>(v_273.xyz, r3.w);
  r1.x = fma(r1.w, r2.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_274 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_274.xyz, r4.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_275 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_275.xyz, r5.w);
  let v_276 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_276.xyz, r5.w);
  let v_277 = fma(r4.xyz, r1.www, r5.xyz);
  r4 = vec4<f32>(v_277.xyz, r4.w);
  let v_278 = (r1.zzz * r4.xyz);
  r4 = vec4<f32>(v_278.xyz, r4.w);
  let v_279 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(v_279.x, r1.y, v_279.yz);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_280 = dot(r5.xyz, r2.yzw);
  r2.x = clamp(vec4<f32>(v_280, v_280, v_280, v_280).x, 0.0f, 1.0f);
  let v_281 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.xxx, r1.xzw);
  r1 = vec4<f32>(v_281.x, r1.y, v_281.yz);
  let v_282 = fma(r1.xzw, r1.yyy, r4.xyz);
  r1 = vec4<f32>(v_282.xyz, r1.w);
  let v_283 = (r7.xxx * r1.xyz);
  r1 = vec4<f32>(v_283.xyz, r1.w);
  let v_284 = fma(r1.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_284.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_285 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_285.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_286 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_286 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_287 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_287.xyz, r2.w);
    let v_288 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_288, v_288, v_288, v_288).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_289 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_289, v_289, v_289, v_289).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_290 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_290.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_291 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_291.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_292 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_292.xyz, r2.w);
    let v_293 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_293.xyz, r2.w);
    let v_294 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_294.xyz, r3.w);
    let v_295 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_295.xyz, r2.w);
    let v_296 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_297 = (r2.xyz + v_296.xyz);
    r2 = vec4<f32>(v_297.xyz, r2.w);
    let v_298 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_298.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_299 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_299.xyz, r3.w);
    let v_300 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_300.xy, r1.z, v_300.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_301 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_301.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_302 = -(r0.xyxz);
    let v_303 = fma(r1.xyw, r0.www, v_302.xyw);
    r1 = vec4<f32>(v_303.xy, r1.z, v_303.z);
    let v_304 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_304.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_305 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_305.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_306 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_306 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_307 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_307.xyz, r3.w);
    let v_308 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_308, v_308, v_308, v_308).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_309 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_309, v_309, v_309, v_309).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_310 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_310.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_311 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_311.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_312 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_312.xyz, r3.w);
    let v_313 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_313.xyz, r3.w);
    let v_314 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_314.xyz, r4.w);
    let v_315 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_315.xyz, r3.w);
    let v_316 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_317 = (r3.xyz + v_316.xyz);
    r3 = vec4<f32>(v_317.xyz, r3.w);
    let v_318 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_318.x, r2.y, v_318.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_319 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_319.xyz, r3.w);
    let v_320 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_320.x, r2.y, v_320.yz);
    let v_321 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_321.x, r2.y, v_321.yz);
    let v_322 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_322.xyz, r1.w);
  }
  let v_323 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_323.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_324 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_324);
  return o0;
}
