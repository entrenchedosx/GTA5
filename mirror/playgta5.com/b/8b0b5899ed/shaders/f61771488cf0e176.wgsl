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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb1_struct;

struct cb15_struct {
  tint_symbol_3 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb11_struct {
  tint_symbol_4 : array<vec4<f32>, 11u>,
}

@group(1u) @binding(4u) var<uniform> cb4_4 : cb11_struct;

struct cb2_struct {
  tint_symbol_5 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb2_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  let v_1 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.yyy * cb6_6.tint_symbol_3[1u].xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(r0.xxx, cb6_6.tint_symbol_3[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(r0.zzz, cb6_6.tint_symbol_3[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(r1.xyz, cb6_6.tint_symbol_3[4u].xyz, cb6_6.tint_symbol_3[8u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = &(x0[0u]);
  let v_7 = r2;
  *(v_6) = vec4<f32>(v_7.xyz, (*(v_6)).w);
  let v_8 = abs(r2.yyyy);
  r0.w = max(v_8.w, abs(r2.xxxx).w);
  let v_9 = fma(r1.xyz, cb6_6.tint_symbol_3[5u].xyz, cb6_6.tint_symbol_3[9u].xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = &(x0[1u]);
  let v_11 = r2;
  *(v_10) = vec4<f32>(v_11.xyz, (*(v_10)).w);
  let v_12 = abs(r2.yyyy);
  r1.w = max(v_12.w, abs(r2.xxxx).w);
  let v_13 = fma(r1.xyz, cb6_6.tint_symbol_3[6u].xyz, cb6_6.tint_symbol_3[10u].xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = fma(r1.xyz, cb6_6.tint_symbol_3[7u].xyz, cb6_6.tint_symbol_3[11u].xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = &(x0[2u]);
  let v_16 = r2;
  *(v_15) = vec4<f32>(v_16.xyz, (*(v_15)).w);
  let v_17 = abs(r2.yyyy);
  r2.x = max(v_17.x, abs(r2.xxxx).x);
  let v_18 = &(x0[3u]);
  let v_19 = r1;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = abs(r1.yyyy);
  r1.x = max(v_20.x, abs(r1.xxxx).x);
  r1.x = clamp(fma(r1.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r3 = (v5.zwzw * cb10_10.tint_symbol_5[0u].yyyy);
  r3 = fma(-(r3), cb4_4.tint_symbol_4[1u].xxyy, v2.xyxy);
  let v_21 = (r3.xy * cb10_10.tint_symbol_5[0u].zz);
  let v_22 = r1;
  r1 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  let v_23 = fma(r3.zw, cb10_10.tint_symbol_5[0u].zz, vec2<f32>(0.5f));
  let v_24 = r2;
  r2 = vec4<f32>(v_24.x, v_23.xy, v_24.w);
  r3 = textureSample(t10, s10, r2.yzyy.xy).zwxy;
  r4 = textureSample(t10, s10, r1.yzyy.xy);
  let v_25 = r4;
  r3 = vec4<f32>(v_25.xy, r3.zw);
  r3 = fma(r3, vec4<f32>(2.0f), vec4<f32>(-1.0f));
  r3 = (r3 * cb4_4.tint_symbol_4[1u].zzww);
  let v_26 = (r3.zw + r3.xy);
  let v_27 = r1;
  r1 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
  let v_28 = (r1.yz * cb10_10.tint_symbol_5[0u].xx);
  let v_29 = r2;
  r2 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
  r1.y = dot(r1.yz, r1.yz);
  r1.y = sqrt(r1.y);
  r1.y = fma(r1.y, 0.27000001072883605957f, 0.43999999761581420898f);
  let v_30 = fma(r2.yz, v2.ww, v4.xy);
  r3 = vec4<f32>(v_30.xy, r3.zw);
  r3.z = v4.z;
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_31 = fma((-(r3.xxyz)).yzw, r1.zzz, vec3<f32>(0.0f, 0.0f, 1.0f));
  r2 = vec4<f32>(r2.x, v_31.xyz);
  let v_32 = (r1.zzz * r3.xyz);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  let v_33 = fma(r2.yzw, vec3<f32>(0.8333333134651184082f), r3.xyz);
  r2 = vec4<f32>(r2.x, v_33.xyz);
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_34 = (r0.xyz * r1.zzz);
  r4 = vec4<f32>(v_34.xyz, r4.w);
  r3.w = dot(r4.xyz, r2.yzw);
  r3.w = (r3.w + r3.w);
  let v_35 = -(r3.wwww);
  let v_36 = fma(r2.yzw, v_35.yzw, r4.xyz);
  r2 = vec4<f32>(r2.x, v_36.xyz);
  let v_37 = -(r0.zzzz);
  let v_38 = -(r2.wwww);
  r3.w = fma(v_37.w, r1.z, v_38.w);
  let v_39 = -(r0.zzzz);
  let v_40 = abs(r3.wwww);
  r3.w = fma(v_39.w, r1.z, v_40.w);
  let v_41 = fma(r0.xyz, r1.zzz, cb3_3.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = -(r3.wwww);
  r1.z = (r2.w + v_42.z);
  r1.z = fma(v5.y, r1.z, r3.w);
  r2.w = (abs(r1.zzzz).w + 1.0f);
  let v_43 = (r2.yz * vec2<f32>(0.25f, 0.5f));
  r5 = vec4<f32>(v_43.xy, r5.zw);
  let v_44 = (r5.xy / r2.ww);
  r5 = vec4<f32>(v_44.xy, r5.zw);
  let v_45 = ((-(r5.xxyx)).yz + vec2<f32>(0.25f, 0.5f));
  let v_46 = r5;
  r5 = vec4<f32>(v_46.x, v_45.xy, v_46.w);
  r2.w = ((-(r5.yyyy)).w + 1.0f);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_47 = bitcast<u32>(r3.w);
  let v_48 = r2.w;
  r5.x = select(r5.y, v_48, (v_47 != 0u));
  r5 = textureSample(t1, s1, r5.xzxx.xy);
  let v_49 = (r2.zzz * cb4_4.tint_symbol_4[9u].xwy);
  r6 = vec4<f32>(v_49.xyz, r6.w);
  let v_50 = fma(r2.yyy, cb4_4.tint_symbol_4[8u].xwy, r6.xyz);
  r2 = vec4<f32>(r2.x, v_50.xyz);
  let v_51 = fma(r1.zzz, cb4_4.tint_symbol_4[10u].xwy, r2.yzw);
  r2 = vec4<f32>(r2.x, v_51.xyz);
  let v_52 = (r2.yzw * vec3<f32>(0.5f));
  r6 = vec4<f32>(v_52.xyz, r6.w);
  let v_53 = -(r6.zzzz);
  r7.y = fma(r2.z, 0.5f, v_53.y);
  r7.x = (r6.y + r6.x);
  let v_54 = (r7.xy / r2.zz);
  let v_55 = r2;
  r2 = vec4<f32>(v_55.x, v_54.xy, v_55.w);
  r6 = textureSample(t7, s7, r2.yzyy.xy);
  let v_56 = -(r6.xxyz);
  let v_57 = (r5.xyz + v_56.yzw);
  r2 = vec4<f32>(r2.x, v_57.xyz);
  let v_58 = fma(v5.yyy, r2.yzw, r6.xyz);
  r2 = vec4<f32>(r2.x, v_58.xyz);
  r1.z = fma((-(cb6_6.tint_symbol_3[14u].zzzz)).z, 1.5f, 1.0f);
  r1.z = (r1.z * 0.5f);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.z)));
  let v_59 = (bitcast<u32>(r2.x) != 0u);
  let v_60 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r2.x = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_60, v_59);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.z)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r1.z)));
  let v_61 = bitcast<u32>(r1.w);
  r1.z = select(r2.x, bitcast<f32>(v.tint_symbol_6[2i].x), (v_61 != 0u));
  let v_62 = bitcast<u32>(r0.w);
  r0.w = select(r1.z, 0.0f, (v_62 != 0u));
  r1.z = f32(bitcast<i32>(r0.w));
  let v_63 = x0[bitcast<i32>(r0.w)];
  r5 = vec4<f32>(v_63.xyz, r5.w);
  r0.w = (r1.z + 0.5f);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.zzzz)));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(1065353216u)));
  r0.w = (r0.w * 0.25f);
  r0.w = fma(r5.y, 0.25f, r0.w);
  let v_64 = dpdy(r0.ww);
  let v_65 = r7;
  r7 = vec4<f32>(v_64.x, v_65.y, v_64.y, v_65.w);
  r1.z = (r5.x + 0.5f);
  r8.x = dpdx(r1.z);
  r1.w = dot(r6, cb6_6.tint_symbol_3[12u]);
  r2.x = dot(r6, cb6_6.tint_symbol_3[13u]);
  r3.w = ((-(r1.wwww)).w + r5.z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((r1.w == 0.0f))));
  r8.z = dpdx(r3.w);
  let v_66 = dpdx(r0.ww);
  r5 = vec4<f32>(v_66.xy, r5.zw);
  r6.y = fma(cb6_6.tint_symbol_3[14u].w, 0.25f, r0.w);
  r7.w = dpdy(r3.w);
  r7.y = dpdy(r1.z);
  r6.x = (r1.z + cb6_6.tint_symbol_3[14u].z);
  let v_67 = (r5.xy * r7.yw);
  r5 = vec4<f32>(v_67.xy, r5.zw);
  r0.w = (r7.y * r8.z);
  let v_68 = -(r5.xyxx);
  let v_69 = fma(r8.xz, r7.xz, v_68.xy);
  r7 = vec4<f32>(v_69.xy, r7.zw);
  let v_70 = -(r0.wwww);
  r7.z = fma(r8.x, r7.w, v_70.z);
  r0.w = (1.0f / r7.x);
  let v_71 = (r0.ww * r7.yz);
  r5 = vec4<f32>(v_71.xy, r5.zw);
  let v_72 = max(r5.xy, vec2<f32>());
  r5 = vec4<f32>(v_72.xy, r5.zw);
  let v_73 = min(r5.xy, vec2<f32>(0.5f));
  r5 = vec4<f32>(v_73.xy, r5.zw);
  r0.w = fma((-(r2.xxxx)).w, r5.x, r3.w);
  r0.w = fma((-(r2.xxxx)).w, r5.y, r0.w);
  let v_74 = bitcast<u32>(r1.w);
  let v_75 = r0.w;
  r0.w = select(r5.z, v_75, (v_74 != 0u));
  let v_76 = r6.xyxx;
  r0.w = textureSampleCompareLevel(t15, s15, v_76.xy, r0.w);
  r1.z = clamp(fma(v4.wwww, cb6_6.tint_symbol_3[0u].wwww, cb6_6.tint_symbol_3[1u].wwww).z, 0.0f, 1.0f);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r0.w = fma(r1.z, r1.x, r0.w);
  r0.w = (r0.w * r0.w);
  r0.w = min(r0.w, 1.0f);
  let v_77 = -(cb3_3.tint_symbol_2[0u].xyzx);
  r1.x = dot(r3.xyz, v_77.xyz);
  r1.x = clamp(fma(r1.xxxx, vec4<f32>(0.69999998807907104492f), vec4<f32>(0.30000001192092895508f)).x, 0.0f, 1.0f);
  let v_78 = (r1.xxx * cb4_4.tint_symbol_4[4u].xyz);
  r1 = vec4<f32>(v_78.x, r1.y, v_78.yz);
  let v_79 = fma(r1.xzw, r0.www, cb4_4.tint_symbol_4[3u].xyz);
  r1 = vec4<f32>(v_79.x, r1.y, v_79.yz);
  let v_80 = (cb3_3.tint_symbol_2[0u].zzz * cb4_4.tint_symbol_4[4u].xyz);
  r5 = vec4<f32>(v_80.xyz, r5.w);
  let v_81 = fma((-(r5.xyzx)).xyz, r0.www, cb4_4.tint_symbol_4[3u].xyz);
  r5 = vec4<f32>(v_81.xyz, r5.w);
  r6 = textureSample(t3, s3, v3.xyxx.xy);
  let v_82 = (r6.xyz * r6.xyz);
  r7 = vec4<f32>(v_82.xyz, r7.w);
  let v_83 = (r5.xyz * r7.xyz);
  r5 = vec4<f32>(v_83.xyz, r5.w);
  let v_84 = (r5.xyz * cb4_4.tint_symbol_4[5u].yyy);
  r7 = vec4<f32>(v_84.xyz, r7.w);
  r8 = vec4<f32>(((v1.xy / v4.ww)).xy, r8.zw);
  r9 = textureSample(t12, s12, r8.xyxx.xy);
  r8 = textureSample(t11, s11, r8.xyxx.xy);
  let v_85 = -(v4.wwww);
  r2.x = (r8.x + v_85.x);
  r8.y = max(r2.x, 0.0f);
  let v_86 = (r9.xyz * cb2_2.tint_symbol_1[17u].www);
  r10 = vec4<f32>(v_86.xyz, r10.w);
  let v_87 = (r6.xyz * r10.xyz);
  r6 = vec4<f32>(v_87.xyz, r6.w);
  let v_88 = (r6.xyz + r6.xyz);
  r6 = vec4<f32>(v_88.xyz, r6.w);
  let v_89 = -(r6.xyzx);
  let v_90 = fma(r9.xyz, cb2_2.tint_symbol_1[17u].www, v_89.xyz);
  r9 = vec4<f32>(v_90.xyz, r9.w);
  r8.x = (v5.x * v5.x);
  r8.z = (abs(r4.zzzz).z * r8.x);
  r2.x = dot((-(r4.xyzx)).xyz, r3.xyz);
  let v_91 = (r8.xy * r8.yz);
  r4 = vec4<f32>(v_91.xy, r4.zw);
  r3.w = min(r8.y, 1.0f);
  let v_92 = (r4.xy * vec2<f32>(-78.43303680419921875f, -235.299102783203125f));
  r4 = vec4<f32>(v_92.xy, r4.zw);
  let v_93 = exp2(r4.xy);
  r4 = vec4<f32>(v_93.xy, r4.zw);
  let v_94 = fma(r4.yyy, r9.xyz, r6.xyz);
  r4 = vec4<f32>(r4.x, v_94.xyz);
  let v_95 = fma((-(r5.xxyz)).yzw, cb4_4.tint_symbol_4[5u].yyy, r4.yzw);
  r4 = vec4<f32>(r4.x, v_95.xyz);
  let v_96 = fma(r4.xxx, r4.yzw, r7.xyz);
  r4 = vec4<f32>(v_96.xyz, r4.w);
  r5 = textureSample(t9, s9, v1.zwzz.xy);
  r4.w = (r5.x * 0.64999997615814208984f);
  r5.x = (v_85.x + 512.0f);
  r5.x = clamp(((r5.xxxx * vec4<f32>(0.001953125f))).x, 0.0f, 1.0f);
  r4.w = (r4.w * r5.x);
  r5 = textureSample(t4, s4, v3.zwzz.xy);
  r5.x = (r5.y * 0.34999999403953552246f);
  r5.x = fma(r5.x, r1.y, r4.w);
  let v_97 = r5;
  r5 = vec4<f32>(v_97.x, 0.5f, v_97.z, 0.5f);
  r6 = textureSample(t6, s6, r5.xyxx.xy);
  r1.y = (r3.w * r6.y);
  let v_98 = fma(r1.xzw, r1.yyy, r4.xyz);
  r1 = vec4<f32>(v_98.xyz, r1.w);
  let v_99 = ((-(r1.xxyz)).yzw + r2.yzw);
  r2 = vec4<f32>(r2.x, v_99.xyz);
  r1.w = ((-(r2.xxxx)).w + 1.0f);
  r5.z = fma(r1.w, 0.30000001192092895508f, r2.x);
  r4 = textureSample(t6, s6, r5.zwzz.xy);
  let v_100 = fma(r4.xxx, r2.yzw, r1.xyz);
  r2 = vec4<f32>(v_100.xyz, r2.w);
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_101 = (r0.xyz * r1.www);
  r0 = vec4<f32>(v_101.xyz, r0.w);
  let v_102 = dot((-(r0.xyzx)).xyz, r3.xyz);
  r0.x = clamp(vec4<f32>(v_102, v_102, v_102, v_102).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb10_10.tint_symbol_5[1u].x);
  r0.x = exp2(r0.x);
  r0.x = (r0.x * cb10_10.tint_symbol_5[0u].w);
  r0.x = (r0.w * r0.x);
  let v_103 = fma(cb4_4.tint_symbol_4[4u].xyz, r0.xxx, r2.xyz);
  r0 = vec4<f32>(v_103.xyz, r0.w);
  let v_104 = ((-(r1.xyzx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_104.xyz, r0.w);
  let v_105 = fma(r3.www, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_105.xyz, r0.w);
  let v_106 = ((-(r0.xyzx)).xyz + vec3<f32>(0.0f, 0.0f, 64.0f));
  r1 = vec4<f32>(v_106.xyz, r1.w);
  let v_107 = fma(cb4_4.tint_symbol_4[4u].www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_107.xyz, r0.w);
  let v_108 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_108.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5);
  return o0;
}
