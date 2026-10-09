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
  tint_symbol_6 : array<vec4<u32>, 4u>,
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
  let v_23 = -(v2.xyzx);
  let v_24 = (v_23.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_24.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_25 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  let v_26 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_27 = fma(r3.xyz, r3.www, v_26.xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_28 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_28.xyz, r5.w);
  let v_29 = (r2.yz * r2.yz);
  let v_30 = r2;
  r2 = vec4<f32>(v_30.x, v_29.xy, v_30.w);
  r4.w = fma(r2.w, 510.0f, -500.0f);
  r4.w = max(r4.w, 0.0f);
  let v_31 = -(r4.wwww);
  r2.w = fma(r2.w, 510.0f, v_31.w);
  r4.w = (r4.w * 558.0f);
  r2.w = fma(r2.w, 3.0f, r4.w);
  r4.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_32 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_32.xyz, r6.w);
  let v_33 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r6 = vec4<f32>(v_34.xy, r6.z, v_34.z);
  let v_35 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r6.xyw);
  r6 = vec4<f32>(v_35.xyz, r6.w);
  let v_36 = fma(r6.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r7 = vec4<f32>(v_36.xyz, r7.w);
  let v_37 = &(x0[0u]);
  let v_38 = r7;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  let v_39 = fma(r6.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r8 = vec4<f32>(v_39.xyz, r8.w);
  let v_40 = &(x0[1u]);
  let v_41 = r8;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = fma(r6.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r9 = vec4<f32>(v_42.xyz, r9.w);
  let v_43 = &(x0[2u]);
  let v_44 = r9;
  *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
  let v_45 = fma(r6.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r6 = vec4<f32>(v_45.xyz, r6.w);
  let v_46 = &(x0[3u]);
  let v_47 = r6;
  *(v_46) = vec4<f32>(v_47.xyz, (*(v_46)).w);
  let v_48 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.0f, -0.25f));
  let v_49 = r10;
  r10 = vec4<f32>(v_49.x, v_48.xy, v_49.w);
  r5.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 3.0f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_50 = abs(r9.yyyy);
  r6.z = max(v_50.z, abs(r9.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r5.w)));
  let v_51 = (bitcast<u32>(r6.z) != 0u);
  let v_52 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r6.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_52, v_51);
  let v_53 = abs(r8.yyyy);
  r6.w = max(v_53.w, abs(r8.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_54 = bitcast<u32>(r6.w);
  r6.z = select(r6.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_54 != 0u));
  let v_55 = abs(r7.yyyy);
  r6.w = max(v_55.w, abs(r7.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_56 = bitcast<u32>(r5.w);
  r5.w = select(r6.z, 0.0f, (v_56 != 0u));
  let v_57 = x0[bitcast<i32>(r5.w)];
  r7 = vec4<f32>(v_57.xyz, r7.w);
  r5.w = f32(bitcast<i32>(r5.w));
  r6.z = (r5.w + 0.5f);
  r6.z = (r6.z * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r5.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r5.w = dot(r8, cb6_6.tint_symbol_5[12u]);
  r6.w = dot(r8, cb6_6.tint_symbol_5[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r6.z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, !((r5.w == 0.0f))));
  r5.w = ((-(r5.wwww)).w + r7.z);
  let v_58 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_58.xy, r9.z, v_58.z);
  r9.z = dpdx(r5.w);
  let v_59 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_59.xyz, r11.w);
  r11.w = dpdy(r5.w);
  let v_60 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_60.xy, r7.zw);
  let v_61 = -(r7.xyxx);
  let v_62 = fma(r9.xz, r11.xz, v_61.xy);
  r12 = vec4<f32>(v_62.xy, r12.zw);
  r7.x = (1.0f / r12.x);
  r7.y = (r9.z * r11.y);
  let v_63 = -(r7.yyyy);
  r12.z = fma(r9.x, r11.w, v_63.z);
  let v_64 = (r7.xx * r12.yz);
  r7 = vec4<f32>(v_64.xy, r7.zw);
  let v_65 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_65.xy, r7.zw);
  let v_66 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_66.xy, r7.zw);
  r5.w = fma((-(r6.wwww)).w, r7.x, r5.w);
  r5.w = fma((-(r6.wwww)).w, r7.y, r5.w);
  let v_67 = bitcast<u32>(r6.z);
  let v_68 = r5.w;
  r8.z = select(r7.z, v_68, (v_67 != 0u));
  r10.w = 0.0f;
  let v_69 = (r8.xyz + r10.yzw);
  r7 = vec4<f32>(v_69.xyz, r7.w);
  let v_70 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_70.xy, r7.z);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.0f, -0.25f));
  r9 = vec4<f32>(v_71.xy, r9.zw);
  r9.z = 0.0f;
  let v_72 = (r8.xyz + r9.xyz);
  r9 = vec4<f32>(v_72.xyz, r9.w);
  let v_73 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_73.xy, r9.z);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.0f, -0.25f));
  r9 = vec4<f32>(v_74.xy, r9.zw);
  r9.z = 0.0f;
  let v_75 = (r8.xyz + r9.xyz);
  r9 = vec4<f32>(v_75.xyz, r9.w);
  let v_76 = r9.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_76.xy, r9.z);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.0f, 0.0f));
  r9 = vec4<f32>(v_77.xy, r9.zw);
  r9.z = 0.0f;
  let v_78 = (r8.xyz + r9.xyz);
  r9 = vec4<f32>(v_78.xyz, r9.w);
  let v_79 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_79.xy, r9.z);
  let v_80 = r8.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_80.xy, r8.z);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.0f, 0.0f));
  r10 = vec4<f32>(v_81.xy, r10.zw);
  r10.z = 0.0f;
  let v_82 = (r8.xyz + r10.xyz);
  r10 = vec4<f32>(v_82.xyz, r10.w);
  let v_83 = r10.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_83.xy, r10.z);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.0f, 0.25f));
  r10 = vec4<f32>(v_84.xy, r10.zw);
  r10.z = 0.0f;
  let v_85 = (r8.xyz + r10.xyz);
  r10 = vec4<f32>(v_85.xyz, r10.w);
  let v_86 = r10.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_86.xy, r10.z);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.0f, 0.25f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  r11.z = 0.0f;
  let v_88 = (r8.xyz + r11.xyz);
  r11 = vec4<f32>(v_88.xyz, r11.w);
  let v_89 = r11.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_89.xy, r11.z);
  let v_90 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.0f, 0.25f));
  r11 = vec4<f32>(v_90.xy, r11.zw);
  r11.z = 0.0f;
  let v_91 = (r8.xyz + r11.xyz);
  r8 = vec4<f32>(v_91.xyz, r8.w);
  let v_92 = r8.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_92.xy, r8.z);
  let v_93 = (r7.xyz + r9.xyz);
  r7 = vec4<f32>(v_93.xyz, r7.w);
  let v_94 = (r10.xyz + r7.xyz);
  r7 = vec4<f32>(v_94.xyz, r7.w);
  r5.w = dot(r7.xyz, vec3<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_95 = abs(r6.yyyy);
  r6.x = max(v_95.x, abs(r6.xxxx).x);
  r6.x = clamp(fma(r6.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.x * r4.w);
  r4.w = fma(r5.w, 0.11111111193895339966f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_5[3u].z);
  let v_96 = -(r4.wwww);
  r4.w = fma(r5.w, v_96.w, r4.w);
  r5.w = dot(r1.yzw, v_26.xyz);
  r6.x = clamp(r5.wwww.x, 0.0f, 1.0f);
  r6.x = ((-(abs(r5.wwww))).x + r6.x);
  let v_97 = abs(r5.wwww);
  r5.w = fma(r0.w, r6.x, v_97.w);
  let v_98 = dot(r4.xyz, r1.yzw);
  r6.x = clamp(vec4<f32>(v_98, v_98, v_98, v_98).x, 0.0f, 1.0f);
  let v_99 = dot(r5.xyz, v_26.xyz);
  r6.y = clamp(vec4<f32>(v_99, v_99, v_99, v_99).y, 0.0f, 1.0f);
  let v_100 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_100.xy, r6.zw);
  let v_101 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_101.xy);
  let v_102 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_102.xy);
  let v_103 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_103.xy, r6.zw);
  let v_104 = fma(r6.xy, vec2<f32>(0.95999997854232788086f), vec2<f32>(0.03999999910593032837f));
  r6 = vec4<f32>(v_104.xy, r6.zw);
  let v_105 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(r6.xy, v_105.xy);
  r6.z = (r6.z * 0.125f);
  r6.x = fma((-(r2.xxxx)).x, r6.x, 1.0f);
  r5.x = dot(r1.yzw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r6.w);
  r5.x = exp2(r5.x);
  let v_106 = (r5.xw * r6.yx);
  r5 = vec4<f32>(v_106.xy, r5.zw);
  r5.x = (r6.z * r5.x);
  r5.x = (r2.x * r5.x);
  r5.x = (r5.w * r5.x);
  let v_107 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_107.xyz, r5.w);
  let v_108 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_108.xyz, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r8 = vec4<f32>(vec3<f32>(), r8.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_109 = (v_23.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_109.xyz, r7.w);
    let v_110 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_110.xyz, r8.w);
    r7.w = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_111 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_111.xyz, r8.w);
    let v_112 = (r8.xyz + v_23.xyz);
    r8 = vec4<f32>(v_112.xyz, r8.w);
    let v_113 = bitcast<vec3<u32>>(r6.yyy);
    let v_114 = r7.xyz;
    let v_115 = select(r8.xyz, v_114, (v_113 != vec3<u32>()));
    r7 = vec4<f32>(v_115.xyz, r7.w);
    r6.y = dot(r7.xyz, r7.xyz);
    let v_116 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_116.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_117 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_117.xyz, r7.w);
    r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[11u].w);
    r6.y = (r6.y / r7.w);
    let v_118 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r7.xyz, v_118.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    r8.x = dot(r7.xyz, r1.yzw);
    r8.y = clamp(r8.xxxx.y, 0.0f, 1.0f);
    r8.y = ((-(abs(r8.xxxx))).y + r8.y);
    let v_119 = abs(r8.xxxx);
    r8.x = fma(r0.w, r8.y, v_119.x);
    r7.w = (r7.w * r8.x);
    r8.x = (r6.y * r7.w);
    let v_120 = (r8.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_120.xyz, r8.w);
    let v_121 = (r0.xyz * r8.xyz);
    r8 = vec4<f32>(v_121.xyz, r8.w);
    let v_122 = fma(r3.xyz, r3.www, r7.xyz);
    r7 = vec4<f32>(v_122.xyz, r7.w);
    r8.w = dot(r7.xyz, r7.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_123 = (r7.xyz * r8.www);
    r7 = vec4<f32>(v_123.xyz, r7.w);
    let v_124 = dot(r7.xyz, r4.xyz);
    r8.w = clamp(vec4<f32>(v_124, v_124, v_124, v_124).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.x = (r8.w * r8.w);
    r9.x = (r9.x * r9.x);
    r8.w = (r8.w * r9.x);
    r8.w = fma(r8.w, 0.95999997854232788086f, 0.03999999910593032837f);
    let v_125 = dot(r7.xyz, r1.yzw);
    r7.x = clamp(vec4<f32>(v_125, v_125, v_125, v_125).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r6.w * r7.x);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r8.w);
    r7.x = (r7.w * r7.x);
    r6.y = (r6.y * r7.x);
    r6.y = (r6.z * r6.y);
    let v_126 = (r6.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_126.xyz, r7.w);
  }
  r6.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.y) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    let v_127 = bitcast<u32>(r7.w);
    let v_128 = r6.y;
    r5.w = select(r5.w, v_128, (v_127 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_129 = (v_23.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_129.xyz, r9.w);
      let v_130 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_130.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_131 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_131.xyz, r10.w);
      let v_132 = (r10.xyz + v_23.xyz);
      r10 = vec4<f32>(v_132.xyz, r10.w);
      let v_133 = bitcast<vec3<u32>>(r6.yyy);
      let v_134 = r9.xyz;
      let v_135 = select(r10.xyz, v_134, (v_133 != vec3<u32>()));
      r9 = vec4<f32>(v_135.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_136 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_136.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_137 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_137.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[12u].w);
      r6.y = (r6.y / r7.w);
      let v_138 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r9.xyz, v_138.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      r8.w = dot(r9.xyz, r1.yzw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_139 = abs(r8.wwww);
      r8.w = fma(r0.w, r9.w, v_139.w);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_140 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_140.xyz, r10.w);
      let v_141 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_141.xyz, r8.w);
      let v_142 = fma(r3.xyz, r3.www, r9.xyz);
      r9 = vec4<f32>(v_142.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_143 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_143.xyz, r9.w);
      let v_144 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_144, v_144, v_144, v_144).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(r8.w, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_145 = dot(r9.xyz, r1.yzw);
      r9.x = clamp(vec4<f32>(v_145, v_145, v_145, v_145).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_146 = fma(r6.yyy, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_146.xyz, r7.w);
    }
  } else {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_147 = (v_23.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_147.xyz, r9.w);
      let v_148 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_148.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_149 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_149.xyz, r10.w);
      let v_150 = (r10.xyz + v_23.xyz);
      r10 = vec4<f32>(v_150.xyz, r10.w);
      let v_151 = bitcast<vec3<u32>>(r6.yyy);
      let v_152 = r9.xyz;
      let v_153 = select(r10.xyz, v_152, (v_151 != vec3<u32>()));
      r9 = vec4<f32>(v_153.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_154 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_154.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_155 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_155.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[13u].w);
      r6.y = (r6.y / r7.w);
      let v_156 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r9.xyz, v_156.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      r8.w = dot(r9.xyz, r1.yzw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_157 = abs(r8.wwww);
      r8.w = fma(r0.w, r9.w, v_157.w);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_158 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_158.xyz, r10.w);
      let v_159 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_159.xyz, r8.w);
      let v_160 = fma(r3.xyz, r3.www, r9.xyz);
      r9 = vec4<f32>(v_160.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_161 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_161.xyz, r9.w);
      let v_162 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_162, v_162, v_162, v_162).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(r8.w, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_163 = dot(r9.xyz, r1.yzw);
      r9.x = clamp(vec4<f32>(v_163, v_163, v_163, v_163).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_164 = fma(r6.yyy, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_164.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_165 = (v_23.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_165.xyz, r9.w);
      let v_166 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_166.xyz, r10.w);
      r6.y = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.y = clamp(((r6.yyyy / cb3_3.tint_symbol_2[22u].wwww)).y, 0.0f, 1.0f);
      r6.y = (r6.y * cb3_3.tint_symbol_2[22u].w);
      let v_167 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_167.xyz, r10.w);
      let v_168 = (r10.xyz + v_23.xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      let v_169 = bitcast<vec3<u32>>(r5.www);
      let v_170 = r9.xyz;
      let v_171 = select(r10.xyz, v_170, (v_169 != vec3<u32>()));
      r9 = vec4<f32>(v_171.xyz, r9.w);
      r5.w = dot(r9.xyz, r9.xyz);
      let v_172 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_172.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      r6.y = inverseSqrt(r6.y);
      let v_173 = (r6.yyy * r9.xyz);
      r9 = vec4<f32>(v_173.xyz, r9.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r6.y = fma(r6.y, r5.w, cb3_3.tint_symbol_2[14u].w);
      r5.w = (r5.w / r6.y);
      let v_174 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.y = dot(r9.xyz, v_174.xyz);
      r6.y = clamp(fma(r6.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      r7.w = dot(r9.xyz, r1.yzw);
      r8.w = clamp(r7.wwww.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r7.wwww))).w + r8.w);
      let v_175 = abs(r7.wwww);
      r7.w = fma(r0.w, r8.w, v_175.w);
      r6.y = (r6.y * r7.w);
      r7.w = (r5.w * r6.y);
      let v_176 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_176.xyz, r10.w);
      let v_177 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_177.xyz, r8.w);
      let v_178 = fma(r3.xyz, r3.www, r9.xyz);
      r3 = vec4<f32>(v_178.xyz, r3.w);
      r3.w = dot(r3.xyz, r3.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_179 = (r3.www * r3.xyz);
      r3 = vec4<f32>(v_179.xyz, r3.w);
      let v_180 = dot(r3.xyz, r4.xyz);
      r3.w = clamp(vec4<f32>(v_180, v_180, v_180, v_180).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r7.w = (r3.w * r3.w);
      r7.w = (r7.w * r7.w);
      r3.w = (r3.w * r7.w);
      r3.w = fma(r3.w, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_181 = dot(r3.xyz, r1.yzw);
      r3.x = clamp(vec4<f32>(v_181, v_181, v_181, v_181).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r6.w);
      r3.x = exp2(r3.x);
      r3.x = (r3.x * r3.w);
      r3.x = (r6.y * r3.x);
      r3.x = (r5.w * r3.x);
      r3.x = (r6.z * r3.x);
      let v_182 = fma(r3.xxx, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_182.xyz, r7.w);
    }
  }
  r3.x = (r6.x * r6.x);
  r2.x = (r2.x * r2.x);
  let v_183 = (r7.xyz * r2.xxx);
  r3 = vec4<f32>(r3.x, v_183.xyz);
  let v_184 = fma(r3.xxx, r8.xyz, r3.yzw);
  r3 = vec4<f32>(v_184.xyz, r3.w);
  let v_185 = fma(r5.xyz, r4.www, r3.xyz);
  r3 = vec4<f32>(v_185.xyz, r3.w);
  r1.x = fma(v1.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_186 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_186.xyz, r5.w);
  r2.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_187 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(r6.x, v_187.xyz);
  let v_188 = (r6.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(r6.x, v_188.xyz);
  let v_189 = fma(r5.xyz, r2.xxx, r6.yzw);
  r5 = vec4<f32>(v_189.xyz, r5.w);
  let v_190 = (r2.zzz * r5.xyz);
  r5 = vec4<f32>(v_190.xyz, r5.w);
  let v_191 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(r6.x, v_191.xyz);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_192 = dot(r7.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_192, v_192, v_192, v_192).x, 0.0f, 1.0f);
  let v_193 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.yzw);
  r6 = vec4<f32>(r6.x, v_193.xyz);
  let v_194 = fma(r6.yzw, r2.yyy, r5.xyz);
  r5 = vec4<f32>(v_194.xyz, r5.w);
  let v_195 = (r6.xxx * r5.xyz);
  r5 = vec4<f32>(v_195.xyz, r5.w);
  let v_196 = fma(r5.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_196.xyz, r0.w);
  r1.x = ((-(r6.xxxx)).x + 1.0f);
  r2.x = dot((-(r4.xyzx)).xyz, r1.yzw);
  r2.x = (r2.x + r2.x);
  let v_197 = -(r2.xxxx);
  let v_198 = -(r4.xxyz);
  let v_199 = fma(r1.yzw, v_197.yzw, v_198.yzw);
  r1 = vec4<f32>(r1.x, v_199.xyz);
  let v_200 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.0f, 0.0f, 0.00177619897294789553f))).xw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_200.x, r2.yz, v_200.y);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r3.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.y = (r2.x * cb5_5.tint_symbol_3[6u].z);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r3.x)));
  r3.z = fma(r2.x, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.x = (r2.x * r2.x);
  r2.x = fma(r2.x, 5.0f, r3.x);
  let v_201 = bitcast<u32>(r3.y);
  let v_202 = r3.z;
  r2.x = select(r2.x, v_202, (v_201 != 0u));
  let v_203 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_203.xyz, r3.w);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_204 = (r3.xyz / r1.yyy);
  r3 = vec4<f32>(v_204.xyz, r3.w);
  let v_205 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_205.xyz, r3.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_206 = bitcast<vec2<u32>>(r1.yy);
  let v_207 = r3.xy;
  let v_208 = select(r3.zy, v_207, (v_206 != vec2<u32>()));
  let v_209 = r1;
  r1 = vec4<f32>(v_209.x, v_208.xy, v_209.w);
  let v_210 = r2.x;
  r3 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_210);
  r1.y = max(r2.z, r2.y);
  let v_211 = (r1.yyy * r3.xyz);
  r1 = vec4<f32>(r1.x, v_211.xyz);
  let v_212 = (r2.www * r1.yzw);
  r2 = vec4<f32>(v_212.xyz, r2.w);
  let v_213 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_213.xyz, r2.w);
  let v_214 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_214.xyz);
  let v_215 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_215.xyz, r0.w);
  o0.w = clamp(((r0.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_216 = (v6.xy * cb2_2.tint_symbol_1[18u].zw);
    r1 = vec4<f32>(v_216.xy, r1.zw);
    r1 = textureSample(t11, s11, r1.xyxx.xy);
    r0.w = (r1.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  r0.w = (r0.w * v5.w);
  let v_217 = ((-(r0.xyzx)).xyz + v5.xyz);
  r1 = vec4<f32>(v_217.xyz, r1.w);
  let v_218 = fma(r0.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_218.xyz, r0.w);
  let v_219 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_219.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @builtin(position) v_220 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v_220);
  return o0;
}
