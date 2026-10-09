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
  tint_symbol_6 : array<vec4<u32>, 4u>,
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
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_49 = (r1.www * r5.xyz);
  r5 = vec4<f32>(v_49.xyz, r5.w);
  r1.w = (r2.x * r2.x);
  r0.w = (r0.w * r0.w);
  r2.x = fma(r4.w, cb11_11.tint_symbol_4[4u].x, -500.0f);
  r2.x = max(r2.x, 0.0f);
  let v_50 = -(r2.xxxx);
  r4.w = fma(r4.w, cb11_11.tint_symbol_4[4u].x, v_50.w);
  r2.x = (r2.x * 558.0f);
  r2.x = fma(r4.w, 3.0f, r2.x);
  r4.w = dot(r2.yzw, cb1_1.tint_symbol[14u].xyz);
  let v_51 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_51.xyz, r6.w);
  let v_52 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_52.xyz, r7.w);
  let v_53 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_53.xyz, r7.w);
  let v_54 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_54.xyz, r7.w);
  let v_55 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_55.xyz, r8.w);
  let v_56 = &(x0[0u]);
  let v_57 = r8;
  *(v_56) = vec4<f32>(v_57.xyz, (*(v_56)).w);
  let v_58 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_58.xyz, r9.w);
  let v_59 = &(x0[1u]);
  let v_60 = r9;
  *(v_59) = vec4<f32>(v_60.xyz, (*(v_59)).w);
  let v_61 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_61.xyz, r10.w);
  let v_62 = &(x0[2u]);
  let v_63 = r10;
  *(v_62) = vec4<f32>(v_63.xyz, (*(v_62)).w);
  let v_64 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_64.xyz, r7.w);
  let v_65 = &(x0[3u]);
  let v_66 = r7;
  *(v_65) = vec4<f32>(v_66.xyz, (*(v_65)).w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_68 = r11;
  r11 = vec4<f32>(v_68.x, v_67.x, v_68.z, v_67.y);
  r5.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_69 = abs(r10.yyyy);
  r6.w = max(v_69.w, abs(r10.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_70 = (bitcast<u32>(r6.w) != 0u);
  let v_71 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_71, v_70);
  let v_72 = abs(r9.yyyy);
  r7.z = max(v_72.z, abs(r9.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_73 = bitcast<u32>(r7.z);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_73 != 0u));
  let v_74 = abs(r8.yyyy);
  r7.z = max(v_74.z, abs(r8.xxxx).z);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_75 = bitcast<u32>(r5.w);
  r5.w = select(r6.w, 0.0f, (v_75 != 0u));
  let v_76 = x0[bitcast<i32>(r5.w)];
  r8 = vec4<f32>(v_76.xyz, r8.w);
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
  let v_77 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_77.xy, r10.z, v_77.z);
  r10.z = dpdx(r5.w);
  let v_78 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_78.xyz, r12.w);
  r12.w = dpdy(r5.w);
  let v_79 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_79.xy, r8.zw);
  let v_80 = -(r8.xyxx);
  let v_81 = fma(r10.xz, r12.xz, v_80.xy);
  r13 = vec4<f32>(v_81.xy, r13.zw);
  r7.w = (1.0f / r13.x);
  r8.x = (r10.z * r12.y);
  let v_82 = -(r8.xxxx);
  r13.z = fma(r10.x, r12.w, v_82.z);
  let v_83 = (r7.ww * r13.yz);
  r8 = vec4<f32>(v_83.xy, r8.zw);
  let v_84 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_84.xy, r8.zw);
  let v_85 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_85.xy, r8.zw);
  r5.w = fma((-(r7.zzzz)).w, r8.x, r5.w);
  r5.w = fma((-(r7.zzzz)).w, r8.y, r5.w);
  let v_86 = bitcast<u32>(r6.w);
  let v_87 = r5.w;
  r11.z = select(r8.z, v_87, (v_86 != 0u));
  r9.z = 0.0f;
  let v_88 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_88.xyz, r8.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_90.xyz, r10.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_92.xyz, r12.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_94.xyz, r13.w);
  let v_95 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_95.xy, r11.zw);
  let v_96 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_96.xyz, r14.w);
  let v_97 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_97.xy, r11.zw);
  let v_98 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_98.xyz, r15.w);
  let v_99 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_99.xy, r11.zw);
  let v_100 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_100.xyz, r16.w);
  let v_101 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_101.xy, r11.zw);
  let v_102 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_102.xyz, r17.w);
  let v_103 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_103.xy, r11.zw);
  let v_104 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_104.xyz, r18.w);
  let v_105 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_105.xy, r11.zw);
  let v_106 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_106.xyz, r19.w);
  let v_107 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_107.xy, r11.zw);
  let v_108 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_108.xyz, r20.w);
  let v_109 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_109.xy, r11.zw);
  let v_110 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_110.xyz, r21.w);
  let v_111 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_111.xy, r11.zw);
  let v_112 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_112.xyz, r22.w);
  let v_113 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_113.xy, r11.zw);
  let v_114 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_114.xyz, r23.w);
  let v_115 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_115.xy, r11.zw);
  let v_116 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_116.xyz, r24.w);
  let v_117 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_117.xy, r11.zw);
  let v_118 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_118.xyz, r9.w);
  let v_119 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_119.xy, r8.z);
  let v_120 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_120.xy, r10.z);
  let v_121 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_121.xy, r12.z);
  let v_122 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_122.xy, r13.z);
  let v_123 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_123.xy, r14.z);
  let v_124 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_124.xy, r15.z);
  let v_125 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_125.xy, r16.z);
  let v_126 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_126.xy, r17.z);
  let v_127 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_127.xy, r18.z);
  let v_128 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_128.xy, r19.z);
  let v_129 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_129.xy, r20.z);
  let v_130 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_130.xy, r21.z);
  let v_131 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_131.xy, r22.z);
  let v_132 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_132.xy, r23.z);
  let v_133 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_133.xy, r24.z);
  let v_134 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_134.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r5.w = dot(r8, vec4<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_135 = abs(r7.yyyy);
  r6.w = max(v_135.w, abs(r7.xxxx).w);
  r6.w = clamp(fma(r6.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.w * r4.w);
  r4.w = fma(r5.w, 0.0625f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_5[3u].z);
  let v_136 = -(r4.wwww);
  r4.w = fma(r5.w, v_136.w, r4.w);
  r7.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_137 = r7;
  r7 = vec4<f32>(v_137.x, 0.0f, v_137.z, 0.5f);
  let v_138 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r7.xy);
  r7 = vec4<f32>(v_138.xy, r7.zw);
  r8 = textureSample(t12, s12, r7.xyxx.xy);
  r7.z = r8.y;
  r7 = textureSample(t13, s13, r7.zwzz.xy);
  r4.w = (r4.w * r7.x);
  let v_139 = dot(r3.xyw, v_34.xyz);
  r5.w = clamp(vec4<f32>(v_139, v_139, v_139, v_139).w, 0.0f, 1.0f);
  let v_140 = dot(r4.xyz, r3.xyw);
  r7.x = clamp(vec4<f32>(v_140, v_140, v_140, v_140).x, 0.0f, 1.0f);
  let v_141 = dot(r5.xyz, v_34.xyz);
  r7.y = clamp(vec4<f32>(v_141, v_141, v_141, v_141).y, 0.0f, 1.0f);
  let v_142 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_142.xy, r7.zw);
  let v_143 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_143.xy);
  let v_144 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_144.xy);
  let v_145 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_145.xy, r7.zw);
  r6.w = ((-(cb11_11.tint_symbol_4[3u].wwww)).w + 1.0f);
  let v_146 = fma(cb11_11.tint_symbol_4[3u].ww, r7.xy, r6.ww);
  r7 = vec4<f32>(v_146.xy, r7.zw);
  let v_147 = (r2.xx + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_147.xy);
  r7.z = (r7.z * 0.125f);
  r7.x = fma((-(r0.zzzz)).x, r7.x, 1.0f);
  r5.x = dot(r3.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.w);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r7.z * r5.x);
  r5.x = (r0.z * r5.x);
  r5.x = (r5.w * r5.x);
  r5.y = (r5.w * r7.x);
  let v_148 = fma(r1.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_148.xyz, r5.w);
  let v_149 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_149.xyz, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_150 = -(v2.xyzx);
    let v_151 = (v_150.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_151.xyz, r8.w);
    let v_152 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_152.xyz, r9.w);
    r8.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.x = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r8.w = clamp(((r8.wwww / r9.xxxx)).w, 0.0f, 1.0f);
    r8.w = (r8.w * cb3_3.tint_symbol_2[19u].w);
    let v_153 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_153.xyz, r9.w);
    let v_154 = (r9.xyz + v_150.xyz);
    r9 = vec4<f32>(v_154.xyz, r9.w);
    let v_155 = bitcast<vec3<u32>>(r7.yyy);
    let v_156 = r8.xyz;
    let v_157 = select(r9.xyz, v_156, (v_155 != vec3<u32>()));
    r8 = vec4<f32>(v_157.xyz, r8.w);
    r7.y = dot(r8.xyz, r8.xyz);
    let v_158 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_158.xyz, r8.w);
    r8.w = dot(r8.xyz, r8.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_159 = (r8.www * r8.xyz);
    r8 = vec4<f32>(v_159.xyz, r8.w);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r8.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r8.w);
    let v_160 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.w = dot(r8.xyz, v_160.xyz);
    r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_161 = dot(r8.xyz, r3.xyw);
    r9.x = clamp(vec4<f32>(v_161, v_161, v_161, v_161).x, 0.0f, 1.0f);
    r8.w = (r8.w * r9.x);
    r9.x = (r7.y * r8.w);
    let v_162 = (r9.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_162.xyz, r9.w);
    let v_163 = (r1.xyz * r9.xyz);
    r9 = vec4<f32>(v_163.xyz, r9.w);
    let v_164 = fma(r2.yzw, r0.yyy, r8.xyz);
    r8 = vec4<f32>(v_164.xyz, r8.w);
    r9.w = dot(r8.xyz, r8.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_165 = (r8.xyz * r9.www);
    r8 = vec4<f32>(v_165.xyz, r8.w);
    let v_166 = dot(r8.xyz, r4.xyz);
    r9.w = clamp(vec4<f32>(v_166, v_166, v_166, v_166).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.x = (r9.w * r9.w);
    r10.x = (r10.x * r10.x);
    r9.w = (r9.w * r10.x);
    r9.w = fma(cb11_11.tint_symbol_4[3u].w, r9.w, r6.w);
    let v_167 = dot(r8.xyz, r3.xyw);
    r8.x = clamp(vec4<f32>(v_167, v_167, v_167, v_167).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.w * r8.x);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.w);
    r8.x = (r8.w * r8.x);
    r7.y = (r7.y * r8.x);
    r7.y = (r7.z * r7.y);
    let v_168 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_168.xyz, r8.w);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r8.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    let v_169 = bitcast<u32>(r8.w);
    let v_170 = r7.y;
    r5.w = select(r5.w, v_170, (v_169 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_171 = -(v2.xyzx);
      let v_172 = (v_171.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r8.w = clamp(((r8.wwww / r9.wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[20u].w);
      let v_174 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = (r11.xyz + v_171.xyz);
      r11 = vec4<f32>(v_175.xyz, r11.w);
      let v_176 = bitcast<vec3<u32>>(r7.yyy);
      let v_177 = r10.xyz;
      let v_178 = select(r11.xyz, v_177, (v_176 != vec3<u32>()));
      r10 = vec4<f32>(v_178.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_179 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_179.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_180 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_180.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r8.w);
      let v_181 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.w = dot(r10.xyz, v_181.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_182 = dot(r10.xyz, r3.xyw);
      r9.w = clamp(vec4<f32>(v_182, v_182, v_182, v_182).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_183 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_183.xyz, r11.w);
      let v_184 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_184.xyz, r9.w);
      let v_185 = fma(r2.yzw, r0.yyy, r10.xyz);
      r10 = vec4<f32>(v_185.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_186 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_186.xyz, r10.w);
      let v_187 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_187, v_187, v_187, v_187).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb11_11.tint_symbol_4[3u].w, r9.w, r6.w);
      let v_188 = dot(r10.xyz, r3.xyw);
      r10.x = clamp(vec4<f32>(v_188, v_188, v_188, v_188).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_189 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_189.xyz, r8.w);
    }
  } else {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_190 = -(v2.xyzx);
      let v_191 = (v_190.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_191.xyz, r10.w);
      let v_192 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_192.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r8.w = clamp(((r8.wwww / r9.wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[21u].w);
      let v_193 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_193.xyz, r11.w);
      let v_194 = (r11.xyz + v_190.xyz);
      r11 = vec4<f32>(v_194.xyz, r11.w);
      let v_195 = bitcast<vec3<u32>>(r7.yyy);
      let v_196 = r10.xyz;
      let v_197 = select(r11.xyz, v_196, (v_195 != vec3<u32>()));
      r10 = vec4<f32>(v_197.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_198 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_198.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_199 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_199.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r8.w);
      let v_200 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.w = dot(r10.xyz, v_200.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_201 = dot(r10.xyz, r3.xyw);
      r9.w = clamp(vec4<f32>(v_201, v_201, v_201, v_201).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_202 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_202.xyz, r11.w);
      let v_203 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_203.xyz, r9.w);
      let v_204 = fma(r2.yzw, r0.yyy, r10.xyz);
      r10 = vec4<f32>(v_204.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_205 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_205.xyz, r10.w);
      let v_206 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_206, v_206, v_206, v_206).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb11_11.tint_symbol_4[3u].w, r9.w, r6.w);
      let v_207 = dot(r10.xyz, r3.xyw);
      r10.x = clamp(vec4<f32>(v_207, v_207, v_207, v_207).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_208 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_208.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_209 = -(v2.xyzx);
      let v_210 = (v_209.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_210.xyz, r10.w);
      let v_211 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_211.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r9.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r8.w = clamp(((r8.wwww / r9.wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[22u].w);
      let v_212 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_212.xyz, r11.w);
      let v_213 = (r11.xyz + v_209.xyz);
      r11 = vec4<f32>(v_213.xyz, r11.w);
      let v_214 = bitcast<vec3<u32>>(r7.yyy);
      let v_215 = r10.xyz;
      let v_216 = select(r11.xyz, v_215, (v_214 != vec3<u32>()));
      r10 = vec4<f32>(v_216.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_217 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_217.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_218 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_218.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[14u].w);
      r7.y = (r7.y / r8.w);
      let v_219 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.w = dot(r10.xyz, v_219.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_220 = dot(r10.xyz, r3.xyw);
      r9.w = clamp(vec4<f32>(v_220, v_220, v_220, v_220).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_221 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_221.xyz, r11.w);
      let v_222 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_222.xyz, r9.w);
      let v_223 = fma(r2.yzw, r0.yyy, r10.xyz);
      r10 = vec4<f32>(v_223.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_224 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_224.xyz, r10.w);
      let v_225 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_225, v_225, v_225, v_225).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb11_11.tint_symbol_4[3u].w, r9.w, r6.w);
      let v_226 = dot(r10.xyz, r3.xyw);
      r10.x = clamp(vec4<f32>(v_226, v_226, v_226, v_226).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_227 = fma(r7.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_227.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_228 = -(v2.xyzx);
      let v_229 = (v_228.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_229.xyz, r10.w);
      let v_230 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_230.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r9.w = (cb3_3.tint_symbol_2[23u].w + 0.00009999999747378752f);
      r8.w = clamp(((r8.wwww / r9.wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[23u].w);
      let v_231 = fma(cb3_3.tint_symbol_2[15u].xyz, r8.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_231.xyz, r11.w);
      let v_232 = (r11.xyz + v_228.xyz);
      r11 = vec4<f32>(v_232.xyz, r11.w);
      let v_233 = bitcast<vec3<u32>>(r7.yyy);
      let v_234 = r10.xyz;
      let v_235 = select(r11.xyz, v_234, (v_233 != vec3<u32>()));
      r10 = vec4<f32>(v_235.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_236 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_236.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_237 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_237.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[15u].w);
      r7.y = (r7.y / r8.w);
      let v_238 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r8.w = dot(r10.xyz, v_238.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_239 = dot(r10.xyz, r3.xyw);
      r9.w = clamp(vec4<f32>(v_239, v_239, v_239, v_239).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_240 = (r9.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_240.xyz, r11.w);
      let v_241 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_241.xyz, r9.w);
      let v_242 = fma(r2.yzw, r0.yyy, r10.xyz);
      r10 = vec4<f32>(v_242.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_243 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_243.xyz, r10.w);
      let v_244 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_244, v_244, v_244, v_244).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb11_11.tint_symbol_4[3u].w, r9.w, r6.w);
      let v_245 = dot(r10.xyz, r3.xyw);
      r10.x = clamp(vec4<f32>(v_245, v_245, v_245, v_245).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_246 = fma(r7.yyy, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_246.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_247 = -(v2.xyzx);
      let v_248 = (v_247.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_248.xyz, r10.w);
      let v_249 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_249.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r9.w = (cb3_3.tint_symbol_2[24u].w + 0.00009999999747378752f);
      r8.w = clamp(((r8.wwww / r9.wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[24u].w);
      let v_250 = fma(cb3_3.tint_symbol_2[16u].xyz, r8.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_250.xyz, r11.w);
      let v_251 = (r11.xyz + v_247.xyz);
      r11 = vec4<f32>(v_251.xyz, r11.w);
      let v_252 = bitcast<vec3<u32>>(r7.yyy);
      let v_253 = r10.xyz;
      let v_254 = select(r11.xyz, v_253, (v_252 != vec3<u32>()));
      r10 = vec4<f32>(v_254.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_255 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_255.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_256 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_256.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[16u].w);
      r7.y = (r7.y / r8.w);
      let v_257 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r8.w = dot(r10.xyz, v_257.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_258 = dot(r10.xyz, r3.xyw);
      r9.w = clamp(vec4<f32>(v_258, v_258, v_258, v_258).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_259 = (r9.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_259.xyz, r11.w);
      let v_260 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_260.xyz, r9.w);
      let v_261 = fma(r2.yzw, r0.yyy, r10.xyz);
      r10 = vec4<f32>(v_261.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_262 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_262.xyz, r10.w);
      let v_263 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_263, v_263, v_263, v_263).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb11_11.tint_symbol_4[3u].w, r9.w, r6.w);
      let v_264 = dot(r10.xyz, r3.xyw);
      r10.x = clamp(vec4<f32>(v_264, v_264, v_264, v_264).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_265 = fma(r7.yyy, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_265.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_266 = -(v2.xyzx);
      let v_267 = (v_266.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_267.xyz, r10.w);
      let v_268 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_268.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r9.w = (cb3_3.tint_symbol_2[25u].w + 0.00009999999747378752f);
      r8.w = clamp(((r8.wwww / r9.wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[25u].w);
      let v_269 = fma(cb3_3.tint_symbol_2[17u].xyz, r8.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_269.xyz, r11.w);
      let v_270 = (r11.xyz + v_266.xyz);
      r11 = vec4<f32>(v_270.xyz, r11.w);
      let v_271 = bitcast<vec3<u32>>(r7.yyy);
      let v_272 = r10.xyz;
      let v_273 = select(r11.xyz, v_272, (v_271 != vec3<u32>()));
      r10 = vec4<f32>(v_273.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_274 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_274.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_275 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_275.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[17u].w);
      r7.y = (r7.y / r8.w);
      let v_276 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r8.w = dot(r10.xyz, v_276.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_277 = dot(r10.xyz, r3.xyw);
      r9.w = clamp(vec4<f32>(v_277, v_277, v_277, v_277).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_278 = (r9.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_278.xyz, r11.w);
      let v_279 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_279.xyz, r9.w);
      let v_280 = fma(r2.yzw, r0.yyy, r10.xyz);
      r10 = vec4<f32>(v_280.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_281 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_281.xyz, r10.w);
      let v_282 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_282, v_282, v_282, v_282).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb11_11.tint_symbol_4[3u].w, r9.w, r6.w);
      let v_283 = dot(r10.xyz, r3.xyw);
      r10.x = clamp(vec4<f32>(v_283, v_283, v_283, v_283).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_284 = fma(r7.yyy, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_284.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_285 = -(v2.xyzx);
      let v_286 = (v_285.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_286.xyz, r10.w);
      let v_287 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_287.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r8.w = (cb3_3.tint_symbol_2[26u].w + 0.00009999999747378752f);
      r7.y = clamp(((r7.yyyy / r8.wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[26u].w);
      let v_288 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_288.xyz, r11.w);
      let v_289 = (r11.xyz + v_285.xyz);
      r11 = vec4<f32>(v_289.xyz, r11.w);
      let v_290 = bitcast<vec3<u32>>(r5.www);
      let v_291 = r10.xyz;
      let v_292 = select(r11.xyz, v_291, (v_290 != vec3<u32>()));
      r10 = vec4<f32>(v_292.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_293 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_293.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_294 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_294.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r5.w, cb3_3.tint_symbol_2[18u].w);
      r5.w = (r5.w / r7.y);
      let v_295 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.y = dot(r10.xyz, v_295.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_296 = dot(r10.xyz, r3.xyw);
      r8.w = clamp(vec4<f32>(v_296, v_296, v_296, v_296).w, 0.0f, 1.0f);
      r7.y = (r7.y * r8.w);
      r8.w = (r5.w * r7.y);
      let v_297 = (r8.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_297.xyz, r11.w);
      let v_298 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_298.xyz, r9.w);
      let v_299 = fma(r2.yzw, r0.yyy, r10.xyz);
      r2 = vec4<f32>(r2.x, v_299.xyz);
      r0.y = dot(r2.yzw, r2.yzw);
      r0.y = inverseSqrt(r0.y);
      let v_300 = (r0.yyy * r2.yzw);
      r2 = vec4<f32>(r2.x, v_300.xyz);
      let v_301 = dot(r2.yzw, r4.xyz);
      r0.y = clamp(vec4<f32>(v_301, v_301, v_301, v_301).y, 0.0f, 1.0f);
      r0.y = ((-(r0.yyyy)).y + 1.0f);
      r8.w = (r0.y * r0.y);
      r8.w = (r8.w * r8.w);
      r0.y = (r0.y * r8.w);
      r0.y = fma(cb11_11.tint_symbol_4[3u].w, r0.y, r6.w);
      let v_302 = dot(r2.yzw, r3.xyw);
      r2.y = clamp(vec4<f32>(v_302, v_302, v_302, v_302).y, 0.0f, 1.0f);
      r2.y = log2(r2.y);
      r2.y = (r2.y * r7.w);
      r2.y = exp2(r2.y);
      r0.y = (r0.y * r2.y);
      r0.y = (r7.y * r0.y);
      r0.y = (r5.w * r0.y);
      r0.y = (r7.z * r0.y);
      let v_303 = fma(r0.yyy, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_303.xyz, r8.w);
    }
  }
  r0.y = (r7.x * r7.x);
  r0.z = (r0.z * r0.z);
  let v_304 = (r8.xyz * r0.zzz);
  r2 = vec4<f32>(r2.x, v_304.xyz);
  let v_305 = fma(r0.yyy, r9.xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_305.xyz);
  let v_306 = fma(r5.xyz, r4.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_306.xyz);
  r0.x = fma(r3.z, r0.x, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_307 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_307.xyz, r5.w);
  r0.y = ((-(cb2_2.tint_symbol_1[16u].zzzz)).y + 1.0f);
  let v_308 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(r7.x, v_308.xyz);
  let v_309 = (r7.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(r7.x, v_309.xyz);
  let v_310 = fma(r5.xyz, r0.yyy, r7.yzw);
  r5 = vec4<f32>(v_310.xyz, r5.w);
  let v_311 = (r0.www * r5.xyz);
  r5 = vec4<f32>(v_311.xyz, r5.w);
  let v_312 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(v_312.xyz, r0.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_313 = dot(r8.xyz, r3.xyw);
  r3.z = clamp(vec4<f32>(v_313, v_313, v_313, v_313).z, 0.0f, 1.0f);
  let v_314 = fma(cb3_3.tint_symbol_2[49u].xyz, r3.zzz, r0.xyz);
  r0 = vec4<f32>(v_314.xyz, r0.w);
  let v_315 = fma(r0.xyz, r1.www, r5.xyz);
  r0 = vec4<f32>(v_315.xyz, r0.w);
  let v_316 = (r7.xxx * r0.xyz);
  r0 = vec4<f32>(v_316.xyz, r0.w);
  let v_317 = fma(r0.xyz, r1.xyz, r2.yzw);
  r0 = vec4<f32>(v_317.xyz, r0.w);
  r1.x = ((-(r7.xxxx)).x + 1.0f);
  r1.y = dot((-(r4.xyzx)).xyz, r3.xyw);
  r1.y = (r1.y + r1.y);
  let v_318 = -(r1.yyyy);
  let v_319 = -(r4.xxyz);
  let v_320 = fma(r3.xyw, v_318.yzw, v_319.yzw);
  r2 = vec4<f32>(r2.x, v_320.xyz);
  let v_321 = clamp(((r2.xxxx * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_322 = r1;
  r1 = vec4<f32>(v_322.x, v_321.xy, v_322.w);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.y * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.x)));
  r3.y = fma(r1.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.y = (r1.y * r1.y);
  r1.y = fma(r1.y, 5.0f, r2.x);
  let v_323 = bitcast<u32>(r3.x);
  let v_324 = r3.y;
  r1.y = select(r1.y, v_324, (v_323 != 0u));
  let v_325 = (r2.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_325.xyz, r2.w);
  r3.x = (abs(r2.wwww).x + 1.0f);
  let v_326 = (r2.xyz / r3.xxx);
  r2 = vec4<f32>(v_326.xyz, r2.w);
  let v_327 = ((-(r2.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_327.xyz, r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
  let v_328 = bitcast<vec2<u32>>(r2.ww);
  let v_329 = r2.xy;
  let v_330 = select(r2.zy, v_329, (v_328 != vec2<u32>()));
  r2 = vec4<f32>(v_330.xy, r2.zw);
  let v_331 = r1.y;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_331);
  r0.w = max(r0.w, r1.w);
  let v_332 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_332.xyz, r2.w);
  let v_333 = (r1.zzz * r2.xyz);
  r1 = vec4<f32>(r1.x, v_333.xyz);
  let v_334 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_334.xyz);
  let v_335 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_335.xyz);
  let v_336 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_336.xyz, r0.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.w);
  let v_337 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_337.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_338 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_338 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_339 = (r0.www * r6.xyz);
  r2 = vec4<f32>(v_339.xyz, r2.w);
  let v_340 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_340, v_340, v_340, v_340).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_341 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_341, v_341, v_341, v_341).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_342 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_342.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_343 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_343.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_344 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_344.xyz, r2.w);
  let v_345 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_345.xyz, r2.w);
  let v_346 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_346.xyz, r3.w);
  let v_347 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_347.xyz, r2.w);
  let v_348 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_349 = (r2.xyz + v_348.xyz);
  r2 = vec4<f32>(v_349.xyz, r2.w);
  let v_350 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_350.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_351 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_351.xy, r1.z, v_351.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_352 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_352.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_353 = -(r0.xyxz);
  let v_354 = fma(r1.xyw, r0.www, v_353.xyw);
  r1 = vec4<f32>(v_354.xy, r1.z, v_354.z);
  let v_355 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_355.xyz, r0.w);
  let v_356 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_356.xyz, o0.w);
  o0.w = cb2_2.tint_symbol_1[15u].x;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_357 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7, v_357);
  return o0;
}
