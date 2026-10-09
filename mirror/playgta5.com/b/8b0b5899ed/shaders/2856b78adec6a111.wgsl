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

struct cb7_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb7_struct_1;

struct cb16_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 16u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb16_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

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
  r1 = textureSample(t3, s3, v0.zwzz.xy);
  r0 = textureSample(t0, s0, r0.xyxx.xy);
  r0.w = dot(v1.xyz, v1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_4 = (r0.www * v1.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  r3 = textureSample(t5, s5, v0.zwzz.xy);
  let v_5 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_5.xy, r3.zw);
  r2.w = dot(r3.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r3.x = (r2.w * cb11_11.tint_symbol_4[4u].y);
  let v_6 = (r0.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r1.w = (r1.w * cb11_11.tint_symbol_4[1u].w);
  let v_7 = -(r0.xyzx);
  let v_8 = fma(r1.xyz, cb11_11.tint_symbol_4[1u].xyz, v_7.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(r1.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (r0.xyz * v4.xxx);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = (v4.xx * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_11.xy, r1.zw);
  r1.z = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).z, 0.0f, 1.0f);
  r1.y = (r1.z * r1.y);
  r1.z = (r3.x * v4.x);
  r1.z = (r1.z * v1.w);
  let v_12 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_12.xy, r3.zw);
  r1.w = (r3.x * v4.z);
  let v_13 = (r3.yy * v0.xy);
  let v_14 = r3;
  r3 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r4 = textureSample(t4, s4, r3.yzyy.xy);
  r3.y = (cb5_5.tint_symbol_3[3u].z * cb11_11.tint_symbol_4[2u].z);
  r3.z = ((-(r4.xxxx)).z + r4.z);
  r4.x = fma(r3.y, r3.z, r4.x);
  let v_15 = (r4.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_16 = r3;
  r3 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  r4.x = fma(v4.z, r3.x, -1.0f);
  r3.x = fma(r3.x, r4.x, 1.0f);
  r3.y = (r3.x * r3.y);
  let v_17 = -(r0.xyxz);
  let v_18 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_17.xyw);
  r4 = vec4<f32>(v_18.xy, r4.z, v_18.z);
  let v_19 = fma(r3.yyy, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r1.w = (r1.w * cb11_11.tint_symbol_4[2u].x);
  let v_20 = ((-(r0.xyzx)).xyz + r4.zzz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = fma(r1.www, r4.xyz, r0.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  r1.w = fma((-(r3.zzzz)).w, r3.x, 1.0f);
  r1.z = clamp(((r1.wwww * r1.zzzz)).z, 0.0f, 1.0f);
  r1.w = (v4.x * cb11_11.tint_symbol_4[2u].w);
  r1.w = (r2.w * r1.w);
  r1.w = (r1.w * 0.75f);
  r2.w = dot(v3.xyz, v3.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_22 = -(cb3_3.tint_symbol_2[0u].xyzx);
  r3 = vec4<f32>(((v_22.xyz + vec3<f32>(0.0f, 0.0f, -1.0f))).xyz, r3.w);
  let v_23 = fma(cb11_11.tint_symbol_4[6u].www, r3.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  let v_24 = (r1.www * cb11_11.tint_symbol_4[6u].xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = -(r3.xyzx);
  let v_26 = fma(v3.xyz, r2.www, v_25.xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_27 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_27.xyz, r3.w);
  r1.w = dot(r2.xyz, r3.xyz);
  r1.w = clamp(((r1.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r2.w = fma(r3.w, 15.0f, 0.00000000999999993923f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * r2.w);
  r1.w = exp2(r1.w);
  let v_28 = fma(r4.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = min(r0.xyz, vec3<f32>(240.0f));
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_31.xyz, r3.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_32 = (r1.www * r3.xyz);
  r4 = vec4<f32>(v_32.xyz, r4.w);
  let v_33 = fma(r3.xyz, r1.www, v_22.xyz);
  r5 = vec4<f32>(v_33.xyz, r5.w);
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_34 = (r1.www * r5.xyz);
  r5 = vec4<f32>(v_34.xyz, r5.w);
  let v_35 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_35.xy, r1.zw);
  r1.w = fma(r3.w, cb11_11.tint_symbol_4[4u].x, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_36 = -(r1.wwww);
  r2.w = fma(r3.w, cb11_11.tint_symbol_4[4u].x, v_36.w);
  r1.w = (r1.w * 558.0f);
  r1.w = fma(r2.w, 3.0f, r1.w);
  r2.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_37 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_37.xyz, r3.w);
  let v_38 = (r3.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r6 = vec4<f32>(v_38.xyz, r6.w);
  let v_39 = fma(r3.xxx, cb6_6.tint_symbol_5[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_39.xyz, r6.w);
  let v_40 = fma(r3.zzz, cb6_6.tint_symbol_5[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_40.xyz, r6.w);
  let v_41 = fma(r6.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  let v_42 = &(x0[0u]);
  let v_43 = r7;
  *(v_42) = vec4<f32>(v_43.xyz, (*(v_42)).w);
  let v_44 = fma(r6.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r8 = vec4<f32>(v_44.xyz, r8.w);
  let v_45 = &(x0[1u]);
  let v_46 = r8;
  *(v_45) = vec4<f32>(v_46.xyz, (*(v_45)).w);
  let v_47 = fma(r6.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r9 = vec4<f32>(v_47.xyz, r9.w);
  let v_48 = &(x0[2u]);
  let v_49 = r9;
  *(v_48) = vec4<f32>(v_49.xyz, (*(v_48)).w);
  let v_50 = fma(r6.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r6 = vec4<f32>(v_50.xyz, r6.w);
  let v_51 = &(x0[3u]);
  let v_52 = r6;
  *(v_51) = vec4<f32>(v_52.xyz, (*(v_51)).w);
  let v_53 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_54 = r10;
  r10 = vec4<f32>(v_54.x, v_53.x, v_54.z, v_53.y);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_55 = abs(r9.yyyy);
  r4.w = max(v_55.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_56 = (bitcast<u32>(r4.w) != 0u);
  let v_57 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_57, v_56);
  let v_58 = abs(r8.yyyy);
  r5.w = max(v_58.w, abs(r8.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_59 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_59 != 0u));
  let v_60 = abs(r7.yyyy);
  r5.w = max(v_60.w, abs(r7.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_61 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_61 != 0u));
  let v_62 = x0[bitcast<i32>(r3.w)];
  r7 = vec4<f32>(v_62.xyz, r7.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.w = (r3.w + 0.5f);
  r4.w = (r4.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r3.w = dot(r8, cb6_6.tint_symbol_5[12u]);
  r5.w = dot(r8, cb6_6.tint_symbol_5[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r7.z);
  let v_63 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_63.xy, r9.z, v_63.z);
  r9.z = dpdx(r3.w);
  let v_64 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_64.xyz, r11.w);
  r11.w = dpdy(r3.w);
  let v_65 = (r9.yw * r11.yw);
  r6 = vec4<f32>(r6.xy, v_65.xy);
  let v_66 = -(r6.zwzz);
  let v_67 = fma(r9.xz, r11.xz, v_66.xy);
  r12 = vec4<f32>(v_67.xy, r12.zw);
  r6.z = (1.0f / r12.x);
  r6.w = (r9.z * r11.y);
  let v_68 = -(r6.wwww);
  r12.z = fma(r9.x, r11.w, v_68.z);
  let v_69 = (r6.zz * r12.yz);
  r6 = vec4<f32>(r6.xy, v_69.xy);
  let v_70 = max(r6.zw, vec2<f32>());
  r6 = vec4<f32>(r6.xy, v_70.xy);
  let v_71 = min(r6.zw, vec2<f32>(0.5f));
  r6 = vec4<f32>(r6.xy, v_71.xy);
  r3.w = fma((-(r5.wwww)).w, r6.z, r3.w);
  r3.w = fma((-(r5.wwww)).w, r6.w, r3.w);
  let v_72 = bitcast<u32>(r4.w);
  let v_73 = r3.w;
  r10.z = select(r7.z, v_73, (v_72 != 0u));
  r8.z = 0.0f;
  let v_74 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_74.xyz, r7.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_75.xy, r10.zw);
  let v_76 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_76.xyz, r9.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_77.xy, r10.zw);
  let v_78 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_78.xyz, r11.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_79.xy, r10.zw);
  let v_80 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_80.xyz, r12.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_81.xy, r10.zw);
  let v_82 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_82.xyz, r13.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_83.xy, r10.zw);
  let v_84 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_84.xyz, r14.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_85.xy, r10.zw);
  let v_86 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_86.xyz, r15.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_87.xy, r10.zw);
  let v_88 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_88.xyz, r16.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_89.xy, r10.zw);
  let v_90 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_90.xyz, r17.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_91.xy, r10.zw);
  let v_92 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_92.xyz, r18.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_93.xy, r10.zw);
  let v_94 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_94.xyz, r19.w);
  let v_95 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_95.xy, r10.zw);
  let v_96 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_96.xyz, r20.w);
  let v_97 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_97.xy, r10.zw);
  let v_98 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_98.xyz, r21.w);
  let v_99 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_99.xy, r10.zw);
  let v_100 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_100.xyz, r22.w);
  let v_101 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_101.xy, r10.zw);
  let v_102 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_102.xyz, r23.w);
  let v_103 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_103.xy, r10.zw);
  let v_104 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_104.xyz, r8.w);
  let v_105 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_105.xy, r7.z);
  let v_106 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_106.xy, r9.z);
  let v_107 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_107.xy, r11.z);
  let v_108 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_108.xy, r12.z);
  let v_109 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_109.xy, r13.z);
  let v_110 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_110.xy, r14.z);
  let v_111 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_111.xy, r15.z);
  let v_112 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_112.xy, r16.z);
  let v_113 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_113.xy, r17.z);
  let v_114 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_114.xy, r18.z);
  let v_115 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_115.xy, r19.z);
  let v_116 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_116.xy, r20.z);
  let v_117 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_117.xy, r21.z);
  let v_118 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_118.xy, r22.z);
  let v_119 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_119.xy, r23.z);
  let v_120 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_120.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r3.w = dot(r7, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_121 = abs(r6.yyyy);
  r4.w = max(v_121.w, abs(r6.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r4.w * r2.w);
  r2.w = fma(r3.w, 0.0625f, r2.w);
  r2.w = (r2.w * r2.w);
  r2.w = min(r2.w, 1.0f);
  r3.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_5[3u].z);
  let v_122 = -(r2.wwww);
  r2.w = fma(r3.w, v_122.w, r2.w);
  r6.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_123 = r6;
  r6 = vec4<f32>(v_123.x, 0.0f, v_123.z, 0.5f);
  let v_124 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r6.xy);
  r6 = vec4<f32>(v_124.xy, r6.zw);
  r7 = textureSample(t12, s12, r6.xyxx.xy);
  r6.z = r7.y;
  r6 = textureSample(t13, s13, r6.zwzz.xy);
  r2.w = (r2.w * r6.x);
  let v_125 = dot(r2.xyz, v_22.xyz);
  r3.w = clamp(vec4<f32>(v_125, v_125, v_125, v_125).w, 0.0f, 1.0f);
  let v_126 = dot(r4.xyz, r2.xyz);
  r6.x = clamp(vec4<f32>(v_126, v_126, v_126, v_126).x, 0.0f, 1.0f);
  let v_127 = dot(r5.xyz, v_22.xyz);
  r6.y = clamp(vec4<f32>(v_127, v_127, v_127, v_127).y, 0.0f, 1.0f);
  let v_128 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_128.xy, r6.zw);
  let v_129 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_129.xy);
  let v_130 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_130.xy);
  let v_131 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_131.xy, r6.zw);
  r4.w = ((-(cb11_11.tint_symbol_4[3u].wwww)).w + 1.0f);
  let v_132 = fma(cb11_11.tint_symbol_4[3u].ww, r6.xy, r4.ww);
  r6 = vec4<f32>(v_132.xy, r6.zw);
  let v_133 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(r6.xy, v_133.xy);
  r4.w = (r6.z * 0.125f);
  r5.w = fma((-(r1.zzzz)).w, r6.x, 1.0f);
  r5.x = dot(r2.xyz, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r6.w);
  r5.x = exp2(r5.x);
  r5.x = (r6.y * r5.x);
  r4.w = (r4.w * r5.x);
  r1.z = (r1.z * r4.w);
  r1.z = (r3.w * r1.z);
  r3.w = (r3.w * r5.w);
  let v_134 = fma(r0.xyz, r3.www, r1.zzz);
  r5 = vec4<f32>(v_134.xyz, r5.w);
  let v_135 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_135.xyz, r5.w);
  r0.w = fma(v1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_136 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_136.xyz, r6.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_137 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_137.xyz, r7.w);
  let v_138 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_138.xyz, r7.w);
  let v_139 = fma(r6.xyz, r1.zzz, r7.xyz);
  r6 = vec4<f32>(v_139.xyz, r6.w);
  let v_140 = (r1.yyy * r6.xyz);
  r6 = vec4<f32>(v_140.xyz, r6.w);
  let v_141 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(v_141.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_142 = dot(r8.xyz, r2.xyz);
  r0.w = clamp(vec4<f32>(v_142, v_142, v_142, v_142).w, 0.0f, 1.0f);
  let v_143 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r7.xyz);
  r7 = vec4<f32>(v_143.xyz, r7.w);
  let v_144 = fma(r7.xyz, r1.xxx, r6.xyz);
  r6 = vec4<f32>(v_144.xyz, r6.w);
  let v_145 = (r5.www * r6.xyz);
  r6 = vec4<f32>(v_145.xyz, r6.w);
  let v_146 = (r0.xyz * r6.xyz);
  r0 = vec4<f32>(v_146.xyz, r0.w);
  let v_147 = fma(r5.xyz, r2.www, r0.xyz);
  r0 = vec4<f32>(v_147.xyz, r0.w);
  r0.w = ((-(r5.wwww)).w + 1.0f);
  r1.z = dot((-(r4.xyzx)).xyz, r2.xyz);
  r1.z = (r1.z + r1.z);
  let v_148 = -(r1.zzzz);
  let v_149 = -(r4.xyzx);
  let v_150 = fma(r2.xyz, v_148.xyz, v_149.xyz);
  r2 = vec4<f32>(v_150.xyz, r2.w);
  let v_151 = clamp(((r1.wwww * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_151.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.w = (r1.z * cb5_5.tint_symbol_3[6u].z);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  r4.x = fma(r1.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.z = (r1.z * r1.z);
  r1.z = fma(r1.z, 5.0f, r2.w);
  let v_152 = bitcast<u32>(r3.w);
  let v_153 = r4.x;
  r1.z = select(r1.z, v_153, (v_152 != 0u));
  let v_154 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_154.xy, r2.z, v_154.z);
  r3.w = (abs(r2.zzzz).w + 1.0f);
  let v_155 = (r2.xyw / r3.www);
  r2 = vec4<f32>(v_155.xy, r2.z, v_155.z);
  let v_156 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_156.xy, r2.z, v_156.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_157 = bitcast<vec2<u32>>(r2.zz);
  let v_158 = r2.xy;
  let v_159 = select(r2.wy, v_158, (v_157 != vec2<u32>()));
  r2 = vec4<f32>(v_159.xy, r2.zw);
  let v_160 = r1.z;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_160);
  r1.x = max(r1.y, r1.x);
  let v_161 = (r1.xxx * r2.xyz);
  r1 = vec4<f32>(v_161.xyz, r1.w);
  let v_162 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_162.xyz, r2.w);
  let v_163 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_163.xyz, r2.w);
  let v_164 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_164.xyz, r1.w);
  let v_165 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_165.xyz, r0.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r1.x = sqrt(r0.w);
  let v_166 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_166.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r3.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_167 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_167 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_168 = (r0.www * r3.xyz);
  r2 = vec4<f32>(v_168.xyz, r2.w);
  let v_169 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_169, v_169, v_169, v_169).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_170 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_170, v_170, v_170, v_170).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_171 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_171.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_172 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_172.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_173 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_173.xyz, r2.w);
  let v_174 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_174.xyz, r2.w);
  let v_175 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_175.xyz, r3.w);
  let v_176 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_176.xyz, r2.w);
  let v_177 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_178 = (r2.xyz + v_177.xyz);
  r2 = vec4<f32>(v_178.xyz, r2.w);
  let v_179 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_179.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_180 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_180.xy, r1.z, v_180.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_181 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_181.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_182 = -(r0.xyxz);
  let v_183 = fma(r1.xyw, r0.www, v_182.xyw);
  r1 = vec4<f32>(v_183.xy, r1.z, v_183.z);
  let v_184 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_184.xyz, r0.w);
  let v_185 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_185.xyz, o0.w);
  o0.w = cb2_2.tint_symbol_1[15u].x;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_186 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_186);
  return o0;
}
