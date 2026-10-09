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

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb8_struct {
  tint_symbol_4 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb8_struct;

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
  r0 = textureSample(t0, s0, v0.xyxx.xy);
  r1 = textureSample(t3, s3, v0.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.z = max(cb12_12.tint_symbol_4[7u].w, 0.00100000004749745131f);
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
  r2.x = dot(r2.xyz, cb12_12.tint_symbol_4[7u].xyz);
  r2.x = (r2.x * cb12_12.tint_symbol_4[6u].y);
  let v_10 = (r0.xyz * cb12_12.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r2.y = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).y, 0.0f, 1.0f);
  r2.y = (r2.y * cb2_2.tint_symbol_1[15u].y);
  r2.z = (v6.x * cb12_12.tint_symbol_4[2u].x);
  r2.z = (r2.z * cb12_12.tint_symbol_4[4u].z);
  r2.x = (r2.x * v6.x);
  let v_11 = ((-(cb12_12.tint_symbol_4[4u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_11.xy, r3.zw);
  r3.z = (r3.x * v6.z);
  let v_12 = (r3.yy * v0.zw);
  let v_13 = r3;
  r3 = vec4<f32>(v_13.x, v_12.x, v_13.z, v_12.y);
  r4 = textureSample(t2, s2, r3.ywyy.xy);
  r3.y = (cb5_5.tint_symbol_3[3u].z * cb12_12.tint_symbol_4[4u].z);
  r3.w = ((-(r4.xxxx)).w + r4.z);
  r4.x = fma(r3.y, r3.w, r4.x);
  let v_14 = (r4.xy * cb12_12.tint_symbol_4[4u].xx);
  let v_15 = r3;
  r3 = vec4<f32>(v_15.x, v_14.x, v_15.z, v_14.y);
  r4.x = fma(v6.z, r3.x, -1.0f);
  r3.x = fma(r3.x, r4.x, 1.0f);
  r3.y = (r3.x * r3.y);
  let v_16 = -(r0.xyxz);
  let v_17 = fma(cb12_12.tint_symbol_4[5u].xyz, cb12_12.tint_symbol_4[4u].yyy, v_16.xyw);
  r4 = vec4<f32>(v_17.xy, r4.z, v_17.z);
  let v_18 = fma(r3.yyy, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r3.y = (r3.z * cb12_12.tint_symbol_4[4u].x);
  let v_19 = ((-(r0.xyzx)).xyz + r4.zzz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = fma(r3.yyy, r4.xyz, r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r3.x = fma((-(r3.wwww)).x, r3.x, 1.0f);
  r2.x = clamp(((r2.xxxx * r3.xxxx)).x, 0.0f, 1.0f);
  let v_21 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = -(v2.xyzx);
  let v_23 = (v_22.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_24 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_26 = fma(r3.xyz, r3.www, v_25.xyz);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_27 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  r4.w = (cb2_2.tint_symbol_1[15u].z * cb2_2.tint_symbol_1[15u].z);
  r2.y = (r2.y * r2.y);
  r5.w = fma(r2.w, cb12_12.tint_symbol_4[6u].x, -500.0f);
  r5.w = max(r5.w, 0.0f);
  let v_28 = -(r5.wwww);
  r2.w = fma(r2.w, cb12_12.tint_symbol_4[6u].x, v_28.w);
  r5.w = (r5.w * 558.0f);
  r2.w = fma(r2.w, 3.0f, r5.w);
  r5.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_29 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_29.xyz, r6.w);
  let v_30 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_30.xyz, r7.w);
  let v_31 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_31.xyz, r7.w);
  let v_32 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_32.xyz, r7.w);
  let v_33 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_33.xyz, r8.w);
  let v_34 = &(x0[0u]);
  let v_35 = r8;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_36.xyz, r9.w);
  let v_37 = &(x0[1u]);
  let v_38 = r9;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  let v_39 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_39.xyz, r10.w);
  let v_40 = &(x0[2u]);
  let v_41 = r10;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_42.xyz, r7.w);
  let v_43 = &(x0[3u]);
  let v_44 = r7;
  *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
  let v_45 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_46 = r11;
  r11 = vec4<f32>(v_46.x, v_45.x, v_46.z, v_45.y);
  r6.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r6.w = (r6.w * 0.5f);
  let v_47 = abs(r10.yyyy);
  r7.z = max(v_47.z, abs(r10.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r6.w)));
  let v_48 = (bitcast<u32>(r7.z) != 0u);
  let v_49 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r7.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_49, v_48);
  let v_50 = abs(r9.yyyy);
  r7.w = max(v_50.w, abs(r9.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_51 = bitcast<u32>(r7.w);
  r7.z = select(r7.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_51 != 0u));
  let v_52 = abs(r8.yyyy);
  r7.w = max(v_52.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_53 = bitcast<u32>(r6.w);
  r6.w = select(r7.z, 0.0f, (v_53 != 0u));
  let v_54 = x0[bitcast<i32>(r6.w)];
  r8 = vec4<f32>(v_54.xyz, r8.w);
  r6.w = f32(bitcast<i32>(r6.w));
  r7.z = (r6.w + 0.5f);
  r7.z = (r7.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r6.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r6.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r7.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r7.z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 0.0f))));
  r6.w = ((-(r6.wwww)).w + r8.z);
  let v_55 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_55.xy, r10.z, v_55.z);
  r10.z = dpdx(r6.w);
  let v_56 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_56.xyz, r12.w);
  r12.w = dpdy(r6.w);
  let v_57 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_57.xy, r8.zw);
  let v_58 = -(r8.xyxx);
  let v_59 = fma(r10.xz, r12.xz, v_58.xy);
  r13 = vec4<f32>(v_59.xy, r13.zw);
  r8.x = (1.0f / r13.x);
  r8.y = (r10.z * r12.y);
  let v_60 = -(r8.yyyy);
  r13.z = fma(r10.x, r12.w, v_60.z);
  let v_61 = (r8.xx * r13.yz);
  r8 = vec4<f32>(v_61.xy, r8.zw);
  let v_62 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_62.xy, r8.zw);
  let v_63 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_63.xy, r8.zw);
  r6.w = fma((-(r7.wwww)).w, r8.x, r6.w);
  r6.w = fma((-(r7.wwww)).w, r8.y, r6.w);
  let v_64 = bitcast<u32>(r7.z);
  let v_65 = r6.w;
  r11.z = select(r8.z, v_65, (v_64 != 0u));
  r9.z = 0.0f;
  let v_66 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_66.xyz, r8.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_68.xyz, r10.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_70.xyz, r12.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_72.xyz, r13.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_74.xyz, r14.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_76.xyz, r15.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_78.xyz, r16.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_80.xyz, r17.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_82.xyz, r18.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_84.xyz, r19.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_86.xyz, r20.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_88.xyz, r21.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_90.xyz, r22.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_92.xyz, r23.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_94.xyz, r24.w);
  let v_95 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_95.xy, r11.zw);
  let v_96 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_96.xyz, r9.w);
  let v_97 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_97.xy, r8.z);
  let v_98 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_98.xy, r10.z);
  let v_99 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_99.xy, r12.z);
  let v_100 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_100.xy, r13.z);
  let v_101 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_101.xy, r14.z);
  let v_102 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_102.xy, r15.z);
  let v_103 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_103.xy, r16.z);
  let v_104 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_104.xy, r17.z);
  let v_105 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_105.xy, r18.z);
  let v_106 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_106.xy, r19.z);
  let v_107 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_107.xy, r20.z);
  let v_108 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_108.xy, r21.z);
  let v_109 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_109.xy, r22.z);
  let v_110 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_110.xy, r23.z);
  let v_111 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_111.xy, r24.z);
  let v_112 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_112.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r6.w = dot(r8, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_113 = abs(r7.yyyy);
  r7.x = max(v_113.x, abs(r7.xxxx).x);
  r7.x = clamp(fma(r7.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r7.x * r5.w);
  r5.w = fma(r6.w, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r6.w = sqrt(r6.w);
  r6.w = (r6.w * cb6_6.tint_symbol_5[3u].z);
  let v_114 = -(r5.wwww);
  r5.w = fma(r6.w, v_114.w, r5.w);
  r7.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_115 = r7;
  r7 = vec4<f32>(v_115.x, 0.0f, v_115.z, 0.5f);
  let v_116 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r7.xy);
  r7 = vec4<f32>(v_116.xy, r7.zw);
  r8 = textureSample(t12, s12, r7.xyxx.xy);
  r7.z = r8.y;
  r7 = textureSample(t13, s13, r7.zwzz.xy);
  r5.w = (r5.w * r7.x);
  let v_117 = dot(r1.xyw, v_25.xyz);
  r6.w = clamp(vec4<f32>(v_117, v_117, v_117, v_117).w, 0.0f, 1.0f);
  let v_118 = dot(r4.xyz, r1.xyw);
  r7.x = clamp(vec4<f32>(v_118, v_118, v_118, v_118).x, 0.0f, 1.0f);
  let v_119 = dot(r5.xyz, v_25.xyz);
  r7.y = clamp(vec4<f32>(v_119, v_119, v_119, v_119).y, 0.0f, 1.0f);
  let v_120 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_121 = r7;
  r7 = vec4<f32>(v_121.x, v_120.xy, v_121.w);
  let v_122 = (r7.yz * r7.yz);
  r8 = vec4<f32>(v_122.xy, r8.zw);
  let v_123 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_123.xy, r8.zw);
  let v_124 = (r7.yz * r8.xy);
  let v_125 = r7;
  r7 = vec4<f32>(v_125.x, v_124.xy, v_125.w);
  r7.w = ((-(cb12_12.tint_symbol_4[5u].wwww)).w + 1.0f);
  let v_126 = fma(cb12_12.tint_symbol_4[5u].ww, r7.yz, r7.ww);
  let v_127 = r7;
  r7 = vec4<f32>(v_127.x, v_126.xy, v_127.w);
  let v_128 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_128.xy, r8.zw);
  r8.x = (r8.x * 0.125f);
  r7.y = fma((-(r2.xxxx)).y, r7.y, 1.0f);
  r5.x = dot(r1.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r7.z * r5.x);
  r5.x = (r8.x * r5.x);
  r5.x = (r2.x * r5.x);
  r5.x = (r6.w * r5.x);
  r5.y = (r6.w * r7.y);
  let v_129 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_129.xyz, r5.w);
  let v_130 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_130.xyz, r5.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_131 = (v_22.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_131.xyz, r9.w);
    let v_132 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_132.xyz, r10.w);
    r8.z = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.w = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r8.z = clamp(((r8.zzzz / r8.wwww)).z, 0.0f, 1.0f);
    r8.z = (r8.z * cb3_3.tint_symbol_2[19u].w);
    let v_133 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_133.xyz, r10.w);
    let v_134 = (r10.xyz + v_22.xyz);
    r10 = vec4<f32>(v_134.xyz, r10.w);
    let v_135 = bitcast<vec3<u32>>(r7.zzz);
    let v_136 = r9.xyz;
    let v_137 = select(r10.xyz, v_136, (v_135 != vec3<u32>()));
    r9 = vec4<f32>(v_137.xyz, r9.w);
    r7.z = dot(r9.xyz, r9.xyz);
    let v_138 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_138.xyz, r9.w);
    r8.z = dot(r9.xyz, r9.xyz);
    r8.z = inverseSqrt(r8.z);
    let v_139 = (r8.zzz * r9.xyz);
    r9 = vec4<f32>(v_139.xyz, r9.w);
    r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r8.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r8.z = fma(r8.z, r7.z, cb3_3.tint_symbol_2[11u].w);
    r7.z = (r7.z / r8.z);
    let v_140 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.z = dot(r9.xyz, v_140.xyz);
    r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_141 = dot(r9.xyz, r1.xyw);
    r8.w = clamp(vec4<f32>(v_141, v_141, v_141, v_141).w, 0.0f, 1.0f);
    r8.z = (r8.z * r8.w);
    r8.w = (r7.z * r8.z);
    let v_142 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_142.xyz, r10.w);
    let v_143 = (r0.xyz * r10.xyz);
    r10 = vec4<f32>(v_143.xyz, r10.w);
    let v_144 = fma(r3.xyz, r3.www, r9.xyz);
    r9 = vec4<f32>(v_144.xyz, r9.w);
    r8.w = dot(r9.xyz, r9.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_145 = (r8.www * r9.xyz);
    r9 = vec4<f32>(v_145.xyz, r9.w);
    let v_146 = dot(r9.xyz, r4.xyz);
    r8.w = clamp(vec4<f32>(v_146, v_146, v_146, v_146).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.w = (r8.w * r8.w);
    r9.w = (r9.w * r9.w);
    r8.w = (r8.w * r9.w);
    r8.w = fma(cb12_12.tint_symbol_4[5u].w, r8.w, r7.w);
    let v_147 = dot(r9.xyz, r1.xyw);
    r9.x = clamp(vec4<f32>(v_147, v_147, v_147, v_147).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r8.y * r9.x);
    r9.x = exp2(r9.x);
    r8.w = (r8.w * r9.x);
    r8.z = (r8.z * r8.w);
    r7.z = (r7.z * r8.z);
    r7.z = (r8.x * r7.z);
    let v_148 = (r7.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_148.xyz, r9.w);
  }
  r7.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.z) != 0u)) {
    r8.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.z = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.z)));
    let v_149 = bitcast<u32>(r8.z);
    let v_150 = r7.z;
    r6.w = select(r6.w, v_150, (v_149 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_151 = (v_22.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_151.xyz, r11.w);
      let v_152 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_152.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r8.z = clamp(((r8.zzzz / r8.wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[20u].w);
      let v_153 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_153.xyz, r12.w);
      let v_154 = (r12.xyz + v_22.xyz);
      r12 = vec4<f32>(v_154.xyz, r12.w);
      let v_155 = bitcast<vec3<u32>>(r7.zzz);
      let v_156 = r11.xyz;
      let v_157 = select(r12.xyz, v_156, (v_155 != vec3<u32>()));
      r11 = vec4<f32>(v_157.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      let v_158 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_158.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_159 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r7.z, cb3_3.tint_symbol_2[12u].w);
      r7.z = (r7.z / r8.z);
      let v_160 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.z = dot(r11.xyz, v_160.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      let v_161 = dot(r11.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_161, v_161, v_161, v_161).w, 0.0f, 1.0f);
      r8.z = (r8.z * r8.w);
      r8.w = (r7.z * r8.z);
      let v_162 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r12 = vec4<f32>(v_162.xyz, r12.w);
      let v_163 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_163.xyz, r10.w);
      let v_164 = fma(r3.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_165 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      let v_166 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_166, v_166, v_166, v_166).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[5u].w, r8.w, r7.w);
      let v_167 = dot(r11.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_167, v_167, v_167, v_167).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r7.z = (r7.z * r8.z);
      r7.z = (r8.x * r7.z);
      let v_168 = fma(r7.zzz, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_168.xyz, r9.w);
    }
  } else {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_169 = (v_22.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      let v_170 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_170.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r8.z = clamp(((r8.zzzz / r8.wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[21u].w);
      let v_171 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_171.xyz, r12.w);
      let v_172 = (r12.xyz + v_22.xyz);
      r12 = vec4<f32>(v_172.xyz, r12.w);
      let v_173 = bitcast<vec3<u32>>(r7.zzz);
      let v_174 = r11.xyz;
      let v_175 = select(r12.xyz, v_174, (v_173 != vec3<u32>()));
      r11 = vec4<f32>(v_175.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      let v_176 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_176.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_177 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r7.z, cb3_3.tint_symbol_2[13u].w);
      r7.z = (r7.z / r8.z);
      let v_178 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.z = dot(r11.xyz, v_178.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      let v_179 = dot(r11.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_179, v_179, v_179, v_179).w, 0.0f, 1.0f);
      r8.z = (r8.z * r8.w);
      r8.w = (r7.z * r8.z);
      let v_180 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r12 = vec4<f32>(v_180.xyz, r12.w);
      let v_181 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_181.xyz, r10.w);
      let v_182 = fma(r3.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_182.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_183 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_183.xyz, r11.w);
      let v_184 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_184, v_184, v_184, v_184).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[5u].w, r8.w, r7.w);
      let v_185 = dot(r11.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_185, v_185, v_185, v_185).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r7.z = (r7.z * r8.z);
      r7.z = (r8.x * r7.z);
      let v_186 = fma(r7.zzz, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_186.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_187 = (v_22.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_187.xyz, r11.w);
      let v_188 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_188.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r8.z = clamp(((r8.zzzz / r8.wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[22u].w);
      let v_189 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_189.xyz, r12.w);
      let v_190 = (r12.xyz + v_22.xyz);
      r12 = vec4<f32>(v_190.xyz, r12.w);
      let v_191 = bitcast<vec3<u32>>(r7.zzz);
      let v_192 = r11.xyz;
      let v_193 = select(r12.xyz, v_192, (v_191 != vec3<u32>()));
      r11 = vec4<f32>(v_193.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      let v_194 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_194.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_195 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[14u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r7.z, cb3_3.tint_symbol_2[14u].w);
      r7.z = (r7.z / r8.z);
      let v_196 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.z = dot(r11.xyz, v_196.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).z, 0.0f, 1.0f);
      let v_197 = dot(r11.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_197, v_197, v_197, v_197).w, 0.0f, 1.0f);
      r8.z = (r8.z * r8.w);
      r8.w = (r7.z * r8.z);
      let v_198 = (r8.www * cb3_3.tint_symbol_2[22u].xyz);
      r12 = vec4<f32>(v_198.xyz, r12.w);
      let v_199 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_199.xyz, r10.w);
      let v_200 = fma(r3.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_200.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_201 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_201.xyz, r11.w);
      let v_202 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_202, v_202, v_202, v_202).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[5u].w, r8.w, r7.w);
      let v_203 = dot(r11.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_203, v_203, v_203, v_203).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r7.z = (r7.z * r8.z);
      r7.z = (r8.x * r7.z);
      let v_204 = fma(r7.zzz, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_204.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_205 = (v_22.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_205.xyz, r11.w);
      let v_206 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r12 = vec4<f32>(v_206.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r8.w = (cb3_3.tint_symbol_2[23u].w + 0.00009999999747378752f);
      r8.z = clamp(((r8.zzzz / r8.wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[23u].w);
      let v_207 = fma(cb3_3.tint_symbol_2[15u].xyz, r8.zzz, cb3_3.tint_symbol_2[7u].xyz);
      r12 = vec4<f32>(v_207.xyz, r12.w);
      let v_208 = (r12.xyz + v_22.xyz);
      r12 = vec4<f32>(v_208.xyz, r12.w);
      let v_209 = bitcast<vec3<u32>>(r7.zzz);
      let v_210 = r11.xyz;
      let v_211 = select(r12.xyz, v_210, (v_209 != vec3<u32>()));
      r11 = vec4<f32>(v_211.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      let v_212 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_212.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_213 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_213.xyz, r11.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[15u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r7.z, cb3_3.tint_symbol_2[15u].w);
      r7.z = (r7.z / r8.z);
      let v_214 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r8.z = dot(r11.xyz, v_214.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).z, 0.0f, 1.0f);
      let v_215 = dot(r11.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_215, v_215, v_215, v_215).w, 0.0f, 1.0f);
      r8.z = (r8.z * r8.w);
      r8.w = (r7.z * r8.z);
      let v_216 = (r8.www * cb3_3.tint_symbol_2[23u].xyz);
      r12 = vec4<f32>(v_216.xyz, r12.w);
      let v_217 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_217.xyz, r10.w);
      let v_218 = fma(r3.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_218.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_219 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_219.xyz, r11.w);
      let v_220 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_220, v_220, v_220, v_220).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[5u].w, r8.w, r7.w);
      let v_221 = dot(r11.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_221, v_221, v_221, v_221).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r7.z = (r7.z * r8.z);
      r7.z = (r8.x * r7.z);
      let v_222 = fma(r7.zzz, cb3_3.tint_symbol_2[23u].xyz, r9.xyz);
      r9 = vec4<f32>(v_222.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_223 = (v_22.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_223.xyz, r11.w);
      let v_224 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r12 = vec4<f32>(v_224.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r8.w = (cb3_3.tint_symbol_2[24u].w + 0.00009999999747378752f);
      r8.z = clamp(((r8.zzzz / r8.wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[24u].w);
      let v_225 = fma(cb3_3.tint_symbol_2[16u].xyz, r8.zzz, cb3_3.tint_symbol_2[8u].xyz);
      r12 = vec4<f32>(v_225.xyz, r12.w);
      let v_226 = (r12.xyz + v_22.xyz);
      r12 = vec4<f32>(v_226.xyz, r12.w);
      let v_227 = bitcast<vec3<u32>>(r7.zzz);
      let v_228 = r11.xyz;
      let v_229 = select(r12.xyz, v_228, (v_227 != vec3<u32>()));
      r11 = vec4<f32>(v_229.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      let v_230 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_230.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_231 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_231.xyz, r11.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[16u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r7.z, cb3_3.tint_symbol_2[16u].w);
      r7.z = (r7.z / r8.z);
      let v_232 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r8.z = dot(r11.xyz, v_232.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).z, 0.0f, 1.0f);
      let v_233 = dot(r11.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_233, v_233, v_233, v_233).w, 0.0f, 1.0f);
      r8.z = (r8.z * r8.w);
      r8.w = (r7.z * r8.z);
      let v_234 = (r8.www * cb3_3.tint_symbol_2[24u].xyz);
      r12 = vec4<f32>(v_234.xyz, r12.w);
      let v_235 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_235.xyz, r10.w);
      let v_236 = fma(r3.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_236.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_237 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_237.xyz, r11.w);
      let v_238 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_238, v_238, v_238, v_238).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[5u].w, r8.w, r7.w);
      let v_239 = dot(r11.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_239, v_239, v_239, v_239).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r7.z = (r7.z * r8.z);
      r7.z = (r8.x * r7.z);
      let v_240 = fma(r7.zzz, cb3_3.tint_symbol_2[24u].xyz, r9.xyz);
      r9 = vec4<f32>(v_240.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_241 = (v_22.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_241.xyz, r11.w);
      let v_242 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r12 = vec4<f32>(v_242.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r8.w = (cb3_3.tint_symbol_2[25u].w + 0.00009999999747378752f);
      r8.z = clamp(((r8.zzzz / r8.wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[25u].w);
      let v_243 = fma(cb3_3.tint_symbol_2[17u].xyz, r8.zzz, cb3_3.tint_symbol_2[9u].xyz);
      r12 = vec4<f32>(v_243.xyz, r12.w);
      let v_244 = (r12.xyz + v_22.xyz);
      r12 = vec4<f32>(v_244.xyz, r12.w);
      let v_245 = bitcast<vec3<u32>>(r7.zzz);
      let v_246 = r11.xyz;
      let v_247 = select(r12.xyz, v_246, (v_245 != vec3<u32>()));
      r11 = vec4<f32>(v_247.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      let v_248 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_248.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_249 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_249.xyz, r11.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[17u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r7.z, cb3_3.tint_symbol_2[17u].w);
      r7.z = (r7.z / r8.z);
      let v_250 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r8.z = dot(r11.xyz, v_250.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).z, 0.0f, 1.0f);
      let v_251 = dot(r11.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_251, v_251, v_251, v_251).w, 0.0f, 1.0f);
      r8.z = (r8.z * r8.w);
      r8.w = (r7.z * r8.z);
      let v_252 = (r8.www * cb3_3.tint_symbol_2[25u].xyz);
      r12 = vec4<f32>(v_252.xyz, r12.w);
      let v_253 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_253.xyz, r10.w);
      let v_254 = fma(r3.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_254.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_255 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_255.xyz, r11.w);
      let v_256 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_256, v_256, v_256, v_256).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[5u].w, r8.w, r7.w);
      let v_257 = dot(r11.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_257, v_257, v_257, v_257).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r7.z = (r7.z * r8.z);
      r7.z = (r8.x * r7.z);
      let v_258 = fma(r7.zzz, cb3_3.tint_symbol_2[25u].xyz, r9.xyz);
      r9 = vec4<f32>(v_258.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_259 = (v_22.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_259.xyz, r11.w);
      let v_260 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r12 = vec4<f32>(v_260.xyz, r12.w);
      r7.z = dot(r12.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r8.z = (cb3_3.tint_symbol_2[26u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r8.zzzz)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[26u].w);
      let v_261 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.zzz, cb3_3.tint_symbol_2[10u].xyz);
      r12 = vec4<f32>(v_261.xyz, r12.w);
      let v_262 = (r12.xyz + v_22.xyz);
      r12 = vec4<f32>(v_262.xyz, r12.w);
      let v_263 = bitcast<vec3<u32>>(r6.www);
      let v_264 = r11.xyz;
      let v_265 = select(r12.xyz, v_264, (v_263 != vec3<u32>()));
      r11 = vec4<f32>(v_265.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_266 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_266.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_267 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_267.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[18u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r6.w, cb3_3.tint_symbol_2[18u].w);
      r6.w = (r6.w / r7.z);
      let v_268 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.z = dot(r11.xyz, v_268.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).z, 0.0f, 1.0f);
      let v_269 = dot(r11.xyz, r1.xyw);
      r8.z = clamp(vec4<f32>(v_269, v_269, v_269, v_269).z, 0.0f, 1.0f);
      r7.z = (r7.z * r8.z);
      r8.z = (r6.w * r7.z);
      let v_270 = (r8.zzz * cb3_3.tint_symbol_2[26u].xyz);
      r12 = vec4<f32>(v_270.xyz, r12.w);
      let v_271 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_271.xyz, r10.w);
      let v_272 = fma(r3.xyz, r3.www, r11.xyz);
      r3 = vec4<f32>(v_272.xyz, r3.w);
      r3.w = dot(r3.xyz, r3.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_273 = (r3.www * r3.xyz);
      r3 = vec4<f32>(v_273.xyz, r3.w);
      let v_274 = dot(r3.xyz, r4.xyz);
      r3.w = clamp(vec4<f32>(v_274, v_274, v_274, v_274).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r8.z = (r3.w * r3.w);
      r8.z = (r8.z * r8.z);
      r3.w = (r3.w * r8.z);
      r3.w = fma(cb12_12.tint_symbol_4[5u].w, r3.w, r7.w);
      let v_275 = dot(r3.xyz, r1.xyw);
      r3.x = clamp(vec4<f32>(v_275, v_275, v_275, v_275).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r8.y);
      r3.x = exp2(r3.x);
      r3.x = (r3.x * r3.w);
      r3.x = (r7.z * r3.x);
      r3.x = (r6.w * r3.x);
      r3.x = (r8.x * r3.x);
      let v_276 = fma(r3.xxx, cb3_3.tint_symbol_2[26u].xyz, r9.xyz);
      r9 = vec4<f32>(v_276.xyz, r9.w);
    }
  }
  r3.x = (r7.y * r7.y);
  r2.x = (r2.x * r2.x);
  let v_277 = (r9.xyz * r2.xxx);
  r3 = vec4<f32>(r3.x, v_277.xyz);
  let v_278 = fma(r3.xxx, r10.xyz, r3.yzw);
  r3 = vec4<f32>(v_278.xyz, r3.w);
  let v_279 = fma(r5.xyz, r5.www, r3.xyz);
  r3 = vec4<f32>(v_279.xyz, r3.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_280 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_280.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_281 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_281.xyz, r8.w);
  let v_282 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_282.xyz, r8.w);
  let v_283 = fma(r5.xyz, r1.zzz, r8.xyz);
  r5 = vec4<f32>(v_283.xyz, r5.w);
  let v_284 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_284.xyz, r5.w);
  let v_285 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r8 = vec4<f32>(v_285.xyz, r8.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_286 = dot(r9.xyz, r1.xyw);
  r0.w = clamp(vec4<f32>(v_286, v_286, v_286, v_286).w, 0.0f, 1.0f);
  let v_287 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r8.xyz);
  r8 = vec4<f32>(v_287.xyz, r8.w);
  let v_288 = fma(r8.xyz, r4.www, r5.xyz);
  r5 = vec4<f32>(v_288.xyz, r5.w);
  let v_289 = (r7.yyy * r5.xyz);
  r5 = vec4<f32>(v_289.xyz, r5.w);
  let v_290 = fma(r5.xyz, r0.xyz, r3.xyz);
  r3 = vec4<f32>(v_290.xyz, r3.w);
  r0.w = ((-(r7.yyyy)).w + 1.0f);
  r1.z = dot((-(r4.xyzx)).xyz, r1.xyw);
  r1.z = (r1.z + r1.z);
  let v_291 = -(r1.zzzz);
  let v_292 = -(r4.xyzx);
  let v_293 = fma(r1.xyw, v_291.xyz, v_292.xyz);
  r1 = vec4<f32>(v_293.xyz, r1.w);
  let v_294 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.0f, 0.0f, 0.00177619897294789553f))).xw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_294.x, r2.yz, v_294.y);
  r1.w = ((-(r2.xxxx)).w + 1.0f);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.w = (r1.w * cb5_5.tint_symbol_3[6u].z);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.x)));
  r4.x = fma(r1.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.w = (r1.w * r1.w);
  r1.w = fma(r1.w, 5.0f, r2.x);
  let v_295 = bitcast<u32>(r3.w);
  let v_296 = r4.x;
  r1.w = select(r1.w, v_296, (v_295 != 0u));
  let v_297 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_297.xyz, r4.w);
  r1.x = (abs(r1.zzzz).x + 1.0f);
  let v_298 = (r4.xyz / r1.xxx);
  r4 = vec4<f32>(v_298.xyz, r4.w);
  let v_299 = ((-(r4.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_299.xyz, r4.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_300 = bitcast<vec2<u32>>(r1.xx);
  let v_301 = r4.xy;
  let v_302 = select(r4.zy, v_301, (v_300 != vec2<u32>()));
  r1 = vec4<f32>(v_302.xy, r1.zw);
  let v_303 = r1.w;
  r1 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_303);
  r1.w = max(r2.y, r4.w);
  let v_304 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_304.xyz, r1.w);
  let v_305 = (r2.www * r1.xyz);
  r2 = vec4<f32>(v_305.xy, r2.z, v_305.z);
  let v_306 = (r2.xyw * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_306.xy, r2.z, v_306.z);
  let v_307 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyw);
  r1 = vec4<f32>(v_307.xyz, r1.w);
  let v_308 = fma(r1.xyz, r0.www, r3.xyz);
  r1 = vec4<f32>(v_308.xyz, r1.w);
  r0.w = (r2.z * r7.x);
  let v_309 = fma(r0.xyz, r0.www, r1.xyz);
  r0 = vec4<f32>(v_309.xyz, r0.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.w);
  let v_310 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_310.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_311 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_311 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_312 = (r0.www * r6.xyz);
  r2 = vec4<f32>(v_312.xyz, r2.w);
  let v_313 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_313, v_313, v_313, v_313).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_314 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_314, v_314, v_314, v_314).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_315 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_315.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_316 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_316.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_317 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_317.xyz, r2.w);
  let v_318 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_318.xyz, r2.w);
  let v_319 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_319.xyz, r3.w);
  let v_320 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_320.xyz, r2.w);
  let v_321 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_322 = (r2.xyz + v_321.xyz);
  r2 = vec4<f32>(v_322.xyz, r2.w);
  let v_323 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_323.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_324 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_324.xy, r1.z, v_324.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_325 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_325.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_326 = -(r0.xyxz);
  let v_327 = fma(r1.xyw, r0.www, v_326.xyw);
  r1 = vec4<f32>(v_327.xy, r1.z, v_327.z);
  let v_328 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_328.xyz, r0.w);
  let v_329 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_329.xyz, o0.w);
  o0.w = cb2_2.tint_symbol_1[15u].x;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_330 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6, v_330);
  return o0;
}
