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

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

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
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
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
  r1.w = max(cb12_12.tint_symbol_4[0u].x, 0.00100000004749745131f);
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
  r0.w = (r0.w * v0.w);
  let v_9 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  let v_10 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_11.xy, r1.zw);
  let v_12 = ((-(v6.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  r2.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_13 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = (r3.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = fma(r3.xxx, cb6_6.tint_symbol_5[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  let v_16 = fma(r3.zzz, cb6_6.tint_symbol_5[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_16.xyz, r4.w);
  let v_17 = fma(r4.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r5 = vec4<f32>(v_17.xyz, r5.w);
  let v_18 = &(x0[0u]);
  let v_19 = r5;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = fma(r4.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r6 = vec4<f32>(v_20.xyz, r6.w);
  let v_21 = &(x0[1u]);
  let v_22 = r6;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  let v_23 = fma(r4.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r7 = vec4<f32>(v_23.xyz, r7.w);
  let v_24 = &(x0[2u]);
  let v_25 = r7;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  let v_26 = fma(r4.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  let v_27 = &(x0[3u]);
  let v_28 = r4;
  *(v_27) = vec4<f32>(v_28.xyz, (*(v_27)).w);
  let v_29 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_30 = r8;
  r8 = vec4<f32>(v_30.x, v_29.x, v_30.z, v_29.y);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_31 = abs(r7.yyyy);
  r4.z = max(v_31.z, abs(r7.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r3.w)));
  let v_32 = (bitcast<u32>(r4.z) != 0u);
  let v_33 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_33, v_32);
  let v_34 = abs(r6.yyyy);
  r4.w = max(v_34.w, abs(r6.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_35 = bitcast<u32>(r4.w);
  r4.z = select(r4.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_35 != 0u));
  let v_36 = abs(r5.yyyy);
  r4.w = max(v_36.w, abs(r5.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_37 = bitcast<u32>(r3.w);
  r3.w = select(r4.z, 0.0f, (v_37 != 0u));
  let v_38 = x0[bitcast<i32>(r3.w)];
  r5 = vec4<f32>(v_38.xyz, r5.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.z = (r3.w + 0.5f);
  r4.z = (r4.z * 0.25f);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(1065353216u)));
  r3.w = dot(r6, cb6_6.tint_symbol_5[12u]);
  r4.w = dot(r6, cb6_6.tint_symbol_5[13u]);
  r6.x = (r5.x + 0.5f);
  r6.y = fma(r5.y, 0.25f, r4.z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r5.z);
  let v_39 = dpdx(r6.xyy);
  r7 = vec4<f32>(v_39.xy, r7.z, v_39.z);
  r7.z = dpdx(r3.w);
  let v_40 = dpdy(r6.yxy);
  r9 = vec4<f32>(v_40.xyz, r9.w);
  r9.w = dpdy(r3.w);
  let v_41 = (r7.yw * r9.yw);
  r5 = vec4<f32>(v_41.xy, r5.zw);
  let v_42 = -(r5.xyxx);
  let v_43 = fma(r7.xz, r9.xz, v_42.xy);
  r10 = vec4<f32>(v_43.xy, r10.zw);
  r5.x = (1.0f / r10.x);
  r5.y = (r7.z * r9.y);
  let v_44 = -(r5.yyyy);
  r10.z = fma(r7.x, r9.w, v_44.z);
  let v_45 = (r5.xx * r10.yz);
  r5 = vec4<f32>(v_45.xy, r5.zw);
  let v_46 = max(r5.xy, vec2<f32>());
  r5 = vec4<f32>(v_46.xy, r5.zw);
  let v_47 = min(r5.xy, vec2<f32>(0.5f));
  r5 = vec4<f32>(v_47.xy, r5.zw);
  r3.w = fma((-(r4.wwww)).w, r5.x, r3.w);
  r3.w = fma((-(r4.wwww)).w, r5.y, r3.w);
  let v_48 = bitcast<u32>(r4.z);
  let v_49 = r3.w;
  r8.z = select(r5.z, v_49, (v_48 != 0u));
  r6.z = 0.0f;
  let v_50 = (r6.xyz + r8.ywz);
  r5 = vec4<f32>(v_50.xyz, r5.w);
  let v_51 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r8 = vec4<f32>(v_51.xy, r8.zw);
  let v_52 = (r6.xyz + r8.xyz);
  r7 = vec4<f32>(v_52.xyz, r7.w);
  let v_53 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r8 = vec4<f32>(v_53.xy, r8.zw);
  let v_54 = (r6.xyz + r8.xyz);
  r9 = vec4<f32>(v_54.xyz, r9.w);
  let v_55 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r8 = vec4<f32>(v_55.xy, r8.zw);
  let v_56 = (r6.xyz + r8.xyz);
  r10 = vec4<f32>(v_56.xyz, r10.w);
  let v_57 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r8 = vec4<f32>(v_57.xy, r8.zw);
  let v_58 = (r6.xyz + r8.xyz);
  r11 = vec4<f32>(v_58.xyz, r11.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r8 = vec4<f32>(v_59.xy, r8.zw);
  let v_60 = (r6.xyz + r8.xyz);
  r12 = vec4<f32>(v_60.xyz, r12.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r8 = vec4<f32>(v_61.xy, r8.zw);
  let v_62 = (r6.xyz + r8.xyz);
  r13 = vec4<f32>(v_62.xyz, r13.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r8 = vec4<f32>(v_63.xy, r8.zw);
  let v_64 = (r6.xyz + r8.xyz);
  r14 = vec4<f32>(v_64.xyz, r14.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r8 = vec4<f32>(v_65.xy, r8.zw);
  let v_66 = (r6.xyz + r8.xyz);
  r15 = vec4<f32>(v_66.xyz, r15.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r8 = vec4<f32>(v_67.xy, r8.zw);
  let v_68 = (r6.xyz + r8.xyz);
  r16 = vec4<f32>(v_68.xyz, r16.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r8 = vec4<f32>(v_69.xy, r8.zw);
  let v_70 = (r6.xyz + r8.xyz);
  r17 = vec4<f32>(v_70.xyz, r17.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r8 = vec4<f32>(v_71.xy, r8.zw);
  let v_72 = (r6.xyz + r8.xyz);
  r18 = vec4<f32>(v_72.xyz, r18.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r8 = vec4<f32>(v_73.xy, r8.zw);
  let v_74 = (r6.xyz + r8.xyz);
  r19 = vec4<f32>(v_74.xyz, r19.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r8 = vec4<f32>(v_75.xy, r8.zw);
  let v_76 = (r6.xyz + r8.xyz);
  r20 = vec4<f32>(v_76.xyz, r20.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r8 = vec4<f32>(v_77.xy, r8.zw);
  let v_78 = (r6.xyz + r8.xyz);
  r21 = vec4<f32>(v_78.xyz, r21.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r8 = vec4<f32>(v_79.xy, r8.zw);
  let v_80 = (r6.xyz + r8.xyz);
  r6 = vec4<f32>(v_80.xyz, r6.w);
  let v_81 = r5.xyxx;
  r5.x = textureSampleCompareLevel(t15, s15, v_81.xy, r5.z);
  let v_82 = r7.xyxx;
  r5.y = textureSampleCompareLevel(t15, s15, v_82.xy, r7.z);
  let v_83 = r9.xyxx;
  r5.z = textureSampleCompareLevel(t15, s15, v_83.xy, r9.z);
  let v_84 = r10.xyxx;
  r5.w = textureSampleCompareLevel(t15, s15, v_84.xy, r10.z);
  let v_85 = r11.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_85.xy, r11.z);
  let v_86 = r12.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_86.xy, r12.z);
  let v_87 = r13.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_87.xy, r13.z);
  let v_88 = r14.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_88.xy, r14.z);
  let v_89 = r15.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_89.xy, r15.z);
  let v_90 = r16.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_90.xy, r16.z);
  let v_91 = r17.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_91.xy, r17.z);
  let v_92 = r18.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_92.xy, r18.z);
  let v_93 = r19.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_93.xy, r19.z);
  let v_94 = r20.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_94.xy, r20.z);
  let v_95 = r21.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_95.xy, r21.z);
  let v_96 = r6.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_96.xy, r6.z);
  r5 = (r5 + r7);
  r5 = (r8 + r5);
  r5 = (r9 + r5);
  r3.w = dot(r5, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_97 = abs(r4.yyyy);
  r4.x = max(v_97.x, abs(r4.xxxx).x);
  r4.x = clamp(fma(r4.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r4.x * r2.w);
  r2.w = fma(r3.w, 0.0625f, r2.w);
  r2.w = (r2.w * r2.w);
  r2.w = min(r2.w, 1.0f);
  r3.w = clamp(fma(v6.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_5[3u].z);
  let v_98 = -(r2.wwww);
  r2.w = fma(r3.w, v_98.w, r2.w);
  let v_99 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_100 = dot(r2.xyz, v_99.xyz);
  r3.w = clamp(vec4<f32>(v_100, v_100, v_100, v_100).w, 0.0f, 1.0f);
  let v_101 = (r0.xyz * r3.www);
  r4 = vec4<f32>(v_101.xyz, r4.w);
  let v_102 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_102.xyz, r4.w);
  r1.z = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.z = (r1.z * cb3_3.tint_symbol_2[44u].w);
  r1.z = max(r1.z, 0.0f);
  let v_103 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_103.xyz, r5.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_104 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_104.xyz, r6.w);
  let v_105 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_105.xyz, r6.w);
  let v_106 = fma(r5.xyz, r1.www, r6.xyz);
  r5 = vec4<f32>(v_106.xyz, r5.w);
  let v_107 = (r1.yyy * r5.xyz);
  r5 = vec4<f32>(v_107.xyz, r5.w);
  let v_108 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(r1.x, v_108.xyz);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_109 = dot(r6.xyz, r2.xyz);
  r2.x = clamp(vec4<f32>(v_109, v_109, v_109, v_109).x, 0.0f, 1.0f);
  let v_110 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.xxx, r1.yzw);
  r1 = vec4<f32>(r1.x, v_110.xyz);
  let v_111 = fma(r1.yzw, r1.xxx, r5.xyz);
  r1 = vec4<f32>(v_111.xyz, r1.w);
  let v_112 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_112.xyz, r0.w);
  let v_113 = fma(r4.xyz, r2.www, r0.xyz);
  r0 = vec4<f32>(v_113.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r1.x = dot(r3.xyz, r3.xyz);
    r1.y = sqrt(r1.x);
    let v_114 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.z = (r1.y + v_114.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r1.y * r3.z);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_115 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_115 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_116 = (r1.xxx * r3.xyz);
    r2 = vec4<f32>(v_116.xyz, r2.w);
    let v_117 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.x = clamp(vec4<f32>(v_117, v_117, v_117, v_117).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
    r1.x = exp2(r1.x);
    let v_118 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_118, v_118, v_118, v_118).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
    let v_119 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r1.z + v_119.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_120 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r1.z * v_120.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_121 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(r2.x, v_121.xyz);
    let v_122 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(r2.x, v_122.xyz);
    let v_123 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_123.xyz, r4.w);
    let v_124 = fma(r2.xxx, r4.xyz, r2.yzw);
    r2 = vec4<f32>(v_124.xyz, r2.w);
    let v_125 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_126 = (r2.xyz + v_125.xyz);
    r2 = vec4<f32>(v_126.xyz, r2.w);
    let v_127 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_127.xyz, r2.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_128 = ((-(r2.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_128.xyz, r4.w);
    let v_129 = fma(r1.yyy, r4.xyz, r2.xyz);
    r1 = vec4<f32>(v_129.xyz, r1.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_130 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_130.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r2.x = (r2.x + -1.0f);
      r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r2.x = 1.0f;
    }
    let v_131 = -(r0.xyzx);
    let v_132 = fma(r1.xyz, r2.xxx, v_131.xyz);
    r1 = vec4<f32>(v_132.xyz, r1.w);
    let v_133 = fma(r1.www, r1.xyz, r0.xyz);
    r1 = vec4<f32>(v_133.xyz, r1.w);
  } else {
    r1.w = dot(r3.xyz, r3.xyz);
    r2.x = sqrt(r1.w);
    let v_134 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_134.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r2.x * r3.z);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_135 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_135 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_136 = (r1.www * r3.xyz);
    r3 = vec4<f32>(v_136.xyz, r3.w);
    let v_137 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_137, v_137, v_137, v_137).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_138 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_138, v_138, v_138, v_138).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].y);
    let v_139 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r2.y + v_139.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r2.z = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).z, 0.0f, 1.0f);
    let v_140 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.y = (r2.y * v_140.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    let v_141 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_141.xyz, r3.w);
    let v_142 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_142.xyz, r3.w);
    let v_143 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_143.xyz, r4.w);
    let v_144 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_144.xyz, r3.w);
    let v_145 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_146 = (r3.xyz + v_145.xyz);
    r3 = vec4<f32>(v_146.xyz, r3.w);
    let v_147 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_147.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_148 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_148.xyz, r4.w);
    let v_149 = fma(r2.xxx, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_149.xy, r2.z, v_149.z);
    let v_150 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_150.xy, r2.z, v_150.z);
    let v_151 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_151.xyz, r1.w);
  }
  let v_152 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_152.xyz, o0.w);
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_153 : vec4<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v4, v5, v6, v_153);
  return tint_symbol_8(o0, o1, o2);
}
