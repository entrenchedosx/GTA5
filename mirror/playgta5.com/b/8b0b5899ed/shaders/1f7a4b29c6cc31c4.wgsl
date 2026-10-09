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

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb7_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb7_struct_1;

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb1_struct;

struct cb16_struct_1 {
  tint_symbol_6 : array<vec4<f32>, 16u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb16_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

@group(1u) @binding(71u) var t39 : texture_2d<f32>;

@group(1u) @binding(72u) var t40 : texture_2d<f32>;

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
  let v_25 = -(v2.xyzx);
  let v_26 = (v_25.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_27 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  let v_28 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_29 = fma(r3.xyz, r3.www, v_28.xyz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_30 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_30.xyz, r5.w);
  let v_31 = (r2.yz * r2.yz);
  let v_32 = r2;
  r2 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
  r4.w = fma(r2.w, cb12_12.tint_symbol_4[5u].x, -500.0f);
  r4.w = max(r4.w, 0.0f);
  let v_33 = -(r4.wwww);
  r2.w = fma(r2.w, cb12_12.tint_symbol_4[5u].x, v_33.w);
  r4.w = (r4.w * 558.0f);
  r2.w = fma(r2.w, 3.0f, r4.w);
  r4.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_34 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_34.xyz, r6.w);
  let v_35 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_35.xyz, r7.w);
  let v_36 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r6 = vec4<f32>(v_36.xy, r6.z, v_36.z);
  let v_37 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r6.xyw);
  r6 = vec4<f32>(v_37.xyz, r6.w);
  let v_38 = fma(r6.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_38.xyz, r7.w);
  let v_39 = &(x0[0u]);
  let v_40 = r7;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = fma(r6.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_41.xyz, r8.w);
  let v_42 = &(x0[1u]);
  let v_43 = r8;
  *(v_42) = vec4<f32>(v_43.xyz, (*(v_42)).w);
  let v_44 = fma(r6.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_44.xyz, r9.w);
  let v_45 = &(x0[2u]);
  let v_46 = r9;
  *(v_45) = vec4<f32>(v_46.xyz, (*(v_45)).w);
  let v_47 = fma(r6.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r6 = vec4<f32>(v_47.xyz, r6.w);
  let v_48 = &(x0[3u]);
  let v_49 = r6;
  *(v_48) = vec4<f32>(v_49.xyz, (*(v_48)).w);
  let v_50 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_51 = r10;
  r10 = vec4<f32>(v_51.x, v_50.x, v_51.z, v_50.y);
  r5.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_52 = abs(r9.yyyy);
  r6.z = max(v_52.z, abs(r9.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r5.w)));
  let v_53 = (bitcast<u32>(r6.z) != 0u);
  let v_54 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r6.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_54, v_53);
  let v_55 = abs(r8.yyyy);
  r6.w = max(v_55.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_56 = bitcast<u32>(r6.w);
  r6.z = select(r6.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_56 != 0u));
  let v_57 = abs(r7.yyyy);
  r6.w = max(v_57.w, abs(r7.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_58 = bitcast<u32>(r5.w);
  r5.w = select(r6.z, 0.0f, (v_58 != 0u));
  let v_59 = x0[bitcast<i32>(r5.w)];
  r7 = vec4<f32>(v_59.xyz, r7.w);
  r5.w = f32(bitcast<i32>(r5.w));
  r6.z = (r5.w + 0.5f);
  r6.z = (r6.z * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r5.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r5.w = dot(r8, cb6_6.tint_symbol_6[12u]);
  r6.w = dot(r8, cb6_6.tint_symbol_6[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r6.z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, !((r5.w == 0.0f))));
  r5.w = ((-(r5.wwww)).w + r7.z);
  let v_60 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_60.xy, r9.z, v_60.z);
  r9.z = dpdx(r5.w);
  let v_61 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_61.xyz, r11.w);
  r11.w = dpdy(r5.w);
  let v_62 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_62.xy, r7.zw);
  let v_63 = -(r7.xyxx);
  let v_64 = fma(r9.xz, r11.xz, v_63.xy);
  r12 = vec4<f32>(v_64.xy, r12.zw);
  r7.x = (1.0f / r12.x);
  r7.y = (r9.z * r11.y);
  let v_65 = -(r7.yyyy);
  r12.z = fma(r9.x, r11.w, v_65.z);
  let v_66 = (r7.xx * r12.yz);
  r7 = vec4<f32>(v_66.xy, r7.zw);
  let v_67 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_67.xy, r7.zw);
  let v_68 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_68.xy, r7.zw);
  r5.w = fma((-(r6.wwww)).w, r7.x, r5.w);
  r5.w = fma((-(r6.wwww)).w, r7.y, r5.w);
  let v_69 = bitcast<u32>(r6.z);
  let v_70 = r5.w;
  r10.z = select(r7.z, v_70, (v_69 != 0u));
  r8.z = 0.0f;
  let v_71 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_71.xyz, r7.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_72.xy, r10.zw);
  let v_73 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_73.xyz, r9.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_74.xy, r10.zw);
  let v_75 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_75.xyz, r11.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_76.xy, r10.zw);
  let v_77 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_77.xyz, r12.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_78.xy, r10.zw);
  let v_79 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_79.xyz, r13.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_80.xy, r10.zw);
  let v_81 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_81.xyz, r14.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_82.xy, r10.zw);
  let v_83 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_83.xyz, r15.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_84.xy, r10.zw);
  let v_85 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_85.xyz, r16.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_86.xy, r10.zw);
  let v_87 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_87.xyz, r17.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_88.xy, r10.zw);
  let v_89 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_89.xyz, r18.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_90.xy, r10.zw);
  let v_91 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_91.xyz, r19.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_92.xy, r10.zw);
  let v_93 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_93.xyz, r20.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_94.xy, r10.zw);
  let v_95 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_95.xyz, r21.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_96.xy, r10.zw);
  let v_97 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_97.xyz, r22.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_98.xy, r10.zw);
  let v_99 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_99.xyz, r23.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_100.xy, r10.zw);
  let v_101 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_101.xyz, r8.w);
  let v_102 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_102.xy, r7.z);
  let v_103 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_103.xy, r9.z);
  let v_104 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_104.xy, r11.z);
  let v_105 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_105.xy, r12.z);
  let v_106 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_106.xy, r13.z);
  let v_107 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_107.xy, r14.z);
  let v_108 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_108.xy, r15.z);
  let v_109 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_109.xy, r16.z);
  let v_110 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_110.xy, r17.z);
  let v_111 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_111.xy, r18.z);
  let v_112 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_112.xy, r19.z);
  let v_113 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_113.xy, r20.z);
  let v_114 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_114.xy, r21.z);
  let v_115 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_115.xy, r22.z);
  let v_116 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_116.xy, r23.z);
  let v_117 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_117.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r5.w = dot(r7, vec4<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_118 = abs(r6.yyyy);
  r6.x = max(v_118.x, abs(r6.xxxx).x);
  r6.x = clamp(fma(r6.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.x * r4.w);
  r4.w = fma(r5.w, 0.0625f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_6[3u].z);
  let v_119 = -(r4.wwww);
  r4.w = fma(r5.w, v_119.w, r4.w);
  r6.x = (-(cb6_6.tint_symbol_6[15u].wwww)).x;
  let v_120 = r6;
  r6 = vec4<f32>(v_120.x, 0.0f, v_120.z, 0.5f);
  let v_121 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r6.xy);
  r6 = vec4<f32>(v_121.xy, r6.zw);
  r7 = textureSample(t12, s12, r6.xyxx.xy);
  r6.z = r7.y;
  r6 = textureSample(t13, s13, r6.zwzz.xy);
  r4.w = (r4.w * r6.x);
  let v_122 = dot(r1.xyw, v_28.xyz);
  r5.w = clamp(vec4<f32>(v_122, v_122, v_122, v_122).w, 0.0f, 1.0f);
  let v_123 = dot(r4.xyz, r1.xyw);
  r6.x = clamp(vec4<f32>(v_123, v_123, v_123, v_123).x, 0.0f, 1.0f);
  let v_124 = dot(r5.xyz, v_28.xyz);
  r6.y = clamp(vec4<f32>(v_124, v_124, v_124, v_124).y, 0.0f, 1.0f);
  let v_125 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_125.xy, r6.zw);
  let v_126 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_126.xy);
  let v_127 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_127.xy);
  let v_128 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_128.xy, r6.zw);
  r6.z = ((-(cb12_12.tint_symbol_4[4u].wwww)).z + 1.0f);
  let v_129 = fma(cb12_12.tint_symbol_4[4u].ww, r6.xy, r6.zz);
  r6 = vec4<f32>(v_129.xy, r6.zw);
  let v_130 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_130.xy, r7.zw);
  r6.w = (r7.x * 0.125f);
  r6.x = fma((-(r2.xxxx)).x, r6.x, 1.0f);
  r5.x = dot(r1.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.y);
  r5.x = exp2(r5.x);
  r5.x = (r6.y * r5.x);
  r5.x = (r6.w * r5.x);
  r5.x = (r2.x * r5.x);
  r5.x = (r5.w * r5.x);
  r5.y = (r5.w * r6.x);
  let v_131 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_131.xyz, r5.w);
  let v_132 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_132.xyz, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r8 = vec4<f32>(r8.x, vec3<f32>());
    r7 = vec4<f32>(0.0f, r7.y, vec2<f32>());
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_133 = ((-(v2.xxyz)).xzw + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_133.x, r7.y, v_133.yz);
    let v_134 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_134.xyz, r8.w);
    r8.x = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.y = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r8.x = clamp(((r8.xxxx / r8.yyyy)).x, 0.0f, 1.0f);
    r8.x = (r8.x * cb3_3.tint_symbol_2[19u].w);
    let v_135 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_135.xyz, r8.w);
    let v_136 = (r8.xyz + v_25.xyz);
    r8 = vec4<f32>(v_136.xyz, r8.w);
    let v_137 = bitcast<vec3<u32>>(r6.yyy);
    let v_138 = r7.xzw;
    let v_139 = select(r8.xyz, v_138, (v_137 != vec3<u32>()));
    r7 = vec4<f32>(v_139.x, r7.y, v_139.yz);
    r6.y = dot(r7.xzw, r7.xzw);
    let v_140 = (r7.xzw + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_140.x, r7.y, v_140.yz);
    r8.x = dot(r7.xzw, r7.xzw);
    r8.x = inverseSqrt(r8.x);
    let v_141 = (r7.xzw * r8.xxx);
    r7 = vec4<f32>(v_141.x, r7.y, v_141.yz);
    r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r8.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[11u].w);
    r6.y = (r6.y / r8.x);
    let v_142 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.x = dot(r7.xzw, v_142.xyz);
    r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_143 = dot(r7.xzw, r1.xyw);
    r8.y = clamp(vec4<f32>(v_143, v_143, v_143, v_143).y, 0.0f, 1.0f);
    r8.x = (r8.x * r8.y);
    r8.y = (r6.y * r8.x);
    let v_144 = (r8.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(r8.x, v_144.xyz);
    let v_145 = (r0.xyz * r8.yzw);
    r8 = vec4<f32>(r8.x, v_145.xyz);
    let v_146 = fma(r3.xyz, r3.www, r7.xzw);
    r7 = vec4<f32>(v_146.x, r7.y, v_146.yz);
    r9.x = dot(r7.xzw, r7.xzw);
    r9.x = inverseSqrt(r9.x);
    let v_147 = (r7.xzw * r9.xxx);
    r7 = vec4<f32>(v_147.x, r7.y, v_147.yz);
    let v_148 = dot(r7.xzw, r4.xyz);
    r9.x = clamp(vec4<f32>(v_148, v_148, v_148, v_148).x, 0.0f, 1.0f);
    r9.x = ((-(r9.xxxx)).x + 1.0f);
    r9.y = (r9.x * r9.x);
    r9.y = (r9.y * r9.y);
    r9.x = (r9.y * r9.x);
    r9.x = fma(cb12_12.tint_symbol_4[4u].w, r9.x, r6.z);
    let v_149 = dot(r7.xzw, r1.xyw);
    r7.x = clamp(vec4<f32>(v_149, v_149, v_149, v_149).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r7.x * r7.y);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r9.x);
    r7.x = (r8.x * r7.x);
    r6.y = (r6.y * r7.x);
    r6.y = (r6.w * r6.y);
    let v_150 = (r6.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_150.x, r7.y, v_150.yz);
  }
  r6.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.y) != 0u)) {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    let v_151 = bitcast<u32>(r8.x);
    let v_152 = r6.y;
    r5.w = select(r5.w, v_152, (v_151 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_153 = (v_25.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_153.xyz, r9.w);
      let v_154 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_154.xyz, r10.w);
      r8.x = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r8.x = clamp(((r8.xxxx / r9.wwww)).x, 0.0f, 1.0f);
      r8.x = (r8.x * cb3_3.tint_symbol_2[20u].w);
      let v_155 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_155.xyz, r10.w);
      let v_156 = (r10.xyz + v_25.xyz);
      r10 = vec4<f32>(v_156.xyz, r10.w);
      let v_157 = bitcast<vec3<u32>>(r6.yyy);
      let v_158 = r9.xyz;
      let v_159 = select(r10.xyz, v_158, (v_157 != vec3<u32>()));
      r9 = vec4<f32>(v_159.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_160 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_160.xyz, r9.w);
      r8.x = dot(r9.xyz, r9.xyz);
      r8.x = inverseSqrt(r8.x);
      let v_161 = (r8.xxx * r9.xyz);
      r9 = vec4<f32>(v_161.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[12u].w);
      r6.y = (r6.y / r8.x);
      let v_162 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.x = dot(r9.xyz, v_162.xyz);
      r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_163 = dot(r9.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_163, v_163, v_163, v_163).w, 0.0f, 1.0f);
      r8.x = (r8.x * r9.w);
      r9.w = (r6.y * r8.x);
      let v_164 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_164.xyz, r10.w);
      let v_165 = fma(r10.xyz, r0.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_165.xyz);
      let v_166 = fma(r3.xyz, r3.www, r9.xyz);
      r9 = vec4<f32>(v_166.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_167 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_167.xyz, r9.w);
      let v_168 = dot(r9.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_168, v_168, v_168, v_168).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.x = (r9.w * r9.w);
      r10.x = (r10.x * r10.x);
      r9.w = (r9.w * r10.x);
      r9.w = fma(cb12_12.tint_symbol_4[4u].w, r9.w, r6.z);
      let v_169 = dot(r9.xyz, r1.xyw);
      r9.x = clamp(vec4<f32>(v_169, v_169, v_169, v_169).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r9.w);
      r8.x = (r8.x * r9.x);
      r6.y = (r6.y * r8.x);
      r6.y = (r6.w * r6.y);
      let v_170 = fma(r6.yyy, cb3_3.tint_symbol_2[20u].xyz, r7.xzw);
      r7 = vec4<f32>(v_170.x, r7.y, v_170.yz);
    }
  } else {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_171 = (v_25.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_171.xyz, r9.w);
      let v_172 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      r8.x = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r8.x = clamp(((r8.xxxx / r9.wwww)).x, 0.0f, 1.0f);
      r8.x = (r8.x * cb3_3.tint_symbol_2[21u].w);
      let v_173 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      let v_174 = (r10.xyz + v_25.xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      let v_175 = bitcast<vec3<u32>>(r6.yyy);
      let v_176 = r9.xyz;
      let v_177 = select(r10.xyz, v_176, (v_175 != vec3<u32>()));
      r9 = vec4<f32>(v_177.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_178 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_178.xyz, r9.w);
      r8.x = dot(r9.xyz, r9.xyz);
      r8.x = inverseSqrt(r8.x);
      let v_179 = (r8.xxx * r9.xyz);
      r9 = vec4<f32>(v_179.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[13u].w);
      r6.y = (r6.y / r8.x);
      let v_180 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.x = dot(r9.xyz, v_180.xyz);
      r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_181 = dot(r9.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_181, v_181, v_181, v_181).w, 0.0f, 1.0f);
      r8.x = (r8.x * r9.w);
      r9.w = (r6.y * r8.x);
      let v_182 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_182.xyz, r10.w);
      let v_183 = fma(r10.xyz, r0.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_183.xyz);
      let v_184 = fma(r3.xyz, r3.www, r9.xyz);
      r9 = vec4<f32>(v_184.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_185 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_185.xyz, r9.w);
      let v_186 = dot(r9.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_186, v_186, v_186, v_186).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.x = (r9.w * r9.w);
      r10.x = (r10.x * r10.x);
      r9.w = (r9.w * r10.x);
      r9.w = fma(cb12_12.tint_symbol_4[4u].w, r9.w, r6.z);
      let v_187 = dot(r9.xyz, r1.xyw);
      r9.x = clamp(vec4<f32>(v_187, v_187, v_187, v_187).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r9.w);
      r8.x = (r8.x * r9.x);
      r6.y = (r6.y * r8.x);
      r6.y = (r6.w * r6.y);
      let v_188 = fma(r6.yyy, cb3_3.tint_symbol_2[21u].xyz, r7.xzw);
      r7 = vec4<f32>(v_188.x, r7.y, v_188.yz);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_189 = (v_25.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_189.xyz, r9.w);
      let v_190 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_190.xyz, r10.w);
      r6.y = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.x = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r6.y = clamp(((r6.yyyy / r8.xxxx)).y, 0.0f, 1.0f);
      r6.y = (r6.y * cb3_3.tint_symbol_2[22u].w);
      let v_191 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_191.xyz, r10.w);
      let v_192 = (r10.xyz + v_25.xyz);
      r10 = vec4<f32>(v_192.xyz, r10.w);
      let v_193 = bitcast<vec3<u32>>(r5.www);
      let v_194 = r9.xyz;
      let v_195 = select(r10.xyz, v_194, (v_193 != vec3<u32>()));
      r9 = vec4<f32>(v_195.xyz, r9.w);
      r5.w = dot(r9.xyz, r9.xyz);
      let v_196 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_196.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      r6.y = inverseSqrt(r6.y);
      let v_197 = (r6.yyy * r9.xyz);
      r9 = vec4<f32>(v_197.xyz, r9.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r6.y = fma(r6.y, r5.w, cb3_3.tint_symbol_2[14u].w);
      r5.w = (r5.w / r6.y);
      let v_198 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.y = dot(r9.xyz, v_198.xyz);
      r6.y = clamp(fma(r6.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_199 = dot(r9.xyz, r1.xyw);
      r8.x = clamp(vec4<f32>(v_199, v_199, v_199, v_199).x, 0.0f, 1.0f);
      r6.y = (r6.y * r8.x);
      r8.x = (r5.w * r6.y);
      let v_200 = (r8.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_200.xyz, r10.w);
      let v_201 = fma(r10.xyz, r0.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_201.xyz);
      let v_202 = fma(r3.xyz, r3.www, r9.xyz);
      r3 = vec4<f32>(v_202.xyz, r3.w);
      r3.w = dot(r3.xyz, r3.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_203 = (r3.www * r3.xyz);
      r3 = vec4<f32>(v_203.xyz, r3.w);
      let v_204 = dot(r3.xyz, r4.xyz);
      r3.w = clamp(vec4<f32>(v_204, v_204, v_204, v_204).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r8.x = (r3.w * r3.w);
      r8.x = (r8.x * r8.x);
      r3.w = (r3.w * r8.x);
      r3.w = fma(cb12_12.tint_symbol_4[4u].w, r3.w, r6.z);
      let v_205 = dot(r3.xyz, r1.xyw);
      r3.x = clamp(vec4<f32>(v_205, v_205, v_205, v_205).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r7.y);
      r3.x = exp2(r3.x);
      r3.x = (r3.x * r3.w);
      r3.x = (r6.y * r3.x);
      r3.x = (r5.w * r3.x);
      r3.x = (r6.w * r3.x);
      let v_206 = fma(r3.xxx, cb3_3.tint_symbol_2[22u].xyz, r7.xzw);
      r7 = vec4<f32>(v_206.x, r7.y, v_206.yz);
    }
  }
  r3.x = (r6.x * r6.x);
  r2.x = (r2.x * r2.x);
  let v_207 = (r7.xzw * r2.xxx);
  r3 = vec4<f32>(r3.x, v_207.xyz);
  let v_208 = fma(r3.xxx, r8.yzw, r3.yzw);
  r3 = vec4<f32>(v_208.xyz, r3.w);
  let v_209 = fma(r5.xyz, r4.www, r3.xyz);
  r3 = vec4<f32>(v_209.xyz, r3.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_210 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_210.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_211 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(r6.x, v_211.xyz);
  let v_212 = (r6.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(r6.x, v_212.xyz);
  let v_213 = fma(r5.xyz, r1.zzz, r6.yzw);
  r5 = vec4<f32>(v_213.xyz, r5.w);
  let v_214 = (r2.zzz * r5.xyz);
  r5 = vec4<f32>(v_214.xyz, r5.w);
  let v_215 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(r6.x, v_215.xyz);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_216 = dot(r7.xyz, r1.xyw);
  r0.w = clamp(vec4<f32>(v_216, v_216, v_216, v_216).w, 0.0f, 1.0f);
  let v_217 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r6.yzw);
  r6 = vec4<f32>(r6.x, v_217.xyz);
  let v_218 = fma(r6.yzw, r2.yyy, r5.xyz);
  r5 = vec4<f32>(v_218.xyz, r5.w);
  let v_219 = (r6.xxx * r5.xyz);
  r5 = vec4<f32>(v_219.xyz, r5.w);
  let v_220 = fma(r5.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_220.xyz, r0.w);
  r0.w = ((-(r6.xxxx)).w + 1.0f);
  r1.z = dot((-(r4.xyzx)).xyz, r1.xyw);
  r1.z = (r1.z + r1.z);
  let v_221 = -(r1.zzzz);
  let v_222 = -(r4.xyzx);
  let v_223 = fma(r1.xyw, v_221.xyz, v_222.xyz);
  r1 = vec4<f32>(v_223.xyz, r1.w);
  let v_224 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.0f, 0.0f, 0.00177619897294789553f))).xw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_224.x, r2.yz, v_224.y);
  r1.w = ((-(r2.xxxx)).w + 1.0f);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.w * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.x)));
  r3.y = fma(r1.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.w = (r1.w * r1.w);
  r1.w = fma(r1.w, 5.0f, r2.x);
  let v_225 = bitcast<u32>(r3.x);
  let v_226 = r3.y;
  r1.w = select(r1.w, v_226, (v_225 != 0u));
  let v_227 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_227.xyz, r3.w);
  r1.x = (abs(r1.zzzz).x + 1.0f);
  let v_228 = (r3.xyz / r1.xxx);
  r3 = vec4<f32>(v_228.xyz, r3.w);
  let v_229 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_229.xyz, r3.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_230 = bitcast<vec2<u32>>(r1.xx);
  let v_231 = r3.xy;
  let v_232 = select(r3.zy, v_231, (v_230 != vec2<u32>()));
  r1 = vec4<f32>(v_232.xy, r1.zw);
  let v_233 = r1.w;
  r1 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_233);
  r1.w = max(r2.z, r2.y);
  let v_234 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_234.xyz, r1.w);
  let v_235 = (r2.www * r1.xyz);
  r2 = vec4<f32>(v_235.xyz, r2.w);
  let v_236 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_236.xyz, r2.w);
  let v_237 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_237.xyz, r1.w);
  let v_238 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_238.xyz, r0.w);
  let v_239 = v7.xy;
  let v_240 = max(v_239, vec2<f32>(-2147483648.0f));
  let v_241 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_240), vec2<i32>(2147483647i), (v_240 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_239 == v_239))));
  r1 = vec4<f32>(v_241.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2 = textureLoad(t40, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
  r2.x = (r2.x * r2.x);
  r2.y = dot(v3.xyz, cb1_1.tint_symbol[14u].xyz);
  r1 = textureLoad(t39, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
  r1.y = (cb7_7.tint_symbol_5[0u].y + 1.0f);
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r1.x = (cb7_7.tint_symbol_5[0u].x / r1.x);
  r1.x = ((-(r1.xxxx)).x + r2.y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f >= r1.x)));
  r1.x = (r2.x * r1.x);
  r1.x = (r1.x * -78.43303680419921875f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * cb2_2.tint_symbol_1[15u].x);
  let v_242 = bitcast<u32>(r1.y);
  let v_243 = cb2_2.tint_symbol_1[15u].x;
  r0.w = select(r1.x, v_243, (v_242 != 0u));
  let v_244 = bitcast<vec4<u32>>(r1.yyyy);
  r0 = select(r0, vec4<f32>(), (v_244 != vec4<u32>()));
  let v_245 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_245.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_246 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_246);
  return o0;
}
