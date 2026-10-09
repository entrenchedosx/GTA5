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

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

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

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t5, s5, v1.xy.xyxx.xy);
  let v_4 = (v1.xy * cb11_11.tint_symbol_5[0u].zw);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r3 = textureSample(t2, s2, r2.xyxx.xy);
  let v_5 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(r2.xy, v_5.xy);
  let v_6 = (r2.xy * vec2<f32>(3.1700000762939453125f));
  r2 = vec4<f32>(v_6.xy, r2.zw);
  r3 = textureSample(t2, s2, r2.xyxx.xy);
  let v_7 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_7.xy, r2.zw);
  let v_8 = (r2.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_8.xy, r2.zw);
  let v_9 = fma(r2.zw, vec2<f32>(0.5f), r2.xy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  r2.z = ((-(r2.xxxx)).z * cb11_11.tint_symbol_5[0u].x);
  r2.z = fma(r2.z, r1.w, 1.0f);
  let v_10 = (r2.xy * cb11_11.tint_symbol_5[0u].yy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r0 = (r0 * r2.zzzz);
  r3 = textureSample(t4, s4, v1.xy.xyxx.xy);
  let v_11 = fma(r2.xy, r1.ww, r3.xy);
  r2 = vec4<f32>(v_11.xy, r2.zw);
  let v_12 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_12.xy, r2.zw);
  r2.w = dot(r2.xy, r2.xy);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = sqrt(abs(r2.wwww).w);
  r3.x = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_13 = (r2.xy * r3.xx);
  r2 = vec4<f32>(v_13.xy, r2.zw);
  let v_14 = (r2.yyy * v5.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = fma(r2.xxx, v4.xyz, r3.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = fma(r2.www, v2.xyz, r3.xyz);
  r2 = vec4<f32>(v_16.xy, r2.z, v_16.z);
  r3.x = dot(r2.xyw, r2.xyw);
  r3.x = inverseSqrt(r3.x);
  let v_17 = (r2.xyw * r3.xxx);
  r3 = vec4<f32>(r3.x, v_17.xyz);
  let v_18 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_18.xy, r1.zw);
  r1.x = dot(r1.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r1.x = (r1.x * cb12_12.tint_symbol_4[0u].w);
  r1.x = clamp(((r2.zzzz * r1.xxxx)).x, 0.0f, 1.0f);
  r0.w = (r0.w * v0.w);
  let v_19 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_20 = r1;
  r1 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  let v_21 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = -(v6.xyzx);
  let v_23 = (v_22.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  r4.x = dot(r2.xyz, r2.xyz);
  r4.x = inverseSqrt(r4.x);
  let v_24 = (r2.xyz * r4.xxx);
  r4 = vec4<f32>(r4.x, v_24.xyz);
  let v_25 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_26 = fma(r2.xyz, r4.xxx, v_25.xyz);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  r5.w = dot(r5.xyz, r5.xyz);
  r5.w = inverseSqrt(r5.w);
  let v_27 = (r5.www * r5.xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  let v_28 = (r1.yz * r1.yz);
  let v_29 = r1;
  r1 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
  r5.w = fma(r1.w, cb12_12.tint_symbol_4[0u].z, -500.0f);
  r5.w = max(r5.w, 0.0f);
  let v_30 = -(r5.wwww);
  r1.w = fma(r1.w, cb12_12.tint_symbol_4[0u].z, v_30.w);
  r5.w = (r5.w * 558.0f);
  r1.w = fma(r1.w, 3.0f, r5.w);
  r5.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_31 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_31.xyz, r6.w);
  let v_32 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_32.xyz, r7.w);
  let v_33 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_34.xyz, r7.w);
  let v_35 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_35.xyz, r8.w);
  let v_36 = &(x0[0u]);
  let v_37 = r8;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_38.xyz, r9.w);
  let v_39 = &(x0[1u]);
  let v_40 = r9;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_41.xyz, r10.w);
  let v_42 = &(x0[2u]);
  let v_43 = r10;
  *(v_42) = vec4<f32>(v_43.xyz, (*(v_42)).w);
  let v_44 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_44.xyz, r7.w);
  let v_45 = &(x0[3u]);
  let v_46 = r7;
  *(v_45) = vec4<f32>(v_46.xyz, (*(v_45)).w);
  let v_47 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_48 = r11;
  r11 = vec4<f32>(v_48.x, v_47.x, v_48.z, v_47.y);
  r6.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r6.w = (r6.w * 0.5f);
  let v_49 = abs(r10.yyyy);
  r7.z = max(v_49.z, abs(r10.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r6.w)));
  let v_50 = (bitcast<u32>(r7.z) != 0u);
  let v_51 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r7.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_51, v_50);
  let v_52 = abs(r9.yyyy);
  r7.w = max(v_52.w, abs(r9.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_53 = bitcast<u32>(r7.w);
  r7.z = select(r7.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_53 != 0u));
  let v_54 = abs(r8.yyyy);
  r7.w = max(v_54.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_55 = bitcast<u32>(r6.w);
  r6.w = select(r7.z, 0.0f, (v_55 != 0u));
  let v_56 = x0[bitcast<i32>(r6.w)];
  r8 = vec4<f32>(v_56.xyz, r8.w);
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
  let v_57 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_57.xy, r10.z, v_57.z);
  r10.z = dpdx(r6.w);
  let v_58 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_58.xyz, r12.w);
  r12.w = dpdy(r6.w);
  let v_59 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_59.xy, r8.zw);
  let v_60 = -(r8.xyxx);
  let v_61 = fma(r10.xz, r12.xz, v_60.xy);
  r13 = vec4<f32>(v_61.xy, r13.zw);
  r8.x = (1.0f / r13.x);
  r8.y = (r10.z * r12.y);
  let v_62 = -(r8.yyyy);
  r13.z = fma(r10.x, r12.w, v_62.z);
  let v_63 = (r8.xx * r13.yz);
  r8 = vec4<f32>(v_63.xy, r8.zw);
  let v_64 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_64.xy, r8.zw);
  let v_65 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_65.xy, r8.zw);
  r6.w = fma((-(r7.wwww)).w, r8.x, r6.w);
  r6.w = fma((-(r7.wwww)).w, r8.y, r6.w);
  let v_66 = bitcast<u32>(r7.z);
  let v_67 = r6.w;
  r11.z = select(r8.z, v_67, (v_66 != 0u));
  r9.z = 0.0f;
  let v_68 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_68.xyz, r8.w);
  let v_69 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_70.xyz, r10.w);
  let v_71 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_72.xyz, r12.w);
  let v_73 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_74.xyz, r13.w);
  let v_75 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_76.xyz, r14.w);
  let v_77 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_78.xyz, r15.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_80.xyz, r16.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_82.xyz, r17.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_84.xyz, r18.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_86.xyz, r19.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_88.xyz, r20.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_90.xyz, r21.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_92.xyz, r22.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_94.xyz, r23.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_95.xy, r11.zw);
  let v_96 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_96.xyz, r24.w);
  let v_97 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_97.xy, r11.zw);
  let v_98 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_98.xyz, r9.w);
  let v_99 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_99.xy, r8.z);
  let v_100 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_100.xy, r10.z);
  let v_101 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_101.xy, r12.z);
  let v_102 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_102.xy, r13.z);
  let v_103 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_103.xy, r14.z);
  let v_104 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_104.xy, r15.z);
  let v_105 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_105.xy, r16.z);
  let v_106 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_106.xy, r17.z);
  let v_107 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_107.xy, r18.z);
  let v_108 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_108.xy, r19.z);
  let v_109 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_109.xy, r20.z);
  let v_110 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_110.xy, r21.z);
  let v_111 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_111.xy, r22.z);
  let v_112 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_112.xy, r23.z);
  let v_113 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_113.xy, r24.z);
  let v_114 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_114.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r6.w = dot(r8, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_115 = abs(r7.yyyy);
  r7.x = max(v_115.x, abs(r7.xxxx).x);
  r7.x = clamp(fma(r7.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r7.x * r5.w);
  r5.w = fma(r6.w, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.w = clamp(fma(v6.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r6.w = sqrt(r6.w);
  r6.w = (r6.w * cb6_6.tint_symbol_6[3u].z);
  let v_116 = -(r5.wwww);
  r5.w = fma(r6.w, v_116.w, r5.w);
  let v_117 = dot(r3.yzw, v_25.xyz);
  r6.w = clamp(vec4<f32>(v_117, v_117, v_117, v_117).w, 0.0f, 1.0f);
  let v_118 = dot(r4.yzw, r3.yzw);
  r7.x = clamp(vec4<f32>(v_118, v_118, v_118, v_118).x, 0.0f, 1.0f);
  let v_119 = dot(r5.xyz, v_25.xyz);
  r7.y = clamp(vec4<f32>(v_119, v_119, v_119, v_119).y, 0.0f, 1.0f);
  let v_120 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_120.xy, r7.zw);
  let v_121 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_121.xy);
  let v_122 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_122.xy);
  let v_123 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_123.xy, r7.zw);
  r7.z = ((-(cb12_12.tint_symbol_4[0u].yyyy)).z + 1.0f);
  let v_124 = fma(cb12_12.tint_symbol_4[0u].yy, r7.xy, r7.zz);
  r7 = vec4<f32>(v_124.xy, r7.zw);
  let v_125 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_125.xy, r8.zw);
  r7.w = (r8.x * 0.125f);
  r7.x = fma((-(r1.xxxx)).x, r7.x, 1.0f);
  r5.x = dot(r3.yzw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r7.w * r5.x);
  r5.x = (r1.x * r5.x);
  r5.x = (r6.w * r5.x);
  r5.y = (r6.w * r7.x);
  let v_126 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_126.xyz, r5.w);
  let v_127 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_127.xyz, r5.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r9 = vec4<f32>(r9.x, vec3<f32>());
    r8 = vec4<f32>(0.0f, r8.y, vec2<f32>());
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_128 = ((-(v6.xxyz)).xzw + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_128.x, r8.y, v_128.yz);
    let v_129 = (v6.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_129.xyz, r9.w);
    r9.x = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[19u].wwww)).x, 0.0f, 1.0f);
    r9.x = (r9.x * cb3_3.tint_symbol_2[19u].w);
    let v_130 = fma(cb3_3.tint_symbol_2[11u].xyz, r9.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_130.xyz, r9.w);
    let v_131 = (r9.xyz + v_22.xyz);
    r9 = vec4<f32>(v_131.xyz, r9.w);
    let v_132 = bitcast<vec3<u32>>(r7.yyy);
    let v_133 = r8.xzw;
    let v_134 = select(r9.xyz, v_133, (v_132 != vec3<u32>()));
    r8 = vec4<f32>(v_134.x, r8.y, v_134.yz);
    r7.y = dot(r8.xzw, r8.xzw);
    let v_135 = (r8.xzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_135.x, r8.y, v_135.yz);
    r9.x = dot(r8.xzw, r8.xzw);
    r9.x = inverseSqrt(r9.x);
    let v_136 = (r8.xzw * r9.xxx);
    r8 = vec4<f32>(v_136.x, r8.y, v_136.yz);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r9.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r9.x);
    let v_137 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.x = dot(r8.xzw, v_137.xyz);
    r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_138 = dot(r8.xzw, r3.yzw);
    r9.y = clamp(vec4<f32>(v_138, v_138, v_138, v_138).y, 0.0f, 1.0f);
    r9.x = (r9.x * r9.y);
    r9.y = (r7.y * r9.x);
    let v_139 = (r9.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(r9.x, v_139.xyz);
    let v_140 = (r0.xyz * r9.yzw);
    r9 = vec4<f32>(r9.x, v_140.xyz);
    let v_141 = fma(r2.xyz, r4.xxx, r8.xzw);
    r8 = vec4<f32>(v_141.x, r8.y, v_141.yz);
    r10.x = dot(r8.xzw, r8.xzw);
    r10.x = inverseSqrt(r10.x);
    let v_142 = (r8.xzw * r10.xxx);
    r8 = vec4<f32>(v_142.x, r8.y, v_142.yz);
    let v_143 = dot(r8.xzw, r4.yzw);
    r10.x = clamp(vec4<f32>(v_143, v_143, v_143, v_143).x, 0.0f, 1.0f);
    r10.x = ((-(r10.xxxx)).x + 1.0f);
    r10.y = (r10.x * r10.x);
    r10.y = (r10.y * r10.y);
    r10.x = (r10.y * r10.x);
    r10.x = fma(cb12_12.tint_symbol_4[0u].y, r10.x, r7.z);
    let v_144 = dot(r8.xzw, r3.yzw);
    r8.x = clamp(vec4<f32>(v_144, v_144, v_144, v_144).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.y);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r10.x);
    r8.x = (r9.x * r8.x);
    r7.y = (r7.y * r8.x);
    r7.y = (r7.w * r7.y);
    let v_145 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_145.x, r8.y, v_145.yz);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    let v_146 = bitcast<u32>(r9.x);
    let v_147 = r7.y;
    r6.w = select(r6.w, v_147, (v_146 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_148 = (v_22.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_148.xyz, r10.w);
      let v_149 = (v6.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_149.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[20u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[20u].w);
      let v_150 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_150.xyz, r11.w);
      let v_151 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_151.xyz, r11.w);
      let v_152 = bitcast<vec3<u32>>(r7.yyy);
      let v_153 = r10.xyz;
      let v_154 = select(r11.xyz, v_153, (v_152 != vec3<u32>()));
      r10 = vec4<f32>(v_154.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_155 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_155.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_156 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_156.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r9.x);
      let v_157 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.x = dot(r10.xyz, v_157.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_158 = dot(r10.xyz, r3.yzw);
      r10.w = clamp(vec4<f32>(v_158, v_158, v_158, v_158).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_159 = (r10.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      let v_160 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_160.xyz);
      let v_161 = fma(r2.xyz, r4.xxx, r10.xyz);
      r10 = vec4<f32>(v_161.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_162 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_162.xyz, r10.w);
      let v_163 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_163, v_163, v_163, v_163).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].y, r10.w, r7.z);
      let v_164 = dot(r10.xyz, r3.yzw);
      r10.x = clamp(vec4<f32>(v_164, v_164, v_164, v_164).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_165 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xzw);
      r8 = vec4<f32>(v_165.x, r8.y, v_165.yz);
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
      let v_166 = (v_22.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_166.xyz, r10.w);
      let v_167 = (v6.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_167.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[21u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[21u].w);
      let v_168 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      let v_169 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      let v_170 = bitcast<vec3<u32>>(r7.yyy);
      let v_171 = r10.xyz;
      let v_172 = select(r11.xyz, v_171, (v_170 != vec3<u32>()));
      r10 = vec4<f32>(v_172.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_173 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_173.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_174 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r9.x);
      let v_175 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.x = dot(r10.xyz, v_175.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_176 = dot(r10.xyz, r3.yzw);
      r10.w = clamp(vec4<f32>(v_176, v_176, v_176, v_176).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_177 = (r10.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      let v_178 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_178.xyz);
      let v_179 = fma(r2.xyz, r4.xxx, r10.xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_180 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_180.xyz, r10.w);
      let v_181 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_181, v_181, v_181, v_181).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].y, r10.w, r7.z);
      let v_182 = dot(r10.xyz, r3.yzw);
      r10.x = clamp(vec4<f32>(v_182, v_182, v_182, v_182).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_183 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xzw);
      r8 = vec4<f32>(v_183.x, r8.y, v_183.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_184 = (v_22.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_184.xyz, r10.w);
      let v_185 = (v6.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_185.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[22u].wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[22u].w);
      let v_186 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      let v_187 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_187.xyz, r11.w);
      let v_188 = bitcast<vec3<u32>>(r6.www);
      let v_189 = r10.xyz;
      let v_190 = select(r11.xyz, v_189, (v_188 != vec3<u32>()));
      r10 = vec4<f32>(v_190.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_191 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_191.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_192 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_192.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r6.w, cb3_3.tint_symbol_2[14u].w);
      r6.w = (r6.w / r7.y);
      let v_193 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.y = dot(r10.xyz, v_193.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_194 = dot(r10.xyz, r3.yzw);
      r9.x = clamp(vec4<f32>(v_194, v_194, v_194, v_194).x, 0.0f, 1.0f);
      r7.y = (r7.y * r9.x);
      r9.x = (r6.w * r7.y);
      let v_195 = (r9.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      let v_196 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_196.xyz);
      let v_197 = fma(r2.xyz, r4.xxx, r10.xyz);
      r2 = vec4<f32>(v_197.xyz, r2.w);
      r4.x = dot(r2.xyz, r2.xyz);
      r4.x = inverseSqrt(r4.x);
      let v_198 = (r2.xyz * r4.xxx);
      r2 = vec4<f32>(v_198.xyz, r2.w);
      let v_199 = dot(r2.xyz, r4.yzw);
      r4.x = clamp(vec4<f32>(v_199, v_199, v_199, v_199).x, 0.0f, 1.0f);
      r4.x = ((-(r4.xxxx)).x + 1.0f);
      r9.x = (r4.x * r4.x);
      r9.x = (r9.x * r9.x);
      r4.x = (r4.x * r9.x);
      r4.x = fma(cb12_12.tint_symbol_4[0u].y, r4.x, r7.z);
      let v_200 = dot(r2.xyz, r3.yzw);
      r2.x = clamp(vec4<f32>(v_200, v_200, v_200, v_200).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r8.y);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r4.x);
      r2.x = (r7.y * r2.x);
      r2.x = (r6.w * r2.x);
      r2.x = (r7.w * r2.x);
      let v_201 = fma(r2.xxx, cb3_3.tint_symbol_2[22u].xyz, r8.xzw);
      r8 = vec4<f32>(v_201.x, r8.y, v_201.yz);
    }
  }
  r2.x = (r7.x * r7.x);
  r1.x = (r1.x * r1.x);
  let v_202 = (r8.xzw * r1.xxx);
  r7 = vec4<f32>(r7.x, v_202.xyz);
  let v_203 = fma(r2.xxx, r9.yzw, r7.yzw);
  r2 = vec4<f32>(v_203.xyz, r2.w);
  let v_204 = fma(r5.xyz, r5.www, r2.xyz);
  r2 = vec4<f32>(v_204.xyz, r2.w);
  r1.x = fma(r2.w, r3.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_205 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_205.xyz, r5.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_206 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(r7.x, v_206.xyz);
  let v_207 = (r7.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(r7.x, v_207.xyz);
  let v_208 = fma(r5.xyz, r2.www, r7.yzw);
  r5 = vec4<f32>(v_208.xyz, r5.w);
  let v_209 = (r1.zzz * r5.xyz);
  r5 = vec4<f32>(v_209.xyz, r5.w);
  let v_210 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(r7.x, v_210.xyz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_211 = dot(r8.xyz, r3.yzw);
  r1.x = clamp(vec4<f32>(v_211, v_211, v_211, v_211).x, 0.0f, 1.0f);
  let v_212 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r7.yzw);
  r7 = vec4<f32>(r7.x, v_212.xyz);
  let v_213 = fma(r7.yzw, r1.yyy, r5.xyz);
  r5 = vec4<f32>(v_213.xyz, r5.w);
  let v_214 = (r7.xxx * r5.xyz);
  r5 = vec4<f32>(v_214.xyz, r5.w);
  let v_215 = fma(r5.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_215.xyz, r0.w);
  r1.x = ((-(r7.xxxx)).x + 1.0f);
  r2.x = dot((-(r4.yzwy)).xyz, r3.yzw);
  r2.x = (r2.x + r2.x);
  let v_216 = -(r2.xxxx);
  let v_217 = -(r4.yzwy);
  let v_218 = fma(r3.yzw, v_216.xyz, v_217.xyz);
  r2 = vec4<f32>(v_218.xyz, r2.w);
  let v_219 = clamp(((r1.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_219.xy, r3.zw);
  r1.w = ((-(r3.xxxx)).w + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.w * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.w)));
  r3.z = fma(r1.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.w = (r1.w * r1.w);
  r1.w = fma(r1.w, 5.0f, r2.w);
  let v_220 = bitcast<u32>(r3.x);
  let v_221 = r3.z;
  r1.w = select(r1.w, v_221, (v_220 != 0u));
  let v_222 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_222.xy, r2.z, v_222.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_223 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_223.xy, r2.z, v_223.z);
  let v_224 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_224.xy, r2.z, v_224.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_225 = bitcast<vec2<u32>>(r2.zz);
  let v_226 = r2.xy;
  let v_227 = select(r2.wy, v_226, (v_225 != vec2<u32>()));
  r2 = vec4<f32>(v_227.xy, r2.zw);
  let v_228 = r1.w;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_228);
  r1.y = max(r1.z, r1.y);
  let v_229 = (r1.yyy * r2.xyz);
  r1 = vec4<f32>(r1.x, v_229.xyz);
  let v_230 = (r3.yyy * r1.yzw);
  r2 = vec4<f32>(v_230.xyz, r2.w);
  let v_231 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_231.xyz, r2.w);
  let v_232 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_232.xyz);
  let v_233 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_233.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_234 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_234.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_235 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_235 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_236 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_236.xyz, r2.w);
    let v_237 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_237, v_237, v_237, v_237).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_238 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_238, v_238, v_238, v_238).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_239 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_239.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_240 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_240.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_241 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_241.xyz, r2.w);
    let v_242 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_242.xyz, r2.w);
    let v_243 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_243.xyz, r3.w);
    let v_244 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_244.xyz, r2.w);
    let v_245 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_246 = (r2.xyz + v_245.xyz);
    r2 = vec4<f32>(v_246.xyz, r2.w);
    let v_247 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_247.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_248 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_248.xyz, r3.w);
    let v_249 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_249.xy, r1.z, v_249.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_250 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_250.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_251 = -(r0.xyxz);
    let v_252 = fma(r1.xyw, r0.www, v_251.xyw);
    r1 = vec4<f32>(v_252.xy, r1.z, v_252.z);
    let v_253 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_253.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_254 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_254.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_255 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_255 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_256 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_256.xyz, r3.w);
    let v_257 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_257, v_257, v_257, v_257).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_258 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_258, v_258, v_258, v_258).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_259 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_259.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_260 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_260.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_261 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_261.xyz, r3.w);
    let v_262 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_262.xyz, r3.w);
    let v_263 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_263.xyz, r4.w);
    let v_264 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_264.xyz, r3.w);
    let v_265 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_266 = (r3.xyz + v_265.xyz);
    r3 = vec4<f32>(v_266.xyz, r3.w);
    let v_267 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_267.x, r2.y, v_267.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_268 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_268.xyz, r3.w);
    let v_269 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_269.x, r2.y, v_269.yz);
    let v_270 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_270.x, r2.y, v_270.yz);
    let v_271 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_271.xyz, r1.w);
  }
  let v_272 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_272.xyz, o0.w);
}

fn v_3(v_273 : bool) {
  if (v_273) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_274 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6, v_274);
  return o0;
}
