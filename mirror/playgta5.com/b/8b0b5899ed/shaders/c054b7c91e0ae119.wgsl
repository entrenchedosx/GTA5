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
  r2.x = (r2.x * v4.x);
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
  r5 = vec4<f32>(v_26.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_27 = (r3.www * r5.xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  let v_28 = (r2.yz * r2.yz);
  let v_29 = r2;
  r2 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
  r3.w = fma(r2.w, 510.0f, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_30 = -(r3.wwww);
  r2.w = fma(r2.w, 510.0f, v_30.w);
  r3.w = (r3.w * 558.0f);
  r2.w = fma(r2.w, 3.0f, r3.w);
  r3.x = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_31 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r3 = vec4<f32>(r3.x, v_31.xyz);
  let v_32 = (r3.zzz * cb6_6.tint_symbol_5[1u].xyz);
  r6 = vec4<f32>(v_32.xyz, r6.w);
  let v_33 = fma(r3.yyy, cb6_6.tint_symbol_5[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_33.xyz, r6.w);
  let v_34 = fma(r3.www, cb6_6.tint_symbol_5[2u].xyz, r6.xyz);
  r3 = vec4<f32>(r3.x, v_34.xyz);
  let v_35 = fma(r3.yzw, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r6 = vec4<f32>(v_35.xyz, r6.w);
  let v_36 = &(x0[0u]);
  let v_37 = r6;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r3.yzw, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r7 = vec4<f32>(v_38.xyz, r7.w);
  let v_39 = &(x0[1u]);
  let v_40 = r7;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = fma(r3.yzw, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r8 = vec4<f32>(v_41.xyz, r8.w);
  let v_42 = &(x0[2u]);
  let v_43 = r8;
  *(v_42) = vec4<f32>(v_43.xyz, (*(v_42)).w);
  let v_44 = fma(r3.yzw, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r3 = vec4<f32>(r3.x, v_44.xyz);
  let v_45 = &(x0[3u]);
  let v_46 = r3;
  *(v_45) = vec4<f32>(v_46.yzw, (*(v_45)).w);
  let v_47 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.0f, -0.25f));
  let v_48 = r9;
  r9 = vec4<f32>(v_48.x, v_47.xy, v_48.w);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 3.0f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_49 = abs(r8.yyyy);
  r4.w = max(v_49.w, abs(r8.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_50 = (bitcast<u32>(r4.w) != 0u);
  let v_51 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_51, v_50);
  let v_52 = abs(r7.yyyy);
  r5.w = max(v_52.w, abs(r7.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_53 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_53 != 0u));
  let v_54 = abs(r6.yyyy);
  r5.w = max(v_54.w, abs(r6.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_55 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_55 != 0u));
  let v_56 = x0[bitcast<i32>(r3.w)];
  r6 = vec4<f32>(v_56.xyz, r6.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.w = (r3.w + 0.5f);
  r4.w = (r4.w * 0.25f);
  r7 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r7 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r7) & vec4<u32>(1065353216u)));
  r3.w = dot(r7, cb6_6.tint_symbol_5[12u]);
  r5.w = dot(r7, cb6_6.tint_symbol_5[13u]);
  r7.x = (r6.x + 0.5f);
  r7.y = fma(r6.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r6.z);
  let v_57 = dpdx(r7.xyy);
  r8 = vec4<f32>(v_57.xy, r8.z, v_57.z);
  r8.z = dpdx(r3.w);
  let v_58 = dpdy(r7.yxy);
  r10 = vec4<f32>(v_58.xyz, r10.w);
  r10.w = dpdy(r3.w);
  let v_59 = (r8.yw * r10.yw);
  r6 = vec4<f32>(v_59.xy, r6.zw);
  let v_60 = -(r6.xyxx);
  let v_61 = fma(r8.xz, r10.xz, v_60.xy);
  r11 = vec4<f32>(v_61.xy, r11.zw);
  r6.x = (1.0f / r11.x);
  r6.y = (r8.z * r10.y);
  let v_62 = -(r6.yyyy);
  r11.z = fma(r8.x, r10.w, v_62.z);
  let v_63 = (r6.xx * r11.yz);
  r6 = vec4<f32>(v_63.xy, r6.zw);
  let v_64 = max(r6.xy, vec2<f32>());
  r6 = vec4<f32>(v_64.xy, r6.zw);
  let v_65 = min(r6.xy, vec2<f32>(0.5f));
  r6 = vec4<f32>(v_65.xy, r6.zw);
  r3.w = fma((-(r5.wwww)).w, r6.x, r3.w);
  r3.w = fma((-(r5.wwww)).w, r6.y, r3.w);
  let v_66 = bitcast<u32>(r4.w);
  let v_67 = r3.w;
  r7.z = select(r6.z, v_67, (v_66 != 0u));
  r9.w = 0.0f;
  let v_68 = (r7.xyz + r9.yzw);
  r6 = vec4<f32>(v_68.xyz, r6.w);
  let v_69 = r6.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_69.xy, r6.z);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.0f, -0.25f));
  r8 = vec4<f32>(v_70.xy, r8.zw);
  r8.z = 0.0f;
  let v_71 = (r7.xyz + r8.xyz);
  r8 = vec4<f32>(v_71.xyz, r8.w);
  let v_72 = r8.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_72.xy, r8.z);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.0f, -0.25f));
  r8 = vec4<f32>(v_73.xy, r8.zw);
  r8.z = 0.0f;
  let v_74 = (r7.xyz + r8.xyz);
  r8 = vec4<f32>(v_74.xyz, r8.w);
  let v_75 = r8.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_75.xy, r8.z);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.0f, 0.0f));
  r8 = vec4<f32>(v_76.xy, r8.zw);
  r8.z = 0.0f;
  let v_77 = (r7.xyz + r8.xyz);
  r8 = vec4<f32>(v_77.xyz, r8.w);
  let v_78 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_78.xy, r8.z);
  let v_79 = r7.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_79.xy, r7.z);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.0f, 0.0f));
  r9 = vec4<f32>(v_80.xy, r9.zw);
  r9.z = 0.0f;
  let v_81 = (r7.xyz + r9.xyz);
  r9 = vec4<f32>(v_81.xyz, r9.w);
  let v_82 = r9.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_82.xy, r9.z);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.0f, 0.25f));
  r9 = vec4<f32>(v_83.xy, r9.zw);
  r9.z = 0.0f;
  let v_84 = (r7.xyz + r9.xyz);
  r9 = vec4<f32>(v_84.xyz, r9.w);
  let v_85 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_85.xy, r9.z);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.0f, 0.25f));
  r10 = vec4<f32>(v_86.xy, r10.zw);
  r10.z = 0.0f;
  let v_87 = (r7.xyz + r10.xyz);
  r10 = vec4<f32>(v_87.xyz, r10.w);
  let v_88 = r10.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_88.xy, r10.z);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.0f, 0.25f));
  r10 = vec4<f32>(v_89.xy, r10.zw);
  r10.z = 0.0f;
  let v_90 = (r7.xyz + r10.xyz);
  r7 = vec4<f32>(v_90.xyz, r7.w);
  let v_91 = r7.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_91.xy, r7.z);
  let v_92 = (r6.xyz + r8.xyz);
  r6 = vec4<f32>(v_92.xyz, r6.w);
  let v_93 = (r9.xyz + r6.xyz);
  r6 = vec4<f32>(v_93.xyz, r6.w);
  r3.w = dot(r6.xyz, vec3<f32>(1.0f));
  r3.x = clamp(fma(r3.xxxx, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).x, 0.0f, 1.0f);
  let v_94 = abs(r3.zzzz);
  r3.y = max(v_94.y, abs(r3.yyyy).y);
  r3.y = clamp(fma(r3.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).y, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = (r3.y * r3.x);
  r3.x = fma(r3.w, 0.11111111193895339966f, r3.x);
  r3.x = (r3.x * r3.x);
  r3.x = min(r3.x, 1.0f);
  r3.y = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).y, 0.0f, 1.0f);
  r3.y = sqrt(r3.y);
  r3.y = (r3.y * cb6_6.tint_symbol_5[3u].z);
  let v_95 = -(r3.xxxx);
  r3.x = fma(r3.y, v_95.x, r3.x);
  r3.y = dot(r1.yzw, v_25.xyz);
  r3.z = clamp(r3.yyyy.z, 0.0f, 1.0f);
  r3.z = ((-(abs(r3.yyyy))).z + r3.z);
  let v_96 = abs(r3.yyyy);
  r3.y = fma(r0.w, r3.z, v_96.y);
  let v_97 = dot(r4.xyz, r1.yzw);
  r6.x = clamp(vec4<f32>(v_97, v_97, v_97, v_97).x, 0.0f, 1.0f);
  let v_98 = dot(r5.xyz, v_25.xyz);
  r6.y = clamp(vec4<f32>(v_98, v_98, v_98, v_98).y, 0.0f, 1.0f);
  let v_99 = ((-(r6.xxxy)).zw + vec2<f32>(1.0f));
  r3 = vec4<f32>(r3.xy, v_99.xy);
  let v_100 = (r3.zw * r3.zw);
  r6 = vec4<f32>(v_100.xy, r6.zw);
  let v_101 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_101.xy, r6.zw);
  let v_102 = (r3.zw * r6.xy);
  r3 = vec4<f32>(r3.xy, v_102.xy);
  let v_103 = fma(r3.zw, vec2<f32>(0.95999997854232788086f), vec2<f32>(0.03999999910593032837f));
  r3 = vec4<f32>(r3.xy, v_103.xy);
  let v_104 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(v_104.xy, r6.zw);
  r4.w = (r6.x * 0.125f);
  r3.z = fma((-(r2.xxxx)).z, r3.z, 1.0f);
  r5.x = dot(r1.yzw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r6.y);
  r5.x = exp2(r5.x);
  r3.w = (r3.w * r5.x);
  r3.w = (r4.w * r3.w);
  r2.x = (r2.x * r3.w);
  r2.x = (r3.y * r2.x);
  r3.y = (r3.z * r3.y);
  let v_105 = fma(r0.xyz, r3.yyy, r2.xxx);
  r5 = vec4<f32>(v_105.xyz, r5.w);
  let v_106 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_106.xyz, r5.w);
  r1.x = fma(v1.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_107 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_107.xyz, r6.w);
  r2.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_108 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_108.xyz, r7.w);
  let v_109 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_109.xyz, r7.w);
  let v_110 = fma(r6.xyz, r2.xxx, r7.xyz);
  r6 = vec4<f32>(v_110.xyz, r6.w);
  let v_111 = (r2.zzz * r6.xyz);
  r6 = vec4<f32>(v_111.xyz, r6.w);
  let v_112 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(v_112.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_113 = dot(r8.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_113, v_113, v_113, v_113).x, 0.0f, 1.0f);
  let v_114 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r7.xyz);
  r7 = vec4<f32>(v_114.xyz, r7.w);
  let v_115 = fma(r7.xyz, r2.yyy, r6.xyz);
  r6 = vec4<f32>(v_115.xyz, r6.w);
  let v_116 = (r3.zzz * r6.xyz);
  r6 = vec4<f32>(v_116.xyz, r6.w);
  let v_117 = (r0.xyz * r6.xyz);
  r0 = vec4<f32>(v_117.xyz, r0.w);
  let v_118 = fma(r5.xyz, r3.xxx, r0.xyz);
  r0 = vec4<f32>(v_118.xyz, r0.w);
  r1.x = ((-(r3.zzzz)).x + 1.0f);
  r2.x = dot((-(r4.xyzx)).xyz, r1.yzw);
  r2.x = (r2.x + r2.x);
  let v_119 = -(r2.xxxx);
  let v_120 = -(r4.xxyz);
  let v_121 = fma(r1.yzw, v_119.yzw, v_120.yzw);
  r1 = vec4<f32>(r1.x, v_121.xyz);
  let v_122 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.0f, 0.0f, 0.00177619897294789553f))).xw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_122.x, r2.yz, v_122.y);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r3.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.y = (r2.x * cb5_5.tint_symbol_3[6u].z);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r3.x)));
  r3.z = fma(r2.x, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.x = (r2.x * r2.x);
  r2.x = fma(r2.x, 5.0f, r3.x);
  let v_123 = bitcast<u32>(r3.y);
  let v_124 = r3.z;
  r2.x = select(r2.x, v_124, (v_123 != 0u));
  let v_125 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_125.xyz, r3.w);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_126 = (r3.xyz / r1.yyy);
  r3 = vec4<f32>(v_126.xyz, r3.w);
  let v_127 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_127.xyz, r3.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_128 = bitcast<vec2<u32>>(r1.yy);
  let v_129 = r3.xy;
  let v_130 = select(r3.zy, v_129, (v_128 != vec2<u32>()));
  let v_131 = r1;
  r1 = vec4<f32>(v_131.x, v_130.xy, v_131.w);
  let v_132 = r2.x;
  r3 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_132);
  r1.y = max(r2.z, r2.y);
  let v_133 = (r1.yyy * r3.xyz);
  r1 = vec4<f32>(r1.x, v_133.xyz);
  let v_134 = (r2.www * r1.yzw);
  r2 = vec4<f32>(v_134.xyz, r2.w);
  let v_135 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_135.xyz, r2.w);
  let v_136 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_136.xyz);
  let v_137 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_137.xyz, r0.w);
  o0.w = clamp(((r0.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_138 = (v6.xy * cb2_2.tint_symbol_1[18u].zw);
    r1 = vec4<f32>(v_138.xy, r1.zw);
    r1 = textureSample(t11, s11, r1.xyxx.xy);
    r0.w = (r1.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  r0.w = (r0.w * v5.w);
  let v_139 = ((-(r0.xyzx)).xyz + v5.xyz);
  r1 = vec4<f32>(v_139.xyz, r1.w);
  let v_140 = fma(r0.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_140.xyz, r0.w);
  let v_141 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_141.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @builtin(position) v_142 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v_142);
  return o0;
}
