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

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

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

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.z = max(cb12_12.tint_symbol_4[0u].w, 0.00100000004749745131f);
  let v_4 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r1.yyy * v5.xyz);
  r1 = vec4<f32>(r1.x, v_5.xyz);
  let v_6 = fma(r1.xxx, v4.xyz, r1.yzw);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(r0.www, v2.xyz, r1.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_8 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_8.xy, r1.z, v_8.z);
  let v_9 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  let v_10 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = -(v6.xyzx);
  let v_12 = (v_11.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  r2.z = dot(r3.xyz, r3.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_13 = (r2.zzz * r3.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_15 = fma(r3.xyz, r2.zzz, v_14.xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_16 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  r2.w = clamp(cb12_12.tint_symbol_4[0u].z, 0.0f, 1.0f);
  let v_17 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_17.xy, r2.zw);
  r3.w = (cb12_12.tint_symbol_4[0u].y + -500.0f);
  r3.w = max(r3.w, 0.0f);
  r4.w = ((-(r3.wwww)).w + cb12_12.tint_symbol_4[0u].y);
  r3.w = (r3.w * 558.0f);
  r3.w = fma(r4.w, 3.0f, r3.w);
  r4.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_18 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  let v_19 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_19.xyz, r7.w);
  let v_20 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_20.xyz, r7.w);
  let v_21 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_21.xyz, r7.w);
  let v_22 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_22.xyz, r8.w);
  let v_23 = &(x0[0u]);
  let v_24 = r8;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_25.xyz, r9.w);
  let v_26 = &(x0[1u]);
  let v_27 = r9;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  let v_28 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_28.xyz, r10.w);
  let v_29 = &(x0[2u]);
  let v_30 = r10;
  *(v_29) = vec4<f32>(v_30.xyz, (*(v_29)).w);
  let v_31 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_31.xyz, r7.w);
  let v_32 = &(x0[3u]);
  let v_33 = r7;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_35 = r11;
  r11 = vec4<f32>(v_35.x, v_34.x, v_35.z, v_34.y);
  r5.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_36 = abs(r10.yyyy);
  r6.w = max(v_36.w, abs(r10.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_37 = (bitcast<u32>(r6.w) != 0u);
  let v_38 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_38, v_37);
  let v_39 = abs(r9.yyyy);
  r7.z = max(v_39.z, abs(r9.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_40 = bitcast<u32>(r7.z);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_40 != 0u));
  let v_41 = abs(r8.yyyy);
  r7.z = max(v_41.z, abs(r8.xxxx).z);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_42 = bitcast<u32>(r5.w);
  r5.w = select(r6.w, 0.0f, (v_42 != 0u));
  let v_43 = x0[bitcast<i32>(r5.w)];
  r8 = vec4<f32>(v_43.xyz, r8.w);
  r5.w = f32(bitcast<i32>(r5.w));
  r6.w = (r5.w + 0.5f);
  r6.w = (r6.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r5.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r5.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r7.z = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r6.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, !((r5.w == 0.0f))));
  r5.w = ((-(r5.wwww)).w + r8.z);
  let v_44 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_44.xy, r10.z, v_44.z);
  r10.z = dpdx(r5.w);
  let v_45 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_45.xyz, r12.w);
  r12.w = dpdy(r5.w);
  let v_46 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_46.xy, r8.zw);
  let v_47 = -(r8.xyxx);
  let v_48 = fma(r10.xz, r12.xz, v_47.xy);
  r13 = vec4<f32>(v_48.xy, r13.zw);
  r7.w = (1.0f / r13.x);
  r8.x = (r10.z * r12.y);
  let v_49 = -(r8.xxxx);
  r13.z = fma(r10.x, r12.w, v_49.z);
  let v_50 = (r7.ww * r13.yz);
  r8 = vec4<f32>(v_50.xy, r8.zw);
  let v_51 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_51.xy, r8.zw);
  let v_52 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_52.xy, r8.zw);
  r5.w = fma((-(r7.zzzz)).w, r8.x, r5.w);
  r5.w = fma((-(r7.zzzz)).w, r8.y, r5.w);
  let v_53 = bitcast<u32>(r6.w);
  let v_54 = r5.w;
  r11.z = select(r8.z, v_54, (v_53 != 0u));
  r9.z = 0.0f;
  let v_55 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_55.xyz, r8.w);
  let v_56 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_56.xy, r11.zw);
  let v_57 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_57.xyz, r10.w);
  let v_58 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_58.xy, r11.zw);
  let v_59 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_59.xyz, r12.w);
  let v_60 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_60.xy, r11.zw);
  let v_61 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_61.xyz, r13.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_62.xy, r11.zw);
  let v_63 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_63.xyz, r14.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_64.xy, r11.zw);
  let v_65 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_65.xyz, r15.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_66.xy, r11.zw);
  let v_67 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_67.xyz, r16.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_68.xy, r11.zw);
  let v_69 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_69.xyz, r17.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_70.xy, r11.zw);
  let v_71 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_71.xyz, r18.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_72.xy, r11.zw);
  let v_73 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_73.xyz, r19.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_74.xy, r11.zw);
  let v_75 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_75.xyz, r20.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_77.xyz, r21.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_79.xyz, r22.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_81.xyz, r23.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_83.xyz, r24.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_85.xyz, r9.w);
  let v_86 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_86.xy, r8.z);
  let v_87 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_87.xy, r10.z);
  let v_88 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_88.xy, r12.z);
  let v_89 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_89.xy, r13.z);
  let v_90 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_90.xy, r14.z);
  let v_91 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_91.xy, r15.z);
  let v_92 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_92.xy, r16.z);
  let v_93 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_93.xy, r17.z);
  let v_94 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_94.xy, r18.z);
  let v_95 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_95.xy, r19.z);
  let v_96 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_96.xy, r20.z);
  let v_97 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_97.xy, r21.z);
  let v_98 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_98.xy, r22.z);
  let v_99 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_99.xy, r23.z);
  let v_100 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_100.xy, r24.z);
  let v_101 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_101.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r5.w = dot(r8, vec4<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_102 = abs(r7.yyyy);
  r6.w = max(v_102.w, abs(r7.xxxx).w);
  r6.w = clamp(fma(r6.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.w * r4.w);
  r4.w = fma(r5.w, 0.0625f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v6.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_5[3u].z);
  let v_103 = -(r4.wwww);
  r4.w = fma(r5.w, v_103.w, r4.w);
  let v_104 = dot(r1.xyw, v_14.xyz);
  r5.w = clamp(vec4<f32>(v_104, v_104, v_104, v_104).w, 0.0f, 1.0f);
  let v_105 = dot(r4.xyz, r1.xyw);
  r7.x = clamp(vec4<f32>(v_105, v_105, v_105, v_105).x, 0.0f, 1.0f);
  let v_106 = dot(r5.xyz, v_14.xyz);
  r7.y = clamp(vec4<f32>(v_106, v_106, v_106, v_106).y, 0.0f, 1.0f);
  let v_107 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_107.xy, r7.zw);
  let v_108 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_108.xy);
  let v_109 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_109.xy);
  let v_110 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_110.xy, r7.zw);
  r6.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_111 = fma(cb12_12.tint_symbol_4[0u].xx, r7.xy, r6.ww);
  r7 = vec4<f32>(v_111.xy, r7.zw);
  let v_112 = (r3.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_112.xy);
  r7.z = (r7.z * 0.125f);
  r7.x = fma((-(r2.wwww)).x, r7.x, 1.0f);
  r5.x = dot(r1.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.w);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r7.z * r5.x);
  r5.x = (r2.w * r5.x);
  r5.x = (r5.w * r5.x);
  r5.y = (r5.w * r7.x);
  let v_113 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_113.xyz, r5.w);
  let v_114 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_114.xyz, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_115 = (v_11.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_115.xyz, r8.w);
    let v_116 = (v6.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_116.xyz, r9.w);
    r8.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r8.w = (r8.w * cb3_3.tint_symbol_2[19u].w);
    let v_117 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_117.xyz, r9.w);
    let v_118 = (r9.xyz + v_11.xyz);
    r9 = vec4<f32>(v_118.xyz, r9.w);
    let v_119 = bitcast<vec3<u32>>(r7.yyy);
    let v_120 = r8.xyz;
    let v_121 = select(r9.xyz, v_120, (v_119 != vec3<u32>()));
    r8 = vec4<f32>(v_121.xyz, r8.w);
    r7.y = dot(r8.xyz, r8.xyz);
    let v_122 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_122.xyz, r8.w);
    r8.w = dot(r8.xyz, r8.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_123 = (r8.www * r8.xyz);
    r8 = vec4<f32>(v_123.xyz, r8.w);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r8.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r8.w);
    let v_124 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.w = dot(r8.xyz, v_124.xyz);
    r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_125 = dot(r8.xyz, r1.xyw);
    r9.x = clamp(vec4<f32>(v_125, v_125, v_125, v_125).x, 0.0f, 1.0f);
    r8.w = (r8.w * r9.x);
    r9.x = (r7.y * r8.w);
    let v_126 = (r9.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_126.xyz, r9.w);
    let v_127 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_127.xyz, r9.w);
    let v_128 = fma(r3.xyz, r2.zzz, r8.xyz);
    r8 = vec4<f32>(v_128.xyz, r8.w);
    r9.w = dot(r8.xyz, r8.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_129 = (r8.xyz * r9.www);
    r8 = vec4<f32>(v_129.xyz, r8.w);
    let v_130 = dot(r8.xyz, r4.xyz);
    r9.w = clamp(vec4<f32>(v_130, v_130, v_130, v_130).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.x = (r9.w * r9.w);
    r10.x = (r10.x * r10.x);
    r9.w = (r9.w * r10.x);
    r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
    let v_131 = dot(r8.xyz, r1.xyw);
    r8.x = clamp(vec4<f32>(v_131, v_131, v_131, v_131).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.w * r8.x);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.w);
    r8.x = (r8.w * r8.x);
    r7.y = (r7.y * r8.x);
    r7.y = (r7.z * r7.y);
    let v_132 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_132.xyz, r8.w);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r8.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    let v_133 = bitcast<u32>(r8.w);
    let v_134 = r7.y;
    r5.w = select(r5.w, v_134, (v_133 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_135 = (v_11.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_135.xyz, r10.w);
      let v_136 = (v6.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_136.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[20u].w);
      let v_137 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_137.xyz, r11.w);
      let v_138 = (r11.xyz + v_11.xyz);
      r11 = vec4<f32>(v_138.xyz, r11.w);
      let v_139 = bitcast<vec3<u32>>(r7.yyy);
      let v_140 = r10.xyz;
      let v_141 = select(r11.xyz, v_140, (v_139 != vec3<u32>()));
      r10 = vec4<f32>(v_141.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_142 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_142.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_143 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_143.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r8.w);
      let v_144 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.w = dot(r10.xyz, v_144.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_145 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_145, v_145, v_145, v_145).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_146 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_146.xyz, r11.w);
      let v_147 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_147.xyz, r9.w);
      let v_148 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_148.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_149 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_149.xyz, r10.w);
      let v_150 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_150, v_150, v_150, v_150).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_151 = dot(r10.xyz, r1.xyw);
      r10.x = clamp(vec4<f32>(v_151, v_151, v_151, v_151).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_152 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_152.xyz, r8.w);
    }
  } else {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_153 = (v_11.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_153.xyz, r10.w);
      let v_154 = (v6.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_154.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[21u].w);
      let v_155 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_155.xyz, r11.w);
      let v_156 = (r11.xyz + v_11.xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      let v_157 = bitcast<vec3<u32>>(r7.yyy);
      let v_158 = r10.xyz;
      let v_159 = select(r11.xyz, v_158, (v_157 != vec3<u32>()));
      r10 = vec4<f32>(v_159.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_160 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_160.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_161 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_161.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r8.w);
      let v_162 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.w = dot(r10.xyz, v_162.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_163 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_163, v_163, v_163, v_163).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_164 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      let v_165 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_165.xyz, r9.w);
      let v_166 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_166.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_167 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_167.xyz, r10.w);
      let v_168 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_168, v_168, v_168, v_168).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_169 = dot(r10.xyz, r1.xyw);
      r10.x = clamp(vec4<f32>(v_169, v_169, v_169, v_169).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_170 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_170.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_171 = (v_11.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      let v_172 = (v6.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_172.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[22u].w);
      let v_173 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      let v_174 = (r11.xyz + v_11.xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = bitcast<vec3<u32>>(r7.yyy);
      let v_176 = r10.xyz;
      let v_177 = select(r11.xyz, v_176, (v_175 != vec3<u32>()));
      r10 = vec4<f32>(v_177.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_178 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_178.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_179 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[14u].w);
      r7.y = (r7.y / r8.w);
      let v_180 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.w = dot(r10.xyz, v_180.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_181 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_181, v_181, v_181, v_181).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_182 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_182.xyz, r11.w);
      let v_183 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_183.xyz, r9.w);
      let v_184 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_184.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_185 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_185.xyz, r10.w);
      let v_186 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_186, v_186, v_186, v_186).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_187 = dot(r10.xyz, r1.xyw);
      r10.x = clamp(vec4<f32>(v_187, v_187, v_187, v_187).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_188 = fma(r7.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_188.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_189 = (v_11.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      let v_190 = (v6.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_190.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[23u].w);
      let v_191 = fma(cb3_3.tint_symbol_2[15u].xyz, r8.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_191.xyz, r11.w);
      let v_192 = (r11.xyz + v_11.xyz);
      r11 = vec4<f32>(v_192.xyz, r11.w);
      let v_193 = bitcast<vec3<u32>>(r7.yyy);
      let v_194 = r10.xyz;
      let v_195 = select(r11.xyz, v_194, (v_193 != vec3<u32>()));
      r10 = vec4<f32>(v_195.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_196 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_196.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_197 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_197.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[15u].w);
      r7.y = (r7.y / r8.w);
      let v_198 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r8.w = dot(r10.xyz, v_198.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_199 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_199, v_199, v_199, v_199).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_200 = (r9.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_200.xyz, r11.w);
      let v_201 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_201.xyz, r9.w);
      let v_202 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_202.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_203 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_203.xyz, r10.w);
      let v_204 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_204, v_204, v_204, v_204).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_205 = dot(r10.xyz, r1.xyw);
      r10.x = clamp(vec4<f32>(v_205, v_205, v_205, v_205).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_206 = fma(r7.yyy, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_206.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_207 = (v_11.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_207.xyz, r10.w);
      let v_208 = (v6.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_208.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[24u].w);
      let v_209 = fma(cb3_3.tint_symbol_2[16u].xyz, r8.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_209.xyz, r11.w);
      let v_210 = (r11.xyz + v_11.xyz);
      r11 = vec4<f32>(v_210.xyz, r11.w);
      let v_211 = bitcast<vec3<u32>>(r7.yyy);
      let v_212 = r10.xyz;
      let v_213 = select(r11.xyz, v_212, (v_211 != vec3<u32>()));
      r10 = vec4<f32>(v_213.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_214 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_214.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_215 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_215.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[16u].w);
      r7.y = (r7.y / r8.w);
      let v_216 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r8.w = dot(r10.xyz, v_216.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_217 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_217, v_217, v_217, v_217).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_218 = (r9.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_218.xyz, r11.w);
      let v_219 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_219.xyz, r9.w);
      let v_220 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_220.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_221 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_221.xyz, r10.w);
      let v_222 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_222, v_222, v_222, v_222).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_223 = dot(r10.xyz, r1.xyw);
      r10.x = clamp(vec4<f32>(v_223, v_223, v_223, v_223).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_224 = fma(r7.yyy, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_224.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_225 = (v_11.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_225.xyz, r10.w);
      let v_226 = (v6.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_226.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[25u].w);
      let v_227 = fma(cb3_3.tint_symbol_2[17u].xyz, r8.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_227.xyz, r11.w);
      let v_228 = (r11.xyz + v_11.xyz);
      r11 = vec4<f32>(v_228.xyz, r11.w);
      let v_229 = bitcast<vec3<u32>>(r7.yyy);
      let v_230 = r10.xyz;
      let v_231 = select(r11.xyz, v_230, (v_229 != vec3<u32>()));
      r10 = vec4<f32>(v_231.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_232 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_232.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_233 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_233.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[17u].w);
      r7.y = (r7.y / r8.w);
      let v_234 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r8.w = dot(r10.xyz, v_234.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_235 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_235, v_235, v_235, v_235).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_236 = (r9.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_236.xyz, r11.w);
      let v_237 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_237.xyz, r9.w);
      let v_238 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_238.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_239 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_239.xyz, r10.w);
      let v_240 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_240, v_240, v_240, v_240).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_241 = dot(r10.xyz, r1.xyw);
      r10.x = clamp(vec4<f32>(v_241, v_241, v_241, v_241).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_242 = fma(r7.yyy, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_242.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_243 = (v_11.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_243.xyz, r10.w);
      let v_244 = (v6.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_244.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[26u].wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[26u].w);
      let v_245 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_245.xyz, r11.w);
      let v_246 = (r11.xyz + v_11.xyz);
      r11 = vec4<f32>(v_246.xyz, r11.w);
      let v_247 = bitcast<vec3<u32>>(r5.www);
      let v_248 = r10.xyz;
      let v_249 = select(r11.xyz, v_248, (v_247 != vec3<u32>()));
      r10 = vec4<f32>(v_249.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_250 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_250.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_251 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_251.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r5.w, cb3_3.tint_symbol_2[18u].w);
      r5.w = (r5.w / r7.y);
      let v_252 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.y = dot(r10.xyz, v_252.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_253 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_253, v_253, v_253, v_253).w, 0.0f, 1.0f);
      r7.y = (r7.y * r8.w);
      r8.w = (r5.w * r7.y);
      let v_254 = (r8.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_254.xyz, r11.w);
      let v_255 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_255.xyz, r9.w);
      let v_256 = fma(r3.xyz, r2.zzz, r10.xyz);
      r3 = vec4<f32>(v_256.xyz, r3.w);
      r2.z = dot(r3.xyz, r3.xyz);
      r2.z = inverseSqrt(r2.z);
      let v_257 = (r2.zzz * r3.xyz);
      r3 = vec4<f32>(v_257.xyz, r3.w);
      let v_258 = dot(r3.xyz, r4.xyz);
      r2.z = clamp(vec4<f32>(v_258, v_258, v_258, v_258).z, 0.0f, 1.0f);
      r2.z = ((-(r2.zzzz)).z + 1.0f);
      r8.w = (r2.z * r2.z);
      r8.w = (r8.w * r8.w);
      r2.z = (r2.z * r8.w);
      r2.z = fma(cb12_12.tint_symbol_4[0u].x, r2.z, r6.w);
      let v_259 = dot(r3.xyz, r1.xyw);
      r3.x = clamp(vec4<f32>(v_259, v_259, v_259, v_259).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r7.w);
      r3.x = exp2(r3.x);
      r2.z = (r2.z * r3.x);
      r2.z = (r7.y * r2.z);
      r2.z = (r5.w * r2.z);
      r2.z = (r7.z * r2.z);
      let v_260 = fma(r2.zzz, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_260.xyz, r8.w);
    }
  }
  r2.z = (r7.x * r7.x);
  r2.w = (r2.w * r2.w);
  let v_261 = (r8.xyz * r2.www);
  r3 = vec4<f32>(v_261.xyz, r3.w);
  let v_262 = fma(r2.zzz, r9.xyz, r3.xyz);
  r3 = vec4<f32>(v_262.xyz, r3.w);
  let v_263 = fma(r5.xyz, r4.www, r3.xyz);
  r3 = vec4<f32>(v_263.xyz, r3.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_264 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_264.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_265 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(r7.x, v_265.xyz);
  let v_266 = (r7.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(r7.x, v_266.xyz);
  let v_267 = fma(r5.xyz, r1.zzz, r7.yzw);
  r5 = vec4<f32>(v_267.xyz, r5.w);
  let v_268 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_268.xyz, r5.w);
  let v_269 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(r7.x, v_269.xyz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_270 = dot(r8.xyz, r1.xyw);
  r0.w = clamp(vec4<f32>(v_270, v_270, v_270, v_270).w, 0.0f, 1.0f);
  let v_271 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r7.yzw);
  r7 = vec4<f32>(r7.x, v_271.xyz);
  let v_272 = fma(r7.yzw, r2.xxx, r5.xyz);
  r5 = vec4<f32>(v_272.xyz, r5.w);
  let v_273 = (r7.xxx * r5.xyz);
  r5 = vec4<f32>(v_273.xyz, r5.w);
  let v_274 = fma(r5.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_274.xyz, r0.w);
  r0.w = ((-(r7.xxxx)).w + 1.0f);
  r1.z = dot((-(r4.xyzx)).xyz, r1.xyw);
  r1.z = (r1.z + r1.z);
  let v_275 = -(r1.zzzz);
  let v_276 = -(r4.xyzx);
  let v_277 = fma(r1.xyw, v_275.xyz, v_276.xyz);
  r1 = vec4<f32>(v_277.xyz, r1.w);
  let v_278 = clamp(((r3.wwww * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, v_278.xy);
  r1.w = ((-(r2.zzzz)).w + 1.0f);
  r2.z = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.w * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.z)));
  r3.y = fma(r1.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.w = (r1.w * r1.w);
  r1.w = fma(r1.w, 5.0f, r2.z);
  let v_279 = bitcast<u32>(r3.x);
  let v_280 = r3.y;
  r1.w = select(r1.w, v_280, (v_279 != 0u));
  let v_281 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_281.xyz, r3.w);
  r1.x = (abs(r1.zzzz).x + 1.0f);
  let v_282 = (r3.xyz / r1.xxx);
  r3 = vec4<f32>(v_282.xyz, r3.w);
  let v_283 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_283.xyz, r3.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_284 = bitcast<vec2<u32>>(r1.xx);
  let v_285 = r3.xy;
  let v_286 = select(r3.zy, v_285, (v_284 != vec2<u32>()));
  r1 = vec4<f32>(v_286.xy, r1.zw);
  let v_287 = r1.w;
  r1 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_287);
  r1.w = max(r2.y, r2.x);
  let v_288 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_288.xyz, r1.w);
  let v_289 = (r2.www * r1.xyz);
  r2 = vec4<f32>(v_289.xyz, r2.w);
  let v_290 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_290.xyz, r2.w);
  let v_291 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_291.xyz, r1.w);
  let v_292 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_292.xyz, r0.w);
  o0.w = (v0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_293 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_293.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_294 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_294 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_295 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_295.xyz, r2.w);
    let v_296 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_296, v_296, v_296, v_296).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_297 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_297, v_297, v_297, v_297).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_298 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_298.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_299 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_299.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_300 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_300.xyz, r2.w);
    let v_301 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_301.xyz, r2.w);
    let v_302 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_302.xyz, r3.w);
    let v_303 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_303.xyz, r2.w);
    let v_304 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_305 = (r2.xyz + v_304.xyz);
    r2 = vec4<f32>(v_305.xyz, r2.w);
    let v_306 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_306.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_307 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_307.xyz, r3.w);
    let v_308 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_308.xy, r1.z, v_308.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_309 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_309.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_310 = -(r0.xyxz);
    let v_311 = fma(r1.xyw, r0.www, v_310.xyw);
    r1 = vec4<f32>(v_311.xy, r1.z, v_311.z);
    let v_312 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_312.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_313 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_313.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_314 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_314 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_315 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_315.xyz, r3.w);
    let v_316 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_316, v_316, v_316, v_316).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_317 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_317, v_317, v_317, v_317).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_318 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_318.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_319 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_319.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_320 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_320.xyz, r3.w);
    let v_321 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_321.xyz, r3.w);
    let v_322 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_322.xyz, r4.w);
    let v_323 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_323.xyz, r3.w);
    let v_324 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_325 = (r3.xyz + v_324.xyz);
    r3 = vec4<f32>(v_325.xyz, r3.w);
    let v_326 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_326.x, r2.y, v_326.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_327 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_327.xyz, r3.w);
    let v_328 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_328.x, r2.y, v_328.yz);
    let v_329 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_329.x, r2.y, v_329.yz);
    let v_330 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_330.xyz, r1.w);
  }
  let v_331 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_331.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_332 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6, v_332);
  return o0;
}
