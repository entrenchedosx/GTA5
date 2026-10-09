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

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb9_struct {
  tint_symbol_4 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb9_struct;

struct cb16_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 16u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb16_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v5 : vec4<f32>;

var<private> v6 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
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
  let v_3 = (v0.xy * cb11_11.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = (v0.zw * cb11_11.tint_symbol_4[5u].ww);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  r1 = textureSample(t5, s5, v0.zwzz.xy);
  r2 = textureSample(t0, s0, r0.xyxx.xy);
  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_5 = (r0.xxx * v1.xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  r4 = textureSample(t7, s7, r0.zwzz.xy);
  let v_6 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_6.xy, r4.zw);
  r0.y = dot(r4.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r0.z = (r0.y * cb11_11.tint_symbol_4[4u].y);
  let v_7 = (r2.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r0.w = (r1.w * cb11_11.tint_symbol_4[1u].w);
  let v_8 = -(r2.xyzx);
  let v_9 = fma(r1.xyz, cb11_11.tint_symbol_4[1u].xyz, v_8.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = fma(r0.www, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r1.xyz * v4.xxx);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = (v4.xx * cb2_2.tint_symbol_1[15u].zy);
  r4 = vec4<f32>(v_12.xy, r4.zw);
  r0.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  r0.w = (r0.w * r4.y);
  let v_13 = (v0.xy * cb11_11.tint_symbol_4[8u].zz);
  let v_14 = r4;
  r4 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r5 = textureSample(t3, s3, r4.yzyy.xy);
  r6 = textureSample(t4, s4, r4.yzyy.xy);
  r1.w = clamp(((v3.wwww + v3.wwww)).w, 0.0f, 1.0f);
  r2.w = (v3.w + -0.5f);
  r2.w = clamp(((r2.wwww + r2.wwww)).w, 0.0f, 1.0f);
  r1.w = (r5.w * r1.w);
  let v_15 = fma((-(r1.xyzx)).xyz, v4.xxx, r5.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = fma(r1.www, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = ((-(r1.xyzx)).xyz + r6.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = fma(r2.www, r2.xyz, r1.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r0.z = (r0.z * v4.x);
  r0.z = (r0.z * v1.w);
  let v_19 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r2 = vec4<f32>(v_19.xy, r2.zw);
  r1.w = (r2.x * v4.z);
  let v_20 = (r2.yy * v0.xy);
  let v_21 = r2;
  r2 = vec4<f32>(v_21.x, v_20.xy, v_21.w);
  r5 = textureSample(t6, s6, r2.yzyy.xy);
  r2.y = (cb5_5.tint_symbol_3[3u].z * cb11_11.tint_symbol_4[2u].z);
  r2.z = ((-(r5.xxxx)).z + r5.z);
  r5.x = fma(r2.y, r2.z, r5.x);
  let v_22 = (r5.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_23 = r2;
  r2 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  r2.w = fma(v4.z, r2.x, -1.0f);
  r2.x = fma(r2.x, r2.w, 1.0f);
  r2.y = (r2.x * r2.y);
  let v_24 = -(r1.xyxz);
  let v_25 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_24.xyw);
  r5 = vec4<f32>(v_25.xy, r5.z, v_25.z);
  let v_26 = fma(r2.yyy, r5.xyw, r1.xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  r1.w = (r1.w * cb11_11.tint_symbol_4[2u].x);
  let v_27 = ((-(r1.xyzx)).xyz + r5.zzz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  let v_28 = fma(r1.www, r5.xyz, r1.xyz);
  r1 = vec4<f32>(v_28.xyz, r1.w);
  r1.w = fma((-(r2.zzzz)).w, r2.x, 1.0f);
  r0.z = clamp(((r0.zzzz * r1.wwww)).z, 0.0f, 1.0f);
  r1.w = (v4.x * cb11_11.tint_symbol_4[2u].w);
  r0.y = (r0.y * r1.w);
  r0.y = (r0.y * 0.75f);
  r1.w = dot(v3.xyz, v3.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_29 = -(cb3_3.tint_symbol_2[0u].xyzx);
  r2 = vec4<f32>(((v_29.xyz + vec3<f32>(0.0f, 0.0f, -1.0f))).xyz, r2.w);
  let v_30 = fma(cb11_11.tint_symbol_4[6u].www, r2.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_30.xyz, r2.w);
  let v_31 = (r0.yyy * cb11_11.tint_symbol_4[6u].xyz);
  r5 = vec4<f32>(v_31.xyz, r5.w);
  let v_32 = -(r2.xyzx);
  let v_33 = fma(v3.xyz, r1.www, v_32.xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_34 = (r0.yyy * r2.xyz);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  r0.y = dot(r3.xyz, r2.xyz);
  r0.y = clamp(((r0.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r1.w = fma(r4.w, 15.0f, 0.00000000999999993923f);
  r0.y = log2(r0.y);
  r0.y = (r0.y * r1.w);
  r0.y = exp2(r0.y);
  let v_35 = fma(r5.xyz, r0.yyy, r1.xyz);
  r1 = vec4<f32>(v_35.xyz, r1.w);
  let v_36 = min(r1.xyz, vec3<f32>(240.0f));
  r1 = vec4<f32>(v_36.xyz, r1.w);
  let v_37 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_37.xyz, r1.w);
  let v_38 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_38.xyz, r2.w);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_39 = (r0.yyy * r2.xyz);
  r5 = vec4<f32>(v_39.xyz, r5.w);
  let v_40 = fma(r2.xyz, r0.yyy, v_29.xyz);
  r6 = vec4<f32>(v_40.xyz, r6.w);
  r0.y = dot(r6.xyz, r6.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_41 = (r0.yyy * r6.xyz);
  r6 = vec4<f32>(v_41.xyz, r6.w);
  r0.y = (r4.x * r4.x);
  r0.w = (r0.w * r0.w);
  r1.w = fma(r4.w, cb11_11.tint_symbol_4[4u].x, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_42 = -(r1.wwww);
  r2.w = fma(r4.w, cb11_11.tint_symbol_4[4u].x, v_42.w);
  r1.w = (r1.w * 558.0f);
  r1.w = fma(r2.w, 3.0f, r1.w);
  r2.x = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_43 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r2 = vec4<f32>(r2.x, v_43.xyz);
  let v_44 = (r2.zzz * cb6_6.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_44.xyz, r4.w);
  let v_45 = fma(r2.yyy, cb6_6.tint_symbol_5[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_45.xyz, r4.w);
  let v_46 = fma(r2.www, cb6_6.tint_symbol_5[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_46.xyz, r4.w);
  let v_47 = fma(r4.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r7 = vec4<f32>(v_47.xyz, r7.w);
  let v_48 = &(x0[0u]);
  let v_49 = r7;
  *(v_48) = vec4<f32>(v_49.xyz, (*(v_48)).w);
  let v_50 = fma(r4.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r8 = vec4<f32>(v_50.xyz, r8.w);
  let v_51 = &(x0[1u]);
  let v_52 = r8;
  *(v_51) = vec4<f32>(v_52.xyz, (*(v_51)).w);
  let v_53 = fma(r4.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r9 = vec4<f32>(v_53.xyz, r9.w);
  let v_54 = &(x0[2u]);
  let v_55 = r9;
  *(v_54) = vec4<f32>(v_55.xyz, (*(v_54)).w);
  let v_56 = fma(r4.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r4 = vec4<f32>(v_56.xyz, r4.w);
  let v_57 = &(x0[3u]);
  let v_58 = r4;
  *(v_57) = vec4<f32>(v_58.xyz, (*(v_57)).w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_60 = r10;
  r10 = vec4<f32>(v_60.x, v_59.x, v_60.z, v_59.y);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_61 = abs(r9.yyyy);
  r4.z = max(v_61.z, abs(r9.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r3.w)));
  let v_62 = (bitcast<u32>(r4.z) != 0u);
  let v_63 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_63, v_62);
  let v_64 = abs(r8.yyyy);
  r4.w = max(v_64.w, abs(r8.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_65 = bitcast<u32>(r4.w);
  r4.z = select(r4.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_65 != 0u));
  let v_66 = abs(r7.yyyy);
  r4.w = max(v_66.w, abs(r7.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_67 = bitcast<u32>(r3.w);
  r3.w = select(r4.z, 0.0f, (v_67 != 0u));
  let v_68 = x0[bitcast<i32>(r3.w)];
  r7 = vec4<f32>(v_68.xyz, r7.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.z = (r3.w + 0.5f);
  r4.z = (r4.z * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r3.w = dot(r8, cb6_6.tint_symbol_5[12u]);
  r4.w = dot(r8, cb6_6.tint_symbol_5[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r4.z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r7.z);
  let v_69 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_69.xy, r9.z, v_69.z);
  r9.z = dpdx(r3.w);
  let v_70 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_70.xyz, r11.w);
  r11.w = dpdy(r3.w);
  let v_71 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_71.xy, r7.zw);
  let v_72 = -(r7.xyxx);
  let v_73 = fma(r9.xz, r11.xz, v_72.xy);
  r12 = vec4<f32>(v_73.xy, r12.zw);
  r5.w = (1.0f / r12.x);
  r6.w = (r9.z * r11.y);
  let v_74 = -(r6.wwww);
  r12.z = fma(r9.x, r11.w, v_74.z);
  let v_75 = (r5.ww * r12.yz);
  r7 = vec4<f32>(v_75.xy, r7.zw);
  let v_76 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_76.xy, r7.zw);
  let v_77 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_77.xy, r7.zw);
  r3.w = fma((-(r4.wwww)).w, r7.x, r3.w);
  r3.w = fma((-(r4.wwww)).w, r7.y, r3.w);
  let v_78 = bitcast<u32>(r4.z);
  let v_79 = r3.w;
  r10.z = select(r7.z, v_79, (v_78 != 0u));
  r8.z = 0.0f;
  let v_80 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_80.xyz, r7.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_81.xy, r10.zw);
  let v_82 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_82.xyz, r9.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_83.xy, r10.zw);
  let v_84 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_84.xyz, r11.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_85.xy, r10.zw);
  let v_86 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_86.xyz, r12.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_87.xy, r10.zw);
  let v_88 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_88.xyz, r13.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_89.xy, r10.zw);
  let v_90 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_90.xyz, r14.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_91.xy, r10.zw);
  let v_92 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_92.xyz, r15.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_93.xy, r10.zw);
  let v_94 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_94.xyz, r16.w);
  let v_95 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_95.xy, r10.zw);
  let v_96 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_96.xyz, r17.w);
  let v_97 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_97.xy, r10.zw);
  let v_98 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_98.xyz, r18.w);
  let v_99 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_99.xy, r10.zw);
  let v_100 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_100.xyz, r19.w);
  let v_101 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_101.xy, r10.zw);
  let v_102 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_102.xyz, r20.w);
  let v_103 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_103.xy, r10.zw);
  let v_104 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_104.xyz, r21.w);
  let v_105 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_105.xy, r10.zw);
  let v_106 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_106.xyz, r22.w);
  let v_107 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_107.xy, r10.zw);
  let v_108 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_108.xyz, r23.w);
  let v_109 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_109.xy, r10.zw);
  let v_110 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_110.xyz, r8.w);
  let v_111 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_111.xy, r7.z);
  let v_112 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_112.xy, r9.z);
  let v_113 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_113.xy, r11.z);
  let v_114 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_114.xy, r12.z);
  let v_115 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_115.xy, r13.z);
  let v_116 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_116.xy, r14.z);
  let v_117 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_117.xy, r15.z);
  let v_118 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_118.xy, r16.z);
  let v_119 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_119.xy, r17.z);
  let v_120 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_120.xy, r18.z);
  let v_121 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_121.xy, r19.z);
  let v_122 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_122.xy, r20.z);
  let v_123 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_123.xy, r21.z);
  let v_124 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_124.xy, r22.z);
  let v_125 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_125.xy, r23.z);
  let v_126 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_126.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r3.w = dot(r7, vec4<f32>(1.0f));
  r2.x = clamp(fma(r2.xxxx, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).x, 0.0f, 1.0f);
  let v_127 = abs(r4.yyyy);
  r4.x = max(v_127.x, abs(r4.xxxx).x);
  r4.x = clamp(fma(r4.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = (r4.x * r2.x);
  r2.x = fma(r3.w, 0.0625f, r2.x);
  r2.x = (r2.x * r2.x);
  r2.x = min(r2.x, 1.0f);
  r3.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_5[3u].z);
  let v_128 = -(r2.xxxx);
  r2.x = fma(r3.w, v_128.x, r2.x);
  r4.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_129 = r4;
  r4 = vec4<f32>(v_129.x, 0.0f, v_129.z, 0.5f);
  let v_130 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r4.xy);
  r4 = vec4<f32>(v_130.xy, r4.zw);
  r7 = textureSample(t12, s12, r4.xyxx.xy);
  r4.z = r7.y;
  r4 = textureSample(t13, s13, r4.zwzz.xy);
  r2.x = (r2.x * r4.x);
  let v_131 = dot(r3.xyz, v_29.xyz);
  r3.w = clamp(vec4<f32>(v_131, v_131, v_131, v_131).w, 0.0f, 1.0f);
  let v_132 = dot(r5.xyz, r3.xyz);
  r4.x = clamp(vec4<f32>(v_132, v_132, v_132, v_132).x, 0.0f, 1.0f);
  let v_133 = dot(r6.xyz, v_29.xyz);
  r4.y = clamp(vec4<f32>(v_133, v_133, v_133, v_133).y, 0.0f, 1.0f);
  let v_134 = ((-(r4.xyxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_134.xy, r4.zw);
  let v_135 = (r4.xy * r4.xy);
  r4 = vec4<f32>(r4.xy, v_135.xy);
  let v_136 = (r4.zw * r4.zw);
  r4 = vec4<f32>(r4.xy, v_136.xy);
  let v_137 = (r4.xy * r4.zw);
  r4 = vec4<f32>(v_137.xy, r4.zw);
  r4.z = ((-(cb11_11.tint_symbol_4[3u].wwww)).z + 1.0f);
  let v_138 = fma(cb11_11.tint_symbol_4[3u].ww, r4.xy, r4.zz);
  r4 = vec4<f32>(v_138.xy, r4.zw);
  let v_139 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(r4.xy, v_139.xy);
  r4.z = (r4.z * 0.125f);
  r4.x = fma((-(r0.zzzz)).x, r4.x, 1.0f);
  r5.w = dot(r3.xyz, r6.xyz);
  r5.w = clamp(((r5.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r5.w = log2(r5.w);
  r4.w = (r4.w * r5.w);
  r4.w = exp2(r4.w);
  r4.y = (r4.y * r4.w);
  r4.y = (r4.z * r4.y);
  r0.z = (r0.z * r4.y);
  r0.z = (r3.w * r0.z);
  r3.w = (r3.w * r4.x);
  let v_140 = fma(r1.xyz, r3.www, r0.zzz);
  r4 = vec4<f32>(r4.x, v_140.xyz);
  let v_141 = (r4.yzw * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(r4.x, v_141.xyz);
  r0.x = fma(v1.z, r0.x, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_142 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_142.xyz, r6.w);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_143 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_143.xyz, r7.w);
  let v_144 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_144.xyz, r7.w);
  let v_145 = fma(r6.xyz, r0.zzz, r7.xyz);
  r6 = vec4<f32>(v_145.xyz, r6.w);
  let v_146 = (r0.www * r6.xyz);
  r6 = vec4<f32>(v_146.xyz, r6.w);
  let v_147 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(v_147.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_148 = dot(r8.xyz, r3.xyz);
  r0.x = clamp(vec4<f32>(v_148, v_148, v_148, v_148).x, 0.0f, 1.0f);
  let v_149 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.xxx, r7.xyz);
  r7 = vec4<f32>(v_149.xyz, r7.w);
  let v_150 = fma(r7.xyz, r0.yyy, r6.xyz);
  r6 = vec4<f32>(v_150.xyz, r6.w);
  let v_151 = (r4.xxx * r6.xyz);
  r6 = vec4<f32>(v_151.xyz, r6.w);
  let v_152 = (r1.xyz * r6.xyz);
  r1 = vec4<f32>(v_152.xyz, r1.w);
  let v_153 = fma(r4.yzw, r2.xxx, r1.xyz);
  r1 = vec4<f32>(v_153.xyz, r1.w);
  r0.x = ((-(r4.xxxx)).x + 1.0f);
  r0.z = dot((-(r5.xyzx)).xyz, r3.xyz);
  r0.z = (r0.z + r0.z);
  let v_154 = -(r0.zzzz);
  let v_155 = -(r5.xyzx);
  let v_156 = fma(r3.xyz, v_154.xyz, v_155.xyz);
  r3 = vec4<f32>(v_156.xyz, r3.w);
  let v_157 = clamp(((r1.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r4 = vec4<f32>(v_157.xy, r4.zw);
  r0.z = ((-(r4.xxxx)).z + 1.0f);
  r1.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.x = (r0.z * cb5_5.tint_symbol_3[6u].z);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.w)));
  r3.w = fma(r0.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.z = (r0.z * r0.z);
  r0.z = fma(r0.z, 5.0f, r1.w);
  let v_158 = bitcast<u32>(r2.x);
  let v_159 = r3.w;
  r0.z = select(r0.z, v_159, (v_158 != 0u));
  let v_160 = (r3.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_160.xy, r3.z, v_160.z);
  r1.w = (abs(r3.zzzz).w + 1.0f);
  let v_161 = (r3.xyw / r1.www);
  r3 = vec4<f32>(v_161.xy, r3.z, v_161.z);
  let v_162 = ((-(r3.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_162.xy, r3.z, v_162.z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.z)));
  let v_163 = bitcast<vec2<u32>>(r1.ww);
  let v_164 = r3.xy;
  let v_165 = select(r3.wy, v_164, (v_163 != vec2<u32>()));
  r3 = vec4<f32>(v_165.xy, r3.zw);
  let v_166 = r0.z;
  r3 = textureSampleLevel(t1, s1, r3.xyxx.xy, v_166);
  r0.y = max(r0.w, r0.y);
  let v_167 = (r0.yyy * r3.xyz);
  r0 = vec4<f32>(r0.x, v_167.xyz);
  let v_168 = (r4.yyy * r0.yzw);
  r3 = vec4<f32>(v_168.xyz, r3.w);
  let v_169 = (r3.xyz * vec3<f32>(0.68169009685516357422f));
  r3 = vec4<f32>(v_169.xyz, r3.w);
  let v_170 = fma(r0.yzw, vec3<f32>(0.31830990314483642578f), r3.xyz);
  r0 = vec4<f32>(r0.x, v_170.xyz);
  let v_171 = fma(r0.yzw, r0.xxx, r1.xyz);
  r0 = vec4<f32>(v_171.xyz, r0.w);
  r0.w = dot(r2.yzw, r2.yzw);
  r1.x = sqrt(r0.w);
  let v_172 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_172.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r2.w);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_173 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_173 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_174 = (r0.www * r2.yzw);
  r2 = vec4<f32>(v_174.xyz, r2.w);
  let v_175 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_175, v_175, v_175, v_175).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_176 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_176, v_176, v_176, v_176).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_177 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_177.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_178 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_178.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_179 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_179.xyz, r2.w);
  let v_180 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_180.xyz, r2.w);
  let v_181 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_181.xyz, r3.w);
  let v_182 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_182.xyz, r2.w);
  let v_183 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_184 = (r2.xyz + v_183.xyz);
  r2 = vec4<f32>(v_184.xyz, r2.w);
  let v_185 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_185.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_186 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_186.xy, r1.z, v_186.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_187 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_187.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_188 = -(r0.xyxz);
  let v_189 = fma(r1.xyw, r0.www, v_188.xyw);
  r1 = vec4<f32>(v_189.xy, r1.z, v_189.z);
  let v_190 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_190.xyz, r0.w);
  let v_191 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_191.xyz, o0.w);
  o0.w = cb2_2.tint_symbol_1[15u].x;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_192 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_192);
  return o0;
}
