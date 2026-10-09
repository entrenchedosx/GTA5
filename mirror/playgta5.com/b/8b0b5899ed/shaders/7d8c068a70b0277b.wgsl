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

var<private> o1 : f32;

var<private> o2 : f32;

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
  r0 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r1 = textureSample(t2, s2, v1.xyz.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_4[0u].w, 0.00100000004749745131f);
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
  let v_15 = (r3.xyz * cb12_12.tint_symbol_4[1u].xxx);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  r0.w = (r0.w * v0.w);
  let v_16 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_16.xy, r1.zw);
  let v_17 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = -(v6.xyzx);
  let v_19 = (v_18.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_20 = (r2.www * r4.xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_22 = fma(r4.xyz, r2.www, v_21.xyz);
  r6 = vec4<f32>(v_22.xyz, r6.w);
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_23 = (r3.www * r6.xyz);
  r6 = vec4<f32>(v_23.xyz, r6.w);
  r3.w = clamp(cb12_12.tint_symbol_4[0u].z, 0.0f, 1.0f);
  let v_24 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_24.xy, r1.zw);
  r4.w = (cb12_12.tint_symbol_4[0u].y + -500.0f);
  r4.w = max(r4.w, 0.0f);
  r5.w = ((-(r4.wwww)).w + cb12_12.tint_symbol_4[0u].y);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r5.w, 3.0f, r4.w);
  r5.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_25 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_25.xyz, r7.w);
  let v_26 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_26.xyz, r8.w);
  let v_27 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_27.xyz, r8.w);
  let v_28 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_28.xyz, r8.w);
  let v_29 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_29.xyz, r9.w);
  let v_30 = &(x0[0u]);
  let v_31 = r9;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_32.xyz, r10.w);
  let v_33 = &(x0[1u]);
  let v_34 = r10;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_35.xyz, r11.w);
  let v_36 = &(x0[2u]);
  let v_37 = r11;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_38.xyz, r8.w);
  let v_39 = &(x0[3u]);
  let v_40 = r8;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_42 = r12;
  r12 = vec4<f32>(v_42.x, v_41.x, v_42.z, v_41.y);
  r6.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r6.w = (r6.w * 0.5f);
  let v_43 = abs(r11.yyyy);
  r7.w = max(v_43.w, abs(r11.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_44 = (bitcast<u32>(r7.w) != 0u);
  let v_45 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r7.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_45, v_44);
  let v_46 = abs(r10.yyyy);
  r8.z = max(v_46.z, abs(r10.xxxx).z);
  r8.z = bitcast<f32>(select(0u, 4294967295u, (r8.z < r6.w)));
  let v_47 = bitcast<u32>(r8.z);
  r7.w = select(r7.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_47 != 0u));
  let v_48 = abs(r9.yyyy);
  r8.z = max(v_48.z, abs(r9.xxxx).z);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r8.z < r6.w)));
  let v_49 = bitcast<u32>(r6.w);
  r6.w = select(r7.w, 0.0f, (v_49 != 0u));
  let v_50 = x0[bitcast<i32>(r6.w)];
  r9 = vec4<f32>(v_50.xyz, r9.w);
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
  let v_51 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_51.xy, r11.z, v_51.z);
  r11.z = dpdx(r6.w);
  let v_52 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_52.xyz, r13.w);
  r13.w = dpdy(r6.w);
  let v_53 = (r11.yw * r13.yw);
  r9 = vec4<f32>(v_53.xy, r9.zw);
  let v_54 = -(r9.xyxx);
  let v_55 = fma(r11.xz, r13.xz, v_54.xy);
  r14 = vec4<f32>(v_55.xy, r14.zw);
  r8.w = (1.0f / r14.x);
  r9.x = (r11.z * r13.y);
  let v_56 = -(r9.xxxx);
  r14.z = fma(r11.x, r13.w, v_56.z);
  let v_57 = (r8.ww * r14.yz);
  r9 = vec4<f32>(v_57.xy, r9.zw);
  let v_58 = max(r9.xy, vec2<f32>());
  r9 = vec4<f32>(v_58.xy, r9.zw);
  let v_59 = min(r9.xy, vec2<f32>(0.5f));
  r9 = vec4<f32>(v_59.xy, r9.zw);
  r6.w = fma((-(r8.zzzz)).w, r9.x, r6.w);
  r6.w = fma((-(r8.zzzz)).w, r9.y, r6.w);
  let v_60 = bitcast<u32>(r7.w);
  let v_61 = r6.w;
  r12.z = select(r9.z, v_61, (v_60 != 0u));
  r10.z = 0.0f;
  let v_62 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_62.xyz, r9.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_63.xy, r12.zw);
  let v_64 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_64.xyz, r11.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_65.xy, r12.zw);
  let v_66 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_66.xyz, r13.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_67.xy, r12.zw);
  let v_68 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_68.xyz, r14.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_69.xy, r12.zw);
  let v_70 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_70.xyz, r15.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_71.xy, r12.zw);
  let v_72 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_72.xyz, r16.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_73.xy, r12.zw);
  let v_74 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_74.xyz, r17.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_75.xy, r12.zw);
  let v_76 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_76.xyz, r18.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_77.xy, r12.zw);
  let v_78 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_78.xyz, r19.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_79.xy, r12.zw);
  let v_80 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_80.xyz, r20.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_81.xy, r12.zw);
  let v_82 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_82.xyz, r21.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_83.xy, r12.zw);
  let v_84 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_84.xyz, r22.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_85.xy, r12.zw);
  let v_86 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_86.xyz, r23.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_87.xy, r12.zw);
  let v_88 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_88.xyz, r24.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_89.xy, r12.zw);
  let v_90 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_90.xyz, r25.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_91.xy, r12.zw);
  let v_92 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_92.xyz, r10.w);
  let v_93 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_93.xy, r9.z);
  let v_94 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_94.xy, r11.z);
  let v_95 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_95.xy, r13.z);
  let v_96 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_96.xy, r14.z);
  let v_97 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_97.xy, r15.z);
  let v_98 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_98.xy, r16.z);
  let v_99 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_99.xy, r17.z);
  let v_100 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_100.xy, r18.z);
  let v_101 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_101.xy, r19.z);
  let v_102 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_102.xy, r20.z);
  let v_103 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_103.xy, r21.z);
  let v_104 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_104.xy, r22.z);
  let v_105 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_105.xy, r23.z);
  let v_106 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_106.xy, r24.z);
  let v_107 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_107.xy, r25.z);
  let v_108 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_108.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r6.w = dot(r9, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_109 = abs(r8.yyyy);
  r7.w = max(v_109.w, abs(r8.xxxx).w);
  r7.w = clamp(fma(r7.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r7.w * r5.w);
  r5.w = fma(r6.w, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.w = clamp(fma(v6.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r6.w = sqrt(r6.w);
  r6.w = (r6.w * cb6_6.tint_symbol_5[3u].z);
  let v_110 = -(r5.wwww);
  r5.w = fma(r6.w, v_110.w, r5.w);
  let v_111 = dot(r2.xyz, v_21.xyz);
  r6.w = clamp(vec4<f32>(v_111, v_111, v_111, v_111).w, 0.0f, 1.0f);
  let v_112 = dot(r5.xyz, r2.xyz);
  r8.x = clamp(vec4<f32>(v_112, v_112, v_112, v_112).x, 0.0f, 1.0f);
  let v_113 = dot(r6.xyz, v_21.xyz);
  r8.y = clamp(vec4<f32>(v_113, v_113, v_113, v_113).y, 0.0f, 1.0f);
  let v_114 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_114.xy, r8.zw);
  let v_115 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_115.xy);
  let v_116 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_116.xy);
  let v_117 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_117.xy, r8.zw);
  r7.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_118 = fma(cb12_12.tint_symbol_4[0u].xx, r8.xy, r7.ww);
  r8 = vec4<f32>(v_118.xy, r8.zw);
  let v_119 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_119.xy);
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
  let v_120 = fma(r0.xyz, r6.yyy, r6.xxx);
  r6 = vec4<f32>(v_120.xyz, r6.w);
  let v_121 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_121.xyz, r6.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_122 = (v_18.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_122.xyz, r9.w);
    let v_123 = (v6.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_123.xyz, r10.w);
    r9.w = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r9.w = (r9.w * cb3_3.tint_symbol_2[19u].w);
    let v_124 = fma(cb3_3.tint_symbol_2[11u].xyz, r9.www, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_124.xyz, r10.w);
    let v_125 = (r10.xyz + v_18.xyz);
    r10 = vec4<f32>(v_125.xyz, r10.w);
    let v_126 = bitcast<vec3<u32>>(r8.yyy);
    let v_127 = r9.xyz;
    let v_128 = select(r10.xyz, v_127, (v_126 != vec3<u32>()));
    r9 = vec4<f32>(v_128.xyz, r9.w);
    r8.y = dot(r9.xyz, r9.xyz);
    let v_129 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_129.xyz, r9.w);
    r9.w = dot(r9.xyz, r9.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_130 = (r9.www * r9.xyz);
    r9 = vec4<f32>(v_130.xyz, r9.w);
    r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r9.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r9.w = fma(r9.w, r8.y, cb3_3.tint_symbol_2[11u].w);
    r8.y = (r8.y / r9.w);
    let v_131 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.w = dot(r9.xyz, v_131.xyz);
    r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_132 = dot(r9.xyz, r2.xyz);
    r10.x = clamp(vec4<f32>(v_132, v_132, v_132, v_132).x, 0.0f, 1.0f);
    r9.w = (r9.w * r10.x);
    r10.x = (r8.y * r9.w);
    let v_133 = (r10.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_133.xyz, r10.w);
    let v_134 = (r0.xyz * r10.xyz);
    r10 = vec4<f32>(v_134.xyz, r10.w);
    let v_135 = fma(r4.xyz, r2.www, r9.xyz);
    r9 = vec4<f32>(v_135.xyz, r9.w);
    r10.w = dot(r9.xyz, r9.xyz);
    r10.w = inverseSqrt(r10.w);
    let v_136 = (r9.xyz * r10.www);
    r9 = vec4<f32>(v_136.xyz, r9.w);
    let v_137 = dot(r9.xyz, r5.xyz);
    r10.w = clamp(vec4<f32>(v_137, v_137, v_137, v_137).w, 0.0f, 1.0f);
    r10.w = ((-(r10.wwww)).w + 1.0f);
    r11.x = (r10.w * r10.w);
    r11.x = (r11.x * r11.x);
    r10.w = (r10.w * r11.x);
    r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r7.w);
    let v_138 = dot(r9.xyz, r2.xyz);
    r9.x = clamp(vec4<f32>(v_138, v_138, v_138, v_138).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r8.w * r9.x);
    r9.x = exp2(r9.x);
    r9.x = (r9.x * r10.w);
    r9.x = (r9.w * r9.x);
    r8.y = (r8.y * r9.x);
    r8.y = (r8.z * r8.y);
    let v_139 = (r8.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_139.xyz, r9.w);
  }
  r8.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r8.y) != 0u)) {
    r9.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r8.y = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    let v_140 = bitcast<u32>(r9.w);
    let v_141 = r8.y;
    r6.w = select(r6.w, v_141, (v_140 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_142 = (v_18.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_142.xyz, r11.w);
      let v_143 = (v6.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_143.xyz, r12.w);
      r9.w = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[20u].w);
      let v_144 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.www, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_144.xyz, r12.w);
      let v_145 = (r12.xyz + v_18.xyz);
      r12 = vec4<f32>(v_145.xyz, r12.w);
      let v_146 = bitcast<vec3<u32>>(r8.yyy);
      let v_147 = r11.xyz;
      let v_148 = select(r12.xyz, v_147, (v_146 != vec3<u32>()));
      r11 = vec4<f32>(v_148.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_149 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_149.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_150 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_150.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.y, cb3_3.tint_symbol_2[12u].w);
      r8.y = (r8.y / r9.w);
      let v_151 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.w = dot(r11.xyz, v_151.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_152 = dot(r11.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_152, v_152, v_152, v_152).w, 0.0f, 1.0f);
      r9.w = (r9.w * r10.w);
      r10.w = (r8.y * r9.w);
      let v_153 = (r10.www * cb3_3.tint_symbol_2[20u].xyz);
      r12 = vec4<f32>(v_153.xyz, r12.w);
      let v_154 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_154.xyz, r10.w);
      let v_155 = fma(r4.xyz, r2.www, r11.xyz);
      r11 = vec4<f32>(v_155.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_156 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      let v_157 = dot(r11.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_157, v_157, v_157, v_157).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r7.w);
      let v_158 = dot(r11.xyz, r2.xyz);
      r11.x = clamp(vec4<f32>(v_158, v_158, v_158, v_158).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r8.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r9.w = (r9.w * r10.w);
      r8.y = (r8.y * r9.w);
      r8.y = (r8.z * r8.y);
      let v_159 = fma(r8.yyy, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_159.xyz, r9.w);
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
      let v_160 = (v_18.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      let v_161 = (v6.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_161.xyz, r12.w);
      r9.w = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[21u].w);
      let v_162 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.www, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_162.xyz, r12.w);
      let v_163 = (r12.xyz + v_18.xyz);
      r12 = vec4<f32>(v_163.xyz, r12.w);
      let v_164 = bitcast<vec3<u32>>(r8.yyy);
      let v_165 = r11.xyz;
      let v_166 = select(r12.xyz, v_165, (v_164 != vec3<u32>()));
      r11 = vec4<f32>(v_166.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_167 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_167.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_168 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.y, cb3_3.tint_symbol_2[13u].w);
      r8.y = (r8.y / r9.w);
      let v_169 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.w = dot(r11.xyz, v_169.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_170 = dot(r11.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_170, v_170, v_170, v_170).w, 0.0f, 1.0f);
      r9.w = (r9.w * r10.w);
      r10.w = (r8.y * r9.w);
      let v_171 = (r10.www * cb3_3.tint_symbol_2[21u].xyz);
      r12 = vec4<f32>(v_171.xyz, r12.w);
      let v_172 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = fma(r4.xyz, r2.www, r11.xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_174 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = dot(r11.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_175, v_175, v_175, v_175).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r7.w);
      let v_176 = dot(r11.xyz, r2.xyz);
      r11.x = clamp(vec4<f32>(v_176, v_176, v_176, v_176).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r8.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r9.w = (r9.w * r10.w);
      r8.y = (r8.y * r9.w);
      r8.y = (r8.z * r8.y);
      let v_177 = fma(r8.yyy, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_177.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_178 = (v_18.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_178.xyz, r11.w);
      let v_179 = (v6.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_179.xyz, r12.w);
      r8.y = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.y = clamp(((r8.yyyy / cb3_3.tint_symbol_2[22u].wwww)).y, 0.0f, 1.0f);
      r8.y = (r8.y * cb3_3.tint_symbol_2[22u].w);
      let v_180 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_180.xyz, r12.w);
      let v_181 = (r12.xyz + v_18.xyz);
      r12 = vec4<f32>(v_181.xyz, r12.w);
      let v_182 = bitcast<vec3<u32>>(r6.www);
      let v_183 = r11.xyz;
      let v_184 = select(r12.xyz, v_183, (v_182 != vec3<u32>()));
      r11 = vec4<f32>(v_184.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_185 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_185.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      r8.y = inverseSqrt(r8.y);
      let v_186 = (r8.yyy * r11.xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r8.y = fma(r8.y, r6.w, cb3_3.tint_symbol_2[14u].w);
      r6.w = (r6.w / r8.y);
      let v_187 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.y = dot(r11.xyz, v_187.xyz);
      r8.y = clamp(fma(r8.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_188 = dot(r11.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_188, v_188, v_188, v_188).w, 0.0f, 1.0f);
      r8.y = (r8.y * r9.w);
      r9.w = (r6.w * r8.y);
      let v_189 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r12 = vec4<f32>(v_189.xyz, r12.w);
      let v_190 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_190.xyz, r10.w);
      let v_191 = fma(r4.xyz, r2.www, r11.xyz);
      r4 = vec4<f32>(v_191.xyz, r4.w);
      r2.w = dot(r4.xyz, r4.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_192 = (r2.www * r4.xyz);
      r4 = vec4<f32>(v_192.xyz, r4.w);
      let v_193 = dot(r4.xyz, r5.xyz);
      r2.w = clamp(vec4<f32>(v_193, v_193, v_193, v_193).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r5.x = (r2.w * r2.w);
      r5.x = (r5.x * r5.x);
      r2.w = (r2.w * r5.x);
      r2.w = fma(cb12_12.tint_symbol_4[0u].x, r2.w, r7.w);
      let v_194 = dot(r4.xyz, r2.xyz);
      r4.x = clamp(vec4<f32>(v_194, v_194, v_194, v_194).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r8.w);
      r4.x = exp2(r4.x);
      r2.w = (r2.w * r4.x);
      r2.w = (r8.y * r2.w);
      r2.w = (r6.w * r2.w);
      r2.w = (r8.z * r2.w);
      let v_195 = fma(r2.www, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_195.xyz, r9.w);
    }
  }
  r2.w = (r8.x * r8.x);
  r3.w = (r3.w * r3.w);
  let v_196 = (r9.xyz * r3.www);
  r4 = vec4<f32>(v_196.xyz, r4.w);
  let v_197 = fma(r2.www, r10.xyz, r4.xyz);
  r4 = vec4<f32>(v_197.xyz, r4.w);
  let v_198 = fma(r6.xyz, r5.www, r4.xyz);
  r4 = vec4<f32>(v_198.xyz, r4.w);
  r1.z = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.z = (r1.z * cb3_3.tint_symbol_2[44u].w);
  r1.z = max(r1.z, 0.0f);
  let v_199 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_199.xyz, r5.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_200 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_200.xyz, r6.w);
  let v_201 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_201.xyz, r6.w);
  let v_202 = fma(r5.xyz, r1.www, r6.xyz);
  r5 = vec4<f32>(v_202.xyz, r5.w);
  let v_203 = (r1.yyy * r5.xyz);
  r5 = vec4<f32>(v_203.xyz, r5.w);
  let v_204 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_204.xyz, r6.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_205 = dot(r9.xyz, r2.xyz);
  r1.z = clamp(vec4<f32>(v_205, v_205, v_205, v_205).z, 0.0f, 1.0f);
  let v_206 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.zzz, r6.xyz);
  r2 = vec4<f32>(v_206.xyz, r2.w);
  let v_207 = fma(r2.xyz, r1.xxx, r5.xyz);
  r2 = vec4<f32>(v_207.xyz, r2.w);
  let v_208 = (r8.xxx * r2.xyz);
  r2 = vec4<f32>(v_208.xyz, r2.w);
  let v_209 = fma(r2.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_209.xyz, r0.w);
  r1.z = ((-(r8.xxxx)).z + 1.0f);
  r1.x = max(r1.y, r1.x);
  let v_210 = (r1.xxx * r3.xyz);
  r1 = vec4<f32>(v_210.xy, r1.z, v_210.z);
  r2.x = clamp(((r4.wwww * vec4<f32>(0.00177619897294789553f))).x, 0.0f, 1.0f);
  let v_211 = (r1.xyw * r2.xxx);
  r2 = vec4<f32>(v_211.xyz, r2.w);
  let v_212 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_212.xyz, r2.w);
  let v_213 = fma(r1.xyw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_213.xy, r1.z, v_213.z);
  let v_214 = fma(r1.xyw, r1.zzz, r0.xyz);
  r0 = vec4<f32>(v_214.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r1.x = dot(r7.xyz, r7.xyz);
    r1.y = sqrt(r1.x);
    let v_215 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.z = (r1.y + v_215.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r1.y * r7.z);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_216 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_216 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_217 = (r1.xxx * r7.xyz);
    r2 = vec4<f32>(v_217.xyz, r2.w);
    let v_218 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.x = clamp(vec4<f32>(v_218, v_218, v_218, v_218).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
    r1.x = exp2(r1.x);
    let v_219 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_219, v_219, v_219, v_219).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
    let v_220 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r1.z + v_220.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_221 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r1.z * v_221.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_222 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(r2.x, v_222.xyz);
    let v_223 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(r2.x, v_223.xyz);
    let v_224 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_224.xyz, r3.w);
    let v_225 = fma(r2.xxx, r3.xyz, r2.yzw);
    r2 = vec4<f32>(v_225.xyz, r2.w);
    let v_226 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_227 = (r2.xyz + v_226.xyz);
    r2 = vec4<f32>(v_227.xyz, r2.w);
    let v_228 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_228.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_229 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_229.xyz, r3.w);
    let v_230 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_230.xyz, r1.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_231 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_231.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r2.x = (r2.x + -1.0f);
      r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r2.x = 1.0f;
    }
    let v_232 = -(r0.xyzx);
    let v_233 = fma(r1.xyz, r2.xxx, v_232.xyz);
    r1 = vec4<f32>(v_233.xyz, r1.w);
    let v_234 = fma(r1.www, r1.xyz, r0.xyz);
    r1 = vec4<f32>(v_234.xyz, r1.w);
  } else {
    r1.w = dot(r7.xyz, r7.xyz);
    r2.x = sqrt(r1.w);
    let v_235 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_235.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r2.x * r7.z);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_236 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_236 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_237 = (r1.www * r7.xyz);
    r3 = vec4<f32>(v_237.xyz, r3.w);
    let v_238 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_238, v_238, v_238, v_238).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_239 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_239, v_239, v_239, v_239).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].y);
    let v_240 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r2.y + v_240.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r2.z = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).z, 0.0f, 1.0f);
    let v_241 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.y = (r2.y * v_241.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    let v_242 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_242.xyz, r3.w);
    let v_243 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_243.xyz, r3.w);
    let v_244 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_244.xyz, r4.w);
    let v_245 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_245.xyz, r3.w);
    let v_246 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_247 = (r3.xyz + v_246.xyz);
    r3 = vec4<f32>(v_247.xyz, r3.w);
    let v_248 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_248.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_249 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_249.xyz, r4.w);
    let v_250 = fma(r2.xxx, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_250.xy, r2.z, v_250.z);
    let v_251 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_251.xy, r2.z, v_251.z);
    let v_252 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_252.xyz, r1.w);
  }
  let v_253 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_253.xyz, o0.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < r0.w)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  o1 = (r0.x * v1.z);
  o0.w = r0.w;
  o2 = r0.x;
}

struct tint_symbol_8 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_254 : vec4<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_254);
  return tint_symbol_8(o0, o1, o2);
}
