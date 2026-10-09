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

@group(1u) @binding(12u) var<uniform> cb12_12 : cb6_struct;

struct cb16_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 16u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb16_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

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
  let v_4 = (r1.yyy * v5.xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  let v_5 = fma(r1.xxx, v4.xyz, r1.yzw);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(r0.www, v1.xyz, r1.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_7 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
  r2 = textureSample(t4, s4, v0.xyxx.xy);
  let v_8 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_8.xy, r2.zw);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  let v_9 = (r0.xyz * cb12_12.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  r2.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  r2.w = (r2.w * cb2_2.tint_symbol_1[15u].y);
  r3.x = (v6.x * cb12_12.tint_symbol_4[2u].x);
  r3.x = (r3.x * cb12_12.tint_symbol_4[3u].z);
  r3.y = (r2.x * v6.x);
  let v_10 = ((-(cb12_12.tint_symbol_4[3u].zzzz)).zw + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(r3.xy, v_10.xy);
  r4.x = (r3.z * v6.z);
  let v_11 = (r3.ww * v0.zw);
  let v_12 = r4;
  r4 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r5 = textureSample(t2, s2, r4.yzyy.xy);
  r3.w = (cb5_5.tint_symbol_3[3u].z * cb12_12.tint_symbol_4[3u].z);
  r4.y = ((-(r5.xxxx)).y + r5.z);
  r5.x = fma(r3.w, r4.y, r5.x);
  let v_13 = (r5.xy * cb12_12.tint_symbol_4[3u].xx);
  let v_14 = r4;
  r4 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r3.w = fma(v6.z, r3.z, -1.0f);
  r3.z = fma(r3.z, r3.w, 1.0f);
  r3.w = (r3.z * r4.y);
  let v_15 = -(r0.xyxz);
  let v_16 = fma(cb12_12.tint_symbol_4[4u].xyz, cb12_12.tint_symbol_4[3u].yyy, v_15.xyw);
  r5 = vec4<f32>(v_16.xy, r5.z, v_16.z);
  let v_17 = fma(r3.www, r5.xyw, r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r3.w = (r4.x * cb12_12.tint_symbol_4[3u].x);
  let v_18 = ((-(r0.xyxz)).xyw + r5.zzz);
  r4 = vec4<f32>(v_18.xy, r4.z, v_18.z);
  let v_19 = fma(r3.www, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r3.z = fma((-(r4.zzzz)).z, r3.z, 1.0f);
  r3.y = clamp(((r3.zzzz * r3.yyyy)).y, 0.0f, 1.0f);
  r3.z = (v6.x * cb12_12.tint_symbol_4[3u].w);
  r2.x = (r2.x * r3.z);
  r2.x = (r2.x * 1.5f);
  r3.z = dot(v3.xyz, v3.xyz);
  r3.z = inverseSqrt(r3.z);
  let v_20 = -(cb3_3.tint_symbol_2[0u].xyzx);
  r4 = vec4<f32>(((v_20.xyz + vec3<f32>(0.0f, 0.0f, -1.0f))).xyz, r4.w);
  let v_21 = fma(cb12_12.tint_symbol_4[5u].www, r4.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = -(r4.xyzx);
  let v_23 = fma(v3.xyz, r3.zzz, v_22.xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  r3.z = dot(r4.xyz, r4.xyz);
  r3.z = inverseSqrt(r3.z);
  let v_24 = (r3.zzz * r4.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  r3.z = dot(r1.xyw, r4.xyz);
  r3.z = clamp(((r3.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  let v_25 = fma(r2.yy, vec2<f32>(7.0f, 512.0f), vec2<f32>(0.00000000999999993923f, -500.0f));
  r4 = vec4<f32>(v_25.xy, r4.zw);
  r3.z = log2(r3.z);
  r3.z = (r3.z * r4.x);
  r3.z = exp2(r3.z);
  let v_26 = fma(r2.xxx, r3.zzz, r0.xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = ((-(v2.xxyz)).xzw + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_28.x, r4.y, v_28.yz);
  r2.x = dot(r4.xzw, r4.xzw);
  r2.x = inverseSqrt(r2.x);
  let v_29 = (r2.xxx * r4.xzw);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = fma(r4.xzw, r2.xxx, v_20.xyz);
  r6 = vec4<f32>(v_30.xyz, r6.w);
  r2.x = dot(r6.xyz, r6.xyz);
  r2.x = inverseSqrt(r2.x);
  let v_31 = (r2.xxx * r6.xyz);
  r6 = vec4<f32>(v_31.xyz, r6.w);
  r2.x = (cb2_2.tint_symbol_1[15u].z * cb2_2.tint_symbol_1[15u].z);
  r2.w = (r2.w * r2.w);
  r3.z = max(r4.y, 0.0f);
  let v_32 = -(r3.zzzz);
  r2.y = fma(r2.y, 512.0f, v_32.y);
  r3.z = (r3.z * 558.0f);
  r2.y = fma(r2.y, 3.0f, r3.z);
  r3.z = dot(r4.xzw, cb1_1.tint_symbol[14u].xyz);
  let v_33 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_33.xyz, r4.w);
  let v_34 = (r4.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_34.xyz, r7.w);
  let v_35 = fma(r4.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_35.xyz, r7.w);
  let v_36 = fma(r4.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_36.xyz, r7.w);
  let v_37 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_37.xyz, r8.w);
  let v_38 = &(x0[0u]);
  let v_39 = r8;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_40.xyz, r9.w);
  let v_41 = &(x0[1u]);
  let v_42 = r9;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  let v_43 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_43.xyz, r10.w);
  let v_44 = &(x0[2u]);
  let v_45 = r10;
  *(v_44) = vec4<f32>(v_45.xyz, (*(v_44)).w);
  let v_46 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_46.xyz, r7.w);
  let v_47 = &(x0[3u]);
  let v_48 = r7;
  *(v_47) = vec4<f32>(v_48.xyz, (*(v_47)).w);
  let v_49 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_50 = r11;
  r11 = vec4<f32>(v_50.x, v_49.x, v_50.z, v_49.y);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_51 = abs(r10.yyyy);
  r4.w = max(v_51.w, abs(r10.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_52 = (bitcast<u32>(r4.w) != 0u);
  let v_53 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_53, v_52);
  let v_54 = abs(r9.yyyy);
  r5.w = max(v_54.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_55 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_55 != 0u));
  let v_56 = abs(r8.yyyy);
  r5.w = max(v_56.w, abs(r8.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_57 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_57 != 0u));
  let v_58 = x0[bitcast<i32>(r3.w)];
  r8 = vec4<f32>(v_58.xyz, r8.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.w = (r3.w + 0.5f);
  r4.w = (r4.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r3.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r5.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r8.z);
  let v_59 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_59.xy, r10.z, v_59.z);
  r10.z = dpdx(r3.w);
  let v_60 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_60.xyz, r12.w);
  r12.w = dpdy(r3.w);
  let v_61 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_61.xy);
  let v_62 = -(r7.zwzz);
  let v_63 = fma(r10.xz, r12.xz, v_62.xy);
  r13 = vec4<f32>(v_63.xy, r13.zw);
  r6.w = (1.0f / r13.x);
  r7.z = (r10.z * r12.y);
  let v_64 = -(r7.zzzz);
  r13.z = fma(r10.x, r12.w, v_64.z);
  let v_65 = (r6.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_65.xy);
  let v_66 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_66.xy);
  let v_67 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_67.xy);
  r3.w = fma((-(r5.wwww)).w, r7.z, r3.w);
  r3.w = fma((-(r5.wwww)).w, r7.w, r3.w);
  let v_68 = bitcast<u32>(r4.w);
  let v_69 = r3.w;
  r11.z = select(r8.z, v_69, (v_68 != 0u));
  r9.z = 0.0f;
  let v_70 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_70.xyz, r8.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_72.xyz, r10.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_74.xyz, r12.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_76.xyz, r13.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_78.xyz, r14.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_80.xyz, r15.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_82.xyz, r16.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_84.xyz, r17.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_86.xyz, r18.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_88.xyz, r19.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_90.xyz, r20.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_92.xyz, r21.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_94.xyz, r22.w);
  let v_95 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_95.xy, r11.zw);
  let v_96 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_96.xyz, r23.w);
  let v_97 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_97.xy, r11.zw);
  let v_98 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_98.xyz, r24.w);
  let v_99 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_99.xy, r11.zw);
  let v_100 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_100.xyz, r9.w);
  let v_101 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_101.xy, r8.z);
  let v_102 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_102.xy, r10.z);
  let v_103 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_103.xy, r12.z);
  let v_104 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_104.xy, r13.z);
  let v_105 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_105.xy, r14.z);
  let v_106 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_106.xy, r15.z);
  let v_107 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_107.xy, r16.z);
  let v_108 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_108.xy, r17.z);
  let v_109 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_109.xy, r18.z);
  let v_110 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_110.xy, r19.z);
  let v_111 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_111.xy, r20.z);
  let v_112 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_112.xy, r21.z);
  let v_113 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_113.xy, r22.z);
  let v_114 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_114.xy, r23.z);
  let v_115 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_115.xy, r24.z);
  let v_116 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_116.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r3.w = dot(r8, vec4<f32>(1.0f));
  r3.z = clamp(fma(r3.zzzz, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).z, 0.0f, 1.0f);
  let v_117 = abs(r7.yyyy);
  r4.w = max(v_117.w, abs(r7.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.z = ((-(r3.zzzz)).z + 1.0f);
  r3.z = (r4.w * r3.z);
  r3.z = fma(r3.w, 0.0625f, r3.z);
  r3.z = (r3.z * r3.z);
  r3.z = min(r3.z, 1.0f);
  r3.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_5[3u].z);
  let v_118 = -(r3.zzzz);
  r3.z = fma(r3.w, v_118.z, r3.z);
  r7.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_119 = r7;
  r7 = vec4<f32>(v_119.x, 0.0f, v_119.z, 0.5f);
  let v_120 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r7.xy);
  r7 = vec4<f32>(v_120.xy, r7.zw);
  r8 = textureSample(t12, s12, r7.xyxx.xy);
  r7.z = r8.y;
  r7 = textureSample(t13, s13, r7.zwzz.xy);
  r3.z = (r3.z * r7.x);
  let v_121 = dot(r1.xyw, v_20.xyz);
  r3.w = clamp(vec4<f32>(v_121, v_121, v_121, v_121).w, 0.0f, 1.0f);
  let v_122 = dot(r5.xyz, r1.xyw);
  r7.x = clamp(vec4<f32>(v_122, v_122, v_122, v_122).x, 0.0f, 1.0f);
  let v_123 = dot(r6.xyz, v_20.xyz);
  r7.y = clamp(vec4<f32>(v_123, v_123, v_123, v_123).y, 0.0f, 1.0f);
  let v_124 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_125 = r7;
  r7 = vec4<f32>(v_125.x, v_124.xy, v_125.w);
  let v_126 = (r7.yz * r7.yz);
  r8 = vec4<f32>(v_126.xy, r8.zw);
  let v_127 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_127.xy, r8.zw);
  let v_128 = (r7.yz * r8.xy);
  let v_129 = r7;
  r7 = vec4<f32>(v_129.x, v_128.xy, v_129.w);
  r4.w = ((-(r2.zzzz)).w + 1.0f);
  let v_130 = fma(r2.zz, r7.yz, r4.ww);
  let v_131 = r7;
  r7 = vec4<f32>(v_131.x, v_130.xy, v_131.w);
  let v_132 = (r2.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_132.xy, r8.zw);
  r2.z = (r8.x * 0.125f);
  r4.w = fma((-(r3.yyyy)).w, r7.y, 1.0f);
  r5.w = dot(r1.xyw, r6.xyz);
  r5.w = clamp(((r5.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r5.w = log2(r5.w);
  r5.w = (r5.w * r8.y);
  r5.w = exp2(r5.w);
  r5.w = (r7.z * r5.w);
  r2.z = (r2.z * r5.w);
  r2.z = (r3.y * r2.z);
  r2.z = (r3.w * r2.z);
  r3.y = (r3.w * r4.w);
  let v_133 = fma(r0.xyz, r3.yyy, r2.zzz);
  r6 = vec4<f32>(v_133.xyz, r6.w);
  let v_134 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_134.xyz, r6.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_135 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(r7.x, v_135.xyz);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_136 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_136.xyz, r8.w);
  let v_137 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_137.xyz, r8.w);
  let v_138 = fma(r7.yzw, r1.zzz, r8.xyz);
  r7 = vec4<f32>(r7.x, v_138.xyz);
  let v_139 = (r2.www * r7.yzw);
  r7 = vec4<f32>(r7.x, v_139.xyz);
  let v_140 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r8 = vec4<f32>(v_140.xyz, r8.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_141 = dot(r9.xyz, r1.xyw);
  r0.w = clamp(vec4<f32>(v_141, v_141, v_141, v_141).w, 0.0f, 1.0f);
  let v_142 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r8.xyz);
  r8 = vec4<f32>(v_142.xyz, r8.w);
  let v_143 = fma(r8.xyz, r2.xxx, r7.yzw);
  r7 = vec4<f32>(r7.x, v_143.xyz);
  let v_144 = (r4.www * r7.yzw);
  r7 = vec4<f32>(r7.x, v_144.xyz);
  let v_145 = (r0.xyz * r7.yzw);
  r7 = vec4<f32>(r7.x, v_145.xyz);
  let v_146 = fma(r6.xyz, r3.zzz, r7.yzw);
  r3 = vec4<f32>(r3.x, v_146.xyz);
  r0.w = ((-(r4.wwww)).w + 1.0f);
  r1.z = dot((-(r5.xyzx)).xyz, r1.xyw);
  r1.z = (r1.z + r1.z);
  let v_147 = -(r1.zzzz);
  let v_148 = -(r5.xyzx);
  let v_149 = fma(r1.xyw, v_147.xyz, v_148.xyz);
  r1 = vec4<f32>(v_149.xyz, r1.w);
  let v_150 = clamp(((r2.yyyy * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_151 = r2;
  r2 = vec4<f32>(v_151.x, v_150.xy, v_151.w);
  r1.w = ((-(r2.yyyy)).w + 1.0f);
  r2.y = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r4.w = (r1.w * cb5_5.tint_symbol_3[6u].z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r2.y)));
  r5.x = fma(r1.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.w = (r1.w * r1.w);
  r1.w = fma(r1.w, 5.0f, r2.y);
  let v_152 = bitcast<u32>(r4.w);
  let v_153 = r5.x;
  r1.w = select(r1.w, v_153, (v_152 != 0u));
  let v_154 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r5 = vec4<f32>(v_154.xyz, r5.w);
  r1.x = (abs(r1.zzzz).x + 1.0f);
  let v_155 = (r5.xyz / r1.xxx);
  r5 = vec4<f32>(v_155.xyz, r5.w);
  let v_156 = ((-(r5.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r5 = vec4<f32>(v_156.xyz, r5.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_157 = bitcast<vec2<u32>>(r1.xx);
  let v_158 = r5.xy;
  let v_159 = select(r5.zy, v_158, (v_157 != vec2<u32>()));
  r1 = vec4<f32>(v_159.xy, r1.zw);
  let v_160 = r1.w;
  r1 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_160);
  r1.w = max(r2.w, r2.x);
  let v_161 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_161.xyz, r1.w);
  let v_162 = (r2.zzz * r1.xyz);
  r2 = vec4<f32>(v_162.xyz, r2.w);
  let v_163 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_163.xyz, r2.w);
  let v_164 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_164.xyz, r1.w);
  let v_165 = fma(r1.xyz, r0.www, r3.yzw);
  r1 = vec4<f32>(v_165.xyz, r1.w);
  r0.w = (r3.x * r7.x);
  let v_166 = fma(r0.xyz, r0.www, r1.xyz);
  r0 = vec4<f32>(v_166.xyz, r0.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r1.x = sqrt(r0.w);
  let v_167 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_167.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r4.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_168 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_168 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_169 = (r0.www * r4.xyz);
  r2 = vec4<f32>(v_169.xyz, r2.w);
  let v_170 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_170, v_170, v_170, v_170).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_171 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_171, v_171, v_171, v_171).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_172 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_172.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_173 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_173.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_174 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_174.xyz, r2.w);
  let v_175 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_175.xyz, r2.w);
  let v_176 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_176.xyz, r3.w);
  let v_177 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_177.xyz, r2.w);
  let v_178 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_179 = (r2.xyz + v_178.xyz);
  r2 = vec4<f32>(v_179.xyz, r2.w);
  let v_180 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_180.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_181 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_181.xy, r1.z, v_181.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_182 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_182.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_183 = -(r0.xyxz);
  let v_184 = fma(r1.xyw, r0.www, v_183.xyw);
  r1 = vec4<f32>(v_184.xy, r1.z, v_184.z);
  let v_185 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_185.xyz, r0.w);
  let v_186 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_186.xyz, o0.w);
  o0.w = cb2_2.tint_symbol_1[15u].x;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_187 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_187);
  return o0;
}
