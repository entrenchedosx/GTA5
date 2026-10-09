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

struct cb8_struct {
  tint_symbol_4 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb8_struct;

struct cb48_struct {
  tint_symbol_5 : array<vec4<f32>, 48u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb48_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_depth_cube;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

@group(1u) @binding(56u) var t24 : texture_depth_2d;

@group(1u) @binding(57u) var t25 : texture_depth_cube;

@group(1u) @binding(58u) var t26 : texture_depth_2d;

@group(1u) @binding(59u) var t27 : texture_depth_cube;

@group(1u) @binding(60u) var t28 : texture_depth_2d;

@group(1u) @binding(61u) var t29 : texture_depth_cube;

@group(1u) @binding(62u) var t30 : texture_depth_2d;

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
  let v_3 = -(v2.xyzx);
  let v_4 = (v_3.xyz + cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0.w = dot(v1.xyz, r0.xyz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.0f)));
  let v_5 = -(bitcast<vec4<i32>>(r1.xxxx));
  r0.w = bitcast<f32>((bitcast<i32>(r0.w) + v_5.w));
  r0.w = f32(bitcast<i32>(r0.w));
  let v_6 = (r0.www * v1.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r2 = textureSample(t0, s0, v0.xyxx.xy);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_7 = (r0.www * r1.xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  r4 = textureSample(t4, s4, v0.xyxx.xy);
  let v_8 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_8.xy, r4.zw);
  r0.w = dot(r4.xyz, cb11_11.tint_symbol_4[4u].xyz);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[6u].x)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_9 = (r1.zxy * vec3<f32>(0.0f, 1.0f, 0.0f));
    r4 = vec4<f32>(v_9.xyz, r4.w);
    let v_10 = -(r4.xyzx);
    let v_11 = fma(r1.yzx, vec3<f32>(1.0f, 0.0f, 0.0f), v_10.xyz);
    r4 = vec4<f32>(v_11.xyz, r4.w);
    r1.w = dot(r4.xy, r4.xy);
    r1.w = inverseSqrt(r1.w);
    let v_12 = (r1.www * r4.xyz);
    r4 = vec4<f32>(v_12.xyz, r4.w);
    let v_13 = (r1.yzx * r4.zxy);
    r5 = vec4<f32>(v_13.xyz, r5.w);
    let v_14 = -(r5.xyzx);
    let v_15 = fma(r4.yzx, r1.zxy, v_14.xyz);
    r5 = vec4<f32>(v_15.xyz, r5.w);
    let v_16 = (v0.zw * cb11_11.tint_symbol_4[6u].yy);
    r6 = vec4<f32>(v_16.xy, r6.zw);
    r6 = textureSample(t5, s5, r6.xyxx.xy);
    let v_17 = (r6.ww * cb11_11.tint_symbol_4[6u].xz);
    r7 = vec4<f32>(v_17.xy, r7.zw);
    r8 = (-(r2) + vec4<f32>(1.0f));
    r2 = fma(r7.xxxx, r8, r2);
    r1.w = (r6.w * cb11_11.tint_symbol_4[7u].w);
    let v_18 = ((-(r2.xxyz)).xzw + cb11_11.tint_symbol_4[7u].xyz);
    r7 = vec4<f32>(v_18.x, r7.y, v_18.yz);
    let v_19 = fma(r1.www, r7.xzw, r2.xyz);
    r2 = vec4<f32>(v_19.xyz, r2.w);
    let v_20 = fma(r6.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r6 = vec4<f32>(v_20.xy, r6.zw);
    r1.w = dot(r6.xy, r6.xy);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.w = sqrt(abs(r1.wwww).w);
    r3.w = max(cb11_11.tint_symbol_4[6u].w, 0.00100000004749745131f);
    let v_21 = (r3.ww * r6.xy);
    r6 = vec4<f32>(v_21.xy, r6.zw);
    let v_22 = (r5.xyz * r6.yyy);
    r5 = vec4<f32>(v_22.xyz, r5.w);
    let v_23 = fma(r6.xxx, r4.xyz, r5.xyz);
    r4 = vec4<f32>(v_23.xyz, r4.w);
    let v_24 = fma(r1.www, r1.xyz, r4.xyz);
    r1 = vec4<f32>(v_24.xyz, r1.w);
    r1.w = dot(r1.xyz, r1.xyz);
    r1.w = inverseSqrt(r1.w);
    let v_25 = (r1.www * r1.xyz);
    r1 = vec4<f32>(v_25.xyz, r1.w);
    let v_26 = fma(r1.xyz, r7.yyy, r3.xyz);
    r1 = vec4<f32>(v_26.xyz, r1.w);
    r1.w = dot(r1.xyz, r1.xyz);
    r1.w = inverseSqrt(r1.w);
    let v_27 = (r1.www * r1.xyz);
    r3 = vec4<f32>(v_27.xyz, r3.w);
    r1.x = ((-(r6.wwww)).x + 1.0f);
  } else {
    r1.x = 1.0f;
  }
  r1.x = (r1.x * v4.w);
  let v_28 = (cb11_11.tint_symbol_4[1u].xyz + vec3<f32>(-1.0f));
  r1 = vec4<f32>(r1.x, v_28.xyz);
  let v_29 = fma(r1.xxx, r1.yzw, vec3<f32>(1.0f));
  r1 = vec4<f32>(v_29.xyz, r1.w);
  let v_30 = (r1.xyz * r2.xyz);
  r1 = vec4<f32>(v_30.xyz, r1.w);
  r1.w = clamp(fma(cb11_11.tint_symbol_4[1u].wwww, v4.wwww, r2.wwww).w, 0.0f, 1.0f);
  let v_31 = (r1.xyz * v4.xxx);
  r1 = vec4<f32>(v_31.xyz, r1.w);
  let v_32 = (v4.xx * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_32.xy, r2.zw);
  r2.z = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).z, 0.0f, 1.0f);
  r2.y = (r2.z * r2.y);
  r0.w = (r0.w * v4.x);
  let v_33 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_33.xyz, r1.w);
  let v_34 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).zw + vec2<f32>(1.0f, 2.0f));
  r2 = vec4<f32>(r2.xy, v_34.xy);
  r3.w = (r2.z * v4.z);
  let v_35 = (r2.ww * v0.zw);
  r4 = vec4<f32>(v_35.xy, r4.zw);
  r5 = textureSample(t3, s3, r4.xyxx.xy);
  r2.w = (cb5_5.tint_symbol_3[3u].z * cb11_11.tint_symbol_4[2u].z);
  r4.x = ((-(r5.xxxx)).x + r5.z);
  r5.x = fma(r2.w, r4.x, r5.x);
  let v_36 = (r5.xy * cb11_11.tint_symbol_4[2u].xx);
  r4 = vec4<f32>(v_36.xy, r4.zw);
  r2.w = fma(v4.z, r2.z, -1.0f);
  r2.z = fma(r2.z, r2.w, 1.0f);
  r2.w = (r2.z * r4.x);
  let v_37 = -(r1.xyxz);
  let v_38 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_37.xyw);
  r5 = vec4<f32>(v_38.xy, r5.z, v_38.z);
  let v_39 = fma(r2.www, r5.xyw, r1.xyz);
  r1 = vec4<f32>(v_39.xyz, r1.w);
  r2.w = (r3.w * cb11_11.tint_symbol_4[2u].x);
  let v_40 = ((-(r1.xyzx)).xyz + r5.zzz);
  r5 = vec4<f32>(v_40.xyz, r5.w);
  let v_41 = fma(r2.www, r5.xyz, r1.xyz);
  r1 = vec4<f32>(v_41.xyz, r1.w);
  r1.w = fma(r4.x, r2.z, r1.w);
  r2.z = fma((-(r4.yyyy)).z, r2.z, 1.0f);
  r0.w = clamp(((r0.wwww * r2.zzzz)).w, 0.0f, 1.0f);
  r2.z = dot(r0.xyz, r0.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_42 = (r0.xyz * r2.zzz);
  r4 = vec4<f32>(v_42.xyz, r4.w);
  let v_43 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_44 = fma(r0.xyz, r2.zzz, v_43.xyz);
  r5 = vec4<f32>(v_44.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_45 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_45.xyz, r5.w);
  let v_46 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_46.xy, r2.zw);
  r2.w = fma(r4.w, 510.0f, -500.0f);
  r2.w = max(r2.w, 0.0f);
  let v_47 = -(r2.wwww);
  r3.w = fma(r4.w, 510.0f, v_47.w);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.w, 3.0f, r2.w);
  r3.w = dot(r0.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_48 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_48.xyz, r6.w);
  let v_49 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_49.xyz, r7.w);
  let v_50 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_50.xyz, r7.w);
  let v_51 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_51.xyz, r7.w);
  let v_52 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_52.xyz, r8.w);
  let v_53 = &(x0[0u]);
  let v_54 = r8;
  *(v_53) = vec4<f32>(v_54.xyz, (*(v_53)).w);
  let v_55 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_55.xyz, r9.w);
  let v_56 = &(x0[1u]);
  let v_57 = r9;
  *(v_56) = vec4<f32>(v_57.xyz, (*(v_56)).w);
  let v_58 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_58.xyz, r10.w);
  let v_59 = &(x0[2u]);
  let v_60 = r10;
  *(v_59) = vec4<f32>(v_60.xyz, (*(v_59)).w);
  let v_61 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_61.xyz, r7.w);
  let v_62 = &(x0[3u]);
  let v_63 = r7;
  *(v_62) = vec4<f32>(v_63.xyz, (*(v_62)).w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.0f, -0.25f));
  let v_65 = r11;
  r11 = vec4<f32>(v_65.x, v_64.xy, v_65.w);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 3.0f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_66 = abs(r10.yyyy);
  r5.w = max(v_66.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_67 = (bitcast<u32>(r5.w) != 0u);
  let v_68 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_68, v_67);
  let v_69 = abs(r9.yyyy);
  r6.w = max(v_69.w, abs(r9.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_70 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_70 != 0u));
  let v_71 = abs(r8.yyyy);
  r6.w = max(v_71.w, abs(r8.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_72 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_72 != 0u));
  let v_73 = x0[bitcast<i32>(r4.w)];
  r8 = vec4<f32>(v_73.xyz, r8.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r4.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r6.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r8.z);
  let v_74 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_74.xy, r10.z, v_74.z);
  r10.z = dpdx(r4.w);
  let v_75 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_75.xyz, r12.w);
  r12.w = dpdy(r4.w);
  let v_76 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_76.xy);
  let v_77 = -(r7.zwzz);
  let v_78 = fma(r10.xz, r12.xz, v_77.xy);
  r13 = vec4<f32>(v_78.xy, r13.zw);
  r7.z = (1.0f / r13.x);
  r7.w = (r10.z * r12.y);
  let v_79 = -(r7.wwww);
  r13.z = fma(r10.x, r12.w, v_79.z);
  let v_80 = (r7.zz * r13.yz);
  r7 = vec4<f32>(r7.xy, v_80.xy);
  let v_81 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_81.xy);
  let v_82 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_82.xy);
  r4.w = fma((-(r6.wwww)).w, r7.z, r4.w);
  r4.w = fma((-(r6.wwww)).w, r7.w, r4.w);
  let v_83 = bitcast<u32>(r5.w);
  let v_84 = r4.w;
  r9.z = select(r8.z, v_84, (v_83 != 0u));
  r11.w = 0.0f;
  let v_85 = (r9.xyz + r11.yzw);
  r8 = vec4<f32>(v_85.xyz, r8.w);
  let v_86 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_86.xy, r8.z);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.0f, -0.25f));
  r10 = vec4<f32>(v_87.xy, r10.zw);
  r10.z = 0.0f;
  let v_88 = (r9.xyz + r10.xyz);
  r10 = vec4<f32>(v_88.xyz, r10.w);
  let v_89 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_89.xy, r10.z);
  let v_90 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.0f, -0.25f));
  r10 = vec4<f32>(v_90.xy, r10.zw);
  r10.z = 0.0f;
  let v_91 = (r9.xyz + r10.xyz);
  r10 = vec4<f32>(v_91.xyz, r10.w);
  let v_92 = r10.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_92.xy, r10.z);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.0f, 0.0f));
  r10 = vec4<f32>(v_93.xy, r10.zw);
  r10.z = 0.0f;
  let v_94 = (r9.xyz + r10.xyz);
  r10 = vec4<f32>(v_94.xyz, r10.w);
  let v_95 = r10.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_95.xy, r10.z);
  let v_96 = r9.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_96.xy, r9.z);
  let v_97 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.0f, 0.0f));
  r11 = vec4<f32>(v_97.xy, r11.zw);
  r11.z = 0.0f;
  let v_98 = (r9.xyz + r11.xyz);
  r11 = vec4<f32>(v_98.xyz, r11.w);
  let v_99 = r11.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_99.xy, r11.z);
  let v_100 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.0f, 0.25f));
  r11 = vec4<f32>(v_100.xy, r11.zw);
  r11.z = 0.0f;
  let v_101 = (r9.xyz + r11.xyz);
  r11 = vec4<f32>(v_101.xyz, r11.w);
  let v_102 = r11.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_102.xy, r11.z);
  let v_103 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.0f, 0.25f));
  r12 = vec4<f32>(v_103.xy, r12.zw);
  r12.z = 0.0f;
  let v_104 = (r9.xyz + r12.xyz);
  r12 = vec4<f32>(v_104.xyz, r12.w);
  let v_105 = r12.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_105.xy, r12.z);
  let v_106 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.0f, 0.25f));
  r12 = vec4<f32>(v_106.xy, r12.zw);
  r12.z = 0.0f;
  let v_107 = (r9.xyz + r12.xyz);
  r9 = vec4<f32>(v_107.xyz, r9.w);
  let v_108 = r9.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_108.xy, r9.z);
  let v_109 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_109.xyz, r8.w);
  let v_110 = (r11.xyz + r8.xyz);
  r8 = vec4<f32>(v_110.xyz, r8.w);
  r4.w = dot(r8.xyz, vec3<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_111 = abs(r7.yyyy);
  r5.w = max(v_111.w, abs(r7.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.11111111193895339966f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_112 = -(r3.wwww);
  r3.w = fma(r4.w, v_112.w, r3.w);
  r4.w = dot(r3.xyz, v_43.xyz);
  r5.w = clamp(r4.wwww.w, 0.0f, 1.0f);
  r5.w = ((-(abs(r4.wwww))).w + r5.w);
  let v_113 = abs(r4.wwww);
  r4.w = fma(r1.w, r5.w, v_113.w);
  let v_114 = dot(r4.xyz, r3.xyz);
  r7.x = clamp(vec4<f32>(v_114, v_114, v_114, v_114).x, 0.0f, 1.0f);
  let v_115 = dot(r5.xyz, v_43.xyz);
  r7.y = clamp(vec4<f32>(v_115, v_115, v_115, v_115).y, 0.0f, 1.0f);
  let v_116 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_116.xy, r7.zw);
  let v_117 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_117.xy);
  let v_118 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_118.xy);
  let v_119 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_119.xy, r7.zw);
  let v_120 = fma(r7.xy, vec2<f32>(0.95999997854232788086f), vec2<f32>(0.03999999910593032837f));
  r7 = vec4<f32>(v_120.xy, r7.zw);
  let v_121 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_121.xy);
  r5.w = (r7.z * 0.125f);
  r6.w = fma((-(r0.wwww)).w, r7.x, 1.0f);
  r5.x = dot(r3.xyz, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.w);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r5.w * r5.x);
  r5.x = (r0.w * r5.x);
  r5.x = (r4.w * r5.x);
  r4.w = (r4.w * r6.w);
  let v_122 = fma(r1.xyz, r4.www, r5.xxx);
  r5 = vec4<f32>(v_122.xyz, r5.w);
  let v_123 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_123.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_124 = (v_3.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_124.xyz, r8.w);
    let v_125 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_125.xyz, r9.w);
    r7.y = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[19u].wwww)).y, 0.0f, 1.0f);
    r7.y = (r7.y * cb3_3.tint_symbol_2[19u].w);
    let v_126 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.yyy, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_126.xyz, r9.w);
    let v_127 = (r9.xyz + v_3.xyz);
    r9 = vec4<f32>(v_127.xyz, r9.w);
    let v_128 = bitcast<vec3<u32>>(r7.xxx);
    let v_129 = r8.xyz;
    let v_130 = select(r9.xyz, v_129, (v_128 != vec3<u32>()));
    r7 = vec4<f32>(v_130.xyz, r7.w);
    r8.x = dot(r7.xyz, r7.xyz);
    let v_131 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_131.xyz, r7.w);
    r8.y = dot(r7.xyz, r7.xyz);
    r8.y = inverseSqrt(r8.y);
    let v_132 = (r7.xyz * r8.yyy);
    r7 = vec4<f32>(v_132.xyz, r7.w);
    r8.x = clamp(fma(-(r8.xxxx), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r8.y = ((-(cb3_3.tint_symbol_2[11u].wwww)).y + 1.0f);
    r8.y = fma(r8.y, r8.x, cb3_3.tint_symbol_2[11u].w);
    r8.x = (r8.x / r8.y);
    let v_133 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.y = dot(r7.xyz, v_133.xyz);
    r8.y = clamp(fma(r8.yyyy, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).y, 0.0f, 1.0f);
    r8.z = dot(r7.xyz, r3.xyz);
    r8.w = clamp(r8.zzzz.w, 0.0f, 1.0f);
    r8.w = ((-(abs(r8.zzzz))).w + r8.w);
    let v_134 = abs(r8.zzzz);
    r8.z = fma(r1.w, r8.w, v_134.z);
    r8.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[15u].w == 0.0f))));
    r9.x = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_5[47u].x == 1.0f)));
    r8.w = bitcast<f32>((bitcast<u32>(r8.w) & bitcast<u32>(r9.x)));
    if ((bitcast<u32>(r8.w) != 0u)) {
      let v_135 = (r6.xyz + cb6_6.tint_symbol_5[18u].xyz);
      r9 = vec4<f32>(v_135.xyz, r9.w);
      r10.x = dot(r9.xyz, cb6_6.tint_symbol_5[15u].xyz);
      r10.y = dot(r9.xyz, cb6_6.tint_symbol_5[16u].xyz);
      r10.z = dot(r9.xyz, cb6_6.tint_symbol_5[17u].xyz);
      r8.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[15u].w == 3.0f))));
      if ((bitcast<u32>(r8.w) != 0u)) {
        let v_136 = (-(r10.xyzx)).xyz;
        r11 = vec4<f32>(v_136.xyz, r11.w);
        r8.w = dot(r11.xyz, r11.xyz);
        r8.w = sqrt(r8.w);
        r8.w = (r8.w * cb6_6.tint_symbol_5[17u].w);
        let v_137 = r11.xyzx;
        r8.w = textureSampleCompareLevel(t14, s14, v_137.xyz, r8.w);
      } else {
        let v_138 = -(r10.zzzz);
        let v_139 = (r10.xy / v_138.xy);
        r10 = vec4<f32>(v_139.xy, r10.zw);
        let v_140 = fma(r10.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
        r10 = vec4<f32>(v_140.xy, r10.zw);
        r9.x = dot(r9.xyz, r9.xyz);
        r9.x = sqrt(r9.x);
        r9.x = (r9.x * cb6_6.tint_symbol_5[17u].w);
        let v_141 = r10.xyxx;
        r8.w = textureSampleCompareLevel(t24, s14, v_141.xy, r9.x);
      }
    } else {
      r8.w = 1.0f;
    }
    r9.x = (r8.z * r8.w);
    r9.x = (r8.y * r9.x);
    r9.x = (r8.x * r9.x);
    let v_142 = (r9.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_142.xyz, r9.w);
    let v_143 = (r1.xyz * r9.xyz);
    r9 = vec4<f32>(v_143.xyz, r9.w);
    let v_144 = fma(r0.xyz, r2.zzz, r7.xyz);
    r7 = vec4<f32>(v_144.xyz, r7.w);
    r9.w = dot(r7.xyz, r7.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_145 = (r7.xyz * r9.www);
    r7 = vec4<f32>(v_145.xyz, r7.w);
    let v_146 = dot(r7.xyz, r4.xyz);
    r9.w = clamp(vec4<f32>(v_146, v_146, v_146, v_146).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.x = (r9.w * r9.w);
    r10.x = (r10.x * r10.x);
    r9.w = (r9.w * r10.x);
    r9.w = fma(r9.w, 0.95999997854232788086f, 0.03999999910593032837f);
    let v_147 = dot(r7.xyz, r3.xyz);
    r7.x = clamp(vec4<f32>(v_147, v_147, v_147, v_147).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r7.x * r7.w);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r9.w);
    r7.x = (r7.x * r8.w);
    r7.y = (r8.y * r8.z);
    r7.x = (r7.y * r7.x);
    r7.x = (r8.x * r7.x);
    r7.x = (r5.w * r7.x);
    let v_148 = (r7.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_148.xyz, r7.w);
  }
  r8.x = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r8.x) != 0u)) {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.x)));
    r8.x = bitcast<f32>(select(0u, 4294967295u, (1i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    if ((bitcast<u32>(r8.x) != 0u)) {
      r8.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_149 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[4u].xyz);
      r8 = vec4<f32>(r8.x, v_149.xyz);
      let v_150 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_150.xyz, r10.w);
      r9.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[20u].w);
      let v_151 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_151.xyz, r10.w);
      let v_152 = (r10.xyz + v_3.xyz);
      r10 = vec4<f32>(v_152.xyz, r10.w);
      let v_153 = bitcast<vec3<u32>>(r8.xxx);
      let v_154 = r8.yzw;
      let v_155 = select(r10.xyz, v_154, (v_153 != vec3<u32>()));
      r8 = vec4<f32>(v_155.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      let v_156 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_156.xyz, r8.w);
      r9.w = dot(r8.xyz, r8.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_157 = (r8.xyz * r9.www);
      r8 = vec4<f32>(v_157.xyz, r8.w);
      r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.w, cb3_3.tint_symbol_2[12u].w);
      r8.w = (r8.w / r9.w);
      let v_158 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.w = dot(r8.xyz, v_158.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      r10.x = dot(r8.xyz, r3.xyz);
      r10.y = clamp(r10.xxxx.y, 0.0f, 1.0f);
      r10.y = ((-(abs(r10.xxxx))).y + r10.y);
      let v_159 = abs(r10.xxxx);
      r10.x = fma(r1.w, r10.y, v_159.x);
      r10.y = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[19u].w == 0.0f))));
      r10.z = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_5[47u].x == 1.0f)));
      r10.y = bitcast<f32>((bitcast<u32>(r10.z) & bitcast<u32>(r10.y)));
      if ((bitcast<u32>(r10.y) != 0u)) {
        let v_160 = (r6.xyz + cb6_6.tint_symbol_5[22u].xyz);
        r10 = vec4<f32>(r10.x, v_160.xyz);
        r11.x = dot(r10.yzw, cb6_6.tint_symbol_5[19u].xyz);
        r11.y = dot(r10.yzw, cb6_6.tint_symbol_5[20u].xyz);
        r11.z = dot(r10.yzw, cb6_6.tint_symbol_5[21u].xyz);
        r11.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[19u].w == 3.0f))));
        if ((bitcast<u32>(r11.w) != 0u)) {
          let v_161 = (-(r11.xyzx)).xyz;
          r12 = vec4<f32>(v_161.xyz, r12.w);
          r11.w = dot(r12.xyz, r12.xyz);
          r11.w = sqrt(r11.w);
          r11.w = (r11.w * cb6_6.tint_symbol_5[21u].w);
          let v_162 = r12.xyzx;
          r11.w = textureSampleCompareLevel(t25, s14, v_162.xyz, r11.w);
        } else {
          let v_163 = -(r11.zzzz);
          let v_164 = (r11.xy / v_163.xy);
          r11 = vec4<f32>(v_164.xy, r11.zw);
          let v_165 = fma(r11.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
          r11 = vec4<f32>(v_165.xy, r11.zw);
          r10.y = dot(r10.yzw, r10.yzw);
          r10.y = sqrt(r10.y);
          r10.y = (r10.y * cb6_6.tint_symbol_5[21u].w);
          let v_166 = r11.xyxx;
          r11.w = textureSampleCompareLevel(t26, s14, v_166.xy, r10.y);
        }
      } else {
        r11.w = 1.0f;
      }
      r10.y = (r10.x * r11.w);
      r10.y = (r9.w * r10.y);
      r10.y = (r8.w * r10.y);
      let v_167 = (r10.yyy * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(r10.x, v_167.xyz);
      let v_168 = fma(r10.yzw, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_168.xyz, r9.w);
      let v_169 = fma(r0.xyz, r2.zzz, r8.xyz);
      r8 = vec4<f32>(v_169.xyz, r8.w);
      r10.y = dot(r8.xyz, r8.xyz);
      r10.y = inverseSqrt(r10.y);
      let v_170 = (r8.xyz * r10.yyy);
      r8 = vec4<f32>(v_170.xyz, r8.w);
      let v_171 = dot(r8.xyz, r4.xyz);
      r10.y = clamp(vec4<f32>(v_171, v_171, v_171, v_171).y, 0.0f, 1.0f);
      r10.y = ((-(r10.yyyy)).y + 1.0f);
      r10.z = (r10.y * r10.y);
      r10.z = (r10.z * r10.z);
      r10.y = (r10.z * r10.y);
      r10.y = fma(r10.y, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_172 = dot(r8.xyz, r3.xyz);
      r8.x = clamp(vec4<f32>(v_172, v_172, v_172, v_172).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r7.w * r8.x);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r10.y);
      r8.x = (r8.x * r11.w);
      r8.y = (r9.w * r10.x);
      r8.x = (r8.y * r8.x);
      r8.x = (r8.w * r8.x);
      r8.x = (r5.w * r8.x);
      let v_173 = fma(r8.xxx, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_173.xyz, r7.w);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.x)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r8.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_174 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[5u].xyz);
      r8 = vec4<f32>(r8.x, v_174.xyz);
      let v_175 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      r9.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[21u].w);
      let v_176 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_176.xyz, r10.w);
      let v_177 = (r10.xyz + v_3.xyz);
      r10 = vec4<f32>(v_177.xyz, r10.w);
      let v_178 = bitcast<vec3<u32>>(r8.xxx);
      let v_179 = r8.yzw;
      let v_180 = select(r10.xyz, v_179, (v_178 != vec3<u32>()));
      r8 = vec4<f32>(v_180.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      let v_181 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_181.xyz, r8.w);
      r9.w = dot(r8.xyz, r8.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_182 = (r8.xyz * r9.www);
      r8 = vec4<f32>(v_182.xyz, r8.w);
      r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.w, cb3_3.tint_symbol_2[13u].w);
      r8.w = (r8.w / r9.w);
      let v_183 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.w = dot(r8.xyz, v_183.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      r10.x = dot(r8.xyz, r3.xyz);
      r10.y = clamp(r10.xxxx.y, 0.0f, 1.0f);
      r10.y = ((-(abs(r10.xxxx))).y + r10.y);
      let v_184 = abs(r10.xxxx);
      r10.x = fma(r1.w, r10.y, v_184.x);
      r10.y = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[23u].w == 0.0f))));
      r10.z = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_5[47u].x == 1.0f)));
      r10.y = bitcast<f32>((bitcast<u32>(r10.z) & bitcast<u32>(r10.y)));
      if ((bitcast<u32>(r10.y) != 0u)) {
        let v_185 = (r6.xyz + cb6_6.tint_symbol_5[26u].xyz);
        r10 = vec4<f32>(r10.x, v_185.xyz);
        r11.x = dot(r10.yzw, cb6_6.tint_symbol_5[23u].xyz);
        r11.y = dot(r10.yzw, cb6_6.tint_symbol_5[24u].xyz);
        r11.z = dot(r10.yzw, cb6_6.tint_symbol_5[25u].xyz);
        r11.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[23u].w == 3.0f))));
        if ((bitcast<u32>(r11.w) != 0u)) {
          let v_186 = (-(r11.xyzx)).xyz;
          r12 = vec4<f32>(v_186.xyz, r12.w);
          r11.w = dot(r12.xyz, r12.xyz);
          r11.w = sqrt(r11.w);
          r11.w = (r11.w * cb6_6.tint_symbol_5[25u].w);
          let v_187 = r12.xyzx;
          r11.w = textureSampleCompareLevel(t27, s14, v_187.xyz, r11.w);
        } else {
          let v_188 = -(r11.zzzz);
          let v_189 = (r11.xy / v_188.xy);
          r11 = vec4<f32>(v_189.xy, r11.zw);
          let v_190 = fma(r11.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
          r11 = vec4<f32>(v_190.xy, r11.zw);
          r10.y = dot(r10.yzw, r10.yzw);
          r10.y = sqrt(r10.y);
          r10.y = (r10.y * cb6_6.tint_symbol_5[25u].w);
          let v_191 = r11.xyxx;
          r11.w = textureSampleCompareLevel(t28, s14, v_191.xy, r10.y);
        }
      } else {
        r11.w = 1.0f;
      }
      r10.y = (r10.x * r11.w);
      r10.y = (r9.w * r10.y);
      r10.y = (r8.w * r10.y);
      let v_192 = (r10.yyy * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(r10.x, v_192.xyz);
      let v_193 = fma(r10.yzw, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_193.xyz, r9.w);
      let v_194 = fma(r0.xyz, r2.zzz, r8.xyz);
      r8 = vec4<f32>(v_194.xyz, r8.w);
      r10.y = dot(r8.xyz, r8.xyz);
      r10.y = inverseSqrt(r10.y);
      let v_195 = (r8.xyz * r10.yyy);
      r8 = vec4<f32>(v_195.xyz, r8.w);
      let v_196 = dot(r8.xyz, r4.xyz);
      r10.y = clamp(vec4<f32>(v_196, v_196, v_196, v_196).y, 0.0f, 1.0f);
      r10.y = ((-(r10.yyyy)).y + 1.0f);
      r10.z = (r10.y * r10.y);
      r10.z = (r10.z * r10.z);
      r10.y = (r10.z * r10.y);
      r10.y = fma(r10.y, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_197 = dot(r8.xyz, r3.xyz);
      r8.x = clamp(vec4<f32>(v_197, v_197, v_197, v_197).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r7.w * r8.x);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r10.y);
      r8.x = (r8.x * r11.w);
      r8.y = (r9.w * r10.x);
      r8.x = (r8.y * r8.x);
      r8.x = (r8.w * r8.x);
      r8.x = (r5.w * r8.x);
      let v_198 = fma(r8.xxx, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_198.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.x)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_199 = (v_3.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r8 = vec4<f32>(v_199.xyz, r8.w);
      let v_200 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_200.xyz, r10.w);
      r8.w = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[22u].w);
      let v_201 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.www, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_201.xyz, r10.w);
      let v_202 = (r10.xyz + v_3.xyz);
      r10 = vec4<f32>(v_202.xyz, r10.w);
      let v_203 = bitcast<vec3<u32>>(r4.www);
      let v_204 = r8.xyz;
      let v_205 = select(r10.xyz, v_204, (v_203 != vec3<u32>()));
      r8 = vec4<f32>(v_205.xyz, r8.w);
      r4.w = dot(r8.xyz, r8.xyz);
      let v_206 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_206.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_207 = (r8.www * r8.xyz);
      r8 = vec4<f32>(v_207.xyz, r8.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r4.w, cb3_3.tint_symbol_2[14u].w);
      r4.w = (r4.w / r8.w);
      let v_208 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.w = dot(r8.xyz, v_208.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      r9.w = dot(r8.xyz, r3.xyz);
      r10.x = clamp(r9.wwww.x, 0.0f, 1.0f);
      r10.x = ((-(abs(r9.wwww))).x + r10.x);
      let v_209 = abs(r9.wwww);
      r9.w = fma(r1.w, r10.x, v_209.w);
      r10.x = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[27u].w == 0.0f))));
      r10.y = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_5[47u].x == 1.0f)));
      r10.x = bitcast<f32>((bitcast<u32>(r10.y) & bitcast<u32>(r10.x)));
      if ((bitcast<u32>(r10.x) != 0u)) {
        let v_210 = (r6.xyz + cb6_6.tint_symbol_5[30u].xyz);
        r6 = vec4<f32>(v_210.xyz, r6.w);
        r10.x = dot(r6.xyz, cb6_6.tint_symbol_5[27u].xyz);
        r10.y = dot(r6.xyz, cb6_6.tint_symbol_5[28u].xyz);
        r10.z = dot(r6.xyz, cb6_6.tint_symbol_5[29u].xyz);
        r10.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[27u].w == 3.0f))));
        if ((bitcast<u32>(r10.w) != 0u)) {
          let v_211 = (-(r10.xyzx)).xyz;
          r11 = vec4<f32>(v_211.xyz, r11.w);
          r10.w = dot(r11.xyz, r11.xyz);
          r10.w = sqrt(r10.w);
          r10.w = (r10.w * cb6_6.tint_symbol_5[29u].w);
          let v_212 = r11.xyzx;
          r10.w = textureSampleCompareLevel(t29, s14, v_212.xyz, r10.w);
        } else {
          let v_213 = -(r10.zzzz);
          let v_214 = (r10.xy / v_213.xy);
          r10 = vec4<f32>(v_214.xy, r10.zw);
          let v_215 = fma(r10.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
          r10 = vec4<f32>(v_215.xy, r10.zw);
          r6.x = dot(r6.xyz, r6.xyz);
          r6.x = sqrt(r6.x);
          r6.x = (r6.x * cb6_6.tint_symbol_5[29u].w);
          let v_216 = r10.xyxx;
          r10.w = textureSampleCompareLevel(t30, s14, v_216.xy, r6.x);
        }
      } else {
        r10.w = 1.0f;
      }
      r6.x = (r9.w * r10.w);
      r6.x = (r8.w * r6.x);
      r6.x = (r4.w * r6.x);
      let v_217 = (r6.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r6 = vec4<f32>(v_217.xyz, r6.w);
      let v_218 = fma(r6.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_218.xyz, r9.w);
      let v_219 = fma(r0.xyz, r2.zzz, r8.xyz);
      r0 = vec4<f32>(v_219.xyz, r0.w);
      r2.z = dot(r0.xyz, r0.xyz);
      r2.z = inverseSqrt(r2.z);
      let v_220 = (r0.xyz * r2.zzz);
      r0 = vec4<f32>(v_220.xyz, r0.w);
      let v_221 = dot(r0.xyz, r4.xyz);
      r2.z = clamp(vec4<f32>(v_221, v_221, v_221, v_221).z, 0.0f, 1.0f);
      r2.z = ((-(r2.zzzz)).z + 1.0f);
      r6.x = (r2.z * r2.z);
      r6.x = (r6.x * r6.x);
      r2.z = (r2.z * r6.x);
      r2.z = fma(r2.z, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_222 = dot(r0.xyz, r3.xyz);
      r0.x = clamp(vec4<f32>(v_222, v_222, v_222, v_222).x, 0.0f, 1.0f);
      r0.x = log2(r0.x);
      r0.x = (r0.x * r7.w);
      r0.x = exp2(r0.x);
      r0.x = (r0.x * r2.z);
      r0.x = (r0.x * r10.w);
      r0.y = (r8.w * r9.w);
      r0.x = (r0.y * r0.x);
      r0.x = (r4.w * r0.x);
      r0.x = (r5.w * r0.x);
      let v_223 = fma(r0.xxx, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_223.xyz, r7.w);
    }
  }
  r0.x = (r6.w * r6.w);
  r0.y = (r0.w * r0.w);
  let v_224 = (r7.xyz * r0.yyy);
  r0 = vec4<f32>(r0.x, v_224.xyz);
  let v_225 = fma(r0.xxx, r9.xyz, r0.yzw);
  r0 = vec4<f32>(v_225.xyz, r0.w);
  let v_226 = fma(r5.xyz, r3.www, r0.xyz);
  r0 = vec4<f32>(v_226.xyz, r0.w);
  r0.w = (r3.z + cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_227 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_227.xyz, r5.w);
  r2.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_228 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_228.xyz, r6.w);
  let v_229 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_229.xyz, r6.w);
  let v_230 = fma(r5.xyz, r2.zzz, r6.xyz);
  r5 = vec4<f32>(v_230.xyz, r5.w);
  let v_231 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_231.xyz, r5.w);
  let v_232 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_232.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_233 = dot(r7.xyz, r3.xyz);
  r0.w = clamp(vec4<f32>(v_233, v_233, v_233, v_233).w, 0.0f, 1.0f);
  let v_234 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r6.xyz);
  r6 = vec4<f32>(v_234.xyz, r6.w);
  let v_235 = fma(r6.xyz, r2.xxx, r5.xyz);
  r5 = vec4<f32>(v_235.xyz, r5.w);
  let v_236 = (r6.www * r5.xyz);
  r5 = vec4<f32>(v_236.xyz, r5.w);
  let v_237 = fma(r5.xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_237.xyz, r0.w);
  r0.w = ((-(r6.wwww)).w + 1.0f);
  r1.x = dot((-(r4.xyzx)).xyz, r3.xyz);
  r1.x = (r1.x + r1.x);
  let v_238 = -(r1.xxxx);
  let v_239 = -(r4.xyzx);
  let v_240 = fma(r3.xyz, v_238.xyz, v_239.xyz);
  r1 = vec4<f32>(v_240.xyz, r1.w);
  let v_241 = clamp(((r2.wwww * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, v_241.xy);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r3.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.y = (r2.z * cb5_5.tint_symbol_3[6u].z);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r3.x)));
  r3.z = fma(r2.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.z = (r2.z * r2.z);
  r2.z = fma(r2.z, 5.0f, r3.x);
  let v_242 = bitcast<u32>(r3.y);
  let v_243 = r3.z;
  r2.z = select(r2.z, v_243, (v_242 != 0u));
  let v_244 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_244.xyz, r3.w);
  r1.x = (abs(r1.zzzz).x + 1.0f);
  let v_245 = (r3.xyz / r1.xxx);
  r3 = vec4<f32>(v_245.xyz, r3.w);
  let v_246 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_246.xyz, r3.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_247 = bitcast<vec2<u32>>(r1.xx);
  let v_248 = r3.xy;
  let v_249 = select(r3.zy, v_248, (v_247 != vec2<u32>()));
  r1 = vec4<f32>(v_249.xy, r1.zw);
  let v_250 = r2.z;
  r3 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_250);
  r1.x = max(r2.y, r2.x);
  let v_251 = (r1.xxx * r3.xyz);
  r1 = vec4<f32>(v_251.xyz, r1.w);
  let v_252 = (r2.www * r1.xyz);
  r2 = vec4<f32>(v_252.xyz, r2.w);
  let v_253 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_253.xyz, r2.w);
  let v_254 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_254.xyz, r1.w);
  let v_255 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_255.xyz, r0.w);
  o0.w = clamp(((r1.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_256 = (v6.xy * cb2_2.tint_symbol_1[18u].zw);
    r1 = vec4<f32>(v_256.xy, r1.zw);
    r1 = textureSample(t11, s11, r1.xyxx.xy);
    r0.w = (r1.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  r0.w = (r0.w * v5.w);
  let v_257 = ((-(r0.xyzx)).xyz + v5.xyz);
  r1 = vec4<f32>(v_257.xyz, r1.w);
  let v_258 = fma(r0.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_258.xyz, r0.w);
  let v_259 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_259.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @builtin(position) v_260 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v_260);
  return o0;
}
