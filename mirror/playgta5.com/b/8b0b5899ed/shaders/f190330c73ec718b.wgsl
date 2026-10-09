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
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_64 = abs(r10.yyyy);
  r4.w = max(v_64.w, abs(r10.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_65 = (bitcast<u32>(r4.w) != 0u);
  let v_66 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_66, v_65);
  let v_67 = abs(r9.yyyy);
  r5.w = max(v_67.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_68 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_68 != 0u));
  let v_69 = abs(r8.yyyy);
  r5.w = max(v_69.w, abs(r8.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_70 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_70 != 0u));
  let v_71 = x0[bitcast<i32>(r3.w)];
  r7 = vec4<f32>(v_71.xyz, r7.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.w = (r3.w + 0.5f);
  r4.w = (r4.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r3.w = dot(r8, cb6_6.tint_symbol_5[12u]);
  r5.w = dot(r8, cb6_6.tint_symbol_5[13u]);
  r6.w = (r7.x + 0.5f);
  r4.w = fma(r7.y, 0.25f, r4.w);
  r7.x = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r7.z);
  r8.x = dpdx(r6.w);
  let v_72 = dpdx(r4.ww);
  let v_73 = r7;
  r7 = vec4<f32>(v_73.x, v_72.x, v_73.z, v_72.y);
  r8.z = dpdx(r3.w);
  r9.y = dpdy(r6.w);
  let v_74 = dpdy(r4.ww);
  let v_75 = r9;
  r9 = vec4<f32>(v_74.x, v_75.y, v_74.y, v_75.w);
  r9.w = dpdy(r3.w);
  let v_76 = (r7.yw * r9.yw);
  let v_77 = r7;
  r7 = vec4<f32>(v_77.x, v_76.x, v_77.z, v_76.y);
  let v_78 = -(r7.ywyy);
  let v_79 = fma(r8.xz, r9.xz, v_78.xy);
  r10 = vec4<f32>(v_79.xy, r10.zw);
  r7.y = (1.0f / r10.x);
  r7.w = (r8.z * r9.y);
  let v_80 = -(r7.wwww);
  r10.z = fma(r8.x, r9.w, v_80.z);
  let v_81 = (r7.yy * r10.yz);
  let v_82 = r7;
  r7 = vec4<f32>(v_82.x, v_81.x, v_82.z, v_81.y);
  let v_83 = max(r7.yw, vec2<f32>());
  let v_84 = r7;
  r7 = vec4<f32>(v_84.x, v_83.x, v_84.z, v_83.y);
  let v_85 = min(r7.yw, vec2<f32>(0.5f));
  let v_86 = r7;
  r7 = vec4<f32>(v_86.x, v_85.x, v_86.z, v_85.y);
  r3.w = fma((-(r5.wwww)).w, r7.y, r3.w);
  r3.w = fma((-(r5.wwww)).w, r7.w, r3.w);
  let v_87 = bitcast<u32>(r7.x);
  let v_88 = r3.w;
  r3.w = select(r7.z, v_88, (v_87 != 0u));
  r7.x = (r6.w + cb6_6.tint_symbol_5[14u].z);
  r7.y = fma(cb6_6.tint_symbol_5[14u].w, 0.25f, r4.w);
  let v_89 = r7.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_89.xy, r3.w);
  r4.w = dot(r3.xyz, v_43.xyz);
  r5.w = clamp(r4.wwww.w, 0.0f, 1.0f);
  r5.w = ((-(abs(r4.wwww))).w + r5.w);
  let v_90 = abs(r4.wwww);
  r4.w = fma(r1.w, r5.w, v_90.w);
  let v_91 = dot(r4.xyz, r3.xyz);
  r7.x = clamp(vec4<f32>(v_91, v_91, v_91, v_91).x, 0.0f, 1.0f);
  let v_92 = dot(r5.xyz, v_43.xyz);
  r7.y = clamp(vec4<f32>(v_92, v_92, v_92, v_92).y, 0.0f, 1.0f);
  let v_93 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_93.xy, r7.zw);
  let v_94 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_94.xy);
  let v_95 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_95.xy);
  let v_96 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_96.xy, r7.zw);
  let v_97 = fma(r7.xy, vec2<f32>(0.95999997854232788086f), vec2<f32>(0.03999999910593032837f));
  r7 = vec4<f32>(v_97.xy, r7.zw);
  let v_98 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_98.xy);
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
  let v_99 = fma(r1.xyz, r4.www, r5.xxx);
  r5 = vec4<f32>(v_99.xyz, r5.w);
  let v_100 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_100.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_101 = (v_3.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_101.xyz, r8.w);
    let v_102 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_102.xyz, r9.w);
    r7.y = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[19u].wwww)).y, 0.0f, 1.0f);
    r7.y = (r7.y * cb3_3.tint_symbol_2[19u].w);
    let v_103 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.yyy, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_103.xyz, r9.w);
    let v_104 = (r9.xyz + v_3.xyz);
    r9 = vec4<f32>(v_104.xyz, r9.w);
    let v_105 = bitcast<vec3<u32>>(r7.xxx);
    let v_106 = r8.xyz;
    let v_107 = select(r9.xyz, v_106, (v_105 != vec3<u32>()));
    r7 = vec4<f32>(v_107.xyz, r7.w);
    r8.x = dot(r7.xyz, r7.xyz);
    let v_108 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_108.xyz, r7.w);
    r8.y = dot(r7.xyz, r7.xyz);
    r8.y = inverseSqrt(r8.y);
    let v_109 = (r7.xyz * r8.yyy);
    r7 = vec4<f32>(v_109.xyz, r7.w);
    r8.x = clamp(fma(-(r8.xxxx), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r8.y = ((-(cb3_3.tint_symbol_2[11u].wwww)).y + 1.0f);
    r8.y = fma(r8.y, r8.x, cb3_3.tint_symbol_2[11u].w);
    r8.x = (r8.x / r8.y);
    let v_110 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.y = dot(r7.xyz, v_110.xyz);
    r8.y = clamp(fma(r8.yyyy, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).y, 0.0f, 1.0f);
    r8.z = dot(r7.xyz, r3.xyz);
    r8.w = clamp(r8.zzzz.w, 0.0f, 1.0f);
    r8.w = ((-(abs(r8.zzzz))).w + r8.w);
    let v_111 = abs(r8.zzzz);
    r8.z = fma(r1.w, r8.w, v_111.z);
    r8.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[15u].w == 0.0f))));
    r9.x = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_5[47u].x == 1.0f)));
    r8.w = bitcast<f32>((bitcast<u32>(r8.w) & bitcast<u32>(r9.x)));
    if ((bitcast<u32>(r8.w) != 0u)) {
      let v_112 = (r6.xyz + cb6_6.tint_symbol_5[18u].xyz);
      r9 = vec4<f32>(v_112.xyz, r9.w);
      r10.x = dot(r9.xyz, cb6_6.tint_symbol_5[15u].xyz);
      r10.y = dot(r9.xyz, cb6_6.tint_symbol_5[16u].xyz);
      r10.z = dot(r9.xyz, cb6_6.tint_symbol_5[17u].xyz);
      r8.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[15u].w == 3.0f))));
      if ((bitcast<u32>(r8.w) != 0u)) {
        let v_113 = (-(r10.xyzx)).xyz;
        r11 = vec4<f32>(v_113.xyz, r11.w);
        r8.w = dot(r11.xyz, r11.xyz);
        r8.w = sqrt(r8.w);
        r8.w = (r8.w * cb6_6.tint_symbol_5[17u].w);
        let v_114 = r11.xyzx;
        r8.w = textureSampleCompareLevel(t14, s14, v_114.xyz, r8.w);
      } else {
        let v_115 = -(r10.zzzz);
        let v_116 = (r10.xy / v_115.xy);
        r10 = vec4<f32>(v_116.xy, r10.zw);
        let v_117 = fma(r10.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
        r10 = vec4<f32>(v_117.xy, r10.zw);
        r9.x = dot(r9.xyz, r9.xyz);
        r9.x = sqrt(r9.x);
        r9.x = (r9.x * cb6_6.tint_symbol_5[17u].w);
        let v_118 = r10.xyxx;
        r8.w = textureSampleCompareLevel(t24, s14, v_118.xy, r9.x);
      }
    } else {
      r8.w = 1.0f;
    }
    r9.x = (r8.z * r8.w);
    r9.x = (r8.y * r9.x);
    r9.x = (r8.x * r9.x);
    let v_119 = (r9.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_119.xyz, r9.w);
    let v_120 = (r1.xyz * r9.xyz);
    r9 = vec4<f32>(v_120.xyz, r9.w);
    let v_121 = fma(r0.xyz, r2.zzz, r7.xyz);
    r7 = vec4<f32>(v_121.xyz, r7.w);
    r9.w = dot(r7.xyz, r7.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_122 = (r7.xyz * r9.www);
    r7 = vec4<f32>(v_122.xyz, r7.w);
    let v_123 = dot(r7.xyz, r4.xyz);
    r9.w = clamp(vec4<f32>(v_123, v_123, v_123, v_123).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.x = (r9.w * r9.w);
    r10.x = (r10.x * r10.x);
    r9.w = (r9.w * r10.x);
    r9.w = fma(r9.w, 0.95999997854232788086f, 0.03999999910593032837f);
    let v_124 = dot(r7.xyz, r3.xyz);
    r7.x = clamp(vec4<f32>(v_124, v_124, v_124, v_124).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r7.x * r7.w);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r9.w);
    r7.x = (r7.x * r8.w);
    r7.y = (r8.y * r8.z);
    r7.x = (r7.y * r7.x);
    r7.x = (r8.x * r7.x);
    r7.x = (r5.w * r7.x);
    let v_125 = (r7.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_125.xyz, r7.w);
  }
  r8.x = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r8.x) != 0u)) {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.x)));
    r8.x = bitcast<f32>(select(0u, 4294967295u, (1i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    if ((bitcast<u32>(r8.x) != 0u)) {
      r8.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_126 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[4u].xyz);
      r8 = vec4<f32>(r8.x, v_126.xyz);
      let v_127 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_127.xyz, r10.w);
      r9.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[20u].w);
      let v_128 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_128.xyz, r10.w);
      let v_129 = (r10.xyz + v_3.xyz);
      r10 = vec4<f32>(v_129.xyz, r10.w);
      let v_130 = bitcast<vec3<u32>>(r8.xxx);
      let v_131 = r8.yzw;
      let v_132 = select(r10.xyz, v_131, (v_130 != vec3<u32>()));
      r8 = vec4<f32>(v_132.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      let v_133 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_133.xyz, r8.w);
      r9.w = dot(r8.xyz, r8.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_134 = (r8.xyz * r9.www);
      r8 = vec4<f32>(v_134.xyz, r8.w);
      r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.w, cb3_3.tint_symbol_2[12u].w);
      r8.w = (r8.w / r9.w);
      let v_135 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.w = dot(r8.xyz, v_135.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      r10.x = dot(r8.xyz, r3.xyz);
      r10.y = clamp(r10.xxxx.y, 0.0f, 1.0f);
      r10.y = ((-(abs(r10.xxxx))).y + r10.y);
      let v_136 = abs(r10.xxxx);
      r10.x = fma(r1.w, r10.y, v_136.x);
      r10.y = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[19u].w == 0.0f))));
      r10.z = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_5[47u].x == 1.0f)));
      r10.y = bitcast<f32>((bitcast<u32>(r10.z) & bitcast<u32>(r10.y)));
      if ((bitcast<u32>(r10.y) != 0u)) {
        let v_137 = (r6.xyz + cb6_6.tint_symbol_5[22u].xyz);
        r10 = vec4<f32>(r10.x, v_137.xyz);
        r11.x = dot(r10.yzw, cb6_6.tint_symbol_5[19u].xyz);
        r11.y = dot(r10.yzw, cb6_6.tint_symbol_5[20u].xyz);
        r11.z = dot(r10.yzw, cb6_6.tint_symbol_5[21u].xyz);
        r11.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[19u].w == 3.0f))));
        if ((bitcast<u32>(r11.w) != 0u)) {
          let v_138 = (-(r11.xyzx)).xyz;
          r12 = vec4<f32>(v_138.xyz, r12.w);
          r11.w = dot(r12.xyz, r12.xyz);
          r11.w = sqrt(r11.w);
          r11.w = (r11.w * cb6_6.tint_symbol_5[21u].w);
          let v_139 = r12.xyzx;
          r11.w = textureSampleCompareLevel(t25, s14, v_139.xyz, r11.w);
        } else {
          let v_140 = -(r11.zzzz);
          let v_141 = (r11.xy / v_140.xy);
          r11 = vec4<f32>(v_141.xy, r11.zw);
          let v_142 = fma(r11.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
          r11 = vec4<f32>(v_142.xy, r11.zw);
          r10.y = dot(r10.yzw, r10.yzw);
          r10.y = sqrt(r10.y);
          r10.y = (r10.y * cb6_6.tint_symbol_5[21u].w);
          let v_143 = r11.xyxx;
          r11.w = textureSampleCompareLevel(t26, s14, v_143.xy, r10.y);
        }
      } else {
        r11.w = 1.0f;
      }
      r10.y = (r10.x * r11.w);
      r10.y = (r9.w * r10.y);
      r10.y = (r8.w * r10.y);
      let v_144 = (r10.yyy * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(r10.x, v_144.xyz);
      let v_145 = fma(r10.yzw, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_145.xyz, r9.w);
      let v_146 = fma(r0.xyz, r2.zzz, r8.xyz);
      r8 = vec4<f32>(v_146.xyz, r8.w);
      r10.y = dot(r8.xyz, r8.xyz);
      r10.y = inverseSqrt(r10.y);
      let v_147 = (r8.xyz * r10.yyy);
      r8 = vec4<f32>(v_147.xyz, r8.w);
      let v_148 = dot(r8.xyz, r4.xyz);
      r10.y = clamp(vec4<f32>(v_148, v_148, v_148, v_148).y, 0.0f, 1.0f);
      r10.y = ((-(r10.yyyy)).y + 1.0f);
      r10.z = (r10.y * r10.y);
      r10.z = (r10.z * r10.z);
      r10.y = (r10.z * r10.y);
      r10.y = fma(r10.y, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_149 = dot(r8.xyz, r3.xyz);
      r8.x = clamp(vec4<f32>(v_149, v_149, v_149, v_149).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r7.w * r8.x);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r10.y);
      r8.x = (r8.x * r11.w);
      r8.y = (r9.w * r10.x);
      r8.x = (r8.y * r8.x);
      r8.x = (r8.w * r8.x);
      r8.x = (r5.w * r8.x);
      let v_150 = fma(r8.xxx, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_150.xyz, r7.w);
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
      let v_151 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[5u].xyz);
      r8 = vec4<f32>(r8.x, v_151.xyz);
      let v_152 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_152.xyz, r10.w);
      r9.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[21u].w);
      let v_153 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_153.xyz, r10.w);
      let v_154 = (r10.xyz + v_3.xyz);
      r10 = vec4<f32>(v_154.xyz, r10.w);
      let v_155 = bitcast<vec3<u32>>(r8.xxx);
      let v_156 = r8.yzw;
      let v_157 = select(r10.xyz, v_156, (v_155 != vec3<u32>()));
      r8 = vec4<f32>(v_157.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      let v_158 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_158.xyz, r8.w);
      r9.w = dot(r8.xyz, r8.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_159 = (r8.xyz * r9.www);
      r8 = vec4<f32>(v_159.xyz, r8.w);
      r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.w, cb3_3.tint_symbol_2[13u].w);
      r8.w = (r8.w / r9.w);
      let v_160 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.w = dot(r8.xyz, v_160.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      r10.x = dot(r8.xyz, r3.xyz);
      r10.y = clamp(r10.xxxx.y, 0.0f, 1.0f);
      r10.y = ((-(abs(r10.xxxx))).y + r10.y);
      let v_161 = abs(r10.xxxx);
      r10.x = fma(r1.w, r10.y, v_161.x);
      r10.y = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[23u].w == 0.0f))));
      r10.z = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_5[47u].x == 1.0f)));
      r10.y = bitcast<f32>((bitcast<u32>(r10.z) & bitcast<u32>(r10.y)));
      if ((bitcast<u32>(r10.y) != 0u)) {
        let v_162 = (r6.xyz + cb6_6.tint_symbol_5[26u].xyz);
        r10 = vec4<f32>(r10.x, v_162.xyz);
        r11.x = dot(r10.yzw, cb6_6.tint_symbol_5[23u].xyz);
        r11.y = dot(r10.yzw, cb6_6.tint_symbol_5[24u].xyz);
        r11.z = dot(r10.yzw, cb6_6.tint_symbol_5[25u].xyz);
        r11.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[23u].w == 3.0f))));
        if ((bitcast<u32>(r11.w) != 0u)) {
          let v_163 = (-(r11.xyzx)).xyz;
          r12 = vec4<f32>(v_163.xyz, r12.w);
          r11.w = dot(r12.xyz, r12.xyz);
          r11.w = sqrt(r11.w);
          r11.w = (r11.w * cb6_6.tint_symbol_5[25u].w);
          let v_164 = r12.xyzx;
          r11.w = textureSampleCompareLevel(t27, s14, v_164.xyz, r11.w);
        } else {
          let v_165 = -(r11.zzzz);
          let v_166 = (r11.xy / v_165.xy);
          r11 = vec4<f32>(v_166.xy, r11.zw);
          let v_167 = fma(r11.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
          r11 = vec4<f32>(v_167.xy, r11.zw);
          r10.y = dot(r10.yzw, r10.yzw);
          r10.y = sqrt(r10.y);
          r10.y = (r10.y * cb6_6.tint_symbol_5[25u].w);
          let v_168 = r11.xyxx;
          r11.w = textureSampleCompareLevel(t28, s14, v_168.xy, r10.y);
        }
      } else {
        r11.w = 1.0f;
      }
      r10.y = (r10.x * r11.w);
      r10.y = (r9.w * r10.y);
      r10.y = (r8.w * r10.y);
      let v_169 = (r10.yyy * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(r10.x, v_169.xyz);
      let v_170 = fma(r10.yzw, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_170.xyz, r9.w);
      let v_171 = fma(r0.xyz, r2.zzz, r8.xyz);
      r8 = vec4<f32>(v_171.xyz, r8.w);
      r10.y = dot(r8.xyz, r8.xyz);
      r10.y = inverseSqrt(r10.y);
      let v_172 = (r8.xyz * r10.yyy);
      r8 = vec4<f32>(v_172.xyz, r8.w);
      let v_173 = dot(r8.xyz, r4.xyz);
      r10.y = clamp(vec4<f32>(v_173, v_173, v_173, v_173).y, 0.0f, 1.0f);
      r10.y = ((-(r10.yyyy)).y + 1.0f);
      r10.z = (r10.y * r10.y);
      r10.z = (r10.z * r10.z);
      r10.y = (r10.z * r10.y);
      r10.y = fma(r10.y, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_174 = dot(r8.xyz, r3.xyz);
      r8.x = clamp(vec4<f32>(v_174, v_174, v_174, v_174).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r7.w * r8.x);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r10.y);
      r8.x = (r8.x * r11.w);
      r8.y = (r9.w * r10.x);
      r8.x = (r8.y * r8.x);
      r8.x = (r8.w * r8.x);
      r8.x = (r5.w * r8.x);
      let v_175 = fma(r8.xxx, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_175.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.x)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_176 = (v_3.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r8 = vec4<f32>(v_176.xyz, r8.w);
      let v_177 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_177.xyz, r10.w);
      r8.w = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[22u].w);
      let v_178 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.www, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_178.xyz, r10.w);
      let v_179 = (r10.xyz + v_3.xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      let v_180 = bitcast<vec3<u32>>(r4.www);
      let v_181 = r8.xyz;
      let v_182 = select(r10.xyz, v_181, (v_180 != vec3<u32>()));
      r8 = vec4<f32>(v_182.xyz, r8.w);
      r4.w = dot(r8.xyz, r8.xyz);
      let v_183 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_183.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_184 = (r8.www * r8.xyz);
      r8 = vec4<f32>(v_184.xyz, r8.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r4.w, cb3_3.tint_symbol_2[14u].w);
      r4.w = (r4.w / r8.w);
      let v_185 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.w = dot(r8.xyz, v_185.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      r9.w = dot(r8.xyz, r3.xyz);
      r10.x = clamp(r9.wwww.x, 0.0f, 1.0f);
      r10.x = ((-(abs(r9.wwww))).x + r10.x);
      let v_186 = abs(r9.wwww);
      r9.w = fma(r1.w, r10.x, v_186.w);
      r10.x = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[27u].w == 0.0f))));
      r10.y = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_5[47u].x == 1.0f)));
      r10.x = bitcast<f32>((bitcast<u32>(r10.y) & bitcast<u32>(r10.x)));
      if ((bitcast<u32>(r10.x) != 0u)) {
        let v_187 = (r6.xyz + cb6_6.tint_symbol_5[30u].xyz);
        r6 = vec4<f32>(v_187.xyz, r6.w);
        r10.x = dot(r6.xyz, cb6_6.tint_symbol_5[27u].xyz);
        r10.y = dot(r6.xyz, cb6_6.tint_symbol_5[28u].xyz);
        r10.z = dot(r6.xyz, cb6_6.tint_symbol_5[29u].xyz);
        r10.w = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_5[27u].w == 3.0f))));
        if ((bitcast<u32>(r10.w) != 0u)) {
          let v_188 = (-(r10.xyzx)).xyz;
          r11 = vec4<f32>(v_188.xyz, r11.w);
          r10.w = dot(r11.xyz, r11.xyz);
          r10.w = sqrt(r10.w);
          r10.w = (r10.w * cb6_6.tint_symbol_5[29u].w);
          let v_189 = r11.xyzx;
          r10.w = textureSampleCompareLevel(t29, s14, v_189.xyz, r10.w);
        } else {
          let v_190 = -(r10.zzzz);
          let v_191 = (r10.xy / v_190.xy);
          r10 = vec4<f32>(v_191.xy, r10.zw);
          let v_192 = fma(r10.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
          r10 = vec4<f32>(v_192.xy, r10.zw);
          r6.x = dot(r6.xyz, r6.xyz);
          r6.x = sqrt(r6.x);
          r6.x = (r6.x * cb6_6.tint_symbol_5[29u].w);
          let v_193 = r10.xyxx;
          r10.w = textureSampleCompareLevel(t30, s14, v_193.xy, r6.x);
        }
      } else {
        r10.w = 1.0f;
      }
      r6.x = (r9.w * r10.w);
      r6.x = (r8.w * r6.x);
      r6.x = (r4.w * r6.x);
      let v_194 = (r6.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r6 = vec4<f32>(v_194.xyz, r6.w);
      let v_195 = fma(r6.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_195.xyz, r9.w);
      let v_196 = fma(r0.xyz, r2.zzz, r8.xyz);
      r0 = vec4<f32>(v_196.xyz, r0.w);
      r2.z = dot(r0.xyz, r0.xyz);
      r2.z = inverseSqrt(r2.z);
      let v_197 = (r0.xyz * r2.zzz);
      r0 = vec4<f32>(v_197.xyz, r0.w);
      let v_198 = dot(r0.xyz, r4.xyz);
      r2.z = clamp(vec4<f32>(v_198, v_198, v_198, v_198).z, 0.0f, 1.0f);
      r2.z = ((-(r2.zzzz)).z + 1.0f);
      r6.x = (r2.z * r2.z);
      r6.x = (r6.x * r6.x);
      r2.z = (r2.z * r6.x);
      r2.z = fma(r2.z, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_199 = dot(r0.xyz, r3.xyz);
      r0.x = clamp(vec4<f32>(v_199, v_199, v_199, v_199).x, 0.0f, 1.0f);
      r0.x = log2(r0.x);
      r0.x = (r0.x * r7.w);
      r0.x = exp2(r0.x);
      r0.x = (r0.x * r2.z);
      r0.x = (r0.x * r10.w);
      r0.y = (r8.w * r9.w);
      r0.x = (r0.y * r0.x);
      r0.x = (r4.w * r0.x);
      r0.x = (r5.w * r0.x);
      let v_200 = fma(r0.xxx, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_200.xyz, r7.w);
    }
  }
  r0.x = (r6.w * r6.w);
  r0.y = (r0.w * r0.w);
  let v_201 = (r7.xyz * r0.yyy);
  r0 = vec4<f32>(r0.x, v_201.xyz);
  let v_202 = fma(r0.xxx, r9.xyz, r0.yzw);
  r0 = vec4<f32>(v_202.xyz, r0.w);
  let v_203 = fma(r5.xyz, r3.www, r0.xyz);
  r0 = vec4<f32>(v_203.xyz, r0.w);
  r0.w = (r3.z + cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_204 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_204.xyz, r5.w);
  r2.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_205 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_205.xyz, r6.w);
  let v_206 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_206.xyz, r6.w);
  let v_207 = fma(r5.xyz, r2.zzz, r6.xyz);
  r5 = vec4<f32>(v_207.xyz, r5.w);
  let v_208 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_208.xyz, r5.w);
  let v_209 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_209.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_210 = dot(r7.xyz, r3.xyz);
  r0.w = clamp(vec4<f32>(v_210, v_210, v_210, v_210).w, 0.0f, 1.0f);
  let v_211 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r6.xyz);
  r6 = vec4<f32>(v_211.xyz, r6.w);
  let v_212 = fma(r6.xyz, r2.xxx, r5.xyz);
  r5 = vec4<f32>(v_212.xyz, r5.w);
  let v_213 = (r6.www * r5.xyz);
  r5 = vec4<f32>(v_213.xyz, r5.w);
  let v_214 = fma(r5.xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_214.xyz, r0.w);
  r0.w = ((-(r6.wwww)).w + 1.0f);
  r1.x = dot((-(r4.xyzx)).xyz, r3.xyz);
  r1.x = (r1.x + r1.x);
  let v_215 = -(r1.xxxx);
  let v_216 = -(r4.xyzx);
  let v_217 = fma(r3.xyz, v_215.xyz, v_216.xyz);
  r1 = vec4<f32>(v_217.xyz, r1.w);
  let v_218 = clamp(((r2.wwww * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, v_218.xy);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r3.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.y = (r2.z * cb5_5.tint_symbol_3[6u].z);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r3.x)));
  r3.z = fma(r2.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.z = (r2.z * r2.z);
  r2.z = fma(r2.z, 5.0f, r3.x);
  let v_219 = bitcast<u32>(r3.y);
  let v_220 = r3.z;
  r2.z = select(r2.z, v_220, (v_219 != 0u));
  let v_221 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_221.xyz, r3.w);
  r1.x = (abs(r1.zzzz).x + 1.0f);
  let v_222 = (r3.xyz / r1.xxx);
  r3 = vec4<f32>(v_222.xyz, r3.w);
  let v_223 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_223.xyz, r3.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_224 = bitcast<vec2<u32>>(r1.xx);
  let v_225 = r3.xy;
  let v_226 = select(r3.zy, v_225, (v_224 != vec2<u32>()));
  r1 = vec4<f32>(v_226.xy, r1.zw);
  let v_227 = r2.z;
  r3 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_227);
  r1.x = max(r2.y, r2.x);
  let v_228 = (r1.xxx * r3.xyz);
  r1 = vec4<f32>(v_228.xyz, r1.w);
  let v_229 = (r2.www * r1.xyz);
  r2 = vec4<f32>(v_229.xyz, r2.w);
  let v_230 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_230.xyz, r2.w);
  let v_231 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_231.xyz, r1.w);
  let v_232 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_232.xyz, r0.w);
  o0.w = clamp(((r1.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_233 = (v6.xy * cb2_2.tint_symbol_1[18u].zw);
    r1 = vec4<f32>(v_233.xy, r1.zw);
    r1 = textureSample(t11, s11, r1.xyxx.xy);
    r0.w = (r1.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  r0.w = (r0.w * v5.w);
  let v_234 = ((-(r0.xyzx)).xyz + v5.xyz);
  r1 = vec4<f32>(v_234.xyz, r1.w);
  let v_235 = fma(r0.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_235.xyz, r0.w);
  let v_236 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_236.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @builtin(position) v_237 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v_237);
  return o0;
}
