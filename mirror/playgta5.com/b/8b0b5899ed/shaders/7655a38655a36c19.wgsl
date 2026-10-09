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

struct cb6_struct {
  tint_symbol_4 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

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

var<private> v8 : vec4<f32>;

var<private> v9 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v8 = v_2;
  x1[0u].x = v9[0u];
  x1[0u].y = v9[1u];
  x1[0u].z = v9[2u];
  x1[0u].w = v9[3u];
  let v_3 = (v0.xy * cb11_11.tint_symbol_4[3u].ww);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r1 = textureSample(t0, s0, v0.xyxx.xy);
  r2 = textureSample(t6, s6, v0.xyxx.xy);
  let v_4 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_4.xy);
  r1.w = dot(r0.zw, r0.zw);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  let v_5 = (r0.www * v5.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(r0.zzz, v4.xyz, r2.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r1.www, v1.xyz, r2.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_8 = (r0.zzz * r2.xyz);
  r2 = vec4<f32>(v_8.xy, r2.z, v_8.z);
  r3 = textureSample(t7, s7, r0.xyxx.xy);
  let v_9 = (r3.xy * r3.xy);
  r0 = vec4<f32>(v_9.xy, r0.zw);
  r0.w = ((-(r3.zzzz)).w + 1.0f);
  r0.x = (r0.x * v6.x);
  let v_10 = (r1.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r1.xyz * v6.xxx);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = (v6.xx * cb2_2.tint_symbol_1[15u].zy);
  r4 = vec4<f32>(v_12.xy, r4.zw);
  r1.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  r1.w = (r1.w * r4.y);
  let v_13 = (v0.zw * cb11_11.tint_symbol_4[5u].xx);
  let v_14 = r4;
  r4 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r5 = textureSample(t3, s3, r4.yzyy.xy);
  r6 = textureSample(t4, s4, r4.yzyy.xy);
  r3.w = clamp(((v7.xyz.zzzz + v7.xyz.zzzz)).w, 0.0f, 1.0f);
  r4.y = (v7.z + -0.5f);
  r4.y = clamp(((r4.yyyy + r4.yyyy)).y, 0.0f, 1.0f);
  r3.w = (r5.w * r3.w);
  let v_15 = fma((-(r1.xyzx)).xyz, v6.xxx, r5.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = fma(r3.www, r1.xyz, r3.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = ((-(r1.xyzx)).xyz + r6.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = fma(r4.yyy, r3.xyz, r1.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r0.x = (r0.x * v1.w);
  r0.x = (r0.x * 0.40000000596046447754f);
  let v_19 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_19.xy, r3.zw);
  r3.z = (r3.x * v6.z);
  let v_20 = (r3.yy * v7.xyz.xy);
  let v_21 = r3;
  r3 = vec4<f32>(v_21.x, v_20.x, v_21.z, v_20.y);
  r5 = textureSample(t5, s5, r3.ywyy.xy);
  r3.y = (cb5_5.tint_symbol_3[3u].z * cb11_11.tint_symbol_4[2u].z);
  r3.w = ((-(r5.xxxx)).w + r5.z);
  r5.x = fma(r3.y, r3.w, r5.x);
  let v_22 = (r5.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_23 = r3;
  r3 = vec4<f32>(v_23.x, v_22.x, v_23.z, v_22.y);
  r4.y = fma(v6.z, r3.x, -1.0f);
  r3.x = fma(r3.x, r4.y, 1.0f);
  r3.y = (r3.x * r3.y);
  let v_24 = -(r1.xxyz);
  let v_25 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_24.yzw);
  r4 = vec4<f32>(r4.x, v_25.xyz);
  let v_26 = fma(r3.yyy, r4.yzw, r1.xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  r3.y = (r3.z * cb11_11.tint_symbol_4[2u].x);
  let v_27 = ((-(r1.xxyz)).yzw + r5.zzz);
  r4 = vec4<f32>(r4.x, v_27.xyz);
  let v_28 = fma(r3.yyy, r4.yzw, r1.xyz);
  r1 = vec4<f32>(v_28.xyz, r1.w);
  r3.x = fma((-(r3.wwww)).x, r3.x, 1.0f);
  r0.x = clamp(((r0.xxxx * r3.xxxx)).x, 0.0f, 1.0f);
  let v_29 = -(v2.xyzx);
  let v_30 = (v_29.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_30.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_31 = (r3.www * r3.xyz);
  r4 = vec4<f32>(r4.x, v_31.xyz);
  let v_32 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_33 = fma(r3.xyz, r3.www, v_32.xyz);
  r5 = vec4<f32>(v_33.xyz, r5.w);
  r5.w = dot(r5.xyz, r5.xyz);
  r5.w = inverseSqrt(r5.w);
  let v_34 = (r5.www * r5.xyz);
  r5 = vec4<f32>(v_34.xyz, r5.w);
  r4.x = (r4.x * r4.x);
  r1 = (r1 * r1);
  r5.w = fma(r0.y, 512.0f, -500.0f);
  r5.w = max(r5.w, 0.0f);
  let v_35 = -(r5.wwww);
  r0.y = fma(r0.y, 512.0f, v_35.y);
  r5.w = (r5.w * 558.0f);
  r0.y = fma(r0.y, 3.0f, r5.w);
  r5.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_36 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_36.xyz, r6.w);
  let v_37 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_37.xyz, r7.w);
  let v_38 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_38.xyz, r7.w);
  let v_39 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_39.xyz, r7.w);
  let v_40 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_40.xyz, r8.w);
  let v_41 = &(x0[0u]);
  let v_42 = r8;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  let v_43 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_43.xyz, r9.w);
  let v_44 = &(x0[1u]);
  let v_45 = r9;
  *(v_44) = vec4<f32>(v_45.xyz, (*(v_44)).w);
  let v_46 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_46.xyz, r10.w);
  let v_47 = &(x0[2u]);
  let v_48 = r10;
  *(v_47) = vec4<f32>(v_48.xyz, (*(v_47)).w);
  let v_49 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_49.xyz, r7.w);
  let v_50 = &(x0[3u]);
  let v_51 = r7;
  *(v_50) = vec4<f32>(v_51.xyz, (*(v_50)).w);
  let v_52 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_53 = r11;
  r11 = vec4<f32>(v_53.x, v_52.x, v_53.z, v_52.y);
  r6.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r6.w = (r6.w * 0.5f);
  let v_54 = abs(r10.yyyy);
  r7.z = max(v_54.z, abs(r10.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r6.w)));
  let v_55 = (bitcast<u32>(r7.z) != 0u);
  let v_56 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r7.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_56, v_55);
  let v_57 = abs(r9.yyyy);
  r7.w = max(v_57.w, abs(r9.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_58 = bitcast<u32>(r7.w);
  r7.z = select(r7.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_58 != 0u));
  let v_59 = abs(r8.yyyy);
  r7.w = max(v_59.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_60 = bitcast<u32>(r6.w);
  r6.w = select(r7.z, 0.0f, (v_60 != 0u));
  let v_61 = x0[bitcast<i32>(r6.w)];
  r8 = vec4<f32>(v_61.xyz, r8.w);
  r6.w = f32(bitcast<i32>(r6.w));
  r7.z = (r6.w + 0.5f);
  r7.z = (r7.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r6.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r6.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r7.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r7.z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 0.0f))));
  r6.w = ((-(r6.wwww)).w + r8.z);
  let v_62 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_62.xy, r10.z, v_62.z);
  r10.z = dpdx(r6.w);
  let v_63 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_63.xyz, r12.w);
  r12.w = dpdy(r6.w);
  let v_64 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_64.xy, r8.zw);
  let v_65 = -(r8.xyxx);
  let v_66 = fma(r10.xz, r12.xz, v_65.xy);
  r13 = vec4<f32>(v_66.xy, r13.zw);
  r8.x = (1.0f / r13.x);
  r8.y = (r10.z * r12.y);
  let v_67 = -(r8.yyyy);
  r13.z = fma(r10.x, r12.w, v_67.z);
  let v_68 = (r8.xx * r13.yz);
  r8 = vec4<f32>(v_68.xy, r8.zw);
  let v_69 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_69.xy, r8.zw);
  let v_70 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_70.xy, r8.zw);
  r6.w = fma((-(r7.wwww)).w, r8.x, r6.w);
  r6.w = fma((-(r7.wwww)).w, r8.y, r6.w);
  let v_71 = bitcast<u32>(r7.z);
  let v_72 = r6.w;
  r11.z = select(r8.z, v_72, (v_71 != 0u));
  r9.z = 0.0f;
  let v_73 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_73.xyz, r8.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_74.xy, r11.zw);
  let v_75 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_75.xyz, r10.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_77.xyz, r12.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_79.xyz, r13.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_81.xyz, r14.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_83.xyz, r15.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_85.xyz, r16.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_86.xy, r11.zw);
  let v_87 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_87.xyz, r17.w);
  let v_88 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_88.xy, r11.zw);
  let v_89 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_89.xyz, r18.w);
  let v_90 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_90.xy, r11.zw);
  let v_91 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_91.xyz, r19.w);
  let v_92 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_92.xy, r11.zw);
  let v_93 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_93.xyz, r20.w);
  let v_94 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_94.xy, r11.zw);
  let v_95 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_95.xyz, r21.w);
  let v_96 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_96.xy, r11.zw);
  let v_97 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_97.xyz, r22.w);
  let v_98 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_98.xy, r11.zw);
  let v_99 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_99.xyz, r23.w);
  let v_100 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_100.xy, r11.zw);
  let v_101 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_101.xyz, r24.w);
  let v_102 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_102.xy, r11.zw);
  let v_103 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_103.xyz, r9.w);
  let v_104 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_104.xy, r8.z);
  let v_105 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_105.xy, r10.z);
  let v_106 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_106.xy, r12.z);
  let v_107 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_107.xy, r13.z);
  let v_108 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_108.xy, r14.z);
  let v_109 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_109.xy, r15.z);
  let v_110 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_110.xy, r16.z);
  let v_111 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_111.xy, r17.z);
  let v_112 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_112.xy, r18.z);
  let v_113 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_113.xy, r19.z);
  let v_114 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_114.xy, r20.z);
  let v_115 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_115.xy, r21.z);
  let v_116 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_116.xy, r22.z);
  let v_117 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_117.xy, r23.z);
  let v_118 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_118.xy, r24.z);
  let v_119 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_119.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r6.w = dot(r8, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_120 = abs(r7.yyyy);
  r7.x = max(v_120.x, abs(r7.xxxx).x);
  r7.x = clamp(fma(r7.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r7.x * r5.w);
  r5.w = fma(r6.w, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r6.w = sqrt(r6.w);
  r6.w = (r6.w * cb6_6.tint_symbol_5[3u].z);
  let v_121 = -(r5.wwww);
  r5.w = fma(r6.w, v_121.w, r5.w);
  r7.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_122 = r7;
  r7 = vec4<f32>(v_122.x, 0.0f, v_122.z, 0.5f);
  let v_123 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r7.xy);
  r7 = vec4<f32>(v_123.xy, r7.zw);
  r8 = textureSample(t12, s12, r7.xyxx.xy);
  r7.z = r8.y;
  r7 = textureSample(t13, s13, r7.zwzz.xy);
  r5.w = (r5.w * r7.x);
  let v_124 = dot(r2.xyw, v_32.xyz);
  r6.w = clamp(vec4<f32>(v_124, v_124, v_124, v_124).w, 0.0f, 1.0f);
  let v_125 = dot(r4.yzw, r2.xyw);
  r7.x = clamp(vec4<f32>(v_125, v_125, v_125, v_125).x, 0.0f, 1.0f);
  let v_126 = dot(r5.xyz, v_32.xyz);
  r7.y = clamp(vec4<f32>(v_126, v_126, v_126, v_126).y, 0.0f, 1.0f);
  let v_127 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_127.xy, r7.zw);
  let v_128 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_128.xy);
  let v_129 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_129.xy);
  let v_130 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_130.xy, r7.zw);
  r7.z = ((-(r0.wwww)).z + 1.0f);
  let v_131 = fma(r0.ww, r7.xy, r7.zz);
  r7 = vec4<f32>(v_131.xy, r7.zw);
  let v_132 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_132.xy, r8.zw);
  r7.w = (r8.x * 0.125f);
  r7.x = fma((-(r0.xxxx)).x, r7.x, 1.0f);
  r5.x = dot(r2.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r7.w * r5.x);
  r5.x = (r0.x * r5.x);
  r5.x = (r6.w * r5.x);
  r5.y = (r6.w * r7.x);
  let v_133 = fma(r1.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_133.xyz, r5.w);
  let v_134 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_134.xyz, r5.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r9 = vec4<f32>(r9.x, vec3<f32>());
    r8 = vec4<f32>(0.0f, r8.y, vec2<f32>());
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_135 = ((-(v2.xxyz)).xzw + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_135.x, r8.y, v_135.yz);
    let v_136 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_136.xyz, r9.w);
    r9.x = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.y = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r9.x = clamp(((r9.xxxx / r9.yyyy)).x, 0.0f, 1.0f);
    r9.x = (r9.x * cb3_3.tint_symbol_2[19u].w);
    let v_137 = fma(cb3_3.tint_symbol_2[11u].xyz, r9.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_137.xyz, r9.w);
    let v_138 = (r9.xyz + v_29.xyz);
    r9 = vec4<f32>(v_138.xyz, r9.w);
    let v_139 = bitcast<vec3<u32>>(r7.yyy);
    let v_140 = r8.xzw;
    let v_141 = select(r9.xyz, v_140, (v_139 != vec3<u32>()));
    r8 = vec4<f32>(v_141.x, r8.y, v_141.yz);
    r7.y = dot(r8.xzw, r8.xzw);
    let v_142 = (r8.xzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_142.x, r8.y, v_142.yz);
    r9.x = dot(r8.xzw, r8.xzw);
    r9.x = inverseSqrt(r9.x);
    let v_143 = (r8.xzw * r9.xxx);
    r8 = vec4<f32>(v_143.x, r8.y, v_143.yz);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r9.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r9.x);
    let v_144 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.x = dot(r8.xzw, v_144.xyz);
    r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_145 = dot(r8.xzw, r2.xyw);
    r9.y = clamp(vec4<f32>(v_145, v_145, v_145, v_145).y, 0.0f, 1.0f);
    r9.x = (r9.x * r9.y);
    r9.y = (r7.y * r9.x);
    let v_146 = (r9.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(r9.x, v_146.xyz);
    let v_147 = (r1.xyz * r9.yzw);
    r9 = vec4<f32>(r9.x, v_147.xyz);
    let v_148 = fma(r3.xyz, r3.www, r8.xzw);
    r8 = vec4<f32>(v_148.x, r8.y, v_148.yz);
    r10.x = dot(r8.xzw, r8.xzw);
    r10.x = inverseSqrt(r10.x);
    let v_149 = (r8.xzw * r10.xxx);
    r8 = vec4<f32>(v_149.x, r8.y, v_149.yz);
    let v_150 = dot(r8.xzw, r4.yzw);
    r10.x = clamp(vec4<f32>(v_150, v_150, v_150, v_150).x, 0.0f, 1.0f);
    r10.x = ((-(r10.xxxx)).x + 1.0f);
    r10.y = (r10.x * r10.x);
    r10.y = (r10.y * r10.y);
    r10.x = (r10.y * r10.x);
    r10.x = fma(r0.w, r10.x, r7.z);
    let v_151 = dot(r8.xzw, r2.xyw);
    r8.x = clamp(vec4<f32>(v_151, v_151, v_151, v_151).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.y);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r10.x);
    r8.x = (r9.x * r8.x);
    r7.y = (r7.y * r8.x);
    r7.y = (r7.w * r7.y);
    let v_152 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_152.x, r8.y, v_152.yz);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    let v_153 = bitcast<u32>(r9.x);
    let v_154 = r7.y;
    r6.w = select(r6.w, v_154, (v_153 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_155 = (v_29.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_155.xyz, r10.w);
      let v_156 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r10.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[20u].w);
      let v_157 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      let v_158 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      let v_159 = bitcast<vec3<u32>>(r7.yyy);
      let v_160 = r10.xyz;
      let v_161 = select(r11.xyz, v_160, (v_159 != vec3<u32>()));
      r10 = vec4<f32>(v_161.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_162 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_162.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_163 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_163.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r9.x);
      let v_164 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.x = dot(r10.xyz, v_164.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_165 = dot(r10.xyz, r2.xyw);
      r10.w = clamp(vec4<f32>(v_165, v_165, v_165, v_165).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_166 = (r10.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_166.xyz, r11.w);
      let v_167 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_167.xyz);
      let v_168 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_169 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_169.xyz, r10.w);
      let v_170 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_170, v_170, v_170, v_170).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(r0.w, r10.w, r7.z);
      let v_171 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_171, v_171, v_171, v_171).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_172 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xzw);
      r8 = vec4<f32>(v_172.x, r8.y, v_172.yz);
    }
  } else {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_173 = (v_29.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      let v_174 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r10.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[21u].w);
      let v_175 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_175.xyz, r11.w);
      let v_176 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      let v_177 = bitcast<vec3<u32>>(r7.yyy);
      let v_178 = r10.xyz;
      let v_179 = select(r11.xyz, v_178, (v_177 != vec3<u32>()));
      r10 = vec4<f32>(v_179.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_180 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_180.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_181 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_181.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r9.x);
      let v_182 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.x = dot(r10.xyz, v_182.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_183 = dot(r10.xyz, r2.xyw);
      r10.w = clamp(vec4<f32>(v_183, v_183, v_183, v_183).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_184 = (r10.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_184.xyz, r11.w);
      let v_185 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_185.xyz);
      let v_186 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_186.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_187 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_187.xyz, r10.w);
      let v_188 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_188, v_188, v_188, v_188).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(r0.w, r10.w, r7.z);
      let v_189 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_189, v_189, v_189, v_189).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_190 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xzw);
      r8 = vec4<f32>(v_190.x, r8.y, v_190.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_191 = (v_29.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_191.xyz, r10.w);
      let v_192 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_192.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r10.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[22u].w);
      let v_193 = fma(cb3_3.tint_symbol_2[14u].xyz, r9.xxx, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_193.xyz, r11.w);
      let v_194 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_194.xyz, r11.w);
      let v_195 = bitcast<vec3<u32>>(r7.yyy);
      let v_196 = r10.xyz;
      let v_197 = select(r11.xyz, v_196, (v_195 != vec3<u32>()));
      r10 = vec4<f32>(v_197.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_198 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_198.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_199 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_199.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[14u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[14u].w);
      r7.y = (r7.y / r9.x);
      let v_200 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r9.x = dot(r10.xyz, v_200.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).x, 0.0f, 1.0f);
      let v_201 = dot(r10.xyz, r2.xyw);
      r10.w = clamp(vec4<f32>(v_201, v_201, v_201, v_201).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_202 = (r10.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_202.xyz, r11.w);
      let v_203 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_203.xyz);
      let v_204 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_204.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_205 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_205.xyz, r10.w);
      let v_206 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_206, v_206, v_206, v_206).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(r0.w, r10.w, r7.z);
      let v_207 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_207, v_207, v_207, v_207).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_208 = fma(r7.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xzw);
      r8 = vec4<f32>(v_208.x, r8.y, v_208.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_209 = (v_29.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_209.xyz, r10.w);
      let v_210 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_210.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r10.w = (cb3_3.tint_symbol_2[23u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[23u].w);
      let v_211 = fma(cb3_3.tint_symbol_2[15u].xyz, r9.xxx, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_211.xyz, r11.w);
      let v_212 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_212.xyz, r11.w);
      let v_213 = bitcast<vec3<u32>>(r7.yyy);
      let v_214 = r10.xyz;
      let v_215 = select(r11.xyz, v_214, (v_213 != vec3<u32>()));
      r10 = vec4<f32>(v_215.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_216 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_216.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_217 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_217.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[15u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[15u].w);
      r7.y = (r7.y / r9.x);
      let v_218 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r9.x = dot(r10.xyz, v_218.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).x, 0.0f, 1.0f);
      let v_219 = dot(r10.xyz, r2.xyw);
      r10.w = clamp(vec4<f32>(v_219, v_219, v_219, v_219).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_220 = (r10.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_220.xyz, r11.w);
      let v_221 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_221.xyz);
      let v_222 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_222.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_223 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_223.xyz, r10.w);
      let v_224 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_224, v_224, v_224, v_224).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(r0.w, r10.w, r7.z);
      let v_225 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_225, v_225, v_225, v_225).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_226 = fma(r7.yyy, cb3_3.tint_symbol_2[23u].xyz, r8.xzw);
      r8 = vec4<f32>(v_226.x, r8.y, v_226.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_227 = (v_29.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_227.xyz, r10.w);
      let v_228 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_228.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r10.w = (cb3_3.tint_symbol_2[24u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[24u].w);
      let v_229 = fma(cb3_3.tint_symbol_2[16u].xyz, r9.xxx, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_229.xyz, r11.w);
      let v_230 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_230.xyz, r11.w);
      let v_231 = bitcast<vec3<u32>>(r7.yyy);
      let v_232 = r10.xyz;
      let v_233 = select(r11.xyz, v_232, (v_231 != vec3<u32>()));
      r10 = vec4<f32>(v_233.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_234 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_234.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_235 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_235.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[16u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[16u].w);
      r7.y = (r7.y / r9.x);
      let v_236 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r9.x = dot(r10.xyz, v_236.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).x, 0.0f, 1.0f);
      let v_237 = dot(r10.xyz, r2.xyw);
      r10.w = clamp(vec4<f32>(v_237, v_237, v_237, v_237).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_238 = (r10.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_238.xyz, r11.w);
      let v_239 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_239.xyz);
      let v_240 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_240.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_241 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_241.xyz, r10.w);
      let v_242 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_242, v_242, v_242, v_242).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(r0.w, r10.w, r7.z);
      let v_243 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_243, v_243, v_243, v_243).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_244 = fma(r7.yyy, cb3_3.tint_symbol_2[24u].xyz, r8.xzw);
      r8 = vec4<f32>(v_244.x, r8.y, v_244.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_245 = (v_29.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_245.xyz, r10.w);
      let v_246 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_246.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r10.w = (cb3_3.tint_symbol_2[25u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[25u].w);
      let v_247 = fma(cb3_3.tint_symbol_2[17u].xyz, r9.xxx, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_247.xyz, r11.w);
      let v_248 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_248.xyz, r11.w);
      let v_249 = bitcast<vec3<u32>>(r7.yyy);
      let v_250 = r10.xyz;
      let v_251 = select(r11.xyz, v_250, (v_249 != vec3<u32>()));
      r10 = vec4<f32>(v_251.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_252 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_252.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_253 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_253.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[17u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.y, cb3_3.tint_symbol_2[17u].w);
      r7.y = (r7.y / r9.x);
      let v_254 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r9.x = dot(r10.xyz, v_254.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).x, 0.0f, 1.0f);
      let v_255 = dot(r10.xyz, r2.xyw);
      r10.w = clamp(vec4<f32>(v_255, v_255, v_255, v_255).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.y * r9.x);
      let v_256 = (r10.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_256.xyz, r11.w);
      let v_257 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_257.xyz);
      let v_258 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_258.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_259 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_259.xyz, r10.w);
      let v_260 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_260, v_260, v_260, v_260).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(r0.w, r10.w, r7.z);
      let v_261 = dot(r10.xyz, r2.xyw);
      r10.x = clamp(vec4<f32>(v_261, v_261, v_261, v_261).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.y = (r7.y * r9.x);
      r7.y = (r7.w * r7.y);
      let v_262 = fma(r7.yyy, cb3_3.tint_symbol_2[25u].xyz, r8.xzw);
      r8 = vec4<f32>(v_262.x, r8.y, v_262.yz);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_263 = (v_29.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_263.xyz, r10.w);
      let v_264 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_264.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r9.x = (cb3_3.tint_symbol_2[26u].w + 0.00009999999747378752f);
      r7.y = clamp(((r7.yyyy / r9.xxxx)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[26u].w);
      let v_265 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_265.xyz, r11.w);
      let v_266 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_266.xyz, r11.w);
      let v_267 = bitcast<vec3<u32>>(r6.www);
      let v_268 = r10.xyz;
      let v_269 = select(r11.xyz, v_268, (v_267 != vec3<u32>()));
      r10 = vec4<f32>(v_269.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_270 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_270.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_271 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_271.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r6.w, cb3_3.tint_symbol_2[18u].w);
      r6.w = (r6.w / r7.y);
      let v_272 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.y = dot(r10.xyz, v_272.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_273 = dot(r10.xyz, r2.xyw);
      r9.x = clamp(vec4<f32>(v_273, v_273, v_273, v_273).x, 0.0f, 1.0f);
      r7.y = (r7.y * r9.x);
      r9.x = (r6.w * r7.y);
      let v_274 = (r9.xxx * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_274.xyz, r11.w);
      let v_275 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_275.xyz);
      let v_276 = fma(r3.xyz, r3.www, r10.xyz);
      r3 = vec4<f32>(v_276.xyz, r3.w);
      r3.w = dot(r3.xyz, r3.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_277 = (r3.www * r3.xyz);
      r3 = vec4<f32>(v_277.xyz, r3.w);
      let v_278 = dot(r3.xyz, r4.yzw);
      r3.w = clamp(vec4<f32>(v_278, v_278, v_278, v_278).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r9.x = (r3.w * r3.w);
      r9.x = (r9.x * r9.x);
      r3.w = (r3.w * r9.x);
      r0.w = fma(r0.w, r3.w, r7.z);
      let v_279 = dot(r3.xyz, r2.xyw);
      r3.x = clamp(vec4<f32>(v_279, v_279, v_279, v_279).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r8.y);
      r3.x = exp2(r3.x);
      r0.w = (r0.w * r3.x);
      r0.w = (r7.y * r0.w);
      r0.w = (r6.w * r0.w);
      r0.w = (r7.w * r0.w);
      let v_280 = fma(r0.www, cb3_3.tint_symbol_2[26u].xyz, r8.xzw);
      r8 = vec4<f32>(v_280.x, r8.y, v_280.yz);
    }
  }
  r0.w = (r7.x * r7.x);
  r0.x = (r0.x * r0.x);
  let v_281 = (r8.xzw * r0.xxx);
  r3 = vec4<f32>(v_281.xyz, r3.w);
  let v_282 = fma(r0.www, r9.yzw, r3.xyz);
  r3 = vec4<f32>(v_282.xyz, r3.w);
  let v_283 = fma(r5.xyz, r5.www, r3.xyz);
  r3 = vec4<f32>(v_283.xyz, r3.w);
  r0.x = fma(r2.z, r0.z, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_284 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_284.xyz, r5.w);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_285 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(r7.x, v_285.xyz);
  let v_286 = (r7.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(r7.x, v_286.xyz);
  let v_287 = fma(r5.xyz, r0.zzz, r7.yzw);
  r5 = vec4<f32>(v_287.xyz, r5.w);
  let v_288 = (r1.www * r5.xyz);
  r5 = vec4<f32>(v_288.xyz, r5.w);
  let v_289 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(v_289.x, r0.y, v_289.yz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_290 = dot(r8.xyz, r2.xyw);
  r2.z = clamp(vec4<f32>(v_290, v_290, v_290, v_290).z, 0.0f, 1.0f);
  let v_291 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.zzz, r0.xzw);
  r0 = vec4<f32>(v_291.x, r0.y, v_291.yz);
  let v_292 = fma(r0.xzw, r4.xxx, r5.xyz);
  r0 = vec4<f32>(v_292.x, r0.y, v_292.yz);
  let v_293 = (r7.xxx * r0.xzw);
  r0 = vec4<f32>(v_293.x, r0.y, v_293.yz);
  let v_294 = fma(r0.xzw, r1.xyz, r3.xyz);
  r0 = vec4<f32>(v_294.x, r0.y, v_294.yz);
  r1.x = ((-(r7.xxxx)).x + 1.0f);
  r1.y = dot((-(r4.yzwy)).xyz, r2.xyw);
  r1.y = (r1.y + r1.y);
  let v_295 = -(r1.yyyy);
  let v_296 = -(r4.yzwy);
  let v_297 = fma(r2.xyw, v_295.xyz, v_296.xyz);
  r2 = vec4<f32>(v_297.xyz, r2.w);
  let v_298 = clamp(((r0.yyyy * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_299 = r1;
  r1 = vec4<f32>(v_299.x, v_298.xy, v_299.w);
  r0.y = ((-(r1.yyyy)).y + 1.0f);
  r1.y = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.w = (r0.y * cb5_5.tint_symbol_3[6u].z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.y)));
  r3.x = fma(r0.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.y = (r0.y * r0.y);
  r0.y = fma(r0.y, 5.0f, r1.y);
  let v_300 = bitcast<u32>(r2.w);
  let v_301 = r3.x;
  r0.y = select(r0.y, v_301, (v_300 != 0u));
  let v_302 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_302.xy, r2.z, v_302.z);
  r1.y = (abs(r2.zzzz).y + 1.0f);
  let v_303 = (r2.xyw / r1.yyy);
  r2 = vec4<f32>(v_303.xy, r2.z, v_303.z);
  let v_304 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_304.xy, r2.z, v_304.z);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_305 = bitcast<vec2<u32>>(r1.yy);
  let v_306 = r2.xy;
  let v_307 = select(r2.wy, v_306, (v_305 != vec2<u32>()));
  r2 = vec4<f32>(v_307.xy, r2.zw);
  let v_308 = r0.y;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_308);
  r0.y = max(r1.w, r4.x);
  let v_309 = (r0.yyy * r2.xyz);
  r2 = vec4<f32>(v_309.xyz, r2.w);
  let v_310 = (r1.zzz * r2.xyz);
  r1 = vec4<f32>(r1.x, v_310.xyz);
  let v_311 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_311.xyz);
  let v_312 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_312.xyz);
  let v_313 = fma(r1.yzw, r1.xxx, r0.xzw);
  r0 = vec4<f32>(v_313.xyz, r0.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.w);
  let v_314 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_314.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_315 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_315 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_316 = (r0.www * r6.xyz);
  r2 = vec4<f32>(v_316.xyz, r2.w);
  let v_317 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_317, v_317, v_317, v_317).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_318 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_318, v_318, v_318, v_318).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_319 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_319.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_320 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_320.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_321 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_321.xyz, r2.w);
  let v_322 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_322.xyz, r2.w);
  let v_323 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_323.xyz, r3.w);
  let v_324 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_324.xyz, r2.w);
  let v_325 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_326 = (r2.xyz + v_325.xyz);
  r2 = vec4<f32>(v_326.xyz, r2.w);
  let v_327 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_327.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_328 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_328.xy, r1.z, v_328.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_329 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_329.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_330 = -(r0.xyxz);
  let v_331 = fma(r1.xyw, r0.www, v_330.xyw);
  r1 = vec4<f32>(v_331.xy, r1.z, v_331.z);
  let v_332 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_332.xyz, r0.w);
  let v_333 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_333.xyz, o0.w);
  o0.w = cb2_2.tint_symbol_1[15u].x;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_334 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6, v7, v_334);
  return o0;
}
