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

var<private> r24 : vec4<f32>;

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
  let v_29 = -(v2.xyzx);
  let v_30 = (v_29.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_30.xyz, r3.w);
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_31 = (r1.zzz * r3.xyz);
  r4 = vec4<f32>(v_31.xyz, r4.w);
  let v_32 = fma(r3.xyz, r1.zzz, v_21.xyz);
  r5 = vec4<f32>(v_32.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_33 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_33.xyz, r5.w);
  r1.x = (r1.x * r1.x);
  r0 = (r0 * r0);
  r2.w = fma(r3.w, cb11_11.tint_symbol_4[4u].x, -500.0f);
  r2.w = max(r2.w, 0.0f);
  let v_34 = -(r2.wwww);
  r3.w = fma(r3.w, cb11_11.tint_symbol_4[4u].x, v_34.w);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.w, 3.0f, r2.w);
  r3.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_35 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_35.xyz, r6.w);
  let v_36 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_36.xyz, r7.w);
  let v_37 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_37.xyz, r7.w);
  let v_38 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_38.xyz, r7.w);
  let v_39 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_39.xyz, r8.w);
  let v_40 = &(x0[0u]);
  let v_41 = r8;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_42.xyz, r9.w);
  let v_43 = &(x0[1u]);
  let v_44 = r9;
  *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
  let v_45 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_45.xyz, r10.w);
  let v_46 = &(x0[2u]);
  let v_47 = r10;
  *(v_46) = vec4<f32>(v_47.xyz, (*(v_46)).w);
  let v_48 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_48.xyz, r7.w);
  let v_49 = &(x0[3u]);
  let v_50 = r7;
  *(v_49) = vec4<f32>(v_50.xyz, (*(v_49)).w);
  let v_51 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_52 = r11;
  r11 = vec4<f32>(v_52.x, v_51.x, v_52.z, v_51.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_53 = abs(r10.yyyy);
  r5.w = max(v_53.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_54 = (bitcast<u32>(r5.w) != 0u);
  let v_55 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_55, v_54);
  let v_56 = abs(r9.yyyy);
  r6.w = max(v_56.w, abs(r9.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_57 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_57 != 0u));
  let v_58 = abs(r8.yyyy);
  r6.w = max(v_58.w, abs(r8.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_59 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_59 != 0u));
  let v_60 = x0[bitcast<i32>(r4.w)];
  r8 = vec4<f32>(v_60.xyz, r8.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r4.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r6.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r8.z);
  let v_61 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_61.xy, r10.z, v_61.z);
  r10.z = dpdx(r4.w);
  let v_62 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_62.xyz, r12.w);
  r12.w = dpdy(r4.w);
  let v_63 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_63.xy);
  let v_64 = -(r7.zwzz);
  let v_65 = fma(r10.xz, r12.xz, v_64.xy);
  r13 = vec4<f32>(v_65.xy, r13.zw);
  r7.z = (1.0f / r13.x);
  r7.w = (r10.z * r12.y);
  let v_66 = -(r7.wwww);
  r13.z = fma(r10.x, r12.w, v_66.z);
  let v_67 = (r7.zz * r13.yz);
  r7 = vec4<f32>(r7.xy, v_67.xy);
  let v_68 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_68.xy);
  let v_69 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_69.xy);
  r4.w = fma((-(r6.wwww)).w, r7.z, r4.w);
  r4.w = fma((-(r6.wwww)).w, r7.w, r4.w);
  let v_70 = bitcast<u32>(r5.w);
  let v_71 = r4.w;
  r11.z = select(r8.z, v_71, (v_70 != 0u));
  r9.z = 0.0f;
  let v_72 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_72.xyz, r8.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_74.xyz, r10.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_76.xyz, r12.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_78.xyz, r13.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_80.xyz, r14.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_82.xyz, r15.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_84.xyz, r16.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_86.xyz, r17.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_88.xyz, r18.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_90.xyz, r19.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_92.xyz, r20.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_94.xyz, r21.w);
  let v_95 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_95.xy, r11.zw);
  let v_96 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_96.xyz, r22.w);
  let v_97 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_97.xy, r11.zw);
  let v_98 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_98.xyz, r23.w);
  let v_99 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_99.xy, r11.zw);
  let v_100 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_100.xyz, r24.w);
  let v_101 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_101.xy, r11.zw);
  let v_102 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_102.xyz, r9.w);
  let v_103 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_103.xy, r8.z);
  let v_104 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_104.xy, r10.z);
  let v_105 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_105.xy, r12.z);
  let v_106 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_106.xy, r13.z);
  let v_107 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_107.xy, r14.z);
  let v_108 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_108.xy, r15.z);
  let v_109 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_109.xy, r16.z);
  let v_110 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_110.xy, r17.z);
  let v_111 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_111.xy, r18.z);
  let v_112 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_112.xy, r19.z);
  let v_113 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_113.xy, r20.z);
  let v_114 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_114.xy, r21.z);
  let v_115 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_115.xy, r22.z);
  let v_116 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_116.xy, r23.z);
  let v_117 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_117.xy, r24.z);
  let v_118 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_118.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r4.w = dot(r8, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_119 = abs(r7.yyyy);
  r5.w = max(v_119.w, abs(r7.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_120 = -(r3.wwww);
  r3.w = fma(r4.w, v_120.w, r3.w);
  r7.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_121 = r7;
  r7 = vec4<f32>(v_121.x, 0.0f, v_121.z, 0.5f);
  let v_122 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r7.xy);
  r7 = vec4<f32>(v_122.xy, r7.zw);
  r8 = textureSample(t12, s12, r7.xyxx.xy);
  r7.z = r8.y;
  r7 = textureSample(t13, s13, r7.zwzz.xy);
  r3.w = (r3.w * r7.x);
  let v_123 = dot(r2.xyz, v_21.xyz);
  r4.w = clamp(vec4<f32>(v_123, v_123, v_123, v_123).w, 0.0f, 1.0f);
  let v_124 = dot(r4.xyz, r2.xyz);
  r7.x = clamp(vec4<f32>(v_124, v_124, v_124, v_124).x, 0.0f, 1.0f);
  let v_125 = dot(r5.xyz, v_21.xyz);
  r7.y = clamp(vec4<f32>(v_125, v_125, v_125, v_125).y, 0.0f, 1.0f);
  let v_126 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_126.xy, r7.zw);
  let v_127 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_127.xy);
  let v_128 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_128.xy);
  let v_129 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_129.xy, r7.zw);
  r5.w = ((-(cb11_11.tint_symbol_4[3u].wwww)).w + 1.0f);
  let v_130 = fma(cb11_11.tint_symbol_4[3u].ww, r7.xy, r5.ww);
  r7 = vec4<f32>(v_130.xy, r7.zw);
  let v_131 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_131.xy);
  r6.w = (r7.z * 0.125f);
  r7.x = fma((-(r1.yyyy)).x, r7.x, 1.0f);
  r5.x = dot(r2.xyz, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.w);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r6.w * r5.x);
  r5.x = (r1.y * r5.x);
  r5.x = (r4.w * r5.x);
  r4.w = (r4.w * r7.x);
  let v_132 = fma(r0.xyz, r4.www, r5.xxx);
  r5 = vec4<f32>(v_132.xyz, r5.w);
  let v_133 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_133.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_134 = (v_29.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_134.xyz, r8.w);
    let v_135 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_135.xyz, r9.w);
    r7.z = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.w = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r7.z = clamp(((r7.zzzz / r8.wwww)).z, 0.0f, 1.0f);
    r7.z = (r7.z * cb3_3.tint_symbol_2[19u].w);
    let v_136 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_136.xyz, r9.w);
    let v_137 = (r9.xyz + v_29.xyz);
    r9 = vec4<f32>(v_137.xyz, r9.w);
    let v_138 = bitcast<vec3<u32>>(r7.yyy);
    let v_139 = r8.xyz;
    let v_140 = select(r9.xyz, v_139, (v_138 != vec3<u32>()));
    r8 = vec4<f32>(v_140.xyz, r8.w);
    r7.y = dot(r8.xyz, r8.xyz);
    let v_141 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_141.xyz, r8.w);
    r7.z = dot(r8.xyz, r8.xyz);
    r7.z = inverseSqrt(r7.z);
    let v_142 = (r7.zzz * r8.xyz);
    r8 = vec4<f32>(v_142.xyz, r8.w);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r7.z);
    let v_143 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.z = dot(r8.xyz, v_143.xyz);
    r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_144 = dot(r8.xyz, r2.xyz);
    r8.w = clamp(vec4<f32>(v_144, v_144, v_144, v_144).w, 0.0f, 1.0f);
    r7.z = (r7.z * r8.w);
    r8.w = (r7.y * r7.z);
    let v_145 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_145.xyz, r9.w);
    let v_146 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_146.xyz, r9.w);
    let v_147 = fma(r3.xyz, r1.zzz, r8.xyz);
    r8 = vec4<f32>(v_147.xyz, r8.w);
    r8.w = dot(r8.xyz, r8.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_148 = (r8.www * r8.xyz);
    r8 = vec4<f32>(v_148.xyz, r8.w);
    let v_149 = dot(r8.xyz, r4.xyz);
    r8.w = clamp(vec4<f32>(v_149, v_149, v_149, v_149).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.w = (r8.w * r8.w);
    r9.w = (r9.w * r9.w);
    r8.w = (r8.w * r9.w);
    r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
    let v_150 = dot(r8.xyz, r2.xyz);
    r8.x = clamp(vec4<f32>(v_150, v_150, v_150, v_150).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.w * r8.x);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r8.w);
    r7.z = (r7.z * r8.x);
    r7.y = (r7.y * r7.z);
    r7.y = (r6.w * r7.y);
    let v_151 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_151.xyz, r8.w);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.y)));
    let v_152 = bitcast<u32>(r7.z);
    let v_153 = r7.y;
    r4.w = select(r4.w, v_153, (v_152 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_154 = (v_29.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_154.xyz, r10.w);
      let v_155 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_155.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r8.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[20u].w);
      let v_156 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      let v_157 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      let v_158 = bitcast<vec3<u32>>(r7.yyy);
      let v_159 = r10.xyz;
      let v_160 = select(r11.xyz, v_159, (v_158 != vec3<u32>()));
      r10 = vec4<f32>(v_160.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_161 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_161.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_162 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_162.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r7.z);
      let v_163 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.z = dot(r10.xyz, v_163.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      let v_164 = dot(r10.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_164, v_164, v_164, v_164).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_165 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      let v_166 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_166.xyz, r9.w);
      let v_167 = fma(r3.xyz, r1.zzz, r10.xyz);
      r10 = vec4<f32>(v_167.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_168 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      let v_169 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_169, v_169, v_169, v_169).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_170 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_170, v_170, v_170, v_170).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r6.w * r7.y);
      let v_171 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_171.xyz, r8.w);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_172 = (v_29.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r8.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[21u].w);
      let v_174 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_175.xyz, r11.w);
      let v_176 = bitcast<vec3<u32>>(r7.yyy);
      let v_177 = r10.xyz;
      let v_178 = select(r11.xyz, v_177, (v_176 != vec3<u32>()));
      r10 = vec4<f32>(v_178.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_179 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_179.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_180 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_180.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r7.z);
      let v_181 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.z = dot(r10.xyz, v_181.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      let v_182 = dot(r10.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_182, v_182, v_182, v_182).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_183 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_183.xyz, r11.w);
      let v_184 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_184.xyz, r9.w);
      let v_185 = fma(r3.xyz, r1.zzz, r10.xyz);
      r10 = vec4<f32>(v_185.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_186 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_186.xyz, r10.w);
      let v_187 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_187, v_187, v_187, v_187).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_188 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_188, v_188, v_188, v_188).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r6.w * r7.y);
      let v_189 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_189.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_190 = (v_29.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_190.xyz, r10.w);
      let v_191 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_191.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r8.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[22u].w);
      let v_192 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_192.xyz, r11.w);
      let v_193 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_193.xyz, r11.w);
      let v_194 = bitcast<vec3<u32>>(r7.yyy);
      let v_195 = r10.xyz;
      let v_196 = select(r11.xyz, v_195, (v_194 != vec3<u32>()));
      r10 = vec4<f32>(v_196.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_197 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_197.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_198 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_198.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[14u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[14u].w);
      r7.y = (r7.y / r7.z);
      let v_199 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.z = dot(r10.xyz, v_199.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).z, 0.0f, 1.0f);
      let v_200 = dot(r10.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_200, v_200, v_200, v_200).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_201 = (r8.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_201.xyz, r11.w);
      let v_202 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_202.xyz, r9.w);
      let v_203 = fma(r3.xyz, r1.zzz, r10.xyz);
      r10 = vec4<f32>(v_203.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_204 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_204.xyz, r10.w);
      let v_205 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_205, v_205, v_205, v_205).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_206 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_206, v_206, v_206, v_206).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r6.w * r7.y);
      let v_207 = fma(r7.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_207.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_208 = (v_29.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_208.xyz, r10.w);
      let v_209 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_209.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r8.w = (cb3_3.tint_symbol_2[23u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r8.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[23u].w);
      let v_210 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.zzz, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_210.xyz, r11.w);
      let v_211 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_211.xyz, r11.w);
      let v_212 = bitcast<vec3<u32>>(r7.yyy);
      let v_213 = r10.xyz;
      let v_214 = select(r11.xyz, v_213, (v_212 != vec3<u32>()));
      r10 = vec4<f32>(v_214.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_215 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_215.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_216 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_216.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[15u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[15u].w);
      r7.y = (r7.y / r7.z);
      let v_217 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.z = dot(r10.xyz, v_217.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).z, 0.0f, 1.0f);
      let v_218 = dot(r10.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_218, v_218, v_218, v_218).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_219 = (r8.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_219.xyz, r11.w);
      let v_220 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_220.xyz, r9.w);
      let v_221 = fma(r3.xyz, r1.zzz, r10.xyz);
      r10 = vec4<f32>(v_221.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_222 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_222.xyz, r10.w);
      let v_223 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_223, v_223, v_223, v_223).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_224 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_224, v_224, v_224, v_224).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r6.w * r7.y);
      let v_225 = fma(r7.yyy, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_225.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_226 = (v_29.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_226.xyz, r10.w);
      let v_227 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_227.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r8.w = (cb3_3.tint_symbol_2[24u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r8.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[24u].w);
      let v_228 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.zzz, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_228.xyz, r11.w);
      let v_229 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_229.xyz, r11.w);
      let v_230 = bitcast<vec3<u32>>(r7.yyy);
      let v_231 = r10.xyz;
      let v_232 = select(r11.xyz, v_231, (v_230 != vec3<u32>()));
      r10 = vec4<f32>(v_232.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_233 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_233.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_234 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_234.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[16u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[16u].w);
      r7.y = (r7.y / r7.z);
      let v_235 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.z = dot(r10.xyz, v_235.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).z, 0.0f, 1.0f);
      let v_236 = dot(r10.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_236, v_236, v_236, v_236).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_237 = (r8.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_237.xyz, r11.w);
      let v_238 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_238.xyz, r9.w);
      let v_239 = fma(r3.xyz, r1.zzz, r10.xyz);
      r10 = vec4<f32>(v_239.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_240 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_240.xyz, r10.w);
      let v_241 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_241, v_241, v_241, v_241).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_242 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_242, v_242, v_242, v_242).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r6.w * r7.y);
      let v_243 = fma(r7.yyy, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_243.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_244 = (v_29.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_244.xyz, r10.w);
      let v_245 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_245.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r8.w = (cb3_3.tint_symbol_2[25u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r8.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[25u].w);
      let v_246 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.zzz, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_246.xyz, r11.w);
      let v_247 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_247.xyz, r11.w);
      let v_248 = bitcast<vec3<u32>>(r7.yyy);
      let v_249 = r10.xyz;
      let v_250 = select(r11.xyz, v_249, (v_248 != vec3<u32>()));
      r10 = vec4<f32>(v_250.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_251 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_251.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_252 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_252.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[17u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[17u].w);
      r7.y = (r7.y / r7.z);
      let v_253 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.z = dot(r10.xyz, v_253.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).z, 0.0f, 1.0f);
      let v_254 = dot(r10.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_254, v_254, v_254, v_254).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_255 = (r8.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_255.xyz, r11.w);
      let v_256 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_256.xyz, r9.w);
      let v_257 = fma(r3.xyz, r1.zzz, r10.xyz);
      r10 = vec4<f32>(v_257.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_258 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_258.xyz, r10.w);
      let v_259 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_259, v_259, v_259, v_259).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_260 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_260, v_260, v_260, v_260).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r6.w * r7.y);
      let v_261 = fma(r7.yyy, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_261.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_262 = (v_29.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_262.xyz, r10.w);
      let v_263 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_263.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.z = (cb3_3.tint_symbol_2[26u].w + 0.00009999999747378752f);
      r7.y = clamp(((r7.yyyy / r7.zzzz)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[26u].w);
      let v_264 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_264.xyz, r11.w);
      let v_265 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_265.xyz, r11.w);
      let v_266 = bitcast<vec3<u32>>(r4.www);
      let v_267 = r10.xyz;
      let v_268 = select(r11.xyz, v_267, (v_266 != vec3<u32>()));
      r10 = vec4<f32>(v_268.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_269 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_269.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_270 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_270.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r4.w, cb3_3.tint_symbol_2[18u].w);
      r4.w = (r4.w / r7.y);
      let v_271 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.y = dot(r10.xyz, v_271.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_272 = dot(r10.xyz, r2.xyz);
      r7.z = clamp(vec4<f32>(v_272, v_272, v_272, v_272).z, 0.0f, 1.0f);
      r7.y = (r7.y * r7.z);
      r7.z = (r4.w * r7.y);
      let v_273 = (r7.zzz * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_273.xyz, r11.w);
      let v_274 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_274.xyz, r9.w);
      let v_275 = fma(r3.xyz, r1.zzz, r10.xyz);
      r3 = vec4<f32>(v_275.xyz, r3.w);
      r1.z = dot(r3.xyz, r3.xyz);
      r1.z = inverseSqrt(r1.z);
      let v_276 = (r1.zzz * r3.xyz);
      r3 = vec4<f32>(v_276.xyz, r3.w);
      let v_277 = dot(r3.xyz, r4.xyz);
      r1.z = clamp(vec4<f32>(v_277, v_277, v_277, v_277).z, 0.0f, 1.0f);
      r1.z = ((-(r1.zzzz)).z + 1.0f);
      r7.z = (r1.z * r1.z);
      r7.z = (r7.z * r7.z);
      r1.z = (r1.z * r7.z);
      r1.z = fma(cb11_11.tint_symbol_4[3u].w, r1.z, r5.w);
      let v_278 = dot(r3.xyz, r2.xyz);
      r3.x = clamp(vec4<f32>(v_278, v_278, v_278, v_278).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r7.w);
      r3.x = exp2(r3.x);
      r1.z = (r1.z * r3.x);
      r1.z = (r7.y * r1.z);
      r1.z = (r4.w * r1.z);
      r1.z = (r6.w * r1.z);
      let v_279 = fma(r1.zzz, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_279.xyz, r8.w);
    }
  }
  r1.z = (r7.x * r7.x);
  r1.y = (r1.y * r1.y);
  let v_280 = (r8.xyz * r1.yyy);
  r3 = vec4<f32>(v_280.xyz, r3.w);
  let v_281 = fma(r1.zzz, r9.xyz, r3.xyz);
  r3 = vec4<f32>(v_281.xyz, r3.w);
  let v_282 = fma(r5.xyz, r3.www, r3.xyz);
  r3 = vec4<f32>(v_282.xyz, r3.w);
  r1.y = fma(v1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.y = (r1.y * cb3_3.tint_symbol_2[44u].w);
  r1.y = max(r1.y, 0.0f);
  let v_283 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_283.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_284 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(r7.x, v_284.xyz);
  let v_285 = (r7.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(r7.x, v_285.xyz);
  let v_286 = fma(r5.xyz, r1.zzz, r7.yzw);
  r5 = vec4<f32>(v_286.xyz, r5.w);
  let v_287 = (r0.www * r5.xyz);
  r5 = vec4<f32>(v_287.xyz, r5.w);
  let v_288 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(r1.x, v_288.xyz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_289 = dot(r8.xyz, r2.xyz);
  r3.w = clamp(vec4<f32>(v_289, v_289, v_289, v_289).w, 0.0f, 1.0f);
  let v_290 = fma(cb3_3.tint_symbol_2[49u].xyz, r3.www, r1.yzw);
  r1 = vec4<f32>(r1.x, v_290.xyz);
  let v_291 = fma(r1.yzw, r1.xxx, r5.xyz);
  r1 = vec4<f32>(r1.x, v_291.xyz);
  let v_292 = (r7.xxx * r1.yzw);
  r1 = vec4<f32>(r1.x, v_292.xyz);
  let v_293 = fma(r1.yzw, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_293.xyz, r0.w);
  r1.y = ((-(r7.xxxx)).y + 1.0f);
  r1.z = dot((-(r4.xyzx)).xyz, r2.xyz);
  r1.z = (r1.z + r1.z);
  let v_294 = -(r1.zzzz);
  let v_295 = -(r4.xyzx);
  let v_296 = fma(r2.xyz, v_294.xyz, v_295.xyz);
  r2 = vec4<f32>(v_296.xyz, r2.w);
  let v_297 = clamp(((r2.wwww * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_297.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.z * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.w)));
  r3.y = fma(r1.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.z = (r1.z * r1.z);
  r1.z = fma(r1.z, 5.0f, r2.w);
  let v_298 = bitcast<u32>(r3.x);
  let v_299 = r3.y;
  r1.z = select(r1.z, v_299, (v_298 != 0u));
  let v_300 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_300.xy, r2.z, v_300.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_301 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_301.xy, r2.z, v_301.z);
  let v_302 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_302.xy, r2.z, v_302.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_303 = bitcast<vec2<u32>>(r2.zz);
  let v_304 = r2.xy;
  let v_305 = select(r2.wy, v_304, (v_303 != vec2<u32>()));
  r2 = vec4<f32>(v_305.xy, r2.zw);
  let v_306 = r1.z;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_306);
  r0.w = max(r0.w, r1.x);
  let v_307 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_307.xyz, r2.w);
  let v_308 = (r1.www * r2.xyz);
  r1 = vec4<f32>(v_308.x, r1.y, v_308.yz);
  let v_309 = (r1.xzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(v_309.x, r1.y, v_309.yz);
  let v_310 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.xzw);
  r1 = vec4<f32>(v_310.x, r1.y, v_310.yz);
  let v_311 = fma(r1.xzw, r1.yyy, r0.xyz);
  r0 = vec4<f32>(v_311.xyz, r0.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.w);
  let v_312 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_312.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_313 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_313 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_314 = (r0.www * r6.xyz);
  r2 = vec4<f32>(v_314.xyz, r2.w);
  let v_315 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_315, v_315, v_315, v_315).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_316 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_316, v_316, v_316, v_316).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_317 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_317.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_318 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_318.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_319 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_319.xyz, r2.w);
  let v_320 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_320.xyz, r2.w);
  let v_321 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_321.xyz, r3.w);
  let v_322 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_322.xyz, r2.w);
  let v_323 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_324 = (r2.xyz + v_323.xyz);
  r2 = vec4<f32>(v_324.xyz, r2.w);
  let v_325 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_325.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_326 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_326.xy, r1.z, v_326.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_327 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_327.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_328 = -(r0.xyxz);
  let v_329 = fma(r1.xyw, r0.www, v_328.xyw);
  r1 = vec4<f32>(v_329.xy, r1.z, v_329.z);
  let v_330 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_330.xyz, r0.w);
  let v_331 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_331.xyz, o0.w);
  o0.w = cb2_2.tint_symbol_1[15u].x;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_332 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_332);
  return o0;
}
