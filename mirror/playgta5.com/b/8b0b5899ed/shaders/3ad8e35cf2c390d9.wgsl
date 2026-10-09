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

var<private> r26 : vec4<f32>;

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
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_4[1u].x, 0.00100000004749745131f);
  let v_4 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_6.xy, r1.z, v_6.z);
  let v_7 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_8 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_9 = (r1.xxx * v3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r1.x = dot((-(r3.xyzx)).xyz, r2.xyz);
  r1.x = (r1.x + r1.x);
  let v_10 = -(r1.xxxx);
  let v_11 = -(r3.xyzx);
  let v_12 = fma(r2.xyz, v_10.xyz, v_11.xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_13 = fma(r3.xz, r1.xx, vec2<f32>(1.0f));
  r1 = vec4<f32>(v_13.xy, r1.zw);
  let v_14 = (r1.xy * vec2<f32>(-0.5f));
  r1 = vec4<f32>(v_14.xy, r1.zw);
  r3 = textureSample(t3, s3, r1.xyxx.xy);
  let v_15 = (r3.xyz * cb12_12.tint_symbol_4[1u].yyy);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  r1.x = (r0.w * cb12_12.tint_symbol_4[0u].x);
  r1.x = (r1.x * cb2_2.tint_symbol_1[15u].w);
  r1.x = (r1.x * cb2_2.tint_symbol_1[16u].y);
  r0.w = (r0.w * v0.w);
  let v_16 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r4 = vec4<f32>(v_16.xy, r4.zw);
  r1.x = (r1.x * v0.z);
  let v_17 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = -(v6.xyzx);
  let v_19 = (v_18.xyz + cb1_1.tint_symbol[15u].xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  r1.y = dot(r5.xyz, r5.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_20 = (r1.yyy * r5.xyz);
  r6 = vec4<f32>(v_20.xyz, r6.w);
  let v_21 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_22 = fma(r5.xyz, r1.yyy, v_21.xyz);
  r7 = vec4<f32>(v_22.xyz, r7.w);
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_23 = (r2.www * r7.xyz);
  r7 = vec4<f32>(v_23.xyz, r7.w);
  r2.w = clamp(cb12_12.tint_symbol_4[0u].w, 0.0f, 1.0f);
  r3.w = (cb12_12.tint_symbol_4[0u].z + -500.0f);
  r3.w = max(r3.w, 0.0f);
  r4.z = ((-(r3.wwww)).z + cb12_12.tint_symbol_4[0u].z);
  r3.w = (r3.w * 558.0f);
  r3.w = fma(r4.z, 3.0f, r3.w);
  r4.z = dot(r5.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_24 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r8 = vec4<f32>(v_24.xyz, r8.w);
  let v_25 = (r8.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r9 = vec4<f32>(v_25.xyz, r9.w);
  let v_26 = fma(r8.xxx, cb6_6.tint_symbol_5[0u].xyz, r9.xyz);
  r9 = vec4<f32>(v_26.xyz, r9.w);
  let v_27 = fma(r8.zzz, cb6_6.tint_symbol_5[2u].xyz, r9.xyz);
  r9 = vec4<f32>(v_27.xyz, r9.w);
  let v_28 = fma(r9.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r10 = vec4<f32>(v_28.xyz, r10.w);
  let v_29 = &(x0[0u]);
  let v_30 = r10;
  *(v_29) = vec4<f32>(v_30.xyz, (*(v_29)).w);
  let v_31 = fma(r9.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r11 = vec4<f32>(v_31.xyz, r11.w);
  let v_32 = &(x0[1u]);
  let v_33 = r11;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = fma(r9.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r12 = vec4<f32>(v_34.xyz, r12.w);
  let v_35 = &(x0[2u]);
  let v_36 = r12;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r9.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r9 = vec4<f32>(v_37.xyz, r9.w);
  let v_38 = &(x0[3u]);
  let v_39 = r9;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_41 = r13;
  r13 = vec4<f32>(v_41.x, v_40.x, v_41.z, v_40.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_42 = abs(r12.yyyy);
  r5.w = max(v_42.w, abs(r12.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_43 = (bitcast<u32>(r5.w) != 0u);
  let v_44 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_44, v_43);
  let v_45 = abs(r11.yyyy);
  r6.w = max(v_45.w, abs(r11.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_46 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_46 != 0u));
  let v_47 = abs(r10.yyyy);
  r6.w = max(v_47.w, abs(r10.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_48 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_48 != 0u));
  let v_49 = x0[bitcast<i32>(r4.w)];
  r10 = vec4<f32>(v_49.xyz, r10.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r11 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r11 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r11) & vec4<u32>(1065353216u)));
  r4.w = dot(r11, cb6_6.tint_symbol_5[12u]);
  r6.w = dot(r11, cb6_6.tint_symbol_5[13u]);
  r11.x = (r10.x + 0.5f);
  r11.y = fma(r10.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r10.z);
  let v_50 = dpdx(r11.xyy);
  r12 = vec4<f32>(v_50.xy, r12.z, v_50.z);
  r12.z = dpdx(r4.w);
  let v_51 = dpdy(r11.yxy);
  r14 = vec4<f32>(v_51.xyz, r14.w);
  r14.w = dpdy(r4.w);
  let v_52 = (r12.yw * r14.yw);
  r9 = vec4<f32>(r9.xy, v_52.xy);
  let v_53 = -(r9.zwzz);
  let v_54 = fma(r12.xz, r14.xz, v_53.xy);
  r15 = vec4<f32>(v_54.xy, r15.zw);
  r7.w = (1.0f / r15.x);
  r8.w = (r12.z * r14.y);
  let v_55 = -(r8.wwww);
  r15.z = fma(r12.x, r14.w, v_55.z);
  let v_56 = (r7.ww * r15.yz);
  r9 = vec4<f32>(r9.xy, v_56.xy);
  let v_57 = max(r9.zw, vec2<f32>());
  r9 = vec4<f32>(r9.xy, v_57.xy);
  let v_58 = min(r9.zw, vec2<f32>(0.5f));
  r9 = vec4<f32>(r9.xy, v_58.xy);
  r4.w = fma((-(r6.wwww)).w, r9.z, r4.w);
  r4.w = fma((-(r6.wwww)).w, r9.w, r4.w);
  let v_59 = bitcast<u32>(r5.w);
  let v_60 = r4.w;
  r13.z = select(r10.z, v_60, (v_59 != 0u));
  r11.z = 0.0f;
  let v_61 = (r11.xyz + r13.ywz);
  r10 = vec4<f32>(v_61.xyz, r10.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r13 = vec4<f32>(v_62.xy, r13.zw);
  let v_63 = (r11.xyz + r13.xyz);
  r12 = vec4<f32>(v_63.xyz, r12.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r13 = vec4<f32>(v_64.xy, r13.zw);
  let v_65 = (r11.xyz + r13.xyz);
  r14 = vec4<f32>(v_65.xyz, r14.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r13 = vec4<f32>(v_66.xy, r13.zw);
  let v_67 = (r11.xyz + r13.xyz);
  r15 = vec4<f32>(v_67.xyz, r15.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r13 = vec4<f32>(v_68.xy, r13.zw);
  let v_69 = (r11.xyz + r13.xyz);
  r16 = vec4<f32>(v_69.xyz, r16.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r13 = vec4<f32>(v_70.xy, r13.zw);
  let v_71 = (r11.xyz + r13.xyz);
  r17 = vec4<f32>(v_71.xyz, r17.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r13 = vec4<f32>(v_72.xy, r13.zw);
  let v_73 = (r11.xyz + r13.xyz);
  r18 = vec4<f32>(v_73.xyz, r18.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r13 = vec4<f32>(v_74.xy, r13.zw);
  let v_75 = (r11.xyz + r13.xyz);
  r19 = vec4<f32>(v_75.xyz, r19.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r13 = vec4<f32>(v_76.xy, r13.zw);
  let v_77 = (r11.xyz + r13.xyz);
  r20 = vec4<f32>(v_77.xyz, r20.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r13 = vec4<f32>(v_78.xy, r13.zw);
  let v_79 = (r11.xyz + r13.xyz);
  r21 = vec4<f32>(v_79.xyz, r21.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r13 = vec4<f32>(v_80.xy, r13.zw);
  let v_81 = (r11.xyz + r13.xyz);
  r22 = vec4<f32>(v_81.xyz, r22.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r13 = vec4<f32>(v_82.xy, r13.zw);
  let v_83 = (r11.xyz + r13.xyz);
  r23 = vec4<f32>(v_83.xyz, r23.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r13 = vec4<f32>(v_84.xy, r13.zw);
  let v_85 = (r11.xyz + r13.xyz);
  r24 = vec4<f32>(v_85.xyz, r24.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r13 = vec4<f32>(v_86.xy, r13.zw);
  let v_87 = (r11.xyz + r13.xyz);
  r25 = vec4<f32>(v_87.xyz, r25.w);
  let v_88 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r13 = vec4<f32>(v_88.xy, r13.zw);
  let v_89 = (r11.xyz + r13.xyz);
  r26 = vec4<f32>(v_89.xyz, r26.w);
  let v_90 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r13 = vec4<f32>(v_90.xy, r13.zw);
  let v_91 = (r11.xyz + r13.xyz);
  r11 = vec4<f32>(v_91.xyz, r11.w);
  let v_92 = r10.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_92.xy, r10.z);
  let v_93 = r12.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_93.xy, r12.z);
  let v_94 = r14.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_94.xy, r14.z);
  let v_95 = r15.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_95.xy, r15.z);
  let v_96 = r16.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_96.xy, r16.z);
  let v_97 = r17.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_97.xy, r17.z);
  let v_98 = r18.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_98.xy, r18.z);
  let v_99 = r19.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_99.xy, r19.z);
  let v_100 = r20.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_100.xy, r20.z);
  let v_101 = r21.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_101.xy, r21.z);
  let v_102 = r22.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_102.xy, r22.z);
  let v_103 = r23.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_103.xy, r23.z);
  let v_104 = r24.xyxx;
  r14.x = textureSampleCompareLevel(t15, s15, v_104.xy, r24.z);
  let v_105 = r25.xyxx;
  r14.y = textureSampleCompareLevel(t15, s15, v_105.xy, r25.z);
  let v_106 = r26.xyxx;
  r14.z = textureSampleCompareLevel(t15, s15, v_106.xy, r26.z);
  let v_107 = r11.xyxx;
  r14.w = textureSampleCompareLevel(t15, s15, v_107.xy, r11.z);
  r10 = (r10 + r12);
  r10 = (r13 + r10);
  r10 = (r14 + r10);
  r4.w = dot(r10, vec4<f32>(1.0f));
  r4.z = clamp(fma(r4.zzzz, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).z, 0.0f, 1.0f);
  let v_108 = abs(r9.yyyy);
  r5.w = max(v_108.w, abs(r9.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r4.z = ((-(r4.zzzz)).z + 1.0f);
  r4.z = (r5.w * r4.z);
  r4.z = fma(r4.w, 0.0625f, r4.z);
  let v_109 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_109.xyz, r4.w);
  r4.z = min(r4.z, 1.0f);
  r4.w = clamp(fma(v6.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_110 = -(r4.zzzz);
  r4.z = fma(r4.w, v_110.z, r4.z);
  let v_111 = dot(r2.xyz, v_21.xyz);
  r4.w = clamp(vec4<f32>(v_111, v_111, v_111, v_111).w, 0.0f, 1.0f);
  let v_112 = dot(r6.xyz, r2.xyz);
  r9.x = clamp(vec4<f32>(v_112, v_112, v_112, v_112).x, 0.0f, 1.0f);
  let v_113 = dot(r7.xyz, v_21.xyz);
  r9.y = clamp(vec4<f32>(v_113, v_113, v_113, v_113).y, 0.0f, 1.0f);
  let v_114 = ((-(r9.xxyx)).yz + vec2<f32>(1.0f));
  let v_115 = r9;
  r9 = vec4<f32>(v_115.x, v_114.xy, v_115.w);
  let v_116 = (r9.yz * r9.yz);
  r10 = vec4<f32>(v_116.xy, r10.zw);
  let v_117 = (r10.xy * r10.xy);
  r10 = vec4<f32>(v_117.xy, r10.zw);
  let v_118 = (r9.yz * r10.xy);
  let v_119 = r9;
  r9 = vec4<f32>(v_119.x, v_118.xy, v_119.w);
  r5.w = ((-(cb12_12.tint_symbol_4[0u].yyyy)).w + 1.0f);
  let v_120 = fma(cb12_12.tint_symbol_4[0u].yy, r9.yz, r5.ww);
  let v_121 = r9;
  r9 = vec4<f32>(v_121.x, v_120.xy, v_121.w);
  let v_122 = (r3.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r10 = vec4<f32>(v_122.xy, r10.zw);
  r6.w = (r10.x * 0.125f);
  r7.w = fma((-(r2.wwww)).w, r9.y, 1.0f);
  r7.x = dot(r2.xyz, r7.xyz);
  r7.x = clamp(((r7.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r7.x = log2(r7.x);
  r7.x = (r7.x * r10.y);
  r7.x = exp2(r7.x);
  r7.x = (r9.z * r7.x);
  r7.x = (r6.w * r7.x);
  r7.x = (r2.w * r7.x);
  r7.x = (r4.w * r7.x);
  r4.w = (r4.w * r7.w);
  let v_123 = fma(r0.xyz, r4.www, r7.xxx);
  r7 = vec4<f32>(v_123.xyz, r7.w);
  let v_124 = (r7.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r7 = vec4<f32>(v_124.xyz, r7.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r11 = vec4<f32>(vec3<f32>(), r11.w);
    r9 = vec4<f32>(r9.x, vec3<f32>());
  } else {
    r8.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_125 = -(v6.xxyz);
    let v_126 = (v_125.yzw + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(r9.x, v_126.xyz);
    let v_127 = (v6.xyz + (-(cb3_3.tint_symbol_2[3u].xxyz)).xzw);
    r10 = vec4<f32>(v_127.x, r10.y, v_127.yz);
    r10.x = dot(r10.xzw, cb3_3.tint_symbol_2[11u].xyz);
    r10.x = clamp(((r10.xxxx / cb3_3.tint_symbol_2[19u].wwww)).x, 0.0f, 1.0f);
    r10.x = (r10.x * cb3_3.tint_symbol_2[19u].w);
    let v_128 = fma(cb3_3.tint_symbol_2[11u].xyz, r10.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_128.x, r10.y, v_128.yz);
    let v_129 = (r10.xzw + v_125.xzw);
    r10 = vec4<f32>(v_129.x, r10.y, v_129.yz);
    let v_130 = bitcast<vec3<u32>>(r8.www);
    let v_131 = r9.yzw;
    let v_132 = select(r10.xzw, v_131, (v_130 != vec3<u32>()));
    r9 = vec4<f32>(r9.x, v_132.xyz);
    r8.w = dot(r9.yzw, r9.yzw);
    let v_133 = (r9.yzw + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(r9.x, v_133.xyz);
    r10.x = dot(r9.yzw, r9.yzw);
    r10.x = inverseSqrt(r10.x);
    let v_134 = (r9.yzw * r10.xxx);
    r9 = vec4<f32>(r9.x, v_134.xyz);
    r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r10.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r10.x = fma(r10.x, r8.w, cb3_3.tint_symbol_2[11u].w);
    r8.w = (r8.w / r10.x);
    let v_135 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r10.x = dot(r9.yzw, v_135.xyz);
    r10.x = clamp(fma(r10.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_136 = dot(r9.yzw, r2.xyz);
    r10.z = clamp(vec4<f32>(v_136, v_136, v_136, v_136).z, 0.0f, 1.0f);
    r10.x = (r10.x * r10.z);
    r10.z = (r8.w * r10.x);
    let v_137 = (r10.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r11 = vec4<f32>(v_137.xyz, r11.w);
    let v_138 = (r0.xyz * r11.xyz);
    r11 = vec4<f32>(v_138.xyz, r11.w);
    let v_139 = fma(r5.xyz, r1.yyy, r9.yzw);
    r9 = vec4<f32>(r9.x, v_139.xyz);
    r10.z = dot(r9.yzw, r9.yzw);
    r10.z = inverseSqrt(r10.z);
    let v_140 = (r9.yzw * r10.zzz);
    r9 = vec4<f32>(r9.x, v_140.xyz);
    let v_141 = dot(r9.yzw, r6.xyz);
    r10.z = clamp(vec4<f32>(v_141, v_141, v_141, v_141).z, 0.0f, 1.0f);
    r10.z = ((-(r10.zzzz)).z + 1.0f);
    r10.w = (r10.z * r10.z);
    r10.w = (r10.w * r10.w);
    r10.z = (r10.w * r10.z);
    r10.z = fma(cb12_12.tint_symbol_4[0u].y, r10.z, r5.w);
    let v_142 = dot(r9.yzw, r2.xyz);
    r9.y = clamp(vec4<f32>(v_142, v_142, v_142, v_142).y, 0.0f, 1.0f);
    r9.y = log2(r9.y);
    r9.y = (r9.y * r10.y);
    r9.y = exp2(r9.y);
    r9.y = (r9.y * r10.z);
    r9.y = (r10.x * r9.y);
    r8.w = (r8.w * r9.y);
    r8.w = (r6.w * r8.w);
    let v_143 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(r9.x, v_143.xyz);
  }
  r8.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r8.w) != 0u)) {
    r10.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r8.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.w)));
    let v_144 = bitcast<u32>(r10.x);
    let v_145 = r8.w;
    r4.w = select(r4.w, v_145, (v_144 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r8.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_146 = ((-(v6.xxyz)).xzw + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_146.x, r10.y, v_146.yz);
      let v_147 = (v6.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_147.xyz, r12.w);
      r11.w = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r11.w = clamp(((r11.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r11.w = (r11.w * cb3_3.tint_symbol_2[20u].w);
      let v_148 = fma(cb3_3.tint_symbol_2[12u].xyz, r11.www, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_148.xyz, r12.w);
      let v_149 = (r12.xyz + v_18.xyz);
      r12 = vec4<f32>(v_149.xyz, r12.w);
      let v_150 = bitcast<vec3<u32>>(r8.www);
      let v_151 = r10.xzw;
      let v_152 = select(r12.xyz, v_151, (v_150 != vec3<u32>()));
      r10 = vec4<f32>(v_152.x, r10.y, v_152.yz);
      r8.w = dot(r10.xzw, r10.xzw);
      let v_153 = (r10.xzw + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_153.x, r10.y, v_153.yz);
      r11.w = dot(r10.xzw, r10.xzw);
      r11.w = inverseSqrt(r11.w);
      let v_154 = (r10.xzw * r11.www);
      r10 = vec4<f32>(v_154.x, r10.y, v_154.yz);
      r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r11.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r11.w = fma(r11.w, r8.w, cb3_3.tint_symbol_2[12u].w);
      r8.w = (r8.w / r11.w);
      let v_155 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r11.w = dot(r10.xzw, v_155.xyz);
      r11.w = clamp(fma(r11.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_156 = dot(r10.xzw, r2.xyz);
      r12.x = clamp(vec4<f32>(v_156, v_156, v_156, v_156).x, 0.0f, 1.0f);
      r11.w = (r11.w * r12.x);
      r12.x = (r8.w * r11.w);
      let v_157 = (r12.xxx * cb3_3.tint_symbol_2[20u].xyz);
      r12 = vec4<f32>(v_157.xyz, r12.w);
      let v_158 = fma(r12.xyz, r0.xyz, r11.xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      let v_159 = fma(r5.xyz, r1.yyy, r10.xzw);
      r10 = vec4<f32>(v_159.x, r10.y, v_159.yz);
      r12.x = dot(r10.xzw, r10.xzw);
      r12.x = inverseSqrt(r12.x);
      let v_160 = (r10.xzw * r12.xxx);
      r10 = vec4<f32>(v_160.x, r10.y, v_160.yz);
      let v_161 = dot(r10.xzw, r6.xyz);
      r12.x = clamp(vec4<f32>(v_161, v_161, v_161, v_161).x, 0.0f, 1.0f);
      r12.x = ((-(r12.xxxx)).x + 1.0f);
      r12.y = (r12.x * r12.x);
      r12.y = (r12.y * r12.y);
      r12.x = (r12.y * r12.x);
      r12.x = fma(cb12_12.tint_symbol_4[0u].y, r12.x, r5.w);
      let v_162 = dot(r10.xzw, r2.xyz);
      r10.x = clamp(vec4<f32>(v_162, v_162, v_162, v_162).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r10.x * r10.y);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r12.x);
      r10.x = (r11.w * r10.x);
      r8.w = (r8.w * r10.x);
      r8.w = (r6.w * r8.w);
      let v_163 = fma(r8.www, cb3_3.tint_symbol_2[20u].xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_163.xyz);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r8.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r8.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_164 = ((-(v6.xxyz)).xzw + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_164.x, r10.y, v_164.yz);
      let v_165 = (v6.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_165.xyz, r12.w);
      r11.w = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r11.w = clamp(((r11.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r11.w = (r11.w * cb3_3.tint_symbol_2[21u].w);
      let v_166 = fma(cb3_3.tint_symbol_2[13u].xyz, r11.www, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_166.xyz, r12.w);
      let v_167 = (r12.xyz + v_18.xyz);
      r12 = vec4<f32>(v_167.xyz, r12.w);
      let v_168 = bitcast<vec3<u32>>(r8.www);
      let v_169 = r10.xzw;
      let v_170 = select(r12.xyz, v_169, (v_168 != vec3<u32>()));
      r10 = vec4<f32>(v_170.x, r10.y, v_170.yz);
      r8.w = dot(r10.xzw, r10.xzw);
      let v_171 = (r10.xzw + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_171.x, r10.y, v_171.yz);
      r11.w = dot(r10.xzw, r10.xzw);
      r11.w = inverseSqrt(r11.w);
      let v_172 = (r10.xzw * r11.www);
      r10 = vec4<f32>(v_172.x, r10.y, v_172.yz);
      r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r11.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r11.w = fma(r11.w, r8.w, cb3_3.tint_symbol_2[13u].w);
      r8.w = (r8.w / r11.w);
      let v_173 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r11.w = dot(r10.xzw, v_173.xyz);
      r11.w = clamp(fma(r11.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_174 = dot(r10.xzw, r2.xyz);
      r12.x = clamp(vec4<f32>(v_174, v_174, v_174, v_174).x, 0.0f, 1.0f);
      r11.w = (r11.w * r12.x);
      r12.x = (r8.w * r11.w);
      let v_175 = (r12.xxx * cb3_3.tint_symbol_2[21u].xyz);
      r12 = vec4<f32>(v_175.xyz, r12.w);
      let v_176 = fma(r12.xyz, r0.xyz, r11.xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      let v_177 = fma(r5.xyz, r1.yyy, r10.xzw);
      r10 = vec4<f32>(v_177.x, r10.y, v_177.yz);
      r12.x = dot(r10.xzw, r10.xzw);
      r12.x = inverseSqrt(r12.x);
      let v_178 = (r10.xzw * r12.xxx);
      r10 = vec4<f32>(v_178.x, r10.y, v_178.yz);
      let v_179 = dot(r10.xzw, r6.xyz);
      r12.x = clamp(vec4<f32>(v_179, v_179, v_179, v_179).x, 0.0f, 1.0f);
      r12.x = ((-(r12.xxxx)).x + 1.0f);
      r12.y = (r12.x * r12.x);
      r12.y = (r12.y * r12.y);
      r12.x = (r12.y * r12.x);
      r12.x = fma(cb12_12.tint_symbol_4[0u].y, r12.x, r5.w);
      let v_180 = dot(r10.xzw, r2.xyz);
      r10.x = clamp(vec4<f32>(v_180, v_180, v_180, v_180).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r10.x * r10.y);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r12.x);
      r10.x = (r11.w * r10.x);
      r8.w = (r8.w * r10.x);
      r8.w = (r6.w * r8.w);
      let v_181 = fma(r8.www, cb3_3.tint_symbol_2[21u].xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_181.xyz);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r8.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_182 = ((-(v6.xxyz)).xzw + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_182.x, r10.y, v_182.yz);
      let v_183 = (v6.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_183.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[22u].w);
      let v_184 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.www, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_184.xyz, r12.w);
      let v_185 = (r12.xyz + v_18.xyz);
      r12 = vec4<f32>(v_185.xyz, r12.w);
      let v_186 = bitcast<vec3<u32>>(r4.www);
      let v_187 = r10.xzw;
      let v_188 = select(r12.xyz, v_187, (v_186 != vec3<u32>()));
      r10 = vec4<f32>(v_188.x, r10.y, v_188.yz);
      r4.w = dot(r10.xzw, r10.xzw);
      let v_189 = (r10.xzw + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_189.x, r10.y, v_189.yz);
      r8.w = dot(r10.xzw, r10.xzw);
      r8.w = inverseSqrt(r8.w);
      let v_190 = (r8.www * r10.xzw);
      r10 = vec4<f32>(v_190.x, r10.y, v_190.yz);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r4.w, cb3_3.tint_symbol_2[14u].w);
      r4.w = (r4.w / r8.w);
      let v_191 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.w = dot(r10.xzw, v_191.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_192 = dot(r10.xzw, r2.xyz);
      r11.w = clamp(vec4<f32>(v_192, v_192, v_192, v_192).w, 0.0f, 1.0f);
      r8.w = (r8.w * r11.w);
      r11.w = (r4.w * r8.w);
      let v_193 = (r11.www * cb3_3.tint_symbol_2[22u].xyz);
      r12 = vec4<f32>(v_193.xyz, r12.w);
      let v_194 = fma(r12.xyz, r0.xyz, r11.xyz);
      r11 = vec4<f32>(v_194.xyz, r11.w);
      let v_195 = fma(r5.xyz, r1.yyy, r10.xzw);
      r5 = vec4<f32>(v_195.xyz, r5.w);
      r1.y = dot(r5.xyz, r5.xyz);
      r1.y = inverseSqrt(r1.y);
      let v_196 = (r1.yyy * r5.xyz);
      r5 = vec4<f32>(v_196.xyz, r5.w);
      let v_197 = dot(r5.xyz, r6.xyz);
      r1.y = clamp(vec4<f32>(v_197, v_197, v_197, v_197).y, 0.0f, 1.0f);
      r1.y = ((-(r1.yyyy)).y + 1.0f);
      r6.x = (r1.y * r1.y);
      r6.x = (r6.x * r6.x);
      r1.y = (r1.y * r6.x);
      r1.y = fma(cb12_12.tint_symbol_4[0u].y, r1.y, r5.w);
      let v_198 = dot(r5.xyz, r2.xyz);
      r5.x = clamp(vec4<f32>(v_198, v_198, v_198, v_198).x, 0.0f, 1.0f);
      r5.x = log2(r5.x);
      r5.x = (r5.x * r10.y);
      r5.x = exp2(r5.x);
      r1.y = (r1.y * r5.x);
      r1.y = (r8.w * r1.y);
      r1.y = (r4.w * r1.y);
      r1.y = (r6.w * r1.y);
      let v_199 = fma(r1.yyy, cb3_3.tint_symbol_2[22u].xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_199.xyz);
    }
  }
  r1.y = (r7.w * r7.w);
  r2.w = (r2.w * r2.w);
  let v_200 = (r9.yzw * r2.www);
  r5 = vec4<f32>(v_200.xyz, r5.w);
  let v_201 = fma(r1.yyy, r11.xyz, r5.xyz);
  r5 = vec4<f32>(v_201.xyz, r5.w);
  let v_202 = fma(r7.xyz, r4.zzz, r5.xyz);
  r5 = vec4<f32>(v_202.xyz, r5.w);
  r1.y = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.y = (r1.y * cb3_3.tint_symbol_2[44u].w);
  r1.y = max(r1.y, 0.0f);
  let v_203 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_203.xyz, r6.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_204 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_204.xyz, r7.w);
  let v_205 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_205.xyz, r7.w);
  let v_206 = fma(r6.xyz, r1.zzz, r7.xyz);
  r6 = vec4<f32>(v_206.xyz, r6.w);
  let v_207 = (r4.yyy * r6.xyz);
  r6 = vec4<f32>(v_207.xyz, r6.w);
  let v_208 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(r1.x, v_208.xyz);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_209 = dot(r7.xyz, r2.xyz);
  r2.x = clamp(vec4<f32>(v_209, v_209, v_209, v_209).x, 0.0f, 1.0f);
  let v_210 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.xxx, r1.yzw);
  r1 = vec4<f32>(r1.x, v_210.xyz);
  let v_211 = fma(r1.yzw, r4.xxx, r6.xyz);
  r1 = vec4<f32>(r1.x, v_211.xyz);
  let v_212 = (r7.www * r1.yzw);
  r1 = vec4<f32>(r1.x, v_212.xyz);
  let v_213 = fma(r1.yzw, r0.xyz, r5.xyz);
  r1 = vec4<f32>(r1.x, v_213.xyz);
  r2.x = ((-(r7.wwww)).x + 1.0f);
  r2.y = max(r4.y, r4.x);
  let v_214 = (r2.yyy * r3.xyz);
  r2 = vec4<f32>(r2.x, v_214.xyz);
  r3.x = clamp(((r3.wwww * vec4<f32>(0.00177619897294789553f))).x, 0.0f, 1.0f);
  let v_215 = (r2.yzw * r3.xxx);
  r3 = vec4<f32>(v_215.xyz, r3.w);
  let v_216 = (r3.xyz * vec3<f32>(0.68169009685516357422f));
  r3 = vec4<f32>(v_216.xyz, r3.w);
  let v_217 = fma(r2.yzw, vec3<f32>(0.31830990314483642578f), r3.xyz);
  r2 = vec4<f32>(r2.x, v_217.xyz);
  let v_218 = fma(r2.yzw, r2.xxx, r1.yzw);
  r1 = vec4<f32>(r1.x, v_218.xyz);
  r1.x = (r1.x * r9.x);
  let v_219 = fma(r0.xyz, r1.xxx, r1.yzw);
  r0 = vec4<f32>(v_219.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r8.xyz, r8.xyz);
    r1.x = sqrt(r0.w);
    let v_220 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_220.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r8.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_221 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_221 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_222 = (r0.www * r8.xyz);
    r2 = vec4<f32>(v_222.xyz, r2.w);
    let v_223 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_223, v_223, v_223, v_223).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_224 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_224, v_224, v_224, v_224).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_225 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_225.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_226 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_226.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_227 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_227.xyz, r2.w);
    let v_228 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_228.xyz, r2.w);
    let v_229 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_229.xyz, r3.w);
    let v_230 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_230.xyz, r2.w);
    let v_231 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_232 = (r2.xyz + v_231.xyz);
    r2 = vec4<f32>(v_232.xyz, r2.w);
    let v_233 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_233.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_234 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_234.xyz, r3.w);
    let v_235 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_235.xy, r1.z, v_235.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_236 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_236.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_237 = -(r0.xyxz);
    let v_238 = fma(r1.xyw, r0.www, v_237.xyw);
    r1 = vec4<f32>(v_238.xy, r1.z, v_238.z);
    let v_239 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_239.xyz, r1.w);
  } else {
    r0.w = dot(r8.xyz, r8.xyz);
    r1.w = sqrt(r0.w);
    let v_240 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_240.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r8.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_241 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_241 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_242 = (r0.www * r8.xyz);
    r3 = vec4<f32>(v_242.xyz, r3.w);
    let v_243 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_243, v_243, v_243, v_243).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_244 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_244, v_244, v_244, v_244).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_245 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_245.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_246 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_246.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_247 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_247.xyz, r3.w);
    let v_248 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_248.xyz, r3.w);
    let v_249 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_249.xyz, r4.w);
    let v_250 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_250.xyz, r3.w);
    let v_251 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_252 = (r3.xyz + v_251.xyz);
    r3 = vec4<f32>(v_252.xyz, r3.w);
    let v_253 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_253.x, r2.y, v_253.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_254 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_254.xyz, r3.w);
    let v_255 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_255.x, r2.y, v_255.yz);
    let v_256 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_256.x, r2.y, v_256.yz);
    let v_257 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_257.xyz, r1.w);
  }
  let v_258 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_258.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_259 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_259);
  return o0;
}
