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
  tint_symbol_6 : array<vec4<u32>, 3u>,
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
  let v_33 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_34 = (r0.yyy * r2.xyz);
  r4 = vec4<f32>(v_34.xyz, r4.w);
  let v_35 = fma(r2.xyz, r0.yyy, v_21.xyz);
  r5 = vec4<f32>(v_35.xyz, r5.w);
  r0.y = dot(r5.xyz, r5.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_36 = (r0.yyy * r5.xyz);
  r5 = vec4<f32>(v_36.xyz, r5.w);
  r0.y = (cb2_2.tint_symbol_1[15u].z * cb2_2.tint_symbol_1[15u].z);
  r0.w = (r0.w * r0.w);
  r2.w = fma(r4.w, cb11_11.tint_symbol_4[5u].x, -500.0f);
  r2.w = max(r2.w, 0.0f);
  let v_37 = -(r2.wwww);
  r3.w = fma(r4.w, cb11_11.tint_symbol_4[5u].x, v_37.w);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.w, 3.0f, r2.w);
  r2.x = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
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
  r2.y = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).y, 1.5f, 1.0f);
  r2.y = (r2.y * 0.5f);
  let v_56 = abs(r10.yyyy);
  r2.z = max(v_56.z, abs(r10.xxxx).z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.y)));
  let v_57 = (bitcast<u32>(r2.z) != 0u);
  let v_58 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r2.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_58, v_57);
  let v_59 = abs(r9.yyyy);
  r3.w = max(v_59.w, abs(r9.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.y)));
  let v_60 = bitcast<u32>(r3.w);
  r2.z = select(r2.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_60 != 0u));
  let v_61 = abs(r8.yyyy);
  r3.w = max(v_61.w, abs(r8.xxxx).w);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.y)));
  let v_62 = bitcast<u32>(r2.y);
  r2.y = select(r2.z, 0.0f, (v_62 != 0u));
  let v_63 = x0[bitcast<i32>(r2.y)];
  r8 = vec4<f32>(v_63.xyz, r8.w);
  r2.y = f32(bitcast<i32>(r2.y));
  r2.z = (r2.y + 0.5f);
  r2.z = (r2.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.yyyy)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r2.y = dot(r9, cb6_6.tint_symbol_5[12u]);
  r3.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r2.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, !((r2.y == 0.0f))));
  r2.y = ((-(r2.yyyy)).y + r8.z);
  let v_64 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_64.xy, r10.z, v_64.z);
  r10.z = dpdx(r2.y);
  let v_65 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_65.xyz, r12.w);
  r12.w = dpdy(r2.y);
  let v_66 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_66.xy);
  let v_67 = -(r7.zwzz);
  let v_68 = fma(r10.xz, r12.xz, v_67.xy);
  r13 = vec4<f32>(v_68.xy, r13.zw);
  r4.w = (1.0f / r13.x);
  r5.w = (r10.z * r12.y);
  let v_69 = -(r5.wwww);
  r13.z = fma(r10.x, r12.w, v_69.z);
  let v_70 = (r4.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_70.xy);
  let v_71 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_71.xy);
  let v_72 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_72.xy);
  r2.y = fma((-(r3.wwww)).y, r7.z, r2.y);
  r2.y = fma((-(r3.wwww)).y, r7.w, r2.y);
  let v_73 = bitcast<u32>(r2.z);
  let v_74 = r2.y;
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
  r2.y = dot(r8, vec4<f32>(1.0f));
  r2.x = clamp(fma(r2.xxxx, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).x, 0.0f, 1.0f);
  let v_122 = abs(r7.yyyy);
  r2.z = max(v_122.z, abs(r7.xxxx).z);
  r2.z = clamp(fma(r2.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).z, 0.0f, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = (r2.z * r2.x);
  r2.x = fma(r2.y, 0.0625f, r2.x);
  r2.x = (r2.x * r2.x);
  r2.x = min(r2.x, 1.0f);
  r2.y = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).y, 0.0f, 1.0f);
  r2.y = sqrt(r2.y);
  r2.y = (r2.y * cb6_6.tint_symbol_5[3u].z);
  let v_123 = -(r2.xxxx);
  r2.x = fma(r2.y, v_123.x, r2.x);
  r7.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_124 = r7;
  r7 = vec4<f32>(v_124.x, 0.0f, v_124.z, 0.5f);
  let v_125 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r7.xy);
  let v_126 = r2;
  r2 = vec4<f32>(v_126.x, v_125.xy, v_126.w);
  r8 = textureSample(t12, s12, r2.yzyy.xy);
  r7.z = r8.y;
  r7 = textureSample(t13, s13, r7.zwzz.xy);
  r2.x = (r2.x * r7.x);
  let v_127 = dot(r3.xyz, v_21.xyz);
  r2.y = clamp(vec4<f32>(v_127, v_127, v_127, v_127).y, 0.0f, 1.0f);
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
  r2.z = ((-(cb11_11.tint_symbol_4[4u].wwww)).z + 1.0f);
  let v_136 = fma(cb11_11.tint_symbol_4[4u].ww, r7.yz, r2.zz);
  let v_137 = r7;
  r7 = vec4<f32>(v_137.x, v_136.xy, v_137.w);
  let v_138 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_138.xy, r8.zw);
  r2.z = (r8.x * 0.125f);
  r3.w = fma((-(r0.zzzz)).w, r7.y, 1.0f);
  r4.w = dot(r3.xyz, r5.xyz);
  r4.w = clamp(((r4.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r4.w = log2(r4.w);
  r4.w = (r4.w * r8.y);
  r4.w = exp2(r4.w);
  r4.w = (r7.z * r4.w);
  r2.z = (r2.z * r4.w);
  r0.z = (r0.z * r2.z);
  r0.z = (r2.y * r0.z);
  r2.y = (r2.y * r3.w);
  let v_139 = fma(r1.xyz, r2.yyy, r0.zzz);
  r5 = vec4<f32>(v_139.xyz, r5.w);
  let v_140 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_140.xyz, r5.w);
  r0.x = fma(v1.z, r0.x, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_141 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(r7.x, v_141.xyz);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_142 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_142.xyz, r8.w);
  let v_143 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_143.xyz, r8.w);
  let v_144 = fma(r7.yzw, r0.zzz, r8.xyz);
  r7 = vec4<f32>(r7.x, v_144.xyz);
  let v_145 = (r0.www * r7.yzw);
  r7 = vec4<f32>(r7.x, v_145.xyz);
  let v_146 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r8 = vec4<f32>(v_146.xyz, r8.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_147 = dot(r9.xyz, r3.xyz);
  r0.x = clamp(vec4<f32>(v_147, v_147, v_147, v_147).x, 0.0f, 1.0f);
  let v_148 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.xxx, r8.xyz);
  r8 = vec4<f32>(v_148.xyz, r8.w);
  let v_149 = fma(r8.xyz, r0.yyy, r7.yzw);
  r7 = vec4<f32>(r7.x, v_149.xyz);
  let v_150 = (r3.www * r7.yzw);
  r7 = vec4<f32>(r7.x, v_150.xyz);
  let v_151 = (r1.xyz * r7.yzw);
  r7 = vec4<f32>(r7.x, v_151.xyz);
  let v_152 = fma(r5.xyz, r2.xxx, r7.yzw);
  r2 = vec4<f32>(v_152.xyz, r2.w);
  r0.x = ((-(r3.wwww)).x + 1.0f);
  r0.z = dot((-(r4.xyzx)).xyz, r3.xyz);
  r0.z = (r0.z + r0.z);
  let v_153 = -(r0.zzzz);
  let v_154 = -(r4.xyzx);
  let v_155 = fma(r3.xyz, v_153.xyz, v_154.xyz);
  r3 = vec4<f32>(v_155.xyz, r3.w);
  let v_156 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r4 = vec4<f32>(v_156.xy, r4.zw);
  r0.z = ((-(r4.xxxx)).z + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.w = (r0.z * cb5_5.tint_symbol_3[6u].z);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  r4.x = fma(r0.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.z = (r0.z * r0.z);
  r0.z = fma(r0.z, 5.0f, r2.w);
  let v_157 = bitcast<u32>(r3.w);
  let v_158 = r4.x;
  r0.z = select(r0.z, v_158, (v_157 != 0u));
  let v_159 = (r3.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_159.xy, r3.z, v_159.z);
  r2.w = (abs(r3.zzzz).w + 1.0f);
  let v_160 = (r3.xyw / r2.www);
  r3 = vec4<f32>(v_160.xy, r3.z, v_160.z);
  let v_161 = ((-(r3.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_161.xy, r3.z, v_161.z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.z)));
  let v_162 = bitcast<vec2<u32>>(r2.ww);
  let v_163 = r3.xy;
  let v_164 = select(r3.wy, v_163, (v_162 != vec2<u32>()));
  r3 = vec4<f32>(v_164.xy, r3.zw);
  let v_165 = r0.z;
  r3 = textureSampleLevel(t1, s1, r3.xyxx.xy, v_165);
  r0.y = max(r0.w, r0.y);
  let v_166 = (r0.yyy * r3.xyz);
  r0 = vec4<f32>(r0.x, v_166.xyz);
  let v_167 = (r4.yyy * r0.yzw);
  r3 = vec4<f32>(v_167.xyz, r3.w);
  let v_168 = (r3.xyz * vec3<f32>(0.68169009685516357422f));
  r3 = vec4<f32>(v_168.xyz, r3.w);
  let v_169 = fma(r0.yzw, vec3<f32>(0.31830990314483642578f), r3.xyz);
  r0 = vec4<f32>(r0.x, v_169.xyz);
  let v_170 = fma(r0.yzw, r0.xxx, r2.xyz);
  r0 = vec4<f32>(v_170.xyz, r0.w);
  r0.w = (r1.w * r7.x);
  let v_171 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_171.xyz, r0.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.w);
  let v_172 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_172.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_173 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_173 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_174 = (r0.www * r6.xyz);
  r2 = vec4<f32>(v_174.xyz, r2.w);
  let v_175 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_175, v_175, v_175, v_175).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_176 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_176, v_176, v_176, v_176).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_177 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_177.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_178 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_178.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_179 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_179.xyz, r2.w);
  let v_180 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_180.xyz, r2.w);
  let v_181 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_181.xyz, r3.w);
  let v_182 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_182.xyz, r2.w);
  let v_183 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_184 = (r2.xyz + v_183.xyz);
  r2 = vec4<f32>(v_184.xyz, r2.w);
  let v_185 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_185.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_186 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_186.xy, r1.z, v_186.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_187 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_187.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_188 = -(r0.xyxz);
  let v_189 = fma(r1.xyw, r0.www, v_188.xyw);
  r1 = vec4<f32>(v_189.xy, r1.z, v_189.z);
  let v_190 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_190.xyz, r0.w);
  let v_191 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_191.xyz, o0.w);
  o0.w = cb2_2.tint_symbol_1[15u].x;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_192 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_192);
  return o0;
}
