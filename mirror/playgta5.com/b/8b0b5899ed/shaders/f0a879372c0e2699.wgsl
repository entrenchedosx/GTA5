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

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb7_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb7_struct_1;

struct cb16_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 16u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb16_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
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
  r0 = textureSample(t0, s0, v0.xyxx.xy);
  r1 = textureSample(t3, s3, v0.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.z = max(cb12_12.tint_symbol_4[6u].w, 0.00100000004749745131f);
  let v_4 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r1.yyy * v5.xyz);
  r1 = vec4<f32>(r1.x, v_5.xyz);
  let v_6 = fma(r1.xxx, v4.xyz, r1.yzw);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(r0.www, v1.xyz, r1.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_8 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_8.xy, r1.z, v_8.z);
  r2 = textureSample(t4, s4, v0.xyxx.xy);
  let v_9 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  r2.x = dot(r2.xyz, cb12_12.tint_symbol_4[6u].xyz);
  r2.x = (r2.x * cb12_12.tint_symbol_4[5u].y);
  let v_10 = (r0.xyz * cb12_12.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = (r0.xyz * v6.xxx);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = (v6.xx * cb2_2.tint_symbol_1[15u].zy);
  let v_13 = r2;
  r2 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  r3.x = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).x, 0.0f, 1.0f);
  r2.z = (r2.z * r3.x);
  r2.x = (r2.x * v6.x);
  let v_14 = ((-(cb12_12.tint_symbol_4[3u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_14.xy, r3.zw);
  r3.z = (r3.x * v6.z);
  let v_15 = (r3.yy * v0.zw);
  let v_16 = r3;
  r3 = vec4<f32>(v_16.x, v_15.x, v_16.z, v_15.y);
  r4 = textureSample(t2, s2, r3.ywyy.xy);
  r3.y = (cb5_5.tint_symbol_3[3u].z * cb12_12.tint_symbol_4[3u].z);
  r3.w = ((-(r4.xxxx)).w + r4.z);
  r4.x = fma(r3.y, r3.w, r4.x);
  let v_17 = (r4.xy * cb12_12.tint_symbol_4[3u].xx);
  let v_18 = r3;
  r3 = vec4<f32>(v_18.x, v_17.x, v_18.z, v_17.y);
  r4.x = fma(v6.z, r3.x, -1.0f);
  r3.x = fma(r3.x, r4.x, 1.0f);
  r3.y = (r3.x * r3.y);
  let v_19 = -(r0.xyxz);
  let v_20 = fma(cb12_12.tint_symbol_4[4u].xyz, cb12_12.tint_symbol_4[3u].yyy, v_19.xyw);
  r4 = vec4<f32>(v_20.xy, r4.z, v_20.z);
  let v_21 = fma(r3.yyy, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  r3.y = (r3.z * cb12_12.tint_symbol_4[3u].x);
  let v_22 = ((-(r0.xyzx)).xyz + r4.zzz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = fma(r3.yyy, r4.xyz, r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  r3.x = fma((-(r3.wwww)).x, r3.x, 1.0f);
  r2.x = clamp(((r2.xxxx * r3.xxxx)).x, 0.0f, 1.0f);
  let v_24 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_26 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  let v_27 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_28 = fma(r3.xyz, r3.www, v_27.xyz);
  r5 = vec4<f32>(v_28.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_29 = (r3.www * r5.xyz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = (r2.yz * r2.yz);
  let v_31 = r2;
  r2 = vec4<f32>(v_31.x, v_30.xy, v_31.w);
  r3.w = fma(r2.w, cb12_12.tint_symbol_4[5u].x, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_32 = -(r3.wwww);
  r2.w = fma(r2.w, cb12_12.tint_symbol_4[5u].x, v_32.w);
  r3.w = (r3.w * 558.0f);
  r2.w = fma(r2.w, 3.0f, r3.w);
  r3.x = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_33 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r3 = vec4<f32>(r3.x, v_33.xyz);
  let v_34 = (r3.zzz * cb6_6.tint_symbol_5[1u].xyz);
  r6 = vec4<f32>(v_34.xyz, r6.w);
  let v_35 = fma(r3.yyy, cb6_6.tint_symbol_5[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_35.xyz, r6.w);
  let v_36 = fma(r3.www, cb6_6.tint_symbol_5[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_36.xyz, r6.w);
  let v_37 = fma(r6.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r7 = vec4<f32>(v_37.xyz, r7.w);
  let v_38 = &(x0[0u]);
  let v_39 = r7;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = fma(r6.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r8 = vec4<f32>(v_40.xyz, r8.w);
  let v_41 = &(x0[1u]);
  let v_42 = r8;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  let v_43 = fma(r6.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r9 = vec4<f32>(v_43.xyz, r9.w);
  let v_44 = &(x0[2u]);
  let v_45 = r9;
  *(v_44) = vec4<f32>(v_45.xyz, (*(v_44)).w);
  let v_46 = fma(r6.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r6 = vec4<f32>(v_46.xyz, r6.w);
  let v_47 = &(x0[3u]);
  let v_48 = r6;
  *(v_47) = vec4<f32>(v_48.xyz, (*(v_47)).w);
  let v_49 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_50 = r10;
  r10 = vec4<f32>(v_50.x, v_49.x, v_50.z, v_49.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_51 = abs(r9.yyyy);
  r5.w = max(v_51.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_52 = (bitcast<u32>(r5.w) != 0u);
  let v_53 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_53, v_52);
  let v_54 = abs(r8.yyyy);
  r6.z = max(v_54.z, abs(r8.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_55 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_55 != 0u));
  let v_56 = abs(r7.yyyy);
  r6.z = max(v_56.z, abs(r7.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_57 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_57 != 0u));
  let v_58 = x0[bitcast<i32>(r4.w)];
  r7 = vec4<f32>(v_58.xyz, r7.w);
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
  let v_59 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_59.xy, r9.z, v_59.z);
  r9.z = dpdx(r4.w);
  let v_60 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_60.xyz, r11.w);
  r11.w = dpdy(r4.w);
  let v_61 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_61.xy, r7.zw);
  let v_62 = -(r7.xyxx);
  let v_63 = fma(r9.xz, r11.xz, v_62.xy);
  r12 = vec4<f32>(v_63.xy, r12.zw);
  r6.w = (1.0f / r12.x);
  r7.x = (r9.z * r11.y);
  let v_64 = -(r7.xxxx);
  r12.z = fma(r9.x, r11.w, v_64.z);
  let v_65 = (r6.ww * r12.yz);
  r7 = vec4<f32>(v_65.xy, r7.zw);
  let v_66 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_66.xy, r7.zw);
  let v_67 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_67.xy, r7.zw);
  r4.w = fma((-(r6.zzzz)).w, r7.x, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r7.y, r4.w);
  let v_68 = bitcast<u32>(r5.w);
  let v_69 = r4.w;
  r10.z = select(r7.z, v_69, (v_68 != 0u));
  r8.z = 0.0f;
  let v_70 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_70.xyz, r7.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_71.xy, r10.zw);
  let v_72 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_72.xyz, r9.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_73.xy, r10.zw);
  let v_74 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_74.xyz, r11.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_75.xy, r10.zw);
  let v_76 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_76.xyz, r12.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_77.xy, r10.zw);
  let v_78 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_78.xyz, r13.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_79.xy, r10.zw);
  let v_80 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_80.xyz, r14.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_81.xy, r10.zw);
  let v_82 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_82.xyz, r15.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_83.xy, r10.zw);
  let v_84 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_84.xyz, r16.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_85.xy, r10.zw);
  let v_86 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_86.xyz, r17.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_87.xy, r10.zw);
  let v_88 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_88.xyz, r18.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_89.xy, r10.zw);
  let v_90 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_90.xyz, r19.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_91.xy, r10.zw);
  let v_92 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_92.xyz, r20.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_93.xy, r10.zw);
  let v_94 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_94.xyz, r21.w);
  let v_95 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_95.xy, r10.zw);
  let v_96 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_96.xyz, r22.w);
  let v_97 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_97.xy, r10.zw);
  let v_98 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_98.xyz, r23.w);
  let v_99 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_99.xy, r10.zw);
  let v_100 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_100.xyz, r8.w);
  let v_101 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_101.xy, r7.z);
  let v_102 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_102.xy, r9.z);
  let v_103 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_103.xy, r11.z);
  let v_104 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_104.xy, r12.z);
  let v_105 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_105.xy, r13.z);
  let v_106 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_106.xy, r14.z);
  let v_107 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_107.xy, r15.z);
  let v_108 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_108.xy, r16.z);
  let v_109 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_109.xy, r17.z);
  let v_110 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_110.xy, r18.z);
  let v_111 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_111.xy, r19.z);
  let v_112 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_112.xy, r20.z);
  let v_113 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_113.xy, r21.z);
  let v_114 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_114.xy, r22.z);
  let v_115 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_115.xy, r23.z);
  let v_116 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_116.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r4.w = dot(r7, vec4<f32>(1.0f));
  r3.x = clamp(fma(r3.xxxx, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).x, 0.0f, 1.0f);
  let v_117 = abs(r6.yyyy);
  r5.w = max(v_117.w, abs(r6.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = (r5.w * r3.x);
  r3.x = fma(r4.w, 0.0625f, r3.x);
  r3.x = (r3.x * r3.x);
  r3.x = min(r3.x, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_118 = -(r3.xxxx);
  r3.x = fma(r4.w, v_118.x, r3.x);
  r6.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_119 = r6;
  r6 = vec4<f32>(v_119.x, 0.0f, v_119.z, 0.5f);
  let v_120 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r6.xy);
  r6 = vec4<f32>(v_120.xy, r6.zw);
  r7 = textureSample(t12, s12, r6.xyxx.xy);
  r6.z = r7.y;
  r6 = textureSample(t13, s13, r6.zwzz.xy);
  r3.x = (r3.x * r6.x);
  let v_121 = dot(r1.xyw, v_27.xyz);
  r4.w = clamp(vec4<f32>(v_121, v_121, v_121, v_121).w, 0.0f, 1.0f);
  let v_122 = dot(r4.xyz, r1.xyw);
  r6.x = clamp(vec4<f32>(v_122, v_122, v_122, v_122).x, 0.0f, 1.0f);
  let v_123 = dot(r5.xyz, v_27.xyz);
  r6.y = clamp(vec4<f32>(v_123, v_123, v_123, v_123).y, 0.0f, 1.0f);
  let v_124 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_124.xy, r6.zw);
  let v_125 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_125.xy);
  let v_126 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_126.xy);
  let v_127 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_127.xy, r6.zw);
  r5.w = ((-(cb12_12.tint_symbol_4[4u].wwww)).w + 1.0f);
  let v_128 = fma(cb12_12.tint_symbol_4[4u].ww, r6.xy, r5.ww);
  r6 = vec4<f32>(v_128.xy, r6.zw);
  let v_129 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(r6.xy, v_129.xy);
  r5.w = (r6.z * 0.125f);
  r6.x = fma((-(r2.xxxx)).x, r6.x, 1.0f);
  r5.x = dot(r1.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r6.w);
  r5.x = exp2(r5.x);
  r5.x = (r6.y * r5.x);
  r5.x = (r5.w * r5.x);
  r2.x = (r2.x * r5.x);
  r2.x = (r4.w * r2.x);
  r4.w = (r4.w * r6.x);
  let v_130 = fma(r0.xyz, r4.www, r2.xxx);
  r5 = vec4<f32>(v_130.xyz, r5.w);
  let v_131 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_131.xyz, r5.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_132 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(r6.x, v_132.xyz);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_133 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_133.xyz, r7.w);
  let v_134 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_134.xyz, r7.w);
  let v_135 = fma(r6.yzw, r1.zzz, r7.xyz);
  r6 = vec4<f32>(r6.x, v_135.xyz);
  let v_136 = (r2.zzz * r6.yzw);
  r6 = vec4<f32>(r6.x, v_136.xyz);
  let v_137 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(v_137.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_138 = dot(r8.xyz, r1.xyw);
  r0.w = clamp(vec4<f32>(v_138, v_138, v_138, v_138).w, 0.0f, 1.0f);
  let v_139 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r7.xyz);
  r7 = vec4<f32>(v_139.xyz, r7.w);
  let v_140 = fma(r7.xyz, r2.yyy, r6.yzw);
  r6 = vec4<f32>(r6.x, v_140.xyz);
  let v_141 = (r6.xxx * r6.yzw);
  r6 = vec4<f32>(r6.x, v_141.xyz);
  let v_142 = (r0.xyz * r6.yzw);
  r0 = vec4<f32>(v_142.xyz, r0.w);
  let v_143 = fma(r5.xyz, r3.xxx, r0.xyz);
  r0 = vec4<f32>(v_143.xyz, r0.w);
  r0.w = ((-(r6.xxxx)).w + 1.0f);
  r1.z = dot((-(r4.xyzx)).xyz, r1.xyw);
  r1.z = (r1.z + r1.z);
  let v_144 = -(r1.zzzz);
  let v_145 = -(r4.xyzx);
  let v_146 = fma(r1.xyw, v_144.xyz, v_145.xyz);
  r1 = vec4<f32>(v_146.xyz, r1.w);
  let v_147 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.0f, 0.0f, 0.00177619897294789553f))).xw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_147.x, r2.yz, v_147.y);
  r1.w = ((-(r2.xxxx)).w + 1.0f);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.w * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.x)));
  r4.x = fma(r1.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.w = (r1.w * r1.w);
  r1.w = fma(r1.w, 5.0f, r2.x);
  let v_148 = bitcast<u32>(r3.x);
  let v_149 = r4.x;
  r1.w = select(r1.w, v_149, (v_148 != 0u));
  let v_150 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_150.xyz, r4.w);
  r1.x = (abs(r1.zzzz).x + 1.0f);
  let v_151 = (r4.xyz / r1.xxx);
  r4 = vec4<f32>(v_151.xyz, r4.w);
  let v_152 = ((-(r4.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_152.xyz, r4.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_153 = bitcast<vec2<u32>>(r1.xx);
  let v_154 = r4.xy;
  let v_155 = select(r4.zy, v_154, (v_153 != vec2<u32>()));
  r1 = vec4<f32>(v_155.xy, r1.zw);
  let v_156 = r1.w;
  r1 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_156);
  r1.w = max(r2.z, r2.y);
  let v_157 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_157.xyz, r1.w);
  let v_158 = (r2.www * r1.xyz);
  r2 = vec4<f32>(v_158.xyz, r2.w);
  let v_159 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_159.xyz, r2.w);
  let v_160 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_160.xyz, r1.w);
  let v_161 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_161.xyz, r0.w);
  r0.w = dot(r3.yzw, r3.yzw);
  r1.x = sqrt(r0.w);
  let v_162 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_162.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r3.w);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_163 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_163 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_164 = (r0.www * r3.yzw);
  r2 = vec4<f32>(v_164.xyz, r2.w);
  let v_165 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_165, v_165, v_165, v_165).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_166 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_166, v_166, v_166, v_166).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_167 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_167.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_168 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_168.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_169 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_169.xyz, r2.w);
  let v_170 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_170.xyz, r2.w);
  let v_171 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_171.xyz, r3.w);
  let v_172 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_172.xyz, r2.w);
  let v_173 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_174 = (r2.xyz + v_173.xyz);
  r2 = vec4<f32>(v_174.xyz, r2.w);
  let v_175 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_175.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_176 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_176.xy, r1.z, v_176.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_177 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_177.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_178 = -(r0.xyxz);
  let v_179 = fma(r1.xyw, r0.www, v_178.xyw);
  r1 = vec4<f32>(v_179.xy, r1.z, v_179.z);
  let v_180 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_180.xyz, r0.w);
  let v_181 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_181.xyz, o0.w);
  o0.w = cb2_2.tint_symbol_1[15u].x;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_182 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6, v_182);
  return o0;
}
