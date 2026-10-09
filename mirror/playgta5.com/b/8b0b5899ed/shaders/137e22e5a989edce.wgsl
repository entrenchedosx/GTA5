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

struct cb3_struct {
  tint_symbol_4 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

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

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r1 = textureSample(t6, s6, v2.xy.xyxx.xy);
  let v_3 = (v2.xy * cb11_11.tint_symbol_5[0u].zw);
  r2 = vec4<f32>(v_3.xy, r2.zw);
  r3 = textureSample(t3, s3, r2.xyxx.xy);
  let v_4 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(r2.xy, v_4.xy);
  let v_5 = (r2.xy * vec2<f32>(3.1700000762939453125f));
  r2 = vec4<f32>(v_5.xy, r2.zw);
  r3 = textureSample(t3, s3, r2.xyxx.xy);
  let v_6 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_6.xy, r2.zw);
  let v_7 = (r2.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_7.xy, r2.zw);
  let v_8 = fma(r2.zw, vec2<f32>(0.5f), r2.xy);
  r2 = vec4<f32>(v_8.xy, r2.zw);
  r1.z = ((-(r2.xxxx)).z * cb11_11.tint_symbol_5[0u].x);
  r1.z = fma(r1.z, r1.w, 1.0f);
  let v_9 = (r2.xy * cb11_11.tint_symbol_5[0u].yy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  r0 = (r0 * r1.zzzz);
  r3 = textureSample(t5, s5, v2.xy.xyxx.xy);
  let v_10 = fma(r2.xy, r1.ww, r3.xy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  let v_11 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_11.xy, r2.zw);
  r1.w = dot(r2.xy, r2.xy);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r2.z = max(cb12_12.tint_symbol_4[2u].x, 0.00100000004749745131f);
  let v_12 = (r2.zz * r2.xy);
  r2 = vec4<f32>(v_12.xy, r2.zw);
  let v_13 = (r2.yyy * v5.xyz);
  r2 = vec4<f32>(r2.x, v_13.xyz);
  let v_14 = fma(r2.xxx, v4.xyz, r2.yzw);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = fma(r1.www, v3.xyz, r2.xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_16 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_16.xy, r2.z, v_16.z);
  let v_17 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_17.xy, r1.zw);
  r1.x = (r1.x * cb12_12.tint_symbol_4[0u].z);
  r1.x = clamp(((r1.zzzz * r1.xxxx)).x, 0.0f, 1.0f);
  let v_18 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r0.w = (r0.w * v0.w);
  let v_19 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_19.xy, r3.zw);
  let v_20 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = ((-(v6.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_22 = (r1.zzz * r4.xyz);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  let v_23 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_24 = fma(r4.xyz, r1.zzz, v_23.xyz);
  r6 = vec4<f32>(v_24.xyz, r6.w);
  r1.z = dot(r6.xyz, r6.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_25 = (r1.zzz * r6.xyz);
  r6 = vec4<f32>(v_25.xyz, r6.w);
  let v_26 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_26.xy, r3.zw);
  r1.z = fma(r1.y, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r1.z = max(r1.z, 0.0f);
  let v_27 = -(r1.zzzz);
  r1.y = fma(r1.y, cb12_12.tint_symbol_4[0u].y, v_27.y);
  r1.z = (r1.z * 558.0f);
  r1.y = fma(r1.y, 3.0f, r1.z);
  r1.z = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_28 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  let v_29 = (r4.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_29.xyz, r7.w);
  let v_30 = fma(r4.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_30.xyz, r7.w);
  let v_31 = fma(r4.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_31.xyz, r7.w);
  let v_32 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_32.xyz, r8.w);
  let v_33 = &(x0[0u]);
  let v_34 = r8;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_35.xyz, r9.w);
  let v_36 = &(x0[1u]);
  let v_37 = r9;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_38.xyz, r10.w);
  let v_39 = &(x0[2u]);
  let v_40 = r10;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  let v_42 = &(x0[3u]);
  let v_43 = r7;
  *(v_42) = vec4<f32>(v_43.xyz, (*(v_42)).w);
  let v_44 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_45 = r11;
  r11 = vec4<f32>(v_45.x, v_44.x, v_45.z, v_44.y);
  r3.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_46 = abs(r10.yyyy);
  r3.w = max(v_46.w, abs(r10.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_47 = (bitcast<u32>(r3.w) != 0u);
  let v_48 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_48, v_47);
  let v_49 = abs(r9.yyyy);
  r4.w = max(v_49.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_50 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_50 != 0u));
  let v_51 = abs(r8.yyyy);
  r4.w = max(v_51.w, abs(r8.xxxx).w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_52 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_52 != 0u));
  let v_53 = x0[bitcast<i32>(r3.z)];
  r8 = vec4<f32>(v_53.xyz, r8.w);
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
  let v_54 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_54.xy, r10.z, v_54.z);
  r10.z = dpdx(r3.z);
  let v_55 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_55.xyz, r12.w);
  r12.w = dpdy(r3.z);
  let v_56 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_56.xy);
  let v_57 = -(r7.zwzz);
  let v_58 = fma(r10.xz, r12.xz, v_57.xy);
  r13 = vec4<f32>(v_58.xy, r13.zw);
  r5.w = (1.0f / r13.x);
  r6.w = (r10.z * r12.y);
  let v_59 = -(r6.wwww);
  r13.z = fma(r10.x, r12.w, v_59.z);
  let v_60 = (r5.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_60.xy);
  let v_61 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_61.xy);
  let v_62 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_62.xy);
  r3.z = fma((-(r4.wwww)).z, r7.z, r3.z);
  r3.z = fma((-(r4.wwww)).z, r7.w, r3.z);
  let v_63 = bitcast<u32>(r3.w);
  let v_64 = r3.z;
  r11.z = select(r8.z, v_64, (v_63 != 0u));
  r9.z = 0.0f;
  let v_65 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_65.xyz, r8.w);
  let v_66 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_66.xy, r11.zw);
  let v_67 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_67.xyz, r10.w);
  let v_68 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_68.xy, r11.zw);
  let v_69 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_69.xyz, r12.w);
  let v_70 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_70.xy, r11.zw);
  let v_71 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_71.xyz, r13.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_72.xy, r11.zw);
  let v_73 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_73.xyz, r14.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_74.xy, r11.zw);
  let v_75 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_75.xyz, r15.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_77.xyz, r16.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_79.xyz, r17.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_81.xyz, r18.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_83.xyz, r19.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_85.xyz, r20.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_86.xy, r11.zw);
  let v_87 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_87.xyz, r21.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_88.xy, r11.zw);
  let v_89 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_89.xyz, r22.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_90.xy, r11.zw);
  let v_91 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_91.xyz, r23.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_92.xy, r11.zw);
  let v_93 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_93.xyz, r24.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_94.xy, r11.zw);
  let v_95 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_95.xyz, r9.w);
  let v_96 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_96.xy, r8.z);
  let v_97 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_97.xy, r10.z);
  let v_98 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_98.xy, r12.z);
  let v_99 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_99.xy, r13.z);
  let v_100 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_100.xy, r14.z);
  let v_101 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_101.xy, r15.z);
  let v_102 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_102.xy, r16.z);
  let v_103 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_103.xy, r17.z);
  let v_104 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_104.xy, r18.z);
  let v_105 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_105.xy, r19.z);
  let v_106 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_106.xy, r20.z);
  let v_107 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_107.xy, r21.z);
  let v_108 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_108.xy, r22.z);
  let v_109 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_109.xy, r23.z);
  let v_110 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_110.xy, r24.z);
  let v_111 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_111.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r3.z = dot(r8, vec4<f32>(1.0f));
  r1.z = clamp(fma(r1.zzzz, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).z, 0.0f, 1.0f);
  let v_112 = abs(r7.yyyy);
  r3.w = max(v_112.w, abs(r7.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = (r3.w * r1.z);
  r1.z = fma(r3.z, 0.0625f, r1.z);
  r1.z = (r1.z * r1.z);
  r1.z = min(r1.z, 1.0f);
  r3.z = clamp(fma(v6.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).z, 0.0f, 1.0f);
  r3.z = sqrt(r3.z);
  r3.z = (r3.z * cb6_6.tint_symbol_6[3u].z);
  let v_113 = -(r1.zzzz);
  r1.z = fma(r3.z, v_113.z, r1.z);
  let v_114 = dot(r2.xyw, v_23.xyz);
  r3.z = clamp(vec4<f32>(v_114, v_114, v_114, v_114).z, 0.0f, 1.0f);
  let v_115 = dot(r5.xyz, r2.xyw);
  r5.x = clamp(vec4<f32>(v_115, v_115, v_115, v_115).x, 0.0f, 1.0f);
  let v_116 = dot(r6.xyz, v_23.xyz);
  r5.y = clamp(vec4<f32>(v_116, v_116, v_116, v_116).y, 0.0f, 1.0f);
  let v_117 = ((-(r5.xyxx)).xy + vec2<f32>(1.0f));
  r5 = vec4<f32>(v_117.xy, r5.zw);
  let v_118 = (r5.xy * r5.xy);
  r5 = vec4<f32>(r5.xy, v_118.xy);
  let v_119 = (r5.zw * r5.zw);
  r5 = vec4<f32>(r5.xy, v_119.xy);
  let v_120 = (r5.xy * r5.zw);
  r5 = vec4<f32>(v_120.xy, r5.zw);
  r3.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_121 = fma(cb12_12.tint_symbol_4[0u].xx, r5.xy, r3.ww);
  r5 = vec4<f32>(v_121.xy, r5.zw);
  let v_122 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(r5.xy, v_122.xy);
  r1.y = (r5.z * 0.125f);
  r3.w = fma((-(r1.xxxx)).w, r5.x, 1.0f);
  r4.w = dot(r2.xyw, r6.xyz);
  r4.w = clamp(((r4.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r4.w = log2(r4.w);
  r4.w = (r4.w * r5.w);
  r4.w = exp2(r4.w);
  r4.w = (r5.y * r4.w);
  r1.y = (r1.y * r4.w);
  r1.x = (r1.x * r1.y);
  r1.x = (r3.z * r1.x);
  r1.y = (r3.w * r3.z);
  let v_123 = fma(r0.xyz, r1.yyy, r1.xxx);
  r5 = vec4<f32>(v_123.xyz, r5.w);
  let v_124 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_124.xyz, r5.w);
  r1.x = fma(r2.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_125 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_125.xyz, r6.w);
  r1.y = ((-(cb2_2.tint_symbol_1[16u].zzzz)).y + 1.0f);
  let v_126 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_126.xyz, r7.w);
  let v_127 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_127.xyz, r7.w);
  let v_128 = fma(r6.xyz, r1.yyy, r7.xyz);
  r6 = vec4<f32>(v_128.xyz, r6.w);
  let v_129 = (r3.yyy * r6.xyz);
  r6 = vec4<f32>(v_129.xyz, r6.w);
  let v_130 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(v_130.xy, r1.z, v_130.z);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_131 = dot(r7.xyz, r2.xyw);
  r2.x = clamp(vec4<f32>(v_131, v_131, v_131, v_131).x, 0.0f, 1.0f);
  let v_132 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.xxx, r1.xyw);
  r1 = vec4<f32>(v_132.xy, r1.z, v_132.z);
  let v_133 = fma(r1.xyw, r3.xxx, r6.xyz);
  r1 = vec4<f32>(v_133.xy, r1.z, v_133.z);
  let v_134 = (r3.www * r1.xyw);
  r1 = vec4<f32>(v_134.xy, r1.z, v_134.z);
  let v_135 = (r0.xyz * r1.xyw);
  r0 = vec4<f32>(v_135.xyz, r0.w);
  let v_136 = fma(r5.xyz, r1.zzz, r0.xyz);
  r0 = vec4<f32>(v_136.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r4.xyz, r4.xyz);
    r1.x = sqrt(r0.w);
    let v_137 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_137.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r4.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_138 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_138 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_139 = (r0.www * r4.xyz);
    r2 = vec4<f32>(v_139.xyz, r2.w);
    let v_140 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_140, v_140, v_140, v_140).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_141 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_141, v_141, v_141, v_141).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_142 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_142.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_143 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_143.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_144 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_144.xyz, r2.w);
    let v_145 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_145.xyz, r2.w);
    let v_146 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_146.xyz, r3.w);
    let v_147 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_147.xyz, r2.w);
    let v_148 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_149 = (r2.xyz + v_148.xyz);
    r2 = vec4<f32>(v_149.xyz, r2.w);
    let v_150 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_150.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_151 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_151.xyz, r3.w);
    let v_152 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_152.xy, r1.z, v_152.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_153 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_153.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_154 = -(r0.xyxz);
    let v_155 = fma(r1.xyw, r0.www, v_154.xyw);
    r1 = vec4<f32>(v_155.xy, r1.z, v_155.z);
    let v_156 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_156.xyz, r1.w);
  } else {
    r0.w = dot(r4.xyz, r4.xyz);
    r1.w = sqrt(r0.w);
    let v_157 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_157.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r4.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_158 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_158 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_159 = (r0.www * r4.xyz);
    r3 = vec4<f32>(v_159.xyz, r3.w);
    let v_160 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_160, v_160, v_160, v_160).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_161 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_161, v_161, v_161, v_161).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_162 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_162.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_163 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_163.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_164 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_164.xyz, r3.w);
    let v_165 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_165.xyz, r3.w);
    let v_166 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_166.xyz, r4.w);
    let v_167 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_167.xyz, r3.w);
    let v_168 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_169 = (r3.xyz + v_168.xyz);
    r3 = vec4<f32>(v_169.xyz, r3.w);
    let v_170 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_170.x, r2.y, v_170.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_171 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_171.xyz, r3.w);
    let v_172 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_172.x, r2.y, v_172.yz);
    let v_173 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_173.x, r2.y, v_173.yz);
    let v_174 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_174.xyz, r1.w);
  }
  let v_175 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_175.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_176 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_176);
  return o0;
}
