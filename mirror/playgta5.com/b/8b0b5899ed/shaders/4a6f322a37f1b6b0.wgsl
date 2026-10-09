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

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb9_struct {
  tint_symbol_4 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb9_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  let v_1 = (v0.xy * cb11_11.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = (v0.xy * cb11_11.tint_symbol_4[5u].ww);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  r1 = textureSample(t3, s3, v0.zwzz.xy);
  r2 = textureSample(t0, s0, r0.xyxx.xy);
  r3 = textureSample(t5, s5, v0.zwzz.xy);
  let v_3 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r3.x = dot(r0.xy, r0.xy);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = sqrt(abs(r3.xxxx).x);
  r3.y = max(cb11_11.tint_symbol_4[8u].x, 0.00100000004749745131f);
  let v_4 = (r0.xy * r3.yy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = (r0.yyy * v5.xyz);
  r3 = vec4<f32>(r3.x, v_5.xyz);
  let v_6 = fma(r0.xxx, v4.xyz, r3.yzw);
  r3 = vec4<f32>(r3.x, v_6.xyz);
  let v_7 = fma(r3.xxx, v1.xyz, r3.yzw);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = inverseSqrt(r0.x);
  r4 = textureSample(t6, s6, r0.zwzz.xy);
  let v_8 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_8.xy, r4.zw);
  r0.y = dot(r4.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r0.y = (r0.y * cb11_11.tint_symbol_4[4u].y);
  let v_9 = (r2.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  r0.z = (r1.w * cb11_11.tint_symbol_4[1u].w);
  let v_10 = -(r4.xyzx);
  let v_11 = fma(r1.xyz, cb11_11.tint_symbol_4[1u].xyz, v_10.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = fma(r0.zzz, r1.xyz, r4.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = fma(r3.xyz, r0.xxx, (-(v1.xyz.xyzx)).xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = fma(r0.zzz, r1.xyz, v1.xyz);
  r0 = vec4<f32>(v_14.x, r0.y, v_14.yz);
  r1 = (r2 * v6.xxxw);
  let v_15 = (v6.xx * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_15.xy, r2.zw);
  r2.z = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).z, 0.0f, 1.0f);
  r2.y = (r2.z * r2.y);
  r0.y = clamp(((r0.yyyy * v6.xxxx)).y, 0.0f, 1.0f);
  let v_16 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = -(v2.xyzx);
  let v_18 = (v_17.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  r2.z = dot(r3.xyz, r3.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_19 = (r2.zzz * r3.xyz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_21 = fma(r3.xyz, r2.zzz, v_20.xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_22 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  let v_23 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_23.xy, r2.zw);
  r2.w = fma(r4.w, cb11_11.tint_symbol_4[4u].x, -500.0f);
  r2.w = max(r2.w, 0.0f);
  let v_24 = -(r2.wwww);
  r3.w = fma(r4.w, cb11_11.tint_symbol_4[4u].x, v_24.w);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.w, 3.0f, r2.w);
  r3.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_25 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_25.xyz, r6.w);
  let v_26 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_26.xyz, r7.w);
  let v_27 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_27.xyz, r7.w);
  let v_28 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_28.xyz, r7.w);
  let v_29 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_29.xyz, r8.w);
  let v_30 = &(x0[0u]);
  let v_31 = r8;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_32.xyz, r9.w);
  let v_33 = &(x0[1u]);
  let v_34 = r9;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_35.xyz, r10.w);
  let v_36 = &(x0[2u]);
  let v_37 = r10;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_38.xyz, r7.w);
  let v_39 = &(x0[3u]);
  let v_40 = r7;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_42 = r11;
  r11 = vec4<f32>(v_42.x, v_41.x, v_42.z, v_41.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_43 = abs(r10.yyyy);
  r5.w = max(v_43.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_44 = (bitcast<u32>(r5.w) != 0u);
  let v_45 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_45, v_44);
  let v_46 = abs(r9.yyyy);
  r6.w = max(v_46.w, abs(r9.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_47 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_47 != 0u));
  let v_48 = abs(r8.yyyy);
  r6.w = max(v_48.w, abs(r8.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_49 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_49 != 0u));
  let v_50 = x0[bitcast<i32>(r4.w)];
  r8 = vec4<f32>(v_50.xyz, r8.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r4.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r6.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r8.z);
  let v_51 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_51.xy, r10.z, v_51.z);
  r10.z = dpdx(r4.w);
  let v_52 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_52.xyz, r12.w);
  r12.w = dpdy(r4.w);
  let v_53 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_53.xy);
  let v_54 = -(r7.zwzz);
  let v_55 = fma(r10.xz, r12.xz, v_54.xy);
  r13 = vec4<f32>(v_55.xy, r13.zw);
  r7.z = (1.0f / r13.x);
  r7.w = (r10.z * r12.y);
  let v_56 = -(r7.wwww);
  r13.z = fma(r10.x, r12.w, v_56.z);
  let v_57 = (r7.zz * r13.yz);
  r7 = vec4<f32>(r7.xy, v_57.xy);
  let v_58 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_58.xy);
  let v_59 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_59.xy);
  r4.w = fma((-(r6.wwww)).w, r7.z, r4.w);
  r4.w = fma((-(r6.wwww)).w, r7.w, r4.w);
  let v_60 = bitcast<u32>(r5.w);
  let v_61 = r4.w;
  r11.z = select(r8.z, v_61, (v_60 != 0u));
  r9.z = 0.0f;
  let v_62 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_62.xyz, r8.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_63.xy, r11.zw);
  let v_64 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_64.xyz, r10.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_65.xy, r11.zw);
  let v_66 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_66.xyz, r12.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_68.xyz, r13.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_70.xyz, r14.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_72.xyz, r15.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_74.xyz, r16.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_76.xyz, r17.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_78.xyz, r18.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_80.xyz, r19.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_82.xyz, r20.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_84.xyz, r21.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_86.xyz, r22.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_88.xyz, r23.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_90.xyz, r24.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_92.xyz, r9.w);
  let v_93 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_93.xy, r8.z);
  let v_94 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_94.xy, r10.z);
  let v_95 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_95.xy, r12.z);
  let v_96 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_96.xy, r13.z);
  let v_97 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_97.xy, r14.z);
  let v_98 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_98.xy, r15.z);
  let v_99 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_99.xy, r16.z);
  let v_100 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_100.xy, r17.z);
  let v_101 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_101.xy, r18.z);
  let v_102 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_102.xy, r19.z);
  let v_103 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_103.xy, r20.z);
  let v_104 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_104.xy, r21.z);
  let v_105 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_105.xy, r22.z);
  let v_106 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_106.xy, r23.z);
  let v_107 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_107.xy, r24.z);
  let v_108 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_108.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r4.w = dot(r8, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_109 = abs(r7.yyyy);
  r5.w = max(v_109.w, abs(r7.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_110 = -(r3.wwww);
  r3.w = fma(r4.w, v_110.w, r3.w);
  let v_111 = dot(r0.xzw, v_20.xyz);
  r4.w = clamp(vec4<f32>(v_111, v_111, v_111, v_111).w, 0.0f, 1.0f);
  let v_112 = dot(r4.xyz, r0.xzw);
  r7.x = clamp(vec4<f32>(v_112, v_112, v_112, v_112).x, 0.0f, 1.0f);
  let v_113 = dot(r5.xyz, v_20.xyz);
  r7.y = clamp(vec4<f32>(v_113, v_113, v_113, v_113).y, 0.0f, 1.0f);
  let v_114 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_114.xy, r7.zw);
  let v_115 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_115.xy);
  let v_116 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_116.xy);
  let v_117 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_117.xy, r7.zw);
  r5.w = ((-(cb11_11.tint_symbol_4[3u].wwww)).w + 1.0f);
  let v_118 = fma(cb11_11.tint_symbol_4[3u].ww, r7.xy, r5.ww);
  r7 = vec4<f32>(v_118.xy, r7.zw);
  let v_119 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_119.xy);
  r6.w = (r7.z * 0.125f);
  r7.x = fma((-(r0.yyyy)).x, r7.x, 1.0f);
  r5.x = dot(r0.xzw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.w);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r6.w * r5.x);
  r5.x = (r0.y * r5.x);
  r5.x = (r4.w * r5.x);
  r4.w = (r4.w * r7.x);
  let v_120 = fma(r1.xyz, r4.www, r5.xxx);
  r5 = vec4<f32>(v_120.xyz, r5.w);
  let v_121 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_121.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_122 = (v_17.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_122.xyz, r8.w);
    let v_123 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_123.xyz, r9.w);
    r7.z = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[19u].wwww)).z, 0.0f, 1.0f);
    r7.z = (r7.z * cb3_3.tint_symbol_2[19u].w);
    let v_124 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_124.xyz, r9.w);
    let v_125 = (r9.xyz + v_17.xyz);
    r9 = vec4<f32>(v_125.xyz, r9.w);
    let v_126 = bitcast<vec3<u32>>(r7.yyy);
    let v_127 = r8.xyz;
    let v_128 = select(r9.xyz, v_127, (v_126 != vec3<u32>()));
    r8 = vec4<f32>(v_128.xyz, r8.w);
    r7.y = dot(r8.xyz, r8.xyz);
    let v_129 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_129.xyz, r8.w);
    r7.z = dot(r8.xyz, r8.xyz);
    r7.z = inverseSqrt(r7.z);
    let v_130 = (r7.zzz * r8.xyz);
    r8 = vec4<f32>(v_130.xyz, r8.w);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r7.z);
    let v_131 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.z = dot(r8.xyz, v_131.xyz);
    r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_132 = dot(r8.xyz, r0.xzw);
    r8.w = clamp(vec4<f32>(v_132, v_132, v_132, v_132).w, 0.0f, 1.0f);
    r7.z = (r7.z * r8.w);
    r8.w = (r7.y * r7.z);
    let v_133 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_133.xyz, r9.w);
    let v_134 = (r1.xyz * r9.xyz);
    r9 = vec4<f32>(v_134.xyz, r9.w);
    let v_135 = fma(r3.xyz, r2.zzz, r8.xyz);
    r8 = vec4<f32>(v_135.xyz, r8.w);
    r8.w = dot(r8.xyz, r8.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_136 = (r8.www * r8.xyz);
    r8 = vec4<f32>(v_136.xyz, r8.w);
    let v_137 = dot(r8.xyz, r4.xyz);
    r8.w = clamp(vec4<f32>(v_137, v_137, v_137, v_137).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.w = (r8.w * r8.w);
    r9.w = (r9.w * r9.w);
    r8.w = (r8.w * r9.w);
    r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
    let v_138 = dot(r8.xyz, r0.xzw);
    r8.x = clamp(vec4<f32>(v_138, v_138, v_138, v_138).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.w * r8.x);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r8.w);
    r7.z = (r7.z * r8.x);
    r7.y = (r7.y * r7.z);
    r7.y = (r6.w * r7.y);
    let v_139 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_139.xyz, r8.w);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.y)));
    let v_140 = bitcast<u32>(r7.z);
    let v_141 = r7.y;
    r4.w = select(r4.w, v_141, (v_140 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_142 = (v_17.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_142.xyz, r10.w);
      let v_143 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_143.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[20u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[20u].w);
      let v_144 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_144.xyz, r11.w);
      let v_145 = (r11.xyz + v_17.xyz);
      r11 = vec4<f32>(v_145.xyz, r11.w);
      let v_146 = bitcast<vec3<u32>>(r7.yyy);
      let v_147 = r10.xyz;
      let v_148 = select(r11.xyz, v_147, (v_146 != vec3<u32>()));
      r10 = vec4<f32>(v_148.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_149 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_149.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_150 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_150.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r7.z);
      let v_151 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.z = dot(r10.xyz, v_151.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      let v_152 = dot(r10.xyz, r0.xzw);
      r8.w = clamp(vec4<f32>(v_152, v_152, v_152, v_152).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_153 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_153.xyz, r11.w);
      let v_154 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_154.xyz, r9.w);
      let v_155 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_155.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_156 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_156.xyz, r10.w);
      let v_157 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_157, v_157, v_157, v_157).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_158 = dot(r10.xyz, r0.xzw);
      r9.w = clamp(vec4<f32>(v_158, v_158, v_158, v_158).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r6.w * r7.y);
      let v_159 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_159.xyz, r8.w);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_160 = (v_17.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_160.xyz, r10.w);
      let v_161 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_161.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[21u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[21u].w);
      let v_162 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_162.xyz, r11.w);
      let v_163 = (r11.xyz + v_17.xyz);
      r11 = vec4<f32>(v_163.xyz, r11.w);
      let v_164 = bitcast<vec3<u32>>(r7.yyy);
      let v_165 = r10.xyz;
      let v_166 = select(r11.xyz, v_165, (v_164 != vec3<u32>()));
      r10 = vec4<f32>(v_166.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_167 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_167.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_168 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r7.z);
      let v_169 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.z = dot(r10.xyz, v_169.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      let v_170 = dot(r10.xyz, r0.xzw);
      r8.w = clamp(vec4<f32>(v_170, v_170, v_170, v_170).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_171 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_171.xyz, r11.w);
      let v_172 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_172.xyz, r9.w);
      let v_173 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_174 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      let v_175 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_175, v_175, v_175, v_175).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_176 = dot(r10.xyz, r0.xzw);
      r9.w = clamp(vec4<f32>(v_176, v_176, v_176, v_176).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r6.w * r7.y);
      let v_177 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_177.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_178 = (v_17.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_178.xyz, r10.w);
      let v_179 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_179.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[22u].wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[22u].w);
      let v_180 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_180.xyz, r11.w);
      let v_181 = (r11.xyz + v_17.xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      let v_182 = bitcast<vec3<u32>>(r4.www);
      let v_183 = r10.xyz;
      let v_184 = select(r11.xyz, v_183, (v_182 != vec3<u32>()));
      r10 = vec4<f32>(v_184.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_185 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_185.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_186 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_186.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r4.w, cb3_3.tint_symbol_2[14u].w);
      r4.w = (r4.w / r7.y);
      let v_187 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.y = dot(r10.xyz, v_187.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_188 = dot(r10.xyz, r0.xzw);
      r7.z = clamp(vec4<f32>(v_188, v_188, v_188, v_188).z, 0.0f, 1.0f);
      r7.y = (r7.y * r7.z);
      r7.z = (r4.w * r7.y);
      let v_189 = (r7.zzz * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_189.xyz, r11.w);
      let v_190 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_190.xyz, r9.w);
      let v_191 = fma(r3.xyz, r2.zzz, r10.xyz);
      r3 = vec4<f32>(v_191.xyz, r3.w);
      r2.z = dot(r3.xyz, r3.xyz);
      r2.z = inverseSqrt(r2.z);
      let v_192 = (r2.zzz * r3.xyz);
      r3 = vec4<f32>(v_192.xyz, r3.w);
      let v_193 = dot(r3.xyz, r4.xyz);
      r2.z = clamp(vec4<f32>(v_193, v_193, v_193, v_193).z, 0.0f, 1.0f);
      r2.z = ((-(r2.zzzz)).z + 1.0f);
      r7.z = (r2.z * r2.z);
      r7.z = (r7.z * r7.z);
      r2.z = (r2.z * r7.z);
      r2.z = fma(cb11_11.tint_symbol_4[3u].w, r2.z, r5.w);
      let v_194 = dot(r3.xyz, r0.xzw);
      r3.x = clamp(vec4<f32>(v_194, v_194, v_194, v_194).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r7.w);
      r3.x = exp2(r3.x);
      r2.z = (r2.z * r3.x);
      r2.z = (r7.y * r2.z);
      r2.z = (r4.w * r2.z);
      r2.z = (r6.w * r2.z);
      let v_195 = fma(r2.zzz, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_195.xyz, r8.w);
    }
  }
  r2.z = (r7.x * r7.x);
  r0.y = (r0.y * r0.y);
  let v_196 = (r8.xyz * r0.yyy);
  r3 = vec4<f32>(v_196.xyz, r3.w);
  let v_197 = fma(r2.zzz, r9.xyz, r3.xyz);
  r3 = vec4<f32>(v_197.xyz, r3.w);
  let v_198 = fma(r5.xyz, r3.www, r3.xyz);
  r3 = vec4<f32>(v_198.xyz, r3.w);
  r0.y = (r0.w + cb3_3.tint_symbol_2[43u].w);
  r0.y = (r0.y * cb3_3.tint_symbol_2[44u].w);
  r0.y = max(r0.y, 0.0f);
  let v_199 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_199.xyz, r5.w);
  r2.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_200 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(r7.x, v_200.xyz);
  let v_201 = (r7.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(r7.x, v_201.xyz);
  let v_202 = fma(r5.xyz, r2.zzz, r7.yzw);
  r5 = vec4<f32>(v_202.xyz, r5.w);
  let v_203 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_203.xyz, r5.w);
  let v_204 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(r7.x, v_204.xyz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_205 = dot(r8.xyz, r0.xzw);
  r0.y = clamp(vec4<f32>(v_205, v_205, v_205, v_205).y, 0.0f, 1.0f);
  let v_206 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.yyy, r7.yzw);
  r7 = vec4<f32>(r7.x, v_206.xyz);
  let v_207 = fma(r7.yzw, r2.xxx, r5.xyz);
  r5 = vec4<f32>(v_207.xyz, r5.w);
  let v_208 = (r7.xxx * r5.xyz);
  r5 = vec4<f32>(v_208.xyz, r5.w);
  let v_209 = fma(r5.xyz, r1.xyz, r3.xyz);
  r1 = vec4<f32>(v_209.xyz, r1.w);
  r0.y = ((-(r7.xxxx)).y + 1.0f);
  r2.z = dot((-(r4.xyzx)).xyz, r0.xzw);
  r2.z = (r2.z + r2.z);
  let v_210 = -(r2.zzzz);
  let v_211 = -(r4.xxyz);
  let v_212 = fma(r0.xzw, v_210.xzw, v_211.xzw);
  r0 = vec4<f32>(v_212.x, r0.y, v_212.yz);
  let v_213 = clamp(((r2.wwww * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, v_213.xy);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r3.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.y = (r2.z * cb5_5.tint_symbol_3[6u].z);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r3.x)));
  r3.z = fma(r2.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.z = (r2.z * r2.z);
  r2.z = fma(r2.z, 5.0f, r3.x);
  let v_214 = bitcast<u32>(r3.y);
  let v_215 = r3.z;
  r2.z = select(r2.z, v_215, (v_214 != 0u));
  let v_216 = (r0.xzx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_216.xyz, r3.w);
  r0.x = (abs(r0.wwww).x + 1.0f);
  let v_217 = (r3.xyz / r0.xxx);
  r3 = vec4<f32>(v_217.xyz, r3.w);
  let v_218 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_218.xyz, r3.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  let v_219 = bitcast<vec2<u32>>(r0.xx);
  let v_220 = r3.xy;
  let v_221 = select(r3.zy, v_220, (v_219 != vec2<u32>()));
  let v_222 = r0;
  r0 = vec4<f32>(v_221.x, v_222.y, v_221.y, v_222.w);
  let v_223 = r2.z;
  r3 = textureSampleLevel(t1, s1, r0.xzxx.xy, v_223);
  r0.x = max(r2.y, r2.x);
  let v_224 = (r0.xxx * r3.xyz);
  r0 = vec4<f32>(v_224.x, r0.y, v_224.yz);
  let v_225 = (r2.www * r0.xzw);
  r2 = vec4<f32>(v_225.xyz, r2.w);
  let v_226 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_226.xyz, r2.w);
  let v_227 = fma(r0.xzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r0 = vec4<f32>(v_227.x, r0.y, v_227.yz);
  let v_228 = fma(r0.xzw, r0.yyy, r1.xyz);
  r0 = vec4<f32>(v_228.xyz, r0.w);
  o0.w = (r1.w * cb2_2.tint_symbol_1[15u].x);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.w);
  let v_229 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_229.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_230 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_230 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_231 = (r0.www * r6.xyz);
  r2 = vec4<f32>(v_231.xyz, r2.w);
  let v_232 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_232, v_232, v_232, v_232).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_233 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_233, v_233, v_233, v_233).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_234 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_234.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_235 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_235.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_236 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_236.xyz, r2.w);
  let v_237 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_237.xyz, r2.w);
  let v_238 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_238.xyz, r3.w);
  let v_239 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_239.xyz, r2.w);
  let v_240 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_241 = (r2.xyz + v_240.xyz);
  r2 = vec4<f32>(v_241.xyz, r2.w);
  let v_242 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_242.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_243 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_243.xy, r1.z, v_243.z);
  let v_244 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_244.xy, r1.z, v_244.z);
  let v_245 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_245.xyz, r0.w);
  let v_246 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_246.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6);
  return o0;
}
