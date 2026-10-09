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

var<private> v4 : vec4<f32>;

var<private> v5 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_6;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v4 = v_2;
  x1[0u].x = v5[0u];
  x1[0u].y = v5[1u];
  x1[0u].z = v5[2u];
  x1[0u].w = v5[3u];
  r0 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  r0.w = (r0.w * v0.w);
  let v_4 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  let v_5 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = -(v3.xyzx);
  let v_7 = (v_6.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  r2.z = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_8 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = (r3.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = fma(r3.xxx, cb6_6.tint_symbol_4[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = fma(r3.zzz, cb6_6.tint_symbol_4[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = fma(r4.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = &(x0[0u]);
  let v_14 = r5;
  *(v_13) = vec4<f32>(v_14.xyz, (*(v_13)).w);
  let v_15 = fma(r4.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r6 = vec4<f32>(v_15.xyz, r6.w);
  let v_16 = &(x0[1u]);
  let v_17 = r6;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = fma(r4.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r7 = vec4<f32>(v_18.xyz, r7.w);
  let v_19 = &(x0[2u]);
  let v_20 = r7;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = fma(r4.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = &(x0[3u]);
  let v_23 = r4;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  let v_24 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_25 = r8;
  r8 = vec4<f32>(v_25.x, v_24.x, v_25.z, v_24.y);
  r2.w = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_26 = abs(r7.yyyy);
  r3.w = max(v_26.w, abs(r7.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_27 = (bitcast<u32>(r3.w) != 0u);
  let v_28 = bitcast<f32>(v.tint_symbol_5[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_5[1i].x), v_28, v_27);
  let v_29 = abs(r6.yyyy);
  r4.z = max(v_29.z, abs(r6.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r2.w)));
  let v_30 = bitcast<u32>(r4.z);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_5[2i].x), (v_30 != 0u));
  let v_31 = abs(r5.yyyy);
  r4.z = max(v_31.z, abs(r5.xxxx).z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r4.z < r2.w)));
  let v_32 = bitcast<u32>(r2.w);
  r2.w = select(r3.w, 0.0f, (v_32 != 0u));
  let v_33 = x0[bitcast<i32>(r2.w)];
  r5 = vec4<f32>(v_33.xyz, r5.w);
  r2.w = f32(bitcast<i32>(r2.w));
  r3.w = (r2.w + 0.5f);
  r3.w = (r3.w * 0.25f);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(1065353216u)));
  r2.w = dot(r6, cb6_6.tint_symbol_4[12u]);
  r4.z = dot(r6, cb6_6.tint_symbol_4[13u]);
  r6.x = (r5.x + 0.5f);
  r6.y = fma(r5.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  r2.w = ((-(r2.wwww)).w + r5.z);
  let v_34 = dpdx(r6.xyy);
  r7 = vec4<f32>(v_34.xy, r7.z, v_34.z);
  r7.z = dpdx(r2.w);
  let v_35 = dpdy(r6.yxy);
  r9 = vec4<f32>(v_35.xyz, r9.w);
  r9.w = dpdy(r2.w);
  let v_36 = (r7.yw * r9.yw);
  r5 = vec4<f32>(v_36.xy, r5.zw);
  let v_37 = -(r5.xyxx);
  let v_38 = fma(r7.xz, r9.xz, v_37.xy);
  r10 = vec4<f32>(v_38.xy, r10.zw);
  r4.w = (1.0f / r10.x);
  r5.x = (r7.z * r9.y);
  let v_39 = -(r5.xxxx);
  r10.z = fma(r7.x, r9.w, v_39.z);
  let v_40 = (r4.ww * r10.yz);
  r5 = vec4<f32>(v_40.xy, r5.zw);
  let v_41 = max(r5.xy, vec2<f32>());
  r5 = vec4<f32>(v_41.xy, r5.zw);
  let v_42 = min(r5.xy, vec2<f32>(0.5f));
  r5 = vec4<f32>(v_42.xy, r5.zw);
  r2.w = fma((-(r4.zzzz)).w, r5.x, r2.w);
  r2.w = fma((-(r4.zzzz)).w, r5.y, r2.w);
  let v_43 = bitcast<u32>(r3.w);
  let v_44 = r2.w;
  r8.z = select(r5.z, v_44, (v_43 != 0u));
  r6.z = 0.0f;
  let v_45 = (r6.xyz + r8.ywz);
  r5 = vec4<f32>(v_45.xyz, r5.w);
  let v_46 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r8 = vec4<f32>(v_46.xy, r8.zw);
  let v_47 = (r6.xyz + r8.xyz);
  r7 = vec4<f32>(v_47.xyz, r7.w);
  let v_48 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r8 = vec4<f32>(v_48.xy, r8.zw);
  let v_49 = (r6.xyz + r8.xyz);
  r9 = vec4<f32>(v_49.xyz, r9.w);
  let v_50 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r8 = vec4<f32>(v_50.xy, r8.zw);
  let v_51 = (r6.xyz + r8.xyz);
  r10 = vec4<f32>(v_51.xyz, r10.w);
  let v_52 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r8 = vec4<f32>(v_52.xy, r8.zw);
  let v_53 = (r6.xyz + r8.xyz);
  r11 = vec4<f32>(v_53.xyz, r11.w);
  let v_54 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r8 = vec4<f32>(v_54.xy, r8.zw);
  let v_55 = (r6.xyz + r8.xyz);
  r12 = vec4<f32>(v_55.xyz, r12.w);
  let v_56 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r8 = vec4<f32>(v_56.xy, r8.zw);
  let v_57 = (r6.xyz + r8.xyz);
  r13 = vec4<f32>(v_57.xyz, r13.w);
  let v_58 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r8 = vec4<f32>(v_58.xy, r8.zw);
  let v_59 = (r6.xyz + r8.xyz);
  r14 = vec4<f32>(v_59.xyz, r14.w);
  let v_60 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r8 = vec4<f32>(v_60.xy, r8.zw);
  let v_61 = (r6.xyz + r8.xyz);
  r15 = vec4<f32>(v_61.xyz, r15.w);
  let v_62 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r8 = vec4<f32>(v_62.xy, r8.zw);
  let v_63 = (r6.xyz + r8.xyz);
  r16 = vec4<f32>(v_63.xyz, r16.w);
  let v_64 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r8 = vec4<f32>(v_64.xy, r8.zw);
  let v_65 = (r6.xyz + r8.xyz);
  r17 = vec4<f32>(v_65.xyz, r17.w);
  let v_66 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r8 = vec4<f32>(v_66.xy, r8.zw);
  let v_67 = (r6.xyz + r8.xyz);
  r18 = vec4<f32>(v_67.xyz, r18.w);
  let v_68 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r8 = vec4<f32>(v_68.xy, r8.zw);
  let v_69 = (r6.xyz + r8.xyz);
  r19 = vec4<f32>(v_69.xyz, r19.w);
  let v_70 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r8 = vec4<f32>(v_70.xy, r8.zw);
  let v_71 = (r6.xyz + r8.xyz);
  r20 = vec4<f32>(v_71.xyz, r20.w);
  let v_72 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r8 = vec4<f32>(v_72.xy, r8.zw);
  let v_73 = (r6.xyz + r8.xyz);
  r21 = vec4<f32>(v_73.xyz, r21.w);
  let v_74 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r8 = vec4<f32>(v_74.xy, r8.zw);
  let v_75 = (r6.xyz + r8.xyz);
  r6 = vec4<f32>(v_75.xyz, r6.w);
  let v_76 = r5.xyxx;
  r5.x = textureSampleCompareLevel(t15, s15, v_76.xy, r5.z);
  let v_77 = r7.xyxx;
  r5.y = textureSampleCompareLevel(t15, s15, v_77.xy, r7.z);
  let v_78 = r9.xyxx;
  r5.z = textureSampleCompareLevel(t15, s15, v_78.xy, r9.z);
  let v_79 = r10.xyxx;
  r5.w = textureSampleCompareLevel(t15, s15, v_79.xy, r10.z);
  let v_80 = r11.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_80.xy, r11.z);
  let v_81 = r12.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_81.xy, r12.z);
  let v_82 = r13.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_82.xy, r13.z);
  let v_83 = r14.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_83.xy, r14.z);
  let v_84 = r15.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_84.xy, r15.z);
  let v_85 = r16.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_85.xy, r16.z);
  let v_86 = r17.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_86.xy, r17.z);
  let v_87 = r18.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_87.xy, r18.z);
  let v_88 = r19.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_88.xy, r19.z);
  let v_89 = r20.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_89.xy, r20.z);
  let v_90 = r21.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_90.xy, r21.z);
  let v_91 = r6.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_91.xy, r6.z);
  r5 = (r5 + r7);
  r5 = (r8 + r5);
  r5 = (r9 + r5);
  r2.w = dot(r5, vec4<f32>(1.0f));
  r2.z = clamp(fma(r2.zzzz, cb6_6.tint_symbol_4[0u].wwww, cb6_6.tint_symbol_4[1u].wwww).z, 0.0f, 1.0f);
  let v_92 = abs(r4.yyyy);
  r3.w = max(v_92.w, abs(r4.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.z = (r3.w * r2.z);
  r2.z = fma(r2.w, 0.0625f, r2.z);
  let v_93 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_93.xyz, r2.w);
  r2.z = min(r2.z, 1.0f);
  r2.w = clamp(fma(v3.zzzz, cb6_6.tint_symbol_4[3u].xxxx, cb6_6.tint_symbol_4[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_4[3u].z);
  let v_94 = -(r2.zzzz);
  r2.z = fma(r2.w, v_94.z, r2.z);
  let v_95 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_96 = dot(r1.yzw, v_95.xyz);
  r2.w = clamp(vec4<f32>(v_96, v_96, v_96, v_96).w, 0.0f, 1.0f);
  let v_97 = (r0.xyz * r2.www);
  r4 = vec4<f32>(v_97.xyz, r4.w);
  let v_98 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_98.xyz, r4.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
  let v_99 = (v_6.xyz + cb3_3.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_99.xyz, r5.w);
  let v_100 = (v3.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
  r6 = vec4<f32>(v_100.xyz, r6.w);
  r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[11u].xyz);
  r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
  r4.w = (r4.w * cb3_3.tint_symbol_2[19u].w);
  let v_101 = fma(cb3_3.tint_symbol_2[11u].xyz, r4.www, cb3_3.tint_symbol_2[3u].xyz);
  r6 = vec4<f32>(v_101.xyz, r6.w);
  let v_102 = (r6.xyz + v_6.xyz);
  r6 = vec4<f32>(v_102.xyz, r6.w);
  let v_103 = bitcast<vec3<u32>>(r3.www);
  let v_104 = r5.xyz;
  let v_105 = select(r6.xyz, v_104, (v_103 != vec3<u32>()));
  r5 = vec4<f32>(v_105.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  let v_106 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
  r5 = vec4<f32>(v_106.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_107 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_107.xyz, r5.w);
  r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
  r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[11u].w);
  r3.w = (r3.w / r4.w);
  let v_108 = -(cb3_3.tint_symbol_2[11u].xyzx);
  r4.w = dot(r5.xyz, v_108.xyz);
  r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
  let v_109 = dot(r5.xyz, r1.yzw);
  r5.x = clamp(vec4<f32>(v_109, v_109, v_109, v_109).x, 0.0f, 1.0f);
  r4.w = (r4.w * r5.x);
  r3.w = (r3.w * r4.w);
  let v_110 = (r3.www * cb3_3.tint_symbol_2[19u].xyz);
  r5 = vec4<f32>(v_110.xyz, r5.w);
  let v_111 = (r0.xyz * r5.xyz);
  r5 = vec4<f32>(v_111.xyz, r5.w);
  let v_112 = bitcast<vec3<u32>>(r2.www);
  let v_113 = select(r5.xyz, vec3<f32>(), (v_112 != vec3<u32>()));
  r5 = vec4<f32>(v_113.xyz, r5.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
    let v_114 = (v_6.xyz + cb3_3.tint_symbol_2[4u].xyz);
    r6 = vec4<f32>(v_114.xyz, r6.w);
    let v_115 = (v3.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
    r7 = vec4<f32>(v_115.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[12u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[20u].w);
    let v_116 = fma(cb3_3.tint_symbol_2[12u].xyz, r4.www, cb3_3.tint_symbol_2[4u].xyz);
    r7 = vec4<f32>(v_116.xyz, r7.w);
    let v_117 = (r7.xyz + v_6.xyz);
    r7 = vec4<f32>(v_117.xyz, r7.w);
    let v_118 = bitcast<vec3<u32>>(r3.www);
    let v_119 = r6.xyz;
    let v_120 = select(r7.xyz, v_119, (v_118 != vec3<u32>()));
    r6 = vec4<f32>(v_120.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_121 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_121.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_122 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_122.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[12u].w);
    r3.w = (r3.w / r4.w);
    let v_123 = -(cb3_3.tint_symbol_2[12u].xyzx);
    r4.w = dot(r6.xyz, v_123.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
    let v_124 = dot(r6.xyz, r1.yzw);
    r5.w = clamp(vec4<f32>(v_124, v_124, v_124, v_124).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_125 = (r3.www * cb3_3.tint_symbol_2[20u].xyz);
    r6 = vec4<f32>(v_125.xyz, r6.w);
    let v_126 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_126.xyz, r6.w);
    let v_127 = bitcast<vec3<u32>>(r2.www);
    let v_128 = r5.xyz;
    let v_129 = select(r6.xyz, v_128, (v_127 != vec3<u32>()));
    r5 = vec4<f32>(v_129.xyz, r5.w);
  } else {
    r2.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
    let v_130 = (v_6.xyz + cb3_3.tint_symbol_2[5u].xyz);
    r6 = vec4<f32>(v_130.xyz, r6.w);
    let v_131 = (v3.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
    r7 = vec4<f32>(v_131.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[13u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[21u].w);
    let v_132 = fma(cb3_3.tint_symbol_2[13u].xyz, r4.www, cb3_3.tint_symbol_2[5u].xyz);
    r7 = vec4<f32>(v_132.xyz, r7.w);
    let v_133 = (r7.xyz + v_6.xyz);
    r7 = vec4<f32>(v_133.xyz, r7.w);
    let v_134 = bitcast<vec3<u32>>(r3.www);
    let v_135 = r6.xyz;
    let v_136 = select(r7.xyz, v_135, (v_134 != vec3<u32>()));
    r6 = vec4<f32>(v_136.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_137 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_137.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_138 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_138.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[13u].w);
    r3.w = (r3.w / r4.w);
    let v_139 = -(cb3_3.tint_symbol_2[13u].xyzx);
    r4.w = dot(r6.xyz, v_139.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
    let v_140 = dot(r6.xyz, r1.yzw);
    r5.w = clamp(vec4<f32>(v_140, v_140, v_140, v_140).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_141 = (r3.www * cb3_3.tint_symbol_2[21u].xyz);
    r6 = vec4<f32>(v_141.xyz, r6.w);
    let v_142 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_142.xyz, r6.w);
    let v_143 = bitcast<vec3<u32>>(r2.www);
    let v_144 = r5.xyz;
    let v_145 = select(r6.xyz, v_144, (v_143 != vec3<u32>()));
    r5 = vec4<f32>(v_145.xyz, r5.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
    let v_146 = (v_6.xyz + cb3_3.tint_symbol_2[6u].xyz);
    r6 = vec4<f32>(v_146.xyz, r6.w);
    let v_147 = (v3.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
    r7 = vec4<f32>(v_147.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[14u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[22u].w);
    let v_148 = fma(cb3_3.tint_symbol_2[14u].xyz, r4.www, cb3_3.tint_symbol_2[6u].xyz);
    r7 = vec4<f32>(v_148.xyz, r7.w);
    let v_149 = (r7.xyz + v_6.xyz);
    r7 = vec4<f32>(v_149.xyz, r7.w);
    let v_150 = bitcast<vec3<u32>>(r3.www);
    let v_151 = r6.xyz;
    let v_152 = select(r7.xyz, v_151, (v_150 != vec3<u32>()));
    r6 = vec4<f32>(v_152.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_153 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_153.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_154 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_154.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[14u].w);
    r3.w = (r3.w / r4.w);
    let v_155 = -(cb3_3.tint_symbol_2[14u].xyzx);
    r4.w = dot(r6.xyz, v_155.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
    let v_156 = dot(r6.xyz, r1.yzw);
    r5.w = clamp(vec4<f32>(v_156, v_156, v_156, v_156).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_157 = (r3.www * cb3_3.tint_symbol_2[22u].xyz);
    r6 = vec4<f32>(v_157.xyz, r6.w);
    let v_158 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_158.xyz, r6.w);
    let v_159 = bitcast<vec3<u32>>(r2.www);
    let v_160 = r5.xyz;
    let v_161 = select(r6.xyz, v_160, (v_159 != vec3<u32>()));
    r5 = vec4<f32>(v_161.xyz, r5.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
    let v_162 = (v_6.xyz + cb3_3.tint_symbol_2[7u].xyz);
    r6 = vec4<f32>(v_162.xyz, r6.w);
    let v_163 = (v3.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
    r7 = vec4<f32>(v_163.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[15u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[23u].w);
    let v_164 = fma(cb3_3.tint_symbol_2[15u].xyz, r4.www, cb3_3.tint_symbol_2[7u].xyz);
    r7 = vec4<f32>(v_164.xyz, r7.w);
    let v_165 = (r7.xyz + v_6.xyz);
    r7 = vec4<f32>(v_165.xyz, r7.w);
    let v_166 = bitcast<vec3<u32>>(r3.www);
    let v_167 = r6.xyz;
    let v_168 = select(r7.xyz, v_167, (v_166 != vec3<u32>()));
    r6 = vec4<f32>(v_168.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_169 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_169.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_170 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_170.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[15u].w);
    r3.w = (r3.w / r4.w);
    let v_171 = -(cb3_3.tint_symbol_2[15u].xyzx);
    r4.w = dot(r6.xyz, v_171.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
    let v_172 = dot(r6.xyz, r1.yzw);
    r5.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_173 = (r3.www * cb3_3.tint_symbol_2[23u].xyz);
    r6 = vec4<f32>(v_173.xyz, r6.w);
    let v_174 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_174.xyz, r6.w);
    let v_175 = bitcast<vec3<u32>>(r2.www);
    let v_176 = r5.xyz;
    let v_177 = select(r6.xyz, v_176, (v_175 != vec3<u32>()));
    r5 = vec4<f32>(v_177.xyz, r5.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
    let v_178 = (v_6.xyz + cb3_3.tint_symbol_2[8u].xyz);
    r6 = vec4<f32>(v_178.xyz, r6.w);
    let v_179 = (v3.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
    r7 = vec4<f32>(v_179.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[16u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[24u].w);
    let v_180 = fma(cb3_3.tint_symbol_2[16u].xyz, r4.www, cb3_3.tint_symbol_2[8u].xyz);
    r7 = vec4<f32>(v_180.xyz, r7.w);
    let v_181 = (r7.xyz + v_6.xyz);
    r7 = vec4<f32>(v_181.xyz, r7.w);
    let v_182 = bitcast<vec3<u32>>(r3.www);
    let v_183 = r6.xyz;
    let v_184 = select(r7.xyz, v_183, (v_182 != vec3<u32>()));
    r6 = vec4<f32>(v_184.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_185 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_185.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_186 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_186.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[16u].w);
    r3.w = (r3.w / r4.w);
    let v_187 = -(cb3_3.tint_symbol_2[16u].xyzx);
    r4.w = dot(r6.xyz, v_187.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
    let v_188 = dot(r6.xyz, r1.yzw);
    r5.w = clamp(vec4<f32>(v_188, v_188, v_188, v_188).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_189 = (r3.www * cb3_3.tint_symbol_2[24u].xyz);
    r6 = vec4<f32>(v_189.xyz, r6.w);
    let v_190 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_190.xyz, r6.w);
    let v_191 = bitcast<vec3<u32>>(r2.www);
    let v_192 = r5.xyz;
    let v_193 = select(r6.xyz, v_192, (v_191 != vec3<u32>()));
    r5 = vec4<f32>(v_193.xyz, r5.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
    let v_194 = (v_6.xyz + cb3_3.tint_symbol_2[9u].xyz);
    r6 = vec4<f32>(v_194.xyz, r6.w);
    let v_195 = (v3.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
    r7 = vec4<f32>(v_195.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[17u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[25u].w);
    let v_196 = fma(cb3_3.tint_symbol_2[17u].xyz, r4.www, cb3_3.tint_symbol_2[9u].xyz);
    r7 = vec4<f32>(v_196.xyz, r7.w);
    let v_197 = (r7.xyz + v_6.xyz);
    r7 = vec4<f32>(v_197.xyz, r7.w);
    let v_198 = bitcast<vec3<u32>>(r3.www);
    let v_199 = r6.xyz;
    let v_200 = select(r7.xyz, v_199, (v_198 != vec3<u32>()));
    r6 = vec4<f32>(v_200.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_201 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_201.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_202 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_202.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[17u].w);
    r3.w = (r3.w / r4.w);
    let v_203 = -(cb3_3.tint_symbol_2[17u].xyzx);
    r4.w = dot(r6.xyz, v_203.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
    let v_204 = dot(r6.xyz, r1.yzw);
    r5.w = clamp(vec4<f32>(v_204, v_204, v_204, v_204).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_205 = (r3.www * cb3_3.tint_symbol_2[25u].xyz);
    r6 = vec4<f32>(v_205.xyz, r6.w);
    let v_206 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_206.xyz, r6.w);
    let v_207 = bitcast<vec3<u32>>(r2.www);
    let v_208 = r5.xyz;
    let v_209 = select(r6.xyz, v_208, (v_207 != vec3<u32>()));
    r5 = vec4<f32>(v_209.xyz, r5.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
    let v_210 = (v_6.xyz + cb3_3.tint_symbol_2[10u].xyz);
    r6 = vec4<f32>(v_210.xyz, r6.w);
    let v_211 = (v3.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
    r7 = vec4<f32>(v_211.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[18u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[26u].w);
    let v_212 = fma(cb3_3.tint_symbol_2[18u].xyz, r4.www, cb3_3.tint_symbol_2[10u].xyz);
    r7 = vec4<f32>(v_212.xyz, r7.w);
    let v_213 = (r7.xyz + v_6.xyz);
    r7 = vec4<f32>(v_213.xyz, r7.w);
    let v_214 = bitcast<vec3<u32>>(r3.www);
    let v_215 = r6.xyz;
    let v_216 = select(r7.xyz, v_215, (v_214 != vec3<u32>()));
    r6 = vec4<f32>(v_216.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_217 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_217.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_218 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_218.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[18u].w);
    r3.w = (r3.w / r4.w);
    let v_219 = -(cb3_3.tint_symbol_2[18u].xyzx);
    r4.w = dot(r6.xyz, v_219.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
    let v_220 = dot(r6.xyz, r1.yzw);
    r5.w = clamp(vec4<f32>(v_220, v_220, v_220, v_220).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_221 = (r3.www * cb3_3.tint_symbol_2[26u].xyz);
    r6 = vec4<f32>(v_221.xyz, r6.w);
    let v_222 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_222.xyz, r6.w);
    let v_223 = bitcast<vec3<u32>>(r2.www);
    let v_224 = r5.xyz;
    let v_225 = select(r6.xyz, v_224, (v_223 != vec3<u32>()));
    r5 = vec4<f32>(v_225.xyz, r5.w);
  }
  let v_226 = fma(r4.xyz, r2.zzz, r5.xyz);
  r4 = vec4<f32>(v_226.xyz, r4.w);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_227 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_227.xyz, r5.w);
  r2.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_228 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_228.xyz, r6.w);
  let v_229 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_229.xyz, r6.w);
  let v_230 = fma(r5.xyz, r2.zzz, r6.xyz);
  r5 = vec4<f32>(v_230.xyz, r5.w);
  let v_231 = (r2.yyy * r5.xyz);
  r2 = vec4<f32>(r2.x, v_231.xyz);
  let v_232 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_232.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_233 = dot(r6.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_233, v_233, v_233, v_233).x, 0.0f, 1.0f);
  let v_234 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r5.xyz);
  r1 = vec4<f32>(v_234.xyz, r1.w);
  let v_235 = fma(r1.xyz, r2.xxx, r2.yzw);
  r1 = vec4<f32>(v_235.xyz, r1.w);
  let v_236 = fma(r1.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_236.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r1.x = dot(r3.xyz, r3.xyz);
    r1.y = sqrt(r1.x);
    let v_237 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.z = (r1.y + v_237.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r1.y * r3.z);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_238 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_238 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_239 = (r1.xxx * r3.xyz);
    r2 = vec4<f32>(v_239.xyz, r2.w);
    let v_240 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.x = clamp(vec4<f32>(v_240, v_240, v_240, v_240).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
    r1.x = exp2(r1.x);
    let v_241 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_241, v_241, v_241, v_241).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
    let v_242 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r1.z + v_242.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_243 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r1.z * v_243.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_244 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(r2.x, v_244.xyz);
    let v_245 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(r2.x, v_245.xyz);
    let v_246 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_246.xyz, r4.w);
    let v_247 = fma(r2.xxx, r4.xyz, r2.yzw);
    r2 = vec4<f32>(v_247.xyz, r2.w);
    let v_248 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_249 = (r2.xyz + v_248.xyz);
    r2 = vec4<f32>(v_249.xyz, r2.w);
    let v_250 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_250.xyz, r2.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_251 = ((-(r2.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_251.xyz, r4.w);
    let v_252 = fma(r1.yyy, r4.xyz, r2.xyz);
    r1 = vec4<f32>(v_252.xyz, r1.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_253 = (v4.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_253.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r2.x = (r2.x + -1.0f);
      r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r2.x = 1.0f;
    }
    let v_254 = -(r0.xyzx);
    let v_255 = fma(r1.xyz, r2.xxx, v_254.xyz);
    r1 = vec4<f32>(v_255.xyz, r1.w);
    let v_256 = fma(r1.www, r1.xyz, r0.xyz);
    r1 = vec4<f32>(v_256.xyz, r1.w);
  } else {
    r1.w = dot(r3.xyz, r3.xyz);
    r2.x = sqrt(r1.w);
    let v_257 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_257.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r2.x * r3.z);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_258 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_258 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_259 = (r1.www * r3.xyz);
    r3 = vec4<f32>(v_259.xyz, r3.w);
    let v_260 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_260, v_260, v_260, v_260).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_261 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_261, v_261, v_261, v_261).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].y);
    let v_262 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r2.y + v_262.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r2.z = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).z, 0.0f, 1.0f);
    let v_263 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.y = (r2.y * v_263.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    let v_264 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_264.xyz, r3.w);
    let v_265 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_265.xyz, r3.w);
    let v_266 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_266.xyz, r4.w);
    let v_267 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_267.xyz, r3.w);
    let v_268 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_269 = (r3.xyz + v_268.xyz);
    r3 = vec4<f32>(v_269.xyz, r3.w);
    let v_270 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_270.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_271 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_271.xyz, r4.w);
    let v_272 = fma(r2.xxx, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_272.xy, r2.z, v_272.z);
    let v_273 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_273.xy, r2.z, v_273.z);
    let v_274 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_274.xyz, r1.w);
  }
  let v_275 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_275.xyz, o0.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < r0.w)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  o1 = (r0.x * v1.z);
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @builtin(position) v_276 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v0, v1, v2, v3, v_276);
  return tint_symbol_7(o0, o1, o2);
}
