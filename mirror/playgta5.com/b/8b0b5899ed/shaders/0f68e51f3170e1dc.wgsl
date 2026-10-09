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
  tint_symbol_6 : array<vec4<u32>, 3u>,
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
  let v_29 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_30 = (r3.www * r3.xyz);
  r4 = vec4<f32>(r4.x, v_30.xyz);
  let v_31 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_32 = fma(r3.xyz, r3.www, v_31.xyz);
  r5 = vec4<f32>(v_32.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_33 = (r3.www * r5.xyz);
  r5 = vec4<f32>(v_33.xyz, r5.w);
  r3.w = (r4.x * r4.x);
  r1 = (r1 * r1);
  r4.x = fma(r0.y, 512.0f, -500.0f);
  r4.x = max(r4.x, 0.0f);
  let v_34 = -(r4.xxxx);
  r0.y = fma(r0.y, 512.0f, v_34.y);
  r4.x = (r4.x * 558.0f);
  r0.y = fma(r0.y, 3.0f, r4.x);
  r3.x = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
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
  r3.y = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).y, 1.5f, 1.0f);
  r3.y = (r3.y * 0.5f);
  let v_53 = abs(r10.yyyy);
  r3.z = max(v_53.z, abs(r10.xxxx).z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r3.y)));
  let v_54 = (bitcast<u32>(r3.z) != 0u);
  let v_55 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_55, v_54);
  let v_56 = abs(r9.yyyy);
  r4.x = max(v_56.x, abs(r9.xxxx).x);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r4.x < r3.y)));
  let v_57 = bitcast<u32>(r4.x);
  r3.z = select(r3.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_57 != 0u));
  let v_58 = abs(r8.yyyy);
  r4.x = max(v_58.x, abs(r8.xxxx).x);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r4.x < r3.y)));
  let v_59 = bitcast<u32>(r3.y);
  r3.y = select(r3.z, 0.0f, (v_59 != 0u));
  let v_60 = x0[bitcast<i32>(r3.y)];
  r8 = vec4<f32>(v_60.xyz, r8.w);
  r3.y = f32(bitcast<i32>(r3.y));
  r3.z = (r3.y + 0.5f);
  r3.z = (r3.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.yyyy)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r3.y = dot(r9, cb6_6.tint_symbol_5[12u]);
  r4.x = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r3.z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, !((r3.y == 0.0f))));
  r3.y = ((-(r3.yyyy)).y + r8.z);
  let v_61 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_61.xy, r10.z, v_61.z);
  r10.z = dpdx(r3.y);
  let v_62 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_62.xyz, r12.w);
  r12.w = dpdy(r3.y);
  let v_63 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_63.xy);
  let v_64 = -(r7.zwzz);
  let v_65 = fma(r10.xz, r12.xz, v_64.xy);
  r13 = vec4<f32>(v_65.xy, r13.zw);
  r5.w = (1.0f / r13.x);
  r6.w = (r10.z * r12.y);
  let v_66 = -(r6.wwww);
  r13.z = fma(r10.x, r12.w, v_66.z);
  let v_67 = (r5.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_67.xy);
  let v_68 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_68.xy);
  let v_69 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_69.xy);
  r3.y = fma((-(r4.xxxx)).y, r7.z, r3.y);
  r3.y = fma((-(r4.xxxx)).y, r7.w, r3.y);
  let v_70 = bitcast<u32>(r3.z);
  let v_71 = r3.y;
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
  r3.y = dot(r8, vec4<f32>(1.0f));
  r3.x = clamp(fma(r3.xxxx, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).x, 0.0f, 1.0f);
  let v_119 = abs(r7.yyyy);
  r3.z = max(v_119.z, abs(r7.xxxx).z);
  r3.z = clamp(fma(r3.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).z, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = (r3.z * r3.x);
  r3.x = fma(r3.y, 0.0625f, r3.x);
  r3.x = (r3.x * r3.x);
  r3.x = min(r3.x, 1.0f);
  r3.y = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).y, 0.0f, 1.0f);
  r3.y = sqrt(r3.y);
  r3.y = (r3.y * cb6_6.tint_symbol_5[3u].z);
  let v_120 = -(r3.xxxx);
  r3.x = fma(r3.y, v_120.x, r3.x);
  r7.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_121 = r7;
  r7 = vec4<f32>(v_121.x, 0.0f, v_121.z, 0.5f);
  let v_122 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r7.xy);
  let v_123 = r3;
  r3 = vec4<f32>(v_123.x, v_122.xy, v_123.w);
  r8 = textureSample(t12, s12, r3.yzyy.xy);
  r7.z = r8.y;
  r7 = textureSample(t13, s13, r7.zwzz.xy);
  r3.x = (r3.x * r7.x);
  let v_124 = dot(r2.xyw, v_31.xyz);
  r3.y = clamp(vec4<f32>(v_124, v_124, v_124, v_124).y, 0.0f, 1.0f);
  let v_125 = dot(r4.yzw, r2.xyw);
  r7.x = clamp(vec4<f32>(v_125, v_125, v_125, v_125).x, 0.0f, 1.0f);
  let v_126 = dot(r5.xyz, v_31.xyz);
  r7.y = clamp(vec4<f32>(v_126, v_126, v_126, v_126).y, 0.0f, 1.0f);
  let v_127 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_127.xy, r7.zw);
  let v_128 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_128.xy);
  let v_129 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_129.xy);
  let v_130 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_130.xy, r7.zw);
  r3.z = ((-(r0.wwww)).z + 1.0f);
  let v_131 = fma(r0.ww, r7.xy, r3.zz);
  r7 = vec4<f32>(v_131.xy, r7.zw);
  let v_132 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_132.xy);
  r0.w = (r7.z * 0.125f);
  r3.z = fma((-(r0.xxxx)).z, r7.x, 1.0f);
  r4.x = dot(r2.xyw, r5.xyz);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r7.w);
  r4.x = exp2(r4.x);
  r4.x = (r7.y * r4.x);
  r0.w = (r0.w * r4.x);
  r0.x = (r0.x * r0.w);
  r0.x = (r3.y * r0.x);
  r0.w = (r3.z * r3.y);
  let v_133 = fma(r1.xyz, r0.www, r0.xxx);
  r5 = vec4<f32>(v_133.xyz, r5.w);
  let v_134 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_134.xyz, r5.w);
  r0.x = fma(r2.z, r0.z, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_135 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(v_135.xyz, r7.w);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_136 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_136.xyz, r8.w);
  let v_137 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_137.xyz, r8.w);
  let v_138 = fma(r7.xyz, r0.zzz, r8.xyz);
  r7 = vec4<f32>(v_138.xyz, r7.w);
  let v_139 = (r1.www * r7.xyz);
  r7 = vec4<f32>(v_139.xyz, r7.w);
  let v_140 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(v_140.x, r0.y, v_140.yz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_141 = dot(r8.xyz, r2.xyw);
  r2.z = clamp(vec4<f32>(v_141, v_141, v_141, v_141).z, 0.0f, 1.0f);
  let v_142 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.zzz, r0.xzw);
  r0 = vec4<f32>(v_142.x, r0.y, v_142.yz);
  let v_143 = fma(r0.xzw, r3.www, r7.xyz);
  r0 = vec4<f32>(v_143.x, r0.y, v_143.yz);
  let v_144 = (r3.zzz * r0.xzw);
  r0 = vec4<f32>(v_144.x, r0.y, v_144.yz);
  let v_145 = (r1.xyz * r0.xzw);
  r0 = vec4<f32>(v_145.x, r0.y, v_145.yz);
  let v_146 = fma(r5.xyz, r3.xxx, r0.xzw);
  r0 = vec4<f32>(v_146.x, r0.y, v_146.yz);
  r1.x = ((-(r3.zzzz)).x + 1.0f);
  r1.y = dot((-(r4.yzwy)).xyz, r2.xyw);
  r1.y = (r1.y + r1.y);
  let v_147 = -(r1.yyyy);
  let v_148 = -(r4.yzwy);
  let v_149 = fma(r2.xyw, v_147.xyz, v_148.xyz);
  r2 = vec4<f32>(v_149.xyz, r2.w);
  let v_150 = clamp(((r0.yyyy * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_151 = r1;
  r1 = vec4<f32>(v_151.x, v_150.xy, v_151.w);
  r0.y = ((-(r1.yyyy)).y + 1.0f);
  r1.y = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.w = (r0.y * cb5_5.tint_symbol_3[6u].z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.y)));
  r3.x = fma(r0.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.y = (r0.y * r0.y);
  r0.y = fma(r0.y, 5.0f, r1.y);
  let v_152 = bitcast<u32>(r2.w);
  let v_153 = r3.x;
  r0.y = select(r0.y, v_153, (v_152 != 0u));
  let v_154 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_154.xy, r2.z, v_154.z);
  r1.y = (abs(r2.zzzz).y + 1.0f);
  let v_155 = (r2.xyw / r1.yyy);
  r2 = vec4<f32>(v_155.xy, r2.z, v_155.z);
  let v_156 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_156.xy, r2.z, v_156.z);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_157 = bitcast<vec2<u32>>(r1.yy);
  let v_158 = r2.xy;
  let v_159 = select(r2.wy, v_158, (v_157 != vec2<u32>()));
  r2 = vec4<f32>(v_159.xy, r2.zw);
  let v_160 = r0.y;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_160);
  r0.y = max(r1.w, r3.w);
  let v_161 = (r0.yyy * r2.xyz);
  r2 = vec4<f32>(v_161.xyz, r2.w);
  let v_162 = (r1.zzz * r2.xyz);
  r1 = vec4<f32>(r1.x, v_162.xyz);
  let v_163 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_163.xyz);
  let v_164 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_164.xyz);
  let v_165 = fma(r1.yzw, r1.xxx, r0.xzw);
  r0 = vec4<f32>(v_165.xyz, r0.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.w);
  let v_166 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_166.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
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
  let v_168 = (r0.www * r6.xyz);
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
    let v_181 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_186 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6, v7, v_186);
  return o0;
}
