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

struct cb6_struct {
  tint_symbol_4 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

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

var<private> v8 : vec4<f32>;

var<private> v9 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v_1 : vec4<f32>) {
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
  let v_37 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_37.xyz, r7.w);
  let v_38 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r6 = vec4<f32>(v_38.xy, r6.z, v_38.z);
  let v_39 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r6.xyw);
  r6 = vec4<f32>(v_39.xyz, r6.w);
  let v_40 = fma(r6.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  let v_41 = &(x0[0u]);
  let v_42 = r7;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  let v_43 = fma(r6.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_43.xyz, r8.w);
  let v_44 = &(x0[1u]);
  let v_45 = r8;
  *(v_44) = vec4<f32>(v_45.xyz, (*(v_44)).w);
  let v_46 = fma(r6.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_46.xyz, r9.w);
  let v_47 = &(x0[2u]);
  let v_48 = r9;
  *(v_47) = vec4<f32>(v_48.xyz, (*(v_47)).w);
  let v_49 = fma(r6.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r6 = vec4<f32>(v_49.xyz, r6.w);
  let v_50 = &(x0[3u]);
  let v_51 = r6;
  *(v_50) = vec4<f32>(v_51.xyz, (*(v_50)).w);
  let v_52 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_53 = r10;
  r10 = vec4<f32>(v_53.x, v_52.x, v_53.z, v_52.y);
  r6.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r6.z = (r6.z * 0.5f);
  let v_54 = abs(r9.yyyy);
  r6.w = max(v_54.w, abs(r9.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r6.z)));
  let v_55 = (bitcast<u32>(r6.w) != 0u);
  let v_56 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_56, v_55);
  let v_57 = abs(r8.yyyy);
  r7.z = max(v_57.z, abs(r8.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r6.z)));
  let v_58 = bitcast<u32>(r7.z);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_58 != 0u));
  let v_59 = abs(r7.yyyy);
  r7.x = max(v_59.x, abs(r7.xxxx).x);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r7.x < r6.z)));
  let v_60 = bitcast<u32>(r6.z);
  r6.z = select(r6.w, 0.0f, (v_60 != 0u));
  let v_61 = x0[bitcast<i32>(r6.z)];
  r7 = vec4<f32>(v_61.xyz, r7.w);
  r6.z = f32(bitcast<i32>(r6.z));
  r6.w = (r6.z + 0.5f);
  r6.w = (r6.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r6.zzzz)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r6.z = dot(r8, cb6_6.tint_symbol_6[12u]);
  r7.w = dot(r8, cb6_6.tint_symbol_6[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r6.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, !((r6.z == 0.0f))));
  r6.z = ((-(r6.zzzz)).z + r7.z);
  let v_62 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_62.xy, r9.z, v_62.z);
  r9.z = dpdx(r6.z);
  let v_63 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_63.xyz, r11.w);
  r11.w = dpdy(r6.z);
  let v_64 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_64.xy, r7.zw);
  let v_65 = -(r7.xyxx);
  let v_66 = fma(r9.xz, r11.xz, v_65.xy);
  r12 = vec4<f32>(v_66.xy, r12.zw);
  r7.x = (1.0f / r12.x);
  r7.y = (r9.z * r11.y);
  let v_67 = -(r7.yyyy);
  r12.z = fma(r9.x, r11.w, v_67.z);
  let v_68 = (r7.xx * r12.yz);
  r7 = vec4<f32>(v_68.xy, r7.zw);
  let v_69 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_69.xy, r7.zw);
  let v_70 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_70.xy, r7.zw);
  r6.z = fma((-(r7.wwww)).z, r7.x, r6.z);
  r6.z = fma((-(r7.wwww)).z, r7.y, r6.z);
  let v_71 = bitcast<u32>(r6.w);
  let v_72 = r6.z;
  r10.z = select(r7.z, v_72, (v_71 != 0u));
  r8.z = 0.0f;
  let v_73 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_73.xyz, r7.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_74.xy, r10.zw);
  let v_75 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_75.xyz, r9.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_76.xy, r10.zw);
  let v_77 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_77.xyz, r11.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_78.xy, r10.zw);
  let v_79 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_79.xyz, r12.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_80.xy, r10.zw);
  let v_81 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_81.xyz, r13.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_82.xy, r10.zw);
  let v_83 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_83.xyz, r14.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_84.xy, r10.zw);
  let v_85 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_85.xyz, r15.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_86.xy, r10.zw);
  let v_87 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_87.xyz, r16.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_88.xy, r10.zw);
  let v_89 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_89.xyz, r17.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_90.xy, r10.zw);
  let v_91 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_91.xyz, r18.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_92.xy, r10.zw);
  let v_93 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_93.xyz, r19.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_94.xy, r10.zw);
  let v_95 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_95.xyz, r20.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_96.xy, r10.zw);
  let v_97 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_97.xyz, r21.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_98.xy, r10.zw);
  let v_99 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_99.xyz, r22.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_100.xy, r10.zw);
  let v_101 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_101.xyz, r23.w);
  let v_102 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_102.xy, r10.zw);
  let v_103 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_103.xyz, r8.w);
  let v_104 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_104.xy, r7.z);
  let v_105 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_105.xy, r9.z);
  let v_106 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_106.xy, r11.z);
  let v_107 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_107.xy, r12.z);
  let v_108 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_108.xy, r13.z);
  let v_109 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_109.xy, r14.z);
  let v_110 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_110.xy, r15.z);
  let v_111 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_111.xy, r16.z);
  let v_112 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_112.xy, r17.z);
  let v_113 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_113.xy, r18.z);
  let v_114 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_114.xy, r19.z);
  let v_115 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_115.xy, r20.z);
  let v_116 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_116.xy, r21.z);
  let v_117 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_117.xy, r22.z);
  let v_118 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_118.xy, r23.z);
  let v_119 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_119.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r6.z = dot(r7, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_120 = abs(r6.yyyy);
  r6.x = max(v_120.x, abs(r6.xxxx).x);
  r6.x = clamp(fma(r6.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r6.x * r5.w);
  r5.w = fma(r6.z, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.x = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).x, 0.0f, 1.0f);
  r6.x = sqrt(r6.x);
  r6.x = (r6.x * cb6_6.tint_symbol_6[3u].z);
  let v_121 = -(r5.wwww);
  r5.w = fma(r6.x, v_121.w, r5.w);
  r6.x = (-(cb6_6.tint_symbol_6[15u].wwww)).x;
  let v_122 = r6;
  r6 = vec4<f32>(v_122.x, 0.0f, v_122.z, 0.5f);
  let v_123 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r6.xy);
  r6 = vec4<f32>(v_123.xy, r6.zw);
  r7 = textureSample(t12, s12, r6.xyxx.xy);
  r6.z = r7.y;
  r6 = textureSample(t13, s13, r6.zwzz.xy);
  r5.w = (r5.w * r6.x);
  let v_124 = dot(r2.xyw, v_32.xyz);
  r6.x = clamp(vec4<f32>(v_124, v_124, v_124, v_124).x, 0.0f, 1.0f);
  let v_125 = dot(r4.yzw, r2.xyw);
  r7.x = clamp(vec4<f32>(v_125, v_125, v_125, v_125).x, 0.0f, 1.0f);
  let v_126 = dot(r5.xyz, v_32.xyz);
  r7.y = clamp(vec4<f32>(v_126, v_126, v_126, v_126).y, 0.0f, 1.0f);
  let v_127 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_128 = r6;
  r6 = vec4<f32>(v_128.x, v_127.xy, v_128.w);
  let v_129 = (r6.yz * r6.yz);
  r7 = vec4<f32>(v_129.xy, r7.zw);
  let v_130 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_130.xy, r7.zw);
  let v_131 = (r6.yz * r7.xy);
  let v_132 = r6;
  r6 = vec4<f32>(v_132.x, v_131.xy, v_132.w);
  r6.w = ((-(r0.wwww)).w + 1.0f);
  let v_133 = fma(r0.ww, r6.yz, r6.ww);
  let v_134 = r6;
  r6 = vec4<f32>(v_134.x, v_133.xy, v_134.w);
  let v_135 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_135.xy, r7.zw);
  r7.x = (r7.x * 0.125f);
  r6.y = fma((-(r0.xxxx)).y, r6.y, 1.0f);
  r5.x = dot(r2.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.y);
  r5.x = exp2(r5.x);
  r5.x = (r6.z * r5.x);
  r5.x = (r7.x * r5.x);
  r5.x = (r0.x * r5.x);
  r5.x = (r6.x * r5.x);
  r5.y = (r6.y * r6.x);
  let v_136 = fma(r1.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_136.xyz, r5.w);
  let v_137 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_137.xyz, r5.w);
  r6.x = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.x) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_138 = (v_29.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_138.xyz, r8.w);
    let v_139 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_139.xyz, r9.w);
    r7.z = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r7.z = clamp(((r7.zzzz / r7.wwww)).z, 0.0f, 1.0f);
    r7.z = (r7.z * cb3_3.tint_symbol_2[19u].w);
    let v_140 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_140.xyz, r9.w);
    let v_141 = (r9.xyz + v_29.xyz);
    r9 = vec4<f32>(v_141.xyz, r9.w);
    let v_142 = bitcast<vec3<u32>>(r6.zzz);
    let v_143 = r8.xyz;
    let v_144 = select(r9.xyz, v_143, (v_142 != vec3<u32>()));
    r8 = vec4<f32>(v_144.xyz, r8.w);
    r6.z = dot(r8.xyz, r8.xyz);
    let v_145 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_145.xyz, r8.w);
    r7.z = dot(r8.xyz, r8.xyz);
    r7.z = inverseSqrt(r7.z);
    let v_146 = (r7.zzz * r8.xyz);
    r8 = vec4<f32>(v_146.xyz, r8.w);
    r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r7.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r7.z = fma(r7.z, r6.z, cb3_3.tint_symbol_2[11u].w);
    r6.z = (r6.z / r7.z);
    let v_147 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.z = dot(r8.xyz, v_147.xyz);
    r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_148 = dot(r8.xyz, r2.xyw);
    r7.w = clamp(vec4<f32>(v_148, v_148, v_148, v_148).w, 0.0f, 1.0f);
    r7.z = (r7.z * r7.w);
    r7.w = (r6.z * r7.z);
    let v_149 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_149.xyz, r9.w);
    let v_150 = (r1.xyz * r9.xyz);
    r9 = vec4<f32>(v_150.xyz, r9.w);
    let v_151 = fma(r3.xyz, r3.www, r8.xyz);
    r8 = vec4<f32>(v_151.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_152 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_152.xyz, r8.w);
    let v_153 = dot(r8.xyz, r4.yzw);
    r7.w = clamp(vec4<f32>(v_153, v_153, v_153, v_153).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r8.w = (r7.w * r7.w);
    r8.w = (r8.w * r8.w);
    r7.w = (r7.w * r8.w);
    r7.w = fma(r0.w, r7.w, r6.w);
    let v_154 = dot(r8.xyz, r2.xyw);
    r8.x = clamp(vec4<f32>(v_154, v_154, v_154, v_154).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.y * r8.x);
    r8.x = exp2(r8.x);
    r7.w = (r7.w * r8.x);
    r7.z = (r7.z * r7.w);
    r6.z = (r6.z * r7.z);
    r6.z = (r7.x * r6.z);
    let v_155 = (r6.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_155.xyz, r8.w);
  }
  r6.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.z) != 0u)) {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    let v_156 = bitcast<u32>(r7.z);
    let v_157 = r6.z;
    r6.x = select(r6.x, v_157, (v_156 != 0u));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_158 = (v_29.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_158.xyz, r10.w);
      let v_159 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r7.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[20u].w);
      let v_160 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      let v_161 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_161.xyz, r11.w);
      let v_162 = bitcast<vec3<u32>>(r6.zzz);
      let v_163 = r10.xyz;
      let v_164 = select(r11.xyz, v_163, (v_162 != vec3<u32>()));
      r10 = vec4<f32>(v_164.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_165 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_165.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_166 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_166.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r6.z, cb3_3.tint_symbol_2[12u].w);
      r6.z = (r6.z / r7.z);
      let v_167 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.z = dot(r10.xyz, v_167.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      let v_168 = dot(r10.xyz, r2.xyw);
      r7.w = clamp(vec4<f32>(v_168, v_168, v_168, v_168).w, 0.0f, 1.0f);
      r7.z = (r7.z * r7.w);
      r7.w = (r6.z * r7.z);
      let v_169 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      let v_170 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_170.xyz, r9.w);
      let v_171 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_172 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = dot(r10.xyz, r4.yzw);
      r7.w = clamp(vec4<f32>(v_173, v_173, v_173, v_173).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(r0.w, r7.w, r6.w);
      let v_174 = dot(r10.xyz, r2.xyw);
      r8.w = clamp(vec4<f32>(v_174, v_174, v_174, v_174).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r7.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r7.z = (r7.z * r7.w);
      r6.z = (r6.z * r7.z);
      r6.z = (r7.x * r6.z);
      let v_175 = fma(r6.zzz, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_175.xyz, r8.w);
    }
  } else {
    r6.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_176 = (v_29.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_176.xyz, r10.w);
      let v_177 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r7.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[21u].w);
      let v_178 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_178.xyz, r11.w);
      let v_179 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_179.xyz, r11.w);
      let v_180 = bitcast<vec3<u32>>(r6.zzz);
      let v_181 = r10.xyz;
      let v_182 = select(r11.xyz, v_181, (v_180 != vec3<u32>()));
      r10 = vec4<f32>(v_182.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_183 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_183.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_184 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_184.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r6.z, cb3_3.tint_symbol_2[13u].w);
      r6.z = (r6.z / r7.z);
      let v_185 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.z = dot(r10.xyz, v_185.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      let v_186 = dot(r10.xyz, r2.xyw);
      r7.w = clamp(vec4<f32>(v_186, v_186, v_186, v_186).w, 0.0f, 1.0f);
      r7.z = (r7.z * r7.w);
      r7.w = (r6.z * r7.z);
      let v_187 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_187.xyz, r11.w);
      let v_188 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_188.xyz, r9.w);
      let v_189 = fma(r3.xyz, r3.www, r10.xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_190 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_190.xyz, r10.w);
      let v_191 = dot(r10.xyz, r4.yzw);
      r7.w = clamp(vec4<f32>(v_191, v_191, v_191, v_191).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(r0.w, r7.w, r6.w);
      let v_192 = dot(r10.xyz, r2.xyw);
      r8.w = clamp(vec4<f32>(v_192, v_192, v_192, v_192).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r7.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r7.z = (r7.z * r7.w);
      r6.z = (r6.z * r7.z);
      r6.z = (r7.x * r6.z);
      let v_193 = fma(r6.zzz, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_193.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_194 = (v_29.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_194.xyz, r10.w);
      let v_195 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      r6.z = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.z = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r6.z = clamp(((r6.zzzz / r7.zzzz)).z, 0.0f, 1.0f);
      r6.z = (r6.z * cb3_3.tint_symbol_2[22u].w);
      let v_196 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_196.xyz, r11.w);
      let v_197 = (r11.xyz + v_29.xyz);
      r11 = vec4<f32>(v_197.xyz, r11.w);
      let v_198 = bitcast<vec3<u32>>(r6.xxx);
      let v_199 = r10.xyz;
      let v_200 = select(r11.xyz, v_199, (v_198 != vec3<u32>()));
      r10 = vec4<f32>(v_200.xyz, r10.w);
      r6.x = dot(r10.xyz, r10.xyz);
      let v_201 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_201.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      r6.z = inverseSqrt(r6.z);
      let v_202 = (r6.zzz * r10.xyz);
      r10 = vec4<f32>(v_202.xyz, r10.w);
      r6.x = clamp(fma(-(r6.xxxx), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
      r6.z = ((-(cb3_3.tint_symbol_2[14u].wwww)).z + 1.0f);
      r6.z = fma(r6.z, r6.x, cb3_3.tint_symbol_2[14u].w);
      r6.x = (r6.x / r6.z);
      let v_203 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.z = dot(r10.xyz, v_203.xyz);
      r6.z = clamp(fma(r6.zzzz, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).z, 0.0f, 1.0f);
      let v_204 = dot(r10.xyz, r2.xyw);
      r7.z = clamp(vec4<f32>(v_204, v_204, v_204, v_204).z, 0.0f, 1.0f);
      r6.z = (r6.z * r7.z);
      r7.z = (r6.x * r6.z);
      let v_205 = (r7.zzz * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_205.xyz, r11.w);
      let v_206 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_206.xyz, r9.w);
      let v_207 = fma(r3.xyz, r3.www, r10.xyz);
      r3 = vec4<f32>(v_207.xyz, r3.w);
      r3.w = dot(r3.xyz, r3.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_208 = (r3.www * r3.xyz);
      r3 = vec4<f32>(v_208.xyz, r3.w);
      let v_209 = dot(r3.xyz, r4.yzw);
      r3.w = clamp(vec4<f32>(v_209, v_209, v_209, v_209).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r7.z = (r3.w * r3.w);
      r7.z = (r7.z * r7.z);
      r3.w = (r3.w * r7.z);
      r0.w = fma(r0.w, r3.w, r6.w);
      let v_210 = dot(r3.xyz, r2.xyw);
      r3.x = clamp(vec4<f32>(v_210, v_210, v_210, v_210).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r7.y);
      r3.x = exp2(r3.x);
      r0.w = (r0.w * r3.x);
      r0.w = (r6.z * r0.w);
      r0.w = (r6.x * r0.w);
      r0.w = (r7.x * r0.w);
      let v_211 = fma(r0.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_211.xyz, r8.w);
    }
  }
  r0.w = (r6.y * r6.y);
  r0.x = (r0.x * r0.x);
  let v_212 = (r8.xyz * r0.xxx);
  r3 = vec4<f32>(v_212.xyz, r3.w);
  let v_213 = fma(r0.www, r9.xyz, r3.xyz);
  r3 = vec4<f32>(v_213.xyz, r3.w);
  let v_214 = fma(r5.xyz, r5.www, r3.xyz);
  r3 = vec4<f32>(v_214.xyz, r3.w);
  r0.x = fma(r2.z, r0.z, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_215 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_215.xyz, r5.w);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_216 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_216.x, r6.y, v_216.yz);
  let v_217 = (r6.xzw * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_217.x, r6.y, v_217.yz);
  let v_218 = fma(r5.xyz, r0.zzz, r6.xzw);
  r5 = vec4<f32>(v_218.xyz, r5.w);
  let v_219 = (r1.www * r5.xyz);
  r5 = vec4<f32>(v_219.xyz, r5.w);
  let v_220 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(v_220.x, r0.y, v_220.yz);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_221 = dot(r7.xyz, r2.xyw);
  r2.z = clamp(vec4<f32>(v_221, v_221, v_221, v_221).z, 0.0f, 1.0f);
  let v_222 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.zzz, r0.xzw);
  r0 = vec4<f32>(v_222.x, r0.y, v_222.yz);
  let v_223 = fma(r0.xzw, r4.xxx, r5.xyz);
  r0 = vec4<f32>(v_223.x, r0.y, v_223.yz);
  let v_224 = (r6.yyy * r0.xzw);
  r0 = vec4<f32>(v_224.x, r0.y, v_224.yz);
  let v_225 = fma(r0.xzw, r1.xyz, r3.xyz);
  r0 = vec4<f32>(v_225.x, r0.y, v_225.yz);
  r1.x = ((-(r6.yyyy)).x + 1.0f);
  r1.y = dot((-(r4.yzwy)).xyz, r2.xyw);
  r1.y = (r1.y + r1.y);
  let v_226 = -(r1.yyyy);
  let v_227 = -(r4.yzwy);
  let v_228 = fma(r2.xyw, v_226.xyz, v_227.xyz);
  r2 = vec4<f32>(v_228.xyz, r2.w);
  let v_229 = clamp(((r0.yyyy * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_230 = r1;
  r1 = vec4<f32>(v_230.x, v_229.xy, v_230.w);
  r0.y = ((-(r1.yyyy)).y + 1.0f);
  r1.y = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.w = (r0.y * cb5_5.tint_symbol_3[6u].z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.y)));
  r3.x = fma(r0.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.y = (r0.y * r0.y);
  r0.y = fma(r0.y, 5.0f, r1.y);
  let v_231 = bitcast<u32>(r2.w);
  let v_232 = r3.x;
  r0.y = select(r0.y, v_232, (v_231 != 0u));
  let v_233 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_233.xy, r2.z, v_233.z);
  r1.y = (abs(r2.zzzz).y + 1.0f);
  let v_234 = (r2.xyw / r1.yyy);
  r2 = vec4<f32>(v_234.xy, r2.z, v_234.z);
  let v_235 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_235.xy, r2.z, v_235.z);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_236 = bitcast<vec2<u32>>(r1.yy);
  let v_237 = r2.xy;
  let v_238 = select(r2.wy, v_237, (v_236 != vec2<u32>()));
  r2 = vec4<f32>(v_238.xy, r2.zw);
  let v_239 = r0.y;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_239);
  r0.y = max(r1.w, r4.x);
  let v_240 = (r0.yyy * r2.xyz);
  r2 = vec4<f32>(v_240.xyz, r2.w);
  let v_241 = (r1.zzz * r2.xyz);
  r1 = vec4<f32>(r1.x, v_241.xyz);
  let v_242 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_242.xyz);
  let v_243 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_243.xyz);
  let v_244 = fma(r1.yzw, r1.xxx, r0.xzw);
  r0 = vec4<f32>(v_244.xyz, r0.w);
  let v_245 = v8.xy;
  let v_246 = max(v_245, vec2<f32>(-2147483648.0f));
  let v_247 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_246), vec2<i32>(2147483647i), (v_246 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_245 == v_245))));
  r1 = vec4<f32>(v_247.xy, r1.zw);
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
  let v_248 = bitcast<u32>(r1.y);
  let v_249 = cb2_2.tint_symbol_1[15u].x;
  r0.w = select(r1.x, v_249, (v_248 != 0u));
  let v_250 = bitcast<vec4<u32>>(r1.yyyy);
  r0 = select(r0, vec4<f32>(), (v_250 != vec4<u32>()));
  let v_251 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_251.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_252 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7, v_252);
  return o0;
}
