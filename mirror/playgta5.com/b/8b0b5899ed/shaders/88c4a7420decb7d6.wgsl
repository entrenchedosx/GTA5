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

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v5 : vec4<f32>;

var<private> v6 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v5 = v_2;
  x1[0u].x = v6[0u];
  x1[0u].y = v6[1u];
  x1[0u].z = v6[2u];
  x1[0u].w = v6[3u];
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_4 = (r1.xxx * v3.xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  r2.x = (r0.w * cb12_12.tint_symbol_4[0u].x);
  r2.x = (r2.x * cb2_2.tint_symbol_1[15u].w);
  let v_5 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = (r0.w * v0.w);
  let v_6 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_7 = r2;
  r2 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = -(v4.xyzx);
  let v_10 = (v_9.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r2.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_11 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = (r3.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = fma(r3.xxx, cb6_6.tint_symbol_5[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = fma(r3.zzz, cb6_6.tint_symbol_5[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = fma(r4.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = &(x0[0u]);
  let v_17 = r5;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = fma(r4.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  let v_19 = &(x0[1u]);
  let v_20 = r6;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = fma(r4.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r7 = vec4<f32>(v_21.xyz, r7.w);
  let v_22 = &(x0[2u]);
  let v_23 = r7;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  let v_24 = fma(r4.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = &(x0[3u]);
  let v_26 = r4;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  let v_27 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_28 = r8;
  r8 = vec4<f32>(v_28.x, v_27.x, v_28.z, v_27.y);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_29 = abs(r7.yyyy);
  r4.z = max(v_29.z, abs(r7.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r3.w)));
  let v_30 = (bitcast<u32>(r4.z) != 0u);
  let v_31 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_31, v_30);
  let v_32 = abs(r6.yyyy);
  r4.w = max(v_32.w, abs(r6.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_33 = bitcast<u32>(r4.w);
  r4.z = select(r4.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_33 != 0u));
  let v_34 = abs(r5.yyyy);
  r4.w = max(v_34.w, abs(r5.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_35 = bitcast<u32>(r3.w);
  r3.w = select(r4.z, 0.0f, (v_35 != 0u));
  let v_36 = x0[bitcast<i32>(r3.w)];
  r5 = vec4<f32>(v_36.xyz, r5.w);
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
  let v_37 = dpdx(r6.xyy);
  r7 = vec4<f32>(v_37.xy, r7.z, v_37.z);
  r7.z = dpdx(r3.w);
  let v_38 = dpdy(r6.yxy);
  r9 = vec4<f32>(v_38.xyz, r9.w);
  r9.w = dpdy(r3.w);
  let v_39 = (r7.yw * r9.yw);
  r5 = vec4<f32>(v_39.xy, r5.zw);
  let v_40 = -(r5.xyxx);
  let v_41 = fma(r7.xz, r9.xz, v_40.xy);
  r10 = vec4<f32>(v_41.xy, r10.zw);
  r5.x = (1.0f / r10.x);
  r5.y = (r7.z * r9.y);
  let v_42 = -(r5.yyyy);
  r10.z = fma(r7.x, r9.w, v_42.z);
  let v_43 = (r5.xx * r10.yz);
  r5 = vec4<f32>(v_43.xy, r5.zw);
  let v_44 = max(r5.xy, vec2<f32>());
  r5 = vec4<f32>(v_44.xy, r5.zw);
  let v_45 = min(r5.xy, vec2<f32>(0.5f));
  r5 = vec4<f32>(v_45.xy, r5.zw);
  r3.w = fma((-(r4.wwww)).w, r5.x, r3.w);
  r3.w = fma((-(r4.wwww)).w, r5.y, r3.w);
  let v_46 = bitcast<u32>(r4.z);
  let v_47 = r3.w;
  r8.z = select(r5.z, v_47, (v_46 != 0u));
  r6.z = 0.0f;
  let v_48 = (r6.xyz + r8.ywz);
  r5 = vec4<f32>(v_48.xyz, r5.w);
  let v_49 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r8 = vec4<f32>(v_49.xy, r8.zw);
  let v_50 = (r6.xyz + r8.xyz);
  r7 = vec4<f32>(v_50.xyz, r7.w);
  let v_51 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r8 = vec4<f32>(v_51.xy, r8.zw);
  let v_52 = (r6.xyz + r8.xyz);
  r9 = vec4<f32>(v_52.xyz, r9.w);
  let v_53 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r8 = vec4<f32>(v_53.xy, r8.zw);
  let v_54 = (r6.xyz + r8.xyz);
  r10 = vec4<f32>(v_54.xyz, r10.w);
  let v_55 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r8 = vec4<f32>(v_55.xy, r8.zw);
  let v_56 = (r6.xyz + r8.xyz);
  r11 = vec4<f32>(v_56.xyz, r11.w);
  let v_57 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r8 = vec4<f32>(v_57.xy, r8.zw);
  let v_58 = (r6.xyz + r8.xyz);
  r12 = vec4<f32>(v_58.xyz, r12.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r8 = vec4<f32>(v_59.xy, r8.zw);
  let v_60 = (r6.xyz + r8.xyz);
  r13 = vec4<f32>(v_60.xyz, r13.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r8 = vec4<f32>(v_61.xy, r8.zw);
  let v_62 = (r6.xyz + r8.xyz);
  r14 = vec4<f32>(v_62.xyz, r14.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r8 = vec4<f32>(v_63.xy, r8.zw);
  let v_64 = (r6.xyz + r8.xyz);
  r15 = vec4<f32>(v_64.xyz, r15.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r8 = vec4<f32>(v_65.xy, r8.zw);
  let v_66 = (r6.xyz + r8.xyz);
  r16 = vec4<f32>(v_66.xyz, r16.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r8 = vec4<f32>(v_67.xy, r8.zw);
  let v_68 = (r6.xyz + r8.xyz);
  r17 = vec4<f32>(v_68.xyz, r17.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r8 = vec4<f32>(v_69.xy, r8.zw);
  let v_70 = (r6.xyz + r8.xyz);
  r18 = vec4<f32>(v_70.xyz, r18.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r8 = vec4<f32>(v_71.xy, r8.zw);
  let v_72 = (r6.xyz + r8.xyz);
  r19 = vec4<f32>(v_72.xyz, r19.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r8 = vec4<f32>(v_73.xy, r8.zw);
  let v_74 = (r6.xyz + r8.xyz);
  r20 = vec4<f32>(v_74.xyz, r20.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r8 = vec4<f32>(v_75.xy, r8.zw);
  let v_76 = (r6.xyz + r8.xyz);
  r21 = vec4<f32>(v_76.xyz, r21.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r8 = vec4<f32>(v_77.xy, r8.zw);
  let v_78 = (r6.xyz + r8.xyz);
  r6 = vec4<f32>(v_78.xyz, r6.w);
  let v_79 = r5.xyxx;
  r5.x = textureSampleCompareLevel(t15, s15, v_79.xy, r5.z);
  let v_80 = r7.xyxx;
  r5.y = textureSampleCompareLevel(t15, s15, v_80.xy, r7.z);
  let v_81 = r9.xyxx;
  r5.z = textureSampleCompareLevel(t15, s15, v_81.xy, r9.z);
  let v_82 = r10.xyxx;
  r5.w = textureSampleCompareLevel(t15, s15, v_82.xy, r10.z);
  let v_83 = r11.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_83.xy, r11.z);
  let v_84 = r12.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_84.xy, r12.z);
  let v_85 = r13.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_85.xy, r13.z);
  let v_86 = r14.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_86.xy, r14.z);
  let v_87 = r15.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_87.xy, r15.z);
  let v_88 = r16.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_88.xy, r16.z);
  let v_89 = r17.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_89.xy, r17.z);
  let v_90 = r18.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_90.xy, r18.z);
  let v_91 = r19.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_91.xy, r19.z);
  let v_92 = r20.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_92.xy, r20.z);
  let v_93 = r21.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_93.xy, r21.z);
  let v_94 = r6.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_94.xy, r6.z);
  r5 = (r5 + r7);
  r5 = (r8 + r5);
  r5 = (r9 + r5);
  r3.w = dot(r5, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_95 = abs(r4.yyyy);
  r4.x = max(v_95.x, abs(r4.xxxx).x);
  r4.x = clamp(fma(r4.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r4.x * r2.w);
  r2.w = fma(r3.w, 0.0625f, r2.w);
  let v_96 = (r2.yzw * r2.yzw);
  r2 = vec4<f32>(r2.x, v_96.xyz);
  r2.w = min(r2.w, 1.0f);
  r3.w = clamp(fma(v4.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_5[3u].z);
  let v_97 = -(r2.wwww);
  r2.w = fma(r3.w, v_97.w, r2.w);
  let v_98 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_99 = dot(r1.yzw, v_98.xyz);
  r3.w = clamp(vec4<f32>(v_99, v_99, v_99, v_99).w, 0.0f, 1.0f);
  let v_100 = (r0.xyz * r3.www);
  r4 = vec4<f32>(v_100.xyz, r4.w);
  let v_101 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_101.xyz, r4.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
  let v_102 = (v_9.xyz + cb3_3.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_102.xyz, r5.w);
  let v_103 = (v4.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
  r6 = vec4<f32>(v_103.xyz, r6.w);
  r5.w = dot(r6.xyz, cb3_3.tint_symbol_2[11u].xyz);
  r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
  r5.w = (r5.w * cb3_3.tint_symbol_2[19u].w);
  let v_104 = fma(cb3_3.tint_symbol_2[11u].xyz, r5.www, cb3_3.tint_symbol_2[3u].xyz);
  r6 = vec4<f32>(v_104.xyz, r6.w);
  let v_105 = (r6.xyz + v_9.xyz);
  r6 = vec4<f32>(v_105.xyz, r6.w);
  let v_106 = bitcast<vec3<u32>>(r4.www);
  let v_107 = r5.xyz;
  let v_108 = select(r6.xyz, v_107, (v_106 != vec3<u32>()));
  r5 = vec4<f32>(v_108.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  let v_109 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
  r5 = vec4<f32>(v_109.xyz, r5.w);
  r5.w = dot(r5.xyz, r5.xyz);
  r5.w = inverseSqrt(r5.w);
  let v_110 = (r5.www * r5.xyz);
  r5 = vec4<f32>(v_110.xyz, r5.w);
  r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r5.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
  r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[11u].w);
  r4.w = (r4.w / r5.w);
  let v_111 = -(cb3_3.tint_symbol_2[11u].xyzx);
  r5.w = dot(r5.xyz, v_111.xyz);
  r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
  let v_112 = dot(r5.xyz, r1.yzw);
  r5.x = clamp(vec4<f32>(v_112, v_112, v_112, v_112).x, 0.0f, 1.0f);
  r5.x = (r5.w * r5.x);
  r4.w = (r4.w * r5.x);
  let v_113 = (r4.www * cb3_3.tint_symbol_2[19u].xyz);
  r5 = vec4<f32>(v_113.xyz, r5.w);
  let v_114 = (r0.xyz * r5.xyz);
  r5 = vec4<f32>(v_114.xyz, r5.w);
  let v_115 = bitcast<vec3<u32>>(r3.www);
  let v_116 = select(r5.xyz, vec3<f32>(), (v_115 != vec3<u32>()));
  r5 = vec4<f32>(v_116.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
    let v_117 = (v_9.xyz + cb3_3.tint_symbol_2[4u].xyz);
    r6 = vec4<f32>(v_117.xyz, r6.w);
    let v_118 = (v4.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
    r7 = vec4<f32>(v_118.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[12u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[20u].w);
    let v_119 = fma(cb3_3.tint_symbol_2[12u].xyz, r5.www, cb3_3.tint_symbol_2[4u].xyz);
    r7 = vec4<f32>(v_119.xyz, r7.w);
    let v_120 = (r7.xyz + v_9.xyz);
    r7 = vec4<f32>(v_120.xyz, r7.w);
    let v_121 = bitcast<vec3<u32>>(r4.www);
    let v_122 = r6.xyz;
    let v_123 = select(r7.xyz, v_122, (v_121 != vec3<u32>()));
    r6 = vec4<f32>(v_123.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_124 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_124.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_125 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_125.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[12u].w);
    r4.w = (r4.w / r5.w);
    let v_126 = -(cb3_3.tint_symbol_2[12u].xyzx);
    r5.w = dot(r6.xyz, v_126.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
    let v_127 = dot(r6.xyz, r1.yzw);
    r6.x = clamp(vec4<f32>(v_127, v_127, v_127, v_127).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_128 = (r4.www * cb3_3.tint_symbol_2[20u].xyz);
    r6 = vec4<f32>(v_128.xyz, r6.w);
    let v_129 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_129.xyz, r6.w);
    let v_130 = bitcast<vec3<u32>>(r3.www);
    let v_131 = r5.xyz;
    let v_132 = select(r6.xyz, v_131, (v_130 != vec3<u32>()));
    r5 = vec4<f32>(v_132.xyz, r5.w);
  } else {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
    let v_133 = (v_9.xyz + cb3_3.tint_symbol_2[5u].xyz);
    r6 = vec4<f32>(v_133.xyz, r6.w);
    let v_134 = (v4.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
    r7 = vec4<f32>(v_134.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[13u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[21u].w);
    let v_135 = fma(cb3_3.tint_symbol_2[13u].xyz, r5.www, cb3_3.tint_symbol_2[5u].xyz);
    r7 = vec4<f32>(v_135.xyz, r7.w);
    let v_136 = (r7.xyz + v_9.xyz);
    r7 = vec4<f32>(v_136.xyz, r7.w);
    let v_137 = bitcast<vec3<u32>>(r4.www);
    let v_138 = r6.xyz;
    let v_139 = select(r7.xyz, v_138, (v_137 != vec3<u32>()));
    r6 = vec4<f32>(v_139.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_140 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_140.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_141 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_141.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[13u].w);
    r4.w = (r4.w / r5.w);
    let v_142 = -(cb3_3.tint_symbol_2[13u].xyzx);
    r5.w = dot(r6.xyz, v_142.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
    let v_143 = dot(r6.xyz, r1.yzw);
    r6.x = clamp(vec4<f32>(v_143, v_143, v_143, v_143).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_144 = (r4.www * cb3_3.tint_symbol_2[21u].xyz);
    r6 = vec4<f32>(v_144.xyz, r6.w);
    let v_145 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_145.xyz, r6.w);
    let v_146 = bitcast<vec3<u32>>(r3.www);
    let v_147 = r5.xyz;
    let v_148 = select(r6.xyz, v_147, (v_146 != vec3<u32>()));
    r5 = vec4<f32>(v_148.xyz, r5.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
    let v_149 = (v_9.xyz + cb3_3.tint_symbol_2[6u].xyz);
    r6 = vec4<f32>(v_149.xyz, r6.w);
    let v_150 = (v4.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
    r7 = vec4<f32>(v_150.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[14u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[22u].w);
    let v_151 = fma(cb3_3.tint_symbol_2[14u].xyz, r5.www, cb3_3.tint_symbol_2[6u].xyz);
    r7 = vec4<f32>(v_151.xyz, r7.w);
    let v_152 = (r7.xyz + v_9.xyz);
    r7 = vec4<f32>(v_152.xyz, r7.w);
    let v_153 = bitcast<vec3<u32>>(r4.www);
    let v_154 = r6.xyz;
    let v_155 = select(r7.xyz, v_154, (v_153 != vec3<u32>()));
    r6 = vec4<f32>(v_155.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_156 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_156.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_157 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_157.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[14u].w);
    r4.w = (r4.w / r5.w);
    let v_158 = -(cb3_3.tint_symbol_2[14u].xyzx);
    r5.w = dot(r6.xyz, v_158.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
    let v_159 = dot(r6.xyz, r1.yzw);
    r6.x = clamp(vec4<f32>(v_159, v_159, v_159, v_159).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_160 = (r4.www * cb3_3.tint_symbol_2[22u].xyz);
    r6 = vec4<f32>(v_160.xyz, r6.w);
    let v_161 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_161.xyz, r6.w);
    let v_162 = bitcast<vec3<u32>>(r3.www);
    let v_163 = r5.xyz;
    let v_164 = select(r6.xyz, v_163, (v_162 != vec3<u32>()));
    r5 = vec4<f32>(v_164.xyz, r5.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
    let v_165 = (v_9.xyz + cb3_3.tint_symbol_2[7u].xyz);
    r6 = vec4<f32>(v_165.xyz, r6.w);
    let v_166 = (v4.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
    r7 = vec4<f32>(v_166.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[15u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[23u].w);
    let v_167 = fma(cb3_3.tint_symbol_2[15u].xyz, r5.www, cb3_3.tint_symbol_2[7u].xyz);
    r7 = vec4<f32>(v_167.xyz, r7.w);
    let v_168 = (r7.xyz + v_9.xyz);
    r7 = vec4<f32>(v_168.xyz, r7.w);
    let v_169 = bitcast<vec3<u32>>(r4.www);
    let v_170 = r6.xyz;
    let v_171 = select(r7.xyz, v_170, (v_169 != vec3<u32>()));
    r6 = vec4<f32>(v_171.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_172 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_172.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_173 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_173.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[15u].w);
    r4.w = (r4.w / r5.w);
    let v_174 = -(cb3_3.tint_symbol_2[15u].xyzx);
    r5.w = dot(r6.xyz, v_174.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
    let v_175 = dot(r6.xyz, r1.yzw);
    r6.x = clamp(vec4<f32>(v_175, v_175, v_175, v_175).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_176 = (r4.www * cb3_3.tint_symbol_2[23u].xyz);
    r6 = vec4<f32>(v_176.xyz, r6.w);
    let v_177 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_177.xyz, r6.w);
    let v_178 = bitcast<vec3<u32>>(r3.www);
    let v_179 = r5.xyz;
    let v_180 = select(r6.xyz, v_179, (v_178 != vec3<u32>()));
    r5 = vec4<f32>(v_180.xyz, r5.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
    let v_181 = (v_9.xyz + cb3_3.tint_symbol_2[8u].xyz);
    r6 = vec4<f32>(v_181.xyz, r6.w);
    let v_182 = (v4.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
    r7 = vec4<f32>(v_182.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[16u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[24u].w);
    let v_183 = fma(cb3_3.tint_symbol_2[16u].xyz, r5.www, cb3_3.tint_symbol_2[8u].xyz);
    r7 = vec4<f32>(v_183.xyz, r7.w);
    let v_184 = (r7.xyz + v_9.xyz);
    r7 = vec4<f32>(v_184.xyz, r7.w);
    let v_185 = bitcast<vec3<u32>>(r4.www);
    let v_186 = r6.xyz;
    let v_187 = select(r7.xyz, v_186, (v_185 != vec3<u32>()));
    r6 = vec4<f32>(v_187.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_188 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_188.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_189 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_189.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[16u].w);
    r4.w = (r4.w / r5.w);
    let v_190 = -(cb3_3.tint_symbol_2[16u].xyzx);
    r5.w = dot(r6.xyz, v_190.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
    let v_191 = dot(r6.xyz, r1.yzw);
    r6.x = clamp(vec4<f32>(v_191, v_191, v_191, v_191).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_192 = (r4.www * cb3_3.tint_symbol_2[24u].xyz);
    r6 = vec4<f32>(v_192.xyz, r6.w);
    let v_193 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_193.xyz, r6.w);
    let v_194 = bitcast<vec3<u32>>(r3.www);
    let v_195 = r5.xyz;
    let v_196 = select(r6.xyz, v_195, (v_194 != vec3<u32>()));
    r5 = vec4<f32>(v_196.xyz, r5.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
    let v_197 = (v_9.xyz + cb3_3.tint_symbol_2[9u].xyz);
    r6 = vec4<f32>(v_197.xyz, r6.w);
    let v_198 = (v4.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
    r7 = vec4<f32>(v_198.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[17u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[25u].w);
    let v_199 = fma(cb3_3.tint_symbol_2[17u].xyz, r5.www, cb3_3.tint_symbol_2[9u].xyz);
    r7 = vec4<f32>(v_199.xyz, r7.w);
    let v_200 = (r7.xyz + v_9.xyz);
    r7 = vec4<f32>(v_200.xyz, r7.w);
    let v_201 = bitcast<vec3<u32>>(r4.www);
    let v_202 = r6.xyz;
    let v_203 = select(r7.xyz, v_202, (v_201 != vec3<u32>()));
    r6 = vec4<f32>(v_203.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_204 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_204.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_205 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_205.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[17u].w);
    r4.w = (r4.w / r5.w);
    let v_206 = -(cb3_3.tint_symbol_2[17u].xyzx);
    r5.w = dot(r6.xyz, v_206.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
    let v_207 = dot(r6.xyz, r1.yzw);
    r6.x = clamp(vec4<f32>(v_207, v_207, v_207, v_207).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_208 = (r4.www * cb3_3.tint_symbol_2[25u].xyz);
    r6 = vec4<f32>(v_208.xyz, r6.w);
    let v_209 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_209.xyz, r6.w);
    let v_210 = bitcast<vec3<u32>>(r3.www);
    let v_211 = r5.xyz;
    let v_212 = select(r6.xyz, v_211, (v_210 != vec3<u32>()));
    r5 = vec4<f32>(v_212.xyz, r5.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
    let v_213 = (v_9.xyz + cb3_3.tint_symbol_2[10u].xyz);
    r6 = vec4<f32>(v_213.xyz, r6.w);
    let v_214 = (v4.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
    r7 = vec4<f32>(v_214.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[18u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[26u].w);
    let v_215 = fma(cb3_3.tint_symbol_2[18u].xyz, r5.www, cb3_3.tint_symbol_2[10u].xyz);
    r7 = vec4<f32>(v_215.xyz, r7.w);
    let v_216 = (r7.xyz + v_9.xyz);
    r7 = vec4<f32>(v_216.xyz, r7.w);
    let v_217 = bitcast<vec3<u32>>(r4.www);
    let v_218 = r6.xyz;
    let v_219 = select(r7.xyz, v_218, (v_217 != vec3<u32>()));
    r6 = vec4<f32>(v_219.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_220 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_220.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_221 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_221.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[18u].w);
    r4.w = (r4.w / r5.w);
    let v_222 = -(cb3_3.tint_symbol_2[18u].xyzx);
    r5.w = dot(r6.xyz, v_222.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
    let v_223 = dot(r6.xyz, r1.yzw);
    r6.x = clamp(vec4<f32>(v_223, v_223, v_223, v_223).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_224 = (r4.www * cb3_3.tint_symbol_2[26u].xyz);
    r6 = vec4<f32>(v_224.xyz, r6.w);
    let v_225 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_225.xyz, r6.w);
    let v_226 = bitcast<vec3<u32>>(r3.www);
    let v_227 = r5.xyz;
    let v_228 = select(r6.xyz, v_227, (v_226 != vec3<u32>()));
    r5 = vec4<f32>(v_228.xyz, r5.w);
  }
  let v_229 = fma(r4.xyz, r2.www, r5.xyz);
  r4 = vec4<f32>(v_229.xyz, r4.w);
  r1.x = fma(v3.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_230 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_230.xyz, r5.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_231 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_231.xyz, r6.w);
  let v_232 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_232.xyz, r6.w);
  let v_233 = fma(r5.xyz, r2.www, r6.xyz);
  r5 = vec4<f32>(v_233.xyz, r5.w);
  let v_234 = (r2.zzz * r5.xyz);
  r5 = vec4<f32>(v_234.xyz, r5.w);
  let v_235 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_235.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_236 = dot(r7.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_236, v_236, v_236, v_236).x, 0.0f, 1.0f);
  let v_237 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r1 = vec4<f32>(v_237.xyz, r1.w);
  let v_238 = fma(r1.xyz, r2.yyy, r5.xyz);
  r1 = vec4<f32>(v_238.xyz, r1.w);
  let v_239 = fma(r1.xyz, r0.xyz, r4.xyz);
  r1 = vec4<f32>(v_239.xyz, r1.w);
  let v_240 = fma(r0.xyz, r2.xxx, r1.xyz);
  r0 = vec4<f32>(v_240.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.x = sqrt(r0.w);
    let v_241 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_241.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r3.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_242 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_242 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_243 = (r0.www * r3.xyz);
    r2 = vec4<f32>(v_243.xyz, r2.w);
    let v_244 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_244, v_244, v_244, v_244).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_245 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_245, v_245, v_245, v_245).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_246 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_246.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_247 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_247.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_248 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_248.xyz, r2.w);
    let v_249 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_249.xyz, r2.w);
    let v_250 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_250.xyz, r4.w);
    let v_251 = fma(r1.www, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_251.xyz, r2.w);
    let v_252 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_253 = (r2.xyz + v_252.xyz);
    r2 = vec4<f32>(v_253.xyz, r2.w);
    let v_254 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_254.xyz, r2.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_255 = ((-(r2.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_255.xyz, r4.w);
    let v_256 = fma(r1.xxx, r4.xyz, r2.xyz);
    r1 = vec4<f32>(v_256.xy, r1.z, v_256.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_257 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_257.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_258 = -(r0.xyxz);
    let v_259 = fma(r1.xyw, r0.www, v_258.xyw);
    r1 = vec4<f32>(v_259.xy, r1.z, v_259.z);
    let v_260 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_260.xyz, r1.w);
  } else {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.w = sqrt(r0.w);
    let v_261 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_261.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r3.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_262 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_262 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_263 = (r0.www * r3.xyz);
    r3 = vec4<f32>(v_263.xyz, r3.w);
    let v_264 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_264, v_264, v_264, v_264).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_265 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_265, v_265, v_265, v_265).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_266 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_266.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_267 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_267.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_268 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_268.xyz, r3.w);
    let v_269 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_269.xyz, r3.w);
    let v_270 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_270.xyz, r4.w);
    let v_271 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_271.xyz, r3.w);
    let v_272 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_273 = (r3.xyz + v_272.xyz);
    r3 = vec4<f32>(v_273.xyz, r3.w);
    let v_274 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_274.x, r2.y, v_274.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_275 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_275.xyz, r3.w);
    let v_276 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_276.x, r2.y, v_276.yz);
    let v_277 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_277.x, r2.y, v_277.yz);
    let v_278 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_278.xyz, r1.w);
  }
  let v_279 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_279.xyz, o0.w);
}

fn v_3(v_280 : bool) {
  if (v_280) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_281 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_281);
  return o0;
}
