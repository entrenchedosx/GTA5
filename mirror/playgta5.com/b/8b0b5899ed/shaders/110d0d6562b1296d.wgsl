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

struct cb9_struct {
  tint_symbol_4 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb9_struct;

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
  let v_4 = (v0.xy * cb11_11.tint_symbol_4[6u].ww);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  r1 = textureSample(t3, s3, v0.zwzz.xy);
  r2 = textureSample(t0, s0, r0.xyxx.xy);
  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_5 = (r0.xxx * v1.xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  r4 = textureSample(t5, s5, r0.zwzz.xy);
  let v_6 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_6.xy, r4.zw);
  r0.y = dot(r4.xyz, cb11_11.tint_symbol_4[6u].xyz);
  r0.z = (r0.y * cb11_11.tint_symbol_4[5u].y);
  let v_7 = (r2.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r0.w = (r1.w * cb11_11.tint_symbol_4[1u].w);
  let v_8 = -(r2.xyzx);
  let v_9 = fma(r1.xyz, cb11_11.tint_symbol_4[1u].xyz, v_8.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = fma(r0.www, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  r0.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].y);
  r1.w = (v4.x * cb11_11.tint_symbol_4[2u].x);
  r1.w = (r1.w * cb11_11.tint_symbol_4[3u].z);
  r0.z = (r0.z * v4.x);
  r0.z = (r0.z * v1.w);
  let v_11 = ((-(cb11_11.tint_symbol_4[3u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r2 = vec4<f32>(v_11.xy, r2.zw);
  r2.z = (r2.x * v4.z);
  let v_12 = (r2.yy * v0.xy);
  let v_13 = r2;
  r2 = vec4<f32>(v_13.x, v_12.x, v_13.z, v_12.y);
  r5 = textureSample(t4, s4, r2.ywyy.xy);
  r2.y = (cb5_5.tint_symbol_3[3u].z * cb11_11.tint_symbol_4[3u].z);
  r2.w = ((-(r5.xxxx)).w + r5.z);
  r5.x = fma(r2.y, r2.w, r5.x);
  let v_14 = (r5.xy * cb11_11.tint_symbol_4[3u].xx);
  let v_15 = r2;
  r2 = vec4<f32>(v_15.x, v_14.x, v_15.z, v_14.y);
  r3.w = fma(v4.z, r2.x, -1.0f);
  r2.x = fma(r2.x, r3.w, 1.0f);
  r2.y = (r2.x * r2.y);
  let v_16 = -(r1.xyzx);
  let v_17 = fma(cb11_11.tint_symbol_4[4u].xyz, cb11_11.tint_symbol_4[3u].yyy, v_16.xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = fma(r2.yyy, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r2.y = (r2.z * cb11_11.tint_symbol_4[3u].x);
  let v_19 = ((-(r1.xyzx)).xyz + r5.zzz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = fma(r2.yyy, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  r2.x = fma((-(r2.wwww)).x, r2.x, 1.0f);
  r0.z = clamp(((r0.zzzz * r2.xxxx)).z, 0.0f, 1.0f);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[7u].y)));
  r2.y = (cb11_11.tint_symbol_4[3u].w * cb11_11.tint_symbol_4[7u].y);
  r2.y = (r2.y * v4.x);
  r0.y = (r0.y * r2.y);
  r2.y = dot(v3.xyz, v3.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_21 = -(cb3_3.tint_symbol_2[0u].xyzx);
  r4 = vec4<f32>(((v_21.xyz + vec3<f32>(0.0f, 0.0f, -1.0f))).xyz, r4.w);
  let v_22 = fma(cb11_11.tint_symbol_4[8u].www, r4.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = (r0.yyy * cb11_11.tint_symbol_4[8u].xyz);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  let v_24 = -(r4.xxyz);
  let v_25 = fma(v3.xyz, r2.yyy, v_24.yzw);
  r2 = vec4<f32>(r2.x, v_25.xyz);
  r0.y = dot(r2.yzw, r2.yzw);
  r0.y = inverseSqrt(r0.y);
  let v_26 = (r0.yyy * r2.yzw);
  r2 = vec4<f32>(r2.x, v_26.xyz);
  r0.y = dot(r3.xyz, r2.yzw);
  r0.y = clamp(((r0.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r2.y = fma(cb11_11.tint_symbol_4[7u].x, r4.w, 0.00000000999999993923f);
  r0.y = log2(r0.y);
  r0.y = (r0.y * r2.y);
  r0.y = exp2(r0.y);
  let v_27 = fma(r5.xyz, r0.yyy, r1.xyz);
  r2 = vec4<f32>(r2.x, v_27.xyz);
  let v_28 = bitcast<vec3<u32>>(r2.xxx);
  let v_29 = r2.yzw;
  let v_30 = select(r1.xyz, v_29, (v_28 != vec3<u32>()));
  r1 = vec4<f32>(v_30.xyz, r1.w);
  let v_31 = min(r1.xyz, vec3<f32>(240.0f));
  r1 = vec4<f32>(v_31.xyz, r1.w);
  let v_32 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_32.xyz, r1.w);
  let v_33 = -(v2.xyzx);
  let v_34 = (v_33.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_35 = (r0.yyy * r2.xyz);
  r4 = vec4<f32>(v_35.xyz, r4.w);
  let v_36 = fma(r2.xyz, r0.yyy, v_21.xyz);
  r5 = vec4<f32>(v_36.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_37 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_37.xyz, r5.w);
  r2.w = (cb2_2.tint_symbol_1[15u].z * cb2_2.tint_symbol_1[15u].z);
  r0.w = (r0.w * r0.w);
  r3.w = fma(r4.w, cb11_11.tint_symbol_4[5u].x, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_38 = -(r3.wwww);
  r4.w = fma(r4.w, cb11_11.tint_symbol_4[5u].x, v_38.w);
  r3.w = (r3.w * 558.0f);
  r3.w = fma(r4.w, 3.0f, r3.w);
  r4.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_39 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_39.xyz, r6.w);
  let v_40 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  let v_41 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r6 = vec4<f32>(v_41.xy, r6.z, v_41.z);
  let v_42 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r6.xyw);
  r6 = vec4<f32>(v_42.xyz, r6.w);
  let v_43 = fma(r6.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_43.xyz, r7.w);
  let v_44 = &(x0[0u]);
  let v_45 = r7;
  *(v_44) = vec4<f32>(v_45.xyz, (*(v_44)).w);
  let v_46 = fma(r6.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_46.xyz, r8.w);
  let v_47 = &(x0[1u]);
  let v_48 = r8;
  *(v_47) = vec4<f32>(v_48.xyz, (*(v_47)).w);
  let v_49 = fma(r6.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_49.xyz, r9.w);
  let v_50 = &(x0[2u]);
  let v_51 = r9;
  *(v_50) = vec4<f32>(v_51.xyz, (*(v_50)).w);
  let v_52 = fma(r6.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r6 = vec4<f32>(v_52.xyz, r6.w);
  let v_53 = &(x0[3u]);
  let v_54 = r6;
  *(v_53) = vec4<f32>(v_54.xyz, (*(v_53)).w);
  let v_55 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_56 = r10;
  r10 = vec4<f32>(v_56.x, v_55.x, v_56.z, v_55.y);
  r5.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_57 = abs(r9.yyyy);
  r6.z = max(v_57.z, abs(r9.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r5.w)));
  let v_58 = (bitcast<u32>(r6.z) != 0u);
  let v_59 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r6.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_59, v_58);
  let v_60 = abs(r8.yyyy);
  r6.w = max(v_60.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_61 = bitcast<u32>(r6.w);
  r6.z = select(r6.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_61 != 0u));
  let v_62 = abs(r7.yyyy);
  r6.w = max(v_62.w, abs(r7.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_63 = bitcast<u32>(r5.w);
  r5.w = select(r6.z, 0.0f, (v_63 != 0u));
  let v_64 = x0[bitcast<i32>(r5.w)];
  r7 = vec4<f32>(v_64.xyz, r7.w);
  r5.w = f32(bitcast<i32>(r5.w));
  r6.z = (r5.w + 0.5f);
  r6.z = (r6.z * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r5.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r5.w = dot(r8, cb6_6.tint_symbol_6[12u]);
  r6.w = dot(r8, cb6_6.tint_symbol_6[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r6.z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, !((r5.w == 0.0f))));
  r5.w = ((-(r5.wwww)).w + r7.z);
  let v_65 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_65.xy, r9.z, v_65.z);
  r9.z = dpdx(r5.w);
  let v_66 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_66.xyz, r11.w);
  r11.w = dpdy(r5.w);
  let v_67 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_67.xy, r7.zw);
  let v_68 = -(r7.xyxx);
  let v_69 = fma(r9.xz, r11.xz, v_68.xy);
  r12 = vec4<f32>(v_69.xy, r12.zw);
  r7.x = (1.0f / r12.x);
  r7.y = (r9.z * r11.y);
  let v_70 = -(r7.yyyy);
  r12.z = fma(r9.x, r11.w, v_70.z);
  let v_71 = (r7.xx * r12.yz);
  r7 = vec4<f32>(v_71.xy, r7.zw);
  let v_72 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_72.xy, r7.zw);
  let v_73 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_73.xy, r7.zw);
  r5.w = fma((-(r6.wwww)).w, r7.x, r5.w);
  r5.w = fma((-(r6.wwww)).w, r7.y, r5.w);
  let v_74 = bitcast<u32>(r6.z);
  let v_75 = r5.w;
  r10.z = select(r7.z, v_75, (v_74 != 0u));
  r8.z = 0.0f;
  let v_76 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_76.xyz, r7.w);
  let v_77 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_77.xy, r10.zw);
  let v_78 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_78.xyz, r9.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_79.xy, r10.zw);
  let v_80 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_80.xyz, r11.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_81.xy, r10.zw);
  let v_82 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_82.xyz, r12.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_83.xy, r10.zw);
  let v_84 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_84.xyz, r13.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_85.xy, r10.zw);
  let v_86 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_86.xyz, r14.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_87.xy, r10.zw);
  let v_88 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_88.xyz, r15.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_89.xy, r10.zw);
  let v_90 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_90.xyz, r16.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_91.xy, r10.zw);
  let v_92 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_92.xyz, r17.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_93.xy, r10.zw);
  let v_94 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_94.xyz, r18.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_95.xy, r10.zw);
  let v_96 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_96.xyz, r19.w);
  let v_97 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_97.xy, r10.zw);
  let v_98 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_98.xyz, r20.w);
  let v_99 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_99.xy, r10.zw);
  let v_100 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_100.xyz, r21.w);
  let v_101 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_101.xy, r10.zw);
  let v_102 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_102.xyz, r22.w);
  let v_103 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_103.xy, r10.zw);
  let v_104 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_104.xyz, r23.w);
  let v_105 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_105.xy, r10.zw);
  let v_106 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_106.xyz, r8.w);
  let v_107 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_107.xy, r7.z);
  let v_108 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_108.xy, r9.z);
  let v_109 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_109.xy, r11.z);
  let v_110 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_110.xy, r12.z);
  let v_111 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_111.xy, r13.z);
  let v_112 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_112.xy, r14.z);
  let v_113 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_113.xy, r15.z);
  let v_114 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_114.xy, r16.z);
  let v_115 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_115.xy, r17.z);
  let v_116 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_116.xy, r18.z);
  let v_117 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_117.xy, r19.z);
  let v_118 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_118.xy, r20.z);
  let v_119 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_119.xy, r21.z);
  let v_120 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_120.xy, r22.z);
  let v_121 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_121.xy, r23.z);
  let v_122 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_122.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r5.w = dot(r7, vec4<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_123 = abs(r6.yyyy);
  r6.x = max(v_123.x, abs(r6.xxxx).x);
  r6.x = clamp(fma(r6.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.x * r4.w);
  r4.w = fma(r5.w, 0.0625f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_6[3u].z);
  let v_124 = -(r4.wwww);
  r4.w = fma(r5.w, v_124.w, r4.w);
  r6.x = (-(cb6_6.tint_symbol_6[15u].wwww)).x;
  let v_125 = r6;
  r6 = vec4<f32>(v_125.x, 0.0f, v_125.z, 0.5f);
  let v_126 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r6.xy);
  r6 = vec4<f32>(v_126.xy, r6.zw);
  r7 = textureSample(t12, s12, r6.xyxx.xy);
  r6.z = r7.y;
  r6 = textureSample(t13, s13, r6.zwzz.xy);
  r4.w = (r4.w * r6.x);
  let v_127 = dot(r3.xyz, v_21.xyz);
  r5.w = clamp(vec4<f32>(v_127, v_127, v_127, v_127).w, 0.0f, 1.0f);
  let v_128 = dot(r4.xyz, r3.xyz);
  r6.x = clamp(vec4<f32>(v_128, v_128, v_128, v_128).x, 0.0f, 1.0f);
  let v_129 = dot(r5.xyz, v_21.xyz);
  r6.y = clamp(vec4<f32>(v_129, v_129, v_129, v_129).y, 0.0f, 1.0f);
  let v_130 = ((-(r6.xxyx)).yz + vec2<f32>(1.0f));
  let v_131 = r6;
  r6 = vec4<f32>(v_131.x, v_130.xy, v_131.w);
  let v_132 = (r6.yz * r6.yz);
  r7 = vec4<f32>(v_132.xy, r7.zw);
  let v_133 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_133.xy, r7.zw);
  let v_134 = (r6.yz * r7.xy);
  let v_135 = r6;
  r6 = vec4<f32>(v_135.x, v_134.xy, v_135.w);
  r6.w = ((-(cb11_11.tint_symbol_4[4u].wwww)).w + 1.0f);
  let v_136 = fma(cb11_11.tint_symbol_4[4u].ww, r6.yz, r6.ww);
  let v_137 = r6;
  r6 = vec4<f32>(v_137.x, v_136.xy, v_137.w);
  let v_138 = (r3.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_138.xy, r7.zw);
  r7.x = (r7.x * 0.125f);
  r6.y = fma((-(r0.zzzz)).y, r6.y, 1.0f);
  r5.x = dot(r3.xyz, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.y);
  r5.x = exp2(r5.x);
  r5.x = (r6.z * r5.x);
  r5.x = (r7.x * r5.x);
  r5.x = (r0.z * r5.x);
  r5.x = (r5.w * r5.x);
  r5.y = (r5.w * r6.y);
  let v_139 = fma(r1.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_139.xyz, r5.w);
  let v_140 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_140.xyz, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_141 = (v_33.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_141.xyz, r8.w);
    let v_142 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_142.xyz, r9.w);
    r7.z = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r7.z = clamp(((r7.zzzz / r7.wwww)).z, 0.0f, 1.0f);
    r7.z = (r7.z * cb3_3.tint_symbol_2[19u].w);
    let v_143 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_143.xyz, r9.w);
    let v_144 = (r9.xyz + v_33.xyz);
    r9 = vec4<f32>(v_144.xyz, r9.w);
    let v_145 = bitcast<vec3<u32>>(r6.zzz);
    let v_146 = r8.xyz;
    let v_147 = select(r9.xyz, v_146, (v_145 != vec3<u32>()));
    r8 = vec4<f32>(v_147.xyz, r8.w);
    r6.z = dot(r8.xyz, r8.xyz);
    let v_148 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_148.xyz, r8.w);
    r7.z = dot(r8.xyz, r8.xyz);
    r7.z = inverseSqrt(r7.z);
    let v_149 = (r7.zzz * r8.xyz);
    r8 = vec4<f32>(v_149.xyz, r8.w);
    r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r7.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r7.z = fma(r7.z, r6.z, cb3_3.tint_symbol_2[11u].w);
    r6.z = (r6.z / r7.z);
    let v_150 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.z = dot(r8.xyz, v_150.xyz);
    r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_151 = dot(r8.xyz, r3.xyz);
    r7.w = clamp(vec4<f32>(v_151, v_151, v_151, v_151).w, 0.0f, 1.0f);
    r7.z = (r7.z * r7.w);
    r7.w = (r6.z * r7.z);
    let v_152 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_152.xyz, r9.w);
    let v_153 = (r1.xyz * r9.xyz);
    r9 = vec4<f32>(v_153.xyz, r9.w);
    let v_154 = fma(r2.xyz, r0.yyy, r8.xyz);
    r8 = vec4<f32>(v_154.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_155 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_155.xyz, r8.w);
    let v_156 = dot(r8.xyz, r4.xyz);
    r7.w = clamp(vec4<f32>(v_156, v_156, v_156, v_156).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r8.w = (r7.w * r7.w);
    r8.w = (r8.w * r8.w);
    r7.w = (r7.w * r8.w);
    r7.w = fma(cb11_11.tint_symbol_4[4u].w, r7.w, r6.w);
    let v_157 = dot(r8.xyz, r3.xyz);
    r8.x = clamp(vec4<f32>(v_157, v_157, v_157, v_157).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.y * r8.x);
    r8.x = exp2(r8.x);
    r7.w = (r7.w * r8.x);
    r7.z = (r7.z * r7.w);
    r6.z = (r6.z * r7.z);
    r6.z = (r7.x * r6.z);
    let v_158 = (r6.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_158.xyz, r8.w);
  }
  r6.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.z) != 0u)) {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.z)));
    let v_159 = bitcast<u32>(r7.z);
    let v_160 = r6.z;
    r5.w = select(r5.w, v_160, (v_159 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_161 = (v_33.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_161.xyz, r10.w);
      let v_162 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_162.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r7.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[20u].w);
      let v_163 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_163.xyz, r11.w);
      let v_164 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      let v_165 = bitcast<vec3<u32>>(r6.zzz);
      let v_166 = r10.xyz;
      let v_167 = select(r11.xyz, v_166, (v_165 != vec3<u32>()));
      r10 = vec4<f32>(v_167.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_168 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_168.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_169 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_169.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r6.z, cb3_3.tint_symbol_2[12u].w);
      r6.z = (r6.z / r7.z);
      let v_170 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.z = dot(r10.xyz, v_170.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      let v_171 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_171, v_171, v_171, v_171).w, 0.0f, 1.0f);
      r7.z = (r7.z * r7.w);
      r7.w = (r6.z * r7.z);
      let v_172 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_172.xyz, r11.w);
      let v_173 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_173.xyz, r9.w);
      let v_174 = fma(r2.xyz, r0.yyy, r10.xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_175 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      let v_176 = dot(r10.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_176, v_176, v_176, v_176).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb11_11.tint_symbol_4[4u].w, r7.w, r6.w);
      let v_177 = dot(r10.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_177, v_177, v_177, v_177).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r7.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r7.z = (r7.z * r7.w);
      r6.z = (r6.z * r7.z);
      r6.z = (r7.x * r6.z);
      let v_178 = fma(r6.zzz, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_178.xyz, r8.w);
    }
  } else {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_179 = (v_33.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      let v_180 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_180.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r7.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[21u].w);
      let v_181 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      let v_182 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_182.xyz, r11.w);
      let v_183 = bitcast<vec3<u32>>(r6.zzz);
      let v_184 = r10.xyz;
      let v_185 = select(r11.xyz, v_184, (v_183 != vec3<u32>()));
      r10 = vec4<f32>(v_185.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_186 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_186.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_187 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_187.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r6.z, cb3_3.tint_symbol_2[13u].w);
      r6.z = (r6.z / r7.z);
      let v_188 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.z = dot(r10.xyz, v_188.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      let v_189 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_189, v_189, v_189, v_189).w, 0.0f, 1.0f);
      r7.z = (r7.z * r7.w);
      r7.w = (r6.z * r7.z);
      let v_190 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_190.xyz, r11.w);
      let v_191 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_191.xyz, r9.w);
      let v_192 = fma(r2.xyz, r0.yyy, r10.xyz);
      r10 = vec4<f32>(v_192.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_193 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_193.xyz, r10.w);
      let v_194 = dot(r10.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_194, v_194, v_194, v_194).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb11_11.tint_symbol_4[4u].w, r7.w, r6.w);
      let v_195 = dot(r10.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_195, v_195, v_195, v_195).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r7.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r7.z = (r7.z * r7.w);
      r6.z = (r6.z * r7.z);
      r6.z = (r7.x * r6.z);
      let v_196 = fma(r6.zzz, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_196.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_197 = (v_33.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_197.xyz, r10.w);
      let v_198 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_198.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r7.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[22u].w);
      let v_199 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_199.xyz, r11.w);
      let v_200 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_200.xyz, r11.w);
      let v_201 = bitcast<vec3<u32>>(r6.zzz);
      let v_202 = r10.xyz;
      let v_203 = select(r11.xyz, v_202, (v_201 != vec3<u32>()));
      r10 = vec4<f32>(v_203.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_204 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_204.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_205 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_205.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[14u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r6.z, cb3_3.tint_symbol_2[14u].w);
      r6.z = (r6.z / r7.z);
      let v_206 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.z = dot(r10.xyz, v_206.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).z, 0.0f, 1.0f);
      let v_207 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_207, v_207, v_207, v_207).w, 0.0f, 1.0f);
      r7.z = (r7.z * r7.w);
      r7.w = (r6.z * r7.z);
      let v_208 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_208.xyz, r11.w);
      let v_209 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_209.xyz, r9.w);
      let v_210 = fma(r2.xyz, r0.yyy, r10.xyz);
      r10 = vec4<f32>(v_210.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_211 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_211.xyz, r10.w);
      let v_212 = dot(r10.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_212, v_212, v_212, v_212).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb11_11.tint_symbol_4[4u].w, r7.w, r6.w);
      let v_213 = dot(r10.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_213, v_213, v_213, v_213).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r7.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r7.z = (r7.z * r7.w);
      r6.z = (r6.z * r7.z);
      r6.z = (r7.x * r6.z);
      let v_214 = fma(r6.zzz, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_214.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_215 = (v_33.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_215.xyz, r10.w);
      let v_216 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_216.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r7.w = (cb3_3.tint_symbol_2[23u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r7.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[23u].w);
      let v_217 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.zzz, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_217.xyz, r11.w);
      let v_218 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_218.xyz, r11.w);
      let v_219 = bitcast<vec3<u32>>(r6.zzz);
      let v_220 = r10.xyz;
      let v_221 = select(r11.xyz, v_220, (v_219 != vec3<u32>()));
      r10 = vec4<f32>(v_221.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_222 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_222.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_223 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_223.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[15u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r6.z, cb3_3.tint_symbol_2[15u].w);
      r6.z = (r6.z / r7.z);
      let v_224 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.z = dot(r10.xyz, v_224.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).z, 0.0f, 1.0f);
      let v_225 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_225, v_225, v_225, v_225).w, 0.0f, 1.0f);
      r7.z = (r7.z * r7.w);
      r7.w = (r6.z * r7.z);
      let v_226 = (r7.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_226.xyz, r11.w);
      let v_227 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_227.xyz, r9.w);
      let v_228 = fma(r2.xyz, r0.yyy, r10.xyz);
      r10 = vec4<f32>(v_228.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_229 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_229.xyz, r10.w);
      let v_230 = dot(r10.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_230, v_230, v_230, v_230).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb11_11.tint_symbol_4[4u].w, r7.w, r6.w);
      let v_231 = dot(r10.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_231, v_231, v_231, v_231).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r7.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r7.z = (r7.z * r7.w);
      r6.z = (r6.z * r7.z);
      r6.z = (r7.x * r6.z);
      let v_232 = fma(r6.zzz, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_232.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_233 = (v_33.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_233.xyz, r10.w);
      let v_234 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_234.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r7.w = (cb3_3.tint_symbol_2[24u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r7.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[24u].w);
      let v_235 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.zzz, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_235.xyz, r11.w);
      let v_236 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_236.xyz, r11.w);
      let v_237 = bitcast<vec3<u32>>(r6.zzz);
      let v_238 = r10.xyz;
      let v_239 = select(r11.xyz, v_238, (v_237 != vec3<u32>()));
      r10 = vec4<f32>(v_239.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_240 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_240.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_241 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_241.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[16u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r6.z, cb3_3.tint_symbol_2[16u].w);
      r6.z = (r6.z / r7.z);
      let v_242 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.z = dot(r10.xyz, v_242.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).z, 0.0f, 1.0f);
      let v_243 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_243, v_243, v_243, v_243).w, 0.0f, 1.0f);
      r7.z = (r7.z * r7.w);
      r7.w = (r6.z * r7.z);
      let v_244 = (r7.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_244.xyz, r11.w);
      let v_245 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_245.xyz, r9.w);
      let v_246 = fma(r2.xyz, r0.yyy, r10.xyz);
      r10 = vec4<f32>(v_246.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_247 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_247.xyz, r10.w);
      let v_248 = dot(r10.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_248, v_248, v_248, v_248).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb11_11.tint_symbol_4[4u].w, r7.w, r6.w);
      let v_249 = dot(r10.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_249, v_249, v_249, v_249).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r7.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r7.z = (r7.z * r7.w);
      r6.z = (r6.z * r7.z);
      r6.z = (r7.x * r6.z);
      let v_250 = fma(r6.zzz, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_250.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_251 = (v_33.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_251.xyz, r10.w);
      let v_252 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_252.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r7.w = (cb3_3.tint_symbol_2[25u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r7.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[25u].w);
      let v_253 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.zzz, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_253.xyz, r11.w);
      let v_254 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_254.xyz, r11.w);
      let v_255 = bitcast<vec3<u32>>(r6.zzz);
      let v_256 = r10.xyz;
      let v_257 = select(r11.xyz, v_256, (v_255 != vec3<u32>()));
      r10 = vec4<f32>(v_257.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      let v_258 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_258.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_259 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_259.xyz, r10.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[17u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r6.z, cb3_3.tint_symbol_2[17u].w);
      r6.z = (r6.z / r7.z);
      let v_260 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.z = dot(r10.xyz, v_260.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).z, 0.0f, 1.0f);
      let v_261 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_261, v_261, v_261, v_261).w, 0.0f, 1.0f);
      r7.z = (r7.z * r7.w);
      r7.w = (r6.z * r7.z);
      let v_262 = (r7.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_262.xyz, r11.w);
      let v_263 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_263.xyz, r9.w);
      let v_264 = fma(r2.xyz, r0.yyy, r10.xyz);
      r10 = vec4<f32>(v_264.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_265 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_265.xyz, r10.w);
      let v_266 = dot(r10.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_266, v_266, v_266, v_266).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb11_11.tint_symbol_4[4u].w, r7.w, r6.w);
      let v_267 = dot(r10.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_267, v_267, v_267, v_267).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r7.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r7.z = (r7.z * r7.w);
      r6.z = (r6.z * r7.z);
      r6.z = (r7.x * r6.z);
      let v_268 = fma(r6.zzz, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_268.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_269 = (v_33.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_269.xyz, r10.w);
      let v_270 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_270.xyz, r11.w);
      r6.z = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.z = (cb3_3.tint_symbol_2[26u].w + 0.00009999999747378752f);
      r6.z = clamp(((r6.zzzz / r7.zzzz)).z, 0.0f, 1.0f);
      r6.z = (r6.z * cb3_3.tint_symbol_2[26u].w);
      let v_271 = fma(cb3_3.tint_symbol_2[18u].xyz, r6.zzz, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_271.xyz, r11.w);
      let v_272 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_272.xyz, r11.w);
      let v_273 = bitcast<vec3<u32>>(r5.www);
      let v_274 = r10.xyz;
      let v_275 = select(r11.xyz, v_274, (v_273 != vec3<u32>()));
      r10 = vec4<f32>(v_275.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_276 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_276.xyz, r10.w);
      r6.z = dot(r10.xyz, r10.xyz);
      r6.z = inverseSqrt(r6.z);
      let v_277 = (r6.zzz * r10.xyz);
      r10 = vec4<f32>(v_277.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.z = ((-(cb3_3.tint_symbol_2[18u].wwww)).z + 1.0f);
      r6.z = fma(r6.z, r5.w, cb3_3.tint_symbol_2[18u].w);
      r5.w = (r5.w / r6.z);
      let v_278 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r6.z = dot(r10.xyz, v_278.xyz);
      r6.z = clamp(fma(r6.zzzz, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).z, 0.0f, 1.0f);
      let v_279 = dot(r10.xyz, r3.xyz);
      r7.z = clamp(vec4<f32>(v_279, v_279, v_279, v_279).z, 0.0f, 1.0f);
      r6.z = (r6.z * r7.z);
      r7.z = (r5.w * r6.z);
      let v_280 = (r7.zzz * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_280.xyz, r11.w);
      let v_281 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_281.xyz, r9.w);
      let v_282 = fma(r2.xyz, r0.yyy, r10.xyz);
      r2 = vec4<f32>(v_282.xyz, r2.w);
      r0.y = dot(r2.xyz, r2.xyz);
      r0.y = inverseSqrt(r0.y);
      let v_283 = (r0.yyy * r2.xyz);
      r2 = vec4<f32>(v_283.xyz, r2.w);
      let v_284 = dot(r2.xyz, r4.xyz);
      r0.y = clamp(vec4<f32>(v_284, v_284, v_284, v_284).y, 0.0f, 1.0f);
      r0.y = ((-(r0.yyyy)).y + 1.0f);
      r7.z = (r0.y * r0.y);
      r7.z = (r7.z * r7.z);
      r0.y = (r0.y * r7.z);
      r0.y = fma(cb11_11.tint_symbol_4[4u].w, r0.y, r6.w);
      let v_285 = dot(r2.xyz, r3.xyz);
      r2.x = clamp(vec4<f32>(v_285, v_285, v_285, v_285).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r7.y);
      r2.x = exp2(r2.x);
      r0.y = (r0.y * r2.x);
      r0.y = (r6.z * r0.y);
      r0.y = (r5.w * r0.y);
      r0.y = (r7.x * r0.y);
      let v_286 = fma(r0.yyy, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_286.xyz, r8.w);
    }
  }
  r0.y = (r6.y * r6.y);
  r0.z = (r0.z * r0.z);
  let v_287 = (r8.xyz * r0.zzz);
  r2 = vec4<f32>(v_287.xyz, r2.w);
  let v_288 = fma(r0.yyy, r9.xyz, r2.xyz);
  r2 = vec4<f32>(v_288.xyz, r2.w);
  let v_289 = fma(r5.xyz, r4.www, r2.xyz);
  r2 = vec4<f32>(v_289.xyz, r2.w);
  r0.x = fma(v1.z, r0.x, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_290 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_290.xyz, r5.w);
  r0.y = ((-(cb2_2.tint_symbol_1[16u].zzzz)).y + 1.0f);
  let v_291 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_291.xyz, r7.w);
  let v_292 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_292.xyz, r7.w);
  let v_293 = fma(r5.xyz, r0.yyy, r7.xyz);
  r5 = vec4<f32>(v_293.xyz, r5.w);
  let v_294 = (r0.www * r5.xyz);
  r5 = vec4<f32>(v_294.xyz, r5.w);
  let v_295 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(v_295.xyz, r0.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_296 = dot(r7.xyz, r3.xyz);
  r4.w = clamp(vec4<f32>(v_296, v_296, v_296, v_296).w, 0.0f, 1.0f);
  let v_297 = fma(cb3_3.tint_symbol_2[49u].xyz, r4.www, r0.xyz);
  r0 = vec4<f32>(v_297.xyz, r0.w);
  let v_298 = fma(r0.xyz, r2.www, r5.xyz);
  r0 = vec4<f32>(v_298.xyz, r0.w);
  let v_299 = (r6.yyy * r0.xyz);
  r0 = vec4<f32>(v_299.xyz, r0.w);
  let v_300 = fma(r0.xyz, r1.xyz, r2.xyz);
  r0 = vec4<f32>(v_300.xyz, r0.w);
  r2.x = ((-(r6.yyyy)).x + 1.0f);
  r2.y = dot((-(r4.xyzx)).xyz, r3.xyz);
  r2.y = (r2.y + r2.y);
  let v_301 = -(r2.yyyy);
  let v_302 = -(r4.xyzx);
  let v_303 = fma(r3.xyz, v_301.xyz, v_302.xyz);
  r3 = vec4<f32>(v_303.xyz, r3.w);
  let v_304 = clamp(((r3.wwww * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_305 = r2;
  r2 = vec4<f32>(v_305.x, v_304.xy, v_305.w);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r3.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r4.x = (r2.y * cb5_5.tint_symbol_3[6u].z);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r4.x < r3.w)));
  r4.y = fma(r2.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.y = (r2.y * r2.y);
  r2.y = fma(r2.y, 5.0f, r3.w);
  let v_306 = bitcast<u32>(r4.x);
  let v_307 = r4.y;
  r2.y = select(r2.y, v_307, (v_306 != 0u));
  let v_308 = (r3.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_308.xy, r3.z, v_308.z);
  r4.x = (abs(r3.zzzz).x + 1.0f);
  let v_309 = (r3.xyw / r4.xxx);
  r3 = vec4<f32>(v_309.xy, r3.z, v_309.z);
  let v_310 = ((-(r3.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_310.xy, r3.z, v_310.z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.z)));
  let v_311 = bitcast<vec2<u32>>(r3.zz);
  let v_312 = r3.xy;
  let v_313 = select(r3.wy, v_312, (v_311 != vec2<u32>()));
  r3 = vec4<f32>(v_313.xy, r3.zw);
  let v_314 = r2.y;
  r3 = textureSampleLevel(t1, s1, r3.xyxx.xy, v_314);
  r0.w = max(r0.w, r2.w);
  let v_315 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_315.xyz, r3.w);
  let v_316 = (r2.zzz * r3.xyz);
  r2 = vec4<f32>(r2.x, v_316.xyz);
  let v_317 = (r2.yzw * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(r2.x, v_317.xyz);
  let v_318 = fma(r3.xyz, vec3<f32>(0.31830990314483642578f), r2.yzw);
  r2 = vec4<f32>(r2.x, v_318.xyz);
  let v_319 = fma(r2.yzw, r2.xxx, r0.xyz);
  r0 = vec4<f32>(v_319.xyz, r0.w);
  r0.w = (r1.w * r6.x);
  let v_320 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_320.xyz, r0.w);
  let v_321 = v5.xy;
  let v_322 = max(v_321, vec2<f32>(-2147483648.0f));
  let v_323 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_322), vec2<i32>(2147483647i), (v_322 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_321 == v_321))));
  r1 = vec4<f32>(v_323.xy, r1.zw);
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
  let v_324 = bitcast<u32>(r1.y);
  let v_325 = cb2_2.tint_symbol_1[15u].x;
  r0.w = select(r1.x, v_325, (v_324 != 0u));
  let v_326 = bitcast<vec4<u32>>(r1.yyyy);
  r0 = select(r0, vec4<f32>(), (v_326 != vec4<u32>()));
  let v_327 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_327.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_328 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_328);
  return o0;
}
