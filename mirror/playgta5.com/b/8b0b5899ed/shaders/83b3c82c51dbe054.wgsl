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

var<private> r25 : vec4<f32>;

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

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
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

var<private> v9 : vec4<f32>;

var<private> v10 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v9 = v_2;
  x1[0u].x = v10[0u];
  x1[0u].y = v10[1u];
  x1[0u].z = v10[2u];
  x1[0u].w = v10[3u];
  r0 = textureSample(t4, s4, v2.zwzz.xy);
  r0.x = dot(v1, r0);
  r1 = textureSample(t0, s0, v2.xyxx.xy);
  r2 = textureSample(t2, s2, v2.xyxx.xy);
  let v_3 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_3.xy);
  r2.x = dot(r0.zw, r0.zw);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = sqrt(abs(r2.xxxx).x);
  r2.y = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_4 = (r0.zw * r2.yy);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = (r0.www * v5.xyz);
  r2 = vec4<f32>(r2.x, v_5.xyz);
  let v_6 = fma(r0.zzz, v4.xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_6.xyz);
  let v_7 = fma(r2.xxx, v3.xyz, r2.yzw);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_8 = (r0.zzz * r2.xyz);
  r2 = vec4<f32>(v_8.xy, r2.z, v_8.z);
  r3 = textureSample(t3, s3, v2.xyxx.xy);
  let v_9 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  r0.w = dot(r3.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r3.y = (r0.w * cb12_12.tint_symbol_4[0u].z);
  r3.x = (r3.w * cb12_12.tint_symbol_4[0u].y);
  r1 = clamp(fma(r0.xxxx, v0, r1), vec4<f32>(), vec4<f32>(1.0f));
  r0.y = dot(r0.xxx, cb12_12.tint_symbol_4[1u].xyz);
  let v_10 = max(r0.yx, r3.yx);
  r0 = vec4<f32>(v_10.xy, r0.zw);
  let v_11 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = -(v7.xyz.xyzx);
  let v_13 = (v_12.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_14 = (r0.www * r3.xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_16 = fma(r3.xyz, r0.www, v_15.xyz);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_17 = (r3.www * r5.xyz);
  r5 = vec4<f32>(v_17.xyz, r5.w);
  r0.x = clamp(r0.xxxx.x, 0.0f, 1.0f);
  let v_18 = (cb2_2.tint_symbol_1[15u].zy * cb2_2.tint_symbol_1[15u].zy);
  r6 = vec4<f32>(v_18.xy, r6.zw);
  r3.w = (r0.y + -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_19 = -(r3.wwww);
  r0.y = (r0.y + v_19.y);
  r3.w = (r3.w * 558.0f);
  r0.y = fma(r0.y, 3.0f, r3.w);
  r3.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_20 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_20.xyz, r7.w);
  let v_21 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_21.xyz, r8.w);
  let v_22 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_22.xyz, r8.w);
  let v_23 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_23.xyz, r8.w);
  let v_24 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_24.xyz, r9.w);
  let v_25 = &(x0[0u]);
  let v_26 = r9;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  let v_27 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_27.xyz, r10.w);
  let v_28 = &(x0[1u]);
  let v_29 = r10;
  *(v_28) = vec4<f32>(v_29.xyz, (*(v_28)).w);
  let v_30 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_30.xyz, r11.w);
  let v_31 = &(x0[2u]);
  let v_32 = r11;
  *(v_31) = vec4<f32>(v_32.xyz, (*(v_31)).w);
  let v_33 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_33.xyz, r8.w);
  let v_34 = &(x0[3u]);
  let v_35 = r8;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_37 = r12;
  r12 = vec4<f32>(v_37.x, v_36.x, v_37.z, v_36.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_38 = abs(r11.yyyy);
  r5.w = max(v_38.w, abs(r11.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_39 = (bitcast<u32>(r5.w) != 0u);
  let v_40 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_40, v_39);
  let v_41 = abs(r10.yyyy);
  r6.z = max(v_41.z, abs(r10.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_42 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_42 != 0u));
  let v_43 = abs(r9.yyyy);
  r6.z = max(v_43.z, abs(r9.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_44 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_44 != 0u));
  let v_45 = x0[bitcast<i32>(r4.w)];
  r9 = vec4<f32>(v_45.xyz, r9.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r4.w = dot(r10, cb6_6.tint_symbol_5[12u]);
  r6.z = dot(r10, cb6_6.tint_symbol_5[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r9.z);
  let v_46 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_46.xy, r11.z, v_46.z);
  r11.z = dpdx(r4.w);
  let v_47 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_47.xyz, r13.w);
  r13.w = dpdy(r4.w);
  let v_48 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_48.xy);
  let v_49 = -(r8.zwzz);
  let v_50 = fma(r11.xz, r13.xz, v_49.xy);
  r14 = vec4<f32>(v_50.xy, r14.zw);
  r6.w = (1.0f / r14.x);
  r7.w = (r11.z * r13.y);
  let v_51 = -(r7.wwww);
  r14.z = fma(r11.x, r13.w, v_51.z);
  let v_52 = (r6.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_52.xy);
  let v_53 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_53.xy);
  let v_54 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_54.xy);
  r4.w = fma((-(r6.zzzz)).w, r8.z, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r8.w, r4.w);
  let v_55 = bitcast<u32>(r5.w);
  let v_56 = r4.w;
  r12.z = select(r9.z, v_56, (v_55 != 0u));
  r10.z = 0.0f;
  let v_57 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_57.xyz, r9.w);
  let v_58 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_58.xy, r12.zw);
  let v_59 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_59.xyz, r11.w);
  let v_60 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_60.xy, r12.zw);
  let v_61 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_61.xyz, r13.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_62.xy, r12.zw);
  let v_63 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_63.xyz, r14.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_64.xy, r12.zw);
  let v_65 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_65.xyz, r15.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_66.xy, r12.zw);
  let v_67 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_67.xyz, r16.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_68.xy, r12.zw);
  let v_69 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_69.xyz, r17.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_70.xy, r12.zw);
  let v_71 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_71.xyz, r18.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_72.xy, r12.zw);
  let v_73 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_73.xyz, r19.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_74.xy, r12.zw);
  let v_75 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_75.xyz, r20.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_76.xy, r12.zw);
  let v_77 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_77.xyz, r21.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_79.xyz, r22.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_81.xyz, r23.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_83.xyz, r24.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_85.xyz, r25.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_86.xy, r12.zw);
  let v_87 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_87.xyz, r10.w);
  let v_88 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_88.xy, r9.z);
  let v_89 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_89.xy, r11.z);
  let v_90 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_90.xy, r13.z);
  let v_91 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_91.xy, r14.z);
  let v_92 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_92.xy, r15.z);
  let v_93 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_93.xy, r16.z);
  let v_94 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_94.xy, r17.z);
  let v_95 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_95.xy, r18.z);
  let v_96 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_96.xy, r19.z);
  let v_97 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_97.xy, r20.z);
  let v_98 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_98.xy, r21.z);
  let v_99 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_99.xy, r22.z);
  let v_100 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_100.xy, r23.z);
  let v_101 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_101.xy, r24.z);
  let v_102 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_102.xy, r25.z);
  let v_103 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_103.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r4.w = dot(r9, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_104 = abs(r8.yyyy);
  r5.w = max(v_104.w, abs(r8.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v7.xyz.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_105 = -(r3.wwww);
  r3.w = fma(r4.w, v_105.w, r3.w);
  r4.w = dot(r2.xyw, v_15.xyz);
  r5.w = clamp(r4.wwww.w, 0.0f, 1.0f);
  r5.w = ((-(abs(r4.wwww))).w + r5.w);
  let v_106 = abs(r4.wwww);
  r4.w = fma(r1.w, r5.w, v_106.w);
  let v_107 = dot(r4.xyz, r2.xyw);
  r8.x = clamp(vec4<f32>(v_107, v_107, v_107, v_107).x, 0.0f, 1.0f);
  let v_108 = dot(r5.xyz, v_15.xyz);
  r8.y = clamp(vec4<f32>(v_108, v_108, v_108, v_108).y, 0.0f, 1.0f);
  let v_109 = ((-(r8.xxxy)).zw + vec2<f32>(1.0f));
  r6 = vec4<f32>(r6.xy, v_109.xy);
  let v_110 = (r6.zw * r6.zw);
  r8 = vec4<f32>(v_110.xy, r8.zw);
  let v_111 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_111.xy, r8.zw);
  let v_112 = (r6.zw * r8.xy);
  r6 = vec4<f32>(r6.xy, v_112.xy);
  r5.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_113 = fma(cb12_12.tint_symbol_4[0u].xx, r6.zw, r5.ww);
  r6 = vec4<f32>(r6.xy, v_113.xy);
  let v_114 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_114.xy, r8.zw);
  r7.w = (r8.x * 0.125f);
  r8.x = max(r1.w, r6.z);
  r6.z = (r6.z + -1.0f);
  r6.z = fma(r8.x, r6.z, 1.0f);
  r6.z = fma((-(r0.xxxx)).z, r6.z, 1.0f);
  r5.x = dot(r2.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r6.w * r5.x);
  r5.x = (r7.w * r5.x);
  r5.x = (r0.x * r5.x);
  r5.x = (r4.w * r5.x);
  r4.w = (r4.w * r6.z);
  let v_115 = fma(r1.xyz, r4.www, r5.xxx);
  r5 = vec4<f32>(v_115.xyz, r5.w);
  let v_116 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_116.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_117 = (v_12.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_117.xyz, r9.w);
    let v_118 = (v7.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_118.xyz, r10.w);
    r8.z = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[19u].wwww)).z, 0.0f, 1.0f);
    r8.z = (r8.z * cb3_3.tint_symbol_2[19u].w);
    let v_119 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_119.xyz, r10.w);
    let v_120 = (r10.xyz + v_12.xyz);
    r10 = vec4<f32>(v_120.xyz, r10.w);
    let v_121 = bitcast<vec3<u32>>(r6.www);
    let v_122 = r9.xyz;
    let v_123 = select(r10.xyz, v_122, (v_121 != vec3<u32>()));
    r9 = vec4<f32>(v_123.xyz, r9.w);
    r6.w = dot(r9.xyz, r9.xyz);
    let v_124 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_124.xyz, r9.w);
    r8.z = dot(r9.xyz, r9.xyz);
    r8.z = inverseSqrt(r8.z);
    let v_125 = (r8.zzz * r9.xyz);
    r9 = vec4<f32>(v_125.xyz, r9.w);
    r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r8.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[11u].w);
    r6.w = (r6.w / r8.z);
    let v_126 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.z = dot(r9.xyz, v_126.xyz);
    r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    r8.w = dot(r9.xyz, r2.xyw);
    r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
    r9.w = ((-(abs(r8.wwww))).w + r9.w);
    let v_127 = abs(r8.wwww);
    r8.w = fma(r1.w, r9.w, v_127.w);
    r8.z = (r8.z * r8.w);
    r8.w = (r6.w * r8.z);
    let v_128 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_128.xyz, r10.w);
    let v_129 = (r1.xyz * r10.xyz);
    r10 = vec4<f32>(v_129.xyz, r10.w);
    let v_130 = fma(r3.xyz, r0.www, r9.xyz);
    r9 = vec4<f32>(v_130.xyz, r9.w);
    r8.w = dot(r9.xyz, r9.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_131 = (r8.www * r9.xyz);
    r9 = vec4<f32>(v_131.xyz, r9.w);
    let v_132 = dot(r9.xyz, r4.xyz);
    r8.w = clamp(vec4<f32>(v_132, v_132, v_132, v_132).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.w = (r8.w * r8.w);
    r9.w = (r9.w * r9.w);
    r8.w = (r8.w * r9.w);
    r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
    let v_133 = dot(r9.xyz, r2.xyw);
    r9.x = clamp(vec4<f32>(v_133, v_133, v_133, v_133).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r8.y * r9.x);
    r9.x = exp2(r9.x);
    r8.w = (r8.w * r9.x);
    r8.z = (r8.z * r8.w);
    r6.w = (r6.w * r8.z);
    r6.w = (r7.w * r6.w);
    let v_134 = (r6.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_134.xyz, r9.w);
  }
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r8.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    let v_135 = bitcast<u32>(r8.z);
    let v_136 = r6.w;
    r4.w = select(r4.w, v_136, (v_135 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_137 = (v_12.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_137.xyz, r11.w);
      let v_138 = (v7.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_138.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[20u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[20u].w);
      let v_139 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_139.xyz, r12.w);
      let v_140 = (r12.xyz + v_12.xyz);
      r12 = vec4<f32>(v_140.xyz, r12.w);
      let v_141 = bitcast<vec3<u32>>(r6.www);
      let v_142 = r11.xyz;
      let v_143 = select(r12.xyz, v_142, (v_141 != vec3<u32>()));
      r11 = vec4<f32>(v_143.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_144 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_144.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_145 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_145.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[12u].w);
      r6.w = (r6.w / r8.z);
      let v_146 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.z = dot(r11.xyz, v_146.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r2.xyw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_147 = abs(r8.wwww);
      r8.w = fma(r1.w, r9.w, v_147.w);
      r8.z = (r8.z * r8.w);
      r8.w = (r6.w * r8.z);
      let v_148 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r12 = vec4<f32>(v_148.xyz, r12.w);
      let v_149 = fma(r12.xyz, r1.xyz, r10.xyz);
      r10 = vec4<f32>(v_149.xyz, r10.w);
      let v_150 = fma(r3.xyz, r0.www, r11.xyz);
      r11 = vec4<f32>(v_150.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_151 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_151.xyz, r11.w);
      let v_152 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_152, v_152, v_152, v_152).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
      let v_153 = dot(r11.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_153, v_153, v_153, v_153).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r6.w = (r6.w * r8.z);
      r6.w = (r7.w * r6.w);
      let v_154 = fma(r6.www, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_154.xyz, r9.w);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_155 = (v_12.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_155.xyz, r11.w);
      let v_156 = (v7.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_156.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[21u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[21u].w);
      let v_157 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_157.xyz, r12.w);
      let v_158 = (r12.xyz + v_12.xyz);
      r12 = vec4<f32>(v_158.xyz, r12.w);
      let v_159 = bitcast<vec3<u32>>(r6.www);
      let v_160 = r11.xyz;
      let v_161 = select(r12.xyz, v_160, (v_159 != vec3<u32>()));
      r11 = vec4<f32>(v_161.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_162 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_162.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_163 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_163.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[13u].w);
      r6.w = (r6.w / r8.z);
      let v_164 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.z = dot(r11.xyz, v_164.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r2.xyw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_165 = abs(r8.wwww);
      r8.w = fma(r1.w, r9.w, v_165.w);
      r8.z = (r8.z * r8.w);
      r8.w = (r6.w * r8.z);
      let v_166 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r12 = vec4<f32>(v_166.xyz, r12.w);
      let v_167 = fma(r12.xyz, r1.xyz, r10.xyz);
      r10 = vec4<f32>(v_167.xyz, r10.w);
      let v_168 = fma(r3.xyz, r0.www, r11.xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_169 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      let v_170 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_170, v_170, v_170, v_170).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
      let v_171 = dot(r11.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_171, v_171, v_171, v_171).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r6.w = (r6.w * r8.z);
      r6.w = (r7.w * r6.w);
      let v_172 = fma(r6.www, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_172.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_173 = (v_12.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      let v_174 = (v7.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_174.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[22u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[22u].w);
      let v_175 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_175.xyz, r12.w);
      let v_176 = (r12.xyz + v_12.xyz);
      r12 = vec4<f32>(v_176.xyz, r12.w);
      let v_177 = bitcast<vec3<u32>>(r6.www);
      let v_178 = r11.xyz;
      let v_179 = select(r12.xyz, v_178, (v_177 != vec3<u32>()));
      r11 = vec4<f32>(v_179.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_180 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_180.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_181 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[14u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[14u].w);
      r6.w = (r6.w / r8.z);
      let v_182 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.z = dot(r11.xyz, v_182.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r2.xyw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_183 = abs(r8.wwww);
      r8.w = fma(r1.w, r9.w, v_183.w);
      r8.z = (r8.z * r8.w);
      r8.w = (r6.w * r8.z);
      let v_184 = (r8.www * cb3_3.tint_symbol_2[22u].xyz);
      r12 = vec4<f32>(v_184.xyz, r12.w);
      let v_185 = fma(r12.xyz, r1.xyz, r10.xyz);
      r10 = vec4<f32>(v_185.xyz, r10.w);
      let v_186 = fma(r3.xyz, r0.www, r11.xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_187 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_187.xyz, r11.w);
      let v_188 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_188, v_188, v_188, v_188).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
      let v_189 = dot(r11.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_189, v_189, v_189, v_189).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r6.w = (r6.w * r8.z);
      r6.w = (r7.w * r6.w);
      let v_190 = fma(r6.www, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_190.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_191 = (v_12.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_191.xyz, r11.w);
      let v_192 = (v7.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r12 = vec4<f32>(v_192.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[23u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[23u].w);
      let v_193 = fma(cb3_3.tint_symbol_2[15u].xyz, r8.zzz, cb3_3.tint_symbol_2[7u].xyz);
      r12 = vec4<f32>(v_193.xyz, r12.w);
      let v_194 = (r12.xyz + v_12.xyz);
      r12 = vec4<f32>(v_194.xyz, r12.w);
      let v_195 = bitcast<vec3<u32>>(r6.www);
      let v_196 = r11.xyz;
      let v_197 = select(r12.xyz, v_196, (v_195 != vec3<u32>()));
      r11 = vec4<f32>(v_197.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_198 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_198.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_199 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_199.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[15u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[15u].w);
      r6.w = (r6.w / r8.z);
      let v_200 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r8.z = dot(r11.xyz, v_200.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r2.xyw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_201 = abs(r8.wwww);
      r8.w = fma(r1.w, r9.w, v_201.w);
      r8.z = (r8.z * r8.w);
      r8.w = (r6.w * r8.z);
      let v_202 = (r8.www * cb3_3.tint_symbol_2[23u].xyz);
      r12 = vec4<f32>(v_202.xyz, r12.w);
      let v_203 = fma(r12.xyz, r1.xyz, r10.xyz);
      r10 = vec4<f32>(v_203.xyz, r10.w);
      let v_204 = fma(r3.xyz, r0.www, r11.xyz);
      r11 = vec4<f32>(v_204.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_205 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_205.xyz, r11.w);
      let v_206 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_206, v_206, v_206, v_206).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
      let v_207 = dot(r11.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_207, v_207, v_207, v_207).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r6.w = (r6.w * r8.z);
      r6.w = (r7.w * r6.w);
      let v_208 = fma(r6.www, cb3_3.tint_symbol_2[23u].xyz, r9.xyz);
      r9 = vec4<f32>(v_208.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_209 = (v_12.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_209.xyz, r11.w);
      let v_210 = (v7.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r12 = vec4<f32>(v_210.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[24u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[24u].w);
      let v_211 = fma(cb3_3.tint_symbol_2[16u].xyz, r8.zzz, cb3_3.tint_symbol_2[8u].xyz);
      r12 = vec4<f32>(v_211.xyz, r12.w);
      let v_212 = (r12.xyz + v_12.xyz);
      r12 = vec4<f32>(v_212.xyz, r12.w);
      let v_213 = bitcast<vec3<u32>>(r6.www);
      let v_214 = r11.xyz;
      let v_215 = select(r12.xyz, v_214, (v_213 != vec3<u32>()));
      r11 = vec4<f32>(v_215.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_216 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_216.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_217 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_217.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[16u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[16u].w);
      r6.w = (r6.w / r8.z);
      let v_218 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r8.z = dot(r11.xyz, v_218.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r2.xyw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_219 = abs(r8.wwww);
      r8.w = fma(r1.w, r9.w, v_219.w);
      r8.z = (r8.z * r8.w);
      r8.w = (r6.w * r8.z);
      let v_220 = (r8.www * cb3_3.tint_symbol_2[24u].xyz);
      r12 = vec4<f32>(v_220.xyz, r12.w);
      let v_221 = fma(r12.xyz, r1.xyz, r10.xyz);
      r10 = vec4<f32>(v_221.xyz, r10.w);
      let v_222 = fma(r3.xyz, r0.www, r11.xyz);
      r11 = vec4<f32>(v_222.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_223 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_223.xyz, r11.w);
      let v_224 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_224, v_224, v_224, v_224).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
      let v_225 = dot(r11.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_225, v_225, v_225, v_225).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r6.w = (r6.w * r8.z);
      r6.w = (r7.w * r6.w);
      let v_226 = fma(r6.www, cb3_3.tint_symbol_2[24u].xyz, r9.xyz);
      r9 = vec4<f32>(v_226.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_227 = (v_12.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_227.xyz, r11.w);
      let v_228 = (v7.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r12 = vec4<f32>(v_228.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[25u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[25u].w);
      let v_229 = fma(cb3_3.tint_symbol_2[17u].xyz, r8.zzz, cb3_3.tint_symbol_2[9u].xyz);
      r12 = vec4<f32>(v_229.xyz, r12.w);
      let v_230 = (r12.xyz + v_12.xyz);
      r12 = vec4<f32>(v_230.xyz, r12.w);
      let v_231 = bitcast<vec3<u32>>(r6.www);
      let v_232 = r11.xyz;
      let v_233 = select(r12.xyz, v_232, (v_231 != vec3<u32>()));
      r11 = vec4<f32>(v_233.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_234 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_234.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_235 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_235.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[17u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[17u].w);
      r6.w = (r6.w / r8.z);
      let v_236 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r8.z = dot(r11.xyz, v_236.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r2.xyw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_237 = abs(r8.wwww);
      r8.w = fma(r1.w, r9.w, v_237.w);
      r8.z = (r8.z * r8.w);
      r8.w = (r6.w * r8.z);
      let v_238 = (r8.www * cb3_3.tint_symbol_2[25u].xyz);
      r12 = vec4<f32>(v_238.xyz, r12.w);
      let v_239 = fma(r12.xyz, r1.xyz, r10.xyz);
      r10 = vec4<f32>(v_239.xyz, r10.w);
      let v_240 = fma(r3.xyz, r0.www, r11.xyz);
      r11 = vec4<f32>(v_240.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_241 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_241.xyz, r11.w);
      let v_242 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_242, v_242, v_242, v_242).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
      let v_243 = dot(r11.xyz, r2.xyw);
      r9.w = clamp(vec4<f32>(v_243, v_243, v_243, v_243).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r6.w = (r6.w * r8.z);
      r6.w = (r7.w * r6.w);
      let v_244 = fma(r6.www, cb3_3.tint_symbol_2[25u].xyz, r9.xyz);
      r9 = vec4<f32>(v_244.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_245 = (v_12.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_245.xyz, r11.w);
      let v_246 = (v7.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r12 = vec4<f32>(v_246.xyz, r12.w);
      r6.w = dot(r12.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[26u].w);
      let v_247 = fma(cb3_3.tint_symbol_2[18u].xyz, r6.www, cb3_3.tint_symbol_2[10u].xyz);
      r12 = vec4<f32>(v_247.xyz, r12.w);
      let v_248 = (r12.xyz + v_12.xyz);
      r12 = vec4<f32>(v_248.xyz, r12.w);
      let v_249 = bitcast<vec3<u32>>(r4.www);
      let v_250 = r11.xyz;
      let v_251 = select(r12.xyz, v_250, (v_249 != vec3<u32>()));
      r11 = vec4<f32>(v_251.xyz, r11.w);
      r4.w = dot(r11.xyz, r11.xyz);
      let v_252 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_252.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_253 = (r6.www * r11.xyz);
      r11 = vec4<f32>(v_253.xyz, r11.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[18u].w);
      r4.w = (r4.w / r6.w);
      let v_254 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r6.w = dot(r11.xyz, v_254.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      r8.z = dot(r11.xyz, r2.xyw);
      r8.w = clamp(r8.zzzz.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r8.zzzz))).w + r8.w);
      let v_255 = abs(r8.zzzz);
      r1.w = fma(r1.w, r8.w, v_255.w);
      r1.w = (r6.w * r1.w);
      r6.w = (r4.w * r1.w);
      let v_256 = (r6.www * cb3_3.tint_symbol_2[26u].xyz);
      r12 = vec4<f32>(v_256.xyz, r12.w);
      let v_257 = fma(r12.xyz, r1.xyz, r10.xyz);
      r10 = vec4<f32>(v_257.xyz, r10.w);
      let v_258 = fma(r3.xyz, r0.www, r11.xyz);
      r3 = vec4<f32>(v_258.xyz, r3.w);
      r0.w = dot(r3.xyz, r3.xyz);
      r0.w = inverseSqrt(r0.w);
      let v_259 = (r0.www * r3.xyz);
      r3 = vec4<f32>(v_259.xyz, r3.w);
      let v_260 = dot(r3.xyz, r4.xyz);
      r0.w = clamp(vec4<f32>(v_260, v_260, v_260, v_260).w, 0.0f, 1.0f);
      r0.w = ((-(r0.wwww)).w + 1.0f);
      r6.w = (r0.w * r0.w);
      r6.w = (r6.w * r6.w);
      r0.w = (r0.w * r6.w);
      r0.w = fma(cb12_12.tint_symbol_4[0u].x, r0.w, r5.w);
      let v_261 = dot(r3.xyz, r2.xyw);
      r3.x = clamp(vec4<f32>(v_261, v_261, v_261, v_261).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r8.y);
      r3.x = exp2(r3.x);
      r0.w = (r0.w * r3.x);
      r0.w = (r1.w * r0.w);
      r0.w = (r4.w * r0.w);
      r0.w = (r7.w * r0.w);
      let v_262 = fma(r0.www, cb3_3.tint_symbol_2[26u].xyz, r9.xyz);
      r9 = vec4<f32>(v_262.xyz, r9.w);
    }
  }
  r0.w = (r6.z * r6.z);
  r0.x = (r0.x * r0.x);
  let v_263 = (r9.xyz * r0.xxx);
  r3 = vec4<f32>(v_263.xyz, r3.w);
  let v_264 = fma(r0.www, r10.xyz, r3.xyz);
  r3 = vec4<f32>(v_264.xyz, r3.w);
  let v_265 = fma(r5.xyz, r3.www, r3.xyz);
  r3 = vec4<f32>(v_265.xyz, r3.w);
  r0.x = fma(r2.z, r0.z, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_266 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_266.xyz, r5.w);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_267 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(r8.x, v_267.xyz);
  let v_268 = (r8.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(r8.x, v_268.xyz);
  let v_269 = fma(r5.xyz, r0.zzz, r8.yzw);
  r5 = vec4<f32>(v_269.xyz, r5.w);
  let v_270 = (r6.yyy * r5.xyz);
  r5 = vec4<f32>(v_270.xyz, r5.w);
  let v_271 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(v_271.x, r0.y, v_271.yz);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_272 = dot(r9.xyz, r2.xyw);
  r1.w = clamp(vec4<f32>(v_272, v_272, v_272, v_272).w, 0.0f, 1.0f);
  let v_273 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.www, r0.xzw);
  r0 = vec4<f32>(v_273.x, r0.y, v_273.yz);
  let v_274 = fma(r0.xzw, r6.xxx, r5.xyz);
  r0 = vec4<f32>(v_274.x, r0.y, v_274.yz);
  let v_275 = (r6.zzz * r0.xzw);
  r0 = vec4<f32>(v_275.x, r0.y, v_275.yz);
  let v_276 = fma(r0.xzw, r1.xyz, r3.xyz);
  r0 = vec4<f32>(v_276.x, r0.y, v_276.yz);
  r1.x = ((-(r6.zzzz)).x + 1.0f);
  r1.y = dot((-(r4.xyzx)).xyz, r2.xyw);
  r1.y = (r1.y + r1.y);
  let v_277 = -(r1.yyyy);
  let v_278 = -(r4.xxyz);
  let v_279 = fma(r2.xyw, v_277.yzw, v_278.yzw);
  r1 = vec4<f32>(r1.x, v_279.xyz);
  let v_280 = clamp(((r0.yyyy * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_280.xy, r2.zw);
  r0.y = ((-(r2.xxxx)).y + 1.0f);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.z = (r0.y * cb5_5.tint_symbol_3[6u].z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.x)));
  r2.w = fma(r0.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.y = (r0.y * r0.y);
  r0.y = fma(r0.y, 5.0f, r2.x);
  let v_281 = bitcast<u32>(r2.z);
  let v_282 = r2.w;
  r0.y = select(r0.y, v_282, (v_281 != 0u));
  let v_283 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_283.x, r2.y, v_283.yz);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_284 = (r2.xzw / r1.yyy);
  r2 = vec4<f32>(v_284.x, r2.y, v_284.yz);
  let v_285 = ((-(r2.xxzw)).xzw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_285.x, r2.y, v_285.yz);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_286 = bitcast<vec2<u32>>(r1.yy);
  let v_287 = r2.xz;
  let v_288 = select(r2.wz, v_287, (v_286 != vec2<u32>()));
  let v_289 = r1;
  r1 = vec4<f32>(v_289.x, v_288.xy, v_289.w);
  let v_290 = r0.y;
  r3 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_290);
  r0.y = max(r6.y, r6.x);
  let v_291 = (r0.yyy * r3.xyz);
  r1 = vec4<f32>(r1.x, v_291.xyz);
  let v_292 = (r2.yyy * r1.yzw);
  r2 = vec4<f32>(v_292.xyz, r2.w);
  let v_293 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_293.xyz, r2.w);
  let v_294 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_294.xyz);
  let v_295 = fma(r1.yzw, r1.xxx, r0.xzw);
  r0 = vec4<f32>(v_295.xyz, r0.w);
  r0.w = (r8.x * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r1.x = dot(r7.xyz, r7.xyz);
    r1.y = sqrt(r1.x);
    let v_296 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.z = (r1.y + v_296.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r1.y * r7.z);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_297 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_297 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_298 = (r1.xxx * r7.xyz);
    r2 = vec4<f32>(v_298.xyz, r2.w);
    let v_299 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.x = clamp(vec4<f32>(v_299, v_299, v_299, v_299).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
    r1.x = exp2(r1.x);
    let v_300 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_300, v_300, v_300, v_300).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
    let v_301 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r1.z + v_301.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_302 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r1.z * v_302.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_303 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(r2.x, v_303.xyz);
    let v_304 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(r2.x, v_304.xyz);
    let v_305 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_305.xyz, r3.w);
    let v_306 = fma(r2.xxx, r3.xyz, r2.yzw);
    r2 = vec4<f32>(v_306.xyz, r2.w);
    let v_307 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_308 = (r2.xyz + v_307.xyz);
    r2 = vec4<f32>(v_308.xyz, r2.w);
    let v_309 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_309.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_310 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_310.xyz, r3.w);
    let v_311 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_311.xyz, r1.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_312 = (v9.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_312.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r2.x = (r2.x + -1.0f);
      r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r2.x = 1.0f;
    }
    let v_313 = -(r0.xyzx);
    let v_314 = fma(r1.xyz, r2.xxx, v_313.xyz);
    r1 = vec4<f32>(v_314.xyz, r1.w);
    let v_315 = fma(r1.www, r1.xyz, r0.xyz);
    r1 = vec4<f32>(v_315.xyz, r1.w);
  } else {
    r1.w = dot(r7.xyz, r7.xyz);
    r2.x = sqrt(r1.w);
    let v_316 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_316.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r2.x * r7.z);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_317 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_317 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_318 = (r1.www * r7.xyz);
    r3 = vec4<f32>(v_318.xyz, r3.w);
    let v_319 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_319, v_319, v_319, v_319).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_320 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_320, v_320, v_320, v_320).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].y);
    let v_321 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r2.y + v_321.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r2.z = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).z, 0.0f, 1.0f);
    let v_322 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.y = (r2.y * v_322.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    let v_323 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_323.xyz, r3.w);
    let v_324 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_324.xyz, r3.w);
    let v_325 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_325.xyz, r4.w);
    let v_326 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_326.xyz, r3.w);
    let v_327 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_328 = (r3.xyz + v_327.xyz);
    r3 = vec4<f32>(v_328.xyz, r3.w);
    let v_329 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_329.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_330 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_330.xyz, r4.w);
    let v_331 = fma(r2.xxx, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_331.xy, r2.z, v_331.z);
    let v_332 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_332.xy, r2.z, v_332.z);
    let v_333 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_333.xyz, r1.w);
  }
  o0.w = (r0.w * v8.x);
  let v_334 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_334.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @builtin(position) v_335 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v7, v8, v_335);
  return o0;
}
