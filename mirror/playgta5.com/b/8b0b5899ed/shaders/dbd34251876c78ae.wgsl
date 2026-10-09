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

var<private> o1 : f32;

var<private> o2 : f32;

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
  r0 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r1 = textureSample(t4, s4, v1.xyz.xyxx.xy);
  let v_3 = (v1.xyz.xy * cb11_11.tint_symbol_5[0u].zw);
  r2 = vec4<f32>(v_3.xy, r2.zw);
  r3 = textureSample(t2, s2, r2.xyxx.xy);
  let v_4 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(r2.xy, v_4.xy);
  let v_5 = (r2.xy * vec2<f32>(3.1700000762939453125f));
  r2 = vec4<f32>(v_5.xy, r2.zw);
  r3 = textureSample(t2, s2, r2.xyxx.xy);
  let v_6 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_6.xy, r2.zw);
  let v_7 = (r2.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_7.xy, r2.zw);
  let v_8 = fma(r2.zw, vec2<f32>(0.5f), r2.xy);
  r2 = vec4<f32>(v_8.xy, r2.zw);
  r2.z = ((-(r2.xxxx)).z * cb11_11.tint_symbol_5[0u].x);
  r2.z = fma(r2.z, r1.w, 1.0f);
  let v_9 = (r2.xy * cb11_11.tint_symbol_5[0u].yy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  r0 = (r0 * r2.zzzz);
  r3 = textureSample(t3, s3, v1.xyz.xyxx.xy);
  let v_10 = fma(r2.xy, r1.ww, r3.xy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  let v_11 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_11.xy, r2.zw);
  r2.w = dot(r2.xy, r2.xy);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = sqrt(abs(r2.wwww).w);
  r3.x = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_12 = (r2.xy * r3.xx);
  r2 = vec4<f32>(v_12.xy, r2.zw);
  let v_13 = (r2.yyy * v5.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = fma(r2.xxx, v4.xyz, r3.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = fma(r2.www, v2.xyz, r3.xyz);
  r2 = vec4<f32>(v_15.xy, r2.z, v_15.z);
  r3.x = dot(r2.xyw, r2.xyw);
  r3.x = inverseSqrt(r3.x);
  let v_16 = (r2.xyw * r3.xxx);
  r3 = vec4<f32>(r3.x, v_16.xyz);
  let v_17 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_17.xy, r1.zw);
  r1.x = dot(r1.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r1.x = (r1.x * cb12_12.tint_symbol_4[0u].z);
  r1.x = clamp(((r2.zzzz * r1.xxxx)).x, 0.0f, 1.0f);
  r0.w = (r0.w * v0.w);
  let v_18 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_19 = r1;
  r1 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  let v_20 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = -(v6.xyzx);
  let v_22 = (v_21.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  r4.x = dot(r2.xyz, r2.xyz);
  r4.x = inverseSqrt(r4.x);
  let v_23 = (r2.xyz * r4.xxx);
  r4 = vec4<f32>(r4.x, v_23.xyz);
  let v_24 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_25 = fma(r2.xyz, r4.xxx, v_24.xyz);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  r5.w = dot(r5.xyz, r5.xyz);
  r5.w = inverseSqrt(r5.w);
  let v_26 = (r5.www * r5.xyz);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  let v_27 = (r1.yz * r1.yz);
  let v_28 = r1;
  r1 = vec4<f32>(v_28.x, v_27.xy, v_28.w);
  r5.w = fma(r1.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r5.w = max(r5.w, 0.0f);
  let v_29 = -(r5.wwww);
  r1.w = fma(r1.w, cb12_12.tint_symbol_4[0u].y, v_29.w);
  r5.w = (r5.w * 558.0f);
  r1.w = fma(r1.w, 3.0f, r5.w);
  r5.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_30 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_30.xyz, r6.w);
  let v_31 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_31.xyz, r7.w);
  let v_32 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_32.xyz, r7.w);
  let v_33 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_34.xyz, r8.w);
  let v_35 = &(x0[0u]);
  let v_36 = r8;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_37.xyz, r9.w);
  let v_38 = &(x0[1u]);
  let v_39 = r9;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_40.xyz, r10.w);
  let v_41 = &(x0[2u]);
  let v_42 = r10;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  let v_43 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_43.xyz, r7.w);
  let v_44 = &(x0[3u]);
  let v_45 = r7;
  *(v_44) = vec4<f32>(v_45.xyz, (*(v_44)).w);
  let v_46 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_47 = r11;
  r11 = vec4<f32>(v_47.x, v_46.x, v_47.z, v_46.y);
  r6.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r6.w = (r6.w * 0.5f);
  let v_48 = abs(r10.yyyy);
  r7.z = max(v_48.z, abs(r10.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r6.w)));
  let v_49 = (bitcast<u32>(r7.z) != 0u);
  let v_50 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r7.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_50, v_49);
  let v_51 = abs(r9.yyyy);
  r7.w = max(v_51.w, abs(r9.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_52 = bitcast<u32>(r7.w);
  r7.z = select(r7.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_52 != 0u));
  let v_53 = abs(r8.yyyy);
  r7.w = max(v_53.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_54 = bitcast<u32>(r6.w);
  r6.w = select(r7.z, 0.0f, (v_54 != 0u));
  let v_55 = x0[bitcast<i32>(r6.w)];
  r8 = vec4<f32>(v_55.xyz, r8.w);
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
  let v_56 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_56.xy, r10.z, v_56.z);
  r10.z = dpdx(r6.w);
  let v_57 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_57.xyz, r12.w);
  r12.w = dpdy(r6.w);
  let v_58 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_58.xy, r8.zw);
  let v_59 = -(r8.xyxx);
  let v_60 = fma(r10.xz, r12.xz, v_59.xy);
  r13 = vec4<f32>(v_60.xy, r13.zw);
  r8.x = (1.0f / r13.x);
  r8.y = (r10.z * r12.y);
  let v_61 = -(r8.yyyy);
  r13.z = fma(r10.x, r12.w, v_61.z);
  let v_62 = (r8.xx * r13.yz);
  r8 = vec4<f32>(v_62.xy, r8.zw);
  let v_63 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_63.xy, r8.zw);
  let v_64 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_64.xy, r8.zw);
  r6.w = fma((-(r7.wwww)).w, r8.x, r6.w);
  r6.w = fma((-(r7.wwww)).w, r8.y, r6.w);
  let v_65 = bitcast<u32>(r7.z);
  let v_66 = r6.w;
  r11.z = select(r8.z, v_66, (v_65 != 0u));
  r9.z = 0.0f;
  let v_67 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_67.xyz, r8.w);
  let v_68 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_68.xy, r11.zw);
  let v_69 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_69.xyz, r10.w);
  let v_70 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_70.xy, r11.zw);
  let v_71 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_71.xyz, r12.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_72.xy, r11.zw);
  let v_73 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_73.xyz, r13.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_74.xy, r11.zw);
  let v_75 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_75.xyz, r14.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_77.xyz, r15.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_79.xyz, r16.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_81.xyz, r17.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_83.xyz, r18.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_85.xyz, r19.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_86.xy, r11.zw);
  let v_87 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_87.xyz, r20.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_88.xy, r11.zw);
  let v_89 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_89.xyz, r21.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_90.xy, r11.zw);
  let v_91 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_91.xyz, r22.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_92.xy, r11.zw);
  let v_93 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_93.xyz, r23.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_94.xy, r11.zw);
  let v_95 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_95.xyz, r24.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_96.xy, r11.zw);
  let v_97 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_97.xyz, r9.w);
  let v_98 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_98.xy, r8.z);
  let v_99 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_99.xy, r10.z);
  let v_100 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_100.xy, r12.z);
  let v_101 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_101.xy, r13.z);
  let v_102 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_102.xy, r14.z);
  let v_103 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_103.xy, r15.z);
  let v_104 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_104.xy, r16.z);
  let v_105 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_105.xy, r17.z);
  let v_106 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_106.xy, r18.z);
  let v_107 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_107.xy, r19.z);
  let v_108 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_108.xy, r20.z);
  let v_109 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_109.xy, r21.z);
  let v_110 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_110.xy, r22.z);
  let v_111 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_111.xy, r23.z);
  let v_112 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_112.xy, r24.z);
  let v_113 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_113.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r6.w = dot(r8, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_114 = abs(r7.yyyy);
  r7.x = max(v_114.x, abs(r7.xxxx).x);
  r7.x = clamp(fma(r7.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r7.x * r5.w);
  r5.w = fma(r6.w, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.w = clamp(fma(v6.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r6.w = sqrt(r6.w);
  r6.w = (r6.w * cb6_6.tint_symbol_6[3u].z);
  let v_115 = -(r5.wwww);
  r5.w = fma(r6.w, v_115.w, r5.w);
  let v_116 = dot(r3.yzw, v_24.xyz);
  r6.w = clamp(vec4<f32>(v_116, v_116, v_116, v_116).w, 0.0f, 1.0f);
  let v_117 = dot(r4.yzw, r3.yzw);
  r7.x = clamp(vec4<f32>(v_117, v_117, v_117, v_117).x, 0.0f, 1.0f);
  let v_118 = dot(r5.xyz, v_24.xyz);
  r7.y = clamp(vec4<f32>(v_118, v_118, v_118, v_118).y, 0.0f, 1.0f);
  let v_119 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_119.xy, r7.zw);
  let v_120 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_120.xy);
  let v_121 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_121.xy);
  let v_122 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_122.xy, r7.zw);
  r7.z = ((-(cb12_12.tint_symbol_4[0u].xxxx)).z + 1.0f);
  let v_123 = fma(cb12_12.tint_symbol_4[0u].xx, r7.xy, r7.zz);
  r7 = vec4<f32>(v_123.xy, r7.zw);
  let v_124 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_124.xy, r8.zw);
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
  let v_125 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_125.xyz, r5.w);
  let v_126 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_126.xyz, r5.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r9 = vec4<f32>(r9.x, vec3<f32>());
    r8 = vec4<f32>(0.0f, r8.y, vec2<f32>());
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_127 = ((-(v6.xxyz)).xzw + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_127.x, r8.y, v_127.yz);
    let v_128 = (v6.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_128.xyz, r9.w);
    r9.x = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[19u].wwww)).x, 0.0f, 1.0f);
    r9.x = (r9.x * cb3_3.tint_symbol_2[19u].w);
    let v_129 = fma(cb3_3.tint_symbol_2[11u].xyz, r9.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_129.xyz, r9.w);
    let v_130 = (r9.xyz + v_21.xyz);
    r9 = vec4<f32>(v_130.xyz, r9.w);
    let v_131 = bitcast<vec3<u32>>(r7.yyy);
    let v_132 = r8.xzw;
    let v_133 = select(r9.xyz, v_132, (v_131 != vec3<u32>()));
    r8 = vec4<f32>(v_133.x, r8.y, v_133.yz);
    r7.y = dot(r8.xzw, r8.xzw);
    let v_134 = (r8.xzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_134.x, r8.y, v_134.yz);
    r9.x = dot(r8.xzw, r8.xzw);
    r9.x = inverseSqrt(r9.x);
    let v_135 = (r8.xzw * r9.xxx);
    r8 = vec4<f32>(v_135.x, r8.y, v_135.yz);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r9.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r9.x);
    let v_136 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.x = dot(r8.xzw, v_136.xyz);
    r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_137 = dot(r8.xzw, r3.yzw);
    r9.y = clamp(vec4<f32>(v_137, v_137, v_137, v_137).y, 0.0f, 1.0f);
    r9.x = (r9.x * r9.y);
    r9.y = (r7.y * r9.x);
    let v_138 = (r9.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(r9.x, v_138.xyz);
    let v_139 = (r0.xyz * r9.yzw);
    r9 = vec4<f32>(r9.x, v_139.xyz);
    let v_140 = fma(r2.xyz, r4.xxx, r8.xzw);
    r8 = vec4<f32>(v_140.x, r8.y, v_140.yz);
    r10.x = dot(r8.xzw, r8.xzw);
    r10.x = inverseSqrt(r10.x);
    let v_141 = (r8.xzw * r10.xxx);
    r8 = vec4<f32>(v_141.x, r8.y, v_141.yz);
    let v_142 = dot(r8.xzw, r4.yzw);
    r10.x = clamp(vec4<f32>(v_142, v_142, v_142, v_142).x, 0.0f, 1.0f);
    r10.x = ((-(r10.xxxx)).x + 1.0f);
    r10.y = (r10.x * r10.x);
    r10.y = (r10.y * r10.y);
    r10.x = (r10.y * r10.x);
    r10.x = fma(cb12_12.tint_symbol_4[0u].x, r10.x, r7.z);
    let v_143 = dot(r8.xzw, r3.yzw);
    r8.x = clamp(vec4<f32>(v_143, v_143, v_143, v_143).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.y);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r10.x);
    r8.x = (r9.x * r8.x);
    r7.y = (r7.y * r8.x);
    r7.y = (r7.w * r7.y);
    let v_144 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_144.x, r8.y, v_144.yz);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    let v_145 = bitcast<u32>(r9.x);
    let v_146 = r7.y;
    r6.w = select(r6.w, v_146, (v_145 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_147 = (v_21.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_147.xyz, r10.w);
      let v_148 = (v6.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_148.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[20u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[20u].w);
      let v_149 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_149.xyz, r11.w);
      let v_150 = (r11.xyz + v_21.xyz);
      r11 = vec4<f32>(v_150.xyz, r11.w);
      let v_151 = bitcast<vec3<u32>>(r7.yyy);
      let v_152 = r10.xyz;
      let v_153 = select(r11.xyz, v_152, (v_151 != vec3<u32>()));
      r10 = vec4<f32>(v_153.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_154 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_154.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_155 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_155.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r9.x);
      let v_156 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.x = dot(r10.xyz, v_156.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_157 = dot(r10.xyz, r3.yzw);
      r10.w = clamp(vec4<f32>(v_157, v_157, v_157, v_157).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_158 = (r10.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      let v_159 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_159.xyz);
      let v_160 = fma(r2.xyz, r4.xxx, r10.xyz);
      r10 = vec4<f32>(v_160.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_161 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_161.xyz, r10.w);
      let v_162 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_162, v_162, v_162, v_162).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r7.z);
      let v_163 = dot(r10.xyz, r3.yzw);
      r10.x = clamp(vec4<f32>(v_163, v_163, v_163, v_163).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_164 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xzw);
      r8 = vec4<f32>(v_164.x, r8.y, v_164.yz);
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
      let v_165 = (v_21.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_165.xyz, r10.w);
      let v_166 = (v6.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_166.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[21u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[21u].w);
      let v_167 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_167.xyz, r11.w);
      let v_168 = (r11.xyz + v_21.xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      let v_169 = bitcast<vec3<u32>>(r7.yyy);
      let v_170 = r10.xyz;
      let v_171 = select(r11.xyz, v_170, (v_169 != vec3<u32>()));
      r10 = vec4<f32>(v_171.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_172 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_172.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_173 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r9.x);
      let v_174 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.x = dot(r10.xyz, v_174.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_175 = dot(r10.xyz, r3.yzw);
      r10.w = clamp(vec4<f32>(v_175, v_175, v_175, v_175).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_176 = (r10.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      let v_177 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_177.xyz);
      let v_178 = fma(r2.xyz, r4.xxx, r10.xyz);
      r10 = vec4<f32>(v_178.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_179 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      let v_180 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_180, v_180, v_180, v_180).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r7.z);
      let v_181 = dot(r10.xyz, r3.yzw);
      r10.x = clamp(vec4<f32>(v_181, v_181, v_181, v_181).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_182 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xzw);
      r8 = vec4<f32>(v_182.x, r8.y, v_182.yz);
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
      let v_183 = (v_21.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_183.xyz, r10.w);
      let v_184 = (v6.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_184.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[22u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[22u].w);
      let v_185 = fma(cb3_3.tint_symbol_2[14u].xyz, r9.xxx, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_185.xyz, r11.w);
      let v_186 = (r11.xyz + v_21.xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      let v_187 = bitcast<vec3<u32>>(r7.yyy);
      let v_188 = r10.xyz;
      let v_189 = select(r11.xyz, v_188, (v_187 != vec3<u32>()));
      r10 = vec4<f32>(v_189.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_190 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_190.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_191 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_191.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[14u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[14u].w);
      r7.y = (r7.y / r9.x);
      let v_192 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r9.x = dot(r10.xyz, v_192.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).x, 0.0f, 1.0f);
      let v_193 = dot(r10.xyz, r3.yzw);
      r10.w = clamp(vec4<f32>(v_193, v_193, v_193, v_193).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_194 = (r10.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_194.xyz, r11.w);
      let v_195 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_195.xyz);
      let v_196 = fma(r2.xyz, r4.xxx, r10.xyz);
      r10 = vec4<f32>(v_196.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_197 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_197.xyz, r10.w);
      let v_198 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_198, v_198, v_198, v_198).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r7.z);
      let v_199 = dot(r10.xyz, r3.yzw);
      r10.x = clamp(vec4<f32>(v_199, v_199, v_199, v_199).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_200 = fma(r7.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xzw);
      r8 = vec4<f32>(v_200.x, r8.y, v_200.yz);
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
      let v_201 = (v_21.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_201.xyz, r10.w);
      let v_202 = (v6.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_202.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[23u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[23u].w);
      let v_203 = fma(cb3_3.tint_symbol_2[15u].xyz, r9.xxx, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_203.xyz, r11.w);
      let v_204 = (r11.xyz + v_21.xyz);
      r11 = vec4<f32>(v_204.xyz, r11.w);
      let v_205 = bitcast<vec3<u32>>(r7.yyy);
      let v_206 = r10.xyz;
      let v_207 = select(r11.xyz, v_206, (v_205 != vec3<u32>()));
      r10 = vec4<f32>(v_207.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_208 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_208.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_209 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_209.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[15u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[15u].w);
      r7.y = (r7.y / r9.x);
      let v_210 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r9.x = dot(r10.xyz, v_210.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).x, 0.0f, 1.0f);
      let v_211 = dot(r10.xyz, r3.yzw);
      r10.w = clamp(vec4<f32>(v_211, v_211, v_211, v_211).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_212 = (r10.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_212.xyz, r11.w);
      let v_213 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_213.xyz);
      let v_214 = fma(r2.xyz, r4.xxx, r10.xyz);
      r10 = vec4<f32>(v_214.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_215 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_215.xyz, r10.w);
      let v_216 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_216, v_216, v_216, v_216).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r7.z);
      let v_217 = dot(r10.xyz, r3.yzw);
      r10.x = clamp(vec4<f32>(v_217, v_217, v_217, v_217).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_218 = fma(r7.yyy, cb3_3.tint_symbol_2[23u].xyz, r8.xzw);
      r8 = vec4<f32>(v_218.x, r8.y, v_218.yz);
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
      let v_219 = (v_21.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_219.xyz, r10.w);
      let v_220 = (v6.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_220.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[24u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[24u].w);
      let v_221 = fma(cb3_3.tint_symbol_2[16u].xyz, r9.xxx, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_221.xyz, r11.w);
      let v_222 = (r11.xyz + v_21.xyz);
      r11 = vec4<f32>(v_222.xyz, r11.w);
      let v_223 = bitcast<vec3<u32>>(r7.yyy);
      let v_224 = r10.xyz;
      let v_225 = select(r11.xyz, v_224, (v_223 != vec3<u32>()));
      r10 = vec4<f32>(v_225.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_226 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_226.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_227 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_227.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[16u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[16u].w);
      r7.y = (r7.y / r9.x);
      let v_228 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r9.x = dot(r10.xyz, v_228.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).x, 0.0f, 1.0f);
      let v_229 = dot(r10.xyz, r3.yzw);
      r10.w = clamp(vec4<f32>(v_229, v_229, v_229, v_229).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_230 = (r10.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_230.xyz, r11.w);
      let v_231 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_231.xyz);
      let v_232 = fma(r2.xyz, r4.xxx, r10.xyz);
      r10 = vec4<f32>(v_232.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_233 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_233.xyz, r10.w);
      let v_234 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_234, v_234, v_234, v_234).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r7.z);
      let v_235 = dot(r10.xyz, r3.yzw);
      r10.x = clamp(vec4<f32>(v_235, v_235, v_235, v_235).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_236 = fma(r7.yyy, cb3_3.tint_symbol_2[24u].xyz, r8.xzw);
      r8 = vec4<f32>(v_236.x, r8.y, v_236.yz);
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
      let v_237 = (v_21.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_237.xyz, r10.w);
      let v_238 = (v6.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_238.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[25u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[25u].w);
      let v_239 = fma(cb3_3.tint_symbol_2[17u].xyz, r9.xxx, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_239.xyz, r11.w);
      let v_240 = (r11.xyz + v_21.xyz);
      r11 = vec4<f32>(v_240.xyz, r11.w);
      let v_241 = bitcast<vec3<u32>>(r7.yyy);
      let v_242 = r10.xyz;
      let v_243 = select(r11.xyz, v_242, (v_241 != vec3<u32>()));
      r10 = vec4<f32>(v_243.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_244 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_244.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_245 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_245.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[17u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[17u].w);
      r7.y = (r7.y / r9.x);
      let v_246 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r9.x = dot(r10.xyz, v_246.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).x, 0.0f, 1.0f);
      let v_247 = dot(r10.xyz, r3.yzw);
      r10.w = clamp(vec4<f32>(v_247, v_247, v_247, v_247).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_248 = (r10.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_248.xyz, r11.w);
      let v_249 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_249.xyz);
      let v_250 = fma(r2.xyz, r4.xxx, r10.xyz);
      r10 = vec4<f32>(v_250.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_251 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_251.xyz, r10.w);
      let v_252 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_252, v_252, v_252, v_252).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r7.z);
      let v_253 = dot(r10.xyz, r3.yzw);
      r10.x = clamp(vec4<f32>(v_253, v_253, v_253, v_253).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_254 = fma(r7.yyy, cb3_3.tint_symbol_2[25u].xyz, r8.xzw);
      r8 = vec4<f32>(v_254.x, r8.y, v_254.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_255 = (v_21.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_255.xyz, r10.w);
      let v_256 = (v6.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_256.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[26u].wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[26u].w);
      let v_257 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_257.xyz, r11.w);
      let v_258 = (r11.xyz + v_21.xyz);
      r11 = vec4<f32>(v_258.xyz, r11.w);
      let v_259 = bitcast<vec3<u32>>(r6.www);
      let v_260 = r10.xyz;
      let v_261 = select(r11.xyz, v_260, (v_259 != vec3<u32>()));
      r10 = vec4<f32>(v_261.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_262 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_262.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_263 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_263.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r6.w, cb3_3.tint_symbol_2[18u].w);
      r6.w = (r6.w / r7.y);
      let v_264 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.y = dot(r10.xyz, v_264.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_265 = dot(r10.xyz, r3.yzw);
      r9.x = clamp(vec4<f32>(v_265, v_265, v_265, v_265).x, 0.0f, 1.0f);
      r7.y = (r7.y * r9.x);
      r9.x = (r6.w * r7.y);
      let v_266 = (r9.xxx * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_266.xyz, r11.w);
      let v_267 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_267.xyz);
      let v_268 = fma(r2.xyz, r4.xxx, r10.xyz);
      r2 = vec4<f32>(v_268.xyz, r2.w);
      r4.x = dot(r2.xyz, r2.xyz);
      r4.x = inverseSqrt(r4.x);
      let v_269 = (r2.xyz * r4.xxx);
      r2 = vec4<f32>(v_269.xyz, r2.w);
      let v_270 = dot(r2.xyz, r4.yzw);
      r4.x = clamp(vec4<f32>(v_270, v_270, v_270, v_270).x, 0.0f, 1.0f);
      r4.x = ((-(r4.xxxx)).x + 1.0f);
      r9.x = (r4.x * r4.x);
      r9.x = (r9.x * r9.x);
      r4.x = (r4.x * r9.x);
      r4.x = fma(cb12_12.tint_symbol_4[0u].x, r4.x, r7.z);
      let v_271 = dot(r2.xyz, r3.yzw);
      r2.x = clamp(vec4<f32>(v_271, v_271, v_271, v_271).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r8.y);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r4.x);
      r2.x = (r7.y * r2.x);
      r2.x = (r6.w * r2.x);
      r2.x = (r7.w * r2.x);
      let v_272 = fma(r2.xxx, cb3_3.tint_symbol_2[26u].xyz, r8.xzw);
      r8 = vec4<f32>(v_272.x, r8.y, v_272.yz);
    }
  }
  r2.x = (r7.x * r7.x);
  r1.x = (r1.x * r1.x);
  let v_273 = (r8.xzw * r1.xxx);
  r7 = vec4<f32>(r7.x, v_273.xyz);
  let v_274 = fma(r2.xxx, r9.yzw, r7.yzw);
  r2 = vec4<f32>(v_274.xyz, r2.w);
  let v_275 = fma(r5.xyz, r5.www, r2.xyz);
  r2 = vec4<f32>(v_275.xyz, r2.w);
  r1.x = fma(r2.w, r3.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_276 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_276.xyz, r5.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_277 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(r7.x, v_277.xyz);
  let v_278 = (r7.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(r7.x, v_278.xyz);
  let v_279 = fma(r5.xyz, r2.www, r7.yzw);
  r5 = vec4<f32>(v_279.xyz, r5.w);
  let v_280 = (r1.zzz * r5.xyz);
  r5 = vec4<f32>(v_280.xyz, r5.w);
  let v_281 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(r7.x, v_281.xyz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_282 = dot(r8.xyz, r3.yzw);
  r1.x = clamp(vec4<f32>(v_282, v_282, v_282, v_282).x, 0.0f, 1.0f);
  let v_283 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r7.yzw);
  r7 = vec4<f32>(r7.x, v_283.xyz);
  let v_284 = fma(r7.yzw, r1.yyy, r5.xyz);
  r5 = vec4<f32>(v_284.xyz, r5.w);
  let v_285 = (r7.xxx * r5.xyz);
  r5 = vec4<f32>(v_285.xyz, r5.w);
  let v_286 = fma(r5.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_286.xyz, r0.w);
  r1.x = ((-(r7.xxxx)).x + 1.0f);
  r2.x = dot((-(r4.yzwy)).xyz, r3.yzw);
  r2.x = (r2.x + r2.x);
  let v_287 = -(r2.xxxx);
  let v_288 = -(r4.yzwy);
  let v_289 = fma(r3.yzw, v_287.xyz, v_288.xyz);
  r2 = vec4<f32>(v_289.xyz, r2.w);
  let v_290 = clamp(((r1.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_290.xy, r3.zw);
  r1.w = ((-(r3.xxxx)).w + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.w * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.w)));
  r3.z = fma(r1.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.w = (r1.w * r1.w);
  r1.w = fma(r1.w, 5.0f, r2.w);
  let v_291 = bitcast<u32>(r3.x);
  let v_292 = r3.z;
  r1.w = select(r1.w, v_292, (v_291 != 0u));
  let v_293 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_293.xy, r2.z, v_293.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_294 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_294.xy, r2.z, v_294.z);
  let v_295 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_295.xy, r2.z, v_295.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_296 = bitcast<vec2<u32>>(r2.zz);
  let v_297 = r2.xy;
  let v_298 = select(r2.wy, v_297, (v_296 != vec2<u32>()));
  r2 = vec4<f32>(v_298.xy, r2.zw);
  let v_299 = r1.w;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_299);
  r1.y = max(r1.z, r1.y);
  let v_300 = (r1.yyy * r2.xyz);
  r1 = vec4<f32>(r1.x, v_300.xyz);
  let v_301 = (r3.yyy * r1.yzw);
  r2 = vec4<f32>(v_301.xyz, r2.w);
  let v_302 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_302.xyz, r2.w);
  let v_303 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_303.xyz);
  let v_304 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_304.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r1.x = dot(r6.xyz, r6.xyz);
    r1.y = sqrt(r1.x);
    let v_305 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.z = (r1.y + v_305.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r1.y * r6.z);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_306 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_306 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_307 = (r1.xxx * r6.xyz);
    r2 = vec4<f32>(v_307.xyz, r2.w);
    let v_308 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.x = clamp(vec4<f32>(v_308, v_308, v_308, v_308).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
    r1.x = exp2(r1.x);
    let v_309 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_309, v_309, v_309, v_309).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
    let v_310 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r1.z + v_310.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_311 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r1.z * v_311.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_312 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(r2.x, v_312.xyz);
    let v_313 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(r2.x, v_313.xyz);
    let v_314 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_314.xyz, r3.w);
    let v_315 = fma(r2.xxx, r3.xyz, r2.yzw);
    r2 = vec4<f32>(v_315.xyz, r2.w);
    let v_316 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_317 = (r2.xyz + v_316.xyz);
    r2 = vec4<f32>(v_317.xyz, r2.w);
    let v_318 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_318.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_319 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_319.xyz, r3.w);
    let v_320 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_320.xyz, r1.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_321 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_321.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r2.x = (r2.x + -1.0f);
      r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r2.x = 1.0f;
    }
    let v_322 = -(r0.xyzx);
    let v_323 = fma(r1.xyz, r2.xxx, v_322.xyz);
    r1 = vec4<f32>(v_323.xyz, r1.w);
    let v_324 = fma(r1.www, r1.xyz, r0.xyz);
    r1 = vec4<f32>(v_324.xyz, r1.w);
  } else {
    r1.w = dot(r6.xyz, r6.xyz);
    r2.x = sqrt(r1.w);
    let v_325 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_325.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r2.x * r6.z);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_326 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_326 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_327 = (r1.www * r6.xyz);
    r3 = vec4<f32>(v_327.xyz, r3.w);
    let v_328 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_328, v_328, v_328, v_328).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_329 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_329, v_329, v_329, v_329).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].y);
    let v_330 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r2.y + v_330.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r2.z = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).z, 0.0f, 1.0f);
    let v_331 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.y = (r2.y * v_331.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    let v_332 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_332.xyz, r3.w);
    let v_333 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_333.xyz, r3.w);
    let v_334 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_334.xyz, r4.w);
    let v_335 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_335.xyz, r3.w);
    let v_336 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_337 = (r3.xyz + v_336.xyz);
    r3 = vec4<f32>(v_337.xyz, r3.w);
    let v_338 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_338.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_339 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_339.xyz, r4.w);
    let v_340 = fma(r2.xxx, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_340.xy, r2.z, v_340.z);
    let v_341 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_341.xy, r2.z, v_341.z);
    let v_342 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_342.xyz, r1.w);
  }
  let v_343 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_343.xyz, o0.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < r0.w)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  o1 = (r0.x * v1.z);
  o0.w = r0.w;
  o2 = r0.x;
}

struct tint_symbol_9 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_344 : vec4<f32>) -> tint_symbol_9 {
  main_inner(v0, v1, v2, v4, v5, v6, v_344);
  return tint_symbol_9(o0, o1, o2);
}
