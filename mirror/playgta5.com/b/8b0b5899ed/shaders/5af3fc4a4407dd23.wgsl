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
  r0 = textureSample(t5, s5, v2.zwzz.xy);
  r1 = textureSample(t0, s0, v2.xyxx.xy);
  r2 = textureSample(t7, s7, v2.xyxx.xy);
  let v_3 = (v2.xy * cb11_11.tint_symbol_5[0u].zw);
  r3 = vec4<f32>(v_3.xy, r3.zw);
  r4 = textureSample(t3, s3, r3.xyxx.xy);
  let v_4 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(r3.xy, v_4.xy);
  let v_5 = (r3.xy * vec2<f32>(3.1700000762939453125f));
  r3 = vec4<f32>(v_5.xy, r3.zw);
  r4 = textureSample(t3, s3, r3.xyxx.xy);
  let v_6 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_6.xy, r3.zw);
  let v_7 = (r3.xy * vec2<f32>(0.5f));
  r3 = vec4<f32>(v_7.xy, r3.zw);
  let v_8 = fma(r3.zw, vec2<f32>(0.5f), r3.xy);
  r3 = vec4<f32>(v_8.xy, r3.zw);
  r3.z = ((-(r3.xxxx)).z * cb11_11.tint_symbol_5[0u].x);
  r3.z = fma(r3.z, r2.w, 1.0f);
  let v_9 = (r3.xy * cb11_11.tint_symbol_5[0u].yy);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  r1 = (r1 * r3.zzzz);
  r4 = textureSample(t6, s6, v2.xyxx.xy);
  let v_10 = fma(r3.xy, r2.ww, r4.xy);
  r3 = vec4<f32>(v_10.xy, r3.zw);
  let v_11 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_11.xy, r3.zw);
  r3.w = dot(r3.xy, r3.xy);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = sqrt(abs(r3.wwww).w);
  r4.x = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_12 = (r3.xy * r4.xx);
  r3 = vec4<f32>(v_12.xy, r3.zw);
  let v_13 = (r3.yyy * v6.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = fma(r3.xxx, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = fma(r3.www, v3.xyz, r4.xyz);
  r3 = vec4<f32>(v_15.xy, r3.z, v_15.z);
  r4.x = dot(r3.xyw, r3.xyw);
  r4.x = inverseSqrt(r4.x);
  let v_16 = (r3.xyw * r4.xxx);
  r4 = vec4<f32>(r4.x, v_16.xyz);
  let v_17 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_17.xy, r2.zw);
  r2.x = dot(r2.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r2.x = (r2.x * cb12_12.tint_symbol_4[0u].w);
  r2.x = clamp(((r3.zzzz * r2.xxxx)).x, 0.0f, 1.0f);
  let v_18 = (r1.xyz * v1.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r2.y = ((-(r0.wwww)).y + 1.0f);
  let v_19 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = fma(r1.xyz, r2.yyy, r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r0.w = (r1.w * v0.w);
  let v_21 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_21.xy, r1.zw);
  let v_22 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = ((-(v7.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_24 = (r1.zzz * r3.xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_26 = fma(r3.xyz, r1.zzz, v_25.xyz);
  r6 = vec4<f32>(v_26.xyz, r6.w);
  r1.z = dot(r6.xyz, r6.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_27 = (r1.zzz * r6.xyz);
  r6 = vec4<f32>(v_27.xyz, r6.w);
  r1.z = fma(r2.w, cb12_12.tint_symbol_4[0u].z, -500.0f);
  r1.z = max(r1.z, 0.0f);
  let v_28 = -(r1.zzzz);
  r1.w = fma(r2.w, cb12_12.tint_symbol_4[0u].z, v_28.w);
  r1.z = (r1.z * 558.0f);
  r1.z = fma(r1.w, 3.0f, r1.z);
  r1.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_29 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r2 = vec4<f32>(r2.x, v_29.xyz);
  let v_30 = (r2.zzz * cb6_6.tint_symbol_6[1u].xyz);
  r3 = vec4<f32>(v_30.xyz, r3.w);
  let v_31 = fma(r2.yyy, cb6_6.tint_symbol_6[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_31.xyz, r3.w);
  let v_32 = fma(r2.www, cb6_6.tint_symbol_6[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  let v_33 = fma(r3.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = &(x0[0u]);
  let v_35 = r7;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(r3.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_36.xyz, r8.w);
  let v_37 = &(x0[1u]);
  let v_38 = r8;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  let v_39 = fma(r3.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_39.xyz, r9.w);
  let v_40 = &(x0[2u]);
  let v_41 = r9;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = fma(r3.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r3 = vec4<f32>(v_42.xyz, r3.w);
  let v_43 = &(x0[3u]);
  let v_44 = r3;
  *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
  let v_45 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_46 = r10;
  r10 = vec4<f32>(v_46.x, v_45.x, v_46.z, v_45.y);
  r3.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_47 = abs(r9.yyyy);
  r5.w = max(v_47.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.z)));
  let v_48 = (bitcast<u32>(r5.w) != 0u);
  let v_49 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_49, v_48);
  let v_50 = abs(r8.yyyy);
  r6.w = max(v_50.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r3.z)));
  let v_51 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_51 != 0u));
  let v_52 = abs(r7.yyyy);
  r6.w = max(v_52.w, abs(r7.xxxx).w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r6.w < r3.z)));
  let v_53 = bitcast<u32>(r3.z);
  r3.z = select(r5.w, 0.0f, (v_53 != 0u));
  let v_54 = x0[bitcast<i32>(r3.z)];
  r7 = vec4<f32>(v_54.xyz, r7.w);
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
  let v_55 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_55.xy, r9.z, v_55.z);
  r9.z = dpdx(r3.z);
  let v_56 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_56.xyz, r11.w);
  r11.w = dpdy(r3.z);
  let v_57 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_57.xy, r7.zw);
  let v_58 = -(r7.xyxx);
  let v_59 = fma(r9.xz, r11.xz, v_58.xy);
  r12 = vec4<f32>(v_59.xy, r12.zw);
  r7.x = (1.0f / r12.x);
  r7.y = (r9.z * r11.y);
  let v_60 = -(r7.yyyy);
  r12.z = fma(r9.x, r11.w, v_60.z);
  let v_61 = (r7.xx * r12.yz);
  r7 = vec4<f32>(v_61.xy, r7.zw);
  let v_62 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_62.xy, r7.zw);
  let v_63 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_63.xy, r7.zw);
  r3.z = fma((-(r6.wwww)).z, r7.x, r3.z);
  r3.z = fma((-(r6.wwww)).z, r7.y, r3.z);
  let v_64 = bitcast<u32>(r5.w);
  let v_65 = r3.z;
  r10.z = select(r7.z, v_65, (v_64 != 0u));
  r8.z = 0.0f;
  let v_66 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_66.xyz, r7.w);
  let v_67 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_67.xy, r10.zw);
  let v_68 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_68.xyz, r9.w);
  let v_69 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_69.xy, r10.zw);
  let v_70 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_70.xyz, r11.w);
  let v_71 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_71.xy, r10.zw);
  let v_72 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_72.xyz, r12.w);
  let v_73 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_73.xy, r10.zw);
  let v_74 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_74.xyz, r13.w);
  let v_75 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_75.xy, r10.zw);
  let v_76 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_76.xyz, r14.w);
  let v_77 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_77.xy, r10.zw);
  let v_78 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_78.xyz, r15.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_79.xy, r10.zw);
  let v_80 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_80.xyz, r16.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_81.xy, r10.zw);
  let v_82 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_82.xyz, r17.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_83.xy, r10.zw);
  let v_84 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_84.xyz, r18.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_85.xy, r10.zw);
  let v_86 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_86.xyz, r19.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_87.xy, r10.zw);
  let v_88 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_88.xyz, r20.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_89.xy, r10.zw);
  let v_90 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_90.xyz, r21.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_91.xy, r10.zw);
  let v_92 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_92.xyz, r22.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_93.xy, r10.zw);
  let v_94 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_94.xyz, r23.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_95.xy, r10.zw);
  let v_96 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_96.xyz, r8.w);
  let v_97 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_97.xy, r7.z);
  let v_98 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_98.xy, r9.z);
  let v_99 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_99.xy, r11.z);
  let v_100 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_100.xy, r12.z);
  let v_101 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_101.xy, r13.z);
  let v_102 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_102.xy, r14.z);
  let v_103 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_103.xy, r15.z);
  let v_104 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_104.xy, r16.z);
  let v_105 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_105.xy, r17.z);
  let v_106 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_106.xy, r18.z);
  let v_107 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_107.xy, r19.z);
  let v_108 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_108.xy, r20.z);
  let v_109 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_109.xy, r21.z);
  let v_110 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_110.xy, r22.z);
  let v_111 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_111.xy, r23.z);
  let v_112 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_112.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r3.z = dot(r7, vec4<f32>(1.0f));
  r1.w = clamp(fma(r1.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_113 = abs(r3.yyyy);
  r3.x = max(v_113.x, abs(r3.xxxx).x);
  r3.x = clamp(fma(r3.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = (r3.x * r1.w);
  r1.w = fma(r3.z, 0.0625f, r1.w);
  let v_114 = (r1.xyw * r1.xyw);
  r1 = vec4<f32>(v_114.xy, r1.z, v_114.z);
  r1.w = min(r1.w, 1.0f);
  r3.x = clamp(fma(v7.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).x, 0.0f, 1.0f);
  r3.x = sqrt(r3.x);
  r3.x = (r3.x * cb6_6.tint_symbol_6[3u].z);
  let v_115 = -(r1.wwww);
  r1.w = fma(r3.x, v_115.w, r1.w);
  let v_116 = dot(r4.yzw, v_25.xyz);
  r3.x = clamp(vec4<f32>(v_116, v_116, v_116, v_116).x, 0.0f, 1.0f);
  let v_117 = dot(r5.xyz, r4.yzw);
  r7.x = clamp(vec4<f32>(v_117, v_117, v_117, v_117).x, 0.0f, 1.0f);
  let v_118 = dot(r6.xyz, v_25.xyz);
  r7.y = clamp(vec4<f32>(v_118, v_118, v_118, v_118).y, 0.0f, 1.0f);
  let v_119 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_120 = r3;
  r3 = vec4<f32>(v_120.x, v_119.xy, v_120.w);
  let v_121 = (r3.yz * r3.yz);
  r7 = vec4<f32>(v_121.xy, r7.zw);
  let v_122 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_122.xy, r7.zw);
  let v_123 = (r3.yz * r7.xy);
  let v_124 = r3;
  r3 = vec4<f32>(v_124.x, v_123.xy, v_124.w);
  r5.w = ((-(cb12_12.tint_symbol_4[0u].yyyy)).w + 1.0f);
  let v_125 = fma(cb12_12.tint_symbol_4[0u].yy, r3.yz, r5.ww);
  let v_126 = r3;
  r3 = vec4<f32>(v_126.x, v_125.xy, v_126.w);
  let v_127 = (r1.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_127.xy, r7.zw);
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
  let v_128 = fma(r0.xyz, r3.xxx, r2.xxx);
  r6 = vec4<f32>(v_128.xyz, r6.w);
  let v_129 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_129.xyz, r6.w);
  r2.x = fma(r3.w, r4.x, cb3_3.tint_symbol_2[43u].w);
  r2.x = (r2.x * cb3_3.tint_symbol_2[44u].w);
  r2.x = max(r2.x, 0.0f);
  let v_130 = fma(cb3_3.tint_symbol_2[47u].xyz, r2.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_130.x, r3.y, v_130.yz);
  r4.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_131 = fma(cb3_3.tint_symbol_2[45u].xyz, r2.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_131.xyz, r7.w);
  let v_132 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_132.xyz, r7.w);
  let v_133 = fma(r3.xzw, r4.xxx, r7.xyz);
  r3 = vec4<f32>(v_133.x, r3.y, v_133.yz);
  let v_134 = (r1.yyy * r3.xzw);
  r3 = vec4<f32>(v_134.x, r3.y, v_134.yz);
  let v_135 = fma(cb3_3.tint_symbol_2[43u].xyz, r2.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(v_135.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_136 = dot(r8.xyz, r4.yzw);
  r2.x = clamp(vec4<f32>(v_136, v_136, v_136, v_136).x, 0.0f, 1.0f);
  let v_137 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.xxx, r7.xyz);
  r7 = vec4<f32>(v_137.xyz, r7.w);
  let v_138 = fma(r7.xyz, r1.xxx, r3.xzw);
  r3 = vec4<f32>(v_138.x, r3.y, v_138.yz);
  let v_139 = (r3.yyy * r3.xzw);
  r3 = vec4<f32>(v_139.x, r3.y, v_139.yz);
  let v_140 = (r0.xyz * r3.xzw);
  r0 = vec4<f32>(v_140.xyz, r0.w);
  let v_141 = fma(r6.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_141.xyz, r0.w);
  r1.w = ((-(r3.yyyy)).w + 1.0f);
  r2.x = dot((-(r5.xyzx)).xyz, r4.yzw);
  r2.x = (r2.x + r2.x);
  let v_142 = -(r2.xxxx);
  let v_143 = -(r5.xyzx);
  let v_144 = fma(r4.yzw, v_142.xyz, v_143.xyz);
  r3 = vec4<f32>(v_144.xyz, r3.w);
  let v_145 = clamp(((r1.zzzz * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r4 = vec4<f32>(v_145.xy, r4.zw);
  r1.z = ((-(r4.xxxx)).z + 1.0f);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.w = (r1.z * cb5_5.tint_symbol_3[6u].z);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.x)));
  r4.x = fma(r1.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.z = (r1.z * r1.z);
  r1.z = fma(r1.z, 5.0f, r2.x);
  let v_146 = bitcast<u32>(r3.w);
  let v_147 = r4.x;
  r1.z = select(r1.z, v_147, (v_146 != 0u));
  let v_148 = (r3.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_148.xy, r3.z, v_148.z);
  r2.x = (abs(r3.zzzz).x + 1.0f);
  let v_149 = (r3.xyw / r2.xxx);
  r3 = vec4<f32>(v_149.xy, r3.z, v_149.z);
  let v_150 = ((-(r3.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_150.xy, r3.z, v_150.z);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.z)));
  let v_151 = bitcast<vec2<u32>>(r2.xx);
  let v_152 = r3.xy;
  let v_153 = select(r3.wy, v_152, (v_151 != vec2<u32>()));
  r3 = vec4<f32>(v_153.xy, r3.zw);
  let v_154 = r1.z;
  r3 = textureSampleLevel(t1, s1, r3.xyxx.xy, v_154);
  r1.x = max(r1.y, r1.x);
  let v_155 = (r1.xxx * r3.xyz);
  r1 = vec4<f32>(v_155.xyz, r1.w);
  let v_156 = (r4.yyy * r1.xyz);
  r3 = vec4<f32>(v_156.xyz, r3.w);
  let v_157 = (r3.xyz * vec3<f32>(0.68169009685516357422f));
  r3 = vec4<f32>(v_157.xyz, r3.w);
  let v_158 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r3.xyz);
  r1 = vec4<f32>(v_158.xyz, r1.w);
  let v_159 = fma(r1.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_159.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r2.yzw, r2.yzw);
    r1.x = sqrt(r0.w);
    let v_160 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_160.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r2.w);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_161 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_161 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_162 = (r0.www * r2.yzw);
    r3 = vec4<f32>(v_162.xyz, r3.w);
    let v_163 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_163, v_163, v_163, v_163).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_164 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_164, v_164, v_164, v_164).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_165 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_165.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_166 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_166.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_167 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_167.xyz, r3.w);
    let v_168 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_168.xyz, r3.w);
    let v_169 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_169.xyz, r4.w);
    let v_170 = fma(r1.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_170.xyz, r3.w);
    let v_171 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_172 = (r3.xyz + v_171.xyz);
    r3 = vec4<f32>(v_172.xyz, r3.w);
    let v_173 = fma(r1.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_173.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_174 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_174.xyz, r4.w);
    let v_175 = fma(r1.xxx, r4.xyz, r3.xyz);
    r1 = vec4<f32>(v_175.xy, r1.z, v_175.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_176 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
      r3 = vec4<f32>(v_176.xy, r3.zw);
      r3 = textureSample(t11, s11, r3.xyxx.xy);
      r0.w = (r3.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_177 = -(r0.xyxz);
    let v_178 = fma(r1.xyw, r0.www, v_177.xyw);
    r1 = vec4<f32>(v_178.xy, r1.z, v_178.z);
    let v_179 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_179.xyz, r1.w);
  } else {
    r0.w = dot(r2.yzw, r2.yzw);
    r1.w = sqrt(r0.w);
    let v_180 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_180.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r2.w);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r3.y = (r3.x * -1.44269502162933349609f);
    r3.y = exp2(r3.y);
    r3.y = ((-(r3.yyyy)).y + 1.0f);
    r3.x = (r3.y / r3.x);
    let v_181 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r3.x, (v_181 != 0u));
    r3.x = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r3.x);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_182 = (r0.www * r2.yzw);
    r2 = vec4<f32>(r2.x, v_182.xyz);
    let v_183 = dot(r2.yzw, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_183, v_183, v_183, v_183).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_184 = dot(r2.yzw, cb3_3.tint_symbol_2[53u].xyz);
    r2.y = clamp(vec4<f32>(v_184, v_184, v_184, v_184).y, 0.0f, 1.0f);
    r2.y = log2(r2.y);
    r2.y = (r2.y * cb3_3.tint_symbol_2[53u].w);
    r2.y = exp2(r2.y);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_185 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.z = (r2.x + v_185.z);
    r2.z = max(r2.z, 0.0f);
    r2.z = (r2.z * cb3_3.tint_symbol_2[51u].x);
    r2.z = (r2.z * 1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.z = clamp(fma(r1.wwww, r2.zzzz, r3.xxxx).z, 0.0f, 1.0f);
    let v_186 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_186.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_187 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_187.xyz, r3.w);
    let v_188 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_188.xyz, r3.w);
    let v_189 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_189.xyz, r4.w);
    let v_190 = fma(r2.yyy, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_190.xyz, r3.w);
    let v_191 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_192 = (r3.xyz + v_191.xyz);
    r3 = vec4<f32>(v_192.xyz, r3.w);
    let v_193 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_193.xy, r2.z, v_193.z);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_194 = ((-(r2.xywx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_194.xyz, r3.w);
    let v_195 = fma(r1.www, r3.xyz, r2.xyw);
    r2 = vec4<f32>(v_195.xy, r2.z, v_195.z);
    let v_196 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_196.xy, r2.z, v_196.z);
    let v_197 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_197.xyz, r1.w);
  }
  let v_198 = log2(r1.xyz);
  r0 = vec4<f32>(v_198.xyz, r0.w);
  let v_199 = (r0.xyz * vec3<f32>(0.45454546809196472168f));
  r0 = vec4<f32>(v_199.xyz, r0.w);
  let v_200 = exp2(r0.xyz);
  o0 = vec4<f32>(v_200.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_201 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v5, v6, v7, v_201);
  return o0;
}
