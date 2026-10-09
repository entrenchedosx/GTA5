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

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v8 : vec4<f32>;

var<private> v9 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v8 = v_2;
  x1[0u].x = v9[0u];
  x1[0u].y = v9[1u];
  x1[0u].z = v9[2u];
  x1[0u].w = v9[3u];
  r0 = textureSample(t0, s0, v2.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t5, s5, v2.zwzz.xy);
  r2 = textureSample(t7, s7, v2.xyxx.xy);
  let v_4 = (v2.xy * cb11_11.tint_symbol_5[0u].zw);
  r3 = vec4<f32>(v_4.xy, r3.zw);
  r4 = textureSample(t3, s3, r3.xyxx.xy);
  let v_5 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(r3.xy, v_5.xy);
  let v_6 = (r3.xy * vec2<f32>(3.1700000762939453125f));
  r3 = vec4<f32>(v_6.xy, r3.zw);
  r4 = textureSample(t3, s3, r3.xyxx.xy);
  let v_7 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_7.xy, r3.zw);
  let v_8 = (r3.xy * vec2<f32>(0.5f));
  r3 = vec4<f32>(v_8.xy, r3.zw);
  let v_9 = fma(r3.zw, vec2<f32>(0.5f), r3.xy);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  r3.z = ((-(r3.xxxx)).z * cb11_11.tint_symbol_5[0u].x);
  r3.z = fma(r3.z, r2.w, 1.0f);
  let v_10 = (r3.xy * cb11_11.tint_symbol_5[0u].yy);
  r3 = vec4<f32>(v_10.xy, r3.zw);
  r0 = (r0 * r3.zzzz);
  r4 = textureSample(t6, s6, v2.xyxx.xy);
  let v_11 = fma(r3.xy, r2.ww, r4.xy);
  r3 = vec4<f32>(v_11.xy, r3.zw);
  let v_12 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_12.xy, r3.zw);
  r3.w = dot(r3.xy, r3.xy);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = sqrt(abs(r3.wwww).w);
  r4.x = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_13 = (r3.xy * r4.xx);
  r3 = vec4<f32>(v_13.xy, r3.zw);
  let v_14 = (r3.yyy * v6.xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = fma(r3.xxx, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  let v_16 = fma(r3.www, v3.xyz, r4.xyz);
  r3 = vec4<f32>(v_16.xy, r3.z, v_16.z);
  r4.x = dot(r3.xyw, r3.xyw);
  r4.x = inverseSqrt(r4.x);
  let v_17 = (r3.xyw * r4.xxx);
  r4 = vec4<f32>(r4.x, v_17.xyz);
  let v_18 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_18.xy, r2.zw);
  r2.x = dot(r2.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r2.x = (r2.x * cb12_12.tint_symbol_4[0u].w);
  r2.x = clamp(((r3.zzzz * r2.xxxx)).x, 0.0f, 1.0f);
  let v_19 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r2.y = ((-(r1.wwww)).y + 1.0f);
  let v_20 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = fma(r0.xyz, r2.yyy, r1.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  r0.w = (r0.w * v0.w);
  let v_22 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_22.xy, r1.zw);
  let v_23 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = ((-(v7.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_24.xyz, r3.w);
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_25 = (r1.zzz * r3.xyz);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  let v_26 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_27 = fma(r3.xyz, r1.zzz, v_26.xyz);
  r6 = vec4<f32>(v_27.xyz, r6.w);
  r1.z = dot(r6.xyz, r6.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_28 = (r1.zzz * r6.xyz);
  r6 = vec4<f32>(v_28.xyz, r6.w);
  r1.z = fma(r2.w, cb12_12.tint_symbol_4[0u].z, -500.0f);
  r1.z = max(r1.z, 0.0f);
  let v_29 = -(r1.zzzz);
  r1.w = fma(r2.w, cb12_12.tint_symbol_4[0u].z, v_29.w);
  r1.z = (r1.z * 558.0f);
  r1.z = fma(r1.w, 3.0f, r1.z);
  r1.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_30 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r2 = vec4<f32>(r2.x, v_30.xyz);
  let v_31 = (r2.zzz * cb6_6.tint_symbol_6[1u].xyz);
  r3 = vec4<f32>(v_31.xyz, r3.w);
  let v_32 = fma(r2.yyy, cb6_6.tint_symbol_6[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  let v_33 = fma(r2.www, cb6_6.tint_symbol_6[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_33.xyz, r3.w);
  let v_34 = fma(r3.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_34.xyz, r7.w);
  let v_35 = &(x0[0u]);
  let v_36 = r7;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r3.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_37.xyz, r8.w);
  let v_38 = &(x0[1u]);
  let v_39 = r8;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = fma(r3.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_40.xyz, r9.w);
  let v_41 = &(x0[2u]);
  let v_42 = r9;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  let v_43 = fma(r3.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r3 = vec4<f32>(v_43.xyz, r3.w);
  let v_44 = &(x0[3u]);
  let v_45 = r3;
  *(v_44) = vec4<f32>(v_45.xyz, (*(v_44)).w);
  let v_46 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_47 = r10;
  r10 = vec4<f32>(v_47.x, v_46.x, v_47.z, v_46.y);
  r3.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_48 = abs(r9.yyyy);
  r5.w = max(v_48.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.z)));
  let v_49 = (bitcast<u32>(r5.w) != 0u);
  let v_50 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_50, v_49);
  let v_51 = abs(r8.yyyy);
  r6.w = max(v_51.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r3.z)));
  let v_52 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_52 != 0u));
  let v_53 = abs(r7.yyyy);
  r6.w = max(v_53.w, abs(r7.xxxx).w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r6.w < r3.z)));
  let v_54 = bitcast<u32>(r3.z);
  r3.z = select(r5.w, 0.0f, (v_54 != 0u));
  let v_55 = x0[bitcast<i32>(r3.z)];
  r7 = vec4<f32>(v_55.xyz, r7.w);
  r3.z = f32(bitcast<i32>(r3.z));
  r5.w = (r3.z + 0.5f);
  r5.w = (r5.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.zzzz)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r3.z = dot(r8, cb6_6.tint_symbol_6[12u]);
  r6.w = dot(r8, cb6_6.tint_symbol_6[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r3.z == 0.0f))));
  r3.z = ((-(r3.zzzz)).z + r7.z);
  let v_56 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_56.xy, r9.z, v_56.z);
  r9.z = dpdx(r3.z);
  let v_57 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_57.xyz, r11.w);
  r11.w = dpdy(r3.z);
  let v_58 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_58.xy, r7.zw);
  let v_59 = -(r7.xyxx);
  let v_60 = fma(r9.xz, r11.xz, v_59.xy);
  r12 = vec4<f32>(v_60.xy, r12.zw);
  r7.x = (1.0f / r12.x);
  r7.y = (r9.z * r11.y);
  let v_61 = -(r7.yyyy);
  r12.z = fma(r9.x, r11.w, v_61.z);
  let v_62 = (r7.xx * r12.yz);
  r7 = vec4<f32>(v_62.xy, r7.zw);
  let v_63 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_63.xy, r7.zw);
  let v_64 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_64.xy, r7.zw);
  r3.z = fma((-(r6.wwww)).z, r7.x, r3.z);
  r3.z = fma((-(r6.wwww)).z, r7.y, r3.z);
  let v_65 = bitcast<u32>(r5.w);
  let v_66 = r3.z;
  r10.z = select(r7.z, v_66, (v_65 != 0u));
  r8.z = 0.0f;
  let v_67 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_67.xyz, r7.w);
  let v_68 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_68.xy, r10.zw);
  let v_69 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_69.xyz, r9.w);
  let v_70 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_70.xy, r10.zw);
  let v_71 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_71.xyz, r11.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_72.xy, r10.zw);
  let v_73 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_73.xyz, r12.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_74.xy, r10.zw);
  let v_75 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_75.xyz, r13.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_76.xy, r10.zw);
  let v_77 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_77.xyz, r14.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_78.xy, r10.zw);
  let v_79 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_79.xyz, r15.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_80.xy, r10.zw);
  let v_81 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_81.xyz, r16.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_82.xy, r10.zw);
  let v_83 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_83.xyz, r17.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_84.xy, r10.zw);
  let v_85 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_85.xyz, r18.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_86.xy, r10.zw);
  let v_87 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_87.xyz, r19.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_88.xy, r10.zw);
  let v_89 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_89.xyz, r20.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_90.xy, r10.zw);
  let v_91 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_91.xyz, r21.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_92.xy, r10.zw);
  let v_93 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_93.xyz, r22.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_94.xy, r10.zw);
  let v_95 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_95.xyz, r23.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_96.xy, r10.zw);
  let v_97 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_97.xyz, r8.w);
  let v_98 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_98.xy, r7.z);
  let v_99 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_99.xy, r9.z);
  let v_100 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_100.xy, r11.z);
  let v_101 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_101.xy, r12.z);
  let v_102 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_102.xy, r13.z);
  let v_103 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_103.xy, r14.z);
  let v_104 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_104.xy, r15.z);
  let v_105 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_105.xy, r16.z);
  let v_106 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_106.xy, r17.z);
  let v_107 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_107.xy, r18.z);
  let v_108 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_108.xy, r19.z);
  let v_109 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_109.xy, r20.z);
  let v_110 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_110.xy, r21.z);
  let v_111 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_111.xy, r22.z);
  let v_112 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_112.xy, r23.z);
  let v_113 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_113.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r3.z = dot(r7, vec4<f32>(1.0f));
  r1.w = clamp(fma(r1.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_114 = abs(r3.yyyy);
  r3.x = max(v_114.x, abs(r3.xxxx).x);
  r3.x = clamp(fma(r3.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = (r3.x * r1.w);
  r1.w = fma(r3.z, 0.0625f, r1.w);
  let v_115 = (r1.xyw * r1.xyw);
  r1 = vec4<f32>(v_115.xy, r1.z, v_115.z);
  r1.w = min(r1.w, 1.0f);
  r3.x = clamp(fma(v7.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).x, 0.0f, 1.0f);
  r3.x = sqrt(r3.x);
  r3.x = (r3.x * cb6_6.tint_symbol_6[3u].z);
  let v_116 = -(r1.wwww);
  r1.w = fma(r3.x, v_116.w, r1.w);
  let v_117 = dot(r4.yzw, v_26.xyz);
  r3.x = clamp(vec4<f32>(v_117, v_117, v_117, v_117).x, 0.0f, 1.0f);
  let v_118 = dot(r5.xyz, r4.yzw);
  r7.x = clamp(vec4<f32>(v_118, v_118, v_118, v_118).x, 0.0f, 1.0f);
  let v_119 = dot(r6.xyz, v_26.xyz);
  r7.y = clamp(vec4<f32>(v_119, v_119, v_119, v_119).y, 0.0f, 1.0f);
  let v_120 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_121 = r3;
  r3 = vec4<f32>(v_121.x, v_120.xy, v_121.w);
  let v_122 = (r3.yz * r3.yz);
  r7 = vec4<f32>(v_122.xy, r7.zw);
  let v_123 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_123.xy, r7.zw);
  let v_124 = (r3.yz * r7.xy);
  let v_125 = r3;
  r3 = vec4<f32>(v_125.x, v_124.xy, v_125.w);
  r5.w = ((-(cb12_12.tint_symbol_4[0u].yyyy)).w + 1.0f);
  let v_126 = fma(cb12_12.tint_symbol_4[0u].yy, r3.yz, r5.ww);
  let v_127 = r3;
  r3 = vec4<f32>(v_127.x, v_126.xy, v_127.w);
  let v_128 = (r1.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_128.xy, r7.zw);
  r5.w = (r7.x * 0.125f);
  r3.y = fma((-(r2.xxxx)).y, r3.y, 1.0f);
  r6.x = dot(r4.yzw, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r7.y);
  r6.x = exp2(r6.x);
  r3.z = (r3.z * r6.x);
  r3.z = (r5.w * r3.z);
  r2.x = (r2.x * r3.z);
  r2.x = (r3.x * r2.x);
  r3.x = (r3.y * r3.x);
  let v_129 = fma(r0.xyz, r3.xxx, r2.xxx);
  r6 = vec4<f32>(v_129.xyz, r6.w);
  let v_130 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_130.xyz, r6.w);
  r2.x = fma(r3.w, r4.x, cb3_3.tint_symbol_2[43u].w);
  r2.x = (r2.x * cb3_3.tint_symbol_2[44u].w);
  r2.x = max(r2.x, 0.0f);
  let v_131 = fma(cb3_3.tint_symbol_2[47u].xyz, r2.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_131.x, r3.y, v_131.yz);
  r4.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_132 = fma(cb3_3.tint_symbol_2[45u].xyz, r2.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_132.xyz, r7.w);
  let v_133 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_133.xyz, r7.w);
  let v_134 = fma(r3.xzw, r4.xxx, r7.xyz);
  r3 = vec4<f32>(v_134.x, r3.y, v_134.yz);
  let v_135 = (r1.yyy * r3.xzw);
  r3 = vec4<f32>(v_135.x, r3.y, v_135.yz);
  let v_136 = fma(cb3_3.tint_symbol_2[43u].xyz, r2.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(v_136.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_137 = dot(r8.xyz, r4.yzw);
  r2.x = clamp(vec4<f32>(v_137, v_137, v_137, v_137).x, 0.0f, 1.0f);
  let v_138 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.xxx, r7.xyz);
  r7 = vec4<f32>(v_138.xyz, r7.w);
  let v_139 = fma(r7.xyz, r1.xxx, r3.xzw);
  r3 = vec4<f32>(v_139.x, r3.y, v_139.yz);
  let v_140 = (r3.yyy * r3.xzw);
  r3 = vec4<f32>(v_140.x, r3.y, v_140.yz);
  let v_141 = (r0.xyz * r3.xzw);
  r0 = vec4<f32>(v_141.xyz, r0.w);
  let v_142 = fma(r6.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_142.xyz, r0.w);
  r1.w = ((-(r3.yyyy)).w + 1.0f);
  r2.x = dot((-(r5.xyzx)).xyz, r4.yzw);
  r2.x = (r2.x + r2.x);
  let v_143 = -(r2.xxxx);
  let v_144 = -(r5.xyzx);
  let v_145 = fma(r4.yzw, v_143.xyz, v_144.xyz);
  r3 = vec4<f32>(v_145.xyz, r3.w);
  let v_146 = clamp(((r1.zzzz * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r4 = vec4<f32>(v_146.xy, r4.zw);
  r1.z = ((-(r4.xxxx)).z + 1.0f);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.w = (r1.z * cb5_5.tint_symbol_3[6u].z);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.x)));
  r4.x = fma(r1.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.z = (r1.z * r1.z);
  r1.z = fma(r1.z, 5.0f, r2.x);
  let v_147 = bitcast<u32>(r3.w);
  let v_148 = r4.x;
  r1.z = select(r1.z, v_148, (v_147 != 0u));
  let v_149 = (r3.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_149.xy, r3.z, v_149.z);
  r2.x = (abs(r3.zzzz).x + 1.0f);
  let v_150 = (r3.xyw / r2.xxx);
  r3 = vec4<f32>(v_150.xy, r3.z, v_150.z);
  let v_151 = ((-(r3.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_151.xy, r3.z, v_151.z);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.z)));
  let v_152 = bitcast<vec2<u32>>(r2.xx);
  let v_153 = r3.xy;
  let v_154 = select(r3.wy, v_153, (v_152 != vec2<u32>()));
  r3 = vec4<f32>(v_154.xy, r3.zw);
  let v_155 = r1.z;
  r3 = textureSampleLevel(t1, s1, r3.xyxx.xy, v_155);
  r1.x = max(r1.y, r1.x);
  let v_156 = (r1.xxx * r3.xyz);
  r1 = vec4<f32>(v_156.xyz, r1.w);
  let v_157 = (r4.yyy * r1.xyz);
  r3 = vec4<f32>(v_157.xyz, r3.w);
  let v_158 = (r3.xyz * vec3<f32>(0.68169009685516357422f));
  r3 = vec4<f32>(v_158.xyz, r3.w);
  let v_159 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r3.xyz);
  r1 = vec4<f32>(v_159.xyz, r1.w);
  let v_160 = fma(r1.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_160.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r2.yzw, r2.yzw);
    r1.x = sqrt(r0.w);
    let v_161 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_161.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r2.w);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_162 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_162 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_163 = (r0.www * r2.yzw);
    r3 = vec4<f32>(v_163.xyz, r3.w);
    let v_164 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_164, v_164, v_164, v_164).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_165 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_165, v_165, v_165, v_165).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_166 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_166.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_167 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_167.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_168 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_168.xyz, r3.w);
    let v_169 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_169.xyz, r3.w);
    let v_170 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_170.xyz, r4.w);
    let v_171 = fma(r1.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_171.xyz, r3.w);
    let v_172 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_173 = (r3.xyz + v_172.xyz);
    r3 = vec4<f32>(v_173.xyz, r3.w);
    let v_174 = fma(r1.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_174.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_175 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_175.xyz, r4.w);
    let v_176 = fma(r1.xxx, r4.xyz, r3.xyz);
    r1 = vec4<f32>(v_176.xy, r1.z, v_176.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_177 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
      r3 = vec4<f32>(v_177.xy, r3.zw);
      r3 = textureSample(t11, s11, r3.xyxx.xy);
      r0.w = (r3.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_178 = -(r0.xyxz);
    let v_179 = fma(r1.xyw, r0.www, v_178.xyw);
    r1 = vec4<f32>(v_179.xy, r1.z, v_179.z);
    let v_180 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_180.xyz, r1.w);
  } else {
    r0.w = dot(r2.yzw, r2.yzw);
    r1.w = sqrt(r0.w);
    let v_181 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_181.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r2.w);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r3.y = (r3.x * -1.44269502162933349609f);
    r3.y = exp2(r3.y);
    r3.y = ((-(r3.yyyy)).y + 1.0f);
    r3.x = (r3.y / r3.x);
    let v_182 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r3.x, (v_182 != 0u));
    r3.x = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r3.x);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_183 = (r0.www * r2.yzw);
    r2 = vec4<f32>(r2.x, v_183.xyz);
    let v_184 = dot(r2.yzw, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_184, v_184, v_184, v_184).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_185 = dot(r2.yzw, cb3_3.tint_symbol_2[53u].xyz);
    r2.y = clamp(vec4<f32>(v_185, v_185, v_185, v_185).y, 0.0f, 1.0f);
    r2.y = log2(r2.y);
    r2.y = (r2.y * cb3_3.tint_symbol_2[53u].w);
    r2.y = exp2(r2.y);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_186 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.z = (r2.x + v_186.z);
    r2.z = max(r2.z, 0.0f);
    r2.z = (r2.z * cb3_3.tint_symbol_2[51u].x);
    r2.z = (r2.z * 1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.z = clamp(fma(r1.wwww, r2.zzzz, r3.xxxx).z, 0.0f, 1.0f);
    let v_187 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_187.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_188 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_188.xyz, r3.w);
    let v_189 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_189.xyz, r3.w);
    let v_190 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_190.xyz, r4.w);
    let v_191 = fma(r2.yyy, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_191.xyz, r3.w);
    let v_192 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_193 = (r3.xyz + v_192.xyz);
    r3 = vec4<f32>(v_193.xyz, r3.w);
    let v_194 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_194.xy, r2.z, v_194.z);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_195 = ((-(r2.xywx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_195.xyz, r3.w);
    let v_196 = fma(r1.www, r3.xyz, r2.xyw);
    r2 = vec4<f32>(v_196.xy, r2.z, v_196.z);
    let v_197 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_197.xy, r2.z, v_197.z);
    let v_198 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_198.xyz, r1.w);
  }
  let v_199 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_199.xyz, o0.w);
}

fn v_3(v_200 : bool) {
  if (v_200) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_201 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v5, v6, v7, v_201);
  return o0;
}
