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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb4_struct {
  tint_symbol_4 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb7_struct_1 {
  tint_symbol_6 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb7_struct_1;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t5, s5, v0.xyxx.xy);
  r1 = textureSample(t6, s6, v0.xyxx.xy);
  let v_1 = ((-(cb9_9.tint_symbol_6[3u].xxxy)).zw + cb9_9.tint_symbol_6[3u].zw);
  r1 = vec4<f32>(r1.xy, v_1.xy);
  let v_2 = (vec2<f32>(8.0f, 1.0f) / r1.zw);
  r1 = vec4<f32>(r1.xy, v_2.xy);
  let v_3 = clamp(((v0.xyxx + -(cb9_9.tint_symbol_6[3u].xyxx))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_3.xy, r2.zw);
  let v_4 = (r1.zw * r2.xy);
  r2 = vec4<f32>(r2.xy, v_4.xy);
  let v_5 = trunc(r2.zw);
  r2 = vec4<f32>(r2.xy, v_5.xy);
  let v_6 = -(r2.zzzw);
  let v_7 = fma(r2.xy, r1.zw, v_6.zw);
  r1 = vec4<f32>(r1.xy, v_7.xy);
  let v_8 = r2.z;
  let v_9 = max(v_8, -2147483648.0f);
  r2.x = bitcast<f32>(select(select(i32(v_9), 2147483647i, (v_9 >= 2147483648.0f)), 0i, !((v_8 == v_8))));
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r2.xxxx) == vec4<i32>(0i, 1i, 2i, 3i))));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r2.xxxx) == vec4<i32>(4i, 5i, 6i, 7i))));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  r3.x = dot(cb9_9.tint_symbol_6[0u], r3);
  r2.x = dot(cb9_9.tint_symbol_6[1u], r2);
  r2.x = (r2.x + r3.x);
  r2.x = trunc(r2.x);
  r2.x = (r2.x / cb9_9.tint_symbol_6[2u].z);
  r2.y = trunc(r2.x);
  r3.x = ((-(r2.yyyy)).x + r2.x);
  r3.y = (r2.y / cb9_9.tint_symbol_6[2u].w);
  let v_10 = fma(r1.zw, cb9_9.tint_symbol_6[2u].xy, r3.xy);
  r1 = vec4<f32>(r1.xy, v_10.xy);
  let v_11 = dpdx(v0.xy);
  r2 = vec4<f32>(v_11.xy, r2.zw);
  let v_12 = dpdy(v0.xy);
  r2 = vec4<f32>(r2.xy, v_12.xy);
  r2 = (r2 * vec4<f32>(0.5f));
  let v_13 = r2.xy;
  let v_14 = r2.zw;
  r3 = textureSampleGrad(t7, s7, r1.zwzz.xy, v_13, v_14);
  let v_15 = r2.xy;
  let v_16 = r2.zw;
  r4 = textureSampleGrad(t8, s8, r1.zwzz.xy, v_15, v_16);
  let v_17 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (v0.xy < cb9_9.tint_symbol_6[3u].xy)));
  r5 = vec4<f32>(v_17.xy, r5.zw);
  let v_18 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb9_9.tint_symbol_6[3u].zw < v0.xy)));
  r5 = vec4<f32>(r5.xy, v_18.xy);
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r1.z = dot(r5, r5);
  r1.z = min(r1.z, 1.0f);
  let v_19 = -(r3.xxxx);
  r1.w = fma(r1.z, v_19.w, r3.x);
  let v_20 = -(r4.xyxx);
  let v_21 = fma(r1.zz, v_20.xy, r4.xy);
  r3 = vec4<f32>(v_21.xy, r3.zw);
  let v_22 = abs(r2.zwzz);
  let v_23 = max(v_22.xy, abs(r2.xyxx).xy);
  r2 = vec4<f32>(v_23.xy, r2.zw);
  r1.z = max(r2.y, r2.x);
  let v_24 = (r1.zz * cb9_9.tint_symbol_6[6u].xy);
  r2 = vec4<f32>(v_24.xy, r2.zw);
  let v_25 = max(r2.xy, cb9_9.tint_symbol_6[6u].zw);
  r2 = vec4<f32>(v_25.xy, r2.zw);
  r1.z = ((-(r2.xxxx)).z + cb9_9.tint_symbol_6[5u].y);
  r2.x = (r2.y + cb9_9.tint_symbol_6[5u].y);
  r2.x = ((-(r1.zzzz)).x + r2.x);
  r1.z = ((-(r1.zzzz)).z + r1.w);
  r1.w = (1.0f / r2.x);
  r1.z = clamp(((r1.wwww * r1.zzzz)).z, 0.0f, 1.0f);
  r1.w = fma(r1.z, -2.0f, 3.0f);
  r1.z = (r1.z * r1.z);
  r1.z = (r1.z * r1.w);
  let v_26 = -(r0.xyzx);
  let v_27 = fma(cb9_9.tint_symbol_6[4u].www, cb9_9.tint_symbol_6[4u].xyz, v_26.xyz);
  r2 = vec4<f32>(v_27.xyz, r2.w);
  let v_28 = fma(r1.zzz, r2.xyz, r0.xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = (r3.xy + vec2<f32>(-0.5f));
  r2 = vec4<f32>(v_29.xy, r2.zw);
  let v_30 = (r2.xy * cb9_9.tint_symbol_6[5u].xx);
  r2 = vec4<f32>(v_30.xy, r2.zw);
  let v_31 = fma(r2.xy, r1.zz, r1.xy);
  r1 = vec4<f32>(v_31.xy, r1.zw);
  let v_32 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_32.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb11_11.tint_symbol_4[3u].w, 0.00100000004749745131f);
  let v_33 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_33.xy, r1.zw);
  let v_34 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  let v_35 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_35.xy, r1.z, v_35.z);
  let v_36 = fma(r1.zzz, v1.xyz, r1.xyw);
  r1 = vec4<f32>(v_36.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_37 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  r0.w = (r0.w * v6.w);
  let v_38 = (v6.xx * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_38.xy, r1.zw);
  let v_39 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  let v_40 = -(v2.xyzx);
  let v_41 = (v_40.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_41.xyz, r3.w);
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_42 = (r2.www * r3.xyz);
  r4 = vec4<f32>(v_42.xyz, r4.w);
  let v_43 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_44 = fma(r3.xyz, r2.www, v_43.xyz);
  r5 = vec4<f32>(v_44.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_45 = (r3.www * r5.xyz);
  r5 = vec4<f32>(v_45.xyz, r5.w);
  let v_46 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_46.xy, r1.zw);
  r3.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_47 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_47.xyz, r6.w);
  let v_48 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_48.xyz, r7.w);
  let v_49 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r6 = vec4<f32>(v_49.xy, r6.z, v_49.z);
  let v_50 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r6.xyw);
  r6 = vec4<f32>(v_50.xyz, r6.w);
  let v_51 = fma(r6.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r7 = vec4<f32>(v_51.xyz, r7.w);
  let v_52 = &(x0[0u]);
  let v_53 = r7;
  *(v_52) = vec4<f32>(v_53.xyz, (*(v_52)).w);
  let v_54 = fma(r6.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r8 = vec4<f32>(v_54.xyz, r8.w);
  let v_55 = &(x0[1u]);
  let v_56 = r8;
  *(v_55) = vec4<f32>(v_56.xyz, (*(v_55)).w);
  let v_57 = fma(r6.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r9 = vec4<f32>(v_57.xyz, r9.w);
  let v_58 = &(x0[2u]);
  let v_59 = r9;
  *(v_58) = vec4<f32>(v_59.xyz, (*(v_58)).w);
  let v_60 = fma(r6.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r6 = vec4<f32>(v_60.xyz, r6.w);
  let v_61 = &(x0[3u]);
  let v_62 = r6;
  *(v_61) = vec4<f32>(v_62.xyz, (*(v_61)).w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_64 = r10;
  r10 = vec4<f32>(v_64.x, v_63.x, v_64.z, v_63.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_65 = abs(r9.yyyy);
  r5.w = max(v_65.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_66 = (bitcast<u32>(r5.w) != 0u);
  let v_67 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_67, v_66);
  let v_68 = abs(r8.yyyy);
  r6.z = max(v_68.z, abs(r8.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_69 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_69 != 0u));
  let v_70 = abs(r7.yyyy);
  r6.z = max(v_70.z, abs(r7.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_71 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_71 != 0u));
  let v_72 = x0[bitcast<i32>(r4.w)];
  r7 = vec4<f32>(v_72.xyz, r7.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r4.w = dot(r8, cb6_6.tint_symbol_5[12u]);
  r6.z = dot(r8, cb6_6.tint_symbol_5[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r7.z);
  let v_73 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_73.xy, r9.z, v_73.z);
  r9.z = dpdx(r4.w);
  let v_74 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_74.xyz, r11.w);
  r11.w = dpdy(r4.w);
  let v_75 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_75.xy, r7.zw);
  let v_76 = -(r7.xyxx);
  let v_77 = fma(r9.xz, r11.xz, v_76.xy);
  r12 = vec4<f32>(v_77.xy, r12.zw);
  r6.w = (1.0f / r12.x);
  r7.x = (r9.z * r11.y);
  let v_78 = -(r7.xxxx);
  r12.z = fma(r9.x, r11.w, v_78.z);
  let v_79 = (r6.ww * r12.yz);
  r7 = vec4<f32>(v_79.xy, r7.zw);
  let v_80 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_80.xy, r7.zw);
  let v_81 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_81.xy, r7.zw);
  r4.w = fma((-(r6.zzzz)).w, r7.x, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r7.y, r4.w);
  let v_82 = bitcast<u32>(r5.w);
  let v_83 = r4.w;
  r10.z = select(r7.z, v_83, (v_82 != 0u));
  r8.z = 0.0f;
  let v_84 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_84.xyz, r7.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_85.xy, r10.zw);
  let v_86 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_86.xyz, r9.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_87.xy, r10.zw);
  let v_88 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_88.xyz, r11.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_89.xy, r10.zw);
  let v_90 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_90.xyz, r12.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_91.xy, r10.zw);
  let v_92 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_92.xyz, r13.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_93.xy, r10.zw);
  let v_94 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_94.xyz, r14.w);
  let v_95 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_95.xy, r10.zw);
  let v_96 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_96.xyz, r15.w);
  let v_97 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_97.xy, r10.zw);
  let v_98 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_98.xyz, r16.w);
  let v_99 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_99.xy, r10.zw);
  let v_100 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_100.xyz, r17.w);
  let v_101 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_101.xy, r10.zw);
  let v_102 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_102.xyz, r18.w);
  let v_103 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_103.xy, r10.zw);
  let v_104 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_104.xyz, r19.w);
  let v_105 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_105.xy, r10.zw);
  let v_106 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_106.xyz, r20.w);
  let v_107 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_107.xy, r10.zw);
  let v_108 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_108.xyz, r21.w);
  let v_109 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_109.xy, r10.zw);
  let v_110 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_110.xyz, r22.w);
  let v_111 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_111.xy, r10.zw);
  let v_112 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_112.xyz, r23.w);
  let v_113 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_113.xy, r10.zw);
  let v_114 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_114.xyz, r8.w);
  let v_115 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_115.xy, r7.z);
  let v_116 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_116.xy, r9.z);
  let v_117 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_117.xy, r11.z);
  let v_118 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_118.xy, r12.z);
  let v_119 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_119.xy, r13.z);
  let v_120 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_120.xy, r14.z);
  let v_121 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_121.xy, r15.z);
  let v_122 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_122.xy, r16.z);
  let v_123 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_123.xy, r17.z);
  let v_124 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_124.xy, r18.z);
  let v_125 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_125.xy, r19.z);
  let v_126 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_126.xy, r20.z);
  let v_127 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_127.xy, r21.z);
  let v_128 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_128.xy, r22.z);
  let v_129 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_129.xy, r23.z);
  let v_130 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_130.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r4.w = dot(r7, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_131 = abs(r6.yyyy);
  r5.w = max(v_131.w, abs(r6.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_132 = -(r3.wwww);
  r3.w = fma(r4.w, v_132.w, r3.w);
  let v_133 = dot(r2.xyz, v_43.xyz);
  r4.w = clamp(vec4<f32>(v_133, v_133, v_133, v_133).w, 0.0f, 1.0f);
  let v_134 = dot(r4.xyz, r2.xyz);
  r6.x = clamp(vec4<f32>(v_134, v_134, v_134, v_134).x, 0.0f, 1.0f);
  let v_135 = dot(r5.xyz, v_43.xyz);
  r6.y = clamp(vec4<f32>(v_135, v_135, v_135, v_135).y, 0.0f, 1.0f);
  let v_136 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_136.xy, r6.zw);
  let v_137 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_137.xy);
  let v_138 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_138.xy);
  let v_139 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_139.xy, r6.zw);
  let v_140 = fma(r6.xy, vec2<f32>(0.98000001907348632812f), vec2<f32>(0.01999999955296516418f));
  r6 = vec4<f32>(v_140.xy, r6.zw);
  r5.w = fma((-(r6.xxxx)).w, 0.20000000298023223877f, 1.0f);
  r5.x = dot(r2.xyz, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * 1500.0f);
  r5.x = exp2(r5.x);
  r5.x = (r6.y * r5.x);
  r5.x = (r4.w * r5.x);
  r5.x = (r5.x * 37.549999237060546875f);
  r4.w = (r4.w * r5.w);
  let v_141 = fma(r0.xyz, r4.www, r5.xxx);
  r5 = vec4<f32>(v_141.xyz, r5.w);
  let v_142 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_142.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r7 = vec4<f32>(r7.x, vec3<f32>());
    r6 = vec4<f32>(vec3<f32>(), r6.w);
  } else {
    r6.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_143 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[3u].xyz);
    r6 = vec4<f32>(r6.x, v_143.xyz);
    let v_144 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r7 = vec4<f32>(v_144.xyz, r7.w);
    r7.x = dot(r7.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_2[19u].wwww)).x, 0.0f, 1.0f);
    r7.x = (r7.x * cb3_3.tint_symbol_2[19u].w);
    let v_145 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_145.xyz, r7.w);
    let v_146 = (r7.xyz + v_40.xyz);
    r7 = vec4<f32>(v_146.xyz, r7.w);
    let v_147 = bitcast<vec3<u32>>(r6.xxx);
    let v_148 = r6.yzw;
    let v_149 = select(r7.xyz, v_148, (v_147 != vec3<u32>()));
    r6 = vec4<f32>(v_149.xyz, r6.w);
    r6.w = dot(r6.xyz, r6.xyz);
    let v_150 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_150.xyz, r6.w);
    r7.x = dot(r6.xyz, r6.xyz);
    r7.x = inverseSqrt(r7.x);
    let v_151 = (r6.xyz * r7.xxx);
    r6 = vec4<f32>(v_151.xyz, r6.w);
    r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r7.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r7.x = fma(r7.x, r6.w, cb3_3.tint_symbol_2[11u].w);
    r6.w = (r6.w / r7.x);
    let v_152 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.x = dot(r6.xyz, v_152.xyz);
    r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_153 = dot(r6.xyz, r2.xyz);
    r7.y = clamp(vec4<f32>(v_153, v_153, v_153, v_153).y, 0.0f, 1.0f);
    r7.x = (r7.x * r7.y);
    r7.y = (r6.w * r7.x);
    let v_154 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(r7.x, v_154.xyz);
    let v_155 = (r0.xyz * r7.yzw);
    r7 = vec4<f32>(r7.x, v_155.xyz);
    let v_156 = fma(r3.xyz, r2.www, r6.xyz);
    r6 = vec4<f32>(v_156.xyz, r6.w);
    r8.x = dot(r6.xyz, r6.xyz);
    r8.x = inverseSqrt(r8.x);
    let v_157 = (r6.xyz * r8.xxx);
    r6 = vec4<f32>(v_157.xyz, r6.w);
    let v_158 = dot(r6.xyz, r4.xyz);
    r8.x = clamp(vec4<f32>(v_158, v_158, v_158, v_158).x, 0.0f, 1.0f);
    r8.x = ((-(r8.xxxx)).x + 1.0f);
    r8.y = (r8.x * r8.x);
    r8.y = (r8.y * r8.y);
    r8.x = (r8.y * r8.x);
    r8.x = fma(r8.x, 0.98000001907348632812f, 0.01999999955296516418f);
    let v_159 = dot(r6.xyz, r2.xyz);
    r6.x = clamp(vec4<f32>(v_159, v_159, v_159, v_159).x, 0.0f, 1.0f);
    r6.x = log2(r6.x);
    r6.x = (r6.x * 1500.0f);
    r6.x = exp2(r6.x);
    r6.x = (r6.x * r8.x);
    r6.x = (r7.x * r6.x);
    r6.x = (r6.w * r6.x);
    r6.x = (r6.x * 187.75f);
    let v_160 = (r6.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r6 = vec4<f32>(v_160.xyz, r6.w);
  }
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    let v_161 = bitcast<u32>(r7.x);
    let v_162 = r6.w;
    r4.w = select(r4.w, v_162, (v_161 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_163 = (v_40.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r8 = vec4<f32>(v_163.xyz, r8.w);
      let v_164 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r9 = vec4<f32>(v_164.xyz, r9.w);
      r7.x = dot(r9.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_2[20u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_2[20u].w);
      let v_165 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_165.xyz, r9.w);
      let v_166 = (r9.xyz + v_40.xyz);
      r9 = vec4<f32>(v_166.xyz, r9.w);
      let v_167 = bitcast<vec3<u32>>(r6.www);
      let v_168 = r8.xyz;
      let v_169 = select(r9.xyz, v_168, (v_167 != vec3<u32>()));
      r8 = vec4<f32>(v_169.xyz, r8.w);
      r6.w = dot(r8.xyz, r8.xyz);
      let v_170 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_170.xyz, r8.w);
      r7.x = dot(r8.xyz, r8.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_171 = (r7.xxx * r8.xyz);
      r8 = vec4<f32>(v_171.xyz, r8.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.w, cb3_3.tint_symbol_2[12u].w);
      r6.w = (r6.w / r7.x);
      let v_172 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.x = dot(r8.xyz, v_172.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_173 = dot(r8.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_173, v_173, v_173, v_173).w, 0.0f, 1.0f);
      r7.x = (r7.x * r8.w);
      r8.w = (r6.w * r7.x);
      let v_174 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r9 = vec4<f32>(v_174.xyz, r9.w);
      let v_175 = fma(r9.xyz, r0.xyz, r7.yzw);
      r7 = vec4<f32>(r7.x, v_175.xyz);
      let v_176 = fma(r3.xyz, r2.www, r8.xyz);
      r8 = vec4<f32>(v_176.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_177 = (r8.www * r8.xyz);
      r8 = vec4<f32>(v_177.xyz, r8.w);
      let v_178 = dot(r8.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_178, v_178, v_178, v_178).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.x = (r8.w * r8.w);
      r9.x = (r9.x * r9.x);
      r8.w = (r8.w * r9.x);
      r8.w = fma(r8.w, 0.98000001907348632812f, 0.01999999955296516418f);
      let v_179 = dot(r8.xyz, r2.xyz);
      r8.x = clamp(vec4<f32>(v_179, v_179, v_179, v_179).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r8.x * 1500.0f);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r8.w);
      r7.x = (r7.x * r8.x);
      r6.w = (r6.w * r7.x);
      r6.w = (r6.w * 187.75f);
      let v_180 = fma(r6.www, cb3_3.tint_symbol_2[20u].xyz, r6.xyz);
      r6 = vec4<f32>(v_180.xyz, r6.w);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_181 = (v_40.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r8 = vec4<f32>(v_181.xyz, r8.w);
      let v_182 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r9 = vec4<f32>(v_182.xyz, r9.w);
      r7.x = dot(r9.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_2[21u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_2[21u].w);
      let v_183 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_183.xyz, r9.w);
      let v_184 = (r9.xyz + v_40.xyz);
      r9 = vec4<f32>(v_184.xyz, r9.w);
      let v_185 = bitcast<vec3<u32>>(r6.www);
      let v_186 = r8.xyz;
      let v_187 = select(r9.xyz, v_186, (v_185 != vec3<u32>()));
      r8 = vec4<f32>(v_187.xyz, r8.w);
      r6.w = dot(r8.xyz, r8.xyz);
      let v_188 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_188.xyz, r8.w);
      r7.x = dot(r8.xyz, r8.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_189 = (r7.xxx * r8.xyz);
      r8 = vec4<f32>(v_189.xyz, r8.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.w, cb3_3.tint_symbol_2[13u].w);
      r6.w = (r6.w / r7.x);
      let v_190 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.x = dot(r8.xyz, v_190.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_191 = dot(r8.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_191, v_191, v_191, v_191).w, 0.0f, 1.0f);
      r7.x = (r7.x * r8.w);
      r8.w = (r6.w * r7.x);
      let v_192 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r9 = vec4<f32>(v_192.xyz, r9.w);
      let v_193 = fma(r9.xyz, r0.xyz, r7.yzw);
      r7 = vec4<f32>(r7.x, v_193.xyz);
      let v_194 = fma(r3.xyz, r2.www, r8.xyz);
      r8 = vec4<f32>(v_194.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_195 = (r8.www * r8.xyz);
      r8 = vec4<f32>(v_195.xyz, r8.w);
      let v_196 = dot(r8.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_196, v_196, v_196, v_196).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.x = (r8.w * r8.w);
      r9.x = (r9.x * r9.x);
      r8.w = (r8.w * r9.x);
      r8.w = fma(r8.w, 0.98000001907348632812f, 0.01999999955296516418f);
      let v_197 = dot(r8.xyz, r2.xyz);
      r8.x = clamp(vec4<f32>(v_197, v_197, v_197, v_197).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r8.x * 1500.0f);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r8.w);
      r7.x = (r7.x * r8.x);
      r6.w = (r6.w * r7.x);
      r6.w = (r6.w * 187.75f);
      let v_198 = fma(r6.www, cb3_3.tint_symbol_2[21u].xyz, r6.xyz);
      r6 = vec4<f32>(v_198.xyz, r6.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_199 = (v_40.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r8 = vec4<f32>(v_199.xyz, r8.w);
      let v_200 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r9 = vec4<f32>(v_200.xyz, r9.w);
      r7.x = dot(r9.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_2[22u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_2[22u].w);
      let v_201 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.xxx, cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_201.xyz, r9.w);
      let v_202 = (r9.xyz + v_40.xyz);
      r9 = vec4<f32>(v_202.xyz, r9.w);
      let v_203 = bitcast<vec3<u32>>(r6.www);
      let v_204 = r8.xyz;
      let v_205 = select(r9.xyz, v_204, (v_203 != vec3<u32>()));
      r8 = vec4<f32>(v_205.xyz, r8.w);
      r6.w = dot(r8.xyz, r8.xyz);
      let v_206 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_206.xyz, r8.w);
      r7.x = dot(r8.xyz, r8.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_207 = (r7.xxx * r8.xyz);
      r8 = vec4<f32>(v_207.xyz, r8.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_2[14u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.w, cb3_3.tint_symbol_2[14u].w);
      r6.w = (r6.w / r7.x);
      let v_208 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.x = dot(r8.xyz, v_208.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).x, 0.0f, 1.0f);
      let v_209 = dot(r8.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_209, v_209, v_209, v_209).w, 0.0f, 1.0f);
      r7.x = (r7.x * r8.w);
      r8.w = (r6.w * r7.x);
      let v_210 = (r8.www * cb3_3.tint_symbol_2[22u].xyz);
      r9 = vec4<f32>(v_210.xyz, r9.w);
      let v_211 = fma(r9.xyz, r0.xyz, r7.yzw);
      r7 = vec4<f32>(r7.x, v_211.xyz);
      let v_212 = fma(r3.xyz, r2.www, r8.xyz);
      r8 = vec4<f32>(v_212.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_213 = (r8.www * r8.xyz);
      r8 = vec4<f32>(v_213.xyz, r8.w);
      let v_214 = dot(r8.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_214, v_214, v_214, v_214).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.x = (r8.w * r8.w);
      r9.x = (r9.x * r9.x);
      r8.w = (r8.w * r9.x);
      r8.w = fma(r8.w, 0.98000001907348632812f, 0.01999999955296516418f);
      let v_215 = dot(r8.xyz, r2.xyz);
      r8.x = clamp(vec4<f32>(v_215, v_215, v_215, v_215).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r8.x * 1500.0f);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r8.w);
      r7.x = (r7.x * r8.x);
      r6.w = (r6.w * r7.x);
      r6.w = (r6.w * 187.75f);
      let v_216 = fma(r6.www, cb3_3.tint_symbol_2[22u].xyz, r6.xyz);
      r6 = vec4<f32>(v_216.xyz, r6.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_217 = (v_40.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r8 = vec4<f32>(v_217.xyz, r8.w);
      let v_218 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r9 = vec4<f32>(v_218.xyz, r9.w);
      r7.x = dot(r9.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_2[23u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_2[23u].w);
      let v_219 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.xxx, cb3_3.tint_symbol_2[7u].xyz);
      r9 = vec4<f32>(v_219.xyz, r9.w);
      let v_220 = (r9.xyz + v_40.xyz);
      r9 = vec4<f32>(v_220.xyz, r9.w);
      let v_221 = bitcast<vec3<u32>>(r6.www);
      let v_222 = r8.xyz;
      let v_223 = select(r9.xyz, v_222, (v_221 != vec3<u32>()));
      r8 = vec4<f32>(v_223.xyz, r8.w);
      r6.w = dot(r8.xyz, r8.xyz);
      let v_224 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_224.xyz, r8.w);
      r7.x = dot(r8.xyz, r8.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_225 = (r7.xxx * r8.xyz);
      r8 = vec4<f32>(v_225.xyz, r8.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_2[15u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.w, cb3_3.tint_symbol_2[15u].w);
      r6.w = (r6.w / r7.x);
      let v_226 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.x = dot(r8.xyz, v_226.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).x, 0.0f, 1.0f);
      let v_227 = dot(r8.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_227, v_227, v_227, v_227).w, 0.0f, 1.0f);
      r7.x = (r7.x * r8.w);
      r8.w = (r6.w * r7.x);
      let v_228 = (r8.www * cb3_3.tint_symbol_2[23u].xyz);
      r9 = vec4<f32>(v_228.xyz, r9.w);
      let v_229 = fma(r9.xyz, r0.xyz, r7.yzw);
      r7 = vec4<f32>(r7.x, v_229.xyz);
      let v_230 = fma(r3.xyz, r2.www, r8.xyz);
      r8 = vec4<f32>(v_230.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_231 = (r8.www * r8.xyz);
      r8 = vec4<f32>(v_231.xyz, r8.w);
      let v_232 = dot(r8.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_232, v_232, v_232, v_232).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.x = (r8.w * r8.w);
      r9.x = (r9.x * r9.x);
      r8.w = (r8.w * r9.x);
      r8.w = fma(r8.w, 0.98000001907348632812f, 0.01999999955296516418f);
      let v_233 = dot(r8.xyz, r2.xyz);
      r8.x = clamp(vec4<f32>(v_233, v_233, v_233, v_233).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r8.x * 1500.0f);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r8.w);
      r7.x = (r7.x * r8.x);
      r6.w = (r6.w * r7.x);
      r6.w = (r6.w * 187.75f);
      let v_234 = fma(r6.www, cb3_3.tint_symbol_2[23u].xyz, r6.xyz);
      r6 = vec4<f32>(v_234.xyz, r6.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_235 = (v_40.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r8 = vec4<f32>(v_235.xyz, r8.w);
      let v_236 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r9 = vec4<f32>(v_236.xyz, r9.w);
      r7.x = dot(r9.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_2[24u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_2[24u].w);
      let v_237 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.xxx, cb3_3.tint_symbol_2[8u].xyz);
      r9 = vec4<f32>(v_237.xyz, r9.w);
      let v_238 = (r9.xyz + v_40.xyz);
      r9 = vec4<f32>(v_238.xyz, r9.w);
      let v_239 = bitcast<vec3<u32>>(r6.www);
      let v_240 = r8.xyz;
      let v_241 = select(r9.xyz, v_240, (v_239 != vec3<u32>()));
      r8 = vec4<f32>(v_241.xyz, r8.w);
      r6.w = dot(r8.xyz, r8.xyz);
      let v_242 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_242.xyz, r8.w);
      r7.x = dot(r8.xyz, r8.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_243 = (r7.xxx * r8.xyz);
      r8 = vec4<f32>(v_243.xyz, r8.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_2[16u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.w, cb3_3.tint_symbol_2[16u].w);
      r6.w = (r6.w / r7.x);
      let v_244 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.x = dot(r8.xyz, v_244.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).x, 0.0f, 1.0f);
      let v_245 = dot(r8.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_245, v_245, v_245, v_245).w, 0.0f, 1.0f);
      r7.x = (r7.x * r8.w);
      r8.w = (r6.w * r7.x);
      let v_246 = (r8.www * cb3_3.tint_symbol_2[24u].xyz);
      r9 = vec4<f32>(v_246.xyz, r9.w);
      let v_247 = fma(r9.xyz, r0.xyz, r7.yzw);
      r7 = vec4<f32>(r7.x, v_247.xyz);
      let v_248 = fma(r3.xyz, r2.www, r8.xyz);
      r8 = vec4<f32>(v_248.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_249 = (r8.www * r8.xyz);
      r8 = vec4<f32>(v_249.xyz, r8.w);
      let v_250 = dot(r8.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_250, v_250, v_250, v_250).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.x = (r8.w * r8.w);
      r9.x = (r9.x * r9.x);
      r8.w = (r8.w * r9.x);
      r8.w = fma(r8.w, 0.98000001907348632812f, 0.01999999955296516418f);
      let v_251 = dot(r8.xyz, r2.xyz);
      r8.x = clamp(vec4<f32>(v_251, v_251, v_251, v_251).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r8.x * 1500.0f);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r8.w);
      r7.x = (r7.x * r8.x);
      r6.w = (r6.w * r7.x);
      r6.w = (r6.w * 187.75f);
      let v_252 = fma(r6.www, cb3_3.tint_symbol_2[24u].xyz, r6.xyz);
      r6 = vec4<f32>(v_252.xyz, r6.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_253 = (v_40.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r8 = vec4<f32>(v_253.xyz, r8.w);
      let v_254 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r9 = vec4<f32>(v_254.xyz, r9.w);
      r7.x = dot(r9.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_2[25u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_2[25u].w);
      let v_255 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.xxx, cb3_3.tint_symbol_2[9u].xyz);
      r9 = vec4<f32>(v_255.xyz, r9.w);
      let v_256 = (r9.xyz + v_40.xyz);
      r9 = vec4<f32>(v_256.xyz, r9.w);
      let v_257 = bitcast<vec3<u32>>(r6.www);
      let v_258 = r8.xyz;
      let v_259 = select(r9.xyz, v_258, (v_257 != vec3<u32>()));
      r8 = vec4<f32>(v_259.xyz, r8.w);
      r6.w = dot(r8.xyz, r8.xyz);
      let v_260 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_260.xyz, r8.w);
      r7.x = dot(r8.xyz, r8.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_261 = (r7.xxx * r8.xyz);
      r8 = vec4<f32>(v_261.xyz, r8.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_2[17u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.w, cb3_3.tint_symbol_2[17u].w);
      r6.w = (r6.w / r7.x);
      let v_262 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.x = dot(r8.xyz, v_262.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).x, 0.0f, 1.0f);
      let v_263 = dot(r8.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_263, v_263, v_263, v_263).w, 0.0f, 1.0f);
      r7.x = (r7.x * r8.w);
      r8.w = (r6.w * r7.x);
      let v_264 = (r8.www * cb3_3.tint_symbol_2[25u].xyz);
      r9 = vec4<f32>(v_264.xyz, r9.w);
      let v_265 = fma(r9.xyz, r0.xyz, r7.yzw);
      r7 = vec4<f32>(r7.x, v_265.xyz);
      let v_266 = fma(r3.xyz, r2.www, r8.xyz);
      r8 = vec4<f32>(v_266.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_267 = (r8.www * r8.xyz);
      r8 = vec4<f32>(v_267.xyz, r8.w);
      let v_268 = dot(r8.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_268, v_268, v_268, v_268).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.x = (r8.w * r8.w);
      r9.x = (r9.x * r9.x);
      r8.w = (r8.w * r9.x);
      r8.w = fma(r8.w, 0.98000001907348632812f, 0.01999999955296516418f);
      let v_269 = dot(r8.xyz, r2.xyz);
      r8.x = clamp(vec4<f32>(v_269, v_269, v_269, v_269).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r8.x * 1500.0f);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r8.w);
      r7.x = (r7.x * r8.x);
      r6.w = (r6.w * r7.x);
      r6.w = (r6.w * 187.75f);
      let v_270 = fma(r6.www, cb3_3.tint_symbol_2[25u].xyz, r6.xyz);
      r6 = vec4<f32>(v_270.xyz, r6.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_271 = (v_40.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r8 = vec4<f32>(v_271.xyz, r8.w);
      let v_272 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r9 = vec4<f32>(v_272.xyz, r9.w);
      r6.w = dot(r9.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[26u].w);
      let v_273 = fma(cb3_3.tint_symbol_2[18u].xyz, r6.www, cb3_3.tint_symbol_2[10u].xyz);
      r9 = vec4<f32>(v_273.xyz, r9.w);
      let v_274 = (r9.xyz + v_40.xyz);
      r9 = vec4<f32>(v_274.xyz, r9.w);
      let v_275 = bitcast<vec3<u32>>(r4.www);
      let v_276 = r8.xyz;
      let v_277 = select(r9.xyz, v_276, (v_275 != vec3<u32>()));
      r8 = vec4<f32>(v_277.xyz, r8.w);
      r4.w = dot(r8.xyz, r8.xyz);
      let v_278 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_278.xyz, r8.w);
      r6.w = dot(r8.xyz, r8.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_279 = (r6.www * r8.xyz);
      r8 = vec4<f32>(v_279.xyz, r8.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[18u].w);
      r4.w = (r4.w / r6.w);
      let v_280 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r6.w = dot(r8.xyz, v_280.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_281 = dot(r8.xyz, r2.xyz);
      r7.x = clamp(vec4<f32>(v_281, v_281, v_281, v_281).x, 0.0f, 1.0f);
      r6.w = (r6.w * r7.x);
      r7.x = (r4.w * r6.w);
      let v_282 = (r7.xxx * cb3_3.tint_symbol_2[26u].xyz);
      r9 = vec4<f32>(v_282.xyz, r9.w);
      let v_283 = fma(r9.xyz, r0.xyz, r7.yzw);
      r7 = vec4<f32>(r7.x, v_283.xyz);
      let v_284 = fma(r3.xyz, r2.www, r8.xyz);
      r3 = vec4<f32>(v_284.xyz, r3.w);
      r2.w = dot(r3.xyz, r3.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_285 = (r2.www * r3.xyz);
      r3 = vec4<f32>(v_285.xyz, r3.w);
      let v_286 = dot(r3.xyz, r4.xyz);
      r2.w = clamp(vec4<f32>(v_286, v_286, v_286, v_286).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r7.x = (r2.w * r2.w);
      r7.x = (r7.x * r7.x);
      r2.w = (r2.w * r7.x);
      r2.w = fma(r2.w, 0.98000001907348632812f, 0.01999999955296516418f);
      let v_287 = dot(r3.xyz, r2.xyz);
      r3.x = clamp(vec4<f32>(v_287, v_287, v_287, v_287).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * 1500.0f);
      r3.x = exp2(r3.x);
      r2.w = (r2.w * r3.x);
      r2.w = (r6.w * r2.w);
      r2.w = (r4.w * r2.w);
      r2.w = (r2.w * 187.75f);
      let v_288 = fma(r2.www, cb3_3.tint_symbol_2[26u].xyz, r6.xyz);
      r6 = vec4<f32>(v_288.xyz, r6.w);
    }
  }
  r2.w = (r5.w * r5.w);
  let v_289 = (r6.xyz * vec3<f32>(0.03999999910593032837f));
  r3 = vec4<f32>(v_289.xyz, r3.w);
  let v_290 = fma(r2.www, r7.yzw, r3.xyz);
  r3 = vec4<f32>(v_290.xyz, r3.w);
  let v_291 = fma(r5.xyz, r3.www, r3.xyz);
  r3 = vec4<f32>(v_291.xyz, r3.w);
  r1.z = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.z = (r1.z * cb3_3.tint_symbol_2[44u].w);
  r1.z = max(r1.z, 0.0f);
  let v_292 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_292.xyz, r5.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_293 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_293.xyz, r6.w);
  let v_294 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_294.xyz, r6.w);
  let v_295 = fma(r5.xyz, r1.www, r6.xyz);
  r5 = vec4<f32>(v_295.xyz, r5.w);
  let v_296 = (r1.yyy * r5.xyz);
  r5 = vec4<f32>(v_296.xyz, r5.w);
  let v_297 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_297.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_298 = dot(r7.xyz, r2.xyz);
  r1.z = clamp(vec4<f32>(v_298, v_298, v_298, v_298).z, 0.0f, 1.0f);
  let v_299 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.zzz, r6.xyz);
  r6 = vec4<f32>(v_299.xyz, r6.w);
  let v_300 = fma(r6.xyz, r1.xxx, r5.xyz);
  r5 = vec4<f32>(v_300.xyz, r5.w);
  let v_301 = (r5.www * r5.xyz);
  r5 = vec4<f32>(v_301.xyz, r5.w);
  let v_302 = fma(r5.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_302.xyz, r0.w);
  r1.z = ((-(r5.wwww)).z + 1.0f);
  r1.w = dot((-(r4.xyzx)).xyz, r2.xyz);
  r1.w = (r1.w + r1.w);
  let v_303 = -(r1.wwww);
  let v_304 = -(r4.xyzx);
  let v_305 = fma(r2.xyz, v_303.xyz, v_304.xyz);
  r2 = vec4<f32>(v_305.xyz, r2.w);
  r1.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_306 = bitcast<u32>(r2.w);
  r1.w = select(r1.w, -5.0f, (v_306 != 0u));
  let v_307 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_307.xy, r2.z, v_307.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_308 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_308.xy, r2.z, v_308.z);
  let v_309 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_309.xy, r2.z, v_309.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_310 = bitcast<vec2<u32>>(r2.zz);
  let v_311 = r2.xy;
  let v_312 = select(r2.wy, v_311, (v_310 != vec2<u32>()));
  r2 = vec4<f32>(v_312.xy, r2.zw);
  let v_313 = r1.w;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_313);
  r1.x = max(r1.y, r1.x);
  let v_314 = (r1.xxx * r2.xyz);
  r1 = vec4<f32>(v_314.xy, r1.z, v_314.z);
  let v_315 = fma(r1.xyw, r1.zzz, r0.xyz);
  r0 = vec4<f32>(v_315.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  let v_316 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_316.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6);
  return o0;
}
