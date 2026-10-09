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

struct cb12_struct {
  tint_symbol_4 : array<vec4<f32>, 12u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb12_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v5 : vec4<f32>;

var<private> v6 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v5 = v_2;
  x1[0u].x = v6[0u];
  x1[0u].y = v6[1u];
  x1[0u].z = v6[2u];
  x1[0u].w = v6[3u];
  r0 = textureSample(t0, s0, v0.xyxx.xy);
  r1.x = dot(v1.xyz, v1.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xxx * v1.xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  r2 = textureSample(t4, s4, v0.xyxx.xy);
  let v_4 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r2.x = dot(r2.xyz, cb11_11.tint_symbol_4[11u].xyz);
  r2.x = (r2.x * v1.w);
  let v_5 = (r0.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r2.y = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).y, 0.0f, 1.0f);
  r2.y = (r2.y * cb2_2.tint_symbol_1[15u].y);
  r2.z = (v4.x * cb11_11.tint_symbol_4[2u].x);
  r2.z = (r2.z * cb11_11.tint_symbol_4[9u].z);
  r2.x = (r2.x * 0.80000001192092895508f);
  let v_6 = ((-(cb11_11.tint_symbol_4[9u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_6.xy, r3.zw);
  r3.z = (r3.x * v4.z);
  let v_7 = (r3.yy * v0.zw);
  let v_8 = r3;
  r3 = vec4<f32>(v_8.x, v_7.x, v_8.z, v_7.y);
  r4 = textureSample(t3, s3, r3.ywyy.xy);
  r3.y = (cb5_5.tint_symbol_3[3u].z * cb11_11.tint_symbol_4[9u].z);
  r3.w = ((-(r4.xxxx)).w + r4.z);
  r4.x = fma(r3.y, r3.w, r4.x);
  let v_9 = (r4.xy * cb11_11.tint_symbol_4[9u].xx);
  let v_10 = r3;
  r3 = vec4<f32>(v_10.x, v_9.x, v_10.z, v_9.y);
  r4.x = fma(v4.z, r3.x, -1.0f);
  r3.x = fma(r3.x, r4.x, 1.0f);
  r3.y = (r3.x * r3.y);
  r4.x = fma((-(cb2_2.tint_symbol_1[16u].yyyy)).x, 100.0f, 1.0f);
  r3.y = clamp(((r3.yyyy * r4.xxxx)).y, 0.0f, 1.0f);
  r4.x = clamp(((v4.wwww + vec4<f32>(-2.0f))).x, 0.0f, 1.0f);
  r4.x = fma((-(r4.xxxx)).x, 0.75f, 1.0f);
  r3.y = (r3.y * r4.x);
  let v_11 = -(r0.xyxz);
  let v_12 = fma(cb11_11.tint_symbol_4[10u].xyz, cb11_11.tint_symbol_4[9u].yyy, v_11.xyw);
  r4 = vec4<f32>(v_12.xy, r4.z, v_12.z);
  let v_13 = fma(r3.yyy, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  r3.y = (r3.z * cb11_11.tint_symbol_4[9u].x);
  let v_14 = ((-(r0.xyzx)).xyz + r4.zzz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = fma(r3.yyy, r4.xyz, r0.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r3.x = fma((-(r3.wwww)).x, r3.x, 1.0f);
  r2.x = clamp(((r2.xxxx * r3.xxxx)).x, 0.0f, 1.0f);
  let v_16 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = -(v2.xyzx);
  let v_18 = (v_17.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_19 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_21 = fma(r3.xyz, r3.www, v_20.xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_22 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  r4.w = (cb2_2.tint_symbol_1[15u].z * cb2_2.tint_symbol_1[15u].z);
  r2.y = (r2.y * r2.y);
  r5.w = fma(r2.w, 510.0f, -500.0f);
  r5.w = max(r5.w, 0.0f);
  let v_23 = -(r5.wwww);
  r2.w = fma(r2.w, 510.0f, v_23.w);
  r5.w = (r5.w * 558.0f);
  r2.w = fma(r2.w, 3.0f, r5.w);
  r5.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_24 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_24.xyz, r6.w);
  let v_25 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_25.xyz, r7.w);
  let v_26 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_26.xyz, r7.w);
  let v_27 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_27.xyz, r7.w);
  let v_28 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_28.xyz, r8.w);
  let v_29 = &(x0[0u]);
  let v_30 = r8;
  *(v_29) = vec4<f32>(v_30.xyz, (*(v_29)).w);
  let v_31 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_31.xyz, r9.w);
  let v_32 = &(x0[1u]);
  let v_33 = r9;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_34.xyz, r10.w);
  let v_35 = &(x0[2u]);
  let v_36 = r10;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_37.xyz, r7.w);
  let v_38 = &(x0[3u]);
  let v_39 = r7;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_41 = r11;
  r11 = vec4<f32>(v_41.x, v_40.x, v_41.z, v_40.y);
  r6.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r6.w = (r6.w * 0.5f);
  let v_42 = abs(r10.yyyy);
  r7.z = max(v_42.z, abs(r10.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r6.w)));
  let v_43 = (bitcast<u32>(r7.z) != 0u);
  let v_44 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r7.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_44, v_43);
  let v_45 = abs(r9.yyyy);
  r7.w = max(v_45.w, abs(r9.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_46 = bitcast<u32>(r7.w);
  r7.z = select(r7.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_46 != 0u));
  let v_47 = abs(r8.yyyy);
  r7.w = max(v_47.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_48 = bitcast<u32>(r6.w);
  r6.w = select(r7.z, 0.0f, (v_48 != 0u));
  let v_49 = x0[bitcast<i32>(r6.w)];
  r8 = vec4<f32>(v_49.xyz, r8.w);
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
  let v_50 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_50.xy, r10.z, v_50.z);
  r10.z = dpdx(r6.w);
  let v_51 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_51.xyz, r12.w);
  r12.w = dpdy(r6.w);
  let v_52 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_52.xy, r8.zw);
  let v_53 = -(r8.xyxx);
  let v_54 = fma(r10.xz, r12.xz, v_53.xy);
  r13 = vec4<f32>(v_54.xy, r13.zw);
  r8.x = (1.0f / r13.x);
  r8.y = (r10.z * r12.y);
  let v_55 = -(r8.yyyy);
  r13.z = fma(r10.x, r12.w, v_55.z);
  let v_56 = (r8.xx * r13.yz);
  r8 = vec4<f32>(v_56.xy, r8.zw);
  let v_57 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_57.xy, r8.zw);
  let v_58 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_58.xy, r8.zw);
  r6.w = fma((-(r7.wwww)).w, r8.x, r6.w);
  r6.w = fma((-(r7.wwww)).w, r8.y, r6.w);
  let v_59 = bitcast<u32>(r7.z);
  let v_60 = r6.w;
  r11.z = select(r8.z, v_60, (v_59 != 0u));
  r9.z = 0.0f;
  let v_61 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_61.xyz, r8.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_62.xy, r11.zw);
  let v_63 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_63.xyz, r10.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_64.xy, r11.zw);
  let v_65 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_65.xyz, r12.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_66.xy, r11.zw);
  let v_67 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_67.xyz, r13.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_68.xy, r11.zw);
  let v_69 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_69.xyz, r14.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_70.xy, r11.zw);
  let v_71 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_71.xyz, r15.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_72.xy, r11.zw);
  let v_73 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_73.xyz, r16.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_74.xy, r11.zw);
  let v_75 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_75.xyz, r17.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_77.xyz, r18.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_79.xyz, r19.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_81.xyz, r20.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_83.xyz, r21.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_85.xyz, r22.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_86.xy, r11.zw);
  let v_87 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_87.xyz, r23.w);
  let v_88 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_88.xy, r11.zw);
  let v_89 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_89.xyz, r24.w);
  let v_90 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_90.xy, r11.zw);
  let v_91 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_91.xyz, r9.w);
  let v_92 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_92.xy, r8.z);
  let v_93 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_93.xy, r10.z);
  let v_94 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_94.xy, r12.z);
  let v_95 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_95.xy, r13.z);
  let v_96 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_96.xy, r14.z);
  let v_97 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_97.xy, r15.z);
  let v_98 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_98.xy, r16.z);
  let v_99 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_99.xy, r17.z);
  let v_100 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_100.xy, r18.z);
  let v_101 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_101.xy, r19.z);
  let v_102 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_102.xy, r20.z);
  let v_103 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_103.xy, r21.z);
  let v_104 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_104.xy, r22.z);
  let v_105 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_105.xy, r23.z);
  let v_106 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_106.xy, r24.z);
  let v_107 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_107.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r6.w = dot(r8, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_108 = abs(r7.yyyy);
  r7.x = max(v_108.x, abs(r7.xxxx).x);
  r7.x = clamp(fma(r7.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r7.x * r5.w);
  r5.w = fma(r6.w, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r6.w = sqrt(r6.w);
  r6.w = (r6.w * cb6_6.tint_symbol_5[3u].z);
  let v_109 = -(r5.wwww);
  r5.w = fma(r6.w, v_109.w, r5.w);
  let v_110 = dot(r1.yzw, v_20.xyz);
  r6.w = clamp(vec4<f32>(v_110, v_110, v_110, v_110).w, 0.0f, 1.0f);
  let v_111 = dot(r4.xyz, r1.yzw);
  r7.x = clamp(vec4<f32>(v_111, v_111, v_111, v_111).x, 0.0f, 1.0f);
  let v_112 = dot(r5.xyz, v_20.xyz);
  r7.y = clamp(vec4<f32>(v_112, v_112, v_112, v_112).y, 0.0f, 1.0f);
  let v_113 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_114 = r7;
  r7 = vec4<f32>(v_114.x, v_113.xy, v_114.w);
  let v_115 = (r7.yz * r7.yz);
  r8 = vec4<f32>(v_115.xy, r8.zw);
  let v_116 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_116.xy, r8.zw);
  let v_117 = (r7.yz * r8.xy);
  let v_118 = r7;
  r7 = vec4<f32>(v_118.x, v_117.xy, v_118.w);
  let v_119 = fma(r7.yz, vec2<f32>(0.95999997854232788086f), vec2<f32>(0.03999999910593032837f));
  let v_120 = r7;
  r7 = vec4<f32>(v_120.x, v_119.xy, v_120.w);
  let v_121 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_121.xy, r8.zw);
  r7.w = (r8.x * 0.125f);
  r7.y = fma((-(r2.xxxx)).y, r7.y, 1.0f);
  r5.x = dot(r1.yzw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r7.z * r5.x);
  r5.x = (r7.w * r5.x);
  r5.x = (r2.x * r5.x);
  r5.x = (r6.w * r5.x);
  r5.y = (r6.w * r7.y);
  let v_122 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_122.xyz, r5.w);
  let v_123 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_123.xyz, r5.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r9 = vec4<f32>(r9.x, vec3<f32>());
    r8 = vec4<f32>(0.0f, r8.y, vec2<f32>());
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_124 = ((-(v2.xxyz)).xzw + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_124.x, r8.y, v_124.yz);
    let v_125 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_125.xyz, r9.w);
    r9.x = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.y = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r9.x = clamp(((r9.xxxx / r9.yyyy)).x, 0.0f, 1.0f);
    r9.x = (r9.x * cb3_3.tint_symbol_2[19u].w);
    let v_126 = fma(cb3_3.tint_symbol_2[11u].xyz, r9.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_126.xyz, r9.w);
    let v_127 = (r9.xyz + v_17.xyz);
    r9 = vec4<f32>(v_127.xyz, r9.w);
    let v_128 = bitcast<vec3<u32>>(r7.zzz);
    let v_129 = r8.xzw;
    let v_130 = select(r9.xyz, v_129, (v_128 != vec3<u32>()));
    r8 = vec4<f32>(v_130.x, r8.y, v_130.yz);
    r7.z = dot(r8.xzw, r8.xzw);
    let v_131 = (r8.xzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_131.x, r8.y, v_131.yz);
    r9.x = dot(r8.xzw, r8.xzw);
    r9.x = inverseSqrt(r9.x);
    let v_132 = (r8.xzw * r9.xxx);
    r8 = vec4<f32>(v_132.x, r8.y, v_132.yz);
    r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r9.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r9.x = fma(r9.x, r7.z, cb3_3.tint_symbol_2[11u].w);
    r7.z = (r7.z / r9.x);
    let v_133 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.x = dot(r8.xzw, v_133.xyz);
    r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_134 = dot(r8.xzw, r1.yzw);
    r9.y = clamp(vec4<f32>(v_134, v_134, v_134, v_134).y, 0.0f, 1.0f);
    r9.x = (r9.x * r9.y);
    r9.y = (r7.z * r9.x);
    let v_135 = (r9.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(r9.x, v_135.xyz);
    let v_136 = (r0.xyz * r9.yzw);
    r9 = vec4<f32>(r9.x, v_136.xyz);
    let v_137 = fma(r3.xyz, r3.www, r8.xzw);
    r8 = vec4<f32>(v_137.x, r8.y, v_137.yz);
    r10.x = dot(r8.xzw, r8.xzw);
    r10.x = inverseSqrt(r10.x);
    let v_138 = (r8.xzw * r10.xxx);
    r8 = vec4<f32>(v_138.x, r8.y, v_138.yz);
    let v_139 = dot(r8.xzw, r4.xyz);
    r10.x = clamp(vec4<f32>(v_139, v_139, v_139, v_139).x, 0.0f, 1.0f);
    r10.x = ((-(r10.xxxx)).x + 1.0f);
    r10.y = (r10.x * r10.x);
    r10.y = (r10.y * r10.y);
    r10.x = (r10.y * r10.x);
    r10.x = fma(r10.x, 0.95999997854232788086f, 0.03999999910593032837f);
    let v_140 = dot(r8.xzw, r1.yzw);
    r8.x = clamp(vec4<f32>(v_140, v_140, v_140, v_140).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.y);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r10.x);
    r8.x = (r9.x * r8.x);
    r7.z = (r7.z * r8.x);
    r7.z = (r7.w * r7.z);
    let v_141 = (r7.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_141.x, r8.y, v_141.yz);
  }
  r7.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.z) != 0u)) {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.z = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.z)));
    let v_142 = bitcast<u32>(r9.x);
    let v_143 = r7.z;
    r6.w = select(r6.w, v_143, (v_142 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_144 = (v_17.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_144.xyz, r10.w);
      let v_145 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_145.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r10.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[20u].w);
      let v_146 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_146.xyz, r11.w);
      let v_147 = (r11.xyz + v_17.xyz);
      r11 = vec4<f32>(v_147.xyz, r11.w);
      let v_148 = bitcast<vec3<u32>>(r7.zzz);
      let v_149 = r10.xyz;
      let v_150 = select(r11.xyz, v_149, (v_148 != vec3<u32>()));
      r10 = vec4<f32>(v_150.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      let v_151 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_151.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_152 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_152.xyz, r10.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.z, cb3_3.tint_symbol_2[12u].w);
      r7.z = (r7.z / r9.x);
      let v_153 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.x = dot(r10.xyz, v_153.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_154 = dot(r10.xyz, r1.yzw);
      r10.w = clamp(vec4<f32>(v_154, v_154, v_154, v_154).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.z * r9.x);
      let v_155 = (r10.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_155.xyz, r11.w);
      let v_156 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_156.xyz);
      let v_157 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_157.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_158 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_158.xyz, r10.w);
      let v_159 = dot(r10.xyz, r4.xyz);
      r10.w = clamp(vec4<f32>(v_159, v_159, v_159, v_159).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(r10.w, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_160 = dot(r10.xyz, r1.yzw);
      r10.x = clamp(vec4<f32>(v_160, v_160, v_160, v_160).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.z = (r7.z * r9.x);
      r7.z = (r7.w * r7.z);
      let v_161 = fma(r7.zzz, cb3_3.tint_symbol_2[20u].xyz, r8.xzw);
      r8 = vec4<f32>(v_161.x, r8.y, v_161.yz);
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
      let v_162 = (v_17.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_162.xyz, r10.w);
      let v_163 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_163.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r10.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[21u].w);
      let v_164 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      let v_165 = (r11.xyz + v_17.xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      let v_166 = bitcast<vec3<u32>>(r7.zzz);
      let v_167 = r10.xyz;
      let v_168 = select(r11.xyz, v_167, (v_166 != vec3<u32>()));
      r10 = vec4<f32>(v_168.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      let v_169 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_169.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_170 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_170.xyz, r10.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.z, cb3_3.tint_symbol_2[13u].w);
      r7.z = (r7.z / r9.x);
      let v_171 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.x = dot(r10.xyz, v_171.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_172 = dot(r10.xyz, r1.yzw);
      r10.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.z * r9.x);
      let v_173 = (r10.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      let v_174 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_174.xyz);
      let v_175 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_176 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_176.xyz, r10.w);
      let v_177 = dot(r10.xyz, r4.xyz);
      r10.w = clamp(vec4<f32>(v_177, v_177, v_177, v_177).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(r10.w, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_178 = dot(r10.xyz, r1.yzw);
      r10.x = clamp(vec4<f32>(v_178, v_178, v_178, v_178).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.z = (r7.z * r9.x);
      r7.z = (r7.w * r7.z);
      let v_179 = fma(r7.zzz, cb3_3.tint_symbol_2[21u].xyz, r8.xzw);
      r8 = vec4<f32>(v_179.x, r8.y, v_179.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_180 = (v_17.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_180.xyz, r10.w);
      let v_181 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r9.x = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r9.xxxx)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[22u].w);
      let v_182 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_182.xyz, r11.w);
      let v_183 = (r11.xyz + v_17.xyz);
      r11 = vec4<f32>(v_183.xyz, r11.w);
      let v_184 = bitcast<vec3<u32>>(r6.www);
      let v_185 = r10.xyz;
      let v_186 = select(r11.xyz, v_185, (v_184 != vec3<u32>()));
      r10 = vec4<f32>(v_186.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_187 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_187.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_188 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_188.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[14u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r6.w, cb3_3.tint_symbol_2[14u].w);
      r6.w = (r6.w / r7.z);
      let v_189 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.z = dot(r10.xyz, v_189.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).z, 0.0f, 1.0f);
      let v_190 = dot(r10.xyz, r1.yzw);
      r9.x = clamp(vec4<f32>(v_190, v_190, v_190, v_190).x, 0.0f, 1.0f);
      r7.z = (r7.z * r9.x);
      r9.x = (r6.w * r7.z);
      let v_191 = (r9.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_191.xyz, r11.w);
      let v_192 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_192.xyz);
      let v_193 = fma(r3.xyz, r3.www, r10.xyz);
      r3 = vec4<f32>(v_193.xyz, r3.w);
      r3.w = dot(r3.xyz, r3.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_194 = (r3.www * r3.xyz);
      r3 = vec4<f32>(v_194.xyz, r3.w);
      let v_195 = dot(r3.xyz, r4.xyz);
      r3.w = clamp(vec4<f32>(v_195, v_195, v_195, v_195).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r9.x = (r3.w * r3.w);
      r9.x = (r9.x * r9.x);
      r3.w = (r3.w * r9.x);
      r3.w = fma(r3.w, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_196 = dot(r3.xyz, r1.yzw);
      r3.x = clamp(vec4<f32>(v_196, v_196, v_196, v_196).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r8.y);
      r3.x = exp2(r3.x);
      r3.x = (r3.x * r3.w);
      r3.x = (r7.z * r3.x);
      r3.x = (r6.w * r3.x);
      r3.x = (r7.w * r3.x);
      let v_197 = fma(r3.xxx, cb3_3.tint_symbol_2[22u].xyz, r8.xzw);
      r8 = vec4<f32>(v_197.x, r8.y, v_197.yz);
    }
  }
  r3.x = (r7.y * r7.y);
  r2.x = (r2.x * r2.x);
  let v_198 = (r8.xzw * r2.xxx);
  r3 = vec4<f32>(r3.x, v_198.xyz);
  let v_199 = fma(r3.xxx, r9.yzw, r3.yzw);
  r3 = vec4<f32>(v_199.xyz, r3.w);
  let v_200 = fma(r5.xyz, r5.www, r3.xyz);
  r3 = vec4<f32>(v_200.xyz, r3.w);
  r1.x = fma(v1.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_201 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_201.xyz, r5.w);
  r2.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_202 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_202.xyz, r8.w);
  let v_203 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_203.xyz, r8.w);
  let v_204 = fma(r5.xyz, r2.xxx, r8.xyz);
  r5 = vec4<f32>(v_204.xyz, r5.w);
  let v_205 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_205.xyz, r5.w);
  let v_206 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r8 = vec4<f32>(v_206.xyz, r8.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_207 = dot(r9.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_207, v_207, v_207, v_207).x, 0.0f, 1.0f);
  let v_208 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r8.xyz);
  r8 = vec4<f32>(v_208.xyz, r8.w);
  let v_209 = fma(r8.xyz, r4.www, r5.xyz);
  r5 = vec4<f32>(v_209.xyz, r5.w);
  let v_210 = (r7.yyy * r5.xyz);
  r5 = vec4<f32>(v_210.xyz, r5.w);
  let v_211 = fma(r5.xyz, r0.xyz, r3.xyz);
  r3 = vec4<f32>(v_211.xyz, r3.w);
  r1.x = ((-(r7.yyyy)).x + 1.0f);
  r2.x = dot((-(r4.xyzx)).xyz, r1.yzw);
  r2.x = (r2.x + r2.x);
  let v_212 = -(r2.xxxx);
  let v_213 = -(r4.xxyz);
  let v_214 = fma(r1.yzw, v_212.yzw, v_213.yzw);
  r1 = vec4<f32>(r1.x, v_214.xyz);
  let v_215 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.0f, 0.0f, 0.00177619897294789553f))).xw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_215.x, r2.yz, v_215.y);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r3.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r4.x = (r2.x * cb5_5.tint_symbol_3[6u].z);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r4.x < r3.w)));
  r4.y = fma(r2.x, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.x = (r2.x * r2.x);
  r2.x = fma(r2.x, 5.0f, r3.w);
  let v_216 = bitcast<u32>(r4.x);
  let v_217 = r4.y;
  r2.x = select(r2.x, v_217, (v_216 != 0u));
  let v_218 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_218.xyz, r4.w);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_219 = (r4.xyz / r1.yyy);
  r4 = vec4<f32>(v_219.xyz, r4.w);
  let v_220 = ((-(r4.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_220.xyz, r4.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_221 = bitcast<vec2<u32>>(r1.yy);
  let v_222 = r4.xy;
  let v_223 = select(r4.zy, v_222, (v_221 != vec2<u32>()));
  let v_224 = r1;
  r1 = vec4<f32>(v_224.x, v_223.xy, v_224.w);
  let v_225 = r2.x;
  r5 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_225);
  r1.y = max(r2.y, r4.w);
  let v_226 = (r1.yyy * r5.xyz);
  r1 = vec4<f32>(r1.x, v_226.xyz);
  let v_227 = (r2.www * r1.yzw);
  r2 = vec4<f32>(v_227.xy, r2.z, v_227.z);
  let v_228 = (r2.xyw * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_228.xy, r2.z, v_228.z);
  let v_229 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyw);
  r1 = vec4<f32>(r1.x, v_229.xyz);
  let v_230 = fma(r1.yzw, r1.xxx, r3.xyz);
  r1 = vec4<f32>(v_230.xyz, r1.w);
  r1.w = (r2.z * r7.x);
  let v_231 = fma(r0.xyz, r1.www, r1.xyz);
  r0 = vec4<f32>(v_231.xyz, r0.w);
  o0.w = clamp(((r0.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.w);
  let v_232 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_232.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_233 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_233 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_234 = (r0.www * r6.xyz);
  r2 = vec4<f32>(v_234.xyz, r2.w);
  let v_235 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_235, v_235, v_235, v_235).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_236 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_236, v_236, v_236, v_236).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_237 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_237.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_238 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_238.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_239 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_239.xyz, r2.w);
  let v_240 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_240.xyz, r2.w);
  let v_241 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_241.xyz, r3.w);
  let v_242 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_242.xyz, r2.w);
  let v_243 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_244 = (r2.xyz + v_243.xyz);
  r2 = vec4<f32>(v_244.xyz, r2.w);
  let v_245 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_245.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_246 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_246.xy, r1.z, v_246.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_247 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_247.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_248 = -(r0.xyxz);
  let v_249 = fma(r1.xyw, r0.www, v_248.xyw);
  r1 = vec4<f32>(v_249.xy, r1.z, v_249.z);
  let v_250 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_250.xyz, r0.w);
  let v_251 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_251.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_252 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v_252);
  return o0;
}
