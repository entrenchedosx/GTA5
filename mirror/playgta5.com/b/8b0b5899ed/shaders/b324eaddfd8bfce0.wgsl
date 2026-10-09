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

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v3 : vec4<f32>;

var<private> v4 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_6;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v3 = v_2;
  x1[0u].x = v4[0u];
  x1[0u].y = v4[1u];
  x1[0u].z = v4[2u];
  x1[0u].w = v4[3u];
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= 1.0f)));
  v_3((bitcast<u32>(r0.x) != 0u));
  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_4 = (r0.xxx * v1.xyz);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  let v_5 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  let v_6 = -(v2.xyzx);
  let v_7 = (v_6.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r1.z = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_8 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = (r2.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = fma(r2.xxx, cb6_6.tint_symbol_4[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = fma(r2.zzz, cb6_6.tint_symbol_4[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = fma(r3.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = &(x0[0u]);
  let v_14 = r4;
  *(v_13) = vec4<f32>(v_14.xyz, (*(v_13)).w);
  let v_15 = fma(r3.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = &(x0[1u]);
  let v_17 = r5;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = fma(r3.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  let v_19 = &(x0[2u]);
  let v_20 = r6;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = fma(r3.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  let v_22 = &(x0[3u]);
  let v_23 = r3;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  let v_24 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_25 = r7;
  r7 = vec4<f32>(v_25.x, v_24.x, v_25.z, v_24.y);
  r1.w = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).w, 1.5f, 1.0f);
  r1.w = (r1.w * 0.5f);
  let v_26 = abs(r6.yyyy);
  r2.w = max(v_26.w, abs(r6.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.w)));
  let v_27 = (bitcast<u32>(r2.w) != 0u);
  let v_28 = bitcast<f32>(v.tint_symbol_5[0i].x);
  r2.w = select(bitcast<f32>(v.tint_symbol_5[1i].x), v_28, v_27);
  let v_29 = abs(r5.yyyy);
  r3.z = max(v_29.z, abs(r5.xxxx).z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r1.w)));
  let v_30 = bitcast<u32>(r3.z);
  r2.w = select(r2.w, bitcast<f32>(v.tint_symbol_5[2i].x), (v_30 != 0u));
  let v_31 = abs(r4.yyyy);
  r3.z = max(v_31.z, abs(r4.xxxx).z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r3.z < r1.w)));
  let v_32 = bitcast<u32>(r1.w);
  r1.w = select(r2.w, 0.0f, (v_32 != 0u));
  let v_33 = x0[bitcast<i32>(r1.w)];
  r4 = vec4<f32>(v_33.xyz, r4.w);
  r1.w = f32(bitcast<i32>(r1.w));
  r2.w = (r1.w + 0.5f);
  r2.w = (r2.w * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.wwww)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r1.w = dot(r5, cb6_6.tint_symbol_4[12u]);
  r3.z = dot(r5, cb6_6.tint_symbol_4[13u]);
  r5.x = (r4.x + 0.5f);
  r5.y = fma(r4.y, 0.25f, r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r1.w == 0.0f))));
  r1.w = ((-(r1.wwww)).w + r4.z);
  let v_34 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_34.xy, r6.z, v_34.z);
  r6.z = dpdx(r1.w);
  let v_35 = dpdy(r5.yxy);
  r8 = vec4<f32>(v_35.xyz, r8.w);
  r8.w = dpdy(r1.w);
  let v_36 = (r6.yw * r8.yw);
  r4 = vec4<f32>(v_36.xy, r4.zw);
  let v_37 = -(r4.xyxx);
  let v_38 = fma(r6.xz, r8.xz, v_37.xy);
  r9 = vec4<f32>(v_38.xy, r9.zw);
  r3.w = (1.0f / r9.x);
  r4.x = (r6.z * r8.y);
  let v_39 = -(r4.xxxx);
  r9.z = fma(r6.x, r8.w, v_39.z);
  let v_40 = (r3.ww * r9.yz);
  r4 = vec4<f32>(v_40.xy, r4.zw);
  let v_41 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_41.xy, r4.zw);
  let v_42 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_42.xy, r4.zw);
  r1.w = fma((-(r3.zzzz)).w, r4.x, r1.w);
  r1.w = fma((-(r3.zzzz)).w, r4.y, r1.w);
  let v_43 = bitcast<u32>(r2.w);
  let v_44 = r1.w;
  r7.z = select(r4.z, v_44, (v_43 != 0u));
  r5.z = 0.0f;
  let v_45 = (r5.xyz + r7.ywz);
  r4 = vec4<f32>(v_45.xyz, r4.w);
  let v_46 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r7 = vec4<f32>(v_46.xy, r7.zw);
  let v_47 = (r5.xyz + r7.xyz);
  r6 = vec4<f32>(v_47.xyz, r6.w);
  let v_48 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r7 = vec4<f32>(v_48.xy, r7.zw);
  let v_49 = (r5.xyz + r7.xyz);
  r8 = vec4<f32>(v_49.xyz, r8.w);
  let v_50 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r7 = vec4<f32>(v_50.xy, r7.zw);
  let v_51 = (r5.xyz + r7.xyz);
  r9 = vec4<f32>(v_51.xyz, r9.w);
  let v_52 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r7 = vec4<f32>(v_52.xy, r7.zw);
  let v_53 = (r5.xyz + r7.xyz);
  r10 = vec4<f32>(v_53.xyz, r10.w);
  let v_54 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r7 = vec4<f32>(v_54.xy, r7.zw);
  let v_55 = (r5.xyz + r7.xyz);
  r11 = vec4<f32>(v_55.xyz, r11.w);
  let v_56 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r7 = vec4<f32>(v_56.xy, r7.zw);
  let v_57 = (r5.xyz + r7.xyz);
  r12 = vec4<f32>(v_57.xyz, r12.w);
  let v_58 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r7 = vec4<f32>(v_58.xy, r7.zw);
  let v_59 = (r5.xyz + r7.xyz);
  r13 = vec4<f32>(v_59.xyz, r13.w);
  let v_60 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r7 = vec4<f32>(v_60.xy, r7.zw);
  let v_61 = (r5.xyz + r7.xyz);
  r14 = vec4<f32>(v_61.xyz, r14.w);
  let v_62 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r7 = vec4<f32>(v_62.xy, r7.zw);
  let v_63 = (r5.xyz + r7.xyz);
  r15 = vec4<f32>(v_63.xyz, r15.w);
  let v_64 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r7 = vec4<f32>(v_64.xy, r7.zw);
  let v_65 = (r5.xyz + r7.xyz);
  r16 = vec4<f32>(v_65.xyz, r16.w);
  let v_66 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r7 = vec4<f32>(v_66.xy, r7.zw);
  let v_67 = (r5.xyz + r7.xyz);
  r17 = vec4<f32>(v_67.xyz, r17.w);
  let v_68 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r7 = vec4<f32>(v_68.xy, r7.zw);
  let v_69 = (r5.xyz + r7.xyz);
  r18 = vec4<f32>(v_69.xyz, r18.w);
  let v_70 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r7 = vec4<f32>(v_70.xy, r7.zw);
  let v_71 = (r5.xyz + r7.xyz);
  r19 = vec4<f32>(v_71.xyz, r19.w);
  let v_72 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r7 = vec4<f32>(v_72.xy, r7.zw);
  let v_73 = (r5.xyz + r7.xyz);
  r20 = vec4<f32>(v_73.xyz, r20.w);
  let v_74 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r7 = vec4<f32>(v_74.xy, r7.zw);
  let v_75 = (r5.xyz + r7.xyz);
  r5 = vec4<f32>(v_75.xyz, r5.w);
  let v_76 = r4.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_76.xy, r4.z);
  let v_77 = r6.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_77.xy, r6.z);
  let v_78 = r8.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_78.xy, r8.z);
  let v_79 = r9.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_79.xy, r9.z);
  let v_80 = r10.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_80.xy, r10.z);
  let v_81 = r11.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_81.xy, r11.z);
  let v_82 = r12.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_82.xy, r12.z);
  let v_83 = r13.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_83.xy, r13.z);
  let v_84 = r14.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_84.xy, r14.z);
  let v_85 = r15.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_85.xy, r15.z);
  let v_86 = r16.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_86.xy, r16.z);
  let v_87 = r17.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_87.xy, r17.z);
  let v_88 = r18.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_88.xy, r18.z);
  let v_89 = r19.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_89.xy, r19.z);
  let v_90 = r20.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_90.xy, r20.z);
  let v_91 = r5.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_91.xy, r5.z);
  r4 = (r4 + r6);
  r4 = (r7 + r4);
  r4 = (r8 + r4);
  r1.w = dot(r4, vec4<f32>(1.0f));
  r1.z = clamp(fma(r1.zzzz, cb6_6.tint_symbol_4[0u].wwww, cb6_6.tint_symbol_4[1u].wwww).z, 0.0f, 1.0f);
  let v_92 = abs(r3.yyyy);
  r2.w = max(v_92.w, abs(r3.xxxx).w);
  r2.w = clamp(fma(r2.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = (r2.w * r1.z);
  r1.z = fma(r1.w, 0.0625f, r1.z);
  let v_93 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_93.xyz, r1.w);
  r1.z = min(r1.z, 1.0f);
  r1.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_4[3u].xxxx, cb6_6.tint_symbol_4[3u].yyyy).w, 0.0f, 1.0f);
  r1.w = sqrt(r1.w);
  r1.w = (r1.w * cb6_6.tint_symbol_4[3u].z);
  let v_94 = -(r1.zzzz);
  r1.z = fma(r1.w, v_94.z, r1.z);
  let v_95 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_96 = dot(r0.yzw, v_95.xyz);
  r1.w = clamp(vec4<f32>(v_96, v_96, v_96, v_96).w, 0.0f, 1.0f);
  let v_97 = (r1.www * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_97.xyz, r3.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
  let v_98 = (v_6.xyz + cb3_3.tint_symbol_2[3u].xyz);
  r4 = vec4<f32>(v_98.xyz, r4.w);
  let v_99 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
  r5 = vec4<f32>(v_99.xyz, r5.w);
  r3.w = dot(r5.xyz, cb3_3.tint_symbol_2[11u].xyz);
  r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
  r3.w = (r3.w * cb3_3.tint_symbol_2[19u].w);
  let v_100 = fma(cb3_3.tint_symbol_2[11u].xyz, r3.www, cb3_3.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_100.xyz, r5.w);
  let v_101 = (r5.xyz + v_6.xyz);
  r5 = vec4<f32>(v_101.xyz, r5.w);
  let v_102 = bitcast<vec3<u32>>(r2.www);
  let v_103 = r4.xyz;
  let v_104 = select(r5.xyz, v_103, (v_102 != vec3<u32>()));
  r4 = vec4<f32>(v_104.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  let v_105 = (r4.xyz + vec3<f32>(0.00000099999999747524f));
  r4 = vec4<f32>(v_105.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_106 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_106.xyz, r4.w);
  r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r3.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
  r3.w = fma(r3.w, r2.w, cb3_3.tint_symbol_2[11u].w);
  r2.w = (r2.w / r3.w);
  let v_107 = -(cb3_3.tint_symbol_2[11u].xyzx);
  r3.w = dot(r4.xyz, v_107.xyz);
  r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
  let v_108 = dot(r4.xyz, r0.yzw);
  r4.x = clamp(vec4<f32>(v_108, v_108, v_108, v_108).x, 0.0f, 1.0f);
  r3.w = (r3.w * r4.x);
  r2.w = (r2.w * r3.w);
  let v_109 = (r2.www * cb3_3.tint_symbol_2[19u].xyz);
  r4 = vec4<f32>(v_109.xyz, r4.w);
  let v_110 = bitcast<vec3<u32>>(r1.www);
  let v_111 = select(r4.xyz, vec3<f32>(), (v_110 != vec3<u32>()));
  r4 = vec4<f32>(v_111.xyz, r4.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
    let v_112 = (v_6.xyz + cb3_3.tint_symbol_2[4u].xyz);
    r5 = vec4<f32>(v_112.xyz, r5.w);
    let v_113 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
    r6 = vec4<f32>(v_113.xyz, r6.w);
    r3.w = dot(r6.xyz, cb3_3.tint_symbol_2[12u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_2[20u].w);
    let v_114 = fma(cb3_3.tint_symbol_2[12u].xyz, r3.www, cb3_3.tint_symbol_2[4u].xyz);
    r6 = vec4<f32>(v_114.xyz, r6.w);
    let v_115 = (r6.xyz + v_6.xyz);
    r6 = vec4<f32>(v_115.xyz, r6.w);
    let v_116 = bitcast<vec3<u32>>(r2.www);
    let v_117 = r5.xyz;
    let v_118 = select(r6.xyz, v_117, (v_116 != vec3<u32>()));
    r5 = vec4<f32>(v_118.xyz, r5.w);
    r2.w = dot(r5.xyz, r5.xyz);
    let v_119 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_119.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_120 = (r3.www * r5.xyz);
    r5 = vec4<f32>(v_120.xyz, r5.w);
    r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r2.w, cb3_3.tint_symbol_2[12u].w);
    r2.w = (r2.w / r3.w);
    let v_121 = -(cb3_3.tint_symbol_2[12u].xyzx);
    r3.w = dot(r5.xyz, v_121.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
    let v_122 = dot(r5.xyz, r0.yzw);
    r4.w = clamp(vec4<f32>(v_122, v_122, v_122, v_122).w, 0.0f, 1.0f);
    r3.w = (r3.w * r4.w);
    r2.w = (r2.w * r3.w);
    let v_123 = fma(r2.www, cb3_3.tint_symbol_2[20u].xyz, r4.xyz);
    r5 = vec4<f32>(v_123.xyz, r5.w);
    let v_124 = bitcast<vec3<u32>>(r1.www);
    let v_125 = r4.xyz;
    let v_126 = select(r5.xyz, v_125, (v_124 != vec3<u32>()));
    r4 = vec4<f32>(v_126.xyz, r4.w);
  } else {
    r1.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  }
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
    let v_127 = (v_6.xyz + cb3_3.tint_symbol_2[5u].xyz);
    r5 = vec4<f32>(v_127.xyz, r5.w);
    let v_128 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
    r6 = vec4<f32>(v_128.xyz, r6.w);
    r3.w = dot(r6.xyz, cb3_3.tint_symbol_2[13u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_2[21u].w);
    let v_129 = fma(cb3_3.tint_symbol_2[13u].xyz, r3.www, cb3_3.tint_symbol_2[5u].xyz);
    r6 = vec4<f32>(v_129.xyz, r6.w);
    let v_130 = (r6.xyz + v_6.xyz);
    r6 = vec4<f32>(v_130.xyz, r6.w);
    let v_131 = bitcast<vec3<u32>>(r2.www);
    let v_132 = r5.xyz;
    let v_133 = select(r6.xyz, v_132, (v_131 != vec3<u32>()));
    r5 = vec4<f32>(v_133.xyz, r5.w);
    r2.w = dot(r5.xyz, r5.xyz);
    let v_134 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_134.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_135 = (r3.www * r5.xyz);
    r5 = vec4<f32>(v_135.xyz, r5.w);
    r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r2.w, cb3_3.tint_symbol_2[13u].w);
    r2.w = (r2.w / r3.w);
    let v_136 = -(cb3_3.tint_symbol_2[13u].xyzx);
    r3.w = dot(r5.xyz, v_136.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
    let v_137 = dot(r5.xyz, r0.yzw);
    r4.w = clamp(vec4<f32>(v_137, v_137, v_137, v_137).w, 0.0f, 1.0f);
    r3.w = (r3.w * r4.w);
    r2.w = (r2.w * r3.w);
    let v_138 = fma(r2.www, cb3_3.tint_symbol_2[21u].xyz, r4.xyz);
    r5 = vec4<f32>(v_138.xyz, r5.w);
    let v_139 = bitcast<vec3<u32>>(r1.www);
    let v_140 = r4.xyz;
    let v_141 = select(r5.xyz, v_140, (v_139 != vec3<u32>()));
    r4 = vec4<f32>(v_141.xyz, r4.w);
  }
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
    let v_142 = (v_6.xyz + cb3_3.tint_symbol_2[6u].xyz);
    r5 = vec4<f32>(v_142.xyz, r5.w);
    let v_143 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
    r6 = vec4<f32>(v_143.xyz, r6.w);
    r3.w = dot(r6.xyz, cb3_3.tint_symbol_2[14u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_2[22u].w);
    let v_144 = fma(cb3_3.tint_symbol_2[14u].xyz, r3.www, cb3_3.tint_symbol_2[6u].xyz);
    r6 = vec4<f32>(v_144.xyz, r6.w);
    let v_145 = (r6.xyz + v_6.xyz);
    r6 = vec4<f32>(v_145.xyz, r6.w);
    let v_146 = bitcast<vec3<u32>>(r2.www);
    let v_147 = r5.xyz;
    let v_148 = select(r6.xyz, v_147, (v_146 != vec3<u32>()));
    r5 = vec4<f32>(v_148.xyz, r5.w);
    r2.w = dot(r5.xyz, r5.xyz);
    let v_149 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_149.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_150 = (r3.www * r5.xyz);
    r5 = vec4<f32>(v_150.xyz, r5.w);
    r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r2.w, cb3_3.tint_symbol_2[14u].w);
    r2.w = (r2.w / r3.w);
    let v_151 = -(cb3_3.tint_symbol_2[14u].xyzx);
    r3.w = dot(r5.xyz, v_151.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
    let v_152 = dot(r5.xyz, r0.yzw);
    r4.w = clamp(vec4<f32>(v_152, v_152, v_152, v_152).w, 0.0f, 1.0f);
    r3.w = (r3.w * r4.w);
    r2.w = (r2.w * r3.w);
    let v_153 = fma(r2.www, cb3_3.tint_symbol_2[22u].xyz, r4.xyz);
    r5 = vec4<f32>(v_153.xyz, r5.w);
    let v_154 = bitcast<vec3<u32>>(r1.www);
    let v_155 = r4.xyz;
    let v_156 = select(r5.xyz, v_155, (v_154 != vec3<u32>()));
    r4 = vec4<f32>(v_156.xyz, r4.w);
  }
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
    let v_157 = (v_6.xyz + cb3_3.tint_symbol_2[7u].xyz);
    r5 = vec4<f32>(v_157.xyz, r5.w);
    let v_158 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
    r6 = vec4<f32>(v_158.xyz, r6.w);
    r3.w = dot(r6.xyz, cb3_3.tint_symbol_2[15u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_2[23u].w);
    let v_159 = fma(cb3_3.tint_symbol_2[15u].xyz, r3.www, cb3_3.tint_symbol_2[7u].xyz);
    r6 = vec4<f32>(v_159.xyz, r6.w);
    let v_160 = (r6.xyz + v_6.xyz);
    r6 = vec4<f32>(v_160.xyz, r6.w);
    let v_161 = bitcast<vec3<u32>>(r2.www);
    let v_162 = r5.xyz;
    let v_163 = select(r6.xyz, v_162, (v_161 != vec3<u32>()));
    r5 = vec4<f32>(v_163.xyz, r5.w);
    r2.w = dot(r5.xyz, r5.xyz);
    let v_164 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_164.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_165 = (r3.www * r5.xyz);
    r5 = vec4<f32>(v_165.xyz, r5.w);
    r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r2.w, cb3_3.tint_symbol_2[15u].w);
    r2.w = (r2.w / r3.w);
    let v_166 = -(cb3_3.tint_symbol_2[15u].xyzx);
    r3.w = dot(r5.xyz, v_166.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
    let v_167 = dot(r5.xyz, r0.yzw);
    r4.w = clamp(vec4<f32>(v_167, v_167, v_167, v_167).w, 0.0f, 1.0f);
    r3.w = (r3.w * r4.w);
    r2.w = (r2.w * r3.w);
    let v_168 = fma(r2.www, cb3_3.tint_symbol_2[23u].xyz, r4.xyz);
    r5 = vec4<f32>(v_168.xyz, r5.w);
    let v_169 = bitcast<vec3<u32>>(r1.www);
    let v_170 = r4.xyz;
    let v_171 = select(r5.xyz, v_170, (v_169 != vec3<u32>()));
    r4 = vec4<f32>(v_171.xyz, r4.w);
  }
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
    let v_172 = (v_6.xyz + cb3_3.tint_symbol_2[8u].xyz);
    r5 = vec4<f32>(v_172.xyz, r5.w);
    let v_173 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
    r6 = vec4<f32>(v_173.xyz, r6.w);
    r3.w = dot(r6.xyz, cb3_3.tint_symbol_2[16u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_2[24u].w);
    let v_174 = fma(cb3_3.tint_symbol_2[16u].xyz, r3.www, cb3_3.tint_symbol_2[8u].xyz);
    r6 = vec4<f32>(v_174.xyz, r6.w);
    let v_175 = (r6.xyz + v_6.xyz);
    r6 = vec4<f32>(v_175.xyz, r6.w);
    let v_176 = bitcast<vec3<u32>>(r2.www);
    let v_177 = r5.xyz;
    let v_178 = select(r6.xyz, v_177, (v_176 != vec3<u32>()));
    r5 = vec4<f32>(v_178.xyz, r5.w);
    r2.w = dot(r5.xyz, r5.xyz);
    let v_179 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_179.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_180 = (r3.www * r5.xyz);
    r5 = vec4<f32>(v_180.xyz, r5.w);
    r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r2.w, cb3_3.tint_symbol_2[16u].w);
    r2.w = (r2.w / r3.w);
    let v_181 = -(cb3_3.tint_symbol_2[16u].xyzx);
    r3.w = dot(r5.xyz, v_181.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
    let v_182 = dot(r5.xyz, r0.yzw);
    r4.w = clamp(vec4<f32>(v_182, v_182, v_182, v_182).w, 0.0f, 1.0f);
    r3.w = (r3.w * r4.w);
    r2.w = (r2.w * r3.w);
    let v_183 = fma(r2.www, cb3_3.tint_symbol_2[24u].xyz, r4.xyz);
    r5 = vec4<f32>(v_183.xyz, r5.w);
    let v_184 = bitcast<vec3<u32>>(r1.www);
    let v_185 = r4.xyz;
    let v_186 = select(r5.xyz, v_185, (v_184 != vec3<u32>()));
    r4 = vec4<f32>(v_186.xyz, r4.w);
  }
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
    let v_187 = (v_6.xyz + cb3_3.tint_symbol_2[9u].xyz);
    r5 = vec4<f32>(v_187.xyz, r5.w);
    let v_188 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
    r6 = vec4<f32>(v_188.xyz, r6.w);
    r3.w = dot(r6.xyz, cb3_3.tint_symbol_2[17u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_2[25u].w);
    let v_189 = fma(cb3_3.tint_symbol_2[17u].xyz, r3.www, cb3_3.tint_symbol_2[9u].xyz);
    r6 = vec4<f32>(v_189.xyz, r6.w);
    let v_190 = (r6.xyz + v_6.xyz);
    r6 = vec4<f32>(v_190.xyz, r6.w);
    let v_191 = bitcast<vec3<u32>>(r2.www);
    let v_192 = r5.xyz;
    let v_193 = select(r6.xyz, v_192, (v_191 != vec3<u32>()));
    r5 = vec4<f32>(v_193.xyz, r5.w);
    r2.w = dot(r5.xyz, r5.xyz);
    let v_194 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_194.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_195 = (r3.www * r5.xyz);
    r5 = vec4<f32>(v_195.xyz, r5.w);
    r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r2.w, cb3_3.tint_symbol_2[17u].w);
    r2.w = (r2.w / r3.w);
    let v_196 = -(cb3_3.tint_symbol_2[17u].xyzx);
    r3.w = dot(r5.xyz, v_196.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
    let v_197 = dot(r5.xyz, r0.yzw);
    r4.w = clamp(vec4<f32>(v_197, v_197, v_197, v_197).w, 0.0f, 1.0f);
    r3.w = (r3.w * r4.w);
    r2.w = (r2.w * r3.w);
    let v_198 = fma(r2.www, cb3_3.tint_symbol_2[25u].xyz, r4.xyz);
    r5 = vec4<f32>(v_198.xyz, r5.w);
    let v_199 = bitcast<vec3<u32>>(r1.www);
    let v_200 = r4.xyz;
    let v_201 = select(r5.xyz, v_200, (v_199 != vec3<u32>()));
    r4 = vec4<f32>(v_201.xyz, r4.w);
  }
  if ((bitcast<u32>(r1.w) != 0u)) {
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
    let v_202 = (v_6.xyz + cb3_3.tint_symbol_2[10u].xyz);
    r5 = vec4<f32>(v_202.xyz, r5.w);
    let v_203 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
    r6 = vec4<f32>(v_203.xyz, r6.w);
    r3.w = dot(r6.xyz, cb3_3.tint_symbol_2[18u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_2[26u].w);
    let v_204 = fma(cb3_3.tint_symbol_2[18u].xyz, r3.www, cb3_3.tint_symbol_2[10u].xyz);
    r6 = vec4<f32>(v_204.xyz, r6.w);
    let v_205 = (r6.xyz + v_6.xyz);
    r6 = vec4<f32>(v_205.xyz, r6.w);
    let v_206 = bitcast<vec3<u32>>(r2.www);
    let v_207 = r5.xyz;
    let v_208 = select(r6.xyz, v_207, (v_206 != vec3<u32>()));
    r5 = vec4<f32>(v_208.xyz, r5.w);
    r2.w = dot(r5.xyz, r5.xyz);
    let v_209 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_209.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_210 = (r3.www * r5.xyz);
    r5 = vec4<f32>(v_210.xyz, r5.w);
    r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r2.w, cb3_3.tint_symbol_2[18u].w);
    r2.w = (r2.w / r3.w);
    let v_211 = -(cb3_3.tint_symbol_2[18u].xyzx);
    r3.w = dot(r5.xyz, v_211.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
    let v_212 = dot(r5.xyz, r0.yzw);
    r4.w = clamp(vec4<f32>(v_212, v_212, v_212, v_212).w, 0.0f, 1.0f);
    r3.w = (r3.w * r4.w);
    r2.w = (r2.w * r3.w);
    let v_213 = fma(r2.www, cb3_3.tint_symbol_2[26u].xyz, r4.xyz);
    r5 = vec4<f32>(v_213.xyz, r5.w);
    let v_214 = bitcast<vec3<u32>>(r1.www);
    let v_215 = r4.xyz;
    let v_216 = select(r5.xyz, v_215, (v_214 != vec3<u32>()));
    r4 = vec4<f32>(v_216.xyz, r4.w);
  }
  let v_217 = fma(r3.xyz, r1.zzz, r4.xyz);
  r3 = vec4<f32>(v_217.xyz, r3.w);
  r0.x = fma(v1.z, r0.x, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_218 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_218.xyz, r4.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_219 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_219.xyz, r5.w);
  let v_220 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_220.xyz, r5.w);
  let v_221 = fma(r4.xyz, r1.zzz, r5.xyz);
  r4 = vec4<f32>(v_221.xyz, r4.w);
  let v_222 = (r1.yyy * r4.xyz);
  r1 = vec4<f32>(r1.x, v_222.xyz);
  let v_223 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_223.xyz, r4.w);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_224 = dot(r5.xyz, r0.yzw);
  r0.x = clamp(vec4<f32>(v_224, v_224, v_224, v_224).x, 0.0f, 1.0f);
  let v_225 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.xxx, r4.xyz);
  r0 = vec4<f32>(v_225.xyz, r0.w);
  let v_226 = fma(r0.xyz, r1.xxx, r1.yzw);
  r0 = vec4<f32>(v_226.xyz, r0.w);
  let v_227 = (r0.xyz + r3.xyz);
  r0 = vec4<f32>(v_227.xyz, r0.w);
  o0.w = (v0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r2.xyz, r2.xyz);
    r1.x = sqrt(r0.w);
    let v_228 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_228.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r2.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_229 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_229 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_230 = (r0.www * r2.xyz);
    r3 = vec4<f32>(v_230.xyz, r3.w);
    let v_231 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_231, v_231, v_231, v_231).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_232 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_232, v_232, v_232, v_232).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_233 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r1.y + v_233.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.wwww, r1.zzzz).z, 0.0f, 1.0f);
    let v_234 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_234.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_235 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_235.xyz, r3.w);
    let v_236 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_236.xyz, r3.w);
    let v_237 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_237.xyz, r4.w);
    let v_238 = fma(r1.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_238.xyz, r3.w);
    let v_239 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_240 = (r3.xyz + v_239.xyz);
    r3 = vec4<f32>(v_240.xyz, r3.w);
    let v_241 = fma(r1.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_241.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_242 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_242.xyz, r4.w);
    let v_243 = fma(r1.xxx, r4.xyz, r3.xyz);
    r1 = vec4<f32>(v_243.xy, r1.z, v_243.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_244 = (v3.xy * cb2_2.tint_symbol_1[18u].zw);
      r3 = vec4<f32>(v_244.xy, r3.zw);
      r3 = textureSample(t11, s11, r3.xyxx.xy);
      r0.w = (r3.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_245 = -(r0.xyxz);
    let v_246 = fma(r1.xyw, r0.www, v_245.xyw);
    r1 = vec4<f32>(v_246.xy, r1.z, v_246.z);
    let v_247 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_247.xyz, r1.w);
  } else {
    r0.w = dot(r2.xyz, r2.xyz);
    r1.w = sqrt(r0.w);
    let v_248 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.w = (r1.w + v_248.w);
    r2.w = max(r2.w, 0.0f);
    r1.w = (r2.w / r1.w);
    r1.w = (r1.w * r2.z);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r3.y = (r3.x * -1.44269502162933349609f);
    r3.y = exp2(r3.y);
    r3.y = ((-(r3.yyyy)).y + 1.0f);
    r3.x = (r3.y / r3.x);
    let v_249 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r3.x, (v_249 != 0u));
    r3.x = (r2.w * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r3.x);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_250 = (r0.www * r2.xyz);
    r2 = vec4<f32>(v_250.xyz, r2.w);
    let v_251 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_251, v_251, v_251, v_251).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_252 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_252, v_252, v_252, v_252).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_253 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r2.w + v_253.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.yyyy, r3.xxxx).y, 0.0f, 1.0f);
    let v_254 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.z = (r2.w * v_254.z);
    r2.z = (r2.z * 1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    let v_255 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_255.xyz, r3.w);
    let v_256 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_256.xyz, r3.w);
    let v_257 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_257.xyz, r4.w);
    let v_258 = fma(r2.xxx, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_258.xyz, r3.w);
    let v_259 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_260 = (r3.xyz + v_259.xyz);
    r3 = vec4<f32>(v_260.xyz, r3.w);
    let v_261 = fma(r2.zzz, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_261.x, r2.y, v_261.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_262 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_262.xyz, r3.w);
    let v_263 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_263.x, r2.y, v_263.yz);
    let v_264 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_264.x, r2.y, v_264.yz);
    let v_265 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_265.xyz, r1.w);
  }
  let v_266 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_266.xyz, o0.w);
}

fn v_3(v_267 : bool) {
  if (v_267) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(position) v_268 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v_268);
  return o0;
}
