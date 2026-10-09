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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

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

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v6 : vec4<f32>;

var<private> v7 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v6 = v_2;
  x1[0u].x = v7[0u];
  x1[0u].y = v7[1u];
  x1[0u].z = v7[2u];
  x1[0u].w = v7[3u];
  r0 = textureSample(t0, s0, v0.xyxx.xy);
  r1.x = dot(v1.xyz, v1.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xxx * v1.xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  r2 = textureSample(t4, s4, v0.xyxx.xy);
  let v_4 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r2.x = dot(r2.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r2.x = (r2.x * v4.x);
  let v_5 = (cb11_11.tint_symbol_4[2u].xyz + vec3<f32>(-1.0f));
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = fma(v4.www, r3.xyz, vec3<f32>(1.0f));
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = (r0.xyz * r3.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r0.w = clamp(fma(cb11_11.tint_symbol_4[2u].wwww, v4.wwww, r0.wwww).w, 0.0f, 1.0f);
  let v_8 = (r0.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = (r0.xyz * v4.xxx);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (v4.xx * cb2_2.tint_symbol_1[15u].zy);
  let v_11 = r2;
  r2 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  r3.x = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).x, 0.0f, 1.0f);
  r2.z = (r2.z * r3.x);
  r2.x = (r2.x * 0.05000000074505805969f);
  let v_12 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = ((-(cb11_11.tint_symbol_4[3u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_13.xy, r3.zw);
  r3.z = (r3.x * v4.z);
  let v_14 = (r3.yy * v0.zw);
  let v_15 = r3;
  r3 = vec4<f32>(v_15.x, v_14.x, v_15.z, v_14.y);
  r4 = textureSample(t3, s3, r3.ywyy.xy);
  r3.y = (cb5_5.tint_symbol_3[3u].z * cb11_11.tint_symbol_4[3u].z);
  r3.w = ((-(r4.xxxx)).w + r4.z);
  r4.x = fma(r3.y, r3.w, r4.x);
  let v_16 = (r4.xy * cb11_11.tint_symbol_4[3u].xx);
  let v_17 = r3;
  r3 = vec4<f32>(v_17.x, v_16.x, v_17.z, v_16.y);
  r4.x = fma(v4.z, r3.x, -1.0f);
  r3.x = fma(r3.x, r4.x, 1.0f);
  r4.x = (r3.x * r3.y);
  let v_18 = -(r0.xyzx);
  let v_19 = fma(cb11_11.tint_symbol_4[4u].xyz, cb11_11.tint_symbol_4[3u].yyy, v_18.xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = fma(r4.xxx, r5.xyz, r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r3.z = (r3.z * cb11_11.tint_symbol_4[3u].x);
  let v_21 = ((-(r0.xyzx)).xyz + r4.zzz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = fma(r3.zzz, r4.xyz, r0.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  r0.w = fma(r3.y, r3.x, r0.w);
  r3.x = fma((-(r3.wwww)).x, r3.x, 1.0f);
  r2.x = clamp(((r2.xxxx * r3.xxxx)).x, 0.0f, 1.0f);
  let v_23 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_24 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_26 = fma(r3.xyz, r3.www, v_25.xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_27 = (r3.www * r3.xyz);
  r3 = vec4<f32>(v_27.xyz, r3.w);
  let v_28 = (r2.yz * r2.yz);
  let v_29 = r2;
  r2 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
  r3.w = fma(r2.w, 512.0f, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_30 = -(r3.wwww);
  r2.w = fma(r2.w, 512.0f, v_30.w);
  r3.w = (r3.w * 558.0f);
  r2.w = fma(r2.w, 3.0f, r3.w);
  let v_31 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r5 = vec4<f32>(v_31.xyz, r5.w);
  let v_32 = (r5.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r6 = vec4<f32>(v_32.xyz, r6.w);
  let v_33 = fma(r5.xxx, cb6_6.tint_symbol_5[0u].xyz, r6.xyz);
  r5 = vec4<f32>(v_33.xy, r5.z, v_33.z);
  let v_34 = fma(r5.zzz, cb6_6.tint_symbol_5[2u].xyz, r5.xyw);
  r5 = vec4<f32>(v_34.xyz, r5.w);
  let v_35 = fma(r5.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r6 = vec4<f32>(v_35.xyz, r6.w);
  let v_36 = &(x0[0u]);
  let v_37 = r6;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r5.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r7 = vec4<f32>(v_38.xyz, r7.w);
  let v_39 = &(x0[1u]);
  let v_40 = r7;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = fma(r5.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r8 = vec4<f32>(v_41.xyz, r8.w);
  let v_42 = &(x0[2u]);
  let v_43 = r8;
  *(v_42) = vec4<f32>(v_43.xyz, (*(v_42)).w);
  let v_44 = fma(r5.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r5 = vec4<f32>(v_44.xyz, r5.w);
  let v_45 = &(x0[3u]);
  let v_46 = r5;
  *(v_45) = vec4<f32>(v_46.xyz, (*(v_45)).w);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_47 = abs(r8.yyyy);
  r4.w = max(v_47.w, abs(r8.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_48 = (bitcast<u32>(r4.w) != 0u);
  let v_49 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_49, v_48);
  let v_50 = abs(r7.yyyy);
  r5.x = max(v_50.x, abs(r7.xxxx).x);
  r5.x = bitcast<f32>(select(0u, 4294967295u, (r5.x < r3.w)));
  let v_51 = bitcast<u32>(r5.x);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_51 != 0u));
  let v_52 = abs(r6.yyyy);
  r5.x = max(v_52.x, abs(r6.xxxx).x);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.x < r3.w)));
  let v_53 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_53 != 0u));
  let v_54 = x0[bitcast<i32>(r3.w)];
  r5 = vec4<f32>(v_54.xyz, r5.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.w = (r3.w + 0.5f);
  r4.w = (r4.w * 0.25f);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(1065353216u)));
  r3.w = dot(r6, cb6_6.tint_symbol_5[12u]);
  r5.w = dot(r6, cb6_6.tint_symbol_5[13u]);
  r5.x = (r5.x + 0.5f);
  r4.w = fma(r5.y, 0.25f, r4.w);
  r5.y = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r5.z);
  r6.x = dpdx(r5.x);
  let v_55 = dpdx(r4.ww);
  let v_56 = r6;
  r6 = vec4<f32>(v_56.x, v_55.x, v_56.z, v_55.y);
  r6.z = dpdx(r3.w);
  r7.y = dpdy(r5.x);
  let v_57 = dpdy(r4.ww);
  let v_58 = r7;
  r7 = vec4<f32>(v_57.x, v_58.y, v_57.y, v_58.w);
  r7.w = dpdy(r3.w);
  let v_59 = (r6.yw * r7.yw);
  let v_60 = r6;
  r6 = vec4<f32>(v_60.x, v_59.x, v_60.z, v_59.y);
  let v_61 = -(r6.ywyy);
  let v_62 = fma(r6.xz, r7.xz, v_61.xy);
  r8 = vec4<f32>(v_62.xy, r8.zw);
  r6.y = (1.0f / r8.x);
  r6.z = (r6.z * r7.y);
  let v_63 = -(r6.zzzz);
  r8.z = fma(r6.x, r7.w, v_63.z);
  let v_64 = (r6.yy * r8.yz);
  r6 = vec4<f32>(v_64.xy, r6.zw);
  let v_65 = max(r6.xy, vec2<f32>());
  r6 = vec4<f32>(v_65.xy, r6.zw);
  let v_66 = min(r6.xy, vec2<f32>(0.5f));
  r6 = vec4<f32>(v_66.xy, r6.zw);
  r3.w = fma((-(r5.wwww)).w, r6.x, r3.w);
  r3.w = fma((-(r5.wwww)).w, r6.y, r3.w);
  let v_67 = bitcast<u32>(r5.y);
  let v_68 = r3.w;
  r3.w = select(r5.z, v_68, (v_67 != 0u));
  r5.x = (r5.x + cb6_6.tint_symbol_5[14u].z);
  r5.y = fma(cb6_6.tint_symbol_5[14u].w, 0.25f, r4.w);
  let v_69 = r5.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_69.xy, r3.w);
  r4.w = dot(r1.yzw, v_25.xyz);
  r5.x = clamp(r4.wwww.x, 0.0f, 1.0f);
  r5.x = ((-(abs(r4.wwww))).x + r5.x);
  let v_70 = abs(r4.wwww);
  r4.w = fma(r0.w, r5.x, v_70.w);
  let v_71 = dot(r4.xyz, r1.yzw);
  r5.x = clamp(vec4<f32>(v_71, v_71, v_71, v_71).x, 0.0f, 1.0f);
  let v_72 = dot(r3.xyz, v_25.xyz);
  r5.y = clamp(vec4<f32>(v_72, v_72, v_72, v_72).y, 0.0f, 1.0f);
  let v_73 = ((-(r5.xyxx)).xy + vec2<f32>(1.0f));
  r5 = vec4<f32>(v_73.xy, r5.zw);
  let v_74 = (r5.xy * r5.xy);
  r5 = vec4<f32>(r5.xy, v_74.xy);
  let v_75 = (r5.zw * r5.zw);
  r5 = vec4<f32>(r5.xy, v_75.xy);
  let v_76 = (r5.xy * r5.zw);
  let v_77 = r5;
  r5 = vec4<f32>(v_77.x, v_76.x, v_77.z, v_76.y);
  let v_78 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(v_78.xy, r6.zw);
  r6.x = (r6.x * 0.125f);
  r0.w = max(r0.w, r5.y);
  r5.x = fma(r5.z, r5.x, -1.0f);
  r5.x = fma(r0.w, r5.x, 1.0f);
  r5.x = fma((-(r2.xxxx)).x, r5.x, 1.0f);
  r3.x = dot(r1.yzw, r3.xyz);
  r3.x = clamp(((r3.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r3.x = log2(r3.x);
  r3.x = (r3.x * r6.y);
  r3.x = exp2(r3.x);
  r3.x = (r5.w * r3.x);
  r3.x = (r6.x * r3.x);
  r2.x = (r2.x * r3.x);
  r2.x = (r4.w * r2.x);
  r3.x = (r4.w * r5.x);
  let v_79 = fma(r0.xyz, r3.xxx, r2.xxx);
  r3 = vec4<f32>(v_79.xyz, r3.w);
  let v_80 = (r3.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_80.xyz, r3.w);
  r1.x = fma(v1.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_81 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(r5.x, v_81.xyz);
  r2.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_82 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_82.xyz, r6.w);
  let v_83 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_83.xyz, r6.w);
  let v_84 = fma(r5.yzw, r2.xxx, r6.xyz);
  r5 = vec4<f32>(r5.x, v_84.xyz);
  let v_85 = (r2.zzz * r5.yzw);
  r5 = vec4<f32>(r5.x, v_85.xyz);
  let v_86 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_86.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_87 = dot(r7.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_87, v_87, v_87, v_87).x, 0.0f, 1.0f);
  let v_88 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r6 = vec4<f32>(v_88.xyz, r6.w);
  let v_89 = fma(r6.xyz, r2.yyy, r5.yzw);
  r5 = vec4<f32>(r5.x, v_89.xyz);
  let v_90 = (r5.xxx * r5.yzw);
  r5 = vec4<f32>(r5.x, v_90.xyz);
  let v_91 = (r0.xyz * r5.yzw);
  r0 = vec4<f32>(v_91.xyz, r0.w);
  let v_92 = fma(r3.xyz, r3.www, r0.xyz);
  r0 = vec4<f32>(v_92.xyz, r0.w);
  r1.x = ((-(r5.xxxx)).x + 1.0f);
  r2.x = dot((-(r4.xyzx)).xyz, r1.yzw);
  r2.x = (r2.x + r2.x);
  let v_93 = -(r2.xxxx);
  let v_94 = -(r4.xxyz);
  let v_95 = fma(r1.yzw, v_93.yzw, v_94.yzw);
  r1 = vec4<f32>(r1.x, v_95.xyz);
  let v_96 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.0f, 0.0f, 0.00177619897294789553f))).xw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_96.x, r2.yz, v_96.y);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r3.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.y = (r2.x * cb5_5.tint_symbol_3[6u].z);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r3.x)));
  r3.z = fma(r2.x, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.x = (r2.x * r2.x);
  r2.x = fma(r2.x, 5.0f, r3.x);
  let v_97 = bitcast<u32>(r3.y);
  let v_98 = r3.z;
  r2.x = select(r2.x, v_98, (v_97 != 0u));
  let v_99 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_99.xyz, r3.w);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_100 = (r3.xyz / r1.yyy);
  r3 = vec4<f32>(v_100.xyz, r3.w);
  let v_101 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_101.xyz, r3.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_102 = bitcast<vec2<u32>>(r1.yy);
  let v_103 = r3.xy;
  let v_104 = select(r3.zy, v_103, (v_102 != vec2<u32>()));
  let v_105 = r1;
  r1 = vec4<f32>(v_105.x, v_104.xy, v_105.w);
  let v_106 = r2.x;
  r3 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_106);
  r1.y = max(r2.z, r2.y);
  let v_107 = (r1.yyy * r3.xyz);
  r1 = vec4<f32>(r1.x, v_107.xyz);
  let v_108 = (r2.www * r1.yzw);
  r2 = vec4<f32>(v_108.xyz, r2.w);
  let v_109 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_109.xyz, r2.w);
  let v_110 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_110.xyz);
  let v_111 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_111.xyz, r0.w);
  o0.w = clamp(((r0.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_112 = (v6.xy * cb2_2.tint_symbol_1[18u].zw);
    r1 = vec4<f32>(v_112.xy, r1.zw);
    r1 = textureSample(t11, s11, r1.xyxx.xy);
    r0.w = (r1.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  r0.w = (r0.w * v5.w);
  let v_113 = ((-(r0.xyzx)).xyz + v5.xyz);
  r1 = vec4<f32>(v_113.xyz, r1.w);
  let v_114 = fma(r0.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_114.xyz, r0.w);
  let v_115 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_115.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @builtin(position) v_116 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v_116);
  return o0;
}
