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

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
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
  r1.w = max(cb12_12.tint_symbol_4[0u].w, 0.00100000004749745131f);
  let v_5 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  let v_6 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
  let v_8 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_9 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_10 = (r1.xxx * v3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r1.x = dot((-(r3.xyzx)).xyz, r2.xyz);
  r1.x = (r1.x + r1.x);
  let v_11 = -(r1.xxxx);
  let v_12 = -(r3.xyzx);
  let v_13 = fma(r2.xyz, v_11.xyz, v_12.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_14 = fma(r3.xz, r1.xx, vec2<f32>(1.0f));
  r1 = vec4<f32>(v_14.xy, r1.zw);
  let v_15 = (r1.xy * vec2<f32>(-0.5f));
  r1 = vec4<f32>(v_15.xy, r1.zw);
  r3 = textureSample(t3, s3, r1.xyxx.xy);
  let v_16 = (r3.xyz * cb12_12.tint_symbol_4[1u].xxx);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r0.w = (r0.w * v0.w);
  let v_17 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_17.xy, r1.zw);
  let v_18 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = -(v6.xyzx);
  let v_20 = (v_19.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_21 = (r2.www * r4.xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  let v_22 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_23 = fma(r4.xyz, r2.www, v_22.xyz);
  r6 = vec4<f32>(v_23.xyz, r6.w);
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_24 = (r3.www * r6.xyz);
  r6 = vec4<f32>(v_24.xyz, r6.w);
  r3.w = clamp(cb12_12.tint_symbol_4[0u].z, 0.0f, 1.0f);
  let v_25 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_25.xy, r1.zw);
  r4.w = (cb12_12.tint_symbol_4[0u].y + -500.0f);
  r4.w = max(r4.w, 0.0f);
  r5.w = ((-(r4.wwww)).w + cb12_12.tint_symbol_4[0u].y);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r5.w, 3.0f, r4.w);
  r5.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_26 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_26.xyz, r7.w);
  let v_27 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_27.xyz, r8.w);
  let v_28 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_28.xyz, r8.w);
  let v_29 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_29.xyz, r8.w);
  let v_30 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_30.xyz, r9.w);
  let v_31 = &(x0[0u]);
  let v_32 = r9;
  *(v_31) = vec4<f32>(v_32.xyz, (*(v_31)).w);
  let v_33 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_33.xyz, r10.w);
  let v_34 = &(x0[1u]);
  let v_35 = r10;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_36.xyz, r11.w);
  let v_37 = &(x0[2u]);
  let v_38 = r11;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  let v_39 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_39.xyz, r8.w);
  let v_40 = &(x0[3u]);
  let v_41 = r8;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_43 = r12;
  r12 = vec4<f32>(v_43.x, v_42.x, v_43.z, v_42.y);
  r6.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r6.w = (r6.w * 0.5f);
  let v_44 = abs(r11.yyyy);
  r7.w = max(v_44.w, abs(r11.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_45 = (bitcast<u32>(r7.w) != 0u);
  let v_46 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r7.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_46, v_45);
  let v_47 = abs(r10.yyyy);
  r8.z = max(v_47.z, abs(r10.xxxx).z);
  r8.z = bitcast<f32>(select(0u, 4294967295u, (r8.z < r6.w)));
  let v_48 = bitcast<u32>(r8.z);
  r7.w = select(r7.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_48 != 0u));
  let v_49 = abs(r9.yyyy);
  r8.z = max(v_49.z, abs(r9.xxxx).z);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r8.z < r6.w)));
  let v_50 = bitcast<u32>(r6.w);
  r6.w = select(r7.w, 0.0f, (v_50 != 0u));
  let v_51 = x0[bitcast<i32>(r6.w)];
  r9 = vec4<f32>(v_51.xyz, r9.w);
  r6.w = f32(bitcast<i32>(r6.w));
  r7.w = (r6.w + 0.5f);
  r7.w = (r7.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r6.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r6.w = dot(r10, cb6_6.tint_symbol_5[12u]);
  r8.z = dot(r10, cb6_6.tint_symbol_5[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r7.w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 0.0f))));
  r6.w = ((-(r6.wwww)).w + r9.z);
  let v_52 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_52.xy, r11.z, v_52.z);
  r11.z = dpdx(r6.w);
  let v_53 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_53.xyz, r13.w);
  r13.w = dpdy(r6.w);
  let v_54 = (r11.yw * r13.yw);
  r9 = vec4<f32>(v_54.xy, r9.zw);
  let v_55 = -(r9.xyxx);
  let v_56 = fma(r11.xz, r13.xz, v_55.xy);
  r14 = vec4<f32>(v_56.xy, r14.zw);
  r8.w = (1.0f / r14.x);
  r9.x = (r11.z * r13.y);
  let v_57 = -(r9.xxxx);
  r14.z = fma(r11.x, r13.w, v_57.z);
  let v_58 = (r8.ww * r14.yz);
  r9 = vec4<f32>(v_58.xy, r9.zw);
  let v_59 = max(r9.xy, vec2<f32>());
  r9 = vec4<f32>(v_59.xy, r9.zw);
  let v_60 = min(r9.xy, vec2<f32>(0.5f));
  r9 = vec4<f32>(v_60.xy, r9.zw);
  r6.w = fma((-(r8.zzzz)).w, r9.x, r6.w);
  r6.w = fma((-(r8.zzzz)).w, r9.y, r6.w);
  let v_61 = bitcast<u32>(r7.w);
  let v_62 = r6.w;
  r12.z = select(r9.z, v_62, (v_61 != 0u));
  r10.z = 0.0f;
  let v_63 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_63.xyz, r9.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_64.xy, r12.zw);
  let v_65 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_65.xyz, r11.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_66.xy, r12.zw);
  let v_67 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_67.xyz, r13.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_68.xy, r12.zw);
  let v_69 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_69.xyz, r14.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_70.xy, r12.zw);
  let v_71 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_71.xyz, r15.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_72.xy, r12.zw);
  let v_73 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_73.xyz, r16.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_74.xy, r12.zw);
  let v_75 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_75.xyz, r17.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_76.xy, r12.zw);
  let v_77 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_77.xyz, r18.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_79.xyz, r19.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_81.xyz, r20.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_83.xyz, r21.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_85.xyz, r22.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_86.xy, r12.zw);
  let v_87 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_87.xyz, r23.w);
  let v_88 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_88.xy, r12.zw);
  let v_89 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_89.xyz, r24.w);
  let v_90 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_90.xy, r12.zw);
  let v_91 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_91.xyz, r25.w);
  let v_92 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_92.xy, r12.zw);
  let v_93 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_93.xyz, r10.w);
  let v_94 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_94.xy, r9.z);
  let v_95 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_95.xy, r11.z);
  let v_96 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_96.xy, r13.z);
  let v_97 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_97.xy, r14.z);
  let v_98 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_98.xy, r15.z);
  let v_99 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_99.xy, r16.z);
  let v_100 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_100.xy, r17.z);
  let v_101 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_101.xy, r18.z);
  let v_102 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_102.xy, r19.z);
  let v_103 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_103.xy, r20.z);
  let v_104 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_104.xy, r21.z);
  let v_105 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_105.xy, r22.z);
  let v_106 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_106.xy, r23.z);
  let v_107 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_107.xy, r24.z);
  let v_108 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_108.xy, r25.z);
  let v_109 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_109.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r6.w = dot(r9, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_110 = abs(r8.yyyy);
  r7.w = max(v_110.w, abs(r8.xxxx).w);
  r7.w = clamp(fma(r7.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r7.w * r5.w);
  r5.w = fma(r6.w, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.w = clamp(fma(v6.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r6.w = sqrt(r6.w);
  r6.w = (r6.w * cb6_6.tint_symbol_5[3u].z);
  let v_111 = -(r5.wwww);
  r5.w = fma(r6.w, v_111.w, r5.w);
  let v_112 = dot(r2.xyz, v_22.xyz);
  r6.w = clamp(vec4<f32>(v_112, v_112, v_112, v_112).w, 0.0f, 1.0f);
  let v_113 = dot(r5.xyz, r2.xyz);
  r8.x = clamp(vec4<f32>(v_113, v_113, v_113, v_113).x, 0.0f, 1.0f);
  let v_114 = dot(r6.xyz, v_22.xyz);
  r8.y = clamp(vec4<f32>(v_114, v_114, v_114, v_114).y, 0.0f, 1.0f);
  let v_115 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_115.xy, r8.zw);
  let v_116 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_116.xy);
  let v_117 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_117.xy);
  let v_118 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_118.xy, r8.zw);
  r7.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_119 = fma(cb12_12.tint_symbol_4[0u].xx, r8.xy, r7.ww);
  r8 = vec4<f32>(v_119.xy, r8.zw);
  let v_120 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_120.xy);
  r8.z = (r8.z * 0.125f);
  r8.x = fma((-(r3.wwww)).x, r8.x, 1.0f);
  r6.x = dot(r2.xyz, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r8.w);
  r6.x = exp2(r6.x);
  r6.x = (r8.y * r6.x);
  r6.x = (r8.z * r6.x);
  r6.x = (r3.w * r6.x);
  r6.x = (r6.w * r6.x);
  r6.y = (r6.w * r8.x);
  let v_121 = fma(r0.xyz, r6.yyy, r6.xxx);
  r6 = vec4<f32>(v_121.xyz, r6.w);
  let v_122 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_122.xyz, r6.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_123 = (v_19.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_123.xyz, r9.w);
    let v_124 = (v6.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_124.xyz, r10.w);
    r9.w = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r9.w = (r9.w * cb3_3.tint_symbol_2[19u].w);
    let v_125 = fma(cb3_3.tint_symbol_2[11u].xyz, r9.www, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_125.xyz, r10.w);
    let v_126 = (r10.xyz + v_19.xyz);
    r10 = vec4<f32>(v_126.xyz, r10.w);
    let v_127 = bitcast<vec3<u32>>(r8.yyy);
    let v_128 = r9.xyz;
    let v_129 = select(r10.xyz, v_128, (v_127 != vec3<u32>()));
    r9 = vec4<f32>(v_129.xyz, r9.w);
    r8.y = dot(r9.xyz, r9.xyz);
    let v_130 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_130.xyz, r9.w);
    r9.w = dot(r9.xyz, r9.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_131 = (r9.www * r9.xyz);
    r9 = vec4<f32>(v_131.xyz, r9.w);
    r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r9.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r9.w = fma(r9.w, r8.y, cb3_3.tint_symbol_2[11u].w);
    r8.y = (r8.y / r9.w);
    let v_132 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.w = dot(r9.xyz, v_132.xyz);
    r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_133 = dot(r9.xyz, r2.xyz);
    r10.x = clamp(vec4<f32>(v_133, v_133, v_133, v_133).x, 0.0f, 1.0f);
    r9.w = (r9.w * r10.x);
    r10.x = (r8.y * r9.w);
    let v_134 = (r10.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_134.xyz, r10.w);
    let v_135 = (r0.xyz * r10.xyz);
    r10 = vec4<f32>(v_135.xyz, r10.w);
    let v_136 = fma(r4.xyz, r2.www, r9.xyz);
    r9 = vec4<f32>(v_136.xyz, r9.w);
    r10.w = dot(r9.xyz, r9.xyz);
    r10.w = inverseSqrt(r10.w);
    let v_137 = (r9.xyz * r10.www);
    r9 = vec4<f32>(v_137.xyz, r9.w);
    let v_138 = dot(r9.xyz, r5.xyz);
    r10.w = clamp(vec4<f32>(v_138, v_138, v_138, v_138).w, 0.0f, 1.0f);
    r10.w = ((-(r10.wwww)).w + 1.0f);
    r11.x = (r10.w * r10.w);
    r11.x = (r11.x * r11.x);
    r10.w = (r10.w * r11.x);
    r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r7.w);
    let v_139 = dot(r9.xyz, r2.xyz);
    r9.x = clamp(vec4<f32>(v_139, v_139, v_139, v_139).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r8.w * r9.x);
    r9.x = exp2(r9.x);
    r9.x = (r9.x * r10.w);
    r9.x = (r9.w * r9.x);
    r8.y = (r8.y * r9.x);
    r8.y = (r8.z * r8.y);
    let v_140 = (r8.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_140.xyz, r9.w);
  }
  r8.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r8.y) != 0u)) {
    r9.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r8.y = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    let v_141 = bitcast<u32>(r9.w);
    let v_142 = r8.y;
    r6.w = select(r6.w, v_142, (v_141 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_143 = (v_19.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_143.xyz, r11.w);
      let v_144 = (v6.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_144.xyz, r12.w);
      r9.w = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[20u].w);
      let v_145 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.www, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_145.xyz, r12.w);
      let v_146 = (r12.xyz + v_19.xyz);
      r12 = vec4<f32>(v_146.xyz, r12.w);
      let v_147 = bitcast<vec3<u32>>(r8.yyy);
      let v_148 = r11.xyz;
      let v_149 = select(r12.xyz, v_148, (v_147 != vec3<u32>()));
      r11 = vec4<f32>(v_149.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_150 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_150.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_151 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_151.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.y, cb3_3.tint_symbol_2[12u].w);
      r8.y = (r8.y / r9.w);
      let v_152 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.w = dot(r11.xyz, v_152.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_153 = dot(r11.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_153, v_153, v_153, v_153).w, 0.0f, 1.0f);
      r9.w = (r9.w * r10.w);
      r10.w = (r8.y * r9.w);
      let v_154 = (r10.www * cb3_3.tint_symbol_2[20u].xyz);
      r12 = vec4<f32>(v_154.xyz, r12.w);
      let v_155 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_155.xyz, r10.w);
      let v_156 = fma(r4.xyz, r2.www, r11.xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_157 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      let v_158 = dot(r11.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_158, v_158, v_158, v_158).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r7.w);
      let v_159 = dot(r11.xyz, r2.xyz);
      r11.x = clamp(vec4<f32>(v_159, v_159, v_159, v_159).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r8.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r9.w = (r9.w * r10.w);
      r8.y = (r8.y * r9.w);
      r8.y = (r8.z * r8.y);
      let v_160 = fma(r8.yyy, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_160.xyz, r9.w);
    }
  } else {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_161 = (v_19.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_161.xyz, r11.w);
      let v_162 = (v6.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_162.xyz, r12.w);
      r9.w = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[21u].w);
      let v_163 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.www, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_163.xyz, r12.w);
      let v_164 = (r12.xyz + v_19.xyz);
      r12 = vec4<f32>(v_164.xyz, r12.w);
      let v_165 = bitcast<vec3<u32>>(r8.yyy);
      let v_166 = r11.xyz;
      let v_167 = select(r12.xyz, v_166, (v_165 != vec3<u32>()));
      r11 = vec4<f32>(v_167.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_168 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_168.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_169 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.y, cb3_3.tint_symbol_2[13u].w);
      r8.y = (r8.y / r9.w);
      let v_170 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.w = dot(r11.xyz, v_170.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_171 = dot(r11.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_171, v_171, v_171, v_171).w, 0.0f, 1.0f);
      r9.w = (r9.w * r10.w);
      r10.w = (r8.y * r9.w);
      let v_172 = (r10.www * cb3_3.tint_symbol_2[21u].xyz);
      r12 = vec4<f32>(v_172.xyz, r12.w);
      let v_173 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      let v_174 = fma(r4.xyz, r2.www, r11.xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_175 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_175.xyz, r11.w);
      let v_176 = dot(r11.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_176, v_176, v_176, v_176).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r7.w);
      let v_177 = dot(r11.xyz, r2.xyz);
      r11.x = clamp(vec4<f32>(v_177, v_177, v_177, v_177).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r8.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r9.w = (r9.w * r10.w);
      r8.y = (r8.y * r9.w);
      r8.y = (r8.z * r8.y);
      let v_178 = fma(r8.yyy, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_178.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_179 = (v_19.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_179.xyz, r11.w);
      let v_180 = (v6.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_180.xyz, r12.w);
      r8.y = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.y = clamp(((r8.yyyy / cb3_3.tint_symbol_2[22u].wwww)).y, 0.0f, 1.0f);
      r8.y = (r8.y * cb3_3.tint_symbol_2[22u].w);
      let v_181 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_181.xyz, r12.w);
      let v_182 = (r12.xyz + v_19.xyz);
      r12 = vec4<f32>(v_182.xyz, r12.w);
      let v_183 = bitcast<vec3<u32>>(r6.www);
      let v_184 = r11.xyz;
      let v_185 = select(r12.xyz, v_184, (v_183 != vec3<u32>()));
      r11 = vec4<f32>(v_185.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_186 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_186.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      r8.y = inverseSqrt(r8.y);
      let v_187 = (r8.yyy * r11.xyz);
      r11 = vec4<f32>(v_187.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r8.y = fma(r8.y, r6.w, cb3_3.tint_symbol_2[14u].w);
      r6.w = (r6.w / r8.y);
      let v_188 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.y = dot(r11.xyz, v_188.xyz);
      r8.y = clamp(fma(r8.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_189 = dot(r11.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_189, v_189, v_189, v_189).w, 0.0f, 1.0f);
      r8.y = (r8.y * r9.w);
      r9.w = (r6.w * r8.y);
      let v_190 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r12 = vec4<f32>(v_190.xyz, r12.w);
      let v_191 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_191.xyz, r10.w);
      let v_192 = fma(r4.xyz, r2.www, r11.xyz);
      r4 = vec4<f32>(v_192.xyz, r4.w);
      r2.w = dot(r4.xyz, r4.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_193 = (r2.www * r4.xyz);
      r4 = vec4<f32>(v_193.xyz, r4.w);
      let v_194 = dot(r4.xyz, r5.xyz);
      r2.w = clamp(vec4<f32>(v_194, v_194, v_194, v_194).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r5.x = (r2.w * r2.w);
      r5.x = (r5.x * r5.x);
      r2.w = (r2.w * r5.x);
      r2.w = fma(cb12_12.tint_symbol_4[0u].x, r2.w, r7.w);
      let v_195 = dot(r4.xyz, r2.xyz);
      r4.x = clamp(vec4<f32>(v_195, v_195, v_195, v_195).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r8.w);
      r4.x = exp2(r4.x);
      r2.w = (r2.w * r4.x);
      r2.w = (r8.y * r2.w);
      r2.w = (r6.w * r2.w);
      r2.w = (r8.z * r2.w);
      let v_196 = fma(r2.www, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_196.xyz, r9.w);
    }
  }
  r2.w = (r8.x * r8.x);
  r3.w = (r3.w * r3.w);
  let v_197 = (r9.xyz * r3.www);
  r4 = vec4<f32>(v_197.xyz, r4.w);
  let v_198 = fma(r2.www, r10.xyz, r4.xyz);
  r4 = vec4<f32>(v_198.xyz, r4.w);
  let v_199 = fma(r6.xyz, r5.www, r4.xyz);
  r4 = vec4<f32>(v_199.xyz, r4.w);
  r1.z = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.z = (r1.z * cb3_3.tint_symbol_2[44u].w);
  r1.z = max(r1.z, 0.0f);
  let v_200 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_200.xyz, r5.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_201 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_201.xyz, r6.w);
  let v_202 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_202.xyz, r6.w);
  let v_203 = fma(r5.xyz, r1.www, r6.xyz);
  r5 = vec4<f32>(v_203.xyz, r5.w);
  let v_204 = (r1.yyy * r5.xyz);
  r5 = vec4<f32>(v_204.xyz, r5.w);
  let v_205 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_205.xyz, r6.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_206 = dot(r9.xyz, r2.xyz);
  r1.z = clamp(vec4<f32>(v_206, v_206, v_206, v_206).z, 0.0f, 1.0f);
  let v_207 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.zzz, r6.xyz);
  r2 = vec4<f32>(v_207.xyz, r2.w);
  let v_208 = fma(r2.xyz, r1.xxx, r5.xyz);
  r2 = vec4<f32>(v_208.xyz, r2.w);
  let v_209 = (r8.xxx * r2.xyz);
  r2 = vec4<f32>(v_209.xyz, r2.w);
  let v_210 = fma(r2.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_210.xyz, r0.w);
  r1.z = ((-(r8.xxxx)).z + 1.0f);
  r1.x = max(r1.y, r1.x);
  let v_211 = (r1.xxx * r3.xyz);
  r1 = vec4<f32>(v_211.xy, r1.z, v_211.z);
  r2.x = clamp(((r4.wwww * vec4<f32>(0.00177619897294789553f))).x, 0.0f, 1.0f);
  let v_212 = (r1.xyw * r2.xxx);
  r2 = vec4<f32>(v_212.xyz, r2.w);
  let v_213 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_213.xyz, r2.w);
  let v_214 = fma(r1.xyw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_214.xy, r1.z, v_214.z);
  let v_215 = fma(r1.xyw, r1.zzz, r0.xyz);
  r0 = vec4<f32>(v_215.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.x = sqrt(r0.w);
    let v_216 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_216.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r7.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_217 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_217 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_218 = (r0.www * r7.xyz);
    r2 = vec4<f32>(v_218.xyz, r2.w);
    let v_219 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_219, v_219, v_219, v_219).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_220 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_220, v_220, v_220, v_220).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_221 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_221.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_222 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_222.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_223 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_223.xyz, r2.w);
    let v_224 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_224.xyz, r2.w);
    let v_225 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_225.xyz, r3.w);
    let v_226 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_226.xyz, r2.w);
    let v_227 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_228 = (r2.xyz + v_227.xyz);
    r2 = vec4<f32>(v_228.xyz, r2.w);
    let v_229 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_229.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_230 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_230.xyz, r3.w);
    let v_231 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_231.xy, r1.z, v_231.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_232 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_232.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_233 = -(r0.xyxz);
    let v_234 = fma(r1.xyw, r0.www, v_233.xyw);
    r1 = vec4<f32>(v_234.xy, r1.z, v_234.z);
    let v_235 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_235.xyz, r1.w);
  } else {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.w = sqrt(r0.w);
    let v_236 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_236.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r7.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_237 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_237 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_238 = (r0.www * r7.xyz);
    r3 = vec4<f32>(v_238.xyz, r3.w);
    let v_239 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_239, v_239, v_239, v_239).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_240 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_240, v_240, v_240, v_240).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_241 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_241.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_242 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_242.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_243 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_243.xyz, r3.w);
    let v_244 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_244.xyz, r3.w);
    let v_245 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_245.xyz, r4.w);
    let v_246 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_246.xyz, r3.w);
    let v_247 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_248 = (r3.xyz + v_247.xyz);
    r3 = vec4<f32>(v_248.xyz, r3.w);
    let v_249 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_249.x, r2.y, v_249.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_250 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_250.xyz, r3.w);
    let v_251 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_251.x, r2.y, v_251.yz);
    let v_252 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_252.x, r2.y, v_252.yz);
    let v_253 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_253.xyz, r1.w);
  }
  let v_254 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_254.xyz, o0.w);
}

fn v_3(v_255 : bool) {
  if (v_255) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_256 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_256);
  return o0;
}
