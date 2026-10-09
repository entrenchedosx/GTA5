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

struct cb8_struct {
  tint_symbol_4 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb8_struct;

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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

@group(1u) @binding(71u) var t39 : texture_2d<f32>;

@group(1u) @binding(72u) var t40 : texture_2d<f32>;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v0.xyxx.xy);
  r1 = textureSample(t3, s3, v0.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.z = max(cb12_12.tint_symbol_4[7u].w, 0.00100000004749745131f);
  let v_4 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r1.yyy * v5.xyz);
  r1 = vec4<f32>(r1.x, v_5.xyz);
  let v_6 = fma(r1.xxx, v4.xyz, r1.yzw);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(r0.www, v1.xyz, r1.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_8 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_8.xy, r1.z, v_8.z);
  r2 = textureSample(t4, s4, v0.xyxx.xy);
  let v_9 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  r2.x = dot(r2.xyz, cb12_12.tint_symbol_4[7u].xyz);
  r2.x = (r2.x * cb12_12.tint_symbol_4[6u].y);
  let v_10 = (r0.xyz * cb12_12.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r2.y = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).y, 0.0f, 1.0f);
  r2.y = (r2.y * cb2_2.tint_symbol_1[15u].y);
  r2.z = (v6.x * cb12_12.tint_symbol_4[2u].x);
  r2.z = (r2.z * cb12_12.tint_symbol_4[4u].z);
  r2.x = (r2.x * v6.x);
  let v_11 = ((-(cb12_12.tint_symbol_4[4u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_11.xy, r3.zw);
  r3.z = (r3.x * v6.z);
  let v_12 = (r3.yy * v0.zw);
  let v_13 = r3;
  r3 = vec4<f32>(v_13.x, v_12.x, v_13.z, v_12.y);
  r4 = textureSample(t2, s2, r3.ywyy.xy);
  r3.y = (cb5_5.tint_symbol_3[3u].z * cb12_12.tint_symbol_4[4u].z);
  r3.w = ((-(r4.xxxx)).w + r4.z);
  r4.x = fma(r3.y, r3.w, r4.x);
  let v_14 = (r4.xy * cb12_12.tint_symbol_4[4u].xx);
  let v_15 = r3;
  r3 = vec4<f32>(v_15.x, v_14.x, v_15.z, v_14.y);
  r4.x = fma(v6.z, r3.x, -1.0f);
  r3.x = fma(r3.x, r4.x, 1.0f);
  r3.y = (r3.x * r3.y);
  let v_16 = -(r0.xyxz);
  let v_17 = fma(cb12_12.tint_symbol_4[5u].xyz, cb12_12.tint_symbol_4[4u].yyy, v_16.xyw);
  r4 = vec4<f32>(v_17.xy, r4.z, v_17.z);
  let v_18 = fma(r3.yyy, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r3.y = (r3.z * cb12_12.tint_symbol_4[4u].x);
  let v_19 = ((-(r0.xyzx)).xyz + r4.zzz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = fma(r3.yyy, r4.xyz, r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r3.x = fma((-(r3.wwww)).x, r3.x, 1.0f);
  r2.x = clamp(((r2.xxxx * r3.xxxx)).x, 0.0f, 1.0f);
  let v_21 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = -(v2.xyzx);
  let v_23 = (v_22.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_24 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_26 = fma(r3.xyz, r3.www, v_25.xyz);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_27 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  r4.w = (cb2_2.tint_symbol_1[15u].z * cb2_2.tint_symbol_1[15u].z);
  r2.y = (r2.y * r2.y);
  r5.w = fma(r2.w, cb12_12.tint_symbol_4[6u].x, -500.0f);
  r5.w = max(r5.w, 0.0f);
  let v_28 = -(r5.wwww);
  r2.w = fma(r2.w, cb12_12.tint_symbol_4[6u].x, v_28.w);
  r5.w = (r5.w * 558.0f);
  r2.w = fma(r2.w, 3.0f, r5.w);
  r5.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_29 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_29.xyz, r6.w);
  let v_30 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_30.xyz, r7.w);
  let v_31 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r6 = vec4<f32>(v_31.xy, r6.z, v_31.z);
  let v_32 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r6.xyw);
  r6 = vec4<f32>(v_32.xyz, r6.w);
  let v_33 = fma(r6.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = &(x0[0u]);
  let v_35 = r7;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(r6.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_36.xyz, r8.w);
  let v_37 = &(x0[1u]);
  let v_38 = r8;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  let v_39 = fma(r6.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_39.xyz, r9.w);
  let v_40 = &(x0[2u]);
  let v_41 = r9;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = fma(r6.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r6 = vec4<f32>(v_42.xyz, r6.w);
  let v_43 = &(x0[3u]);
  let v_44 = r6;
  *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
  let v_45 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_46 = r10;
  r10 = vec4<f32>(v_46.x, v_45.x, v_46.z, v_45.y);
  r6.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r6.z = (r6.z * 0.5f);
  let v_47 = abs(r9.yyyy);
  r6.w = max(v_47.w, abs(r9.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r6.z)));
  let v_48 = (bitcast<u32>(r6.w) != 0u);
  let v_49 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_49, v_48);
  let v_50 = abs(r8.yyyy);
  r7.z = max(v_50.z, abs(r8.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r6.z)));
  let v_51 = bitcast<u32>(r7.z);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_51 != 0u));
  let v_52 = abs(r7.yyyy);
  r7.x = max(v_52.x, abs(r7.xxxx).x);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r7.x < r6.z)));
  let v_53 = bitcast<u32>(r6.z);
  r6.z = select(r6.w, 0.0f, (v_53 != 0u));
  let v_54 = x0[bitcast<i32>(r6.z)];
  r7 = vec4<f32>(v_54.xyz, r7.w);
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
  let v_55 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_55.xy, r9.z, v_55.z);
  r9.z = dpdx(r6.z);
  let v_56 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_56.xyz, r11.w);
  r11.w = dpdy(r6.z);
  let v_57 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_57.xy, r7.zw);
  let v_58 = -(r7.xyxx);
  let v_59 = fma(r9.xz, r11.xz, v_58.xy);
  r12 = vec4<f32>(v_59.xy, r12.zw);
  r7.x = (1.0f / r12.x);
  r7.y = (r9.z * r11.y);
  let v_60 = -(r7.yyyy);
  r12.z = fma(r9.x, r11.w, v_60.z);
  let v_61 = (r7.xx * r12.yz);
  r7 = vec4<f32>(v_61.xy, r7.zw);
  let v_62 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_62.xy, r7.zw);
  let v_63 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_63.xy, r7.zw);
  r6.z = fma((-(r7.wwww)).z, r7.x, r6.z);
  r6.z = fma((-(r7.wwww)).z, r7.y, r6.z);
  let v_64 = bitcast<u32>(r6.w);
  let v_65 = r6.z;
  r10.z = select(r7.z, v_65, (v_64 != 0u));
  r8.z = 0.0f;
  let v_66 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_66.xyz, r7.w);
  let v_67 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_67.xy, r10.zw);
  let v_68 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_68.xyz, r9.w);
  let v_69 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_69.xy, r10.zw);
  let v_70 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_70.xyz, r11.w);
  let v_71 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_71.xy, r10.zw);
  let v_72 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_72.xyz, r12.w);
  let v_73 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_73.xy, r10.zw);
  let v_74 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_74.xyz, r13.w);
  let v_75 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_75.xy, r10.zw);
  let v_76 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_76.xyz, r14.w);
  let v_77 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_77.xy, r10.zw);
  let v_78 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_78.xyz, r15.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_79.xy, r10.zw);
  let v_80 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_80.xyz, r16.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_81.xy, r10.zw);
  let v_82 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_82.xyz, r17.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_83.xy, r10.zw);
  let v_84 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_84.xyz, r18.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_85.xy, r10.zw);
  let v_86 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_86.xyz, r19.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_87.xy, r10.zw);
  let v_88 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_88.xyz, r20.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_89.xy, r10.zw);
  let v_90 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_90.xyz, r21.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_91.xy, r10.zw);
  let v_92 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_92.xyz, r22.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_93.xy, r10.zw);
  let v_94 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_94.xyz, r23.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_95.xy, r10.zw);
  let v_96 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_96.xyz, r8.w);
  let v_97 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_97.xy, r7.z);
  let v_98 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_98.xy, r9.z);
  let v_99 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_99.xy, r11.z);
  let v_100 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_100.xy, r12.z);
  let v_101 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_101.xy, r13.z);
  let v_102 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_102.xy, r14.z);
  let v_103 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_103.xy, r15.z);
  let v_104 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_104.xy, r16.z);
  let v_105 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_105.xy, r17.z);
  let v_106 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_106.xy, r18.z);
  let v_107 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_107.xy, r19.z);
  let v_108 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_108.xy, r20.z);
  let v_109 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_109.xy, r21.z);
  let v_110 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_110.xy, r22.z);
  let v_111 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_111.xy, r23.z);
  let v_112 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_112.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r6.z = dot(r7, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_113 = abs(r6.yyyy);
  r6.x = max(v_113.x, abs(r6.xxxx).x);
  r6.x = clamp(fma(r6.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r6.x * r5.w);
  r5.w = fma(r6.z, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.x = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).x, 0.0f, 1.0f);
  r6.x = sqrt(r6.x);
  r6.x = (r6.x * cb6_6.tint_symbol_6[3u].z);
  let v_114 = -(r5.wwww);
  r5.w = fma(r6.x, v_114.w, r5.w);
  r6.x = (-(cb6_6.tint_symbol_6[15u].wwww)).x;
  let v_115 = r6;
  r6 = vec4<f32>(v_115.x, 0.0f, v_115.z, 0.5f);
  let v_116 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r6.xy);
  r6 = vec4<f32>(v_116.xy, r6.zw);
  r7 = textureSample(t12, s12, r6.xyxx.xy);
  r6.z = r7.y;
  r6 = textureSample(t13, s13, r6.zwzz.xy);
  r5.w = (r5.w * r6.x);
  let v_117 = dot(r1.xyw, v_25.xyz);
  r6.x = clamp(vec4<f32>(v_117, v_117, v_117, v_117).x, 0.0f, 1.0f);
  let v_118 = dot(r4.xyz, r1.xyw);
  r7.x = clamp(vec4<f32>(v_118, v_118, v_118, v_118).x, 0.0f, 1.0f);
  let v_119 = dot(r5.xyz, v_25.xyz);
  r7.y = clamp(vec4<f32>(v_119, v_119, v_119, v_119).y, 0.0f, 1.0f);
  let v_120 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_121 = r6;
  r6 = vec4<f32>(v_121.x, v_120.xy, v_121.w);
  let v_122 = (r6.yz * r6.yz);
  let v_123 = r7;
  r7 = vec4<f32>(v_123.x, v_122.xy, v_123.w);
  let v_124 = (r7.yz * r7.yz);
  let v_125 = r7;
  r7 = vec4<f32>(v_125.x, v_124.xy, v_125.w);
  let v_126 = (r6.yz * r7.yz);
  let v_127 = r6;
  r6 = vec4<f32>(v_127.x, v_126.xy, v_127.w);
  r6.w = ((-(cb12_12.tint_symbol_4[5u].wwww)).w + 1.0f);
  let v_128 = fma(cb12_12.tint_symbol_4[5u].ww, r6.yz, r6.ww);
  let v_129 = r6;
  r6 = vec4<f32>(v_129.x, v_128.xy, v_129.w);
  let v_130 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  let v_131 = r7;
  r7 = vec4<f32>(v_131.x, v_130.xy, v_131.w);
  r7.y = (r7.y * 0.125f);
  r6.y = fma((-(r2.xxxx)).y, r6.y, 1.0f);
  r5.x = dot(r1.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.z);
  r5.x = exp2(r5.x);
  r5.x = (r6.z * r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r2.x * r5.x);
  r5.x = (r6.x * r5.x);
  r5.y = (r6.y * r6.x);
  let v_132 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_132.xyz, r5.w);
  let v_133 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_133.xyz, r5.w);
  r6.x = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.x) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_134 = (v_22.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_134.xyz, r8.w);
    let v_135 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_135.xyz, r9.w);
    r7.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.w = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_136 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_136.xyz, r9.w);
    let v_137 = (r9.xyz + v_22.xyz);
    r9 = vec4<f32>(v_137.xyz, r9.w);
    let v_138 = bitcast<vec3<u32>>(r6.zzz);
    let v_139 = r8.xyz;
    let v_140 = select(r9.xyz, v_139, (v_138 != vec3<u32>()));
    r8 = vec4<f32>(v_140.xyz, r8.w);
    r6.z = dot(r8.xyz, r8.xyz);
    let v_141 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_141.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_142 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_142.xyz, r8.w);
    r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r6.z, cb3_3.tint_symbol_2[11u].w);
    r6.z = (r6.z / r7.w);
    let v_143 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r8.xyz, v_143.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_144 = dot(r8.xyz, r1.xyw);
    r8.w = clamp(vec4<f32>(v_144, v_144, v_144, v_144).w, 0.0f, 1.0f);
    r7.w = (r7.w * r8.w);
    r8.w = (r6.z * r7.w);
    let v_145 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_145.xyz, r9.w);
    let v_146 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_146.xyz, r9.w);
    let v_147 = fma(r3.xyz, r3.www, r8.xyz);
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
    r8.w = fma(cb12_12.tint_symbol_4[5u].w, r8.w, r6.w);
    let v_150 = dot(r8.xyz, r1.xyw);
    r8.x = clamp(vec4<f32>(v_150, v_150, v_150, v_150).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.z * r8.x);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r8.w);
    r7.w = (r7.w * r8.x);
    r6.z = (r6.z * r7.w);
    r6.z = (r7.y * r6.z);
    let v_151 = (r6.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_151.xyz, r8.w);
  }
  r6.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.z) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    let v_152 = bitcast<u32>(r7.w);
    let v_153 = r6.z;
    r6.x = select(r6.x, v_153, (v_152 != 0u));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_154 = (v_22.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_154.xyz, r10.w);
      let v_155 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_155.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_156 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      let v_157 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      let v_158 = bitcast<vec3<u32>>(r6.zzz);
      let v_159 = r10.xyz;
      let v_160 = select(r11.xyz, v_159, (v_158 != vec3<u32>()));
      r10 = vec4<f32>(v_160.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_161 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_161.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_162 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_162.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.z, cb3_3.tint_symbol_2[12u].w);
      r6.z = (r6.z / r7.w);
      let v_163 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r10.xyz, v_163.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_164 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_164, v_164, v_164, v_164).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.z * r7.w);
      let v_165 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      let v_166 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_166.xyz, r9.w);
      let v_167 = fma(r3.xyz, r3.www, r10.xyz);
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
      r8.w = fma(cb12_12.tint_symbol_4[5u].w, r8.w, r6.w);
      let v_170 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_170, v_170, v_170, v_170).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.z * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.w = (r7.w * r8.w);
      r6.z = (r6.z * r7.w);
      r6.z = (r7.y * r6.z);
      let v_171 = fma(r6.zzz, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_171.xyz, r8.w);
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
      let v_172 = (v_22.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_174 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_175.xyz, r11.w);
      let v_176 = bitcast<vec3<u32>>(r6.zzz);
      let v_177 = r10.xyz;
      let v_178 = select(r11.xyz, v_177, (v_176 != vec3<u32>()));
      r10 = vec4<f32>(v_178.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_179 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_179.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_180 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_180.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.z, cb3_3.tint_symbol_2[13u].w);
      r6.z = (r6.z / r7.w);
      let v_181 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r10.xyz, v_181.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_182 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_182, v_182, v_182, v_182).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.z * r7.w);
      let v_183 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_183.xyz, r11.w);
      let v_184 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_184.xyz, r9.w);
      let v_185 = fma(r3.xyz, r3.www, r10.xyz);
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
      r8.w = fma(cb12_12.tint_symbol_4[5u].w, r8.w, r6.w);
      let v_188 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_188, v_188, v_188, v_188).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.z * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.w = (r7.w * r8.w);
      r6.z = (r6.z * r7.w);
      r6.z = (r7.y * r6.z);
      let v_189 = fma(r6.zzz, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_189.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_190 = (v_22.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_190.xyz, r10.w);
      let v_191 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_191.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[22u].w);
      let v_192 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_192.xyz, r11.w);
      let v_193 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_193.xyz, r11.w);
      let v_194 = bitcast<vec3<u32>>(r6.zzz);
      let v_195 = r10.xyz;
      let v_196 = select(r11.xyz, v_195, (v_194 != vec3<u32>()));
      r10 = vec4<f32>(v_196.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_197 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_197.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_198 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_198.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.z, cb3_3.tint_symbol_2[14u].w);
      r6.z = (r6.z / r7.w);
      let v_199 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.w = dot(r10.xyz, v_199.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_200 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_200, v_200, v_200, v_200).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.z * r7.w);
      let v_201 = (r8.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_201.xyz, r11.w);
      let v_202 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_202.xyz, r9.w);
      let v_203 = fma(r3.xyz, r3.www, r10.xyz);
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
      r8.w = fma(cb12_12.tint_symbol_4[5u].w, r8.w, r6.w);
      let v_206 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_206, v_206, v_206, v_206).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.z * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.w = (r7.w * r8.w);
      r6.z = (r6.z * r7.w);
      r6.z = (r7.y * r6.z);
      let v_207 = fma(r6.zzz, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_207.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_208 = (v_22.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_208.xyz, r10.w);
      let v_209 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_209.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r8.w = (cb3_3.tint_symbol_2[23u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[23u].w);
      let v_210 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_210.xyz, r11.w);
      let v_211 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_211.xyz, r11.w);
      let v_212 = bitcast<vec3<u32>>(r6.zzz);
      let v_213 = r10.xyz;
      let v_214 = select(r11.xyz, v_213, (v_212 != vec3<u32>()));
      r10 = vec4<f32>(v_214.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_215 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_215.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_216 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_216.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.z, cb3_3.tint_symbol_2[15u].w);
      r6.z = (r6.z / r7.w);
      let v_217 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.w = dot(r10.xyz, v_217.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_218 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_218, v_218, v_218, v_218).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.z * r7.w);
      let v_219 = (r8.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_219.xyz, r11.w);
      let v_220 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_220.xyz, r9.w);
      let v_221 = fma(r3.xyz, r3.www, r10.xyz);
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
      r8.w = fma(cb12_12.tint_symbol_4[5u].w, r8.w, r6.w);
      let v_224 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_224, v_224, v_224, v_224).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.z * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.w = (r7.w * r8.w);
      r6.z = (r6.z * r7.w);
      r6.z = (r7.y * r6.z);
      let v_225 = fma(r6.zzz, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_225.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_226 = (v_22.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_226.xyz, r10.w);
      let v_227 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_227.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r8.w = (cb3_3.tint_symbol_2[24u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[24u].w);
      let v_228 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_228.xyz, r11.w);
      let v_229 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_229.xyz, r11.w);
      let v_230 = bitcast<vec3<u32>>(r6.zzz);
      let v_231 = r10.xyz;
      let v_232 = select(r11.xyz, v_231, (v_230 != vec3<u32>()));
      r10 = vec4<f32>(v_232.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_233 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_233.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_234 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_234.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.z, cb3_3.tint_symbol_2[16u].w);
      r6.z = (r6.z / r7.w);
      let v_235 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.w = dot(r10.xyz, v_235.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_236 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_236, v_236, v_236, v_236).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.z * r7.w);
      let v_237 = (r8.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_237.xyz, r11.w);
      let v_238 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_238.xyz, r9.w);
      let v_239 = fma(r3.xyz, r3.www, r10.xyz);
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
      r8.w = fma(cb12_12.tint_symbol_4[5u].w, r8.w, r6.w);
      let v_242 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_242, v_242, v_242, v_242).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.z * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.w = (r7.w * r8.w);
      r6.z = (r6.z * r7.w);
      r6.z = (r7.y * r6.z);
      let v_243 = fma(r6.zzz, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_243.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_244 = (v_22.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_244.xyz, r10.w);
      let v_245 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_245.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r8.w = (cb3_3.tint_symbol_2[25u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[25u].w);
      let v_246 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_246.xyz, r11.w);
      let v_247 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_247.xyz, r11.w);
      let v_248 = bitcast<vec3<u32>>(r6.zzz);
      let v_249 = r10.xyz;
      let v_250 = select(r11.xyz, v_249, (v_248 != vec3<u32>()));
      r10 = vec4<f32>(v_250.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_251 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_251.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_252 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_252.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.z, cb3_3.tint_symbol_2[17u].w);
      r6.z = (r6.z / r7.w);
      let v_253 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.w = dot(r10.xyz, v_253.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_254 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_254, v_254, v_254, v_254).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.z * r7.w);
      let v_255 = (r8.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_255.xyz, r11.w);
      let v_256 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_256.xyz, r9.w);
      let v_257 = fma(r3.xyz, r3.www, r10.xyz);
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
      r8.w = fma(cb12_12.tint_symbol_4[5u].w, r8.w, r6.w);
      let v_260 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_260, v_260, v_260, v_260).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.z * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.w = (r7.w * r8.w);
      r6.z = (r6.z * r7.w);
      r6.z = (r7.y * r6.z);
      let v_261 = fma(r6.zzz, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_261.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_262 = (v_22.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_262.xyz, r10.w);
      let v_263 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_263.xyz, r11.w);
      r6.z = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.w = (cb3_3.tint_symbol_2[26u].w + 0.00009999999747378752f);
      r6.z = clamp(((r6.zzzz / r7.wwww)).z, 0.0f, 1.0f);
      r6.z = (r6.z * cb3_3.tint_symbol_2[26u].w);
      let v_264 = fma(cb3_3.tint_symbol_2[18u].xyz, r6.zzz, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_264.xyz, r11.w);
      let v_265 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_265.xyz, r11.w);
      let v_266 = bitcast<vec3<u32>>(r6.xxx);
      let v_267 = r10.xyz;
      let v_268 = select(r11.xyz, v_267, (v_266 != vec3<u32>()));
      r10 = vec4<f32>(v_268.xyz, r10.w);
      r6.x = dot(r10.xyz, r10.xyz);
      let v_269 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_269.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      r6.z = inverseSqrt(r6.z);
      let v_270 = (r6.zzz * r10.xyz);
      r10 = vec4<f32>(v_270.xyz, r10.w);
      r6.x = clamp(fma(-(r6.xxxx), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
      r6.z = ((-(cb3_3.tint_symbol_2[18u].wwww)).z + 1.0f);
      r6.z = fma(r6.z, r6.x, cb3_3.tint_symbol_2[18u].w);
      r6.x = (r6.x / r6.z);
      let v_271 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r6.z = dot(r10.xyz, v_271.xyz);
      r6.z = clamp(fma(r6.zzzz, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).z, 0.0f, 1.0f);
      let v_272 = dot(r10.xyz, r1.xyw);
      r7.w = clamp(vec4<f32>(v_272, v_272, v_272, v_272).w, 0.0f, 1.0f);
      r6.z = (r6.z * r7.w);
      r7.w = (r6.x * r6.z);
      let v_273 = (r7.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_273.xyz, r11.w);
      let v_274 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_274.xyz, r9.w);
      let v_275 = fma(r3.xyz, r3.www, r10.xyz);
      r3 = vec4<f32>(v_275.xyz, r3.w);
      r3.w = dot(r3.xyz, r3.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_276 = (r3.www * r3.xyz);
      r3 = vec4<f32>(v_276.xyz, r3.w);
      let v_277 = dot(r3.xyz, r4.xyz);
      r3.w = clamp(vec4<f32>(v_277, v_277, v_277, v_277).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r7.w = (r3.w * r3.w);
      r7.w = (r7.w * r7.w);
      r3.w = (r3.w * r7.w);
      r3.w = fma(cb12_12.tint_symbol_4[5u].w, r3.w, r6.w);
      let v_278 = dot(r3.xyz, r1.xyw);
      r3.x = clamp(vec4<f32>(v_278, v_278, v_278, v_278).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r7.z);
      r3.x = exp2(r3.x);
      r3.x = (r3.x * r3.w);
      r3.x = (r6.z * r3.x);
      r3.x = (r6.x * r3.x);
      r3.x = (r7.y * r3.x);
      let v_279 = fma(r3.xxx, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_279.xyz, r8.w);
    }
  }
  r3.x = (r6.y * r6.y);
  r2.x = (r2.x * r2.x);
  let v_280 = (r8.xyz * r2.xxx);
  r3 = vec4<f32>(r3.x, v_280.xyz);
  let v_281 = fma(r3.xxx, r9.xyz, r3.yzw);
  r3 = vec4<f32>(v_281.xyz, r3.w);
  let v_282 = fma(r5.xyz, r5.www, r3.xyz);
  r3 = vec4<f32>(v_282.xyz, r3.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_283 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_283.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_284 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_284.x, r6.y, v_284.yz);
  let v_285 = (r6.xzw * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_285.x, r6.y, v_285.yz);
  let v_286 = fma(r5.xyz, r1.zzz, r6.xzw);
  r5 = vec4<f32>(v_286.xyz, r5.w);
  let v_287 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_287.xyz, r5.w);
  let v_288 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_288.x, r6.y, v_288.yz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_289 = dot(r8.xyz, r1.xyw);
  r0.w = clamp(vec4<f32>(v_289, v_289, v_289, v_289).w, 0.0f, 1.0f);
  let v_290 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r6.xzw);
  r6 = vec4<f32>(v_290.x, r6.y, v_290.yz);
  let v_291 = fma(r6.xzw, r4.www, r5.xyz);
  r5 = vec4<f32>(v_291.xyz, r5.w);
  let v_292 = (r6.yyy * r5.xyz);
  r5 = vec4<f32>(v_292.xyz, r5.w);
  let v_293 = fma(r5.xyz, r0.xyz, r3.xyz);
  r3 = vec4<f32>(v_293.xyz, r3.w);
  r0.w = ((-(r6.yyyy)).w + 1.0f);
  r1.z = dot((-(r4.xyzx)).xyz, r1.xyw);
  r1.z = (r1.z + r1.z);
  let v_294 = -(r1.zzzz);
  let v_295 = -(r4.xyzx);
  let v_296 = fma(r1.xyw, v_294.xyz, v_295.xyz);
  r1 = vec4<f32>(v_296.xyz, r1.w);
  let v_297 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.0f, 0.0f, 0.00177619897294789553f))).xw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_297.x, r2.yz, v_297.y);
  r1.w = ((-(r2.xxxx)).w + 1.0f);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.w = (r1.w * cb5_5.tint_symbol_3[6u].z);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.x)));
  r4.x = fma(r1.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.w = (r1.w * r1.w);
  r1.w = fma(r1.w, 5.0f, r2.x);
  let v_298 = bitcast<u32>(r3.w);
  let v_299 = r4.x;
  r1.w = select(r1.w, v_299, (v_298 != 0u));
  let v_300 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_300.xyz, r4.w);
  r1.x = (abs(r1.zzzz).x + 1.0f);
  let v_301 = (r4.xyz / r1.xxx);
  r4 = vec4<f32>(v_301.xyz, r4.w);
  let v_302 = ((-(r4.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_302.xyz, r4.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_303 = bitcast<vec2<u32>>(r1.xx);
  let v_304 = r4.xy;
  let v_305 = select(r4.zy, v_304, (v_303 != vec2<u32>()));
  r1 = vec4<f32>(v_305.xy, r1.zw);
  let v_306 = r1.w;
  r1 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_306);
  r1.w = max(r2.y, r4.w);
  let v_307 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_307.xyz, r1.w);
  let v_308 = (r2.www * r1.xyz);
  r2 = vec4<f32>(v_308.xy, r2.z, v_308.z);
  let v_309 = (r2.xyw * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_309.xy, r2.z, v_309.z);
  let v_310 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyw);
  r1 = vec4<f32>(v_310.xyz, r1.w);
  let v_311 = fma(r1.xyz, r0.www, r3.xyz);
  r1 = vec4<f32>(v_311.xyz, r1.w);
  r0.w = (r2.z * r7.x);
  let v_312 = fma(r0.xyz, r0.www, r1.xyz);
  r0 = vec4<f32>(v_312.xyz, r0.w);
  let v_313 = v7.xy;
  let v_314 = max(v_313, vec2<f32>(-2147483648.0f));
  let v_315 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_314), vec2<i32>(2147483647i), (v_314 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_313 == v_313))));
  r1 = vec4<f32>(v_315.xy, r1.zw);
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
  let v_316 = bitcast<u32>(r1.y);
  let v_317 = cb2_2.tint_symbol_1[15u].x;
  r0.w = select(r1.x, v_317, (v_316 != 0u));
  let v_318 = bitcast<vec4<u32>>(r1.yyyy);
  r0 = select(r0, vec4<f32>(), (v_318 != vec4<u32>()));
  let v_319 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_319.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_320 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_320);
  return o0;
}
