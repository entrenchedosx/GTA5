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

struct cb10_struct {
  tint_symbol_4 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb10_struct;

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

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

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

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

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
  let v_3 = (v0.zw * cb11_11.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = (v0.zw * cb11_11.tint_symbol_4[5u].ww);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  r1 = textureSample(t5, s5, v0.zwzz.xy);
  r2 = textureSample(t0, s0, r0.xyxx.xy);
  r3 = textureSample(t8, s8, v0.xyxx.xy);
  r4 = textureSample(t7, s7, v7.xyz.xyxx.xy);
  r0.x = min(cb11_11.tint_symbol_4[2u].x, 0.5f);
  let v_5 = ((-(r3.xxxy)).zw + r4.xy);
  r3 = vec4<f32>(r3.xy, v_5.xy);
  let v_6 = fma(r0.xx, r3.zw, r3.xy);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_7.xy, r0.zw);
  r2.w = dot(r0.xy, r0.xy);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = sqrt(abs(r2.wwww).w);
  r3.x = max(cb11_11.tint_symbol_4[8u].x, 0.00100000004749745131f);
  let v_8 = (r0.xy * r3.xx);
  r0 = vec4<f32>(v_8.xy, r0.zw);
  let v_9 = (r0.yyy * v5.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = fma(r0.xxx, v4.xyz, r3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = fma(r2.www, v1.xyz, r3.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_12 = (r0.xxx * r3.xyz);
  r3 = vec4<f32>(v_12.xy, r3.z, v_12.z);
  r4 = textureSample(t9, s9, r0.zwzz.xy);
  let v_13 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_13.xy, r4.zw);
  r0.y = dot(r4.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r0.z = (r0.y * cb11_11.tint_symbol_4[4u].y);
  let v_14 = (r2.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = (v0.xy * cb11_11.tint_symbol_4[9u].zz);
  r5 = vec4<f32>(v_15.xy, r5.zw);
  r6 = textureSample(t3, s3, r5.xyxx.xy);
  r5 = textureSample(t4, s4, r5.xyxx.xy);
  r0.w = clamp(((v7.xyz.zzzz + v7.xyz.zzzz)).w, 0.0f, 1.0f);
  r2.w = (v7.z + -0.5f);
  r2.w = clamp(((r2.wwww + r2.wwww)).w, 0.0f, 1.0f);
  r0.w = (r6.w * r0.w);
  let v_16 = fma((-(r2.xyzx)).xyz, cb11_11.tint_symbol_4[0u].yzw, r6.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  let v_17 = fma(r0.www, r2.xyz, r4.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = ((-(r2.xyzx)).xyz + r5.xyz);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  let v_19 = fma(r2.www, r4.xyz, r2.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r0.w = (r1.w * cb11_11.tint_symbol_4[1u].w);
  let v_20 = -(r2.xyzx);
  let v_21 = fma(r1.xyz, cb11_11.tint_symbol_4[1u].xyz, v_20.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  let v_22 = fma(r0.www, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  let v_23 = (r1.xyz * v6.xxx);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  let v_24 = (v6.xx * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_24.xy, r2.zw);
  r0.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  r0.w = (r0.w * r2.y);
  r0.z = (r0.z * v6.x);
  r0.z = (r0.z * v1.w);
  let v_25 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).yz + vec2<f32>(1.0f, 2.0f));
  let v_26 = r2;
  r2 = vec4<f32>(v_26.x, v_25.xy, v_26.w);
  r1.w = (r2.y * v6.z);
  let v_27 = (r2.zz * v7.xyz.xy);
  r2 = vec4<f32>(r2.xy, v_27.xy);
  r5 = textureSample(t6, s6, r2.zwzz.xy);
  r2.z = (cb5_5.tint_symbol_3[3u].z * cb11_11.tint_symbol_4[2u].z);
  r2.w = ((-(r5.xxxx)).w + r5.z);
  r5.x = fma(r2.z, r2.w, r5.x);
  let v_28 = (r5.xy * cb11_11.tint_symbol_4[2u].xx);
  r2 = vec4<f32>(r2.xy, v_28.xy);
  r4.x = fma(v6.z, r2.y, -1.0f);
  r2.y = fma(r2.y, r4.x, 1.0f);
  r2.z = (r2.y * r2.z);
  let v_29 = -(r1.xyzx);
  let v_30 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_29.xyz);
  r4 = vec4<f32>(v_30.xyz, r4.w);
  let v_31 = fma(r2.zzz, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_31.xyz, r1.w);
  r1.w = (r1.w * cb11_11.tint_symbol_4[2u].x);
  let v_32 = ((-(r1.xyzx)).xyz + r5.zzz);
  r4 = vec4<f32>(v_32.xyz, r4.w);
  let v_33 = fma(r1.www, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_33.xyz, r1.w);
  r1.w = fma((-(r2.wwww)).w, r2.y, 1.0f);
  r0.z = clamp(((r0.zzzz * r1.wwww)).z, 0.0f, 1.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[6u].y)));
  r2.y = (cb11_11.tint_symbol_4[2u].w * cb11_11.tint_symbol_4[6u].y);
  r2.y = (r2.y * v6.x);
  r0.y = (r0.y * r2.y);
  r2.y = dot(v3.xyz, v3.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_34 = -(cb3_3.tint_symbol_2[0u].xyzx);
  r4 = vec4<f32>(((v_34.xyz + vec3<f32>(0.0f, 0.0f, -1.0f))).xyz, r4.w);
  let v_35 = fma(cb11_11.tint_symbol_4[7u].www, r4.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r4 = vec4<f32>(v_35.xyz, r4.w);
  let v_36 = (r0.yyy * cb11_11.tint_symbol_4[7u].xyz);
  r5 = vec4<f32>(v_36.xyz, r5.w);
  let v_37 = -(r4.xxyz);
  let v_38 = fma(v3.xyz, r2.yyy, v_37.yzw);
  r2 = vec4<f32>(r2.x, v_38.xyz);
  r0.y = dot(r2.yzw, r2.yzw);
  r0.y = inverseSqrt(r0.y);
  let v_39 = (r0.yyy * r2.yzw);
  r2 = vec4<f32>(r2.x, v_39.xyz);
  r0.y = dot(r3.xyw, r2.yzw);
  r0.y = clamp(((r0.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r2.y = fma(cb11_11.tint_symbol_4[6u].x, r4.w, 0.00000000999999993923f);
  r0.y = log2(r0.y);
  r0.y = (r0.y * r2.y);
  r0.y = exp2(r0.y);
  let v_40 = fma(r5.xyz, r0.yyy, r1.xyz);
  r2 = vec4<f32>(r2.x, v_40.xyz);
  let v_41 = bitcast<vec3<u32>>(r1.www);
  let v_42 = r2.yzw;
  let v_43 = select(r1.xyz, v_42, (v_41 != vec3<u32>()));
  r1 = vec4<f32>(v_43.xyz, r1.w);
  let v_44 = min(r1.xyz, vec3<f32>(240.0f));
  r1 = vec4<f32>(v_44.xyz, r1.w);
  let v_45 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_45.xyz, r1.w);
  let v_46 = -(v2.xxyz);
  let v_47 = (v_46.yzw + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(r2.x, v_47.xyz);
  r0.y = dot(r2.yzw, r2.yzw);
  r0.y = inverseSqrt(r0.y);
  let v_48 = (r0.yyy * r2.yzw);
  r4 = vec4<f32>(v_48.xyz, r4.w);
  let v_49 = fma(r2.yzw, r0.yyy, v_34.xyz);
  r5 = vec4<f32>(v_49.xyz, r5.w);
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_50 = (r1.www * r5.xyz);
  r5 = vec4<f32>(v_50.xyz, r5.w);
  r1.w = (r2.x * r2.x);
  r0.w = (r0.w * r0.w);
  r2.x = fma(r4.w, cb11_11.tint_symbol_4[4u].x, -500.0f);
  r2.x = max(r2.x, 0.0f);
  let v_51 = -(r2.xxxx);
  r4.w = fma(r4.w, cb11_11.tint_symbol_4[4u].x, v_51.w);
  r2.x = (r2.x * 558.0f);
  r2.x = fma(r4.w, 3.0f, r2.x);
  r4.w = dot(r2.yzw, cb1_1.tint_symbol[14u].xyz);
  let v_52 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_52.xyz, r6.w);
  let v_53 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_53.xyz, r7.w);
  let v_54 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r6 = vec4<f32>(v_54.xy, r6.z, v_54.z);
  let v_55 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r6.xyw);
  r6 = vec4<f32>(v_55.xyz, r6.w);
  let v_56 = fma(r6.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_56.xyz, r7.w);
  let v_57 = &(x0[0u]);
  let v_58 = r7;
  *(v_57) = vec4<f32>(v_58.xyz, (*(v_57)).w);
  let v_59 = fma(r6.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_59.xyz, r8.w);
  let v_60 = &(x0[1u]);
  let v_61 = r8;
  *(v_60) = vec4<f32>(v_61.xyz, (*(v_60)).w);
  let v_62 = fma(r6.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_62.xyz, r9.w);
  let v_63 = &(x0[2u]);
  let v_64 = r9;
  *(v_63) = vec4<f32>(v_64.xyz, (*(v_63)).w);
  let v_65 = fma(r6.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r6 = vec4<f32>(v_65.xyz, r6.w);
  let v_66 = &(x0[3u]);
  let v_67 = r6;
  *(v_66) = vec4<f32>(v_67.xyz, (*(v_66)).w);
  let v_68 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_69 = r10;
  r10 = vec4<f32>(v_69.x, v_68.x, v_69.z, v_68.y);
  r5.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_70 = abs(r9.yyyy);
  r6.z = max(v_70.z, abs(r9.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r5.w)));
  let v_71 = (bitcast<u32>(r6.z) != 0u);
  let v_72 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r6.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_72, v_71);
  let v_73 = abs(r8.yyyy);
  r6.w = max(v_73.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_74 = bitcast<u32>(r6.w);
  r6.z = select(r6.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_74 != 0u));
  let v_75 = abs(r7.yyyy);
  r6.w = max(v_75.w, abs(r7.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_76 = bitcast<u32>(r5.w);
  r5.w = select(r6.z, 0.0f, (v_76 != 0u));
  let v_77 = x0[bitcast<i32>(r5.w)];
  r7 = vec4<f32>(v_77.xyz, r7.w);
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
  let v_78 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_78.xy, r9.z, v_78.z);
  r9.z = dpdx(r5.w);
  let v_79 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_79.xyz, r11.w);
  r11.w = dpdy(r5.w);
  let v_80 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_80.xy, r7.zw);
  let v_81 = -(r7.xyxx);
  let v_82 = fma(r9.xz, r11.xz, v_81.xy);
  r12 = vec4<f32>(v_82.xy, r12.zw);
  r7.x = (1.0f / r12.x);
  r7.y = (r9.z * r11.y);
  let v_83 = -(r7.yyyy);
  r12.z = fma(r9.x, r11.w, v_83.z);
  let v_84 = (r7.xx * r12.yz);
  r7 = vec4<f32>(v_84.xy, r7.zw);
  let v_85 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_85.xy, r7.zw);
  let v_86 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_86.xy, r7.zw);
  r5.w = fma((-(r6.wwww)).w, r7.x, r5.w);
  r5.w = fma((-(r6.wwww)).w, r7.y, r5.w);
  let v_87 = bitcast<u32>(r6.z);
  let v_88 = r5.w;
  r10.z = select(r7.z, v_88, (v_87 != 0u));
  r8.z = 0.0f;
  let v_89 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_89.xyz, r7.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_90.xy, r10.zw);
  let v_91 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_91.xyz, r9.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_92.xy, r10.zw);
  let v_93 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_93.xyz, r11.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_94.xy, r10.zw);
  let v_95 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_95.xyz, r12.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_96.xy, r10.zw);
  let v_97 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_97.xyz, r13.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_98.xy, r10.zw);
  let v_99 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_99.xyz, r14.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_100.xy, r10.zw);
  let v_101 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_101.xyz, r15.w);
  let v_102 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_102.xy, r10.zw);
  let v_103 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_103.xyz, r16.w);
  let v_104 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_104.xy, r10.zw);
  let v_105 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_105.xyz, r17.w);
  let v_106 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_106.xy, r10.zw);
  let v_107 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_107.xyz, r18.w);
  let v_108 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_108.xy, r10.zw);
  let v_109 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_109.xyz, r19.w);
  let v_110 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_110.xy, r10.zw);
  let v_111 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_111.xyz, r20.w);
  let v_112 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_112.xy, r10.zw);
  let v_113 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_113.xyz, r21.w);
  let v_114 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_114.xy, r10.zw);
  let v_115 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_115.xyz, r22.w);
  let v_116 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_116.xy, r10.zw);
  let v_117 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_117.xyz, r23.w);
  let v_118 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_118.xy, r10.zw);
  let v_119 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_119.xyz, r8.w);
  let v_120 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_120.xy, r7.z);
  let v_121 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_121.xy, r9.z);
  let v_122 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_122.xy, r11.z);
  let v_123 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_123.xy, r12.z);
  let v_124 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_124.xy, r13.z);
  let v_125 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_125.xy, r14.z);
  let v_126 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_126.xy, r15.z);
  let v_127 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_127.xy, r16.z);
  let v_128 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_128.xy, r17.z);
  let v_129 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_129.xy, r18.z);
  let v_130 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_130.xy, r19.z);
  let v_131 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_131.xy, r20.z);
  let v_132 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_132.xy, r21.z);
  let v_133 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_133.xy, r22.z);
  let v_134 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_134.xy, r23.z);
  let v_135 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_135.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r5.w = dot(r7, vec4<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_136 = abs(r6.yyyy);
  r6.x = max(v_136.x, abs(r6.xxxx).x);
  r6.x = clamp(fma(r6.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.x * r4.w);
  r4.w = fma(r5.w, 0.0625f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_6[3u].z);
  let v_137 = -(r4.wwww);
  r4.w = fma(r5.w, v_137.w, r4.w);
  r6.x = (-(cb6_6.tint_symbol_6[15u].wwww)).x;
  let v_138 = r6;
  r6 = vec4<f32>(v_138.x, 0.0f, v_138.z, 0.5f);
  let v_139 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r6.xy);
  r6 = vec4<f32>(v_139.xy, r6.zw);
  r7 = textureSample(t12, s12, r6.xyxx.xy);
  r6.z = r7.y;
  r6 = textureSample(t13, s13, r6.zwzz.xy);
  r4.w = (r4.w * r6.x);
  let v_140 = dot(r3.xyw, v_34.xyz);
  r5.w = clamp(vec4<f32>(v_140, v_140, v_140, v_140).w, 0.0f, 1.0f);
  let v_141 = dot(r4.xyz, r3.xyw);
  r6.x = clamp(vec4<f32>(v_141, v_141, v_141, v_141).x, 0.0f, 1.0f);
  let v_142 = dot(r5.xyz, v_34.xyz);
  r6.y = clamp(vec4<f32>(v_142, v_142, v_142, v_142).y, 0.0f, 1.0f);
  let v_143 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_143.xy, r6.zw);
  let v_144 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_144.xy);
  let v_145 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_145.xy);
  let v_146 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_146.xy, r6.zw);
  r6.z = ((-(cb11_11.tint_symbol_4[3u].wwww)).z + 1.0f);
  let v_147 = fma(cb11_11.tint_symbol_4[3u].ww, r6.xy, r6.zz);
  r6 = vec4<f32>(v_147.xy, r6.zw);
  let v_148 = (r2.xx + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_148.xy, r7.zw);
  r6.w = (r7.x * 0.125f);
  r6.x = fma((-(r0.zzzz)).x, r6.x, 1.0f);
  r5.x = dot(r3.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.y);
  r5.x = exp2(r5.x);
  r5.x = (r6.y * r5.x);
  r5.x = (r6.w * r5.x);
  r5.x = (r0.z * r5.x);
  r5.x = (r5.w * r5.x);
  r5.y = (r5.w * r6.x);
  let v_149 = fma(r1.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_149.xyz, r5.w);
  let v_150 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_150.xyz, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r8 = vec4<f32>(r8.x, vec3<f32>());
    r7 = vec4<f32>(0.0f, r7.y, vec2<f32>());
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_151 = (v_46.xzw + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_151.x, r7.y, v_151.yz);
    let v_152 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_152.xyz, r8.w);
    r8.x = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.y = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r8.x = clamp(((r8.xxxx / r8.yyyy)).x, 0.0f, 1.0f);
    r8.x = (r8.x * cb3_3.tint_symbol_2[19u].w);
    let v_153 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_153.xyz, r8.w);
    let v_154 = (r8.xyz + (-(v2.xyzx)).xyz);
    r8 = vec4<f32>(v_154.xyz, r8.w);
    let v_155 = bitcast<vec3<u32>>(r6.yyy);
    let v_156 = r7.xzw;
    let v_157 = select(r8.xyz, v_156, (v_155 != vec3<u32>()));
    r7 = vec4<f32>(v_157.x, r7.y, v_157.yz);
    r6.y = dot(r7.xzw, r7.xzw);
    let v_158 = (r7.xzw + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_158.x, r7.y, v_158.yz);
    r8.x = dot(r7.xzw, r7.xzw);
    r8.x = inverseSqrt(r8.x);
    let v_159 = (r7.xzw * r8.xxx);
    r7 = vec4<f32>(v_159.x, r7.y, v_159.yz);
    r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r8.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[11u].w);
    r6.y = (r6.y / r8.x);
    let v_160 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.x = dot(r7.xzw, v_160.xyz);
    r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_161 = dot(r7.xzw, r3.xyw);
    r8.y = clamp(vec4<f32>(v_161, v_161, v_161, v_161).y, 0.0f, 1.0f);
    r8.x = (r8.x * r8.y);
    r8.y = (r6.y * r8.x);
    let v_162 = (r8.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(r8.x, v_162.xyz);
    let v_163 = (r1.xyz * r8.yzw);
    r8 = vec4<f32>(r8.x, v_163.xyz);
    let v_164 = fma(r2.yzw, r0.yyy, r7.xzw);
    r7 = vec4<f32>(v_164.x, r7.y, v_164.yz);
    r9.x = dot(r7.xzw, r7.xzw);
    r9.x = inverseSqrt(r9.x);
    let v_165 = (r7.xzw * r9.xxx);
    r7 = vec4<f32>(v_165.x, r7.y, v_165.yz);
    let v_166 = dot(r7.xzw, r4.xyz);
    r9.x = clamp(vec4<f32>(v_166, v_166, v_166, v_166).x, 0.0f, 1.0f);
    r9.x = ((-(r9.xxxx)).x + 1.0f);
    r9.y = (r9.x * r9.x);
    r9.y = (r9.y * r9.y);
    r9.x = (r9.y * r9.x);
    r9.x = fma(cb11_11.tint_symbol_4[3u].w, r9.x, r6.z);
    let v_167 = dot(r7.xzw, r3.xyw);
    r7.x = clamp(vec4<f32>(v_167, v_167, v_167, v_167).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r7.x * r7.y);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r9.x);
    r7.x = (r8.x * r7.x);
    r6.y = (r6.y * r7.x);
    r6.y = (r6.w * r6.y);
    let v_168 = (r6.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_168.x, r7.y, v_168.yz);
  }
  r6.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.y) != 0u)) {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    let v_169 = bitcast<u32>(r8.x);
    let v_170 = r6.y;
    r5.w = select(r5.w, v_170, (v_169 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_171 = -(v2.xyzx);
      let v_172 = (v_171.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_172.xyz, r9.w);
      let v_173 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      r8.x = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r8.x = clamp(((r8.xxxx / r9.wwww)).x, 0.0f, 1.0f);
      r8.x = (r8.x * cb3_3.tint_symbol_2[20u].w);
      let v_174 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      let v_175 = (r10.xyz + v_171.xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      let v_176 = bitcast<vec3<u32>>(r6.yyy);
      let v_177 = r9.xyz;
      let v_178 = select(r10.xyz, v_177, (v_176 != vec3<u32>()));
      r9 = vec4<f32>(v_178.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_179 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_179.xyz, r9.w);
      r8.x = dot(r9.xyz, r9.xyz);
      r8.x = inverseSqrt(r8.x);
      let v_180 = (r8.xxx * r9.xyz);
      r9 = vec4<f32>(v_180.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[12u].w);
      r6.y = (r6.y / r8.x);
      let v_181 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.x = dot(r9.xyz, v_181.xyz);
      r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_182 = dot(r9.xyz, r3.xyw);
      r9.w = clamp(vec4<f32>(v_182, v_182, v_182, v_182).w, 0.0f, 1.0f);
      r8.x = (r8.x * r9.w);
      r9.w = (r6.y * r8.x);
      let v_183 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_183.xyz, r10.w);
      let v_184 = fma(r10.xyz, r1.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_184.xyz);
      let v_185 = fma(r2.yzw, r0.yyy, r9.xyz);
      r9 = vec4<f32>(v_185.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_186 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_186.xyz, r9.w);
      let v_187 = dot(r9.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_187, v_187, v_187, v_187).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.x = (r9.w * r9.w);
      r10.x = (r10.x * r10.x);
      r9.w = (r9.w * r10.x);
      r9.w = fma(cb11_11.tint_symbol_4[3u].w, r9.w, r6.z);
      let v_188 = dot(r9.xyz, r3.xyw);
      r9.x = clamp(vec4<f32>(v_188, v_188, v_188, v_188).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r9.w);
      r8.x = (r8.x * r9.x);
      r6.y = (r6.y * r8.x);
      r6.y = (r6.w * r6.y);
      let v_189 = fma(r6.yyy, cb3_3.tint_symbol_2[20u].xyz, r7.xzw);
      r7 = vec4<f32>(v_189.x, r7.y, v_189.yz);
    }
  } else {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_190 = -(v2.xyzx);
      let v_191 = (v_190.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_191.xyz, r9.w);
      let v_192 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_192.xyz, r10.w);
      r8.x = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r8.x = clamp(((r8.xxxx / r9.wwww)).x, 0.0f, 1.0f);
      r8.x = (r8.x * cb3_3.tint_symbol_2[21u].w);
      let v_193 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_193.xyz, r10.w);
      let v_194 = (r10.xyz + v_190.xyz);
      r10 = vec4<f32>(v_194.xyz, r10.w);
      let v_195 = bitcast<vec3<u32>>(r6.yyy);
      let v_196 = r9.xyz;
      let v_197 = select(r10.xyz, v_196, (v_195 != vec3<u32>()));
      r9 = vec4<f32>(v_197.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_198 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_198.xyz, r9.w);
      r8.x = dot(r9.xyz, r9.xyz);
      r8.x = inverseSqrt(r8.x);
      let v_199 = (r8.xxx * r9.xyz);
      r9 = vec4<f32>(v_199.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r8.x = fma(r8.x, r6.y, cb3_3.tint_symbol_2[13u].w);
      r6.y = (r6.y / r8.x);
      let v_200 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.x = dot(r9.xyz, v_200.xyz);
      r8.x = clamp(fma(r8.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_201 = dot(r9.xyz, r3.xyw);
      r9.w = clamp(vec4<f32>(v_201, v_201, v_201, v_201).w, 0.0f, 1.0f);
      r8.x = (r8.x * r9.w);
      r9.w = (r6.y * r8.x);
      let v_202 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_202.xyz, r10.w);
      let v_203 = fma(r10.xyz, r1.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_203.xyz);
      let v_204 = fma(r2.yzw, r0.yyy, r9.xyz);
      r9 = vec4<f32>(v_204.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_205 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_205.xyz, r9.w);
      let v_206 = dot(r9.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_206, v_206, v_206, v_206).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.x = (r9.w * r9.w);
      r10.x = (r10.x * r10.x);
      r9.w = (r9.w * r10.x);
      r9.w = fma(cb11_11.tint_symbol_4[3u].w, r9.w, r6.z);
      let v_207 = dot(r9.xyz, r3.xyw);
      r9.x = clamp(vec4<f32>(v_207, v_207, v_207, v_207).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r7.y * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r9.w);
      r8.x = (r8.x * r9.x);
      r6.y = (r6.y * r8.x);
      r6.y = (r6.w * r6.y);
      let v_208 = fma(r6.yyy, cb3_3.tint_symbol_2[21u].xyz, r7.xzw);
      r7 = vec4<f32>(v_208.x, r7.y, v_208.yz);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_209 = -(v2.xyzx);
      let v_210 = (v_209.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_210.xyz, r9.w);
      let v_211 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_211.xyz, r10.w);
      r6.y = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.x = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r6.y = clamp(((r6.yyyy / r8.xxxx)).y, 0.0f, 1.0f);
      r6.y = (r6.y * cb3_3.tint_symbol_2[22u].w);
      let v_212 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_212.xyz, r10.w);
      let v_213 = (r10.xyz + v_209.xyz);
      r10 = vec4<f32>(v_213.xyz, r10.w);
      let v_214 = bitcast<vec3<u32>>(r5.www);
      let v_215 = r9.xyz;
      let v_216 = select(r10.xyz, v_215, (v_214 != vec3<u32>()));
      r9 = vec4<f32>(v_216.xyz, r9.w);
      r5.w = dot(r9.xyz, r9.xyz);
      let v_217 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_217.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      r6.y = inverseSqrt(r6.y);
      let v_218 = (r6.yyy * r9.xyz);
      r9 = vec4<f32>(v_218.xyz, r9.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r6.y = fma(r6.y, r5.w, cb3_3.tint_symbol_2[14u].w);
      r5.w = (r5.w / r6.y);
      let v_219 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.y = dot(r9.xyz, v_219.xyz);
      r6.y = clamp(fma(r6.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_220 = dot(r9.xyz, r3.xyw);
      r8.x = clamp(vec4<f32>(v_220, v_220, v_220, v_220).x, 0.0f, 1.0f);
      r6.y = (r6.y * r8.x);
      r8.x = (r5.w * r6.y);
      let v_221 = (r8.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_221.xyz, r10.w);
      let v_222 = fma(r10.xyz, r1.xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_222.xyz);
      let v_223 = fma(r2.yzw, r0.yyy, r9.xyz);
      r2 = vec4<f32>(r2.x, v_223.xyz);
      r0.y = dot(r2.yzw, r2.yzw);
      r0.y = inverseSqrt(r0.y);
      let v_224 = (r0.yyy * r2.yzw);
      r2 = vec4<f32>(r2.x, v_224.xyz);
      let v_225 = dot(r2.yzw, r4.xyz);
      r0.y = clamp(vec4<f32>(v_225, v_225, v_225, v_225).y, 0.0f, 1.0f);
      r0.y = ((-(r0.yyyy)).y + 1.0f);
      r8.x = (r0.y * r0.y);
      r8.x = (r8.x * r8.x);
      r0.y = (r0.y * r8.x);
      r0.y = fma(cb11_11.tint_symbol_4[3u].w, r0.y, r6.z);
      let v_226 = dot(r2.yzw, r3.xyw);
      r2.y = clamp(vec4<f32>(v_226, v_226, v_226, v_226).y, 0.0f, 1.0f);
      r2.y = log2(r2.y);
      r2.y = (r2.y * r7.y);
      r2.y = exp2(r2.y);
      r0.y = (r0.y * r2.y);
      r0.y = (r6.y * r0.y);
      r0.y = (r5.w * r0.y);
      r0.y = (r6.w * r0.y);
      let v_227 = fma(r0.yyy, cb3_3.tint_symbol_2[22u].xyz, r7.xzw);
      r7 = vec4<f32>(v_227.x, r7.y, v_227.yz);
    }
  }
  r0.y = (r6.x * r6.x);
  r0.z = (r0.z * r0.z);
  let v_228 = (r7.xzw * r0.zzz);
  r2 = vec4<f32>(r2.x, v_228.xyz);
  let v_229 = fma(r0.yyy, r8.yzw, r2.yzw);
  r2 = vec4<f32>(r2.x, v_229.xyz);
  let v_230 = fma(r5.xyz, r4.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_230.xyz);
  r0.x = fma(r3.z, r0.x, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_231 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_231.xyz, r5.w);
  r0.y = ((-(cb2_2.tint_symbol_1[16u].zzzz)).y + 1.0f);
  let v_232 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(r6.x, v_232.xyz);
  let v_233 = (r6.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(r6.x, v_233.xyz);
  let v_234 = fma(r5.xyz, r0.yyy, r6.yzw);
  r5 = vec4<f32>(v_234.xyz, r5.w);
  let v_235 = (r0.www * r5.xyz);
  r5 = vec4<f32>(v_235.xyz, r5.w);
  let v_236 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(v_236.xyz, r0.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_237 = dot(r7.xyz, r3.xyw);
  r3.z = clamp(vec4<f32>(v_237, v_237, v_237, v_237).z, 0.0f, 1.0f);
  let v_238 = fma(cb3_3.tint_symbol_2[49u].xyz, r3.zzz, r0.xyz);
  r0 = vec4<f32>(v_238.xyz, r0.w);
  let v_239 = fma(r0.xyz, r1.www, r5.xyz);
  r0 = vec4<f32>(v_239.xyz, r0.w);
  let v_240 = (r6.xxx * r0.xyz);
  r0 = vec4<f32>(v_240.xyz, r0.w);
  let v_241 = fma(r0.xyz, r1.xyz, r2.yzw);
  r0 = vec4<f32>(v_241.xyz, r0.w);
  r1.x = ((-(r6.xxxx)).x + 1.0f);
  r1.y = dot((-(r4.xyzx)).xyz, r3.xyw);
  r1.y = (r1.y + r1.y);
  let v_242 = -(r1.yyyy);
  let v_243 = -(r4.xxyz);
  let v_244 = fma(r3.xyw, v_242.yzw, v_243.yzw);
  r2 = vec4<f32>(r2.x, v_244.xyz);
  let v_245 = clamp(((r2.xxxx * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_246 = r1;
  r1 = vec4<f32>(v_246.x, v_245.xy, v_246.w);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.y * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.x)));
  r3.y = fma(r1.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.y = (r1.y * r1.y);
  r1.y = fma(r1.y, 5.0f, r2.x);
  let v_247 = bitcast<u32>(r3.x);
  let v_248 = r3.y;
  r1.y = select(r1.y, v_248, (v_247 != 0u));
  let v_249 = (r2.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_249.xyz, r2.w);
  r3.x = (abs(r2.wwww).x + 1.0f);
  let v_250 = (r2.xyz / r3.xxx);
  r2 = vec4<f32>(v_250.xyz, r2.w);
  let v_251 = ((-(r2.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_251.xyz, r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
  let v_252 = bitcast<vec2<u32>>(r2.ww);
  let v_253 = r2.xy;
  let v_254 = select(r2.zy, v_253, (v_252 != vec2<u32>()));
  r2 = vec4<f32>(v_254.xy, r2.zw);
  let v_255 = r1.y;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_255);
  r0.w = max(r0.w, r1.w);
  let v_256 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_256.xyz, r2.w);
  let v_257 = (r1.zzz * r2.xyz);
  r1 = vec4<f32>(r1.x, v_257.xyz);
  let v_258 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_258.xyz);
  let v_259 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_259.xyz);
  let v_260 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_260.xyz, r0.w);
  let v_261 = v8.xy;
  let v_262 = max(v_261, vec2<f32>(-2147483648.0f));
  let v_263 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_262), vec2<i32>(2147483647i), (v_262 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_261 == v_261))));
  r1 = vec4<f32>(v_263.xy, r1.zw);
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
  let v_264 = bitcast<u32>(r1.y);
  let v_265 = cb2_2.tint_symbol_1[15u].x;
  r0.w = select(r1.x, v_265, (v_264 != 0u));
  let v_266 = bitcast<vec4<u32>>(r1.yyyy);
  r0 = select(r0, vec4<f32>(), (v_266 != vec4<u32>()));
  let v_267 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_267.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_268 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7, v_268);
  return o0;
}
