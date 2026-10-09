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

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

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
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t5, s5, v2.xy.xyxx.xy);
  let v_4 = (v2.xy * cb11_11.tint_symbol_5[0u].zw);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r3 = textureSample(t3, s3, r2.xyxx.xy);
  let v_5 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(r2.xy, v_5.xy);
  let v_6 = (r2.xy * vec2<f32>(3.1700000762939453125f));
  r2 = vec4<f32>(v_6.xy, r2.zw);
  r3 = textureSample(t3, s3, r2.xyxx.xy);
  let v_7 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_7.xy, r2.zw);
  let v_8 = (r2.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_8.xy, r2.zw);
  let v_9 = fma(r2.zw, vec2<f32>(0.5f), r2.xy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  r2.z = ((-(r2.xxxx)).z * cb11_11.tint_symbol_5[0u].x);
  r2.z = fma(r2.z, r1.w, 1.0f);
  let v_10 = (r2.xy * cb11_11.tint_symbol_5[0u].yy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r0 = (r0 * r2.zzzz);
  r3 = textureSample(t4, s4, v2.xy.xyxx.xy);
  let v_11 = fma(r2.xy, r1.ww, r3.xy);
  r2 = vec4<f32>(v_11.xy, r2.zw);
  let v_12 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_12.xy, r2.zw);
  r2.w = dot(r2.xy, r2.xy);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = sqrt(abs(r2.wwww).w);
  r3.x = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_13 = (r2.xy * r3.xx);
  r2 = vec4<f32>(v_13.xy, r2.zw);
  let v_14 = (r2.yyy * v6.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = fma(r2.xxx, v5.xyz, r3.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = fma(r2.www, v3.xyz, r3.xyz);
  r2 = vec4<f32>(v_16.xy, r2.z, v_16.z);
  r3.x = dot(r2.xyw, r2.xyw);
  r3.x = inverseSqrt(r3.x);
  let v_17 = (r2.xyw * r3.xxx);
  r3 = vec4<f32>(r3.x, v_17.xyz);
  let v_18 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_18.xy, r1.zw);
  r1.x = dot(r1.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r1.x = (r1.x * cb12_12.tint_symbol_4[0u].z);
  r1.x = clamp(((r2.zzzz * r1.xxxx)).x, 0.0f, 1.0f);
  let v_19 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r0.w = (r0.w * v0.w);
  let v_20 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_21 = r1;
  r1 = vec4<f32>(v_21.x, v_20.xy, v_21.w);
  let v_22 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = ((-(v7.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  r4.x = dot(r2.xyz, r2.xyz);
  r4.x = inverseSqrt(r4.x);
  let v_24 = (r2.xyz * r4.xxx);
  r4 = vec4<f32>(r4.x, v_24.xyz);
  let v_25 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_26 = fma(r2.xyz, r4.xxx, v_25.xyz);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  r4.x = dot(r5.xyz, r5.xyz);
  r4.x = inverseSqrt(r4.x);
  let v_27 = (r4.xxx * r5.xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  let v_28 = (r1.yz * r1.yz);
  let v_29 = r1;
  r1 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
  r4.x = fma(r1.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r4.x = max(r4.x, 0.0f);
  let v_30 = -(r4.xxxx);
  r1.w = fma(r1.w, cb12_12.tint_symbol_4[0u].y, v_30.w);
  r4.x = (r4.x * 558.0f);
  r1.w = fma(r1.w, 3.0f, r4.x);
  r2.x = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_31 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_31.xyz, r6.w);
  let v_32 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_32.xyz, r7.w);
  let v_33 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_34.xyz, r7.w);
  let v_35 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_35.xyz, r8.w);
  let v_36 = &(x0[0u]);
  let v_37 = r8;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_38.xyz, r9.w);
  let v_39 = &(x0[1u]);
  let v_40 = r9;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_41.xyz, r10.w);
  let v_42 = &(x0[2u]);
  let v_43 = r10;
  *(v_42) = vec4<f32>(v_43.xyz, (*(v_42)).w);
  let v_44 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_44.xyz, r7.w);
  let v_45 = &(x0[3u]);
  let v_46 = r7;
  *(v_45) = vec4<f32>(v_46.xyz, (*(v_45)).w);
  let v_47 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_48 = r11;
  r11 = vec4<f32>(v_48.x, v_47.x, v_48.z, v_47.y);
  r2.y = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).y, 1.5f, 1.0f);
  r2.y = (r2.y * 0.5f);
  let v_49 = abs(r10.yyyy);
  r2.z = max(v_49.z, abs(r10.xxxx).z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.y)));
  let v_50 = (bitcast<u32>(r2.z) != 0u);
  let v_51 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r2.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_51, v_50);
  let v_52 = abs(r9.yyyy);
  r4.x = max(v_52.x, abs(r9.xxxx).x);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r4.x < r2.y)));
  let v_53 = bitcast<u32>(r4.x);
  r2.z = select(r2.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_53 != 0u));
  let v_54 = abs(r8.yyyy);
  r4.x = max(v_54.x, abs(r8.xxxx).x);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r4.x < r2.y)));
  let v_55 = bitcast<u32>(r2.y);
  r2.y = select(r2.z, 0.0f, (v_55 != 0u));
  let v_56 = x0[bitcast<i32>(r2.y)];
  r8 = vec4<f32>(v_56.xyz, r8.w);
  r2.y = f32(bitcast<i32>(r2.y));
  r2.z = (r2.y + 0.5f);
  r2.z = (r2.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.yyyy)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r2.y = dot(r9, cb6_6.tint_symbol_6[12u]);
  r4.x = dot(r9, cb6_6.tint_symbol_6[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r2.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, !((r2.y == 0.0f))));
  r2.y = ((-(r2.yyyy)).y + r8.z);
  let v_57 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_57.xy, r10.z, v_57.z);
  r10.z = dpdx(r2.y);
  let v_58 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_58.xyz, r12.w);
  r12.w = dpdy(r2.y);
  let v_59 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_59.xy);
  let v_60 = -(r7.zwzz);
  let v_61 = fma(r10.xz, r12.xz, v_60.xy);
  r13 = vec4<f32>(v_61.xy, r13.zw);
  r5.w = (1.0f / r13.x);
  r6.w = (r10.z * r12.y);
  let v_62 = -(r6.wwww);
  r13.z = fma(r10.x, r12.w, v_62.z);
  let v_63 = (r5.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_63.xy);
  let v_64 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_64.xy);
  let v_65 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_65.xy);
  r2.y = fma((-(r4.xxxx)).y, r7.z, r2.y);
  r2.y = fma((-(r4.xxxx)).y, r7.w, r2.y);
  let v_66 = bitcast<u32>(r2.z);
  let v_67 = r2.y;
  r11.z = select(r8.z, v_67, (v_66 != 0u));
  r9.z = 0.0f;
  let v_68 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_68.xyz, r8.w);
  let v_69 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_70.xyz, r10.w);
  let v_71 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_72.xyz, r12.w);
  let v_73 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_74.xyz, r13.w);
  let v_75 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_76.xyz, r14.w);
  let v_77 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_78.xyz, r15.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_80.xyz, r16.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_82.xyz, r17.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_84.xyz, r18.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_86.xyz, r19.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_88.xyz, r20.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_90.xyz, r21.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_92.xyz, r22.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_94.xyz, r23.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_95.xy, r11.zw);
  let v_96 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_96.xyz, r24.w);
  let v_97 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_97.xy, r11.zw);
  let v_98 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_98.xyz, r9.w);
  let v_99 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_99.xy, r8.z);
  let v_100 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_100.xy, r10.z);
  let v_101 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_101.xy, r12.z);
  let v_102 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_102.xy, r13.z);
  let v_103 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_103.xy, r14.z);
  let v_104 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_104.xy, r15.z);
  let v_105 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_105.xy, r16.z);
  let v_106 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_106.xy, r17.z);
  let v_107 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_107.xy, r18.z);
  let v_108 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_108.xy, r19.z);
  let v_109 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_109.xy, r20.z);
  let v_110 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_110.xy, r21.z);
  let v_111 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_111.xy, r22.z);
  let v_112 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_112.xy, r23.z);
  let v_113 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_113.xy, r24.z);
  let v_114 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_114.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r2.y = dot(r8, vec4<f32>(1.0f));
  r2.x = clamp(fma(r2.xxxx, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).x, 0.0f, 1.0f);
  let v_115 = abs(r7.yyyy);
  r2.z = max(v_115.z, abs(r7.xxxx).z);
  r2.z = clamp(fma(r2.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).z, 0.0f, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = (r2.z * r2.x);
  r2.x = fma(r2.y, 0.0625f, r2.x);
  r2.x = (r2.x * r2.x);
  r2.x = min(r2.x, 1.0f);
  r2.y = clamp(fma(v7.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).y, 0.0f, 1.0f);
  r2.y = sqrt(r2.y);
  r2.y = (r2.y * cb6_6.tint_symbol_6[3u].z);
  let v_116 = -(r2.xxxx);
  r2.x = fma(r2.y, v_116.x, r2.x);
  let v_117 = dot(r3.yzw, v_25.xyz);
  r2.y = clamp(vec4<f32>(v_117, v_117, v_117, v_117).y, 0.0f, 1.0f);
  let v_118 = dot(r4.yzw, r3.yzw);
  r7.x = clamp(vec4<f32>(v_118, v_118, v_118, v_118).x, 0.0f, 1.0f);
  let v_119 = dot(r5.xyz, v_25.xyz);
  r7.y = clamp(vec4<f32>(v_119, v_119, v_119, v_119).y, 0.0f, 1.0f);
  let v_120 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_120.xy, r7.zw);
  let v_121 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_121.xy);
  let v_122 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_122.xy);
  let v_123 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_123.xy, r7.zw);
  r2.z = ((-(cb12_12.tint_symbol_4[0u].xxxx)).z + 1.0f);
  let v_124 = fma(cb12_12.tint_symbol_4[0u].xx, r7.xy, r2.zz);
  r7 = vec4<f32>(v_124.xy, r7.zw);
  let v_125 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_125.xy);
  r2.z = (r7.z * 0.125f);
  r4.x = fma((-(r1.xxxx)).x, r7.x, 1.0f);
  r5.x = dot(r3.yzw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.w);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r2.z = (r2.z * r5.x);
  r1.x = (r1.x * r2.z);
  r1.x = (r2.y * r1.x);
  r2.y = (r2.y * r4.x);
  let v_126 = fma(r0.xyz, r2.yyy, r1.xxx);
  r5 = vec4<f32>(v_126.xyz, r5.w);
  let v_127 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_127.xyz, r5.w);
  r1.x = fma(r2.w, r3.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_128 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r2 = vec4<f32>(r2.x, v_128.xyz);
  r3.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_129 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_129.xyz, r7.w);
  let v_130 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_130.xyz, r7.w);
  let v_131 = fma(r2.yzw, r3.xxx, r7.xyz);
  r2 = vec4<f32>(r2.x, v_131.xyz);
  let v_132 = (r1.zzz * r2.yzw);
  r2 = vec4<f32>(r2.x, v_132.xyz);
  let v_133 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(v_133.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_134 = dot(r8.xyz, r3.yzw);
  r1.x = clamp(vec4<f32>(v_134, v_134, v_134, v_134).x, 0.0f, 1.0f);
  let v_135 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r7.xyz);
  r7 = vec4<f32>(v_135.xyz, r7.w);
  let v_136 = fma(r7.xyz, r1.yyy, r2.yzw);
  r2 = vec4<f32>(r2.x, v_136.xyz);
  let v_137 = (r4.xxx * r2.yzw);
  r2 = vec4<f32>(r2.x, v_137.xyz);
  let v_138 = (r0.xyz * r2.yzw);
  r0 = vec4<f32>(v_138.xyz, r0.w);
  let v_139 = fma(r5.xyz, r2.xxx, r0.xyz);
  r0 = vec4<f32>(v_139.xyz, r0.w);
  r1.x = ((-(r4.xxxx)).x + 1.0f);
  r2.x = dot((-(r4.yzwy)).xyz, r3.yzw);
  r2.x = (r2.x + r2.x);
  let v_140 = -(r2.xxxx);
  let v_141 = -(r4.yzwy);
  let v_142 = fma(r3.yzw, v_140.xyz, v_141.xyz);
  r2 = vec4<f32>(v_142.xyz, r2.w);
  let v_143 = clamp(((r1.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_143.xy, r3.zw);
  r1.w = ((-(r3.xxxx)).w + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.w * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.w)));
  r3.z = fma(r1.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.w = (r1.w * r1.w);
  r1.w = fma(r1.w, 5.0f, r2.w);
  let v_144 = bitcast<u32>(r3.x);
  let v_145 = r3.z;
  r1.w = select(r1.w, v_145, (v_144 != 0u));
  let v_146 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_146.xy, r2.z, v_146.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_147 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_147.xy, r2.z, v_147.z);
  let v_148 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_148.xy, r2.z, v_148.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_149 = bitcast<vec2<u32>>(r2.zz);
  let v_150 = r2.xy;
  let v_151 = select(r2.wy, v_150, (v_149 != vec2<u32>()));
  r2 = vec4<f32>(v_151.xy, r2.zw);
  let v_152 = r1.w;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_152);
  r1.y = max(r1.z, r1.y);
  let v_153 = (r1.yyy * r2.xyz);
  r1 = vec4<f32>(r1.x, v_153.xyz);
  let v_154 = (r3.yyy * r1.yzw);
  r2 = vec4<f32>(v_154.xyz, r2.w);
  let v_155 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_155.xyz, r2.w);
  let v_156 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_156.xyz);
  let v_157 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_157.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_158 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_158.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_159 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_159 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_160 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_160.xyz, r2.w);
    let v_161 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_161, v_161, v_161, v_161).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_162 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_162, v_162, v_162, v_162).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_163 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_163.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_164 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_164.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_165 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_165.xyz, r2.w);
    let v_166 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_166.xyz, r2.w);
    let v_167 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_167.xyz, r3.w);
    let v_168 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_168.xyz, r2.w);
    let v_169 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_170 = (r2.xyz + v_169.xyz);
    r2 = vec4<f32>(v_170.xyz, r2.w);
    let v_171 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_171.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_172 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_172.xyz, r3.w);
    let v_173 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_173.xy, r1.z, v_173.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_174 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_174.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_175 = -(r0.xyxz);
    let v_176 = fma(r1.xyw, r0.www, v_175.xyw);
    r1 = vec4<f32>(v_176.xy, r1.z, v_176.z);
    let v_177 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_177.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_178 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_178.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_179 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_179 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_180 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_180.xyz, r3.w);
    let v_181 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_181, v_181, v_181, v_181).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_182 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_182, v_182, v_182, v_182).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_183 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_183.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_184 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_184.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_185 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_185.xyz, r3.w);
    let v_186 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_186.xyz, r3.w);
    let v_187 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_187.xyz, r4.w);
    let v_188 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_188.xyz, r3.w);
    let v_189 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_190 = (r3.xyz + v_189.xyz);
    r3 = vec4<f32>(v_190.xyz, r3.w);
    let v_191 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_191.x, r2.y, v_191.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_192 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_192.xyz, r3.w);
    let v_193 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_193.x, r2.y, v_193.yz);
    let v_194 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_194.x, r2.y, v_194.yz);
    let v_195 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_195.xyz, r1.w);
  }
  let v_196 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_196.xyz, o0.w);
}

fn v_3(v_197 : bool) {
  if (v_197) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_198 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v5, v6, v7, v_198);
  return o0;
}
