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

struct cb11_struct {
  tint_symbol_4 : array<vec4<f32>, 11u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb11_struct;

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
  tint_symbol_6 : array<vec4<u32>, 3u>,
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
  r2.x = dot(r2.xyz, cb11_11.tint_symbol_4[10u].xyz);
  r2.x = (r2.x * 0.80000001192092895508f);
  let v_5 = (r0.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r2.y = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).y, 0.0f, 1.0f);
  r2.y = (r2.y * cb2_2.tint_symbol_1[15u].y);
  r2.z = (v4.x * cb11_11.tint_symbol_4[2u].x);
  let v_6 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = ((-(cb11_11.tint_symbol_4[8u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_7.xy, r3.zw);
  r3.z = (r3.x * v4.z);
  let v_8 = (r3.yy * v0.zw);
  let v_9 = r3;
  r3 = vec4<f32>(v_9.x, v_8.x, v_9.z, v_8.y);
  r4 = textureSample(t3, s3, r3.ywyy.xy);
  r3.y = (cb5_5.tint_symbol_3[3u].z * cb11_11.tint_symbol_4[8u].z);
  r3.w = ((-(r4.xxxx)).w + r4.z);
  r4.x = fma(r3.y, r3.w, r4.x);
  let v_10 = (r4.xy * cb11_11.tint_symbol_4[8u].xx);
  let v_11 = r3;
  r3 = vec4<f32>(v_11.x, v_10.x, v_11.z, v_10.y);
  r4.x = fma(v4.z, r3.x, -1.0f);
  r3.x = fma(r3.x, r4.x, 1.0f);
  r3.y = (r3.x * r3.y);
  r4.x = fma((-(cb2_2.tint_symbol_1[16u].yyyy)).x, 100.0f, 1.0f);
  r3.y = clamp(((r3.yyyy * r4.xxxx)).y, 0.0f, 1.0f);
  r4.x = clamp(((v4.wwww + vec4<f32>(-2.0f))).x, 0.0f, 1.0f);
  r4.x = fma((-(r4.xxxx)).x, 0.75f, 1.0f);
  r3.y = (r3.y * r4.x);
  let v_12 = -(r0.xyxz);
  let v_13 = fma(cb11_11.tint_symbol_4[9u].xyz, cb11_11.tint_symbol_4[8u].yyy, v_12.xyw);
  r4 = vec4<f32>(v_13.xy, r4.z, v_13.z);
  let v_14 = fma(r3.yyy, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  r3.y = (r3.z * cb11_11.tint_symbol_4[8u].x);
  let v_15 = ((-(r0.xyzx)).xyz + r4.zzz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  let v_16 = fma(r3.yyy, r4.xyz, r0.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r3.x = fma((-(r3.wwww)).x, r3.x, 1.0f);
  r2.x = clamp(((r2.xxxx * r3.xxxx)).x, 0.0f, 1.0f);
  let v_17 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_18 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  let v_19 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_20 = fma(r3.xyz, r3.www, v_19.xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_21 = (r3.www * r5.xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  r3.w = (cb2_2.tint_symbol_1[15u].z * cb2_2.tint_symbol_1[15u].z);
  r2.y = (r2.y * r2.y);
  r4.w = fma(r2.w, 510.0f, -500.0f);
  r4.w = max(r4.w, 0.0f);
  let v_22 = -(r4.wwww);
  r2.w = fma(r2.w, 510.0f, v_22.w);
  r4.w = (r4.w * 558.0f);
  r2.w = fma(r2.w, 3.0f, r4.w);
  r3.x = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_23 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_23.xyz, r6.w);
  let v_24 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_24.xyz, r7.w);
  let v_25 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_25.xyz, r7.w);
  let v_26 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_26.xyz, r7.w);
  let v_27 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_27.xyz, r8.w);
  let v_28 = &(x0[0u]);
  let v_29 = r8;
  *(v_28) = vec4<f32>(v_29.xyz, (*(v_28)).w);
  let v_30 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_30.xyz, r9.w);
  let v_31 = &(x0[1u]);
  let v_32 = r9;
  *(v_31) = vec4<f32>(v_32.xyz, (*(v_31)).w);
  let v_33 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_33.xyz, r10.w);
  let v_34 = &(x0[2u]);
  let v_35 = r10;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_36.xyz, r7.w);
  let v_37 = &(x0[3u]);
  let v_38 = r7;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  let v_39 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_40 = r11;
  r11 = vec4<f32>(v_40.x, v_39.x, v_40.z, v_39.y);
  r3.y = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).y, 1.5f, 1.0f);
  r3.y = (r3.y * 0.5f);
  let v_41 = abs(r10.yyyy);
  r3.z = max(v_41.z, abs(r10.xxxx).z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r3.y)));
  let v_42 = (bitcast<u32>(r3.z) != 0u);
  let v_43 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_43, v_42);
  let v_44 = abs(r9.yyyy);
  r4.w = max(v_44.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.y)));
  let v_45 = bitcast<u32>(r4.w);
  r3.z = select(r3.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_45 != 0u));
  let v_46 = abs(r8.yyyy);
  r4.w = max(v_46.w, abs(r8.xxxx).w);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.y)));
  let v_47 = bitcast<u32>(r3.y);
  r3.y = select(r3.z, 0.0f, (v_47 != 0u));
  let v_48 = x0[bitcast<i32>(r3.y)];
  r8 = vec4<f32>(v_48.xyz, r8.w);
  r3.y = f32(bitcast<i32>(r3.y));
  r3.z = (r3.y + 0.5f);
  r3.z = (r3.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.yyyy)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r3.y = dot(r9, cb6_6.tint_symbol_5[12u]);
  r4.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r3.z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, !((r3.y == 0.0f))));
  r3.y = ((-(r3.yyyy)).y + r8.z);
  let v_49 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_49.xy, r10.z, v_49.z);
  r10.z = dpdx(r3.y);
  let v_50 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_50.xyz, r12.w);
  r12.w = dpdy(r3.y);
  let v_51 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_51.xy);
  let v_52 = -(r7.zwzz);
  let v_53 = fma(r10.xz, r12.xz, v_52.xy);
  r13 = vec4<f32>(v_53.xy, r13.zw);
  r5.w = (1.0f / r13.x);
  r6.w = (r10.z * r12.y);
  let v_54 = -(r6.wwww);
  r13.z = fma(r10.x, r12.w, v_54.z);
  let v_55 = (r5.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_55.xy);
  let v_56 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_56.xy);
  let v_57 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_57.xy);
  r3.y = fma((-(r4.wwww)).y, r7.z, r3.y);
  r3.y = fma((-(r4.wwww)).y, r7.w, r3.y);
  let v_58 = bitcast<u32>(r3.z);
  let v_59 = r3.y;
  r11.z = select(r8.z, v_59, (v_58 != 0u));
  r9.z = 0.0f;
  let v_60 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_60.xyz, r8.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_61.xy, r11.zw);
  let v_62 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_62.xyz, r10.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_63.xy, r11.zw);
  let v_64 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_64.xyz, r12.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_65.xy, r11.zw);
  let v_66 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_66.xyz, r13.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_68.xyz, r14.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_70.xyz, r15.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_72.xyz, r16.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_74.xyz, r17.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_76.xyz, r18.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_78.xyz, r19.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_80.xyz, r20.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_82.xyz, r21.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_84.xyz, r22.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_86.xyz, r23.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_88.xyz, r24.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_90.xyz, r9.w);
  let v_91 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_91.xy, r8.z);
  let v_92 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_92.xy, r10.z);
  let v_93 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_93.xy, r12.z);
  let v_94 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_94.xy, r13.z);
  let v_95 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_95.xy, r14.z);
  let v_96 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_96.xy, r15.z);
  let v_97 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_97.xy, r16.z);
  let v_98 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_98.xy, r17.z);
  let v_99 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_99.xy, r18.z);
  let v_100 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_100.xy, r19.z);
  let v_101 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_101.xy, r20.z);
  let v_102 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_102.xy, r21.z);
  let v_103 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_103.xy, r22.z);
  let v_104 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_104.xy, r23.z);
  let v_105 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_105.xy, r24.z);
  let v_106 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_106.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r3.y = dot(r8, vec4<f32>(1.0f));
  r3.x = clamp(fma(r3.xxxx, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).x, 0.0f, 1.0f);
  let v_107 = abs(r7.yyyy);
  r3.z = max(v_107.z, abs(r7.xxxx).z);
  r3.z = clamp(fma(r3.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).z, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = (r3.z * r3.x);
  r3.x = fma(r3.y, 0.0625f, r3.x);
  r3.x = (r3.x * r3.x);
  r3.x = min(r3.x, 1.0f);
  r3.y = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).y, 0.0f, 1.0f);
  r3.y = sqrt(r3.y);
  r3.y = (r3.y * cb6_6.tint_symbol_5[3u].z);
  let v_108 = -(r3.xxxx);
  r3.x = fma(r3.y, v_108.x, r3.x);
  let v_109 = dot(r1.yzw, v_19.xyz);
  r3.y = clamp(vec4<f32>(v_109, v_109, v_109, v_109).y, 0.0f, 1.0f);
  let v_110 = dot(r4.xyz, r1.yzw);
  r7.x = clamp(vec4<f32>(v_110, v_110, v_110, v_110).x, 0.0f, 1.0f);
  let v_111 = dot(r5.xyz, v_19.xyz);
  r7.y = clamp(vec4<f32>(v_111, v_111, v_111, v_111).y, 0.0f, 1.0f);
  let v_112 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_113 = r7;
  r7 = vec4<f32>(v_113.x, v_112.xy, v_113.w);
  let v_114 = (r7.yz * r7.yz);
  r8 = vec4<f32>(v_114.xy, r8.zw);
  let v_115 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_115.xy, r8.zw);
  let v_116 = (r7.yz * r8.xy);
  let v_117 = r7;
  r7 = vec4<f32>(v_117.x, v_116.xy, v_117.w);
  let v_118 = fma(r7.yz, vec2<f32>(0.95999997854232788086f), vec2<f32>(0.03999999910593032837f));
  let v_119 = r7;
  r7 = vec4<f32>(v_119.x, v_118.xy, v_119.w);
  let v_120 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_120.xy, r8.zw);
  r3.z = (r8.x * 0.125f);
  r4.w = fma((-(r2.xxxx)).w, r7.y, 1.0f);
  r5.x = dot(r1.yzw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r7.z * r5.x);
  r3.z = (r3.z * r5.x);
  r2.x = (r2.x * r3.z);
  r2.x = (r3.y * r2.x);
  r3.y = (r3.y * r4.w);
  let v_121 = fma(r0.xyz, r3.yyy, r2.xxx);
  r5 = vec4<f32>(v_121.xyz, r5.w);
  let v_122 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_122.xyz, r5.w);
  r1.x = fma(v1.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_123 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(r7.x, v_123.xyz);
  r2.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_124 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_124.xyz, r8.w);
  let v_125 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_125.xyz, r8.w);
  let v_126 = fma(r7.yzw, r2.xxx, r8.xyz);
  r7 = vec4<f32>(r7.x, v_126.xyz);
  let v_127 = (r2.yyy * r7.yzw);
  r7 = vec4<f32>(r7.x, v_127.xyz);
  let v_128 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r8 = vec4<f32>(v_128.xyz, r8.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_129 = dot(r9.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_129, v_129, v_129, v_129).x, 0.0f, 1.0f);
  let v_130 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r8.xyz);
  r8 = vec4<f32>(v_130.xyz, r8.w);
  let v_131 = fma(r8.xyz, r3.www, r7.yzw);
  r7 = vec4<f32>(r7.x, v_131.xyz);
  let v_132 = (r4.www * r7.yzw);
  r7 = vec4<f32>(r7.x, v_132.xyz);
  let v_133 = (r0.xyz * r7.yzw);
  r7 = vec4<f32>(r7.x, v_133.xyz);
  let v_134 = fma(r5.xyz, r3.xxx, r7.yzw);
  r3 = vec4<f32>(v_134.xyz, r3.w);
  r1.x = ((-(r4.wwww)).x + 1.0f);
  r2.x = dot((-(r4.xyzx)).xyz, r1.yzw);
  r2.x = (r2.x + r2.x);
  let v_135 = -(r2.xxxx);
  let v_136 = -(r4.xxyz);
  let v_137 = fma(r1.yzw, v_135.yzw, v_136.yzw);
  r1 = vec4<f32>(r1.x, v_137.xyz);
  let v_138 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.0f, 0.0f, 0.00177619897294789553f))).xw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_138.x, r2.yz, v_138.y);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r4.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r4.y = (r2.x * cb5_5.tint_symbol_3[6u].z);
  r4.y = bitcast<f32>(select(0u, 4294967295u, (r4.y < r4.x)));
  r4.z = fma(r2.x, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.x = (r2.x * r2.x);
  r2.x = fma(r2.x, 5.0f, r4.x);
  let v_139 = bitcast<u32>(r4.y);
  let v_140 = r4.z;
  r2.x = select(r2.x, v_140, (v_139 != 0u));
  let v_141 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_141.xyz, r4.w);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_142 = (r4.xyz / r1.yyy);
  r4 = vec4<f32>(v_142.xyz, r4.w);
  let v_143 = ((-(r4.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_143.xyz, r4.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_144 = bitcast<vec2<u32>>(r1.yy);
  let v_145 = r4.xy;
  let v_146 = select(r4.zy, v_145, (v_144 != vec2<u32>()));
  let v_147 = r1;
  r1 = vec4<f32>(v_147.x, v_146.xy, v_147.w);
  let v_148 = r2.x;
  r4 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_148);
  r1.y = max(r2.y, r3.w);
  let v_149 = (r1.yyy * r4.xyz);
  r1 = vec4<f32>(r1.x, v_149.xyz);
  let v_150 = (r2.www * r1.yzw);
  r2 = vec4<f32>(v_150.xy, r2.z, v_150.z);
  let v_151 = (r2.xyw * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_151.xy, r2.z, v_151.z);
  let v_152 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyw);
  r1 = vec4<f32>(r1.x, v_152.xyz);
  let v_153 = fma(r1.yzw, r1.xxx, r3.xyz);
  r1 = vec4<f32>(v_153.xyz, r1.w);
  r1.w = (r2.z * r7.x);
  let v_154 = fma(r0.xyz, r1.www, r1.xyz);
  r0 = vec4<f32>(v_154.xyz, r0.w);
  o0.w = clamp(((r0.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.w);
  let v_155 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_155.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_156 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_156 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_157 = (r0.www * r6.xyz);
  r2 = vec4<f32>(v_157.xyz, r2.w);
  let v_158 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_158, v_158, v_158, v_158).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_159 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_159, v_159, v_159, v_159).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_160 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_160.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_161 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_161.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_162 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_162.xyz, r2.w);
  let v_163 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_163.xyz, r2.w);
  let v_164 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_164.xyz, r3.w);
  let v_165 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_165.xyz, r2.w);
  let v_166 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_167 = (r2.xyz + v_166.xyz);
  r2 = vec4<f32>(v_167.xyz, r2.w);
  let v_168 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_168.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_169 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_169.xy, r1.z, v_169.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_170 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_170.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_171 = -(r0.xyxz);
  let v_172 = fma(r1.xyw, r0.www, v_171.xyw);
  r1 = vec4<f32>(v_172.xy, r1.z, v_172.z);
  let v_173 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_173.xyz, r0.w);
  let v_174 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_174.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_175 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v_175);
  return o0;
}
