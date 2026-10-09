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

struct cb7_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb7_struct_1;

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

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

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
  let v_36 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_36.xyz, r7.w);
  let v_37 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r6 = vec4<f32>(v_37.xy, r6.z, v_37.z);
  let v_38 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r6.xyw);
  r6 = vec4<f32>(v_38.xyz, r6.w);
  let v_39 = fma(r6.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_39.xyz, r7.w);
  let v_40 = &(x0[0u]);
  let v_41 = r7;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = fma(r6.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_42.xyz, r8.w);
  let v_43 = &(x0[1u]);
  let v_44 = r8;
  *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
  let v_45 = fma(r6.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_45.xyz, r9.w);
  let v_46 = &(x0[2u]);
  let v_47 = r9;
  *(v_46) = vec4<f32>(v_47.xyz, (*(v_46)).w);
  let v_48 = fma(r6.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r6 = vec4<f32>(v_48.xyz, r6.w);
  let v_49 = &(x0[3u]);
  let v_50 = r6;
  *(v_49) = vec4<f32>(v_50.xyz, (*(v_49)).w);
  let v_51 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_52 = r10;
  r10 = vec4<f32>(v_52.x, v_51.x, v_52.z, v_51.y);
  r4.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_53 = abs(r9.yyyy);
  r5.w = max(v_53.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_54 = (bitcast<u32>(r5.w) != 0u);
  let v_55 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_55, v_54);
  let v_56 = abs(r8.yyyy);
  r6.z = max(v_56.z, abs(r8.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_57 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_57 != 0u));
  let v_58 = abs(r7.yyyy);
  r6.z = max(v_58.z, abs(r7.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_59 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_59 != 0u));
  let v_60 = x0[bitcast<i32>(r4.w)];
  r7 = vec4<f32>(v_60.xyz, r7.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r4.w = dot(r8, cb6_6.tint_symbol_6[12u]);
  r6.z = dot(r8, cb6_6.tint_symbol_6[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r7.z);
  let v_61 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_61.xy, r9.z, v_61.z);
  r9.z = dpdx(r4.w);
  let v_62 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_62.xyz, r11.w);
  r11.w = dpdy(r4.w);
  let v_63 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_63.xy, r7.zw);
  let v_64 = -(r7.xyxx);
  let v_65 = fma(r9.xz, r11.xz, v_64.xy);
  r12 = vec4<f32>(v_65.xy, r12.zw);
  r6.w = (1.0f / r12.x);
  r7.x = (r9.z * r11.y);
  let v_66 = -(r7.xxxx);
  r12.z = fma(r9.x, r11.w, v_66.z);
  let v_67 = (r6.ww * r12.yz);
  r7 = vec4<f32>(v_67.xy, r7.zw);
  let v_68 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_68.xy, r7.zw);
  let v_69 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_69.xy, r7.zw);
  r4.w = fma((-(r6.zzzz)).w, r7.x, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r7.y, r4.w);
  let v_70 = bitcast<u32>(r5.w);
  let v_71 = r4.w;
  r10.z = select(r7.z, v_71, (v_70 != 0u));
  r8.z = 0.0f;
  let v_72 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_72.xyz, r7.w);
  let v_73 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_73.xy, r10.zw);
  let v_74 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_74.xyz, r9.w);
  let v_75 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_75.xy, r10.zw);
  let v_76 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_76.xyz, r11.w);
  let v_77 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_77.xy, r10.zw);
  let v_78 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_78.xyz, r12.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_79.xy, r10.zw);
  let v_80 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_80.xyz, r13.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_81.xy, r10.zw);
  let v_82 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_82.xyz, r14.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_83.xy, r10.zw);
  let v_84 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_84.xyz, r15.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_85.xy, r10.zw);
  let v_86 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_86.xyz, r16.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_87.xy, r10.zw);
  let v_88 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_88.xyz, r17.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_89.xy, r10.zw);
  let v_90 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_90.xyz, r18.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_91.xy, r10.zw);
  let v_92 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_92.xyz, r19.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_93.xy, r10.zw);
  let v_94 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_94.xyz, r20.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_95.xy, r10.zw);
  let v_96 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_96.xyz, r21.w);
  let v_97 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_97.xy, r10.zw);
  let v_98 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_98.xyz, r22.w);
  let v_99 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_99.xy, r10.zw);
  let v_100 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_100.xyz, r23.w);
  let v_101 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_101.xy, r10.zw);
  let v_102 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_102.xyz, r8.w);
  let v_103 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_103.xy, r7.z);
  let v_104 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_104.xy, r9.z);
  let v_105 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_105.xy, r11.z);
  let v_106 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_106.xy, r12.z);
  let v_107 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_107.xy, r13.z);
  let v_108 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_108.xy, r14.z);
  let v_109 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_109.xy, r15.z);
  let v_110 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_110.xy, r16.z);
  let v_111 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_111.xy, r17.z);
  let v_112 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_112.xy, r18.z);
  let v_113 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_113.xy, r19.z);
  let v_114 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_114.xy, r20.z);
  let v_115 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_115.xy, r21.z);
  let v_116 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_116.xy, r22.z);
  let v_117 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_117.xy, r23.z);
  let v_118 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_118.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r4.w = dot(r7, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_119 = abs(r6.yyyy);
  r5.w = max(v_119.w, abs(r6.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_6[3u].z);
  let v_120 = -(r3.wwww);
  r3.w = fma(r4.w, v_120.w, r3.w);
  r6.x = (-(cb6_6.tint_symbol_6[15u].wwww)).x;
  let v_121 = r6;
  r6 = vec4<f32>(v_121.x, 0.0f, v_121.z, 0.5f);
  let v_122 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r6.xy);
  r6 = vec4<f32>(v_122.xy, r6.zw);
  r7 = textureSample(t12, s12, r6.xyxx.xy);
  r6.z = r7.y;
  r6 = textureSample(t13, s13, r6.zwzz.xy);
  r3.w = (r3.w * r6.x);
  let v_123 = dot(r2.xyz, v_21.xyz);
  r4.w = clamp(vec4<f32>(v_123, v_123, v_123, v_123).w, 0.0f, 1.0f);
  let v_124 = dot(r4.xyz, r2.xyz);
  r6.x = clamp(vec4<f32>(v_124, v_124, v_124, v_124).x, 0.0f, 1.0f);
  let v_125 = dot(r5.xyz, v_21.xyz);
  r6.y = clamp(vec4<f32>(v_125, v_125, v_125, v_125).y, 0.0f, 1.0f);
  let v_126 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_126.xy, r6.zw);
  let v_127 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_127.xy);
  let v_128 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_128.xy);
  let v_129 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_129.xy, r6.zw);
  r5.w = ((-(cb11_11.tint_symbol_4[3u].wwww)).w + 1.0f);
  let v_130 = fma(cb11_11.tint_symbol_4[3u].ww, r6.xy, r5.ww);
  r6 = vec4<f32>(v_130.xy, r6.zw);
  let v_131 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(r6.xy, v_131.xy);
  r6.z = (r6.z * 0.125f);
  r6.x = fma((-(r1.yyyy)).x, r6.x, 1.0f);
  r5.x = dot(r2.xyz, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r6.w);
  r5.x = exp2(r5.x);
  r5.x = (r6.y * r5.x);
  r5.x = (r6.z * r5.x);
  r5.x = (r1.y * r5.x);
  r5.x = (r4.w * r5.x);
  r4.w = (r4.w * r6.x);
  let v_132 = fma(r0.xyz, r4.www, r5.xxx);
  r5 = vec4<f32>(v_132.xyz, r5.w);
  let v_133 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_133.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r8 = vec4<f32>(vec3<f32>(), r8.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_134 = (v_29.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_134.xyz, r7.w);
    let v_135 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_135.xyz, r8.w);
    r7.w = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.x = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r7.w = clamp(((r7.wwww / r8.xxxx)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_136 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_136.xyz, r8.w);
    let v_137 = (r8.xyz + v_29.xyz);
    r8 = vec4<f32>(v_137.xyz, r8.w);
    let v_138 = bitcast<vec3<u32>>(r6.yyy);
    let v_139 = r7.xyz;
    let v_140 = select(r8.xyz, v_139, (v_138 != vec3<u32>()));
    r7 = vec4<f32>(v_140.xyz, r7.w);
    r6.y = dot(r7.xyz, r7.xyz);
    let v_141 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_141.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_142 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_142.xyz, r7.w);
    r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[11u].w);
    r6.y = (r6.y / r7.w);
    let v_143 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r7.xyz, v_143.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_144 = dot(r7.xyz, r2.xyz);
    r8.x = clamp(vec4<f32>(v_144, v_144, v_144, v_144).x, 0.0f, 1.0f);
    r7.w = (r7.w * r8.x);
    r8.x = (r6.y * r7.w);
    let v_145 = (r8.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_145.xyz, r8.w);
    let v_146 = (r0.xyz * r8.xyz);
    r8 = vec4<f32>(v_146.xyz, r8.w);
    let v_147 = fma(r3.xyz, r1.zzz, r7.xyz);
    r7 = vec4<f32>(v_147.xyz, r7.w);
    r8.w = dot(r7.xyz, r7.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_148 = (r7.xyz * r8.www);
    r7 = vec4<f32>(v_148.xyz, r7.w);
    let v_149 = dot(r7.xyz, r4.xyz);
    r8.w = clamp(vec4<f32>(v_149, v_149, v_149, v_149).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.x = (r8.w * r8.w);
    r9.x = (r9.x * r9.x);
    r8.w = (r8.w * r9.x);
    r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
    let v_150 = dot(r7.xyz, r2.xyz);
    r7.x = clamp(vec4<f32>(v_150, v_150, v_150, v_150).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r6.w * r7.x);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r8.w);
    r7.x = (r7.w * r7.x);
    r6.y = (r6.y * r7.x);
    r6.y = (r6.z * r6.y);
    let v_151 = (r6.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_151.xyz, r7.w);
  }
  r6.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.y) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    let v_152 = bitcast<u32>(r7.w);
    let v_153 = r6.y;
    r4.w = select(r4.w, v_153, (v_152 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_154 = (v_29.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_154.xyz, r9.w);
      let v_155 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_155.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_156 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_156.xyz, r10.w);
      let v_157 = (r10.xyz + v_29.xyz);
      r10 = vec4<f32>(v_157.xyz, r10.w);
      let v_158 = bitcast<vec3<u32>>(r6.yyy);
      let v_159 = r9.xyz;
      let v_160 = select(r10.xyz, v_159, (v_158 != vec3<u32>()));
      r9 = vec4<f32>(v_160.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_161 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_161.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_162 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_162.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[12u].w);
      r6.y = (r6.y / r7.w);
      let v_163 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r9.xyz, v_163.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_164 = dot(r9.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_164, v_164, v_164, v_164).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_165 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_165.xyz, r10.w);
      let v_166 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_166.xyz, r8.w);
      let v_167 = fma(r3.xyz, r1.zzz, r9.xyz);
      r9 = vec4<f32>(v_167.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_168 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_168.xyz, r9.w);
      let v_169 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_169, v_169, v_169, v_169).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_170 = dot(r9.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_170, v_170, v_170, v_170).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_171 = fma(r6.yyy, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_171.xyz, r7.w);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_172 = (v_29.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_172.xyz, r9.w);
      let v_173 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_174 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      let v_175 = (r10.xyz + v_29.xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      let v_176 = bitcast<vec3<u32>>(r6.yyy);
      let v_177 = r9.xyz;
      let v_178 = select(r10.xyz, v_177, (v_176 != vec3<u32>()));
      r9 = vec4<f32>(v_178.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_179 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_179.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_180 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_180.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[13u].w);
      r6.y = (r6.y / r7.w);
      let v_181 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r9.xyz, v_181.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_182 = dot(r9.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_182, v_182, v_182, v_182).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_183 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_183.xyz, r10.w);
      let v_184 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_184.xyz, r8.w);
      let v_185 = fma(r3.xyz, r1.zzz, r9.xyz);
      r9 = vec4<f32>(v_185.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_186 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_186.xyz, r9.w);
      let v_187 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_187, v_187, v_187, v_187).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_188 = dot(r9.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_188, v_188, v_188, v_188).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_189 = fma(r6.yyy, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_189.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_190 = (v_29.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_190.xyz, r9.w);
      let v_191 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_191.xyz, r10.w);
      r6.y = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r6.y = clamp(((r6.yyyy / r7.wwww)).y, 0.0f, 1.0f);
      r6.y = (r6.y * cb3_3.tint_symbol_2[22u].w);
      let v_192 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_192.xyz, r10.w);
      let v_193 = (r10.xyz + v_29.xyz);
      r10 = vec4<f32>(v_193.xyz, r10.w);
      let v_194 = bitcast<vec3<u32>>(r4.www);
      let v_195 = r9.xyz;
      let v_196 = select(r10.xyz, v_195, (v_194 != vec3<u32>()));
      r9 = vec4<f32>(v_196.xyz, r9.w);
      r4.w = dot(r9.xyz, r9.xyz);
      let v_197 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_197.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      r6.y = inverseSqrt(r6.y);
      let v_198 = (r6.yyy * r9.xyz);
      r9 = vec4<f32>(v_198.xyz, r9.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r6.y = fma(r6.y, r4.w, cb3_3.tint_symbol_2[14u].w);
      r4.w = (r4.w / r6.y);
      let v_199 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.y = dot(r9.xyz, v_199.xyz);
      r6.y = clamp(fma(r6.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_200 = dot(r9.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_200, v_200, v_200, v_200).w, 0.0f, 1.0f);
      r6.y = (r6.y * r7.w);
      r7.w = (r4.w * r6.y);
      let v_201 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_201.xyz, r10.w);
      let v_202 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_202.xyz, r8.w);
      let v_203 = fma(r3.xyz, r1.zzz, r9.xyz);
      r3 = vec4<f32>(v_203.xyz, r3.w);
      r1.z = dot(r3.xyz, r3.xyz);
      r1.z = inverseSqrt(r1.z);
      let v_204 = (r1.zzz * r3.xyz);
      r3 = vec4<f32>(v_204.xyz, r3.w);
      let v_205 = dot(r3.xyz, r4.xyz);
      r1.z = clamp(vec4<f32>(v_205, v_205, v_205, v_205).z, 0.0f, 1.0f);
      r1.z = ((-(r1.zzzz)).z + 1.0f);
      r7.w = (r1.z * r1.z);
      r7.w = (r7.w * r7.w);
      r1.z = (r1.z * r7.w);
      r1.z = fma(cb11_11.tint_symbol_4[3u].w, r1.z, r5.w);
      let v_206 = dot(r3.xyz, r2.xyz);
      r3.x = clamp(vec4<f32>(v_206, v_206, v_206, v_206).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r6.w);
      r3.x = exp2(r3.x);
      r1.z = (r1.z * r3.x);
      r1.z = (r6.y * r1.z);
      r1.z = (r4.w * r1.z);
      r1.z = (r6.z * r1.z);
      let v_207 = fma(r1.zzz, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_207.xyz, r7.w);
    }
  }
  r1.z = (r6.x * r6.x);
  r1.y = (r1.y * r1.y);
  let v_208 = (r7.xyz * r1.yyy);
  r3 = vec4<f32>(v_208.xyz, r3.w);
  let v_209 = fma(r1.zzz, r8.xyz, r3.xyz);
  r3 = vec4<f32>(v_209.xyz, r3.w);
  let v_210 = fma(r5.xyz, r3.www, r3.xyz);
  r3 = vec4<f32>(v_210.xyz, r3.w);
  r1.y = fma(v1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.y = (r1.y * cb3_3.tint_symbol_2[44u].w);
  r1.y = max(r1.y, 0.0f);
  let v_211 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_211.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_212 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(r6.x, v_212.xyz);
  let v_213 = (r6.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(r6.x, v_213.xyz);
  let v_214 = fma(r5.xyz, r1.zzz, r6.yzw);
  r5 = vec4<f32>(v_214.xyz, r5.w);
  let v_215 = (r0.www * r5.xyz);
  r5 = vec4<f32>(v_215.xyz, r5.w);
  let v_216 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(r1.x, v_216.xyz);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_217 = dot(r7.xyz, r2.xyz);
  r3.w = clamp(vec4<f32>(v_217, v_217, v_217, v_217).w, 0.0f, 1.0f);
  let v_218 = fma(cb3_3.tint_symbol_2[49u].xyz, r3.www, r1.yzw);
  r1 = vec4<f32>(r1.x, v_218.xyz);
  let v_219 = fma(r1.yzw, r1.xxx, r5.xyz);
  r1 = vec4<f32>(r1.x, v_219.xyz);
  let v_220 = (r6.xxx * r1.yzw);
  r1 = vec4<f32>(r1.x, v_220.xyz);
  let v_221 = fma(r1.yzw, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_221.xyz, r0.w);
  r1.y = ((-(r6.xxxx)).y + 1.0f);
  r1.z = dot((-(r4.xyzx)).xyz, r2.xyz);
  r1.z = (r1.z + r1.z);
  let v_222 = -(r1.zzzz);
  let v_223 = -(r4.xyzx);
  let v_224 = fma(r2.xyz, v_222.xyz, v_223.xyz);
  r2 = vec4<f32>(v_224.xyz, r2.w);
  let v_225 = clamp(((r2.wwww * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_225.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.z * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.w)));
  r3.y = fma(r1.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.z = (r1.z * r1.z);
  r1.z = fma(r1.z, 5.0f, r2.w);
  let v_226 = bitcast<u32>(r3.x);
  let v_227 = r3.y;
  r1.z = select(r1.z, v_227, (v_226 != 0u));
  let v_228 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_228.xy, r2.z, v_228.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_229 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_229.xy, r2.z, v_229.z);
  let v_230 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_230.xy, r2.z, v_230.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_231 = bitcast<vec2<u32>>(r2.zz);
  let v_232 = r2.xy;
  let v_233 = select(r2.wy, v_232, (v_231 != vec2<u32>()));
  r2 = vec4<f32>(v_233.xy, r2.zw);
  let v_234 = r1.z;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_234);
  r0.w = max(r0.w, r1.x);
  let v_235 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_235.xyz, r2.w);
  let v_236 = (r1.www * r2.xyz);
  r1 = vec4<f32>(v_236.x, r1.y, v_236.yz);
  let v_237 = (r1.xzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(v_237.x, r1.y, v_237.yz);
  let v_238 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.xzw);
  r1 = vec4<f32>(v_238.x, r1.y, v_238.yz);
  let v_239 = fma(r1.xzw, r1.yyy, r0.xyz);
  r0 = vec4<f32>(v_239.xyz, r0.w);
  let v_240 = v5.xy;
  let v_241 = max(v_240, vec2<f32>(-2147483648.0f));
  let v_242 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_241), vec2<i32>(2147483647i), (v_241 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_240 == v_240))));
  r1 = vec4<f32>(v_242.xy, r1.zw);
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
  let v_243 = bitcast<u32>(r1.y);
  let v_244 = cb2_2.tint_symbol_1[15u].x;
  r0.w = select(r1.x, v_244, (v_243 != 0u));
  let v_245 = bitcast<vec4<u32>>(r1.yyyy);
  r0 = select(r0, vec4<f32>(), (v_245 != vec4<u32>()));
  let v_246 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_246.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_247 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_247);
  return o0;
}
