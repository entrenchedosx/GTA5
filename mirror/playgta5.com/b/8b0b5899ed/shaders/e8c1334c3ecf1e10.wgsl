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

struct cb9_struct {
  tint_symbol_4 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb9_struct;

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
  let v_40 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  let v_41 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  let v_42 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_42.xyz, r7.w);
  let v_43 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_43.xyz, r8.w);
  let v_44 = &(x0[0u]);
  let v_45 = r8;
  *(v_44) = vec4<f32>(v_45.xyz, (*(v_44)).w);
  let v_46 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_46.xyz, r9.w);
  let v_47 = &(x0[1u]);
  let v_48 = r9;
  *(v_47) = vec4<f32>(v_48.xyz, (*(v_47)).w);
  let v_49 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_49.xyz, r10.w);
  let v_50 = &(x0[2u]);
  let v_51 = r10;
  *(v_50) = vec4<f32>(v_51.xyz, (*(v_50)).w);
  let v_52 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_52.xyz, r7.w);
  let v_53 = &(x0[3u]);
  let v_54 = r7;
  *(v_53) = vec4<f32>(v_54.xyz, (*(v_53)).w);
  let v_55 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_56 = r11;
  r11 = vec4<f32>(v_56.x, v_55.x, v_56.z, v_55.y);
  r5.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_57 = abs(r10.yyyy);
  r6.w = max(v_57.w, abs(r10.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_58 = (bitcast<u32>(r6.w) != 0u);
  let v_59 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_59, v_58);
  let v_60 = abs(r9.yyyy);
  r7.z = max(v_60.z, abs(r9.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_61 = bitcast<u32>(r7.z);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_61 != 0u));
  let v_62 = abs(r8.yyyy);
  r7.z = max(v_62.z, abs(r8.xxxx).z);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_63 = bitcast<u32>(r5.w);
  r5.w = select(r6.w, 0.0f, (v_63 != 0u));
  let v_64 = x0[bitcast<i32>(r5.w)];
  r8 = vec4<f32>(v_64.xyz, r8.w);
  r5.w = f32(bitcast<i32>(r5.w));
  r6.w = (r5.w + 0.5f);
  r6.w = (r6.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r5.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r5.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r7.z = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r6.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, !((r5.w == 0.0f))));
  r5.w = ((-(r5.wwww)).w + r8.z);
  let v_65 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_65.xy, r10.z, v_65.z);
  r10.z = dpdx(r5.w);
  let v_66 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_66.xyz, r12.w);
  r12.w = dpdy(r5.w);
  let v_67 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_67.xy, r8.zw);
  let v_68 = -(r8.xyxx);
  let v_69 = fma(r10.xz, r12.xz, v_68.xy);
  r13 = vec4<f32>(v_69.xy, r13.zw);
  r7.w = (1.0f / r13.x);
  r8.x = (r10.z * r12.y);
  let v_70 = -(r8.xxxx);
  r13.z = fma(r10.x, r12.w, v_70.z);
  let v_71 = (r7.ww * r13.yz);
  r8 = vec4<f32>(v_71.xy, r8.zw);
  let v_72 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_72.xy, r8.zw);
  let v_73 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_73.xy, r8.zw);
  r5.w = fma((-(r7.zzzz)).w, r8.x, r5.w);
  r5.w = fma((-(r7.zzzz)).w, r8.y, r5.w);
  let v_74 = bitcast<u32>(r6.w);
  let v_75 = r5.w;
  r11.z = select(r8.z, v_75, (v_74 != 0u));
  r9.z = 0.0f;
  let v_76 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_76.xyz, r8.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_78.xyz, r10.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_80.xyz, r12.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_82.xyz, r13.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_84.xyz, r14.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_86.xyz, r15.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_88.xyz, r16.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_90.xyz, r17.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_92.xyz, r18.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_94.xyz, r19.w);
  let v_95 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_95.xy, r11.zw);
  let v_96 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_96.xyz, r20.w);
  let v_97 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_97.xy, r11.zw);
  let v_98 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_98.xyz, r21.w);
  let v_99 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_99.xy, r11.zw);
  let v_100 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_100.xyz, r22.w);
  let v_101 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_101.xy, r11.zw);
  let v_102 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_102.xyz, r23.w);
  let v_103 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_103.xy, r11.zw);
  let v_104 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_104.xyz, r24.w);
  let v_105 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_105.xy, r11.zw);
  let v_106 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_106.xyz, r9.w);
  let v_107 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_107.xy, r8.z);
  let v_108 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_108.xy, r10.z);
  let v_109 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_109.xy, r12.z);
  let v_110 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_110.xy, r13.z);
  let v_111 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_111.xy, r14.z);
  let v_112 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_112.xy, r15.z);
  let v_113 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_113.xy, r16.z);
  let v_114 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_114.xy, r17.z);
  let v_115 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_115.xy, r18.z);
  let v_116 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_116.xy, r19.z);
  let v_117 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_117.xy, r20.z);
  let v_118 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_118.xy, r21.z);
  let v_119 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_119.xy, r22.z);
  let v_120 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_120.xy, r23.z);
  let v_121 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_121.xy, r24.z);
  let v_122 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_122.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r5.w = dot(r8, vec4<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_123 = abs(r7.yyyy);
  r6.w = max(v_123.w, abs(r7.xxxx).w);
  r6.w = clamp(fma(r6.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.w * r4.w);
  r4.w = fma(r5.w, 0.0625f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_5[3u].z);
  let v_124 = -(r4.wwww);
  r4.w = fma(r5.w, v_124.w, r4.w);
  r7.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_125 = r7;
  r7 = vec4<f32>(v_125.x, 0.0f, v_125.z, 0.5f);
  let v_126 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r7.xy);
  r7 = vec4<f32>(v_126.xy, r7.zw);
  r8 = textureSample(t12, s12, r7.xyxx.xy);
  r7.z = r8.y;
  r7 = textureSample(t13, s13, r7.zwzz.xy);
  r4.w = (r4.w * r7.x);
  let v_127 = dot(r3.xyz, v_21.xyz);
  r5.w = clamp(vec4<f32>(v_127, v_127, v_127, v_127).w, 0.0f, 1.0f);
  let v_128 = dot(r4.xyz, r3.xyz);
  r7.x = clamp(vec4<f32>(v_128, v_128, v_128, v_128).x, 0.0f, 1.0f);
  let v_129 = dot(r5.xyz, v_21.xyz);
  r7.y = clamp(vec4<f32>(v_129, v_129, v_129, v_129).y, 0.0f, 1.0f);
  let v_130 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_131 = r7;
  r7 = vec4<f32>(v_131.x, v_130.xy, v_131.w);
  let v_132 = (r7.yz * r7.yz);
  r8 = vec4<f32>(v_132.xy, r8.zw);
  let v_133 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_133.xy, r8.zw);
  let v_134 = (r7.yz * r8.xy);
  let v_135 = r7;
  r7 = vec4<f32>(v_135.x, v_134.xy, v_135.w);
  r6.w = ((-(cb11_11.tint_symbol_4[4u].wwww)).w + 1.0f);
  let v_136 = fma(cb11_11.tint_symbol_4[4u].ww, r7.yz, r6.ww);
  let v_137 = r7;
  r7 = vec4<f32>(v_137.x, v_136.xy, v_137.w);
  let v_138 = (r3.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_138.xy, r8.zw);
  r7.w = (r8.x * 0.125f);
  r7.y = fma((-(r0.zzzz)).y, r7.y, 1.0f);
  r5.x = dot(r3.xyz, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r7.z * r5.x);
  r5.x = (r7.w * r5.x);
  r5.x = (r0.z * r5.x);
  r5.x = (r5.w * r5.x);
  r5.y = (r5.w * r7.y);
  let v_139 = fma(r1.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_139.xyz, r5.w);
  let v_140 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_140.xyz, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r9 = vec4<f32>(r9.x, vec3<f32>());
    r8 = vec4<f32>(0.0f, r8.y, vec2<f32>());
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_141 = ((-(v2.xxyz)).xzw + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_141.x, r8.y, v_141.yz);
    let v_142 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_142.xyz, r9.w);
    r9.x = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.y = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r9.x = clamp(((r9.xxxx / r9.yyyy)).x, 0.0f, 1.0f);
    r9.x = (r9.x * cb3_3.tint_symbol_2[19u].w);
    let v_143 = fma(cb3_3.tint_symbol_2[11u].xyz, r9.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_143.xyz, r9.w);
    let v_144 = (r9.xyz + v_33.xyz);
    r9 = vec4<f32>(v_144.xyz, r9.w);
    let v_145 = bitcast<vec3<u32>>(r7.zzz);
    let v_146 = r8.xzw;
    let v_147 = select(r9.xyz, v_146, (v_145 != vec3<u32>()));
    r8 = vec4<f32>(v_147.x, r8.y, v_147.yz);
    r7.z = dot(r8.xzw, r8.xzw);
    let v_148 = (r8.xzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_148.x, r8.y, v_148.yz);
    r9.x = dot(r8.xzw, r8.xzw);
    r9.x = inverseSqrt(r9.x);
    let v_149 = (r8.xzw * r9.xxx);
    r8 = vec4<f32>(v_149.x, r8.y, v_149.yz);
    r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r9.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r9.x = fma(r9.x, r7.z, cb3_3.tint_symbol_2[11u].w);
    r7.z = (r7.z / r9.x);
    let v_150 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.x = dot(r8.xzw, v_150.xyz);
    r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_151 = dot(r8.xzw, r3.xyz);
    r9.y = clamp(vec4<f32>(v_151, v_151, v_151, v_151).y, 0.0f, 1.0f);
    r9.x = (r9.x * r9.y);
    r9.y = (r7.z * r9.x);
    let v_152 = (r9.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(r9.x, v_152.xyz);
    let v_153 = (r1.xyz * r9.yzw);
    r9 = vec4<f32>(r9.x, v_153.xyz);
    let v_154 = fma(r2.xyz, r0.yyy, r8.xzw);
    r8 = vec4<f32>(v_154.x, r8.y, v_154.yz);
    r10.x = dot(r8.xzw, r8.xzw);
    r10.x = inverseSqrt(r10.x);
    let v_155 = (r8.xzw * r10.xxx);
    r8 = vec4<f32>(v_155.x, r8.y, v_155.yz);
    let v_156 = dot(r8.xzw, r4.xyz);
    r10.x = clamp(vec4<f32>(v_156, v_156, v_156, v_156).x, 0.0f, 1.0f);
    r10.x = ((-(r10.xxxx)).x + 1.0f);
    r10.y = (r10.x * r10.x);
    r10.y = (r10.y * r10.y);
    r10.x = (r10.y * r10.x);
    r10.x = fma(cb11_11.tint_symbol_4[4u].w, r10.x, r6.w);
    let v_157 = dot(r8.xzw, r3.xyz);
    r8.x = clamp(vec4<f32>(v_157, v_157, v_157, v_157).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.y);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r10.x);
    r8.x = (r9.x * r8.x);
    r7.z = (r7.z * r8.x);
    r7.z = (r7.w * r7.z);
    let v_158 = (r7.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_158.x, r8.y, v_158.yz);
  }
  r7.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.z) != 0u)) {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.z = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.z)));
    let v_159 = bitcast<u32>(r9.x);
    let v_160 = r7.z;
    r5.w = select(r5.w, v_160, (v_159 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_161 = (v_33.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_161.xyz, r10.w);
      let v_162 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_162.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r10.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[20u].w);
      let v_163 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_163.xyz, r11.w);
      let v_164 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      let v_165 = bitcast<vec3<u32>>(r7.zzz);
      let v_166 = r10.xyz;
      let v_167 = select(r11.xyz, v_166, (v_165 != vec3<u32>()));
      r10 = vec4<f32>(v_167.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      let v_168 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_168.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_169 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_169.xyz, r10.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.z, cb3_3.tint_symbol_2[12u].w);
      r7.z = (r7.z / r9.x);
      let v_170 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.x = dot(r10.xyz, v_170.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_171 = dot(r10.xyz, r3.xyz);
      r10.w = clamp(vec4<f32>(v_171, v_171, v_171, v_171).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.z * r9.x);
      let v_172 = (r10.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_172.xyz, r11.w);
      let v_173 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_173.xyz);
      let v_174 = fma(r2.xyz, r0.yyy, r10.xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_175 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      let v_176 = dot(r10.xyz, r4.xyz);
      r10.w = clamp(vec4<f32>(v_176, v_176, v_176, v_176).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb11_11.tint_symbol_4[4u].w, r10.w, r6.w);
      let v_177 = dot(r10.xyz, r3.xyz);
      r10.x = clamp(vec4<f32>(v_177, v_177, v_177, v_177).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.z = (r7.z * r9.x);
      r7.z = (r7.w * r7.z);
      let v_178 = fma(r7.zzz, cb3_3.tint_symbol_2[20u].xyz, r8.xzw);
      r8 = vec4<f32>(v_178.x, r8.y, v_178.yz);
    }
  } else {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_179 = (v_33.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      let v_180 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_180.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r10.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r9.x = clamp(((r9.xxxx / r10.wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[21u].w);
      let v_181 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      let v_182 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_182.xyz, r11.w);
      let v_183 = bitcast<vec3<u32>>(r7.zzz);
      let v_184 = r10.xyz;
      let v_185 = select(r11.xyz, v_184, (v_183 != vec3<u32>()));
      r10 = vec4<f32>(v_185.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      let v_186 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_186.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_187 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_187.xyz, r10.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.z, cb3_3.tint_symbol_2[13u].w);
      r7.z = (r7.z / r9.x);
      let v_188 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.x = dot(r10.xyz, v_188.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_189 = dot(r10.xyz, r3.xyz);
      r10.w = clamp(vec4<f32>(v_189, v_189, v_189, v_189).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.z * r9.x);
      let v_190 = (r10.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_190.xyz, r11.w);
      let v_191 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_191.xyz);
      let v_192 = fma(r2.xyz, r0.yyy, r10.xyz);
      r10 = vec4<f32>(v_192.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_193 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_193.xyz, r10.w);
      let v_194 = dot(r10.xyz, r4.xyz);
      r10.w = clamp(vec4<f32>(v_194, v_194, v_194, v_194).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb11_11.tint_symbol_4[4u].w, r10.w, r6.w);
      let v_195 = dot(r10.xyz, r3.xyz);
      r10.x = clamp(vec4<f32>(v_195, v_195, v_195, v_195).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.z = (r7.z * r9.x);
      r7.z = (r7.w * r7.z);
      let v_196 = fma(r7.zzz, cb3_3.tint_symbol_2[21u].xyz, r8.xzw);
      r8 = vec4<f32>(v_196.x, r8.y, v_196.yz);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_197 = (v_33.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_197.xyz, r10.w);
      let v_198 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_198.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r9.x = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r9.xxxx)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[22u].w);
      let v_199 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_199.xyz, r11.w);
      let v_200 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_200.xyz, r11.w);
      let v_201 = bitcast<vec3<u32>>(r5.www);
      let v_202 = r10.xyz;
      let v_203 = select(r11.xyz, v_202, (v_201 != vec3<u32>()));
      r10 = vec4<f32>(v_203.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_204 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_204.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_205 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_205.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[14u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r5.w, cb3_3.tint_symbol_2[14u].w);
      r5.w = (r5.w / r7.z);
      let v_206 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.z = dot(r10.xyz, v_206.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).z, 0.0f, 1.0f);
      let v_207 = dot(r10.xyz, r3.xyz);
      r9.x = clamp(vec4<f32>(v_207, v_207, v_207, v_207).x, 0.0f, 1.0f);
      r7.z = (r7.z * r9.x);
      r9.x = (r5.w * r7.z);
      let v_208 = (r9.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_208.xyz, r11.w);
      let v_209 = fma(r11.xyz, r1.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_209.xyz);
      let v_210 = fma(r2.xyz, r0.yyy, r10.xyz);
      r2 = vec4<f32>(v_210.xyz, r2.w);
      r0.y = dot(r2.xyz, r2.xyz);
      r0.y = inverseSqrt(r0.y);
      let v_211 = (r0.yyy * r2.xyz);
      r2 = vec4<f32>(v_211.xyz, r2.w);
      let v_212 = dot(r2.xyz, r4.xyz);
      r0.y = clamp(vec4<f32>(v_212, v_212, v_212, v_212).y, 0.0f, 1.0f);
      r0.y = ((-(r0.yyyy)).y + 1.0f);
      r9.x = (r0.y * r0.y);
      r9.x = (r9.x * r9.x);
      r0.y = (r0.y * r9.x);
      r0.y = fma(cb11_11.tint_symbol_4[4u].w, r0.y, r6.w);
      let v_213 = dot(r2.xyz, r3.xyz);
      r2.x = clamp(vec4<f32>(v_213, v_213, v_213, v_213).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r8.y);
      r2.x = exp2(r2.x);
      r0.y = (r0.y * r2.x);
      r0.y = (r7.z * r0.y);
      r0.y = (r5.w * r0.y);
      r0.y = (r7.w * r0.y);
      let v_214 = fma(r0.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xzw);
      r8 = vec4<f32>(v_214.x, r8.y, v_214.yz);
    }
  }
  r0.y = (r7.y * r7.y);
  r0.z = (r0.z * r0.z);
  let v_215 = (r8.xzw * r0.zzz);
  r2 = vec4<f32>(v_215.xyz, r2.w);
  let v_216 = fma(r0.yyy, r9.yzw, r2.xyz);
  r2 = vec4<f32>(v_216.xyz, r2.w);
  let v_217 = fma(r5.xyz, r4.www, r2.xyz);
  r2 = vec4<f32>(v_217.xyz, r2.w);
  r0.x = fma(v1.z, r0.x, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_218 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_218.xyz, r5.w);
  r0.y = ((-(cb2_2.tint_symbol_1[16u].zzzz)).y + 1.0f);
  let v_219 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_219.xyz, r8.w);
  let v_220 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_220.xyz, r8.w);
  let v_221 = fma(r5.xyz, r0.yyy, r8.xyz);
  r5 = vec4<f32>(v_221.xyz, r5.w);
  let v_222 = (r0.www * r5.xyz);
  r5 = vec4<f32>(v_222.xyz, r5.w);
  let v_223 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(v_223.xyz, r0.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_224 = dot(r8.xyz, r3.xyz);
  r4.w = clamp(vec4<f32>(v_224, v_224, v_224, v_224).w, 0.0f, 1.0f);
  let v_225 = fma(cb3_3.tint_symbol_2[49u].xyz, r4.www, r0.xyz);
  r0 = vec4<f32>(v_225.xyz, r0.w);
  let v_226 = fma(r0.xyz, r2.www, r5.xyz);
  r0 = vec4<f32>(v_226.xyz, r0.w);
  let v_227 = (r7.yyy * r0.xyz);
  r0 = vec4<f32>(v_227.xyz, r0.w);
  let v_228 = fma(r0.xyz, r1.xyz, r2.xyz);
  r0 = vec4<f32>(v_228.xyz, r0.w);
  r2.x = ((-(r7.yyyy)).x + 1.0f);
  r2.y = dot((-(r4.xyzx)).xyz, r3.xyz);
  r2.y = (r2.y + r2.y);
  let v_229 = -(r2.yyyy);
  let v_230 = -(r4.xyzx);
  let v_231 = fma(r3.xyz, v_229.xyz, v_230.xyz);
  r3 = vec4<f32>(v_231.xyz, r3.w);
  let v_232 = clamp(((r3.wwww * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_233 = r2;
  r2 = vec4<f32>(v_233.x, v_232.xy, v_233.w);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r3.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r4.x = (r2.y * cb5_5.tint_symbol_3[6u].z);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r4.x < r3.w)));
  r4.y = fma(r2.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.y = (r2.y * r2.y);
  r2.y = fma(r2.y, 5.0f, r3.w);
  let v_234 = bitcast<u32>(r4.x);
  let v_235 = r4.y;
  r2.y = select(r2.y, v_235, (v_234 != 0u));
  let v_236 = (r3.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_236.xy, r3.z, v_236.z);
  r4.x = (abs(r3.zzzz).x + 1.0f);
  let v_237 = (r3.xyw / r4.xxx);
  r3 = vec4<f32>(v_237.xy, r3.z, v_237.z);
  let v_238 = ((-(r3.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_238.xy, r3.z, v_238.z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.z)));
  let v_239 = bitcast<vec2<u32>>(r3.zz);
  let v_240 = r3.xy;
  let v_241 = select(r3.wy, v_240, (v_239 != vec2<u32>()));
  r3 = vec4<f32>(v_241.xy, r3.zw);
  let v_242 = r2.y;
  r3 = textureSampleLevel(t1, s1, r3.xyxx.xy, v_242);
  r0.w = max(r0.w, r2.w);
  let v_243 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_243.xyz, r3.w);
  let v_244 = (r2.zzz * r3.xyz);
  r2 = vec4<f32>(r2.x, v_244.xyz);
  let v_245 = (r2.yzw * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(r2.x, v_245.xyz);
  let v_246 = fma(r3.xyz, vec3<f32>(0.31830990314483642578f), r2.yzw);
  r2 = vec4<f32>(r2.x, v_246.xyz);
  let v_247 = fma(r2.yzw, r2.xxx, r0.xyz);
  r0 = vec4<f32>(v_247.xyz, r0.w);
  r0.w = (r1.w * r7.x);
  let v_248 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_248.xyz, r0.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.w);
  let v_249 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_249.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_250 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_250 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_251 = (r0.www * r6.xyz);
  r2 = vec4<f32>(v_251.xyz, r2.w);
  let v_252 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_252, v_252, v_252, v_252).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_253 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_253, v_253, v_253, v_253).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_254 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_254.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_255 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_255.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_256 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_256.xyz, r2.w);
  let v_257 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_257.xyz, r2.w);
  let v_258 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_258.xyz, r3.w);
  let v_259 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_259.xyz, r2.w);
  let v_260 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_261 = (r2.xyz + v_260.xyz);
  r2 = vec4<f32>(v_261.xyz, r2.w);
  let v_262 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_262.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_263 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_263.xy, r1.z, v_263.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_264 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_264.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_265 = -(r0.xyxz);
  let v_266 = fma(r1.xyw, r0.www, v_265.xyw);
  r1 = vec4<f32>(v_266.xy, r1.z, v_266.z);
  let v_267 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_267.xyz, r0.w);
  let v_268 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_268.xyz, o0.w);
  o0.w = cb2_2.tint_symbol_1[15u].x;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_269 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_269);
  return o0;
}
