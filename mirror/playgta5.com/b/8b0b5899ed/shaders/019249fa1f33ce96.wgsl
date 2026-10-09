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

var<private> v5 : vec4<f32>;

var<private> v6 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

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
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_4 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  r0.w = (r0.w * v0.w);
  let v_5 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  let v_6 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = ((-(v4.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  r2.z = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_8 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
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
  r2.w = clamp(fma(v4.zzzz, cb6_6.tint_symbol_4[3u].xxxx, cb6_6.tint_symbol_4[3u].yyyy).w, 0.0f, 1.0f);
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
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_99 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_99.xyz, r5.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_100 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_100.xyz, r6.w);
  let v_101 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_101.xyz, r6.w);
  let v_102 = fma(r5.xyz, r2.www, r6.xyz);
  r5 = vec4<f32>(v_102.xyz, r5.w);
  let v_103 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_103.xyz, r5.w);
  let v_104 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_104.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_105 = dot(r7.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_105, v_105, v_105, v_105).x, 0.0f, 1.0f);
  let v_106 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r1 = vec4<f32>(v_106.xyz, r1.w);
  let v_107 = fma(r1.xyz, r2.xxx, r5.xyz);
  r1 = vec4<f32>(v_107.xyz, r1.w);
  let v_108 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_108.xyz, r0.w);
  let v_109 = fma(r4.xyz, r2.zzz, r0.xyz);
  r0 = vec4<f32>(v_109.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.x = sqrt(r0.w);
    let v_110 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_110.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r3.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_111 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_111 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_112 = (r0.www * r3.xyz);
    r2 = vec4<f32>(v_112.xyz, r2.w);
    let v_113 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_113, v_113, v_113, v_113).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_114 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_114, v_114, v_114, v_114).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_115 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_115.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_116 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_116.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_117 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_117.xyz, r2.w);
    let v_118 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_118.xyz, r2.w);
    let v_119 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_119.xyz, r4.w);
    let v_120 = fma(r1.www, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_120.xyz, r2.w);
    let v_121 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_122 = (r2.xyz + v_121.xyz);
    r2 = vec4<f32>(v_122.xyz, r2.w);
    let v_123 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_123.xyz, r2.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_124 = ((-(r2.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_124.xyz, r4.w);
    let v_125 = fma(r1.xxx, r4.xyz, r2.xyz);
    r1 = vec4<f32>(v_125.xy, r1.z, v_125.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_126 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_126.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_127 = -(r0.xyxz);
    let v_128 = fma(r1.xyw, r0.www, v_127.xyw);
    r1 = vec4<f32>(v_128.xy, r1.z, v_128.z);
    let v_129 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_129.xyz, r1.w);
  } else {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.w = sqrt(r0.w);
    let v_130 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_130.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r3.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_131 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_131 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_132 = (r0.www * r3.xyz);
    r3 = vec4<f32>(v_132.xyz, r3.w);
    let v_133 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_133, v_133, v_133, v_133).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_134 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_134, v_134, v_134, v_134).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_135 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_135.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_136 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_136.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_137 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_137.xyz, r3.w);
    let v_138 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_138.xyz, r3.w);
    let v_139 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_139.xyz, r4.w);
    let v_140 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_140.xyz, r3.w);
    let v_141 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_142 = (r3.xyz + v_141.xyz);
    r3 = vec4<f32>(v_142.xyz, r3.w);
    let v_143 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_143.x, r2.y, v_143.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_144 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_144.xyz, r3.w);
    let v_145 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_145.x, r2.y, v_145.yz);
    let v_146 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_146.x, r2.y, v_146.yz);
    let v_147 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_147.xyz, r1.w);
  }
  let v_148 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_148.xyz, o0.w);
}

fn v_3(v_149 : bool) {
  if (v_149) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_150 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v_150);
  return o0;
}
