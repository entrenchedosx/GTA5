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

struct cb10_struct {
  tint_symbol_4 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb10_struct;

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

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

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

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

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

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v8 = v_2;
  x1[0u].x = v9[0u];
  x1[0u].y = v9[1u];
  x1[0u].z = v9[2u];
  x1[0u].w = v9[3u];
  let v_3 = (v7.xyz.xy * cb11_11.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = (v7.xyz.xy * cb11_11.tint_symbol_4[5u].ww);
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
  let v_46 = ((-(v2.xxyz)).yzw + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(r2.x, v_46.xyz);
  r0.y = dot(r2.yzw, r2.yzw);
  r0.y = inverseSqrt(r0.y);
  let v_47 = (r0.yyy * r2.yzw);
  r4 = vec4<f32>(v_47.xyz, r4.w);
  let v_48 = fma(r2.yzw, r0.yyy, v_34.xyz);
  r5 = vec4<f32>(v_48.xyz, r5.w);
  r0.y = dot(r5.xyz, r5.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_49 = (r0.yyy * r5.xyz);
  r5 = vec4<f32>(v_49.xyz, r5.w);
  r0.y = (r2.x * r2.x);
  r0.w = (r0.w * r0.w);
  r1.w = fma(r4.w, cb11_11.tint_symbol_4[4u].x, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_50 = -(r1.wwww);
  r2.x = fma(r4.w, cb11_11.tint_symbol_4[4u].x, v_50.x);
  r1.w = (r1.w * 558.0f);
  r1.w = fma(r2.x, 3.0f, r1.w);
  r2.x = dot(r2.yzw, cb1_1.tint_symbol[14u].xyz);
  let v_51 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r2 = vec4<f32>(r2.x, v_51.xyz);
  let v_52 = (r2.zzz * cb6_6.tint_symbol_5[1u].xyz);
  r6 = vec4<f32>(v_52.xyz, r6.w);
  let v_53 = fma(r2.yyy, cb6_6.tint_symbol_5[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_53.xyz, r6.w);
  let v_54 = fma(r2.www, cb6_6.tint_symbol_5[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_54.xyz, r6.w);
  let v_55 = fma(r6.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r7 = vec4<f32>(v_55.xyz, r7.w);
  let v_56 = &(x0[0u]);
  let v_57 = r7;
  *(v_56) = vec4<f32>(v_57.xyz, (*(v_56)).w);
  let v_58 = fma(r6.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r8 = vec4<f32>(v_58.xyz, r8.w);
  let v_59 = &(x0[1u]);
  let v_60 = r8;
  *(v_59) = vec4<f32>(v_60.xyz, (*(v_59)).w);
  let v_61 = fma(r6.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r9 = vec4<f32>(v_61.xyz, r9.w);
  let v_62 = &(x0[2u]);
  let v_63 = r9;
  *(v_62) = vec4<f32>(v_63.xyz, (*(v_62)).w);
  let v_64 = fma(r6.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r6 = vec4<f32>(v_64.xyz, r6.w);
  let v_65 = &(x0[3u]);
  let v_66 = r6;
  *(v_65) = vec4<f32>(v_66.xyz, (*(v_65)).w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_68 = r10;
  r10 = vec4<f32>(v_68.x, v_67.x, v_68.z, v_67.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_69 = abs(r9.yyyy);
  r5.w = max(v_69.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_70 = (bitcast<u32>(r5.w) != 0u);
  let v_71 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_71, v_70);
  let v_72 = abs(r8.yyyy);
  r6.z = max(v_72.z, abs(r8.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_73 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_73 != 0u));
  let v_74 = abs(r7.yyyy);
  r6.z = max(v_74.z, abs(r7.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_75 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_75 != 0u));
  let v_76 = x0[bitcast<i32>(r4.w)];
  r7 = vec4<f32>(v_76.xyz, r7.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r4.w = dot(r8, cb6_6.tint_symbol_5[12u]);
  r6.z = dot(r8, cb6_6.tint_symbol_5[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r7.z);
  let v_77 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_77.xy, r9.z, v_77.z);
  r9.z = dpdx(r4.w);
  let v_78 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_78.xyz, r11.w);
  r11.w = dpdy(r4.w);
  let v_79 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_79.xy, r7.zw);
  let v_80 = -(r7.xyxx);
  let v_81 = fma(r9.xz, r11.xz, v_80.xy);
  r12 = vec4<f32>(v_81.xy, r12.zw);
  r6.w = (1.0f / r12.x);
  r7.x = (r9.z * r11.y);
  let v_82 = -(r7.xxxx);
  r12.z = fma(r9.x, r11.w, v_82.z);
  let v_83 = (r6.ww * r12.yz);
  r7 = vec4<f32>(v_83.xy, r7.zw);
  let v_84 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_84.xy, r7.zw);
  let v_85 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_85.xy, r7.zw);
  r4.w = fma((-(r6.zzzz)).w, r7.x, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r7.y, r4.w);
  let v_86 = bitcast<u32>(r5.w);
  let v_87 = r4.w;
  r10.z = select(r7.z, v_87, (v_86 != 0u));
  r8.z = 0.0f;
  let v_88 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_88.xyz, r7.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_89.xy, r10.zw);
  let v_90 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_90.xyz, r9.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_91.xy, r10.zw);
  let v_92 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_92.xyz, r11.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_93.xy, r10.zw);
  let v_94 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_94.xyz, r12.w);
  let v_95 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_95.xy, r10.zw);
  let v_96 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_96.xyz, r13.w);
  let v_97 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_97.xy, r10.zw);
  let v_98 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_98.xyz, r14.w);
  let v_99 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_99.xy, r10.zw);
  let v_100 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_100.xyz, r15.w);
  let v_101 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_101.xy, r10.zw);
  let v_102 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_102.xyz, r16.w);
  let v_103 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_103.xy, r10.zw);
  let v_104 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_104.xyz, r17.w);
  let v_105 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_105.xy, r10.zw);
  let v_106 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_106.xyz, r18.w);
  let v_107 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_107.xy, r10.zw);
  let v_108 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_108.xyz, r19.w);
  let v_109 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_109.xy, r10.zw);
  let v_110 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_110.xyz, r20.w);
  let v_111 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_111.xy, r10.zw);
  let v_112 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_112.xyz, r21.w);
  let v_113 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_113.xy, r10.zw);
  let v_114 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_114.xyz, r22.w);
  let v_115 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_115.xy, r10.zw);
  let v_116 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_116.xyz, r23.w);
  let v_117 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_117.xy, r10.zw);
  let v_118 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_118.xyz, r8.w);
  let v_119 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_119.xy, r7.z);
  let v_120 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_120.xy, r9.z);
  let v_121 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_121.xy, r11.z);
  let v_122 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_122.xy, r12.z);
  let v_123 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_123.xy, r13.z);
  let v_124 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_124.xy, r14.z);
  let v_125 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_125.xy, r15.z);
  let v_126 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_126.xy, r16.z);
  let v_127 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_127.xy, r17.z);
  let v_128 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_128.xy, r18.z);
  let v_129 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_129.xy, r19.z);
  let v_130 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_130.xy, r20.z);
  let v_131 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_131.xy, r21.z);
  let v_132 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_132.xy, r22.z);
  let v_133 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_133.xy, r23.z);
  let v_134 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_134.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r4.w = dot(r7, vec4<f32>(1.0f));
  r2.x = clamp(fma(r2.xxxx, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).x, 0.0f, 1.0f);
  let v_135 = abs(r6.yyyy);
  r5.w = max(v_135.w, abs(r6.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = (r5.w * r2.x);
  r2.x = fma(r4.w, 0.0625f, r2.x);
  r2.x = (r2.x * r2.x);
  r2.x = min(r2.x, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_136 = -(r2.xxxx);
  r2.x = fma(r4.w, v_136.x, r2.x);
  r6.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_137 = r6;
  r6 = vec4<f32>(v_137.x, 0.0f, v_137.z, 0.5f);
  let v_138 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r6.xy);
  r6 = vec4<f32>(v_138.xy, r6.zw);
  r7 = textureSample(t12, s12, r6.xyxx.xy);
  r6.z = r7.y;
  r6 = textureSample(t13, s13, r6.zwzz.xy);
  r2.x = (r2.x * r6.x);
  let v_139 = dot(r3.xyw, v_34.xyz);
  r4.w = clamp(vec4<f32>(v_139, v_139, v_139, v_139).w, 0.0f, 1.0f);
  let v_140 = dot(r4.xyz, r3.xyw);
  r6.x = clamp(vec4<f32>(v_140, v_140, v_140, v_140).x, 0.0f, 1.0f);
  let v_141 = dot(r5.xyz, v_34.xyz);
  r6.y = clamp(vec4<f32>(v_141, v_141, v_141, v_141).y, 0.0f, 1.0f);
  let v_142 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_142.xy, r6.zw);
  let v_143 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_143.xy);
  let v_144 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_144.xy);
  let v_145 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_145.xy, r6.zw);
  r5.w = ((-(cb11_11.tint_symbol_4[3u].wwww)).w + 1.0f);
  let v_146 = fma(cb11_11.tint_symbol_4[3u].ww, r6.xy, r5.ww);
  r6 = vec4<f32>(v_146.xy, r6.zw);
  let v_147 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(r6.xy, v_147.xy);
  r5.w = (r6.z * 0.125f);
  r6.x = fma((-(r0.zzzz)).x, r6.x, 1.0f);
  r5.x = dot(r3.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r6.w);
  r5.x = exp2(r5.x);
  r5.x = (r6.y * r5.x);
  r5.x = (r5.w * r5.x);
  r0.z = (r0.z * r5.x);
  r0.z = (r4.w * r0.z);
  r4.w = (r4.w * r6.x);
  let v_148 = fma(r1.xyz, r4.www, r0.zzz);
  r5 = vec4<f32>(v_148.xyz, r5.w);
  let v_149 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_149.xyz, r5.w);
  r0.x = fma(r3.z, r0.x, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_150 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(r6.x, v_150.xyz);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_151 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_151.xyz, r7.w);
  let v_152 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_152.xyz, r7.w);
  let v_153 = fma(r6.yzw, r0.zzz, r7.xyz);
  r6 = vec4<f32>(r6.x, v_153.xyz);
  let v_154 = (r0.www * r6.yzw);
  r6 = vec4<f32>(r6.x, v_154.xyz);
  let v_155 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(v_155.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_156 = dot(r8.xyz, r3.xyw);
  r0.x = clamp(vec4<f32>(v_156, v_156, v_156, v_156).x, 0.0f, 1.0f);
  let v_157 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.xxx, r7.xyz);
  r7 = vec4<f32>(v_157.xyz, r7.w);
  let v_158 = fma(r7.xyz, r0.yyy, r6.yzw);
  r6 = vec4<f32>(r6.x, v_158.xyz);
  let v_159 = (r6.xxx * r6.yzw);
  r6 = vec4<f32>(r6.x, v_159.xyz);
  let v_160 = (r1.xyz * r6.yzw);
  r1 = vec4<f32>(v_160.xyz, r1.w);
  let v_161 = fma(r5.xyz, r2.xxx, r1.xyz);
  r1 = vec4<f32>(v_161.xyz, r1.w);
  r0.x = ((-(r6.xxxx)).x + 1.0f);
  r0.z = dot((-(r4.xyzx)).xyz, r3.xyw);
  r0.z = (r0.z + r0.z);
  let v_162 = -(r0.zzzz);
  let v_163 = -(r4.xyzx);
  let v_164 = fma(r3.xyw, v_162.xyz, v_163.xyz);
  r3 = vec4<f32>(v_164.xyz, r3.w);
  let v_165 = clamp(((r1.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r4 = vec4<f32>(v_165.xy, r4.zw);
  r0.z = ((-(r4.xxxx)).z + 1.0f);
  r1.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.x = (r0.z * cb5_5.tint_symbol_3[6u].z);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.w)));
  r3.w = fma(r0.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.z = (r0.z * r0.z);
  r0.z = fma(r0.z, 5.0f, r1.w);
  let v_166 = bitcast<u32>(r2.x);
  let v_167 = r3.w;
  r0.z = select(r0.z, v_167, (v_166 != 0u));
  let v_168 = (r3.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_168.xy, r3.z, v_168.z);
  r1.w = (abs(r3.zzzz).w + 1.0f);
  let v_169 = (r3.xyw / r1.www);
  r3 = vec4<f32>(v_169.xy, r3.z, v_169.z);
  let v_170 = ((-(r3.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_170.xy, r3.z, v_170.z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.z)));
  let v_171 = bitcast<vec2<u32>>(r1.ww);
  let v_172 = r3.xy;
  let v_173 = select(r3.wy, v_172, (v_171 != vec2<u32>()));
  r3 = vec4<f32>(v_173.xy, r3.zw);
  let v_174 = r0.z;
  r3 = textureSampleLevel(t1, s1, r3.xyxx.xy, v_174);
  r0.y = max(r0.w, r0.y);
  let v_175 = (r0.yyy * r3.xyz);
  r0 = vec4<f32>(r0.x, v_175.xyz);
  let v_176 = (r4.yyy * r0.yzw);
  r3 = vec4<f32>(v_176.xyz, r3.w);
  let v_177 = (r3.xyz * vec3<f32>(0.68169009685516357422f));
  r3 = vec4<f32>(v_177.xyz, r3.w);
  let v_178 = fma(r0.yzw, vec3<f32>(0.31830990314483642578f), r3.xyz);
  r0 = vec4<f32>(r0.x, v_178.xyz);
  let v_179 = fma(r0.yzw, r0.xxx, r1.xyz);
  r0 = vec4<f32>(v_179.xyz, r0.w);
  r0.w = dot(r2.yzw, r2.yzw);
  r1.x = sqrt(r0.w);
  let v_180 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_180.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r2.w);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_181 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_181 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_182 = (r0.www * r2.yzw);
  r2 = vec4<f32>(v_182.xyz, r2.w);
  let v_183 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_183, v_183, v_183, v_183).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_184 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_184, v_184, v_184, v_184).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_185 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_185.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_186 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_186.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_187 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_187.xyz, r2.w);
  let v_188 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_188.xyz, r2.w);
  let v_189 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_189.xyz, r3.w);
  let v_190 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_190.xyz, r2.w);
  let v_191 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_192 = (r2.xyz + v_191.xyz);
  r2 = vec4<f32>(v_192.xyz, r2.w);
  let v_193 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_193.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_194 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_194.xy, r1.z, v_194.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_195 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_195.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_196 = -(r0.xyxz);
  let v_197 = fma(r1.xyw, r0.www, v_196.xyw);
  r1 = vec4<f32>(v_197.xy, r1.z, v_197.z);
  let v_198 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_198.xyz, r0.w);
  let v_199 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_199.xyz, o0.w);
  o0.w = cb2_2.tint_symbol_1[15u].x;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_200 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7, v_200);
  return o0;
}
