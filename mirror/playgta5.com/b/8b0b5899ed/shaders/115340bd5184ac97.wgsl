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

var<private> v4 : vec4<f32>;

var<private> v5 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v4 = v_2;
  x1[0u].x = v5[0u];
  x1[0u].y = v5[1u];
  x1[0u].z = v5[2u];
  x1[0u].w = v5[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_4 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  r2.x = (r0.w * cb12_12.tint_symbol_4[0u].x);
  r2.x = (r2.x * cb2_2.tint_symbol_1[15u].w);
  r2.x = (r2.x * cb2_2.tint_symbol_1[16u].y);
  r0.w = (r0.w * v0.w);
  let v_5 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_6 = r2;
  r2 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  r2.x = (r2.x * v0.z);
  let v_7 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = -(v3.xyzx);
  let v_9 = (v_8.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r2.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_10 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = (r3.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = fma(r3.xxx, cb6_6.tint_symbol_5[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = fma(r3.zzz, cb6_6.tint_symbol_5[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = fma(r4.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = &(x0[0u]);
  let v_16 = r5;
  *(v_15) = vec4<f32>(v_16.xyz, (*(v_15)).w);
  let v_17 = fma(r4.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  let v_18 = &(x0[1u]);
  let v_19 = r6;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = fma(r4.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r7 = vec4<f32>(v_20.xyz, r7.w);
  let v_21 = &(x0[2u]);
  let v_22 = r7;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  let v_23 = fma(r4.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = &(x0[3u]);
  let v_25 = r4;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  let v_26 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_27 = r8;
  r8 = vec4<f32>(v_27.x, v_26.x, v_27.z, v_26.y);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_28 = abs(r7.yyyy);
  r4.z = max(v_28.z, abs(r7.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r3.w)));
  let v_29 = (bitcast<u32>(r4.z) != 0u);
  let v_30 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_30, v_29);
  let v_31 = abs(r6.yyyy);
  r4.w = max(v_31.w, abs(r6.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_32 = bitcast<u32>(r4.w);
  r4.z = select(r4.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_32 != 0u));
  let v_33 = abs(r5.yyyy);
  r4.w = max(v_33.w, abs(r5.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_34 = bitcast<u32>(r3.w);
  r3.w = select(r4.z, 0.0f, (v_34 != 0u));
  let v_35 = x0[bitcast<i32>(r3.w)];
  r5 = vec4<f32>(v_35.xyz, r5.w);
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
  let v_36 = dpdx(r6.xyy);
  r7 = vec4<f32>(v_36.xy, r7.z, v_36.z);
  r7.z = dpdx(r3.w);
  let v_37 = dpdy(r6.yxy);
  r9 = vec4<f32>(v_37.xyz, r9.w);
  r9.w = dpdy(r3.w);
  let v_38 = (r7.yw * r9.yw);
  r5 = vec4<f32>(v_38.xy, r5.zw);
  let v_39 = -(r5.xyxx);
  let v_40 = fma(r7.xz, r9.xz, v_39.xy);
  r10 = vec4<f32>(v_40.xy, r10.zw);
  r5.x = (1.0f / r10.x);
  r5.y = (r7.z * r9.y);
  let v_41 = -(r5.yyyy);
  r10.z = fma(r7.x, r9.w, v_41.z);
  let v_42 = (r5.xx * r10.yz);
  r5 = vec4<f32>(v_42.xy, r5.zw);
  let v_43 = max(r5.xy, vec2<f32>());
  r5 = vec4<f32>(v_43.xy, r5.zw);
  let v_44 = min(r5.xy, vec2<f32>(0.5f));
  r5 = vec4<f32>(v_44.xy, r5.zw);
  r3.w = fma((-(r4.wwww)).w, r5.x, r3.w);
  r3.w = fma((-(r4.wwww)).w, r5.y, r3.w);
  let v_45 = bitcast<u32>(r4.z);
  let v_46 = r3.w;
  r8.z = select(r5.z, v_46, (v_45 != 0u));
  r6.z = 0.0f;
  let v_47 = (r6.xyz + r8.ywz);
  r5 = vec4<f32>(v_47.xyz, r5.w);
  let v_48 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r8 = vec4<f32>(v_48.xy, r8.zw);
  let v_49 = (r6.xyz + r8.xyz);
  r7 = vec4<f32>(v_49.xyz, r7.w);
  let v_50 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r8 = vec4<f32>(v_50.xy, r8.zw);
  let v_51 = (r6.xyz + r8.xyz);
  r9 = vec4<f32>(v_51.xyz, r9.w);
  let v_52 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r8 = vec4<f32>(v_52.xy, r8.zw);
  let v_53 = (r6.xyz + r8.xyz);
  r10 = vec4<f32>(v_53.xyz, r10.w);
  let v_54 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r8 = vec4<f32>(v_54.xy, r8.zw);
  let v_55 = (r6.xyz + r8.xyz);
  r11 = vec4<f32>(v_55.xyz, r11.w);
  let v_56 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r8 = vec4<f32>(v_56.xy, r8.zw);
  let v_57 = (r6.xyz + r8.xyz);
  r12 = vec4<f32>(v_57.xyz, r12.w);
  let v_58 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r8 = vec4<f32>(v_58.xy, r8.zw);
  let v_59 = (r6.xyz + r8.xyz);
  r13 = vec4<f32>(v_59.xyz, r13.w);
  let v_60 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r8 = vec4<f32>(v_60.xy, r8.zw);
  let v_61 = (r6.xyz + r8.xyz);
  r14 = vec4<f32>(v_61.xyz, r14.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r8 = vec4<f32>(v_62.xy, r8.zw);
  let v_63 = (r6.xyz + r8.xyz);
  r15 = vec4<f32>(v_63.xyz, r15.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r8 = vec4<f32>(v_64.xy, r8.zw);
  let v_65 = (r6.xyz + r8.xyz);
  r16 = vec4<f32>(v_65.xyz, r16.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r8 = vec4<f32>(v_66.xy, r8.zw);
  let v_67 = (r6.xyz + r8.xyz);
  r17 = vec4<f32>(v_67.xyz, r17.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r8 = vec4<f32>(v_68.xy, r8.zw);
  let v_69 = (r6.xyz + r8.xyz);
  r18 = vec4<f32>(v_69.xyz, r18.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r8 = vec4<f32>(v_70.xy, r8.zw);
  let v_71 = (r6.xyz + r8.xyz);
  r19 = vec4<f32>(v_71.xyz, r19.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r8 = vec4<f32>(v_72.xy, r8.zw);
  let v_73 = (r6.xyz + r8.xyz);
  r20 = vec4<f32>(v_73.xyz, r20.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r8 = vec4<f32>(v_74.xy, r8.zw);
  let v_75 = (r6.xyz + r8.xyz);
  r21 = vec4<f32>(v_75.xyz, r21.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r8 = vec4<f32>(v_76.xy, r8.zw);
  let v_77 = (r6.xyz + r8.xyz);
  r6 = vec4<f32>(v_77.xyz, r6.w);
  let v_78 = r5.xyxx;
  r5.x = textureSampleCompareLevel(t15, s15, v_78.xy, r5.z);
  let v_79 = r7.xyxx;
  r5.y = textureSampleCompareLevel(t15, s15, v_79.xy, r7.z);
  let v_80 = r9.xyxx;
  r5.z = textureSampleCompareLevel(t15, s15, v_80.xy, r9.z);
  let v_81 = r10.xyxx;
  r5.w = textureSampleCompareLevel(t15, s15, v_81.xy, r10.z);
  let v_82 = r11.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_82.xy, r11.z);
  let v_83 = r12.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_83.xy, r12.z);
  let v_84 = r13.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_84.xy, r13.z);
  let v_85 = r14.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_85.xy, r14.z);
  let v_86 = r15.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_86.xy, r15.z);
  let v_87 = r16.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_87.xy, r16.z);
  let v_88 = r17.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_88.xy, r17.z);
  let v_89 = r18.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_89.xy, r18.z);
  let v_90 = r19.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_90.xy, r19.z);
  let v_91 = r20.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_91.xy, r20.z);
  let v_92 = r21.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_92.xy, r21.z);
  let v_93 = r6.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_93.xy, r6.z);
  r5 = (r5 + r7);
  r5 = (r8 + r5);
  r5 = (r9 + r5);
  r3.w = dot(r5, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_94 = abs(r4.yyyy);
  r4.x = max(v_94.x, abs(r4.xxxx).x);
  r4.x = clamp(fma(r4.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r4.x * r2.w);
  r2.w = fma(r3.w, 0.0625f, r2.w);
  let v_95 = (r2.yzw * r2.yzw);
  r2 = vec4<f32>(r2.x, v_95.xyz);
  r2.w = min(r2.w, 1.0f);
  r3.w = clamp(fma(v3.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_5[3u].z);
  let v_96 = -(r2.wwww);
  r2.w = fma(r3.w, v_96.w, r2.w);
  let v_97 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_98 = dot(r1.yzw, v_97.xyz);
  r3.w = clamp(vec4<f32>(v_98, v_98, v_98, v_98).w, 0.0f, 1.0f);
  let v_99 = (r0.xyz * r3.www);
  r4 = vec4<f32>(v_99.xyz, r4.w);
  let v_100 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_100.xyz, r4.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
  let v_101 = (v_8.xyz + cb3_3.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_101.xyz, r5.w);
  let v_102 = (v3.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
  r6 = vec4<f32>(v_102.xyz, r6.w);
  r5.w = dot(r6.xyz, cb3_3.tint_symbol_2[11u].xyz);
  r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
  r5.w = (r5.w * cb3_3.tint_symbol_2[19u].w);
  let v_103 = fma(cb3_3.tint_symbol_2[11u].xyz, r5.www, cb3_3.tint_symbol_2[3u].xyz);
  r6 = vec4<f32>(v_103.xyz, r6.w);
  let v_104 = (r6.xyz + v_8.xyz);
  r6 = vec4<f32>(v_104.xyz, r6.w);
  let v_105 = bitcast<vec3<u32>>(r4.www);
  let v_106 = r5.xyz;
  let v_107 = select(r6.xyz, v_106, (v_105 != vec3<u32>()));
  r5 = vec4<f32>(v_107.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  let v_108 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
  r5 = vec4<f32>(v_108.xyz, r5.w);
  r5.w = dot(r5.xyz, r5.xyz);
  r5.w = inverseSqrt(r5.w);
  let v_109 = (r5.www * r5.xyz);
  r5 = vec4<f32>(v_109.xyz, r5.w);
  r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r5.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
  r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[11u].w);
  r4.w = (r4.w / r5.w);
  let v_110 = -(cb3_3.tint_symbol_2[11u].xyzx);
  r5.w = dot(r5.xyz, v_110.xyz);
  r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
  let v_111 = dot(r5.xyz, r1.yzw);
  r5.x = clamp(vec4<f32>(v_111, v_111, v_111, v_111).x, 0.0f, 1.0f);
  r5.x = (r5.w * r5.x);
  r4.w = (r4.w * r5.x);
  let v_112 = (r4.www * cb3_3.tint_symbol_2[19u].xyz);
  r5 = vec4<f32>(v_112.xyz, r5.w);
  let v_113 = (r0.xyz * r5.xyz);
  r5 = vec4<f32>(v_113.xyz, r5.w);
  let v_114 = bitcast<vec3<u32>>(r3.www);
  let v_115 = select(r5.xyz, vec3<f32>(), (v_114 != vec3<u32>()));
  r5 = vec4<f32>(v_115.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
    let v_116 = (v_8.xyz + cb3_3.tint_symbol_2[4u].xyz);
    r6 = vec4<f32>(v_116.xyz, r6.w);
    let v_117 = (v3.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
    r7 = vec4<f32>(v_117.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[12u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[20u].w);
    let v_118 = fma(cb3_3.tint_symbol_2[12u].xyz, r5.www, cb3_3.tint_symbol_2[4u].xyz);
    r7 = vec4<f32>(v_118.xyz, r7.w);
    let v_119 = (r7.xyz + v_8.xyz);
    r7 = vec4<f32>(v_119.xyz, r7.w);
    let v_120 = bitcast<vec3<u32>>(r4.www);
    let v_121 = r6.xyz;
    let v_122 = select(r7.xyz, v_121, (v_120 != vec3<u32>()));
    r6 = vec4<f32>(v_122.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_123 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_123.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_124 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_124.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[12u].w);
    r4.w = (r4.w / r5.w);
    let v_125 = -(cb3_3.tint_symbol_2[12u].xyzx);
    r5.w = dot(r6.xyz, v_125.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
    let v_126 = dot(r6.xyz, r1.yzw);
    r6.x = clamp(vec4<f32>(v_126, v_126, v_126, v_126).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_127 = (r4.www * cb3_3.tint_symbol_2[20u].xyz);
    r6 = vec4<f32>(v_127.xyz, r6.w);
    let v_128 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_128.xyz, r6.w);
    let v_129 = bitcast<vec3<u32>>(r3.www);
    let v_130 = r5.xyz;
    let v_131 = select(r6.xyz, v_130, (v_129 != vec3<u32>()));
    r5 = vec4<f32>(v_131.xyz, r5.w);
  } else {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
    let v_132 = (v_8.xyz + cb3_3.tint_symbol_2[5u].xyz);
    r6 = vec4<f32>(v_132.xyz, r6.w);
    let v_133 = (v3.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
    r7 = vec4<f32>(v_133.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[13u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[21u].w);
    let v_134 = fma(cb3_3.tint_symbol_2[13u].xyz, r5.www, cb3_3.tint_symbol_2[5u].xyz);
    r7 = vec4<f32>(v_134.xyz, r7.w);
    let v_135 = (r7.xyz + v_8.xyz);
    r7 = vec4<f32>(v_135.xyz, r7.w);
    let v_136 = bitcast<vec3<u32>>(r4.www);
    let v_137 = r6.xyz;
    let v_138 = select(r7.xyz, v_137, (v_136 != vec3<u32>()));
    r6 = vec4<f32>(v_138.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_139 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_139.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_140 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_140.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[13u].w);
    r4.w = (r4.w / r5.w);
    let v_141 = -(cb3_3.tint_symbol_2[13u].xyzx);
    r5.w = dot(r6.xyz, v_141.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
    let v_142 = dot(r6.xyz, r1.yzw);
    r6.x = clamp(vec4<f32>(v_142, v_142, v_142, v_142).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_143 = (r4.www * cb3_3.tint_symbol_2[21u].xyz);
    r6 = vec4<f32>(v_143.xyz, r6.w);
    let v_144 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_144.xyz, r6.w);
    let v_145 = bitcast<vec3<u32>>(r3.www);
    let v_146 = r5.xyz;
    let v_147 = select(r6.xyz, v_146, (v_145 != vec3<u32>()));
    r5 = vec4<f32>(v_147.xyz, r5.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
    let v_148 = (v_8.xyz + cb3_3.tint_symbol_2[6u].xyz);
    r6 = vec4<f32>(v_148.xyz, r6.w);
    let v_149 = (v3.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
    r7 = vec4<f32>(v_149.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[14u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[22u].w);
    let v_150 = fma(cb3_3.tint_symbol_2[14u].xyz, r5.www, cb3_3.tint_symbol_2[6u].xyz);
    r7 = vec4<f32>(v_150.xyz, r7.w);
    let v_151 = (r7.xyz + v_8.xyz);
    r7 = vec4<f32>(v_151.xyz, r7.w);
    let v_152 = bitcast<vec3<u32>>(r4.www);
    let v_153 = r6.xyz;
    let v_154 = select(r7.xyz, v_153, (v_152 != vec3<u32>()));
    r6 = vec4<f32>(v_154.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_155 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_155.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_156 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_156.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[14u].w);
    r4.w = (r4.w / r5.w);
    let v_157 = -(cb3_3.tint_symbol_2[14u].xyzx);
    r5.w = dot(r6.xyz, v_157.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
    let v_158 = dot(r6.xyz, r1.yzw);
    r6.x = clamp(vec4<f32>(v_158, v_158, v_158, v_158).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_159 = (r4.www * cb3_3.tint_symbol_2[22u].xyz);
    r6 = vec4<f32>(v_159.xyz, r6.w);
    let v_160 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_160.xyz, r6.w);
    let v_161 = bitcast<vec3<u32>>(r3.www);
    let v_162 = r5.xyz;
    let v_163 = select(r6.xyz, v_162, (v_161 != vec3<u32>()));
    r5 = vec4<f32>(v_163.xyz, r5.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
    let v_164 = (v_8.xyz + cb3_3.tint_symbol_2[7u].xyz);
    r6 = vec4<f32>(v_164.xyz, r6.w);
    let v_165 = (v3.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
    r7 = vec4<f32>(v_165.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[15u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[23u].w);
    let v_166 = fma(cb3_3.tint_symbol_2[15u].xyz, r5.www, cb3_3.tint_symbol_2[7u].xyz);
    r7 = vec4<f32>(v_166.xyz, r7.w);
    let v_167 = (r7.xyz + v_8.xyz);
    r7 = vec4<f32>(v_167.xyz, r7.w);
    let v_168 = bitcast<vec3<u32>>(r4.www);
    let v_169 = r6.xyz;
    let v_170 = select(r7.xyz, v_169, (v_168 != vec3<u32>()));
    r6 = vec4<f32>(v_170.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_171 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_171.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_172 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_172.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[15u].w);
    r4.w = (r4.w / r5.w);
    let v_173 = -(cb3_3.tint_symbol_2[15u].xyzx);
    r5.w = dot(r6.xyz, v_173.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
    let v_174 = dot(r6.xyz, r1.yzw);
    r6.x = clamp(vec4<f32>(v_174, v_174, v_174, v_174).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_175 = (r4.www * cb3_3.tint_symbol_2[23u].xyz);
    r6 = vec4<f32>(v_175.xyz, r6.w);
    let v_176 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_176.xyz, r6.w);
    let v_177 = bitcast<vec3<u32>>(r3.www);
    let v_178 = r5.xyz;
    let v_179 = select(r6.xyz, v_178, (v_177 != vec3<u32>()));
    r5 = vec4<f32>(v_179.xyz, r5.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
    let v_180 = (v_8.xyz + cb3_3.tint_symbol_2[8u].xyz);
    r6 = vec4<f32>(v_180.xyz, r6.w);
    let v_181 = (v3.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
    r7 = vec4<f32>(v_181.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[16u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[24u].w);
    let v_182 = fma(cb3_3.tint_symbol_2[16u].xyz, r5.www, cb3_3.tint_symbol_2[8u].xyz);
    r7 = vec4<f32>(v_182.xyz, r7.w);
    let v_183 = (r7.xyz + v_8.xyz);
    r7 = vec4<f32>(v_183.xyz, r7.w);
    let v_184 = bitcast<vec3<u32>>(r4.www);
    let v_185 = r6.xyz;
    let v_186 = select(r7.xyz, v_185, (v_184 != vec3<u32>()));
    r6 = vec4<f32>(v_186.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_187 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_187.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_188 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_188.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[16u].w);
    r4.w = (r4.w / r5.w);
    let v_189 = -(cb3_3.tint_symbol_2[16u].xyzx);
    r5.w = dot(r6.xyz, v_189.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
    let v_190 = dot(r6.xyz, r1.yzw);
    r6.x = clamp(vec4<f32>(v_190, v_190, v_190, v_190).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_191 = (r4.www * cb3_3.tint_symbol_2[24u].xyz);
    r6 = vec4<f32>(v_191.xyz, r6.w);
    let v_192 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_192.xyz, r6.w);
    let v_193 = bitcast<vec3<u32>>(r3.www);
    let v_194 = r5.xyz;
    let v_195 = select(r6.xyz, v_194, (v_193 != vec3<u32>()));
    r5 = vec4<f32>(v_195.xyz, r5.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
    let v_196 = (v_8.xyz + cb3_3.tint_symbol_2[9u].xyz);
    r6 = vec4<f32>(v_196.xyz, r6.w);
    let v_197 = (v3.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
    r7 = vec4<f32>(v_197.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[17u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[25u].w);
    let v_198 = fma(cb3_3.tint_symbol_2[17u].xyz, r5.www, cb3_3.tint_symbol_2[9u].xyz);
    r7 = vec4<f32>(v_198.xyz, r7.w);
    let v_199 = (r7.xyz + v_8.xyz);
    r7 = vec4<f32>(v_199.xyz, r7.w);
    let v_200 = bitcast<vec3<u32>>(r4.www);
    let v_201 = r6.xyz;
    let v_202 = select(r7.xyz, v_201, (v_200 != vec3<u32>()));
    r6 = vec4<f32>(v_202.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_203 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_203.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_204 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_204.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[17u].w);
    r4.w = (r4.w / r5.w);
    let v_205 = -(cb3_3.tint_symbol_2[17u].xyzx);
    r5.w = dot(r6.xyz, v_205.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
    let v_206 = dot(r6.xyz, r1.yzw);
    r6.x = clamp(vec4<f32>(v_206, v_206, v_206, v_206).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_207 = (r4.www * cb3_3.tint_symbol_2[25u].xyz);
    r6 = vec4<f32>(v_207.xyz, r6.w);
    let v_208 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_208.xyz, r6.w);
    let v_209 = bitcast<vec3<u32>>(r3.www);
    let v_210 = r5.xyz;
    let v_211 = select(r6.xyz, v_210, (v_209 != vec3<u32>()));
    r5 = vec4<f32>(v_211.xyz, r5.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
    let v_212 = (v_8.xyz + cb3_3.tint_symbol_2[10u].xyz);
    r6 = vec4<f32>(v_212.xyz, r6.w);
    let v_213 = (v3.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
    r7 = vec4<f32>(v_213.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[18u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[26u].w);
    let v_214 = fma(cb3_3.tint_symbol_2[18u].xyz, r5.www, cb3_3.tint_symbol_2[10u].xyz);
    r7 = vec4<f32>(v_214.xyz, r7.w);
    let v_215 = (r7.xyz + v_8.xyz);
    r7 = vec4<f32>(v_215.xyz, r7.w);
    let v_216 = bitcast<vec3<u32>>(r4.www);
    let v_217 = r6.xyz;
    let v_218 = select(r7.xyz, v_217, (v_216 != vec3<u32>()));
    r6 = vec4<f32>(v_218.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_219 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_219.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_220 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_220.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[18u].w);
    r4.w = (r4.w / r5.w);
    let v_221 = -(cb3_3.tint_symbol_2[18u].xyzx);
    r5.w = dot(r6.xyz, v_221.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
    let v_222 = dot(r6.xyz, r1.yzw);
    r6.x = clamp(vec4<f32>(v_222, v_222, v_222, v_222).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_223 = (r4.www * cb3_3.tint_symbol_2[26u].xyz);
    r6 = vec4<f32>(v_223.xyz, r6.w);
    let v_224 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_224.xyz, r6.w);
    let v_225 = bitcast<vec3<u32>>(r3.www);
    let v_226 = r5.xyz;
    let v_227 = select(r6.xyz, v_226, (v_225 != vec3<u32>()));
    r5 = vec4<f32>(v_227.xyz, r5.w);
  }
  let v_228 = fma(r4.xyz, r2.www, r5.xyz);
  r4 = vec4<f32>(v_228.xyz, r4.w);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_229 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_229.xyz, r5.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_230 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_230.xyz, r6.w);
  let v_231 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_231.xyz, r6.w);
  let v_232 = fma(r5.xyz, r2.www, r6.xyz);
  r5 = vec4<f32>(v_232.xyz, r5.w);
  let v_233 = (r2.zzz * r5.xyz);
  r5 = vec4<f32>(v_233.xyz, r5.w);
  let v_234 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_234.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_235 = dot(r7.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_235, v_235, v_235, v_235).x, 0.0f, 1.0f);
  let v_236 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r1 = vec4<f32>(v_236.xyz, r1.w);
  let v_237 = fma(r1.xyz, r2.yyy, r5.xyz);
  r1 = vec4<f32>(v_237.xyz, r1.w);
  let v_238 = fma(r1.xyz, r0.xyz, r4.xyz);
  r1 = vec4<f32>(v_238.xyz, r1.w);
  let v_239 = fma(r0.xyz, r2.xxx, r1.xyz);
  r0 = vec4<f32>(v_239.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.x = sqrt(r0.w);
    let v_240 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_240.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r3.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_241 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_241 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_242 = (r0.www * r3.xyz);
    r2 = vec4<f32>(v_242.xyz, r2.w);
    let v_243 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_243, v_243, v_243, v_243).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_244 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_244, v_244, v_244, v_244).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_245 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_245.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_246 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_246.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_247 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_247.xyz, r2.w);
    let v_248 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_248.xyz, r2.w);
    let v_249 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_249.xyz, r4.w);
    let v_250 = fma(r1.www, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_250.xyz, r2.w);
    let v_251 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_252 = (r2.xyz + v_251.xyz);
    r2 = vec4<f32>(v_252.xyz, r2.w);
    let v_253 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_253.xyz, r2.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_254 = ((-(r2.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_254.xyz, r4.w);
    let v_255 = fma(r1.xxx, r4.xyz, r2.xyz);
    r1 = vec4<f32>(v_255.xy, r1.z, v_255.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_256 = (v4.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_256.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_257 = -(r0.xyxz);
    let v_258 = fma(r1.xyw, r0.www, v_257.xyw);
    r1 = vec4<f32>(v_258.xy, r1.z, v_258.z);
    let v_259 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_259.xyz, r1.w);
  } else {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.w = sqrt(r0.w);
    let v_260 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_260.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r3.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_261 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_261 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_262 = (r0.www * r3.xyz);
    r3 = vec4<f32>(v_262.xyz, r3.w);
    let v_263 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_263, v_263, v_263, v_263).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_264 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_264, v_264, v_264, v_264).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_265 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_265.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_266 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_266.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_267 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_267.xyz, r3.w);
    let v_268 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_268.xyz, r3.w);
    let v_269 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_269.xyz, r4.w);
    let v_270 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_270.xyz, r3.w);
    let v_271 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_272 = (r3.xyz + v_271.xyz);
    r3 = vec4<f32>(v_272.xyz, r3.w);
    let v_273 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_273.x, r2.y, v_273.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_274 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_274.xyz, r3.w);
    let v_275 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_275.x, r2.y, v_275.yz);
    let v_276 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_276.x, r2.y, v_276.yz);
    let v_277 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_277.xyz, r1.w);
  }
  let v_278 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_278.xyz, o0.w);
}

fn v_3(v_279 : bool) {
  if (v_279) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @builtin(position) v_280 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v_280);
  return o0;
}
