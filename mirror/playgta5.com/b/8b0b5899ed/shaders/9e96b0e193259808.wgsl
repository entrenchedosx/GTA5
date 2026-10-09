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
  let v_31 = -(v2.xyzx);
  let v_32 = (v_31.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_33 = (r1.www * r3.xyz);
  r4 = vec4<f32>(v_33.xyz, r4.w);
  let v_34 = fma(r3.xyz, r1.www, v_22.xyz);
  r5 = vec4<f32>(v_34.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_35 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_35.xyz, r5.w);
  let v_36 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_36.xy, r1.zw);
  r2.w = fma(r3.w, cb11_11.tint_symbol_4[4u].x, -500.0f);
  r2.w = max(r2.w, 0.0f);
  let v_37 = -(r2.wwww);
  r3.w = fma(r3.w, cb11_11.tint_symbol_4[4u].x, v_37.w);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.w, 3.0f, r2.w);
  r3.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_38 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_38.xyz, r6.w);
  let v_39 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_39.xyz, r7.w);
  let v_40 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r6 = vec4<f32>(v_40.xy, r6.z, v_40.z);
  let v_41 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r6.xyw);
  r6 = vec4<f32>(v_41.xyz, r6.w);
  let v_42 = fma(r6.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_42.xyz, r7.w);
  let v_43 = &(x0[0u]);
  let v_44 = r7;
  *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
  let v_45 = fma(r6.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_45.xyz, r8.w);
  let v_46 = &(x0[1u]);
  let v_47 = r8;
  *(v_46) = vec4<f32>(v_47.xyz, (*(v_46)).w);
  let v_48 = fma(r6.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_48.xyz, r9.w);
  let v_49 = &(x0[2u]);
  let v_50 = r9;
  *(v_49) = vec4<f32>(v_50.xyz, (*(v_49)).w);
  let v_51 = fma(r6.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r6 = vec4<f32>(v_51.xyz, r6.w);
  let v_52 = &(x0[3u]);
  let v_53 = r6;
  *(v_52) = vec4<f32>(v_53.xyz, (*(v_52)).w);
  let v_54 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_55 = r10;
  r10 = vec4<f32>(v_55.x, v_54.x, v_55.z, v_54.y);
  r4.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_56 = abs(r9.yyyy);
  r5.w = max(v_56.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_57 = (bitcast<u32>(r5.w) != 0u);
  let v_58 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_58, v_57);
  let v_59 = abs(r8.yyyy);
  r6.z = max(v_59.z, abs(r8.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_60 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_60 != 0u));
  let v_61 = abs(r7.yyyy);
  r6.z = max(v_61.z, abs(r7.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_62 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_62 != 0u));
  let v_63 = x0[bitcast<i32>(r4.w)];
  r7 = vec4<f32>(v_63.xyz, r7.w);
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
  let v_64 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_64.xy, r9.z, v_64.z);
  r9.z = dpdx(r4.w);
  let v_65 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_65.xyz, r11.w);
  r11.w = dpdy(r4.w);
  let v_66 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_66.xy, r7.zw);
  let v_67 = -(r7.xyxx);
  let v_68 = fma(r9.xz, r11.xz, v_67.xy);
  r12 = vec4<f32>(v_68.xy, r12.zw);
  r6.w = (1.0f / r12.x);
  r7.x = (r9.z * r11.y);
  let v_69 = -(r7.xxxx);
  r12.z = fma(r9.x, r11.w, v_69.z);
  let v_70 = (r6.ww * r12.yz);
  r7 = vec4<f32>(v_70.xy, r7.zw);
  let v_71 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_71.xy, r7.zw);
  let v_72 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_72.xy, r7.zw);
  r4.w = fma((-(r6.zzzz)).w, r7.x, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r7.y, r4.w);
  let v_73 = bitcast<u32>(r5.w);
  let v_74 = r4.w;
  r10.z = select(r7.z, v_74, (v_73 != 0u));
  r8.z = 0.0f;
  let v_75 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_75.xyz, r7.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_76.xy, r10.zw);
  let v_77 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_77.xyz, r9.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_78.xy, r10.zw);
  let v_79 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_79.xyz, r11.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_80.xy, r10.zw);
  let v_81 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_81.xyz, r12.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_82.xy, r10.zw);
  let v_83 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_83.xyz, r13.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_84.xy, r10.zw);
  let v_85 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_85.xyz, r14.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_86.xy, r10.zw);
  let v_87 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_87.xyz, r15.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_88.xy, r10.zw);
  let v_89 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_89.xyz, r16.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_90.xy, r10.zw);
  let v_91 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_91.xyz, r17.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_92.xy, r10.zw);
  let v_93 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_93.xyz, r18.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_94.xy, r10.zw);
  let v_95 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_95.xyz, r19.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_96.xy, r10.zw);
  let v_97 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_97.xyz, r20.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_98.xy, r10.zw);
  let v_99 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_99.xyz, r21.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_100.xy, r10.zw);
  let v_101 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_101.xyz, r22.w);
  let v_102 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_102.xy, r10.zw);
  let v_103 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_103.xyz, r23.w);
  let v_104 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_104.xy, r10.zw);
  let v_105 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_105.xyz, r8.w);
  let v_106 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_106.xy, r7.z);
  let v_107 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_107.xy, r9.z);
  let v_108 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_108.xy, r11.z);
  let v_109 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_109.xy, r12.z);
  let v_110 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_110.xy, r13.z);
  let v_111 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_111.xy, r14.z);
  let v_112 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_112.xy, r15.z);
  let v_113 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_113.xy, r16.z);
  let v_114 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_114.xy, r17.z);
  let v_115 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_115.xy, r18.z);
  let v_116 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_116.xy, r19.z);
  let v_117 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_117.xy, r20.z);
  let v_118 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_118.xy, r21.z);
  let v_119 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_119.xy, r22.z);
  let v_120 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_120.xy, r23.z);
  let v_121 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_121.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r4.w = dot(r7, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_122 = abs(r6.yyyy);
  r5.w = max(v_122.w, abs(r6.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_6[3u].z);
  let v_123 = -(r3.wwww);
  r3.w = fma(r4.w, v_123.w, r3.w);
  r6.x = (-(cb6_6.tint_symbol_6[15u].wwww)).x;
  let v_124 = r6;
  r6 = vec4<f32>(v_124.x, 0.0f, v_124.z, 0.5f);
  let v_125 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r6.xy);
  r6 = vec4<f32>(v_125.xy, r6.zw);
  r7 = textureSample(t12, s12, r6.xyxx.xy);
  r6.z = r7.y;
  r6 = textureSample(t13, s13, r6.zwzz.xy);
  r3.w = (r3.w * r6.x);
  let v_126 = dot(r2.xyz, v_22.xyz);
  r4.w = clamp(vec4<f32>(v_126, v_126, v_126, v_126).w, 0.0f, 1.0f);
  let v_127 = dot(r4.xyz, r2.xyz);
  r6.x = clamp(vec4<f32>(v_127, v_127, v_127, v_127).x, 0.0f, 1.0f);
  let v_128 = dot(r5.xyz, v_22.xyz);
  r6.y = clamp(vec4<f32>(v_128, v_128, v_128, v_128).y, 0.0f, 1.0f);
  let v_129 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_129.xy, r6.zw);
  let v_130 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_130.xy);
  let v_131 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_131.xy);
  let v_132 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_132.xy, r6.zw);
  r5.w = ((-(cb11_11.tint_symbol_4[3u].wwww)).w + 1.0f);
  let v_133 = fma(cb11_11.tint_symbol_4[3u].ww, r6.xy, r5.ww);
  r6 = vec4<f32>(v_133.xy, r6.zw);
  let v_134 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(r6.xy, v_134.xy);
  r6.z = (r6.z * 0.125f);
  r6.x = fma((-(r1.zzzz)).x, r6.x, 1.0f);
  r5.x = dot(r2.xyz, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r6.w);
  r5.x = exp2(r5.x);
  r5.x = (r6.y * r5.x);
  r5.x = (r6.z * r5.x);
  r5.x = (r1.z * r5.x);
  r5.x = (r4.w * r5.x);
  r4.w = (r4.w * r6.x);
  let v_135 = fma(r0.xyz, r4.www, r5.xxx);
  r5 = vec4<f32>(v_135.xyz, r5.w);
  let v_136 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_136.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r8 = vec4<f32>(vec3<f32>(), r8.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_137 = (v_31.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_137.xyz, r7.w);
    let v_138 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_138.xyz, r8.w);
    r7.w = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.x = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r7.w = clamp(((r7.wwww / r8.xxxx)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_139 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_139.xyz, r8.w);
    let v_140 = (r8.xyz + v_31.xyz);
    r8 = vec4<f32>(v_140.xyz, r8.w);
    let v_141 = bitcast<vec3<u32>>(r6.yyy);
    let v_142 = r7.xyz;
    let v_143 = select(r8.xyz, v_142, (v_141 != vec3<u32>()));
    r7 = vec4<f32>(v_143.xyz, r7.w);
    r6.y = dot(r7.xyz, r7.xyz);
    let v_144 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_144.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_145 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_145.xyz, r7.w);
    r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[11u].w);
    r6.y = (r6.y / r7.w);
    let v_146 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r7.xyz, v_146.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_147 = dot(r7.xyz, r2.xyz);
    r8.x = clamp(vec4<f32>(v_147, v_147, v_147, v_147).x, 0.0f, 1.0f);
    r7.w = (r7.w * r8.x);
    r8.x = (r6.y * r7.w);
    let v_148 = (r8.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_148.xyz, r8.w);
    let v_149 = (r0.xyz * r8.xyz);
    r8 = vec4<f32>(v_149.xyz, r8.w);
    let v_150 = fma(r3.xyz, r1.www, r7.xyz);
    r7 = vec4<f32>(v_150.xyz, r7.w);
    r8.w = dot(r7.xyz, r7.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_151 = (r7.xyz * r8.www);
    r7 = vec4<f32>(v_151.xyz, r7.w);
    let v_152 = dot(r7.xyz, r4.xyz);
    r8.w = clamp(vec4<f32>(v_152, v_152, v_152, v_152).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.x = (r8.w * r8.w);
    r9.x = (r9.x * r9.x);
    r8.w = (r8.w * r9.x);
    r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
    let v_153 = dot(r7.xyz, r2.xyz);
    r7.x = clamp(vec4<f32>(v_153, v_153, v_153, v_153).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r6.w * r7.x);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r8.w);
    r7.x = (r7.w * r7.x);
    r6.y = (r6.y * r7.x);
    r6.y = (r6.z * r6.y);
    let v_154 = (r6.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_154.xyz, r7.w);
  }
  r6.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.y) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    let v_155 = bitcast<u32>(r7.w);
    let v_156 = r6.y;
    r4.w = select(r4.w, v_156, (v_155 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_157 = (v_31.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_157.xyz, r9.w);
      let v_158 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_158.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_159 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_159.xyz, r10.w);
      let v_160 = (r10.xyz + v_31.xyz);
      r10 = vec4<f32>(v_160.xyz, r10.w);
      let v_161 = bitcast<vec3<u32>>(r6.yyy);
      let v_162 = r9.xyz;
      let v_163 = select(r10.xyz, v_162, (v_161 != vec3<u32>()));
      r9 = vec4<f32>(v_163.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_164 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_164.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_165 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_165.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[12u].w);
      r6.y = (r6.y / r7.w);
      let v_166 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r9.xyz, v_166.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_167 = dot(r9.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_167, v_167, v_167, v_167).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_168 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      let v_169 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_169.xyz, r8.w);
      let v_170 = fma(r3.xyz, r1.www, r9.xyz);
      r9 = vec4<f32>(v_170.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_171 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_171.xyz, r9.w);
      let v_172 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_173 = dot(r9.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_173, v_173, v_173, v_173).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_174 = fma(r6.yyy, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_174.xyz, r7.w);
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
      let v_175 = (v_31.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_175.xyz, r9.w);
      let v_176 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_176.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_177 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_177.xyz, r10.w);
      let v_178 = (r10.xyz + v_31.xyz);
      r10 = vec4<f32>(v_178.xyz, r10.w);
      let v_179 = bitcast<vec3<u32>>(r6.yyy);
      let v_180 = r9.xyz;
      let v_181 = select(r10.xyz, v_180, (v_179 != vec3<u32>()));
      r9 = vec4<f32>(v_181.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_182 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_182.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_183 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_183.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[13u].w);
      r6.y = (r6.y / r7.w);
      let v_184 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r9.xyz, v_184.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_185 = dot(r9.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_185, v_185, v_185, v_185).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_186 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_186.xyz, r10.w);
      let v_187 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_187.xyz, r8.w);
      let v_188 = fma(r3.xyz, r1.www, r9.xyz);
      r9 = vec4<f32>(v_188.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_189 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_189.xyz, r9.w);
      let v_190 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_190, v_190, v_190, v_190).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_191 = dot(r9.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_191, v_191, v_191, v_191).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_192 = fma(r6.yyy, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_192.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_193 = (v_31.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_193.xyz, r9.w);
      let v_194 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_194.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[22u].w);
      let v_195 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.www, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_195.xyz, r10.w);
      let v_196 = (r10.xyz + v_31.xyz);
      r10 = vec4<f32>(v_196.xyz, r10.w);
      let v_197 = bitcast<vec3<u32>>(r6.yyy);
      let v_198 = r9.xyz;
      let v_199 = select(r10.xyz, v_198, (v_197 != vec3<u32>()));
      r9 = vec4<f32>(v_199.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_200 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_200.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_201 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_201.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[14u].w);
      r6.y = (r6.y / r7.w);
      let v_202 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.w = dot(r9.xyz, v_202.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_203 = dot(r9.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_203, v_203, v_203, v_203).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_204 = (r8.www * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_204.xyz, r10.w);
      let v_205 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_205.xyz, r8.w);
      let v_206 = fma(r3.xyz, r1.www, r9.xyz);
      r9 = vec4<f32>(v_206.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_207 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_207.xyz, r9.w);
      let v_208 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_208, v_208, v_208, v_208).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_209 = dot(r9.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_209, v_209, v_209, v_209).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_210 = fma(r6.yyy, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_210.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_211 = (v_31.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r9 = vec4<f32>(v_211.xyz, r9.w);
      let v_212 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r10 = vec4<f32>(v_212.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r8.w = (cb3_3.tint_symbol_2[23u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[23u].w);
      let v_213 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.www, cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_213.xyz, r10.w);
      let v_214 = (r10.xyz + v_31.xyz);
      r10 = vec4<f32>(v_214.xyz, r10.w);
      let v_215 = bitcast<vec3<u32>>(r6.yyy);
      let v_216 = r9.xyz;
      let v_217 = select(r10.xyz, v_216, (v_215 != vec3<u32>()));
      r9 = vec4<f32>(v_217.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_218 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_218.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_219 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_219.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[15u].w);
      r6.y = (r6.y / r7.w);
      let v_220 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.w = dot(r9.xyz, v_220.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_221 = dot(r9.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_221, v_221, v_221, v_221).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_222 = (r8.www * cb3_3.tint_symbol_2[23u].xyz);
      r10 = vec4<f32>(v_222.xyz, r10.w);
      let v_223 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_223.xyz, r8.w);
      let v_224 = fma(r3.xyz, r1.www, r9.xyz);
      r9 = vec4<f32>(v_224.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_225 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_225.xyz, r9.w);
      let v_226 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_226, v_226, v_226, v_226).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_227 = dot(r9.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_227, v_227, v_227, v_227).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_228 = fma(r6.yyy, cb3_3.tint_symbol_2[23u].xyz, r7.xyz);
      r7 = vec4<f32>(v_228.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_229 = (v_31.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r9 = vec4<f32>(v_229.xyz, r9.w);
      let v_230 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r10 = vec4<f32>(v_230.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r8.w = (cb3_3.tint_symbol_2[24u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[24u].w);
      let v_231 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.www, cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_231.xyz, r10.w);
      let v_232 = (r10.xyz + v_31.xyz);
      r10 = vec4<f32>(v_232.xyz, r10.w);
      let v_233 = bitcast<vec3<u32>>(r6.yyy);
      let v_234 = r9.xyz;
      let v_235 = select(r10.xyz, v_234, (v_233 != vec3<u32>()));
      r9 = vec4<f32>(v_235.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_236 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_236.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_237 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_237.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[16u].w);
      r6.y = (r6.y / r7.w);
      let v_238 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.w = dot(r9.xyz, v_238.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_239 = dot(r9.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_239, v_239, v_239, v_239).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_240 = (r8.www * cb3_3.tint_symbol_2[24u].xyz);
      r10 = vec4<f32>(v_240.xyz, r10.w);
      let v_241 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_241.xyz, r8.w);
      let v_242 = fma(r3.xyz, r1.www, r9.xyz);
      r9 = vec4<f32>(v_242.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_243 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_243.xyz, r9.w);
      let v_244 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_244, v_244, v_244, v_244).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_245 = dot(r9.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_245, v_245, v_245, v_245).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_246 = fma(r6.yyy, cb3_3.tint_symbol_2[24u].xyz, r7.xyz);
      r7 = vec4<f32>(v_246.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_247 = (v_31.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r9 = vec4<f32>(v_247.xyz, r9.w);
      let v_248 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r10 = vec4<f32>(v_248.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r8.w = (cb3_3.tint_symbol_2[25u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[25u].w);
      let v_249 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.www, cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_249.xyz, r10.w);
      let v_250 = (r10.xyz + v_31.xyz);
      r10 = vec4<f32>(v_250.xyz, r10.w);
      let v_251 = bitcast<vec3<u32>>(r6.yyy);
      let v_252 = r9.xyz;
      let v_253 = select(r10.xyz, v_252, (v_251 != vec3<u32>()));
      r9 = vec4<f32>(v_253.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_254 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_254.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_255 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_255.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[17u].w);
      r6.y = (r6.y / r7.w);
      let v_256 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.w = dot(r9.xyz, v_256.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_257 = dot(r9.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_257, v_257, v_257, v_257).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_258 = (r8.www * cb3_3.tint_symbol_2[25u].xyz);
      r10 = vec4<f32>(v_258.xyz, r10.w);
      let v_259 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_259.xyz, r8.w);
      let v_260 = fma(r3.xyz, r1.www, r9.xyz);
      r9 = vec4<f32>(v_260.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_261 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_261.xyz, r9.w);
      let v_262 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_262, v_262, v_262, v_262).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_263 = dot(r9.xyz, r2.xyz);
      r9.x = clamp(vec4<f32>(v_263, v_263, v_263, v_263).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_264 = fma(r6.yyy, cb3_3.tint_symbol_2[25u].xyz, r7.xyz);
      r7 = vec4<f32>(v_264.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_265 = (v_31.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r9 = vec4<f32>(v_265.xyz, r9.w);
      let v_266 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r10 = vec4<f32>(v_266.xyz, r10.w);
      r6.y = dot(r10.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.w = (cb3_3.tint_symbol_2[26u].w + 0.00009999999747378752f);
      r6.y = clamp(((r6.yyyy / r7.wwww)).y, 0.0f, 1.0f);
      r6.y = (r6.y * cb3_3.tint_symbol_2[26u].w);
      let v_267 = fma(cb3_3.tint_symbol_2[18u].xyz, r6.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_267.xyz, r10.w);
      let v_268 = (r10.xyz + v_31.xyz);
      r10 = vec4<f32>(v_268.xyz, r10.w);
      let v_269 = bitcast<vec3<u32>>(r4.www);
      let v_270 = r9.xyz;
      let v_271 = select(r10.xyz, v_270, (v_269 != vec3<u32>()));
      r9 = vec4<f32>(v_271.xyz, r9.w);
      r4.w = dot(r9.xyz, r9.xyz);
      let v_272 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_272.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      r6.y = inverseSqrt(r6.y);
      let v_273 = (r6.yyy * r9.xyz);
      r9 = vec4<f32>(v_273.xyz, r9.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r6.y = fma(r6.y, r4.w, cb3_3.tint_symbol_2[18u].w);
      r4.w = (r4.w / r6.y);
      let v_274 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r6.y = dot(r9.xyz, v_274.xyz);
      r6.y = clamp(fma(r6.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_275 = dot(r9.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_275, v_275, v_275, v_275).w, 0.0f, 1.0f);
      r6.y = (r6.y * r7.w);
      r7.w = (r4.w * r6.y);
      let v_276 = (r7.www * cb3_3.tint_symbol_2[26u].xyz);
      r10 = vec4<f32>(v_276.xyz, r10.w);
      let v_277 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_277.xyz, r8.w);
      let v_278 = fma(r3.xyz, r1.www, r9.xyz);
      r3 = vec4<f32>(v_278.xyz, r3.w);
      r1.w = dot(r3.xyz, r3.xyz);
      r1.w = inverseSqrt(r1.w);
      let v_279 = (r1.www * r3.xyz);
      r3 = vec4<f32>(v_279.xyz, r3.w);
      let v_280 = dot(r3.xyz, r4.xyz);
      r1.w = clamp(vec4<f32>(v_280, v_280, v_280, v_280).w, 0.0f, 1.0f);
      r1.w = ((-(r1.wwww)).w + 1.0f);
      r7.w = (r1.w * r1.w);
      r7.w = (r7.w * r7.w);
      r1.w = (r1.w * r7.w);
      r1.w = fma(cb11_11.tint_symbol_4[3u].w, r1.w, r5.w);
      let v_281 = dot(r3.xyz, r2.xyz);
      r3.x = clamp(vec4<f32>(v_281, v_281, v_281, v_281).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r6.w);
      r3.x = exp2(r3.x);
      r1.w = (r1.w * r3.x);
      r1.w = (r6.y * r1.w);
      r1.w = (r4.w * r1.w);
      r1.w = (r6.z * r1.w);
      let v_282 = fma(r1.www, cb3_3.tint_symbol_2[26u].xyz, r7.xyz);
      r7 = vec4<f32>(v_282.xyz, r7.w);
    }
  }
  r1.w = (r6.x * r6.x);
  r1.z = (r1.z * r1.z);
  let v_283 = (r7.xyz * r1.zzz);
  r3 = vec4<f32>(v_283.xyz, r3.w);
  let v_284 = fma(r1.www, r8.xyz, r3.xyz);
  r3 = vec4<f32>(v_284.xyz, r3.w);
  let v_285 = fma(r5.xyz, r3.www, r3.xyz);
  r3 = vec4<f32>(v_285.xyz, r3.w);
  r0.w = fma(v1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_286 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_286.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_287 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(r6.x, v_287.xyz);
  let v_288 = (r6.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(r6.x, v_288.xyz);
  let v_289 = fma(r5.xyz, r1.zzz, r6.yzw);
  r5 = vec4<f32>(v_289.xyz, r5.w);
  let v_290 = (r1.yyy * r5.xyz);
  r5 = vec4<f32>(v_290.xyz, r5.w);
  let v_291 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(r6.x, v_291.xyz);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_292 = dot(r7.xyz, r2.xyz);
  r0.w = clamp(vec4<f32>(v_292, v_292, v_292, v_292).w, 0.0f, 1.0f);
  let v_293 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r6.yzw);
  r6 = vec4<f32>(r6.x, v_293.xyz);
  let v_294 = fma(r6.yzw, r1.xxx, r5.xyz);
  r5 = vec4<f32>(v_294.xyz, r5.w);
  let v_295 = (r6.xxx * r5.xyz);
  r5 = vec4<f32>(v_295.xyz, r5.w);
  let v_296 = fma(r5.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_296.xyz, r0.w);
  r0.w = ((-(r6.xxxx)).w + 1.0f);
  r1.z = dot((-(r4.xyzx)).xyz, r2.xyz);
  r1.z = (r1.z + r1.z);
  let v_297 = -(r1.zzzz);
  let v_298 = -(r4.xyzx);
  let v_299 = fma(r2.xyz, v_297.xyz, v_298.xyz);
  r2 = vec4<f32>(v_299.xyz, r2.w);
  let v_300 = clamp(((r2.wwww * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_300.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.z * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.w)));
  r3.y = fma(r1.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.z = (r1.z * r1.z);
  r1.z = fma(r1.z, 5.0f, r2.w);
  let v_301 = bitcast<u32>(r3.x);
  let v_302 = r3.y;
  r1.z = select(r1.z, v_302, (v_301 != 0u));
  let v_303 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_303.xy, r2.z, v_303.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_304 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_304.xy, r2.z, v_304.z);
  let v_305 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_305.xy, r2.z, v_305.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_306 = bitcast<vec2<u32>>(r2.zz);
  let v_307 = r2.xy;
  let v_308 = select(r2.wy, v_307, (v_306 != vec2<u32>()));
  r2 = vec4<f32>(v_308.xy, r2.zw);
  let v_309 = r1.z;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_309);
  r1.x = max(r1.y, r1.x);
  let v_310 = (r1.xxx * r2.xyz);
  r1 = vec4<f32>(v_310.xyz, r1.w);
  let v_311 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_311.xyz, r2.w);
  let v_312 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_312.xyz, r2.w);
  let v_313 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_313.xyz, r1.w);
  let v_314 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_314.xyz, r0.w);
  let v_315 = v5.xy;
  let v_316 = max(v_315, vec2<f32>(-2147483648.0f));
  let v_317 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_316), vec2<i32>(2147483647i), (v_316 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_315 == v_315))));
  r1 = vec4<f32>(v_317.xy, r1.zw);
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
  let v_318 = bitcast<u32>(r1.y);
  let v_319 = cb2_2.tint_symbol_1[15u].x;
  r0.w = select(r1.x, v_319, (v_318 != 0u));
  let v_320 = bitcast<vec4<u32>>(r1.yyyy);
  r0 = select(r0, vec4<f32>(), (v_320 != vec4<u32>()));
  let v_321 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_321.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_322 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_322);
  return o0;
}
