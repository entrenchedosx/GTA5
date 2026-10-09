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

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

struct cb15_struct {
  tint_symbol_4 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v5 : vec4<f32>;

var<private> v6 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_6;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v5 = v_2;
  x1[0u].x = v6[0u];
  x1[0u].y = v6[1u];
  x1[0u].z = v6[2u];
  x1[0u].w = v6[3u];
  r0 = textureSample(t0, s0, v0.xyz.xyxx.xy);
  r1.x = dot(v1.xyz, v1.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xxx * v1.xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  let v_4 = (r0.xyz * cb11_11.tint_symbol_3[0u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r2.x = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).x, 0.0f, 1.0f);
  r2.x = (r2.x * cb2_2.tint_symbol_1[15u].y);
  r2.y = (v4.x * 0.30000001192092895508f);
  let v_5 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  r2.z = dot(r3.xyz, r3.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_7 = (r2.zzz * r3.xyz);
  r4 = vec4<f32>(v_7.xyz, r4.w);
  r2.z = (cb2_2.tint_symbol_1[15u].z * cb2_2.tint_symbol_1[15u].z);
  r2.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_8 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = (r3.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r5 = vec4<f32>(v_9.xyz, r5.w);
  let v_10 = fma(r3.xxx, cb6_6.tint_symbol_4[0u].xyz, r5.xyz);
  r5 = vec4<f32>(v_10.xyz, r5.w);
  let v_11 = fma(r3.zzz, cb6_6.tint_symbol_4[2u].xyz, r5.xyz);
  r5 = vec4<f32>(v_11.xyz, r5.w);
  let v_12 = fma(r5.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r6 = vec4<f32>(v_12.xyz, r6.w);
  let v_13 = &(x0[0u]);
  let v_14 = r6;
  *(v_13) = vec4<f32>(v_14.xyz, (*(v_13)).w);
  let v_15 = fma(r5.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r7 = vec4<f32>(v_15.xyz, r7.w);
  let v_16 = &(x0[1u]);
  let v_17 = r7;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = fma(r5.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r8 = vec4<f32>(v_18.xyz, r8.w);
  let v_19 = &(x0[2u]);
  let v_20 = r8;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = fma(r5.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  let v_22 = &(x0[3u]);
  let v_23 = r5;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  let v_24 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_25 = r9;
  r9 = vec4<f32>(v_25.x, v_24.x, v_25.z, v_24.y);
  r3.w = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_26 = abs(r8.yyyy);
  r4.w = max(v_26.w, abs(r8.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_27 = (bitcast<u32>(r4.w) != 0u);
  let v_28 = bitcast<f32>(v.tint_symbol_5[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_5[1i].x), v_28, v_27);
  let v_29 = abs(r7.yyyy);
  r5.z = max(v_29.z, abs(r7.xxxx).z);
  r5.z = bitcast<f32>(select(0u, 4294967295u, (r5.z < r3.w)));
  let v_30 = bitcast<u32>(r5.z);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_5[2i].x), (v_30 != 0u));
  let v_31 = abs(r6.yyyy);
  r5.z = max(v_31.z, abs(r6.xxxx).z);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.z < r3.w)));
  let v_32 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_32 != 0u));
  let v_33 = x0[bitcast<i32>(r3.w)];
  r6 = vec4<f32>(v_33.xyz, r6.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.w = (r3.w + 0.5f);
  r4.w = (r4.w * 0.25f);
  r7 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r7 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r7) & vec4<u32>(1065353216u)));
  r3.w = dot(r7, cb6_6.tint_symbol_4[12u]);
  r5.z = dot(r7, cb6_6.tint_symbol_4[13u]);
  r7.x = (r6.x + 0.5f);
  r7.y = fma(r6.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r6.z);
  let v_34 = dpdx(r7.xyy);
  r8 = vec4<f32>(v_34.xy, r8.z, v_34.z);
  r8.z = dpdx(r3.w);
  let v_35 = dpdy(r7.yxy);
  r10 = vec4<f32>(v_35.xyz, r10.w);
  r10.w = dpdy(r3.w);
  let v_36 = (r8.yw * r10.yw);
  r6 = vec4<f32>(v_36.xy, r6.zw);
  let v_37 = -(r6.xyxx);
  let v_38 = fma(r8.xz, r10.xz, v_37.xy);
  r11 = vec4<f32>(v_38.xy, r11.zw);
  r5.w = (1.0f / r11.x);
  r6.x = (r8.z * r10.y);
  let v_39 = -(r6.xxxx);
  r11.z = fma(r8.x, r10.w, v_39.z);
  let v_40 = (r5.ww * r11.yz);
  r6 = vec4<f32>(v_40.xy, r6.zw);
  let v_41 = max(r6.xy, vec2<f32>());
  r6 = vec4<f32>(v_41.xy, r6.zw);
  let v_42 = min(r6.xy, vec2<f32>(0.5f));
  r6 = vec4<f32>(v_42.xy, r6.zw);
  r3.w = fma((-(r5.zzzz)).w, r6.x, r3.w);
  r3.w = fma((-(r5.zzzz)).w, r6.y, r3.w);
  let v_43 = bitcast<u32>(r4.w);
  let v_44 = r3.w;
  r9.z = select(r6.z, v_44, (v_43 != 0u));
  r7.z = 0.0f;
  let v_45 = (r7.xyz + r9.ywz);
  r6 = vec4<f32>(v_45.xyz, r6.w);
  let v_46 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r9 = vec4<f32>(v_46.xy, r9.zw);
  let v_47 = (r7.xyz + r9.xyz);
  r8 = vec4<f32>(v_47.xyz, r8.w);
  let v_48 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r9 = vec4<f32>(v_48.xy, r9.zw);
  let v_49 = (r7.xyz + r9.xyz);
  r10 = vec4<f32>(v_49.xyz, r10.w);
  let v_50 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r9 = vec4<f32>(v_50.xy, r9.zw);
  let v_51 = (r7.xyz + r9.xyz);
  r11 = vec4<f32>(v_51.xyz, r11.w);
  let v_52 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r9 = vec4<f32>(v_52.xy, r9.zw);
  let v_53 = (r7.xyz + r9.xyz);
  r12 = vec4<f32>(v_53.xyz, r12.w);
  let v_54 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r9 = vec4<f32>(v_54.xy, r9.zw);
  let v_55 = (r7.xyz + r9.xyz);
  r13 = vec4<f32>(v_55.xyz, r13.w);
  let v_56 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r9 = vec4<f32>(v_56.xy, r9.zw);
  let v_57 = (r7.xyz + r9.xyz);
  r14 = vec4<f32>(v_57.xyz, r14.w);
  let v_58 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r9 = vec4<f32>(v_58.xy, r9.zw);
  let v_59 = (r7.xyz + r9.xyz);
  r15 = vec4<f32>(v_59.xyz, r15.w);
  let v_60 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r9 = vec4<f32>(v_60.xy, r9.zw);
  let v_61 = (r7.xyz + r9.xyz);
  r16 = vec4<f32>(v_61.xyz, r16.w);
  let v_62 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r9 = vec4<f32>(v_62.xy, r9.zw);
  let v_63 = (r7.xyz + r9.xyz);
  r17 = vec4<f32>(v_63.xyz, r17.w);
  let v_64 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r9 = vec4<f32>(v_64.xy, r9.zw);
  let v_65 = (r7.xyz + r9.xyz);
  r18 = vec4<f32>(v_65.xyz, r18.w);
  let v_66 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r9 = vec4<f32>(v_66.xy, r9.zw);
  let v_67 = (r7.xyz + r9.xyz);
  r19 = vec4<f32>(v_67.xyz, r19.w);
  let v_68 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r9 = vec4<f32>(v_68.xy, r9.zw);
  let v_69 = (r7.xyz + r9.xyz);
  r20 = vec4<f32>(v_69.xyz, r20.w);
  let v_70 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r9 = vec4<f32>(v_70.xy, r9.zw);
  let v_71 = (r7.xyz + r9.xyz);
  r21 = vec4<f32>(v_71.xyz, r21.w);
  let v_72 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r9 = vec4<f32>(v_72.xy, r9.zw);
  let v_73 = (r7.xyz + r9.xyz);
  r22 = vec4<f32>(v_73.xyz, r22.w);
  let v_74 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r9 = vec4<f32>(v_74.xy, r9.zw);
  let v_75 = (r7.xyz + r9.xyz);
  r7 = vec4<f32>(v_75.xyz, r7.w);
  let v_76 = r6.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_76.xy, r6.z);
  let v_77 = r8.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_77.xy, r8.z);
  let v_78 = r10.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_78.xy, r10.z);
  let v_79 = r11.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_79.xy, r11.z);
  let v_80 = r12.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_80.xy, r12.z);
  let v_81 = r13.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_81.xy, r13.z);
  let v_82 = r14.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_82.xy, r14.z);
  let v_83 = r15.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_83.xy, r15.z);
  let v_84 = r16.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_84.xy, r16.z);
  let v_85 = r17.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_85.xy, r17.z);
  let v_86 = r18.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_86.xy, r18.z);
  let v_87 = r19.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_87.xy, r19.z);
  let v_88 = r20.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_88.xy, r20.z);
  let v_89 = r21.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_89.xy, r21.z);
  let v_90 = r22.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_90.xy, r22.z);
  let v_91 = r7.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_91.xy, r7.z);
  r6 = (r6 + r8);
  r6 = (r9 + r6);
  r6 = (r10 + r6);
  r3.w = dot(r6, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_4[0u].wwww, cb6_6.tint_symbol_4[1u].wwww).w, 0.0f, 1.0f);
  let v_92 = abs(r5.yyyy);
  r4.w = max(v_92.w, abs(r5.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r4.w * r2.w);
  r2.w = fma(r3.w, 0.0625f, r2.w);
  let v_93 = (r2.xw * r2.xw);
  r2 = vec4<f32>(v_93.x, r2.yz, v_93.y);
  r2.w = min(r2.w, 1.0f);
  r3.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_4[3u].xxxx, cb6_6.tint_symbol_4[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_4[3u].z);
  let v_94 = -(r2.wwww);
  r2.w = fma(r3.w, v_94.w, r2.w);
  let v_95 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_96 = dot(r1.yzw, v_95.xyz);
  r3.w = clamp(vec4<f32>(v_96, v_96, v_96, v_96).w, 0.0f, 1.0f);
  let v_97 = dot(r4.xyz, r1.yzw);
  r4.x = clamp(vec4<f32>(v_97, v_97, v_97, v_97).x, 0.0f, 1.0f);
  let v_98 = (r0.xyz * r3.www);
  r4 = vec4<f32>(r4.x, v_98.xyz);
  let v_99 = (r4.yzw * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(r4.x, v_99.xyz);
  r1.x = fma(v1.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_100 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_100.xyz, r5.w);
  r3.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_101 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_101.xyz, r6.w);
  let v_102 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_102.xyz, r6.w);
  let v_103 = fma(r5.xyz, r3.www, r6.xyz);
  r5 = vec4<f32>(v_103.xyz, r5.w);
  let v_104 = (r2.xxx * r5.xyz);
  r5 = vec4<f32>(v_104.xyz, r5.w);
  let v_105 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_105.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_106 = dot(r7.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_106, v_106, v_106, v_106).x, 0.0f, 1.0f);
  let v_107 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r1 = vec4<f32>(v_107.xyz, r1.w);
  let v_108 = fma(r1.xyz, r2.zzz, r5.xyz);
  r1 = vec4<f32>(v_108.xyz, r1.w);
  let v_109 = (r0.xyz * r1.xyz);
  r1 = vec4<f32>(v_109.xyz, r1.w);
  let v_110 = fma(r4.yzw, r2.www, r1.xyz);
  r1 = vec4<f32>(v_110.xyz, r1.w);
  r1.w = (r2.y * r4.x);
  let v_111 = fma(r0.xyz, r1.www, r1.xyz);
  r0 = vec4<f32>(v_111.xyz, r0.w);
  r0.w = clamp(((r0.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.y = sqrt(r1.x);
  let v_112 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.z = (r1.y + v_112.z);
  r1.z = max(r1.z, 0.0f);
  r1.y = (r1.z / r1.y);
  r1.y = (r1.y * r3.z);
  r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
  r2.x = (r1.w * -1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.w = (r2.x / r1.w);
  let v_113 = bitcast<u32>(r1.y);
  r1.y = select(1.0f, r1.w, (v_113 != 0u));
  r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
  r1.y = (r1.y * r1.w);
  r1.y = min(r1.y, 1.0f);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = min(r1.y, 1.0f);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
  r1.x = inverseSqrt(r1.x);
  let v_114 = (r1.xxx * r3.xyz);
  r2 = vec4<f32>(v_114.xyz, r2.w);
  let v_115 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r1.x = clamp(vec4<f32>(v_115, v_115, v_115, v_115).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
  r1.x = exp2(r1.x);
  let v_116 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r2.x = clamp(vec4<f32>(v_116, v_116, v_116, v_116).x, 0.0f, 1.0f);
  r2.x = log2(r2.x);
  r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
  r2.x = exp2(r2.x);
  r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
  let v_117 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.y = (r1.z + v_117.y);
  r2.y = max(r2.y, 0.0f);
  r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
  r2.y = (r2.y * 1.44269502162933349609f);
  r2.y = exp2(r2.y);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
  let v_118 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.z = (r1.z * v_118.z);
  r1.z = (r1.z * 1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  let v_119 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(r2.x, v_119.xyz);
  let v_120 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(r2.x, v_120.xyz);
  let v_121 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_121.xyz, r3.w);
  let v_122 = fma(r2.xxx, r3.xyz, r2.yzw);
  r2 = vec4<f32>(v_122.xyz, r2.w);
  let v_123 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_124 = (r2.xyz + v_123.xyz);
  r2 = vec4<f32>(v_124.xyz, r2.w);
  let v_125 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_125.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_126 = fma(r1.yyy, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_126.xyz, r1.w);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r2.x) != 0u)) {
    let v_127 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_127.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r2.x = (r2.x + -1.0f);
    r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  } else {
    r2.x = 1.0f;
  }
  let v_128 = -(r0.xyzx);
  let v_129 = fma(r1.xyz, r2.xxx, v_128.xyz);
  r1 = vec4<f32>(v_129.xyz, r1.w);
  let v_130 = fma(r1.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_130.xyz, r0.w);
  let v_131 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_131.xyz, o0.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < r0.w)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  o1 = (r0.x * v0.z);
  o0.w = r0.w;
  o2 = r0.x;
}

struct tint_symbol_7 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_132 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v0, v1, v2, v4, v_132);
  return tint_symbol_7(o0, o1, o2);
}
