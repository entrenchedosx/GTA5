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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v6 : vec4<f32>;

var<private> v7 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v6 = v_2;
  x1[0u].x = v7[0u];
  x1[0u].y = v7[1u];
  x1[0u].z = v7[2u];
  x1[0u].w = v7[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_4 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_5 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  let v_6 = (r1.yyy * v4.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r1.xxx, v3.xyz, r2.xyz);
  r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
  let v_8 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_9 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r3 = textureSample(t3, s3, v1.xy.xyxx.xy);
  let v_10 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_10.xy, r3.zw);
  r1.x = dot(r3.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_4[0u].wwww)).x, 0.0f, 1.0f);
  r1.y = (r0.w * cb12_12.tint_symbol_4[0u].x);
  r1.y = (r1.y * cb2_2.tint_symbol_1[15u].w);
  r0.w = (r0.w * v0.w);
  let v_11 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_11.xy, r3.zw);
  r1.y = (r1.y * v0.z);
  let v_12 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = -(v5.xyzx);
  let v_14 = (v_13.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_15 = (r2.www * r4.xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_17 = fma(r4.xyz, r2.www, v_16.xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  r3.z = dot(r6.xyz, r6.xyz);
  r3.z = inverseSqrt(r3.z);
  let v_18 = (r3.zzz * r6.xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  r3.z = fma(r3.w, cb12_12.tint_symbol_4[0u].z, -500.0f);
  r3.z = max(r3.z, 0.0f);
  let v_19 = -(r3.zzzz);
  r3.w = fma(r3.w, cb12_12.tint_symbol_4[0u].z, v_19.w);
  r3.z = (r3.z * 558.0f);
  r3.z = fma(r3.w, 3.0f, r3.z);
  r3.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_20 = (v5.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
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
  r6.w = max(v_41.w, abs(r10.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_42 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_42 != 0u));
  let v_43 = abs(r9.yyyy);
  r6.w = max(v_43.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
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
  r6.w = dot(r10, cb6_6.tint_symbol_5[13u]);
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
  r7.w = (1.0f / r14.x);
  r8.z = (r11.z * r13.y);
  let v_51 = -(r8.zzzz);
  r14.z = fma(r11.x, r13.w, v_51.z);
  let v_52 = (r7.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_52.xy);
  let v_53 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_53.xy);
  let v_54 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_54.xy);
  r4.w = fma((-(r6.wwww)).w, r8.z, r4.w);
  r4.w = fma((-(r6.wwww)).w, r8.w, r4.w);
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
  let v_105 = (r3.xyw * r3.xyw);
  r3 = vec4<f32>(v_105.xy, r3.z, v_105.z);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v5.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_106 = -(r3.wwww);
  r3.w = fma(r4.w, v_106.w, r3.w);
  let v_107 = dot(r2.xyz, v_16.xyz);
  r4.w = clamp(vec4<f32>(v_107, v_107, v_107, v_107).w, 0.0f, 1.0f);
  let v_108 = dot(r5.xyz, r2.xyz);
  r8.x = clamp(vec4<f32>(v_108, v_108, v_108, v_108).x, 0.0f, 1.0f);
  let v_109 = dot(r6.xyz, v_16.xyz);
  r8.y = clamp(vec4<f32>(v_109, v_109, v_109, v_109).y, 0.0f, 1.0f);
  let v_110 = ((-(r8.xxyx)).yz + vec2<f32>(1.0f));
  let v_111 = r8;
  r8 = vec4<f32>(v_111.x, v_110.xy, v_111.w);
  let v_112 = (r8.yz * r8.yz);
  r9 = vec4<f32>(v_112.xy, r9.zw);
  let v_113 = (r9.xy * r9.xy);
  r9 = vec4<f32>(v_113.xy, r9.zw);
  let v_114 = (r8.yz * r9.xy);
  let v_115 = r8;
  r8 = vec4<f32>(v_115.x, v_114.xy, v_115.w);
  r5.w = ((-(cb12_12.tint_symbol_4[0u].yyyy)).w + 1.0f);
  let v_116 = fma(cb12_12.tint_symbol_4[0u].yy, r8.yz, r5.ww);
  let v_117 = r8;
  r8 = vec4<f32>(v_117.x, v_116.xy, v_117.w);
  let v_118 = (r3.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r9 = vec4<f32>(v_118.xy, r9.zw);
  r3.z = (r9.x * 0.125f);
  r6.w = fma((-(r1.xxxx)).w, r8.y, 1.0f);
  r6.x = dot(r2.xyz, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r9.y);
  r6.x = exp2(r6.x);
  r6.x = (r8.z * r6.x);
  r6.x = (r3.z * r6.x);
  r6.x = (r1.x * r6.x);
  r6.x = (r4.w * r6.x);
  r4.w = (r4.w * r6.w);
  let v_119 = fma(r0.xyz, r4.www, r6.xxx);
  r6 = vec4<f32>(v_119.xyz, r6.w);
  let v_120 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_120.xyz, r6.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r8 = vec4<f32>(r8.x, vec3<f32>());
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_121 = -(v5.xxyz);
    let v_122 = (v_121.yzw + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(r8.x, v_122.xyz);
    let v_123 = (v5.xyz + (-(cb3_3.tint_symbol_2[3u].xxyz)).xzw);
    r9 = vec4<f32>(v_123.x, r9.y, v_123.yz);
    r9.x = dot(r9.xzw, cb3_3.tint_symbol_2[11u].xyz);
    r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[19u].wwww)).x, 0.0f, 1.0f);
    r9.x = (r9.x * cb3_3.tint_symbol_2[19u].w);
    let v_124 = fma(cb3_3.tint_symbol_2[11u].xyz, r9.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_124.x, r9.y, v_124.yz);
    let v_125 = (r9.xzw + v_121.xzw);
    r9 = vec4<f32>(v_125.x, r9.y, v_125.yz);
    let v_126 = bitcast<vec3<u32>>(r7.www);
    let v_127 = r8.yzw;
    let v_128 = select(r9.xzw, v_127, (v_126 != vec3<u32>()));
    r8 = vec4<f32>(r8.x, v_128.xyz);
    r7.w = dot(r8.yzw, r8.yzw);
    let v_129 = (r8.yzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(r8.x, v_129.xyz);
    r9.x = dot(r8.yzw, r8.yzw);
    r9.x = inverseSqrt(r9.x);
    let v_130 = (r8.yzw * r9.xxx);
    r8 = vec4<f32>(r8.x, v_130.xyz);
    r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r9.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[11u].w);
    r7.w = (r7.w / r9.x);
    let v_131 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.x = dot(r8.yzw, v_131.xyz);
    r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_132 = dot(r8.yzw, r2.xyz);
    r9.z = clamp(vec4<f32>(v_132, v_132, v_132, v_132).z, 0.0f, 1.0f);
    r9.x = (r9.x * r9.z);
    r9.z = (r7.w * r9.x);
    let v_133 = (r9.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_133.xyz, r10.w);
    let v_134 = (r0.xyz * r10.xyz);
    r10 = vec4<f32>(v_134.xyz, r10.w);
    let v_135 = fma(r4.xyz, r2.www, r8.yzw);
    r8 = vec4<f32>(r8.x, v_135.xyz);
    r9.z = dot(r8.yzw, r8.yzw);
    r9.z = inverseSqrt(r9.z);
    let v_136 = (r8.yzw * r9.zzz);
    r8 = vec4<f32>(r8.x, v_136.xyz);
    let v_137 = dot(r8.yzw, r5.xyz);
    r9.z = clamp(vec4<f32>(v_137, v_137, v_137, v_137).z, 0.0f, 1.0f);
    r9.z = ((-(r9.zzzz)).z + 1.0f);
    r9.w = (r9.z * r9.z);
    r9.w = (r9.w * r9.w);
    r9.z = (r9.w * r9.z);
    r9.z = fma(cb12_12.tint_symbol_4[0u].y, r9.z, r5.w);
    let v_138 = dot(r8.yzw, r2.xyz);
    r8.y = clamp(vec4<f32>(v_138, v_138, v_138, v_138).y, 0.0f, 1.0f);
    r8.y = log2(r8.y);
    r8.y = (r8.y * r9.y);
    r8.y = exp2(r8.y);
    r8.y = (r8.y * r9.z);
    r8.y = (r9.x * r8.y);
    r7.w = (r7.w * r8.y);
    r7.w = (r3.z * r7.w);
    let v_139 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(r8.x, v_139.xyz);
  }
  r7.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.w) != 0u)) {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.w)));
    let v_140 = bitcast<u32>(r9.x);
    let v_141 = r7.w;
    r4.w = select(r4.w, v_141, (v_140 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_142 = ((-(v5.xxyz)).xzw + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_142.x, r9.y, v_142.yz);
      let v_143 = (v5.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_143.xyz, r11.w);
      r10.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r10.w = clamp(((r10.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r10.w = (r10.w * cb3_3.tint_symbol_2[20u].w);
      let v_144 = fma(cb3_3.tint_symbol_2[12u].xyz, r10.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_144.xyz, r11.w);
      let v_145 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_145.xyz, r11.w);
      let v_146 = bitcast<vec3<u32>>(r7.www);
      let v_147 = r9.xzw;
      let v_148 = select(r11.xyz, v_147, (v_146 != vec3<u32>()));
      r9 = vec4<f32>(v_148.x, r9.y, v_148.yz);
      r7.w = dot(r9.xzw, r9.xzw);
      let v_149 = (r9.xzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_149.x, r9.y, v_149.yz);
      r10.w = dot(r9.xzw, r9.xzw);
      r10.w = inverseSqrt(r10.w);
      let v_150 = (r9.xzw * r10.www);
      r9 = vec4<f32>(v_150.x, r9.y, v_150.yz);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r10.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r10.w = fma(r10.w, r7.w, cb3_3.tint_symbol_2[12u].w);
      r7.w = (r7.w / r10.w);
      let v_151 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r10.w = dot(r9.xzw, v_151.xyz);
      r10.w = clamp(fma(r10.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_152 = dot(r9.xzw, r2.xyz);
      r11.x = clamp(vec4<f32>(v_152, v_152, v_152, v_152).x, 0.0f, 1.0f);
      r10.w = (r10.w * r11.x);
      r11.x = (r7.w * r10.w);
      let v_153 = (r11.xxx * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_153.xyz, r11.w);
      let v_154 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_154.xyz, r10.w);
      let v_155 = fma(r4.xyz, r2.www, r9.xzw);
      r9 = vec4<f32>(v_155.x, r9.y, v_155.yz);
      r11.x = dot(r9.xzw, r9.xzw);
      r11.x = inverseSqrt(r11.x);
      let v_156 = (r9.xzw * r11.xxx);
      r9 = vec4<f32>(v_156.x, r9.y, v_156.yz);
      let v_157 = dot(r9.xzw, r5.xyz);
      r11.x = clamp(vec4<f32>(v_157, v_157, v_157, v_157).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb12_12.tint_symbol_4[0u].y, r11.x, r5.w);
      let v_158 = dot(r9.xzw, r2.xyz);
      r9.x = clamp(vec4<f32>(v_158, v_158, v_158, v_158).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r9.x * r9.y);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r10.w * r9.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r3.z * r7.w);
      let v_159 = fma(r7.www, cb3_3.tint_symbol_2[20u].xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_159.xyz);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_160 = ((-(v5.xxyz)).xzw + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_160.x, r9.y, v_160.yz);
      let v_161 = (v5.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_161.xyz, r11.w);
      r10.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r10.w = clamp(((r10.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r10.w = (r10.w * cb3_3.tint_symbol_2[21u].w);
      let v_162 = fma(cb3_3.tint_symbol_2[13u].xyz, r10.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_162.xyz, r11.w);
      let v_163 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_163.xyz, r11.w);
      let v_164 = bitcast<vec3<u32>>(r7.www);
      let v_165 = r9.xzw;
      let v_166 = select(r11.xyz, v_165, (v_164 != vec3<u32>()));
      r9 = vec4<f32>(v_166.x, r9.y, v_166.yz);
      r7.w = dot(r9.xzw, r9.xzw);
      let v_167 = (r9.xzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_167.x, r9.y, v_167.yz);
      r10.w = dot(r9.xzw, r9.xzw);
      r10.w = inverseSqrt(r10.w);
      let v_168 = (r9.xzw * r10.www);
      r9 = vec4<f32>(v_168.x, r9.y, v_168.yz);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r10.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r10.w = fma(r10.w, r7.w, cb3_3.tint_symbol_2[13u].w);
      r7.w = (r7.w / r10.w);
      let v_169 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r10.w = dot(r9.xzw, v_169.xyz);
      r10.w = clamp(fma(r10.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_170 = dot(r9.xzw, r2.xyz);
      r11.x = clamp(vec4<f32>(v_170, v_170, v_170, v_170).x, 0.0f, 1.0f);
      r10.w = (r10.w * r11.x);
      r11.x = (r7.w * r10.w);
      let v_171 = (r11.xxx * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_171.xyz, r11.w);
      let v_172 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = fma(r4.xyz, r2.www, r9.xzw);
      r9 = vec4<f32>(v_173.x, r9.y, v_173.yz);
      r11.x = dot(r9.xzw, r9.xzw);
      r11.x = inverseSqrt(r11.x);
      let v_174 = (r9.xzw * r11.xxx);
      r9 = vec4<f32>(v_174.x, r9.y, v_174.yz);
      let v_175 = dot(r9.xzw, r5.xyz);
      r11.x = clamp(vec4<f32>(v_175, v_175, v_175, v_175).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb12_12.tint_symbol_4[0u].y, r11.x, r5.w);
      let v_176 = dot(r9.xzw, r2.xyz);
      r9.x = clamp(vec4<f32>(v_176, v_176, v_176, v_176).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r9.x * r9.y);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r10.w * r9.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r3.z * r7.w);
      let v_177 = fma(r7.www, cb3_3.tint_symbol_2[21u].xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_177.xyz);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_178 = ((-(v5.xxyz)).xzw + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_178.x, r9.y, v_178.yz);
      let v_179 = (v5.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_179.xyz, r11.w);
      r10.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r10.w = clamp(((r10.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r10.w = (r10.w * cb3_3.tint_symbol_2[22u].w);
      let v_180 = fma(cb3_3.tint_symbol_2[14u].xyz, r10.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_180.xyz, r11.w);
      let v_181 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      let v_182 = bitcast<vec3<u32>>(r7.www);
      let v_183 = r9.xzw;
      let v_184 = select(r11.xyz, v_183, (v_182 != vec3<u32>()));
      r9 = vec4<f32>(v_184.x, r9.y, v_184.yz);
      r7.w = dot(r9.xzw, r9.xzw);
      let v_185 = (r9.xzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_185.x, r9.y, v_185.yz);
      r10.w = dot(r9.xzw, r9.xzw);
      r10.w = inverseSqrt(r10.w);
      let v_186 = (r9.xzw * r10.www);
      r9 = vec4<f32>(v_186.x, r9.y, v_186.yz);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r10.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r10.w = fma(r10.w, r7.w, cb3_3.tint_symbol_2[14u].w);
      r7.w = (r7.w / r10.w);
      let v_187 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r10.w = dot(r9.xzw, v_187.xyz);
      r10.w = clamp(fma(r10.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_188 = dot(r9.xzw, r2.xyz);
      r11.x = clamp(vec4<f32>(v_188, v_188, v_188, v_188).x, 0.0f, 1.0f);
      r10.w = (r10.w * r11.x);
      r11.x = (r7.w * r10.w);
      let v_189 = (r11.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_189.xyz, r11.w);
      let v_190 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_190.xyz, r10.w);
      let v_191 = fma(r4.xyz, r2.www, r9.xzw);
      r9 = vec4<f32>(v_191.x, r9.y, v_191.yz);
      r11.x = dot(r9.xzw, r9.xzw);
      r11.x = inverseSqrt(r11.x);
      let v_192 = (r9.xzw * r11.xxx);
      r9 = vec4<f32>(v_192.x, r9.y, v_192.yz);
      let v_193 = dot(r9.xzw, r5.xyz);
      r11.x = clamp(vec4<f32>(v_193, v_193, v_193, v_193).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb12_12.tint_symbol_4[0u].y, r11.x, r5.w);
      let v_194 = dot(r9.xzw, r2.xyz);
      r9.x = clamp(vec4<f32>(v_194, v_194, v_194, v_194).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r9.x * r9.y);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r10.w * r9.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r3.z * r7.w);
      let v_195 = fma(r7.www, cb3_3.tint_symbol_2[22u].xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_195.xyz);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_196 = ((-(v5.xxyz)).xzw + cb3_3.tint_symbol_2[7u].xyz);
      r9 = vec4<f32>(v_196.x, r9.y, v_196.yz);
      let v_197 = (v5.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_197.xyz, r11.w);
      r10.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r10.w = clamp(((r10.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r10.w = (r10.w * cb3_3.tint_symbol_2[23u].w);
      let v_198 = fma(cb3_3.tint_symbol_2[15u].xyz, r10.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_198.xyz, r11.w);
      let v_199 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_199.xyz, r11.w);
      let v_200 = bitcast<vec3<u32>>(r7.www);
      let v_201 = r9.xzw;
      let v_202 = select(r11.xyz, v_201, (v_200 != vec3<u32>()));
      r9 = vec4<f32>(v_202.x, r9.y, v_202.yz);
      r7.w = dot(r9.xzw, r9.xzw);
      let v_203 = (r9.xzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_203.x, r9.y, v_203.yz);
      r10.w = dot(r9.xzw, r9.xzw);
      r10.w = inverseSqrt(r10.w);
      let v_204 = (r9.xzw * r10.www);
      r9 = vec4<f32>(v_204.x, r9.y, v_204.yz);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r10.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r10.w = fma(r10.w, r7.w, cb3_3.tint_symbol_2[15u].w);
      r7.w = (r7.w / r10.w);
      let v_205 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r10.w = dot(r9.xzw, v_205.xyz);
      r10.w = clamp(fma(r10.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_206 = dot(r9.xzw, r2.xyz);
      r11.x = clamp(vec4<f32>(v_206, v_206, v_206, v_206).x, 0.0f, 1.0f);
      r10.w = (r10.w * r11.x);
      r11.x = (r7.w * r10.w);
      let v_207 = (r11.xxx * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_207.xyz, r11.w);
      let v_208 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_208.xyz, r10.w);
      let v_209 = fma(r4.xyz, r2.www, r9.xzw);
      r9 = vec4<f32>(v_209.x, r9.y, v_209.yz);
      r11.x = dot(r9.xzw, r9.xzw);
      r11.x = inverseSqrt(r11.x);
      let v_210 = (r9.xzw * r11.xxx);
      r9 = vec4<f32>(v_210.x, r9.y, v_210.yz);
      let v_211 = dot(r9.xzw, r5.xyz);
      r11.x = clamp(vec4<f32>(v_211, v_211, v_211, v_211).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb12_12.tint_symbol_4[0u].y, r11.x, r5.w);
      let v_212 = dot(r9.xzw, r2.xyz);
      r9.x = clamp(vec4<f32>(v_212, v_212, v_212, v_212).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r9.x * r9.y);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r10.w * r9.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r3.z * r7.w);
      let v_213 = fma(r7.www, cb3_3.tint_symbol_2[23u].xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_213.xyz);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_214 = ((-(v5.xxyz)).xzw + cb3_3.tint_symbol_2[8u].xyz);
      r9 = vec4<f32>(v_214.x, r9.y, v_214.yz);
      let v_215 = (v5.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_215.xyz, r11.w);
      r10.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r10.w = clamp(((r10.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r10.w = (r10.w * cb3_3.tint_symbol_2[24u].w);
      let v_216 = fma(cb3_3.tint_symbol_2[16u].xyz, r10.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_216.xyz, r11.w);
      let v_217 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_217.xyz, r11.w);
      let v_218 = bitcast<vec3<u32>>(r7.www);
      let v_219 = r9.xzw;
      let v_220 = select(r11.xyz, v_219, (v_218 != vec3<u32>()));
      r9 = vec4<f32>(v_220.x, r9.y, v_220.yz);
      r7.w = dot(r9.xzw, r9.xzw);
      let v_221 = (r9.xzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_221.x, r9.y, v_221.yz);
      r10.w = dot(r9.xzw, r9.xzw);
      r10.w = inverseSqrt(r10.w);
      let v_222 = (r9.xzw * r10.www);
      r9 = vec4<f32>(v_222.x, r9.y, v_222.yz);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r10.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r10.w = fma(r10.w, r7.w, cb3_3.tint_symbol_2[16u].w);
      r7.w = (r7.w / r10.w);
      let v_223 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r10.w = dot(r9.xzw, v_223.xyz);
      r10.w = clamp(fma(r10.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_224 = dot(r9.xzw, r2.xyz);
      r11.x = clamp(vec4<f32>(v_224, v_224, v_224, v_224).x, 0.0f, 1.0f);
      r10.w = (r10.w * r11.x);
      r11.x = (r7.w * r10.w);
      let v_225 = (r11.xxx * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_225.xyz, r11.w);
      let v_226 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_226.xyz, r10.w);
      let v_227 = fma(r4.xyz, r2.www, r9.xzw);
      r9 = vec4<f32>(v_227.x, r9.y, v_227.yz);
      r11.x = dot(r9.xzw, r9.xzw);
      r11.x = inverseSqrt(r11.x);
      let v_228 = (r9.xzw * r11.xxx);
      r9 = vec4<f32>(v_228.x, r9.y, v_228.yz);
      let v_229 = dot(r9.xzw, r5.xyz);
      r11.x = clamp(vec4<f32>(v_229, v_229, v_229, v_229).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb12_12.tint_symbol_4[0u].y, r11.x, r5.w);
      let v_230 = dot(r9.xzw, r2.xyz);
      r9.x = clamp(vec4<f32>(v_230, v_230, v_230, v_230).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r9.x * r9.y);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r10.w * r9.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r3.z * r7.w);
      let v_231 = fma(r7.www, cb3_3.tint_symbol_2[24u].xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_231.xyz);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_232 = ((-(v5.xxyz)).xzw + cb3_3.tint_symbol_2[9u].xyz);
      r9 = vec4<f32>(v_232.x, r9.y, v_232.yz);
      let v_233 = (v5.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_233.xyz, r11.w);
      r10.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r10.w = clamp(((r10.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r10.w = (r10.w * cb3_3.tint_symbol_2[25u].w);
      let v_234 = fma(cb3_3.tint_symbol_2[17u].xyz, r10.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_234.xyz, r11.w);
      let v_235 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_235.xyz, r11.w);
      let v_236 = bitcast<vec3<u32>>(r7.www);
      let v_237 = r9.xzw;
      let v_238 = select(r11.xyz, v_237, (v_236 != vec3<u32>()));
      r9 = vec4<f32>(v_238.x, r9.y, v_238.yz);
      r7.w = dot(r9.xzw, r9.xzw);
      let v_239 = (r9.xzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_239.x, r9.y, v_239.yz);
      r10.w = dot(r9.xzw, r9.xzw);
      r10.w = inverseSqrt(r10.w);
      let v_240 = (r9.xzw * r10.www);
      r9 = vec4<f32>(v_240.x, r9.y, v_240.yz);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r10.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r10.w = fma(r10.w, r7.w, cb3_3.tint_symbol_2[17u].w);
      r7.w = (r7.w / r10.w);
      let v_241 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r10.w = dot(r9.xzw, v_241.xyz);
      r10.w = clamp(fma(r10.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_242 = dot(r9.xzw, r2.xyz);
      r11.x = clamp(vec4<f32>(v_242, v_242, v_242, v_242).x, 0.0f, 1.0f);
      r10.w = (r10.w * r11.x);
      r11.x = (r7.w * r10.w);
      let v_243 = (r11.xxx * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_243.xyz, r11.w);
      let v_244 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_244.xyz, r10.w);
      let v_245 = fma(r4.xyz, r2.www, r9.xzw);
      r9 = vec4<f32>(v_245.x, r9.y, v_245.yz);
      r11.x = dot(r9.xzw, r9.xzw);
      r11.x = inverseSqrt(r11.x);
      let v_246 = (r9.xzw * r11.xxx);
      r9 = vec4<f32>(v_246.x, r9.y, v_246.yz);
      let v_247 = dot(r9.xzw, r5.xyz);
      r11.x = clamp(vec4<f32>(v_247, v_247, v_247, v_247).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb12_12.tint_symbol_4[0u].y, r11.x, r5.w);
      let v_248 = dot(r9.xzw, r2.xyz);
      r9.x = clamp(vec4<f32>(v_248, v_248, v_248, v_248).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r9.x * r9.y);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r10.w * r9.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r3.z * r7.w);
      let v_249 = fma(r7.www, cb3_3.tint_symbol_2[25u].xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_249.xyz);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_250 = ((-(v5.xxyz)).xzw + cb3_3.tint_symbol_2[10u].xyz);
      r9 = vec4<f32>(v_250.x, r9.y, v_250.yz);
      let v_251 = (v5.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_251.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[26u].w);
      let v_252 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.www, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_252.xyz, r11.w);
      let v_253 = (r11.xyz + v_13.xyz);
      r11 = vec4<f32>(v_253.xyz, r11.w);
      let v_254 = bitcast<vec3<u32>>(r4.www);
      let v_255 = r9.xzw;
      let v_256 = select(r11.xyz, v_255, (v_254 != vec3<u32>()));
      r9 = vec4<f32>(v_256.x, r9.y, v_256.yz);
      r4.w = dot(r9.xzw, r9.xzw);
      let v_257 = (r9.xzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_257.x, r9.y, v_257.yz);
      r7.w = dot(r9.xzw, r9.xzw);
      r7.w = inverseSqrt(r7.w);
      let v_258 = (r7.www * r9.xzw);
      r9 = vec4<f32>(v_258.x, r9.y, v_258.yz);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r4.w, cb3_3.tint_symbol_2[18u].w);
      r4.w = (r4.w / r7.w);
      let v_259 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.w = dot(r9.xzw, v_259.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_260 = dot(r9.xzw, r2.xyz);
      r10.w = clamp(vec4<f32>(v_260, v_260, v_260, v_260).w, 0.0f, 1.0f);
      r7.w = (r7.w * r10.w);
      r10.w = (r4.w * r7.w);
      let v_261 = (r10.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_261.xyz, r11.w);
      let v_262 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_262.xyz, r10.w);
      let v_263 = fma(r4.xyz, r2.www, r9.xzw);
      r4 = vec4<f32>(v_263.xyz, r4.w);
      r2.w = dot(r4.xyz, r4.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_264 = (r2.www * r4.xyz);
      r4 = vec4<f32>(v_264.xyz, r4.w);
      let v_265 = dot(r4.xyz, r5.xyz);
      r2.w = clamp(vec4<f32>(v_265, v_265, v_265, v_265).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r5.x = (r2.w * r2.w);
      r5.x = (r5.x * r5.x);
      r2.w = (r2.w * r5.x);
      r2.w = fma(cb12_12.tint_symbol_4[0u].y, r2.w, r5.w);
      let v_266 = dot(r4.xyz, r2.xyz);
      r4.x = clamp(vec4<f32>(v_266, v_266, v_266, v_266).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r9.y);
      r4.x = exp2(r4.x);
      r2.w = (r2.w * r4.x);
      r2.w = (r7.w * r2.w);
      r2.w = (r4.w * r2.w);
      r2.w = (r3.z * r2.w);
      let v_267 = fma(r2.www, cb3_3.tint_symbol_2[26u].xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_267.xyz);
    }
  }
  r2.w = (r6.w * r6.w);
  r1.x = (r1.x * r1.x);
  let v_268 = (r8.yzw * r1.xxx);
  r4 = vec4<f32>(v_268.xyz, r4.w);
  let v_269 = fma(r2.www, r10.xyz, r4.xyz);
  r4 = vec4<f32>(v_269.xyz, r4.w);
  let v_270 = fma(r6.xyz, r3.www, r4.xyz);
  r4 = vec4<f32>(v_270.xyz, r4.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_271 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_271.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_272 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_272.xyz, r6.w);
  let v_273 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_273.xyz, r6.w);
  let v_274 = fma(r5.xyz, r1.zzz, r6.xyz);
  r5 = vec4<f32>(v_274.xyz, r5.w);
  let v_275 = (r3.yyy * r5.xyz);
  r3 = vec4<f32>(r3.x, v_275.xyz);
  let v_276 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(v_276.x, r1.y, v_276.yz);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_277 = dot(r5.xyz, r2.xyz);
  r2.x = clamp(vec4<f32>(v_277, v_277, v_277, v_277).x, 0.0f, 1.0f);
  let v_278 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.xxx, r1.xzw);
  r1 = vec4<f32>(v_278.x, r1.y, v_278.yz);
  let v_279 = fma(r1.xzw, r3.xxx, r3.yzw);
  r1 = vec4<f32>(v_279.x, r1.y, v_279.yz);
  let v_280 = (r6.www * r1.xzw);
  r1 = vec4<f32>(v_280.x, r1.y, v_280.yz);
  let v_281 = fma(r1.xzw, r0.xyz, r4.xyz);
  r1 = vec4<f32>(v_281.x, r1.y, v_281.yz);
  r1.y = (r1.y * r8.x);
  let v_282 = fma(r0.xyz, r1.yyy, r1.xzw);
  r0 = vec4<f32>(v_282.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.x = sqrt(r0.w);
    let v_283 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_283.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r7.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_284 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_284 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_285 = (r0.www * r7.xyz);
    r2 = vec4<f32>(v_285.xyz, r2.w);
    let v_286 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_286, v_286, v_286, v_286).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_287 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_287, v_287, v_287, v_287).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_288 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_288.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_289 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_289.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_290 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_290.xyz, r2.w);
    let v_291 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_291.xyz, r2.w);
    let v_292 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_292.xyz, r3.w);
    let v_293 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_293.xyz, r2.w);
    let v_294 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_295 = (r2.xyz + v_294.xyz);
    r2 = vec4<f32>(v_295.xyz, r2.w);
    let v_296 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_296.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_297 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_297.xyz, r3.w);
    let v_298 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_298.xy, r1.z, v_298.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_299 = (v6.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_299.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_300 = -(r0.xyxz);
    let v_301 = fma(r1.xyw, r0.www, v_300.xyw);
    r1 = vec4<f32>(v_301.xy, r1.z, v_301.z);
    let v_302 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_302.xyz, r1.w);
  } else {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.w = sqrt(r0.w);
    let v_303 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_303.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r7.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_304 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_304 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_305 = (r0.www * r7.xyz);
    r3 = vec4<f32>(v_305.xyz, r3.w);
    let v_306 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_306, v_306, v_306, v_306).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_307 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_307, v_307, v_307, v_307).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_308 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_308.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_309 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_309.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_310 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_310.xyz, r3.w);
    let v_311 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_311.xyz, r3.w);
    let v_312 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_312.xyz, r4.w);
    let v_313 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_313.xyz, r3.w);
    let v_314 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_315 = (r3.xyz + v_314.xyz);
    r3 = vec4<f32>(v_315.xyz, r3.w);
    let v_316 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_316.x, r2.y, v_316.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_317 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_317.xyz, r3.w);
    let v_318 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_318.x, r2.y, v_318.yz);
    let v_319 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_319.x, r2.y, v_319.yz);
    let v_320 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_320.xyz, r1.w);
  }
  let v_321 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_321.xyz, o0.w);
}

fn v_3(v_322 : bool) {
  if (v_322) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @builtin(position) v_323 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v_323);
  return o0;
}
