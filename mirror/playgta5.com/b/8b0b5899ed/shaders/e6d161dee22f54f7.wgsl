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
  let v_39 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_39.xyz, r7.w);
  let v_40 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  let v_41 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  let v_42 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_42.xyz, r8.w);
  let v_43 = &(x0[0u]);
  let v_44 = r8;
  *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
  let v_45 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_45.xyz, r9.w);
  let v_46 = &(x0[1u]);
  let v_47 = r9;
  *(v_46) = vec4<f32>(v_47.xyz, (*(v_46)).w);
  let v_48 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_48.xyz, r10.w);
  let v_49 = &(x0[2u]);
  let v_50 = r10;
  *(v_49) = vec4<f32>(v_50.xyz, (*(v_49)).w);
  let v_51 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_51.xyz, r7.w);
  let v_52 = &(x0[3u]);
  let v_53 = r7;
  *(v_52) = vec4<f32>(v_53.xyz, (*(v_52)).w);
  let v_54 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_55 = r11;
  r11 = vec4<f32>(v_55.x, v_54.x, v_55.z, v_54.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_56 = abs(r10.yyyy);
  r5.w = max(v_56.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_57 = (bitcast<u32>(r5.w) != 0u);
  let v_58 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_58, v_57);
  let v_59 = abs(r9.yyyy);
  r6.w = max(v_59.w, abs(r9.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_60 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_60 != 0u));
  let v_61 = abs(r8.yyyy);
  r6.w = max(v_61.w, abs(r8.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_62 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_62 != 0u));
  let v_63 = x0[bitcast<i32>(r4.w)];
  r8 = vec4<f32>(v_63.xyz, r8.w);
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
  let v_64 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_64.xy, r10.z, v_64.z);
  r10.z = dpdx(r4.w);
  let v_65 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_65.xyz, r12.w);
  r12.w = dpdy(r4.w);
  let v_66 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_66.xy);
  let v_67 = -(r7.zwzz);
  let v_68 = fma(r10.xz, r12.xz, v_67.xy);
  r13 = vec4<f32>(v_68.xy, r13.zw);
  r7.z = (1.0f / r13.x);
  r7.w = (r10.z * r12.y);
  let v_69 = -(r7.wwww);
  r13.z = fma(r10.x, r12.w, v_69.z);
  let v_70 = (r7.zz * r13.yz);
  r7 = vec4<f32>(r7.xy, v_70.xy);
  let v_71 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_71.xy);
  let v_72 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_72.xy);
  r4.w = fma((-(r6.wwww)).w, r7.z, r4.w);
  r4.w = fma((-(r6.wwww)).w, r7.w, r4.w);
  let v_73 = bitcast<u32>(r5.w);
  let v_74 = r4.w;
  r11.z = select(r8.z, v_74, (v_73 != 0u));
  r9.z = 0.0f;
  let v_75 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_75.xyz, r8.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_77.xyz, r10.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_79.xyz, r12.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_81.xyz, r13.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_83.xyz, r14.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_85.xyz, r15.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_86.xy, r11.zw);
  let v_87 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_87.xyz, r16.w);
  let v_88 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_88.xy, r11.zw);
  let v_89 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_89.xyz, r17.w);
  let v_90 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_90.xy, r11.zw);
  let v_91 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_91.xyz, r18.w);
  let v_92 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_92.xy, r11.zw);
  let v_93 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_93.xyz, r19.w);
  let v_94 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_94.xy, r11.zw);
  let v_95 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_95.xyz, r20.w);
  let v_96 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_96.xy, r11.zw);
  let v_97 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_97.xyz, r21.w);
  let v_98 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_98.xy, r11.zw);
  let v_99 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_99.xyz, r22.w);
  let v_100 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_100.xy, r11.zw);
  let v_101 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_101.xyz, r23.w);
  let v_102 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_102.xy, r11.zw);
  let v_103 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_103.xyz, r24.w);
  let v_104 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_104.xy, r11.zw);
  let v_105 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_105.xyz, r9.w);
  let v_106 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_106.xy, r8.z);
  let v_107 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_107.xy, r10.z);
  let v_108 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_108.xy, r12.z);
  let v_109 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_109.xy, r13.z);
  let v_110 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_110.xy, r14.z);
  let v_111 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_111.xy, r15.z);
  let v_112 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_112.xy, r16.z);
  let v_113 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_113.xy, r17.z);
  let v_114 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_114.xy, r18.z);
  let v_115 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_115.xy, r19.z);
  let v_116 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_116.xy, r20.z);
  let v_117 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_117.xy, r21.z);
  let v_118 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_118.xy, r22.z);
  let v_119 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_119.xy, r23.z);
  let v_120 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_120.xy, r24.z);
  let v_121 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_121.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r4.w = dot(r8, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_122 = abs(r7.yyyy);
  r5.w = max(v_122.w, abs(r7.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_123 = -(r3.wwww);
  r3.w = fma(r4.w, v_123.w, r3.w);
  r7.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_124 = r7;
  r7 = vec4<f32>(v_124.x, 0.0f, v_124.z, 0.5f);
  let v_125 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r7.xy);
  r7 = vec4<f32>(v_125.xy, r7.zw);
  r8 = textureSample(t12, s12, r7.xyxx.xy);
  r7.z = r8.y;
  r7 = textureSample(t13, s13, r7.zwzz.xy);
  r3.w = (r3.w * r7.x);
  let v_126 = dot(r2.xyz, v_22.xyz);
  r4.w = clamp(vec4<f32>(v_126, v_126, v_126, v_126).w, 0.0f, 1.0f);
  let v_127 = dot(r4.xyz, r2.xyz);
  r7.x = clamp(vec4<f32>(v_127, v_127, v_127, v_127).x, 0.0f, 1.0f);
  let v_128 = dot(r5.xyz, v_22.xyz);
  r7.y = clamp(vec4<f32>(v_128, v_128, v_128, v_128).y, 0.0f, 1.0f);
  let v_129 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_129.xy, r7.zw);
  let v_130 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_130.xy);
  let v_131 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_131.xy);
  let v_132 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_132.xy, r7.zw);
  r5.w = ((-(cb11_11.tint_symbol_4[3u].wwww)).w + 1.0f);
  let v_133 = fma(cb11_11.tint_symbol_4[3u].ww, r7.xy, r5.ww);
  r7 = vec4<f32>(v_133.xy, r7.zw);
  let v_134 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_134.xy);
  r6.w = (r7.z * 0.125f);
  r7.x = fma((-(r1.zzzz)).x, r7.x, 1.0f);
  r5.x = dot(r2.xyz, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.w);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r6.w * r5.x);
  r5.x = (r1.z * r5.x);
  r5.x = (r4.w * r5.x);
  r4.w = (r4.w * r7.x);
  let v_135 = fma(r0.xyz, r4.www, r5.xxx);
  r5 = vec4<f32>(v_135.xyz, r5.w);
  let v_136 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_136.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_137 = (v_31.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_137.xyz, r8.w);
    let v_138 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_138.xyz, r9.w);
    r7.z = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.w = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r7.z = clamp(((r7.zzzz / r8.wwww)).z, 0.0f, 1.0f);
    r7.z = (r7.z * cb3_3.tint_symbol_2[19u].w);
    let v_139 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_139.xyz, r9.w);
    let v_140 = (r9.xyz + v_31.xyz);
    r9 = vec4<f32>(v_140.xyz, r9.w);
    let v_141 = bitcast<vec3<u32>>(r7.yyy);
    let v_142 = r8.xyz;
    let v_143 = select(r9.xyz, v_142, (v_141 != vec3<u32>()));
    r8 = vec4<f32>(v_143.xyz, r8.w);
    r7.y = dot(r8.xyz, r8.xyz);
    let v_144 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_144.xyz, r8.w);
    r7.z = dot(r8.xyz, r8.xyz);
    r7.z = inverseSqrt(r7.z);
    let v_145 = (r7.zzz * r8.xyz);
    r8 = vec4<f32>(v_145.xyz, r8.w);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r7.z);
    let v_146 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.z = dot(r8.xyz, v_146.xyz);
    r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_147 = dot(r8.xyz, r2.xyz);
    r8.w = clamp(vec4<f32>(v_147, v_147, v_147, v_147).w, 0.0f, 1.0f);
    r7.z = (r7.z * r8.w);
    r8.w = (r7.y * r7.z);
    let v_148 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_148.xyz, r9.w);
    let v_149 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_149.xyz, r9.w);
    let v_150 = fma(r3.xyz, r1.www, r8.xyz);
    r8 = vec4<f32>(v_150.xyz, r8.w);
    r8.w = dot(r8.xyz, r8.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_151 = (r8.www * r8.xyz);
    r8 = vec4<f32>(v_151.xyz, r8.w);
    let v_152 = dot(r8.xyz, r4.xyz);
    r8.w = clamp(vec4<f32>(v_152, v_152, v_152, v_152).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.w = (r8.w * r8.w);
    r9.w = (r9.w * r9.w);
    r8.w = (r8.w * r9.w);
    r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
    let v_153 = dot(r8.xyz, r2.xyz);
    r8.x = clamp(vec4<f32>(v_153, v_153, v_153, v_153).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.w * r8.x);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r8.w);
    r7.z = (r7.z * r8.x);
    r7.y = (r7.y * r7.z);
    r7.y = (r6.w * r7.y);
    let v_154 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_154.xyz, r8.w);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.y)));
    let v_155 = bitcast<u32>(r7.z);
    let v_156 = r7.y;
    r4.w = select(r4.w, v_156, (v_155 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_157 = (v_31.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_157.xyz, r10.w);
      let v_158 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r8.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[20u].w);
      let v_159 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      let v_160 = (r11.xyz + v_31.xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      let v_161 = bitcast<vec3<u32>>(r7.yyy);
      let v_162 = r10.xyz;
      let v_163 = select(r11.xyz, v_162, (v_161 != vec3<u32>()));
      r10 = vec4<f32>(v_163.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_164 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_164.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_165 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_165.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r7.z);
      let v_166 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.z = dot(r10.xyz, v_166.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      let v_167 = dot(r10.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_167, v_167, v_167, v_167).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_168 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      let v_169 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_169.xyz, r9.w);
      let v_170 = fma(r3.xyz, r1.www, r10.xyz);
      r10 = vec4<f32>(v_170.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_171 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      let v_172 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_173 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_173, v_173, v_173, v_173).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r6.w * r7.y);
      let v_174 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_174.xyz, r8.w);
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
      let v_175 = (v_31.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      let v_176 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r8.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[21u].w);
      let v_177 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      let v_178 = (r11.xyz + v_31.xyz);
      r11 = vec4<f32>(v_178.xyz, r11.w);
      let v_179 = bitcast<vec3<u32>>(r7.yyy);
      let v_180 = r10.xyz;
      let v_181 = select(r11.xyz, v_180, (v_179 != vec3<u32>()));
      r10 = vec4<f32>(v_181.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_182 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_182.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_183 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_183.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r7.z);
      let v_184 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.z = dot(r10.xyz, v_184.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      let v_185 = dot(r10.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_185, v_185, v_185, v_185).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_186 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      let v_187 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_187.xyz, r9.w);
      let v_188 = fma(r3.xyz, r1.www, r10.xyz);
      r10 = vec4<f32>(v_188.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_189 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      let v_190 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_190, v_190, v_190, v_190).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb11_11.tint_symbol_4[3u].w, r8.w, r5.w);
      let v_191 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_191, v_191, v_191, v_191).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r6.w * r7.y);
      let v_192 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_192.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_193 = (v_31.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_193.xyz, r10.w);
      let v_194 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_194.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.z = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r7.y = clamp(((r7.yyyy / r7.zzzz)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[22u].w);
      let v_195 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      let v_196 = (r11.xyz + v_31.xyz);
      r11 = vec4<f32>(v_196.xyz, r11.w);
      let v_197 = bitcast<vec3<u32>>(r4.www);
      let v_198 = r10.xyz;
      let v_199 = select(r11.xyz, v_198, (v_197 != vec3<u32>()));
      r10 = vec4<f32>(v_199.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_200 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_200.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_201 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_201.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r4.w, cb3_3.tint_symbol_2[14u].w);
      r4.w = (r4.w / r7.y);
      let v_202 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.y = dot(r10.xyz, v_202.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_203 = dot(r10.xyz, r2.xyz);
      r7.z = clamp(vec4<f32>(v_203, v_203, v_203, v_203).z, 0.0f, 1.0f);
      r7.y = (r7.y * r7.z);
      r7.z = (r4.w * r7.y);
      let v_204 = (r7.zzz * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_204.xyz, r11.w);
      let v_205 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_205.xyz, r9.w);
      let v_206 = fma(r3.xyz, r1.www, r10.xyz);
      r3 = vec4<f32>(v_206.xyz, r3.w);
      r1.w = dot(r3.xyz, r3.xyz);
      r1.w = inverseSqrt(r1.w);
      let v_207 = (r1.www * r3.xyz);
      r3 = vec4<f32>(v_207.xyz, r3.w);
      let v_208 = dot(r3.xyz, r4.xyz);
      r1.w = clamp(vec4<f32>(v_208, v_208, v_208, v_208).w, 0.0f, 1.0f);
      r1.w = ((-(r1.wwww)).w + 1.0f);
      r7.z = (r1.w * r1.w);
      r7.z = (r7.z * r7.z);
      r1.w = (r1.w * r7.z);
      r1.w = fma(cb11_11.tint_symbol_4[3u].w, r1.w, r5.w);
      let v_209 = dot(r3.xyz, r2.xyz);
      r3.x = clamp(vec4<f32>(v_209, v_209, v_209, v_209).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r7.w);
      r3.x = exp2(r3.x);
      r1.w = (r1.w * r3.x);
      r1.w = (r7.y * r1.w);
      r1.w = (r4.w * r1.w);
      r1.w = (r6.w * r1.w);
      let v_210 = fma(r1.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_210.xyz, r8.w);
    }
  }
  r1.w = (r7.x * r7.x);
  r1.z = (r1.z * r1.z);
  let v_211 = (r8.xyz * r1.zzz);
  r3 = vec4<f32>(v_211.xyz, r3.w);
  let v_212 = fma(r1.www, r9.xyz, r3.xyz);
  r3 = vec4<f32>(v_212.xyz, r3.w);
  let v_213 = fma(r5.xyz, r3.www, r3.xyz);
  r3 = vec4<f32>(v_213.xyz, r3.w);
  r0.w = fma(v1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_214 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_214.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_215 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(r7.x, v_215.xyz);
  let v_216 = (r7.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(r7.x, v_216.xyz);
  let v_217 = fma(r5.xyz, r1.zzz, r7.yzw);
  r5 = vec4<f32>(v_217.xyz, r5.w);
  let v_218 = (r1.yyy * r5.xyz);
  r5 = vec4<f32>(v_218.xyz, r5.w);
  let v_219 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(r7.x, v_219.xyz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_220 = dot(r8.xyz, r2.xyz);
  r0.w = clamp(vec4<f32>(v_220, v_220, v_220, v_220).w, 0.0f, 1.0f);
  let v_221 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r7.yzw);
  r7 = vec4<f32>(r7.x, v_221.xyz);
  let v_222 = fma(r7.yzw, r1.xxx, r5.xyz);
  r5 = vec4<f32>(v_222.xyz, r5.w);
  let v_223 = (r7.xxx * r5.xyz);
  r5 = vec4<f32>(v_223.xyz, r5.w);
  let v_224 = fma(r5.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_224.xyz, r0.w);
  r0.w = ((-(r7.xxxx)).w + 1.0f);
  r1.z = dot((-(r4.xyzx)).xyz, r2.xyz);
  r1.z = (r1.z + r1.z);
  let v_225 = -(r1.zzzz);
  let v_226 = -(r4.xyzx);
  let v_227 = fma(r2.xyz, v_225.xyz, v_226.xyz);
  r2 = vec4<f32>(v_227.xyz, r2.w);
  let v_228 = clamp(((r2.wwww * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_228.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.z * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.w)));
  r3.y = fma(r1.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.z = (r1.z * r1.z);
  r1.z = fma(r1.z, 5.0f, r2.w);
  let v_229 = bitcast<u32>(r3.x);
  let v_230 = r3.y;
  r1.z = select(r1.z, v_230, (v_229 != 0u));
  let v_231 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_231.xy, r2.z, v_231.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_232 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_232.xy, r2.z, v_232.z);
  let v_233 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_233.xy, r2.z, v_233.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_234 = bitcast<vec2<u32>>(r2.zz);
  let v_235 = r2.xy;
  let v_236 = select(r2.wy, v_235, (v_234 != vec2<u32>()));
  r2 = vec4<f32>(v_236.xy, r2.zw);
  let v_237 = r1.z;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_237);
  r1.x = max(r1.y, r1.x);
  let v_238 = (r1.xxx * r2.xyz);
  r1 = vec4<f32>(v_238.xyz, r1.w);
  let v_239 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_239.xyz, r2.w);
  let v_240 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_240.xyz, r2.w);
  let v_241 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_241.xyz, r1.w);
  let v_242 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_242.xyz, r0.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.w);
  let v_243 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_243.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_244 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_244 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_245 = (r0.www * r6.xyz);
  r2 = vec4<f32>(v_245.xyz, r2.w);
  let v_246 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_246, v_246, v_246, v_246).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_247 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_247, v_247, v_247, v_247).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_248 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_248.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_249 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_249.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_250 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_250.xyz, r2.w);
  let v_251 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_251.xyz, r2.w);
  let v_252 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_252.xyz, r3.w);
  let v_253 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_253.xyz, r2.w);
  let v_254 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_255 = (r2.xyz + v_254.xyz);
  r2 = vec4<f32>(v_255.xyz, r2.w);
  let v_256 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_256.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_257 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_257.xy, r1.z, v_257.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_258 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_258.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_259 = -(r0.xyxz);
  let v_260 = fma(r1.xyw, r0.www, v_259.xyw);
  r1 = vec4<f32>(v_260.xy, r1.z, v_260.z);
  let v_261 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_261.xyz, r0.w);
  let v_262 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_262.xyz, o0.w);
  o0.w = cb2_2.tint_symbol_1[15u].x;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_263 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_263);
  return o0;
}
