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
  r0 = textureSample(t3, s3, v0.zwzz.xy);
  r1 = textureSample(t0, s0, v0.xyxx.xy);
  r1.w = dot(v1.xyz, v1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_3 = (r1.www * v1.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  r3 = textureSample(t5, s5, v0.zwzz.xy);
  let v_4 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_4.xy, r3.zw);
  r2.w = dot(r3.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r3.x = (r2.w * cb11_11.tint_symbol_4[4u].y);
  let v_5 = (r1.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r0.w = (r0.w * cb11_11.tint_symbol_4[1u].w);
  let v_6 = -(r1.xyzx);
  let v_7 = fma(r0.xyz, cb11_11.tint_symbol_4[1u].xyz, v_6.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = fma(r0.www, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = (r0.xyz * v4.xxx);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (v4.xx * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_10.xy, r1.zw);
  r0.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  r0.w = (r0.w * r1.y);
  r1.y = (r3.x * v4.x);
  r1.y = (r1.y * v1.w);
  let v_11 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_11.xy, r3.zw);
  r1.z = (r3.x * v4.z);
  let v_12 = (r3.yy * v0.xy);
  let v_13 = r3;
  r3 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  r4 = textureSample(t4, s4, r3.yzyy.xy);
  r3.y = (cb5_5.tint_symbol_3[3u].z * cb11_11.tint_symbol_4[2u].z);
  r3.z = ((-(r4.xxxx)).z + r4.z);
  r4.x = fma(r3.y, r3.z, r4.x);
  let v_14 = (r4.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_15 = r3;
  r3 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  r4.x = fma(v4.z, r3.x, -1.0f);
  r3.x = fma(r3.x, r4.x, 1.0f);
  r3.y = (r3.x * r3.y);
  let v_16 = -(r0.xyxz);
  let v_17 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_16.xyw);
  r4 = vec4<f32>(v_17.xy, r4.z, v_17.z);
  let v_18 = fma(r3.yyy, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r1.z = (r1.z * cb11_11.tint_symbol_4[2u].x);
  let v_19 = ((-(r0.xyzx)).xyz + r4.zzz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = fma(r1.zzz, r4.xyz, r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r1.z = fma((-(r3.zzzz)).z, r3.x, 1.0f);
  r1.y = clamp(((r1.zzzz * r1.yyyy)).y, 0.0f, 1.0f);
  r1.z = (v4.x * cb11_11.tint_symbol_4[2u].w);
  r1.z = (r2.w * r1.z);
  r1.z = (r1.z * 0.75f);
  r2.w = dot(v3.xyz, v3.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_21 = -(cb3_3.tint_symbol_2[0u].xyzx);
  r3 = vec4<f32>(((v_21.xyz + vec3<f32>(0.0f, 0.0f, -1.0f))).xyz, r3.w);
  let v_22 = fma(cb11_11.tint_symbol_4[6u].www, r3.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  let v_23 = (r1.zzz * cb11_11.tint_symbol_4[6u].xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = -(r3.xyzx);
  let v_25 = fma(v3.xyz, r2.www, v_24.xyz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_26 = (r1.zzz * r3.xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r1.z = dot(r2.xyz, r3.xyz);
  r1.z = clamp(((r1.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r2.w = fma(r3.w, 15.0f, 0.00000000999999993923f);
  r1.z = log2(r1.z);
  r1.z = (r1.z * r2.w);
  r1.z = exp2(r1.z);
  let v_27 = fma(r4.xyz, r1.zzz, r0.xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = min(r0.xyz, vec3<f32>(240.0f));
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_30 = (r1.zzz * r3.xyz);
  r4 = vec4<f32>(v_30.xyz, r4.w);
  let v_31 = fma(r3.xyz, r1.zzz, v_21.xyz);
  r5 = vec4<f32>(v_31.xyz, r5.w);
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_32 = (r1.zzz * r5.xyz);
  r5 = vec4<f32>(v_32.xyz, r5.w);
  r1.x = (r1.x * r1.x);
  r0 = (r0 * r0);
  r1.z = fma(r3.w, cb11_11.tint_symbol_4[4u].x, -500.0f);
  r1.z = max(r1.z, 0.0f);
  let v_33 = -(r1.zzzz);
  r2.w = fma(r3.w, cb11_11.tint_symbol_4[4u].x, v_33.w);
  r1.z = (r1.z * 558.0f);
  r1.z = fma(r2.w, 3.0f, r1.z);
  r2.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_34 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_34.xyz, r3.w);
  let v_35 = (r3.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r6 = vec4<f32>(v_35.xyz, r6.w);
  let v_36 = fma(r3.xxx, cb6_6.tint_symbol_5[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_36.xyz, r6.w);
  let v_37 = fma(r3.zzz, cb6_6.tint_symbol_5[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_37.xyz, r6.w);
  let v_38 = fma(r6.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r7 = vec4<f32>(v_38.xyz, r7.w);
  let v_39 = &(x0[0u]);
  let v_40 = r7;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = fma(r6.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r8 = vec4<f32>(v_41.xyz, r8.w);
  let v_42 = &(x0[1u]);
  let v_43 = r8;
  *(v_42) = vec4<f32>(v_43.xyz, (*(v_42)).w);
  let v_44 = fma(r6.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r9 = vec4<f32>(v_44.xyz, r9.w);
  let v_45 = &(x0[2u]);
  let v_46 = r9;
  *(v_45) = vec4<f32>(v_46.xyz, (*(v_45)).w);
  let v_47 = fma(r6.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r6 = vec4<f32>(v_47.xyz, r6.w);
  let v_48 = &(x0[3u]);
  let v_49 = r6;
  *(v_48) = vec4<f32>(v_49.xyz, (*(v_48)).w);
  let v_50 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_51 = r10;
  r10 = vec4<f32>(v_51.x, v_50.x, v_51.z, v_50.y);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_52 = abs(r9.yyyy);
  r4.w = max(v_52.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_53 = (bitcast<u32>(r4.w) != 0u);
  let v_54 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_54, v_53);
  let v_55 = abs(r8.yyyy);
  r5.w = max(v_55.w, abs(r8.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_56 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_56 != 0u));
  let v_57 = abs(r7.yyyy);
  r5.w = max(v_57.w, abs(r7.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_58 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_58 != 0u));
  let v_59 = x0[bitcast<i32>(r3.w)];
  r7 = vec4<f32>(v_59.xyz, r7.w);
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
  let v_60 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_60.xy, r9.z, v_60.z);
  r9.z = dpdx(r3.w);
  let v_61 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_61.xyz, r11.w);
  r11.w = dpdy(r3.w);
  let v_62 = (r9.yw * r11.yw);
  r6 = vec4<f32>(r6.xy, v_62.xy);
  let v_63 = -(r6.zwzz);
  let v_64 = fma(r9.xz, r11.xz, v_63.xy);
  r12 = vec4<f32>(v_64.xy, r12.zw);
  r6.z = (1.0f / r12.x);
  r6.w = (r9.z * r11.y);
  let v_65 = -(r6.wwww);
  r12.z = fma(r9.x, r11.w, v_65.z);
  let v_66 = (r6.zz * r12.yz);
  r6 = vec4<f32>(r6.xy, v_66.xy);
  let v_67 = max(r6.zw, vec2<f32>());
  r6 = vec4<f32>(r6.xy, v_67.xy);
  let v_68 = min(r6.zw, vec2<f32>(0.5f));
  r6 = vec4<f32>(r6.xy, v_68.xy);
  r3.w = fma((-(r5.wwww)).w, r6.z, r3.w);
  r3.w = fma((-(r5.wwww)).w, r6.w, r3.w);
  let v_69 = bitcast<u32>(r4.w);
  let v_70 = r3.w;
  r10.z = select(r7.z, v_70, (v_69 != 0u));
  r8.z = 0.0f;
  let v_71 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_71.xyz, r7.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_72.xy, r10.zw);
  let v_73 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_73.xyz, r9.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_74.xy, r10.zw);
  let v_75 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_75.xyz, r11.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_76.xy, r10.zw);
  let v_77 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_77.xyz, r12.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_78.xy, r10.zw);
  let v_79 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_79.xyz, r13.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_80.xy, r10.zw);
  let v_81 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_81.xyz, r14.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_82.xy, r10.zw);
  let v_83 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_83.xyz, r15.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_84.xy, r10.zw);
  let v_85 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_85.xyz, r16.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_86.xy, r10.zw);
  let v_87 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_87.xyz, r17.w);
  let v_88 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_88.xy, r10.zw);
  let v_89 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_89.xyz, r18.w);
  let v_90 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_90.xy, r10.zw);
  let v_91 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_91.xyz, r19.w);
  let v_92 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_92.xy, r10.zw);
  let v_93 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_93.xyz, r20.w);
  let v_94 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_94.xy, r10.zw);
  let v_95 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_95.xyz, r21.w);
  let v_96 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_96.xy, r10.zw);
  let v_97 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_97.xyz, r22.w);
  let v_98 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_98.xy, r10.zw);
  let v_99 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_99.xyz, r23.w);
  let v_100 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_100.xy, r10.zw);
  let v_101 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_101.xyz, r8.w);
  let v_102 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_102.xy, r7.z);
  let v_103 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_103.xy, r9.z);
  let v_104 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_104.xy, r11.z);
  let v_105 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_105.xy, r12.z);
  let v_106 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_106.xy, r13.z);
  let v_107 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_107.xy, r14.z);
  let v_108 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_108.xy, r15.z);
  let v_109 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_109.xy, r16.z);
  let v_110 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_110.xy, r17.z);
  let v_111 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_111.xy, r18.z);
  let v_112 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_112.xy, r19.z);
  let v_113 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_113.xy, r20.z);
  let v_114 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_114.xy, r21.z);
  let v_115 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_115.xy, r22.z);
  let v_116 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_116.xy, r23.z);
  let v_117 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_117.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r3.w = dot(r7, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_118 = abs(r6.yyyy);
  r4.w = max(v_118.w, abs(r6.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r4.w * r2.w);
  r2.w = fma(r3.w, 0.0625f, r2.w);
  r2.w = (r2.w * r2.w);
  r2.w = min(r2.w, 1.0f);
  r3.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_5[3u].z);
  let v_119 = -(r2.wwww);
  r2.w = fma(r3.w, v_119.w, r2.w);
  r6.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_120 = r6;
  r6 = vec4<f32>(v_120.x, 0.0f, v_120.z, 0.5f);
  let v_121 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r6.xy);
  r6 = vec4<f32>(v_121.xy, r6.zw);
  r7 = textureSample(t12, s12, r6.xyxx.xy);
  r6.z = r7.y;
  r6 = textureSample(t13, s13, r6.zwzz.xy);
  r2.w = (r2.w * r6.x);
  let v_122 = dot(r2.xyz, v_21.xyz);
  r3.w = clamp(vec4<f32>(v_122, v_122, v_122, v_122).w, 0.0f, 1.0f);
  let v_123 = dot(r4.xyz, r2.xyz);
  r6.x = clamp(vec4<f32>(v_123, v_123, v_123, v_123).x, 0.0f, 1.0f);
  let v_124 = dot(r5.xyz, v_21.xyz);
  r6.y = clamp(vec4<f32>(v_124, v_124, v_124, v_124).y, 0.0f, 1.0f);
  let v_125 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_125.xy, r6.zw);
  let v_126 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_126.xy);
  let v_127 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_127.xy);
  let v_128 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_128.xy, r6.zw);
  r4.w = ((-(cb11_11.tint_symbol_4[3u].wwww)).w + 1.0f);
  let v_129 = fma(cb11_11.tint_symbol_4[3u].ww, r6.xy, r4.ww);
  r6 = vec4<f32>(v_129.xy, r6.zw);
  let v_130 = (r1.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(r6.xy, v_130.xy);
  r4.w = (r6.z * 0.125f);
  r5.w = fma((-(r1.yyyy)).w, r6.x, 1.0f);
  r5.x = dot(r2.xyz, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r6.w);
  r5.x = exp2(r5.x);
  r5.x = (r6.y * r5.x);
  r4.w = (r4.w * r5.x);
  r1.y = (r1.y * r4.w);
  r1.y = (r3.w * r1.y);
  r3.w = (r3.w * r5.w);
  let v_131 = fma(r0.xyz, r3.www, r1.yyy);
  r5 = vec4<f32>(v_131.xyz, r5.w);
  let v_132 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_132.xyz, r5.w);
  r1.y = fma(v1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.y = (r1.y * cb3_3.tint_symbol_2[44u].w);
  r1.y = max(r1.y, 0.0f);
  let v_133 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_133.xyz, r6.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_134 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_134.xyz, r7.w);
  let v_135 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_135.xyz, r7.w);
  let v_136 = fma(r6.xyz, r1.www, r7.xyz);
  r6 = vec4<f32>(v_136.xyz, r6.w);
  let v_137 = (r0.www * r6.xyz);
  r6 = vec4<f32>(v_137.xyz, r6.w);
  let v_138 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(v_138.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_139 = dot(r8.xyz, r2.xyz);
  r1.y = clamp(vec4<f32>(v_139, v_139, v_139, v_139).y, 0.0f, 1.0f);
  let v_140 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.yyy, r7.xyz);
  r7 = vec4<f32>(v_140.xyz, r7.w);
  let v_141 = fma(r7.xyz, r1.xxx, r6.xyz);
  r6 = vec4<f32>(v_141.xyz, r6.w);
  let v_142 = (r5.www * r6.xyz);
  r6 = vec4<f32>(v_142.xyz, r6.w);
  let v_143 = (r0.xyz * r6.xyz);
  r0 = vec4<f32>(v_143.xyz, r0.w);
  let v_144 = fma(r5.xyz, r2.www, r0.xyz);
  r0 = vec4<f32>(v_144.xyz, r0.w);
  r1.y = ((-(r5.wwww)).y + 1.0f);
  r1.w = dot((-(r4.xyzx)).xyz, r2.xyz);
  r1.w = (r1.w + r1.w);
  let v_145 = -(r1.wwww);
  let v_146 = -(r4.xyzx);
  let v_147 = fma(r2.xyz, v_145.xyz, v_146.xyz);
  r2 = vec4<f32>(v_147.xyz, r2.w);
  let v_148 = clamp(((r1.zzzz * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_148.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.w = (r1.z * cb5_5.tint_symbol_3[6u].z);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  r4.x = fma(r1.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.z = (r1.z * r1.z);
  r1.z = fma(r1.z, 5.0f, r2.w);
  let v_149 = bitcast<u32>(r3.w);
  let v_150 = r4.x;
  r1.z = select(r1.z, v_150, (v_149 != 0u));
  let v_151 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_151.xy, r2.z, v_151.z);
  r3.w = (abs(r2.zzzz).w + 1.0f);
  let v_152 = (r2.xyw / r3.www);
  r2 = vec4<f32>(v_152.xy, r2.z, v_152.z);
  let v_153 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_153.xy, r2.z, v_153.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_154 = bitcast<vec2<u32>>(r2.zz);
  let v_155 = r2.xy;
  let v_156 = select(r2.wy, v_155, (v_154 != vec2<u32>()));
  r2 = vec4<f32>(v_156.xy, r2.zw);
  let v_157 = r1.z;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_157);
  r0.w = max(r0.w, r1.x);
  let v_158 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_158.xyz, r2.w);
  let v_159 = (r1.www * r2.xyz);
  r1 = vec4<f32>(v_159.x, r1.y, v_159.yz);
  let v_160 = (r1.xzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(v_160.x, r1.y, v_160.yz);
  let v_161 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.xzw);
  r1 = vec4<f32>(v_161.x, r1.y, v_161.yz);
  let v_162 = fma(r1.xzw, r1.yyy, r0.xyz);
  r0 = vec4<f32>(v_162.xyz, r0.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r1.x = sqrt(r0.w);
  let v_163 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_163.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r3.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_164 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_164 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_165 = (r0.www * r3.xyz);
  r2 = vec4<f32>(v_165.xyz, r2.w);
  let v_166 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_166, v_166, v_166, v_166).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_167 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_167, v_167, v_167, v_167).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_168 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_168.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_169 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_169.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_170 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_170.xyz, r2.w);
  let v_171 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_171.xyz, r2.w);
  let v_172 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_172.xyz, r3.w);
  let v_173 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_173.xyz, r2.w);
  let v_174 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_175 = (r2.xyz + v_174.xyz);
  r2 = vec4<f32>(v_175.xyz, r2.w);
  let v_176 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_176.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_177 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_177.xy, r1.z, v_177.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_178 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_178.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_179 = -(r0.xyxz);
  let v_180 = fma(r1.xyw, r0.www, v_179.xyw);
  r1 = vec4<f32>(v_180.xy, r1.z, v_180.z);
  let v_181 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_181.xyz, r0.w);
  let v_182 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_182.xyz, o0.w);
  o0.w = cb2_2.tint_symbol_1[15u].x;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_183 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_183);
  return o0;
}
