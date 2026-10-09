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
  tint_symbol_7 : array<vec4<u32>, 3u>,
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
  let v_17 = ((-(v6.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_18 = (r1.yyy * r4.xyz);
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_20 = fma(r4.xyz, r1.yyy, v_19.xyz);
  r6 = vec4<f32>(v_20.xyz, r6.w);
  r1.y = dot(r6.xyz, r6.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_21 = (r1.yyy * r6.xyz);
  r6 = vec4<f32>(v_21.xyz, r6.w);
  let v_22 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_22.xy, r3.zw);
  r1.y = fma(r3.w, cb12_12.tint_symbol_5[0u].y, -500.0f);
  r1.y = max(r1.y, 0.0f);
  let v_23 = -(r1.yyyy);
  r2.w = fma(r3.w, cb12_12.tint_symbol_5[0u].y, v_23.w);
  r1.y = (r1.y * 558.0f);
  r1.y = fma(r2.w, 3.0f, r1.y);
  r2.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_24 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = (r4.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_25.xyz, r7.w);
  let v_26 = fma(r4.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_26.xyz, r7.w);
  let v_27 = fma(r4.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_27.xyz, r7.w);
  let v_28 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_28.xyz, r8.w);
  let v_29 = &(x0[0u]);
  let v_30 = r8;
  *(v_29) = vec4<f32>(v_30.xyz, (*(v_29)).w);
  let v_31 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_31.xyz, r9.w);
  let v_32 = &(x0[1u]);
  let v_33 = r9;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_34.xyz, r10.w);
  let v_35 = &(x0[2u]);
  let v_36 = r10;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_37.xyz, r7.w);
  let v_38 = &(x0[3u]);
  let v_39 = r7;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_41 = r11;
  r11 = vec4<f32>(v_41.x, v_40.x, v_41.z, v_40.y);
  r3.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_42 = abs(r10.yyyy);
  r3.w = max(v_42.w, abs(r10.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_43 = (bitcast<u32>(r3.w) != 0u);
  let v_44 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_44, v_43);
  let v_45 = abs(r9.yyyy);
  r4.w = max(v_45.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_46 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_46 != 0u));
  let v_47 = abs(r8.yyyy);
  r4.w = max(v_47.w, abs(r8.xxxx).w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_48 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_48 != 0u));
  let v_49 = x0[bitcast<i32>(r3.z)];
  r8 = vec4<f32>(v_49.xyz, r8.w);
  r3.z = f32(bitcast<i32>(r3.z));
  r3.w = (r3.z + 0.5f);
  r3.w = (r3.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.zzzz)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r3.z = dot(r9, cb6_6.tint_symbol_6[12u]);
  r4.w = dot(r9, cb6_6.tint_symbol_6[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r3.z == 0.0f))));
  r3.z = ((-(r3.zzzz)).z + r8.z);
  let v_50 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_50.xy, r10.z, v_50.z);
  r10.z = dpdx(r3.z);
  let v_51 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_51.xyz, r12.w);
  r12.w = dpdy(r3.z);
  let v_52 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_52.xy);
  let v_53 = -(r7.zwzz);
  let v_54 = fma(r10.xz, r12.xz, v_53.xy);
  r13 = vec4<f32>(v_54.xy, r13.zw);
  r5.w = (1.0f / r13.x);
  r6.w = (r10.z * r12.y);
  let v_55 = -(r6.wwww);
  r13.z = fma(r10.x, r12.w, v_55.z);
  let v_56 = (r5.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_56.xy);
  let v_57 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_57.xy);
  let v_58 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_58.xy);
  r3.z = fma((-(r4.wwww)).z, r7.z, r3.z);
  r3.z = fma((-(r4.wwww)).z, r7.w, r3.z);
  let v_59 = bitcast<u32>(r3.w);
  let v_60 = r3.z;
  r11.z = select(r8.z, v_60, (v_59 != 0u));
  r9.z = 0.0f;
  let v_61 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_61.xyz, r8.w);
  let v_62 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_62.xy, r11.zw);
  let v_63 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_63.xyz, r10.w);
  let v_64 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_64.xy, r11.zw);
  let v_65 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_65.xyz, r12.w);
  let v_66 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_66.xy, r11.zw);
  let v_67 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_67.xyz, r13.w);
  let v_68 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_68.xy, r11.zw);
  let v_69 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_69.xyz, r14.w);
  let v_70 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_70.xy, r11.zw);
  let v_71 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_71.xyz, r15.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_72.xy, r11.zw);
  let v_73 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_73.xyz, r16.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_74.xy, r11.zw);
  let v_75 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_75.xyz, r17.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_77.xyz, r18.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_79.xyz, r19.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_81.xyz, r20.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_83.xyz, r21.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_85.xyz, r22.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_86.xy, r11.zw);
  let v_87 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_87.xyz, r23.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_88.xy, r11.zw);
  let v_89 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_89.xyz, r24.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
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
  r3.z = dot(r8, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_108 = abs(r7.yyyy);
  r3.w = max(v_108.w, abs(r7.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r3.w * r2.w);
  r2.w = fma(r3.z, 0.0625f, r2.w);
  r2.w = (r2.w * r2.w);
  r2.w = min(r2.w, 1.0f);
  r3.z = clamp(fma(v6.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).z, 0.0f, 1.0f);
  r3.z = sqrt(r3.z);
  r3.z = (r3.z * cb6_6.tint_symbol_6[3u].z);
  let v_109 = -(r2.wwww);
  r2.w = fma(r3.z, v_109.w, r2.w);
  let v_110 = dot(r2.xyz, v_19.xyz);
  r3.z = clamp(vec4<f32>(v_110, v_110, v_110, v_110).z, 0.0f, 1.0f);
  let v_111 = dot(r5.xyz, r2.xyz);
  r7.x = clamp(vec4<f32>(v_111, v_111, v_111, v_111).x, 0.0f, 1.0f);
  let v_112 = dot(r6.xyz, v_19.xyz);
  r7.y = clamp(vec4<f32>(v_112, v_112, v_112, v_112).y, 0.0f, 1.0f);
  let v_113 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_113.xy, r7.zw);
  let v_114 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_114.xy);
  let v_115 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_115.xy);
  let v_116 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_116.xy, r7.zw);
  r3.w = ((-(cb12_12.tint_symbol_5[0u].xxxx)).w + 1.0f);
  let v_117 = fma(cb12_12.tint_symbol_5[0u].xx, r7.xy, r3.ww);
  r7 = vec4<f32>(v_117.xy, r7.zw);
  let v_118 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_118.xy);
  r3.w = (r7.z * 0.125f);
  r4.w = fma((-(r1.xxxx)).w, r7.x, 1.0f);
  r5.w = dot(r2.xyz, r6.xyz);
  r5.w = clamp(((r5.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r5.w = log2(r5.w);
  r5.w = (r5.w * r7.w);
  r5.w = exp2(r5.w);
  r5.w = (r7.y * r5.w);
  r3.w = (r3.w * r5.w);
  r1.x = (r1.x * r3.w);
  r1.x = (r3.z * r1.x);
  r3.z = (r3.z * r4.w);
  let v_119 = fma(r0.xyz, r3.zzz, r1.xxx);
  r6 = vec4<f32>(v_119.xyz, r6.w);
  let v_120 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_120.xyz, r6.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_121 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(v_121.xyz, r7.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_122 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_122.xyz, r8.w);
  let v_123 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_123.xyz, r8.w);
  let v_124 = fma(r7.xyz, r1.zzz, r8.xyz);
  r7 = vec4<f32>(v_124.xyz, r7.w);
  let v_125 = (r3.yyy * r7.xyz);
  r7 = vec4<f32>(v_125.xyz, r7.w);
  let v_126 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(v_126.x, r1.y, v_126.yz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_127 = dot(r8.xyz, r2.xyz);
  r3.z = clamp(vec4<f32>(v_127, v_127, v_127, v_127).z, 0.0f, 1.0f);
  let v_128 = fma(cb3_3.tint_symbol_2[49u].xyz, r3.zzz, r1.xzw);
  r1 = vec4<f32>(v_128.x, r1.y, v_128.yz);
  let v_129 = fma(r1.xzw, r3.xxx, r7.xyz);
  r1 = vec4<f32>(v_129.x, r1.y, v_129.yz);
  let v_130 = (r4.www * r1.xzw);
  r1 = vec4<f32>(v_130.x, r1.y, v_130.yz);
  let v_131 = (r0.xyz * r1.xzw);
  r0 = vec4<f32>(v_131.xyz, r0.w);
  let v_132 = fma(r6.xyz, r2.www, r0.xyz);
  r0 = vec4<f32>(v_132.xyz, r0.w);
  r1.x = ((-(r4.wwww)).x + 1.0f);
  r1.z = dot((-(r5.xyzx)).xyz, r2.xyz);
  r1.z = (r1.z + r1.z);
  let v_133 = -(r1.zzzz);
  let v_134 = -(r5.xyzx);
  let v_135 = fma(r2.xyz, v_133.xyz, v_134.xyz);
  r2 = vec4<f32>(v_135.xyz, r2.w);
  let v_136 = clamp(((r1.yyyy * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_137 = r1;
  r1 = vec4<f32>(v_137.x, v_136.xy, v_137.w);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.w = (r1.y * cb5_5.tint_symbol_3[6u].z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.w)));
  r3.z = fma(r1.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.y = (r1.y * r1.y);
  r1.y = fma(r1.y, 5.0f, r1.w);
  let v_138 = bitcast<u32>(r2.w);
  let v_139 = r3.z;
  r1.y = select(r1.y, v_139, (v_138 != 0u));
  let v_140 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_140.xy, r2.z, v_140.z);
  r1.w = (abs(r2.zzzz).w + 1.0f);
  let v_141 = (r2.xyw / r1.www);
  r2 = vec4<f32>(v_141.xy, r2.z, v_141.z);
  let v_142 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_142.xy, r2.z, v_142.z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_143 = bitcast<vec2<u32>>(r1.ww);
  let v_144 = r2.xy;
  let v_145 = select(r2.wy, v_144, (v_143 != vec2<u32>()));
  r2 = vec4<f32>(v_145.xy, r2.zw);
  let v_146 = r1.y;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_146);
  r1.y = max(r3.y, r3.x);
  let v_147 = (r1.yyy * r2.xyz);
  r2 = vec4<f32>(v_147.xyz, r2.w);
  let v_148 = (r1.zzz * r2.xyz);
  r1 = vec4<f32>(r1.x, v_148.xyz);
  let v_149 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_149.xyz);
  let v_150 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_150.xyz);
  let v_151 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_151.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r4.xyz, r4.xyz);
    r1.x = sqrt(r0.w);
    let v_152 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_152.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r4.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_153 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_153 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_154 = (r0.www * r4.xyz);
    r2 = vec4<f32>(v_154.xyz, r2.w);
    let v_155 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_155, v_155, v_155, v_155).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_156 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_156, v_156, v_156, v_156).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_157 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_157.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_158 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_158.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_159 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_159.xyz, r2.w);
    let v_160 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_160.xyz, r2.w);
    let v_161 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_161.xyz, r3.w);
    let v_162 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_162.xyz, r2.w);
    let v_163 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_164 = (r2.xyz + v_163.xyz);
    r2 = vec4<f32>(v_164.xyz, r2.w);
    let v_165 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_165.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_166 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_166.xyz, r3.w);
    let v_167 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_167.xy, r1.z, v_167.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_168 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_168.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_169 = -(r0.xyxz);
    let v_170 = fma(r1.xyw, r0.www, v_169.xyw);
    r1 = vec4<f32>(v_170.xy, r1.z, v_170.z);
    let v_171 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_171.xyz, r1.w);
  } else {
    r0.w = dot(r4.xyz, r4.xyz);
    r1.w = sqrt(r0.w);
    let v_172 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_172.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r4.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_173 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_173 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_174 = (r0.www * r4.xyz);
    r3 = vec4<f32>(v_174.xyz, r3.w);
    let v_175 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_175, v_175, v_175, v_175).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_176 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_176, v_176, v_176, v_176).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_177 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_177.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_178 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_178.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_179 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_179.xyz, r3.w);
    let v_180 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_180.xyz, r3.w);
    let v_181 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_181.xyz, r4.w);
    let v_182 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_182.xyz, r3.w);
    let v_183 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_184 = (r3.xyz + v_183.xyz);
    r3 = vec4<f32>(v_184.xyz, r3.w);
    let v_185 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_185.x, r2.y, v_185.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_186 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_186.xyz, r3.w);
    let v_187 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_187.x, r2.y, v_187.yz);
    let v_188 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_188.x, r2.y, v_188.yz);
    let v_189 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_189.xyz, r1.w);
  }
  let v_190 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_190.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_191 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6, v_191);
  return o0;
}
