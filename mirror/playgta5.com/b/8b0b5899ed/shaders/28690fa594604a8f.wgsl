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

struct cb9_struct {
  tint_symbol_4 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb9_struct;

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb1_struct;

struct cb16_struct_1 {
  tint_symbol_6 : array<vec4<f32>, 16u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb16_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

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

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

@group(1u) @binding(71u) var t39 : texture_2d<f32>;

@group(1u) @binding(72u) var t40 : texture_2d<f32>;

var<private> v5 : vec4<f32>;

var<private> v6 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

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
  let v_38 = -(v2.xyzx);
  let v_39 = (v_38.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_39.xyz, r2.w);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_40 = (r0.yyy * r2.xyz);
  r5 = vec4<f32>(v_40.xyz, r5.w);
  let v_41 = fma(r2.xyz, r0.yyy, v_29.xyz);
  r6 = vec4<f32>(v_41.xyz, r6.w);
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_42 = (r1.www * r6.xyz);
  r6 = vec4<f32>(v_42.xyz, r6.w);
  r1.w = (r4.x * r4.x);
  r0.w = (r0.w * r0.w);
  r2.w = fma(r4.w, cb11_11.tint_symbol_4[4u].x, -500.0f);
  r2.w = max(r2.w, 0.0f);
  let v_43 = -(r2.wwww);
  r3.w = fma(r4.w, cb11_11.tint_symbol_4[4u].x, v_43.w);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.w, 3.0f, r2.w);
  r3.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_44 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_44.xyz, r4.w);
  let v_45 = (r4.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_45.xyz, r7.w);
  let v_46 = fma(r4.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r4 = vec4<f32>(v_46.xy, r4.z, v_46.z);
  let v_47 = fma(r4.zzz, cb6_6.tint_symbol_6[2u].xyz, r4.xyw);
  r4 = vec4<f32>(v_47.xyz, r4.w);
  let v_48 = fma(r4.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_48.xyz, r7.w);
  let v_49 = &(x0[0u]);
  let v_50 = r7;
  *(v_49) = vec4<f32>(v_50.xyz, (*(v_49)).w);
  let v_51 = fma(r4.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_51.xyz, r8.w);
  let v_52 = &(x0[1u]);
  let v_53 = r8;
  *(v_52) = vec4<f32>(v_53.xyz, (*(v_52)).w);
  let v_54 = fma(r4.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_54.xyz, r9.w);
  let v_55 = &(x0[2u]);
  let v_56 = r9;
  *(v_55) = vec4<f32>(v_56.xyz, (*(v_55)).w);
  let v_57 = fma(r4.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r4 = vec4<f32>(v_57.xyz, r4.w);
  let v_58 = &(x0[3u]);
  let v_59 = r4;
  *(v_58) = vec4<f32>(v_59.xyz, (*(v_58)).w);
  let v_60 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_61 = r10;
  r10 = vec4<f32>(v_61.x, v_60.x, v_61.z, v_60.y);
  r4.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r4.z = (r4.z * 0.5f);
  let v_62 = abs(r9.yyyy);
  r4.w = max(v_62.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r4.z)));
  let v_63 = (bitcast<u32>(r4.w) != 0u);
  let v_64 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_64, v_63);
  let v_65 = abs(r8.yyyy);
  r5.w = max(v_65.w, abs(r8.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.z)));
  let v_66 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_66 != 0u));
  let v_67 = abs(r7.yyyy);
  r5.w = max(v_67.w, abs(r7.xxxx).w);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.z)));
  let v_68 = bitcast<u32>(r4.z);
  r4.z = select(r4.w, 0.0f, (v_68 != 0u));
  let v_69 = x0[bitcast<i32>(r4.z)];
  r7 = vec4<f32>(v_69.xyz, r7.w);
  r4.z = f32(bitcast<i32>(r4.z));
  r4.w = (r4.z + 0.5f);
  r4.w = (r4.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.zzzz)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r4.z = dot(r8, cb6_6.tint_symbol_6[12u]);
  r5.w = dot(r8, cb6_6.tint_symbol_6[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r4.z == 0.0f))));
  r4.z = ((-(r4.zzzz)).z + r7.z);
  let v_70 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_70.xy, r9.z, v_70.z);
  r9.z = dpdx(r4.z);
  let v_71 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_71.xyz, r11.w);
  r11.w = dpdy(r4.z);
  let v_72 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_72.xy, r7.zw);
  let v_73 = -(r7.xyxx);
  let v_74 = fma(r9.xz, r11.xz, v_73.xy);
  r12 = vec4<f32>(v_74.xy, r12.zw);
  r6.w = (1.0f / r12.x);
  r7.x = (r9.z * r11.y);
  let v_75 = -(r7.xxxx);
  r12.z = fma(r9.x, r11.w, v_75.z);
  let v_76 = (r6.ww * r12.yz);
  r7 = vec4<f32>(v_76.xy, r7.zw);
  let v_77 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_77.xy, r7.zw);
  let v_78 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_78.xy, r7.zw);
  r4.z = fma((-(r5.wwww)).z, r7.x, r4.z);
  r4.z = fma((-(r5.wwww)).z, r7.y, r4.z);
  let v_79 = bitcast<u32>(r4.w);
  let v_80 = r4.z;
  r10.z = select(r7.z, v_80, (v_79 != 0u));
  r8.z = 0.0f;
  let v_81 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_81.xyz, r7.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_82.xy, r10.zw);
  let v_83 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_83.xyz, r9.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_84.xy, r10.zw);
  let v_85 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_85.xyz, r11.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_86.xy, r10.zw);
  let v_87 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_87.xyz, r12.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_88.xy, r10.zw);
  let v_89 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_89.xyz, r13.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_90.xy, r10.zw);
  let v_91 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_91.xyz, r14.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_92.xy, r10.zw);
  let v_93 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_93.xyz, r15.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_94.xy, r10.zw);
  let v_95 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_95.xyz, r16.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_96.xy, r10.zw);
  let v_97 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_97.xyz, r17.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_98.xy, r10.zw);
  let v_99 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_99.xyz, r18.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_100.xy, r10.zw);
  let v_101 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_101.xyz, r19.w);
  let v_102 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_102.xy, r10.zw);
  let v_103 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_103.xyz, r20.w);
  let v_104 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_104.xy, r10.zw);
  let v_105 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_105.xyz, r21.w);
  let v_106 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_106.xy, r10.zw);
  let v_107 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_107.xyz, r22.w);
  let v_108 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_108.xy, r10.zw);
  let v_109 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_109.xyz, r23.w);
  let v_110 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_110.xy, r10.zw);
  let v_111 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_111.xyz, r8.w);
  let v_112 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_112.xy, r7.z);
  let v_113 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_113.xy, r9.z);
  let v_114 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_114.xy, r11.z);
  let v_115 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_115.xy, r12.z);
  let v_116 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_116.xy, r13.z);
  let v_117 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_117.xy, r14.z);
  let v_118 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_118.xy, r15.z);
  let v_119 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_119.xy, r16.z);
  let v_120 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_120.xy, r17.z);
  let v_121 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_121.xy, r18.z);
  let v_122 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_122.xy, r19.z);
  let v_123 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_123.xy, r20.z);
  let v_124 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_124.xy, r21.z);
  let v_125 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_125.xy, r22.z);
  let v_126 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_126.xy, r23.z);
  let v_127 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_127.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r4.z = dot(r7, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_128 = abs(r4.yyyy);
  r4.x = max(v_128.x, abs(r4.xxxx).x);
  r4.x = clamp(fma(r4.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r4.x * r3.w);
  r3.w = fma(r4.z, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.x = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).x, 0.0f, 1.0f);
  r4.x = sqrt(r4.x);
  r4.x = (r4.x * cb6_6.tint_symbol_6[3u].z);
  let v_129 = -(r3.wwww);
  r3.w = fma(r4.x, v_129.w, r3.w);
  r4.x = (-(cb6_6.tint_symbol_6[15u].wwww)).x;
  let v_130 = r4;
  r4 = vec4<f32>(v_130.x, 0.0f, v_130.z, 0.5f);
  let v_131 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r4.xy);
  r4 = vec4<f32>(v_131.xy, r4.zw);
  r7 = textureSample(t12, s12, r4.xyxx.xy);
  r4.z = r7.y;
  r4 = textureSample(t13, s13, r4.zwzz.xy);
  r3.w = (r3.w * r4.x);
  let v_132 = dot(r3.xyz, v_29.xyz);
  r4.x = clamp(vec4<f32>(v_132, v_132, v_132, v_132).x, 0.0f, 1.0f);
  let v_133 = dot(r5.xyz, r3.xyz);
  r7.x = clamp(vec4<f32>(v_133, v_133, v_133, v_133).x, 0.0f, 1.0f);
  let v_134 = dot(r6.xyz, v_29.xyz);
  r7.y = clamp(vec4<f32>(v_134, v_134, v_134, v_134).y, 0.0f, 1.0f);
  let v_135 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_136 = r4;
  r4 = vec4<f32>(v_136.x, v_135.xy, v_136.w);
  let v_137 = (r4.yz * r4.yz);
  r7 = vec4<f32>(v_137.xy, r7.zw);
  let v_138 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_138.xy, r7.zw);
  let v_139 = (r4.yz * r7.xy);
  let v_140 = r4;
  r4 = vec4<f32>(v_140.x, v_139.xy, v_140.w);
  r4.w = ((-(cb11_11.tint_symbol_4[3u].wwww)).w + 1.0f);
  let v_141 = fma(cb11_11.tint_symbol_4[3u].ww, r4.yz, r4.ww);
  let v_142 = r4;
  r4 = vec4<f32>(v_142.x, v_141.xy, v_142.w);
  let v_143 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_143.xy, r7.zw);
  r5.w = (r7.x * 0.125f);
  r4.y = fma((-(r0.zzzz)).y, r4.y, 1.0f);
  r6.x = dot(r3.xyz, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r7.y);
  r6.x = exp2(r6.x);
  r4.z = (r4.z * r6.x);
  r4.z = (r5.w * r4.z);
  r4.z = (r0.z * r4.z);
  r4.z = (r4.x * r4.z);
  r4.x = (r4.y * r4.x);
  let v_144 = fma(r1.xyz, r4.xxx, r4.zzz);
  r6 = vec4<f32>(v_144.xyz, r6.w);
  let v_145 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_145.xyz, r6.w);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.x) != 0u)) {
    r8 = vec4<f32>(vec3<f32>(), r8.w);
    r7 = vec4<f32>(0.0f, r7.y, vec2<f32>());
  } else {
    r4.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_146 = ((-(v2.xxyz)).xzw + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_146.x, r7.y, v_146.yz);
    let v_147 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_147.xyz, r8.w);
    r6.w = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.x = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r6.w = clamp(((r6.wwww / r8.xxxx)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_2[19u].w);
    let v_148 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.www, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_148.xyz, r8.w);
    let v_149 = (r8.xyz + v_38.xyz);
    r8 = vec4<f32>(v_149.xyz, r8.w);
    let v_150 = bitcast<vec3<u32>>(r4.zzz);
    let v_151 = r7.xzw;
    let v_152 = select(r8.xyz, v_151, (v_150 != vec3<u32>()));
    r7 = vec4<f32>(v_152.x, r7.y, v_152.yz);
    r4.z = dot(r7.xzw, r7.xzw);
    let v_153 = (r7.xzw + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_153.x, r7.y, v_153.yz);
    r6.w = dot(r7.xzw, r7.xzw);
    r6.w = inverseSqrt(r6.w);
    let v_154 = (r6.www * r7.xzw);
    r7 = vec4<f32>(v_154.x, r7.y, v_154.yz);
    r4.z = clamp(fma(-(r4.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r4.z, cb3_3.tint_symbol_2[11u].w);
    r4.z = (r4.z / r6.w);
    let v_155 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.w = dot(r7.xzw, v_155.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_156 = dot(r7.xzw, r3.xyz);
    r8.x = clamp(vec4<f32>(v_156, v_156, v_156, v_156).x, 0.0f, 1.0f);
    r6.w = (r6.w * r8.x);
    r8.x = (r4.z * r6.w);
    let v_157 = (r8.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_157.xyz, r8.w);
    let v_158 = (r1.xyz * r8.xyz);
    r8 = vec4<f32>(v_158.xyz, r8.w);
    let v_159 = fma(r2.xyz, r0.yyy, r7.xzw);
    r7 = vec4<f32>(v_159.x, r7.y, v_159.yz);
    r8.w = dot(r7.xzw, r7.xzw);
    r8.w = inverseSqrt(r8.w);
    let v_160 = (r7.xzw * r8.www);
    r7 = vec4<f32>(v_160.x, r7.y, v_160.yz);
    let v_161 = dot(r7.xzw, r5.xyz);
    r8.w = clamp(vec4<f32>(v_161, v_161, v_161, v_161).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.x = (r8.w * r8.w);
    r9.x = (r9.x * r9.x);
    r8.w = (r8.w * r9.x);
    r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r4.w);
    let v_162 = dot(r7.xzw, r3.xyz);
    r7.x = clamp(vec4<f32>(v_162, v_162, v_162, v_162).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r7.x * r7.y);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r8.w);
    r6.w = (r6.w * r7.x);
    r4.z = (r4.z * r6.w);
    r4.z = (r5.w * r4.z);
    let v_163 = (r4.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_163.x, r7.y, v_163.yz);
  }
  r4.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.z) != 0u)) {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.z = bitcast<f32>((bitcast<u32>(r4.x) | bitcast<u32>(r4.z)));
    let v_164 = bitcast<u32>(r6.w);
    let v_165 = r4.z;
    r4.x = select(r4.x, v_165, (v_164 != 0u));
    if ((bitcast<u32>(r4.x) != 0u)) {
    } else {
      r4.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_166 = (v_38.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_166.xyz, r9.w);
      let v_167 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_167.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_168 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      let v_169 = (r10.xyz + v_38.xyz);
      r10 = vec4<f32>(v_169.xyz, r10.w);
      let v_170 = bitcast<vec3<u32>>(r4.zzz);
      let v_171 = r9.xyz;
      let v_172 = select(r10.xyz, v_171, (v_170 != vec3<u32>()));
      r9 = vec4<f32>(v_172.xyz, r9.w);
      r4.z = dot(r9.xyz, r9.xyz);
      let v_173 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_173.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_174 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_174.xyz, r9.w);
      r4.z = clamp(fma(-(r4.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.z, cb3_3.tint_symbol_2[12u].w);
      r4.z = (r4.z / r6.w);
      let v_175 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r9.xyz, v_175.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_176 = dot(r9.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_176, v_176, v_176, v_176).w, 0.0f, 1.0f);
      r6.w = (r6.w * r8.w);
      r8.w = (r4.z * r6.w);
      let v_177 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_177.xyz, r10.w);
      let v_178 = fma(r10.xyz, r1.xyz, r8.xyz);
      r8 = vec4<f32>(v_178.xyz, r8.w);
      let v_179 = fma(r2.xyz, r0.yyy, r9.xyz);
      r9 = vec4<f32>(v_179.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_180 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_180.xyz, r9.w);
      let v_181 = dot(r9.xyz, r5.xyz);
      r8.w = clamp(vec4<f32>(v_181, v_181, v_181, v_181).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r4.w);
      let v_182 = dot(r9.xyz, r3.xyz);
      r9.x = clamp(vec4<f32>(v_182, v_182, v_182, v_182).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r6.w = (r6.w * r8.w);
      r4.z = (r4.z * r6.w);
      r4.z = (r5.w * r4.z);
      let v_183 = fma(r4.zzz, cb3_3.tint_symbol_2[20u].xyz, r7.xzw);
      r7 = vec4<f32>(v_183.x, r7.y, v_183.yz);
    }
  } else {
    r4.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r4.x) != 0u)) {
    r4.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r4.z = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.x = bitcast<f32>((bitcast<u32>(r4.x) | bitcast<u32>(r4.z)));
    if ((bitcast<u32>(r4.x) != 0u)) {
    } else {
      r4.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_184 = (v_38.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_184.xyz, r9.w);
      let v_185 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_185.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_186 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_186.xyz, r10.w);
      let v_187 = (r10.xyz + v_38.xyz);
      r10 = vec4<f32>(v_187.xyz, r10.w);
      let v_188 = bitcast<vec3<u32>>(r4.zzz);
      let v_189 = r9.xyz;
      let v_190 = select(r10.xyz, v_189, (v_188 != vec3<u32>()));
      r9 = vec4<f32>(v_190.xyz, r9.w);
      r4.z = dot(r9.xyz, r9.xyz);
      let v_191 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_191.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_192 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_192.xyz, r9.w);
      r4.z = clamp(fma(-(r4.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.z, cb3_3.tint_symbol_2[13u].w);
      r4.z = (r4.z / r6.w);
      let v_193 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r9.xyz, v_193.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_194 = dot(r9.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_194, v_194, v_194, v_194).w, 0.0f, 1.0f);
      r6.w = (r6.w * r8.w);
      r8.w = (r4.z * r6.w);
      let v_195 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_195.xyz, r10.w);
      let v_196 = fma(r10.xyz, r1.xyz, r8.xyz);
      r8 = vec4<f32>(v_196.xyz, r8.w);
      let v_197 = fma(r2.xyz, r0.yyy, r9.xyz);
      r9 = vec4<f32>(v_197.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_198 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_198.xyz, r9.w);
      let v_199 = dot(r9.xyz, r5.xyz);
      r8.w = clamp(vec4<f32>(v_199, v_199, v_199, v_199).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r4.w);
      let v_200 = dot(r9.xyz, r3.xyz);
      r9.x = clamp(vec4<f32>(v_200, v_200, v_200, v_200).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r6.w = (r6.w * r8.w);
      r4.z = (r4.z * r6.w);
      r4.z = (r5.w * r4.z);
      let v_201 = fma(r4.zzz, cb3_3.tint_symbol_2[21u].xyz, r7.xzw);
      r7 = vec4<f32>(v_201.x, r7.y, v_201.yz);
    }
  }
  if ((bitcast<u32>(r4.x) != 0u)) {
    r4.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r4.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.x = bitcast<f32>((bitcast<u32>(r4.x) | bitcast<u32>(r4.z)));
    if ((bitcast<u32>(r4.x) != 0u)) {
    } else {
      r4.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_202 = (v_38.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_202.xyz, r9.w);
      let v_203 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_203.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[22u].w);
      let v_204 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.www, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_204.xyz, r10.w);
      let v_205 = (r10.xyz + v_38.xyz);
      r10 = vec4<f32>(v_205.xyz, r10.w);
      let v_206 = bitcast<vec3<u32>>(r4.zzz);
      let v_207 = r9.xyz;
      let v_208 = select(r10.xyz, v_207, (v_206 != vec3<u32>()));
      r9 = vec4<f32>(v_208.xyz, r9.w);
      r4.z = dot(r9.xyz, r9.xyz);
      let v_209 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_209.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_210 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_210.xyz, r9.w);
      r4.z = clamp(fma(-(r4.zzzz), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.z, cb3_3.tint_symbol_2[14u].w);
      r4.z = (r4.z / r6.w);
      let v_211 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.w = dot(r9.xyz, v_211.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_212 = dot(r9.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_212, v_212, v_212, v_212).w, 0.0f, 1.0f);
      r6.w = (r6.w * r8.w);
      r8.w = (r4.z * r6.w);
      let v_213 = (r8.www * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_213.xyz, r10.w);
      let v_214 = fma(r10.xyz, r1.xyz, r8.xyz);
      r8 = vec4<f32>(v_214.xyz, r8.w);
      let v_215 = fma(r2.xyz, r0.yyy, r9.xyz);
      r9 = vec4<f32>(v_215.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_216 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_216.xyz, r9.w);
      let v_217 = dot(r9.xyz, r5.xyz);
      r8.w = clamp(vec4<f32>(v_217, v_217, v_217, v_217).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r4.w);
      let v_218 = dot(r9.xyz, r3.xyz);
      r9.x = clamp(vec4<f32>(v_218, v_218, v_218, v_218).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r6.w = (r6.w * r8.w);
      r4.z = (r4.z * r6.w);
      r4.z = (r5.w * r4.z);
      let v_219 = fma(r4.zzz, cb3_3.tint_symbol_2[22u].xyz, r7.xzw);
      r7 = vec4<f32>(v_219.x, r7.y, v_219.yz);
    }
  }
  if ((bitcast<u32>(r4.x) != 0u)) {
    r4.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r4.z = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.x = bitcast<f32>((bitcast<u32>(r4.x) | bitcast<u32>(r4.z)));
    if ((bitcast<u32>(r4.x) != 0u)) {
    } else {
      r4.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_220 = (v_38.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r9 = vec4<f32>(v_220.xyz, r9.w);
      let v_221 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r10 = vec4<f32>(v_221.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r8.w = (cb3_3.tint_symbol_2[23u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[23u].w);
      let v_222 = fma(cb3_3.tint_symbol_2[15u].xyz, r6.www, cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_222.xyz, r10.w);
      let v_223 = (r10.xyz + v_38.xyz);
      r10 = vec4<f32>(v_223.xyz, r10.w);
      let v_224 = bitcast<vec3<u32>>(r4.zzz);
      let v_225 = r9.xyz;
      let v_226 = select(r10.xyz, v_225, (v_224 != vec3<u32>()));
      r9 = vec4<f32>(v_226.xyz, r9.w);
      r4.z = dot(r9.xyz, r9.xyz);
      let v_227 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_227.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_228 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_228.xyz, r9.w);
      r4.z = clamp(fma(-(r4.zzzz), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.z, cb3_3.tint_symbol_2[15u].w);
      r4.z = (r4.z / r6.w);
      let v_229 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r6.w = dot(r9.xyz, v_229.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_230 = dot(r9.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_230, v_230, v_230, v_230).w, 0.0f, 1.0f);
      r6.w = (r6.w * r8.w);
      r8.w = (r4.z * r6.w);
      let v_231 = (r8.www * cb3_3.tint_symbol_2[23u].xyz);
      r10 = vec4<f32>(v_231.xyz, r10.w);
      let v_232 = fma(r10.xyz, r1.xyz, r8.xyz);
      r8 = vec4<f32>(v_232.xyz, r8.w);
      let v_233 = fma(r2.xyz, r0.yyy, r9.xyz);
      r9 = vec4<f32>(v_233.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_234 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_234.xyz, r9.w);
      let v_235 = dot(r9.xyz, r5.xyz);
      r8.w = clamp(vec4<f32>(v_235, v_235, v_235, v_235).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r4.w);
      let v_236 = dot(r9.xyz, r3.xyz);
      r9.x = clamp(vec4<f32>(v_236, v_236, v_236, v_236).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r6.w = (r6.w * r8.w);
      r4.z = (r4.z * r6.w);
      r4.z = (r5.w * r4.z);
      let v_237 = fma(r4.zzz, cb3_3.tint_symbol_2[23u].xyz, r7.xzw);
      r7 = vec4<f32>(v_237.x, r7.y, v_237.yz);
    }
  }
  if ((bitcast<u32>(r4.x) != 0u)) {
    r4.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r4.z = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.x = bitcast<f32>((bitcast<u32>(r4.x) | bitcast<u32>(r4.z)));
    if ((bitcast<u32>(r4.x) != 0u)) {
    } else {
      r4.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_238 = (v_38.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r9 = vec4<f32>(v_238.xyz, r9.w);
      let v_239 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r10 = vec4<f32>(v_239.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r8.w = (cb3_3.tint_symbol_2[24u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[24u].w);
      let v_240 = fma(cb3_3.tint_symbol_2[16u].xyz, r6.www, cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_240.xyz, r10.w);
      let v_241 = (r10.xyz + v_38.xyz);
      r10 = vec4<f32>(v_241.xyz, r10.w);
      let v_242 = bitcast<vec3<u32>>(r4.zzz);
      let v_243 = r9.xyz;
      let v_244 = select(r10.xyz, v_243, (v_242 != vec3<u32>()));
      r9 = vec4<f32>(v_244.xyz, r9.w);
      r4.z = dot(r9.xyz, r9.xyz);
      let v_245 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_245.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_246 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_246.xyz, r9.w);
      r4.z = clamp(fma(-(r4.zzzz), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.z, cb3_3.tint_symbol_2[16u].w);
      r4.z = (r4.z / r6.w);
      let v_247 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r6.w = dot(r9.xyz, v_247.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_248 = dot(r9.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_248, v_248, v_248, v_248).w, 0.0f, 1.0f);
      r6.w = (r6.w * r8.w);
      r8.w = (r4.z * r6.w);
      let v_249 = (r8.www * cb3_3.tint_symbol_2[24u].xyz);
      r10 = vec4<f32>(v_249.xyz, r10.w);
      let v_250 = fma(r10.xyz, r1.xyz, r8.xyz);
      r8 = vec4<f32>(v_250.xyz, r8.w);
      let v_251 = fma(r2.xyz, r0.yyy, r9.xyz);
      r9 = vec4<f32>(v_251.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_252 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_252.xyz, r9.w);
      let v_253 = dot(r9.xyz, r5.xyz);
      r8.w = clamp(vec4<f32>(v_253, v_253, v_253, v_253).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r4.w);
      let v_254 = dot(r9.xyz, r3.xyz);
      r9.x = clamp(vec4<f32>(v_254, v_254, v_254, v_254).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r6.w = (r6.w * r8.w);
      r4.z = (r4.z * r6.w);
      r4.z = (r5.w * r4.z);
      let v_255 = fma(r4.zzz, cb3_3.tint_symbol_2[24u].xyz, r7.xzw);
      r7 = vec4<f32>(v_255.x, r7.y, v_255.yz);
    }
  }
  if ((bitcast<u32>(r4.x) != 0u)) {
    r4.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r4.z = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.x = bitcast<f32>((bitcast<u32>(r4.x) | bitcast<u32>(r4.z)));
    if ((bitcast<u32>(r4.x) != 0u)) {
    } else {
      r4.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_256 = (v_38.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r9 = vec4<f32>(v_256.xyz, r9.w);
      let v_257 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r10 = vec4<f32>(v_257.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r8.w = (cb3_3.tint_symbol_2[25u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[25u].w);
      let v_258 = fma(cb3_3.tint_symbol_2[17u].xyz, r6.www, cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_258.xyz, r10.w);
      let v_259 = (r10.xyz + v_38.xyz);
      r10 = vec4<f32>(v_259.xyz, r10.w);
      let v_260 = bitcast<vec3<u32>>(r4.zzz);
      let v_261 = r9.xyz;
      let v_262 = select(r10.xyz, v_261, (v_260 != vec3<u32>()));
      r9 = vec4<f32>(v_262.xyz, r9.w);
      r4.z = dot(r9.xyz, r9.xyz);
      let v_263 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_263.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_264 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_264.xyz, r9.w);
      r4.z = clamp(fma(-(r4.zzzz), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.z, cb3_3.tint_symbol_2[17u].w);
      r4.z = (r4.z / r6.w);
      let v_265 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r6.w = dot(r9.xyz, v_265.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_266 = dot(r9.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_266, v_266, v_266, v_266).w, 0.0f, 1.0f);
      r6.w = (r6.w * r8.w);
      r8.w = (r4.z * r6.w);
      let v_267 = (r8.www * cb3_3.tint_symbol_2[25u].xyz);
      r10 = vec4<f32>(v_267.xyz, r10.w);
      let v_268 = fma(r10.xyz, r1.xyz, r8.xyz);
      r8 = vec4<f32>(v_268.xyz, r8.w);
      let v_269 = fma(r2.xyz, r0.yyy, r9.xyz);
      r9 = vec4<f32>(v_269.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_270 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_270.xyz, r9.w);
      let v_271 = dot(r9.xyz, r5.xyz);
      r8.w = clamp(vec4<f32>(v_271, v_271, v_271, v_271).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r4.w);
      let v_272 = dot(r9.xyz, r3.xyz);
      r9.x = clamp(vec4<f32>(v_272, v_272, v_272, v_272).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r6.w = (r6.w * r8.w);
      r4.z = (r4.z * r6.w);
      r4.z = (r5.w * r4.z);
      let v_273 = fma(r4.zzz, cb3_3.tint_symbol_2[25u].xyz, r7.xzw);
      r7 = vec4<f32>(v_273.x, r7.y, v_273.yz);
    }
  }
  if ((bitcast<u32>(r4.x) != 0u)) {
  } else {
    r4.z = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.x = bitcast<f32>((bitcast<u32>(r4.x) | bitcast<u32>(r4.z)));
    if ((bitcast<u32>(r4.x) != 0u)) {
    } else {
      r4.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_274 = (v_38.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r9 = vec4<f32>(v_274.xyz, r9.w);
      let v_275 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r10 = vec4<f32>(v_275.xyz, r10.w);
      r4.z = dot(r10.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r6.w = (cb3_3.tint_symbol_2[26u].w + 0.00009999999747378752f);
      r4.z = clamp(((r4.zzzz / r6.wwww)).z, 0.0f, 1.0f);
      r4.z = (r4.z * cb3_3.tint_symbol_2[26u].w);
      let v_276 = fma(cb3_3.tint_symbol_2[18u].xyz, r4.zzz, cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_276.xyz, r10.w);
      let v_277 = (r10.xyz + v_38.xyz);
      r10 = vec4<f32>(v_277.xyz, r10.w);
      let v_278 = bitcast<vec3<u32>>(r4.xxx);
      let v_279 = r9.xyz;
      let v_280 = select(r10.xyz, v_279, (v_278 != vec3<u32>()));
      r9 = vec4<f32>(v_280.xyz, r9.w);
      r4.x = dot(r9.xyz, r9.xyz);
      let v_281 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_281.xyz, r9.w);
      r4.z = dot(r9.xyz, r9.xyz);
      r4.z = inverseSqrt(r4.z);
      let v_282 = (r4.zzz * r9.xyz);
      r9 = vec4<f32>(v_282.xyz, r9.w);
      r4.x = clamp(fma(-(r4.xxxx), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
      r4.z = ((-(cb3_3.tint_symbol_2[18u].wwww)).z + 1.0f);
      r4.z = fma(r4.z, r4.x, cb3_3.tint_symbol_2[18u].w);
      r4.x = (r4.x / r4.z);
      let v_283 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r4.z = dot(r9.xyz, v_283.xyz);
      r4.z = clamp(fma(r4.zzzz, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).z, 0.0f, 1.0f);
      let v_284 = dot(r9.xyz, r3.xyz);
      r6.w = clamp(vec4<f32>(v_284, v_284, v_284, v_284).w, 0.0f, 1.0f);
      r4.z = (r4.z * r6.w);
      r6.w = (r4.x * r4.z);
      let v_285 = (r6.www * cb3_3.tint_symbol_2[26u].xyz);
      r10 = vec4<f32>(v_285.xyz, r10.w);
      let v_286 = fma(r10.xyz, r1.xyz, r8.xyz);
      r8 = vec4<f32>(v_286.xyz, r8.w);
      let v_287 = fma(r2.xyz, r0.yyy, r9.xyz);
      r2 = vec4<f32>(v_287.xyz, r2.w);
      r0.y = dot(r2.xyz, r2.xyz);
      r0.y = inverseSqrt(r0.y);
      let v_288 = (r0.yyy * r2.xyz);
      r2 = vec4<f32>(v_288.xyz, r2.w);
      let v_289 = dot(r2.xyz, r5.xyz);
      r0.y = clamp(vec4<f32>(v_289, v_289, v_289, v_289).y, 0.0f, 1.0f);
      r0.y = ((-(r0.yyyy)).y + 1.0f);
      r6.w = (r0.y * r0.y);
      r6.w = (r6.w * r6.w);
      r0.y = (r0.y * r6.w);
      r0.y = fma(cb11_11.tint_symbol_4[3u].w, r0.y, r4.w);
      let v_290 = dot(r2.xyz, r3.xyz);
      r2.x = clamp(vec4<f32>(v_290, v_290, v_290, v_290).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r7.y);
      r2.x = exp2(r2.x);
      r0.y = (r0.y * r2.x);
      r0.y = (r4.z * r0.y);
      r0.y = (r4.x * r0.y);
      r0.y = (r5.w * r0.y);
      let v_291 = fma(r0.yyy, cb3_3.tint_symbol_2[26u].xyz, r7.xzw);
      r7 = vec4<f32>(v_291.x, r7.y, v_291.yz);
    }
  }
  r0.y = (r4.y * r4.y);
  r0.z = (r0.z * r0.z);
  let v_292 = (r7.xzw * r0.zzz);
  r2 = vec4<f32>(v_292.xyz, r2.w);
  let v_293 = fma(r0.yyy, r8.xyz, r2.xyz);
  r2 = vec4<f32>(v_293.xyz, r2.w);
  let v_294 = fma(r6.xyz, r3.www, r2.xyz);
  r2 = vec4<f32>(v_294.xyz, r2.w);
  r0.x = fma(v1.z, r0.x, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_295 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_295.x, r4.y, v_295.yz);
  r0.y = ((-(cb2_2.tint_symbol_1[16u].zzzz)).y + 1.0f);
  let v_296 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_296.xyz, r6.w);
  let v_297 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_297.xyz, r6.w);
  let v_298 = fma(r4.xzw, r0.yyy, r6.xyz);
  r4 = vec4<f32>(v_298.x, r4.y, v_298.yz);
  let v_299 = (r0.www * r4.xzw);
  r4 = vec4<f32>(v_299.x, r4.y, v_299.yz);
  let v_300 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(v_300.xyz, r0.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_301 = dot(r6.xyz, r3.xyz);
  r3.w = clamp(vec4<f32>(v_301, v_301, v_301, v_301).w, 0.0f, 1.0f);
  let v_302 = fma(cb3_3.tint_symbol_2[49u].xyz, r3.www, r0.xyz);
  r0 = vec4<f32>(v_302.xyz, r0.w);
  let v_303 = fma(r0.xyz, r1.www, r4.xzw);
  r0 = vec4<f32>(v_303.xyz, r0.w);
  let v_304 = (r4.yyy * r0.xyz);
  r0 = vec4<f32>(v_304.xyz, r0.w);
  let v_305 = fma(r0.xyz, r1.xyz, r2.xyz);
  r0 = vec4<f32>(v_305.xyz, r0.w);
  r1.x = ((-(r4.yyyy)).x + 1.0f);
  r1.y = dot((-(r5.xyzx)).xyz, r3.xyz);
  r1.y = (r1.y + r1.y);
  let v_306 = -(r1.yyyy);
  let v_307 = -(r5.xyzx);
  let v_308 = fma(r3.xyz, v_306.xyz, v_307.xyz);
  r2 = vec4<f32>(v_308.xyz, r2.w);
  let v_309 = clamp(((r2.wwww * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_310 = r1;
  r1 = vec4<f32>(v_310.x, v_309.xy, v_310.w);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.y * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.w)));
  r3.y = fma(r1.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.y = (r1.y * r1.y);
  r1.y = fma(r1.y, 5.0f, r2.w);
  let v_311 = bitcast<u32>(r3.x);
  let v_312 = r3.y;
  r1.y = select(r1.y, v_312, (v_311 != 0u));
  let v_313 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_313.xy, r2.z, v_313.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_314 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_314.xy, r2.z, v_314.z);
  let v_315 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_315.xy, r2.z, v_315.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_316 = bitcast<vec2<u32>>(r2.zz);
  let v_317 = r2.xy;
  let v_318 = select(r2.wy, v_317, (v_316 != vec2<u32>()));
  r2 = vec4<f32>(v_318.xy, r2.zw);
  let v_319 = r1.y;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_319);
  r0.w = max(r0.w, r1.w);
  let v_320 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_320.xyz, r2.w);
  let v_321 = (r1.zzz * r2.xyz);
  r1 = vec4<f32>(r1.x, v_321.xyz);
  let v_322 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_322.xyz);
  let v_323 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_323.xyz);
  let v_324 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_324.xyz, r0.w);
  let v_325 = v5.xy;
  let v_326 = max(v_325, vec2<f32>(-2147483648.0f));
  let v_327 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_326), vec2<i32>(2147483647i), (v_326 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_325 == v_325))));
  r1 = vec4<f32>(v_327.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2 = textureLoad(t40, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
  r2.x = (r2.x * r2.x);
  r2.y = dot(v3.xyz, cb1_1.tint_symbol[14u].xyz);
  r1 = textureLoad(t39, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
  r1.y = (cb7_7.tint_symbol_5[0u].y + 1.0f);
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r1.x = (cb7_7.tint_symbol_5[0u].x / r1.x);
  r1.x = ((-(r1.xxxx)).x + r2.y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f >= r1.x)));
  r1.x = (r2.x * r1.x);
  r1.x = (r1.x * -78.43303680419921875f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * cb2_2.tint_symbol_1[15u].x);
  let v_328 = bitcast<u32>(r1.y);
  let v_329 = cb2_2.tint_symbol_1[15u].x;
  r0.w = select(r1.x, v_329, (v_328 != 0u));
  let v_330 = bitcast<vec4<u32>>(r1.yyyy);
  r0 = select(r0, vec4<f32>(), (v_330 != vec4<u32>()));
  let v_331 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_331.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_332 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_332);
  return o0;
}
