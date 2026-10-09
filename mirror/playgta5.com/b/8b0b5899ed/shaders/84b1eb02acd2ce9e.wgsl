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

struct cb4_struct {
  tint_symbol_4 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb4_struct;

struct cb2_struct {
  tint_symbol_5 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

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
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r1.x = dot(cb13_13.tint_symbol_4[0u], r1);
  r2 = textureSample(t4, s4, v1.xy.xyxx.xy);
  r1.y = dot(cb13_13.tint_symbol_4[1u], r2);
  r1.x = (r1.y + r1.x);
  r2 = textureSample(t5, s5, v1.xy.xyxx.xy);
  r1.y = dot(cb13_13.tint_symbol_4[2u], r2);
  r2 = textureSample(t6, s6, v1.xy.xyxx.xy);
  r1.z = dot(cb13_13.tint_symbol_4[3u], r2);
  r1.y = (r1.z + r1.y);
  r2 = textureSample(t9, s9, v1.xy.xyxx.xy);
  r3 = textureSample(t7, s7, v1.xy.xyxx.xy);
  let v_3 = ((-(r2.xxxy)).zw + r3.xy);
  r1 = vec4<f32>(r1.xy, v_3.xy);
  let v_4 = fma(r1.xx, r1.zw, r2.xy);
  let v_5 = r1;
  r1 = vec4<f32>(v_4.x, v_5.y, v_4.y, v_5.w);
  r2 = textureSample(t8, s8, v1.xy.xyxx.xy);
  let v_6 = ((-(r1.xzxx)).xy + r2.xy);
  r2 = vec4<f32>(v_6.xy, r2.zw);
  let v_7 = fma(r1.yy, r2.xy, r1.xz);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_5[1u].w, 0.00100000004749745131f);
  let v_9 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  let v_10 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_11.xy, r1.z, v_11.z);
  let v_12 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_13 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  r3 = textureSample(t10, s10, v1.xy.xyxx.xy);
  let v_14 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_14.xy, r3.zw);
  r1.x = dot(r3.xyz, cb12_12.tint_symbol_5[1u].xyz);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_5[0u].zzzz)).x, 0.0f, 1.0f);
  r0.w = (r0.w * v0.w);
  let v_15 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_15.xy, r3.zw);
  let v_16 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = -(v6.xyzx);
  let v_18 = (v_17.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_19 = (r1.yyy * r4.xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_21 = fma(r4.xyz, r1.yyy, v_20.xyz);
  r6 = vec4<f32>(v_21.xyz, r6.w);
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_22 = (r2.www * r6.xyz);
  r6 = vec4<f32>(v_22.xyz, r6.w);
  r2.w = fma(r3.w, cb12_12.tint_symbol_5[0u].y, -500.0f);
  r2.w = max(r2.w, 0.0f);
  let v_23 = -(r2.wwww);
  r3.z = fma(r3.w, cb12_12.tint_symbol_5[0u].y, v_23.z);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.z, 3.0f, r2.w);
  r3.z = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_24 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_24.xyz, r7.w);
  let v_25 = (r7.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r8 = vec4<f32>(v_25.xyz, r8.w);
  let v_26 = fma(r7.xxx, cb6_6.tint_symbol_6[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_26.xyz, r8.w);
  let v_27 = fma(r7.zzz, cb6_6.tint_symbol_6[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_27.xyz, r8.w);
  let v_28 = fma(r8.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r9 = vec4<f32>(v_28.xyz, r9.w);
  let v_29 = &(x0[0u]);
  let v_30 = r9;
  *(v_29) = vec4<f32>(v_30.xyz, (*(v_29)).w);
  let v_31 = fma(r8.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r10 = vec4<f32>(v_31.xyz, r10.w);
  let v_32 = &(x0[1u]);
  let v_33 = r10;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = fma(r8.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r11 = vec4<f32>(v_34.xyz, r11.w);
  let v_35 = &(x0[2u]);
  let v_36 = r11;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r8.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r8 = vec4<f32>(v_37.xyz, r8.w);
  let v_38 = &(x0[3u]);
  let v_39 = r8;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_41 = r12;
  r12 = vec4<f32>(v_41.x, v_40.x, v_41.z, v_40.y);
  r3.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_42 = abs(r11.yyyy);
  r4.w = max(v_42.w, abs(r11.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_43 = (bitcast<u32>(r4.w) != 0u);
  let v_44 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_44, v_43);
  let v_45 = abs(r10.yyyy);
  r5.w = max(v_45.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_46 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_46 != 0u));
  let v_47 = abs(r9.yyyy);
  r5.w = max(v_47.w, abs(r9.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_48 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_48 != 0u));
  let v_49 = x0[bitcast<i32>(r3.w)];
  r9 = vec4<f32>(v_49.xyz, r9.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.w = (r3.w + 0.5f);
  r4.w = (r4.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r3.w = dot(r10, cb6_6.tint_symbol_6[12u]);
  r5.w = dot(r10, cb6_6.tint_symbol_6[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r9.z);
  let v_50 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_50.xy, r11.z, v_50.z);
  r11.z = dpdx(r3.w);
  let v_51 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_51.xyz, r13.w);
  r13.w = dpdy(r3.w);
  let v_52 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_52.xy);
  let v_53 = -(r8.zwzz);
  let v_54 = fma(r11.xz, r13.xz, v_53.xy);
  r14 = vec4<f32>(v_54.xy, r14.zw);
  r6.w = (1.0f / r14.x);
  r7.w = (r11.z * r13.y);
  let v_55 = -(r7.wwww);
  r14.z = fma(r11.x, r13.w, v_55.z);
  let v_56 = (r6.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_56.xy);
  let v_57 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_57.xy);
  let v_58 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_58.xy);
  r3.w = fma((-(r5.wwww)).w, r8.z, r3.w);
  r3.w = fma((-(r5.wwww)).w, r8.w, r3.w);
  let v_59 = bitcast<u32>(r4.w);
  let v_60 = r3.w;
  r12.z = select(r9.z, v_60, (v_59 != 0u));
  r10.z = 0.0f;
  let v_61 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_61.xyz, r9.w);
  let v_62 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_62.xy, r12.zw);
  let v_63 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_63.xyz, r11.w);
  let v_64 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_64.xy, r12.zw);
  let v_65 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_65.xyz, r13.w);
  let v_66 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_66.xy, r12.zw);
  let v_67 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_67.xyz, r14.w);
  let v_68 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_68.xy, r12.zw);
  let v_69 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_69.xyz, r15.w);
  let v_70 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_70.xy, r12.zw);
  let v_71 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_71.xyz, r16.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_72.xy, r12.zw);
  let v_73 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_73.xyz, r17.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_74.xy, r12.zw);
  let v_75 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_75.xyz, r18.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_76.xy, r12.zw);
  let v_77 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_77.xyz, r19.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_79.xyz, r20.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_81.xyz, r21.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_83.xyz, r22.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_85.xyz, r23.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_86.xy, r12.zw);
  let v_87 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_87.xyz, r24.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_88.xy, r12.zw);
  let v_89 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_89.xyz, r25.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_90.xy, r12.zw);
  let v_91 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_91.xyz, r10.w);
  let v_92 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_92.xy, r9.z);
  let v_93 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_93.xy, r11.z);
  let v_94 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_94.xy, r13.z);
  let v_95 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_95.xy, r14.z);
  let v_96 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_96.xy, r15.z);
  let v_97 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_97.xy, r16.z);
  let v_98 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_98.xy, r17.z);
  let v_99 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_99.xy, r18.z);
  let v_100 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_100.xy, r19.z);
  let v_101 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_101.xy, r20.z);
  let v_102 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_102.xy, r21.z);
  let v_103 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_103.xy, r22.z);
  let v_104 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_104.xy, r23.z);
  let v_105 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_105.xy, r24.z);
  let v_106 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_106.xy, r25.z);
  let v_107 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_107.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r3.w = dot(r9, vec4<f32>(1.0f));
  r3.z = clamp(fma(r3.zzzz, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).z, 0.0f, 1.0f);
  let v_108 = abs(r8.yyyy);
  r4.w = max(v_108.w, abs(r8.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.z = ((-(r3.zzzz)).z + 1.0f);
  r3.z = (r4.w * r3.z);
  r3.z = fma(r3.w, 0.0625f, r3.z);
  let v_109 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_109.xyz, r3.w);
  r3.z = min(r3.z, 1.0f);
  r3.w = clamp(fma(v6.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_6[3u].z);
  let v_110 = -(r3.zzzz);
  r3.z = fma(r3.w, v_110.z, r3.z);
  let v_111 = dot(r2.xyz, v_20.xyz);
  r3.w = clamp(vec4<f32>(v_111, v_111, v_111, v_111).w, 0.0f, 1.0f);
  let v_112 = dot(r5.xyz, r2.xyz);
  r8.x = clamp(vec4<f32>(v_112, v_112, v_112, v_112).x, 0.0f, 1.0f);
  let v_113 = dot(r6.xyz, v_20.xyz);
  r8.y = clamp(vec4<f32>(v_113, v_113, v_113, v_113).y, 0.0f, 1.0f);
  let v_114 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_114.xy, r8.zw);
  let v_115 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_115.xy);
  let v_116 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_116.xy);
  let v_117 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_117.xy, r8.zw);
  r4.w = ((-(cb12_12.tint_symbol_5[0u].xxxx)).w + 1.0f);
  let v_118 = fma(cb12_12.tint_symbol_5[0u].xx, r8.xy, r4.ww);
  r8 = vec4<f32>(v_118.xy, r8.zw);
  let v_119 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_119.xy);
  r5.w = (r8.z * 0.125f);
  r6.w = fma((-(r1.xxxx)).w, r8.x, 1.0f);
  r6.x = dot(r2.xyz, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r8.w);
  r6.x = exp2(r6.x);
  r6.x = (r8.y * r6.x);
  r6.x = (r5.w * r6.x);
  r6.x = (r1.x * r6.x);
  r6.x = (r3.w * r6.x);
  r3.w = (r3.w * r6.w);
  let v_120 = fma(r0.xyz, r3.www, r6.xxx);
  r6 = vec4<f32>(v_120.xyz, r6.w);
  let v_121 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_121.xyz, r6.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r9 = vec4<f32>(r9.x, vec3<f32>());
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_122 = (v_17.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_122.xyz, r8.w);
    let v_123 = (v6.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_123.xyz, r9.w);
    r9.x = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[19u].wwww)).x, 0.0f, 1.0f);
    r9.x = (r9.x * cb3_3.tint_symbol_2[19u].w);
    let v_124 = fma(cb3_3.tint_symbol_2[11u].xyz, r9.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_124.xyz, r9.w);
    let v_125 = (r9.xyz + v_17.xyz);
    r9 = vec4<f32>(v_125.xyz, r9.w);
    let v_126 = bitcast<vec3<u32>>(r7.www);
    let v_127 = r8.xyz;
    let v_128 = select(r9.xyz, v_127, (v_126 != vec3<u32>()));
    r8 = vec4<f32>(v_128.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    let v_129 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_129.xyz, r8.w);
    r9.x = dot(r8.xyz, r8.xyz);
    r9.x = inverseSqrt(r9.x);
    let v_130 = (r8.xyz * r9.xxx);
    r8 = vec4<f32>(v_130.xyz, r8.w);
    r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r9.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[11u].w);
    r7.w = (r7.w / r9.x);
    let v_131 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.x = dot(r8.xyz, v_131.xyz);
    r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_132 = dot(r8.xyz, r2.xyz);
    r9.y = clamp(vec4<f32>(v_132, v_132, v_132, v_132).y, 0.0f, 1.0f);
    r9.x = (r9.x * r9.y);
    r9.y = (r7.w * r9.x);
    let v_133 = (r9.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(r9.x, v_133.xyz);
    let v_134 = (r0.xyz * r9.yzw);
    r9 = vec4<f32>(r9.x, v_134.xyz);
    let v_135 = fma(r4.xyz, r1.yyy, r8.xyz);
    r8 = vec4<f32>(v_135.xyz, r8.w);
    r10.x = dot(r8.xyz, r8.xyz);
    r10.x = inverseSqrt(r10.x);
    let v_136 = (r8.xyz * r10.xxx);
    r8 = vec4<f32>(v_136.xyz, r8.w);
    let v_137 = dot(r8.xyz, r5.xyz);
    r10.x = clamp(vec4<f32>(v_137, v_137, v_137, v_137).x, 0.0f, 1.0f);
    r10.x = ((-(r10.xxxx)).x + 1.0f);
    r10.y = (r10.x * r10.x);
    r10.y = (r10.y * r10.y);
    r10.x = (r10.y * r10.x);
    r10.x = fma(cb12_12.tint_symbol_5[0u].x, r10.x, r4.w);
    let v_138 = dot(r8.xyz, r2.xyz);
    r8.x = clamp(vec4<f32>(v_138, v_138, v_138, v_138).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.w);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r10.x);
    r8.x = (r9.x * r8.x);
    r7.w = (r7.w * r8.x);
    r7.w = (r5.w * r7.w);
    let v_139 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_139.xyz, r8.w);
  }
  r7.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.w) != 0u)) {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    let v_140 = bitcast<u32>(r9.x);
    let v_141 = r7.w;
    r3.w = select(r3.w, v_141, (v_140 != 0u));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_142 = (v_17.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_142.xyz, r10.w);
      let v_143 = (v6.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_143.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[20u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[20u].w);
      let v_144 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_144.xyz, r11.w);
      let v_145 = (r11.xyz + v_17.xyz);
      r11 = vec4<f32>(v_145.xyz, r11.w);
      let v_146 = bitcast<vec3<u32>>(r7.www);
      let v_147 = r10.xyz;
      let v_148 = select(r11.xyz, v_147, (v_146 != vec3<u32>()));
      r10 = vec4<f32>(v_148.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_149 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_149.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_150 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_150.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[12u].w);
      r7.w = (r7.w / r9.x);
      let v_151 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.x = dot(r10.xyz, v_151.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_152 = dot(r10.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_152, v_152, v_152, v_152).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_153 = (r10.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_153.xyz, r11.w);
      let v_154 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_154.xyz);
      let v_155 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_155.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_156 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_156.xyz, r10.w);
      let v_157 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_157, v_157, v_157, v_157).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_5[0u].x, r10.w, r4.w);
      let v_158 = dot(r10.xyz, r2.xyz);
      r10.x = clamp(vec4<f32>(v_158, v_158, v_158, v_158).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_159 = fma(r7.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_159.xyz, r8.w);
    }
  } else {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_160 = (v_17.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_160.xyz, r10.w);
      let v_161 = (v6.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_161.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[21u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[21u].w);
      let v_162 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_162.xyz, r11.w);
      let v_163 = (r11.xyz + v_17.xyz);
      r11 = vec4<f32>(v_163.xyz, r11.w);
      let v_164 = bitcast<vec3<u32>>(r7.www);
      let v_165 = r10.xyz;
      let v_166 = select(r11.xyz, v_165, (v_164 != vec3<u32>()));
      r10 = vec4<f32>(v_166.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_167 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_167.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_168 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[13u].w);
      r7.w = (r7.w / r9.x);
      let v_169 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.x = dot(r10.xyz, v_169.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_170 = dot(r10.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_170, v_170, v_170, v_170).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_171 = (r10.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_171.xyz, r11.w);
      let v_172 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_172.xyz);
      let v_173 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_174 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      let v_175 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_175, v_175, v_175, v_175).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_5[0u].x, r10.w, r4.w);
      let v_176 = dot(r10.xyz, r2.xyz);
      r10.x = clamp(vec4<f32>(v_176, v_176, v_176, v_176).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_177 = fma(r7.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_177.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_178 = (v_17.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_178.xyz, r10.w);
      let v_179 = (v6.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_179.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[22u].w);
      let v_180 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_180.xyz, r11.w);
      let v_181 = (r11.xyz + v_17.xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      let v_182 = bitcast<vec3<u32>>(r3.www);
      let v_183 = r10.xyz;
      let v_184 = select(r11.xyz, v_183, (v_182 != vec3<u32>()));
      r10 = vec4<f32>(v_184.xyz, r10.w);
      r3.w = dot(r10.xyz, r10.xyz);
      let v_185 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_185.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_186 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_186.xyz, r10.w);
      r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r3.w, cb3_3.tint_symbol_2[14u].w);
      r3.w = (r3.w / r7.w);
      let v_187 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.w = dot(r10.xyz, v_187.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_188 = dot(r10.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_188, v_188, v_188, v_188).x, 0.0f, 1.0f);
      r7.w = (r7.w * r9.x);
      r9.x = (r3.w * r7.w);
      let v_189 = (r9.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_189.xyz, r11.w);
      let v_190 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_190.xyz);
      let v_191 = fma(r4.xyz, r1.yyy, r10.xyz);
      r4 = vec4<f32>(v_191.xyz, r4.w);
      r1.y = dot(r4.xyz, r4.xyz);
      r1.y = inverseSqrt(r1.y);
      let v_192 = (r1.yyy * r4.xyz);
      r4 = vec4<f32>(v_192.xyz, r4.w);
      let v_193 = dot(r4.xyz, r5.xyz);
      r1.y = clamp(vec4<f32>(v_193, v_193, v_193, v_193).y, 0.0f, 1.0f);
      r1.y = ((-(r1.yyyy)).y + 1.0f);
      r9.x = (r1.y * r1.y);
      r9.x = (r9.x * r9.x);
      r1.y = (r1.y * r9.x);
      r1.y = fma(cb12_12.tint_symbol_5[0u].x, r1.y, r4.w);
      let v_194 = dot(r4.xyz, r2.xyz);
      r4.x = clamp(vec4<f32>(v_194, v_194, v_194, v_194).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r8.w);
      r4.x = exp2(r4.x);
      r1.y = (r1.y * r4.x);
      r1.y = (r7.w * r1.y);
      r1.y = (r3.w * r1.y);
      r1.y = (r5.w * r1.y);
      let v_195 = fma(r1.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_195.xyz, r8.w);
    }
  }
  r1.y = (r6.w * r6.w);
  r1.x = (r1.x * r1.x);
  let v_196 = (r8.xyz * r1.xxx);
  r4 = vec4<f32>(v_196.xyz, r4.w);
  let v_197 = fma(r1.yyy, r9.yzw, r4.xyz);
  r4 = vec4<f32>(v_197.xyz, r4.w);
  let v_198 = fma(r6.xyz, r3.zzz, r4.xyz);
  r4 = vec4<f32>(v_198.xyz, r4.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_199 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r1 = vec4<f32>(r1.x, v_199.xyz);
  r3.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_200 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_200.xyz, r6.w);
  let v_201 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_201.xyz, r6.w);
  let v_202 = fma(r1.yzw, r3.zzz, r6.xyz);
  r1 = vec4<f32>(r1.x, v_202.xyz);
  let v_203 = (r3.yyy * r1.yzw);
  r1 = vec4<f32>(r1.x, v_203.xyz);
  let v_204 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_204.xyz, r6.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_205 = dot(r8.xyz, r2.xyz);
  r1.x = clamp(vec4<f32>(v_205, v_205, v_205, v_205).x, 0.0f, 1.0f);
  let v_206 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r6 = vec4<f32>(v_206.xyz, r6.w);
  let v_207 = fma(r6.xyz, r3.xxx, r1.yzw);
  r1 = vec4<f32>(v_207.xyz, r1.w);
  let v_208 = (r6.www * r1.xyz);
  r1 = vec4<f32>(v_208.xyz, r1.w);
  let v_209 = fma(r1.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_209.xyz, r0.w);
  r1.x = ((-(r6.wwww)).x + 1.0f);
  r1.y = dot((-(r5.xyzx)).xyz, r2.xyz);
  r1.y = (r1.y + r1.y);
  let v_210 = -(r1.yyyy);
  let v_211 = -(r5.xxyz);
  let v_212 = fma(r2.xyz, v_210.yzw, v_211.yzw);
  r1 = vec4<f32>(r1.x, v_212.xyz);
  let v_213 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_213.xy, r2.zw);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.z = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.w = (r2.x * cb5_5.tint_symbol_3[6u].z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r2.z)));
  r3.z = fma(r2.x, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.x = (r2.x * r2.x);
  r2.x = fma(r2.x, 5.0f, r2.z);
  let v_214 = bitcast<u32>(r2.w);
  let v_215 = r3.z;
  r2.x = select(r2.x, v_215, (v_214 != 0u));
  let v_216 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_216.xyz, r4.w);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_217 = (r4.xyz / r1.yyy);
  r4 = vec4<f32>(v_217.xyz, r4.w);
  let v_218 = ((-(r4.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_218.xyz, r4.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_219 = bitcast<vec2<u32>>(r1.yy);
  let v_220 = r4.xy;
  let v_221 = select(r4.zy, v_220, (v_219 != vec2<u32>()));
  let v_222 = r1;
  r1 = vec4<f32>(v_222.x, v_221.xy, v_222.w);
  let v_223 = r2.x;
  r4 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_223);
  r1.y = max(r3.y, r3.x);
  let v_224 = (r1.yyy * r4.xyz);
  r1 = vec4<f32>(r1.x, v_224.xyz);
  let v_225 = (r2.yyy * r1.yzw);
  r2 = vec4<f32>(v_225.xyz, r2.w);
  let v_226 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_226.xyz, r2.w);
  let v_227 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_227.xyz);
  let v_228 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_228.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.x = sqrt(r0.w);
    let v_229 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_229.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r7.z);
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
    let v_231 = (r0.www * r7.xyz);
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
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_243 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_243.xyz, r3.w);
    let v_244 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_244.xy, r1.z, v_244.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_245 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_245.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_246 = -(r0.xyxz);
    let v_247 = fma(r1.xyw, r0.www, v_246.xyw);
    r1 = vec4<f32>(v_247.xy, r1.z, v_247.z);
    let v_248 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_248.xyz, r1.w);
  } else {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.w = sqrt(r0.w);
    let v_249 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_249.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r7.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_250 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_250 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_251 = (r0.www * r7.xyz);
    r3 = vec4<f32>(v_251.xyz, r3.w);
    let v_252 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_252, v_252, v_252, v_252).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_253 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_253, v_253, v_253, v_253).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_254 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_254.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_255 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_255.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_256 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_256.xyz, r3.w);
    let v_257 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_257.xyz, r3.w);
    let v_258 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_258.xyz, r4.w);
    let v_259 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_259.xyz, r3.w);
    let v_260 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_261 = (r3.xyz + v_260.xyz);
    r3 = vec4<f32>(v_261.xyz, r3.w);
    let v_262 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_262.x, r2.y, v_262.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_263 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_263.xyz, r3.w);
    let v_264 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_264.x, r2.y, v_264.yz);
    let v_265 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_265.x, r2.y, v_265.yz);
    let v_266 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_266.xyz, r1.w);
  }
  let v_267 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_267.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_268 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6, v_268);
  return o0;
}
