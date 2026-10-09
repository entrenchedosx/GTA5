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

struct cb8_struct {
  tint_symbol_4 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb8_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

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
  let v_3 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = dot(v1.xyz, r0.xyz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.0f)));
  let v_4 = -(bitcast<vec4<i32>>(r1.xxxx));
  r0.w = bitcast<f32>((bitcast<i32>(r0.w) + v_4.w));
  r0.w = f32(bitcast<i32>(r0.w));
  let v_5 = (r0.www * v1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r2 = textureSample(t0, s0, v0.xyxx.xy);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_6 = (r0.www * r1.xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  r4 = textureSample(t4, s4, v0.xyxx.xy);
  let v_7 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_7.xy, r4.zw);
  r0.w = dot(r4.xyz, cb11_11.tint_symbol_4[4u].xyz);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[6u].x)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_8 = (r1.zxy * vec3<f32>(0.0f, 1.0f, 0.0f));
    r4 = vec4<f32>(v_8.xyz, r4.w);
    let v_9 = -(r4.xyzx);
    let v_10 = fma(r1.yzx, vec3<f32>(1.0f, 0.0f, 0.0f), v_9.xyz);
    r4 = vec4<f32>(v_10.xyz, r4.w);
    r1.w = dot(r4.xy, r4.xy);
    r1.w = inverseSqrt(r1.w);
    let v_11 = (r1.www * r4.xyz);
    r4 = vec4<f32>(v_11.xyz, r4.w);
    let v_12 = (r1.yzx * r4.zxy);
    r5 = vec4<f32>(v_12.xyz, r5.w);
    let v_13 = -(r5.xyzx);
    let v_14 = fma(r4.yzx, r1.zxy, v_13.xyz);
    r5 = vec4<f32>(v_14.xyz, r5.w);
    let v_15 = (v0.zw * cb11_11.tint_symbol_4[6u].yy);
    r6 = vec4<f32>(v_15.xy, r6.zw);
    r6 = textureSample(t5, s5, r6.xyxx.xy);
    let v_16 = (r6.ww * cb11_11.tint_symbol_4[6u].xz);
    r7 = vec4<f32>(v_16.xy, r7.zw);
    r8 = (-(r2) + vec4<f32>(1.0f));
    r2 = fma(r7.xxxx, r8, r2);
    r1.w = (r6.w * cb11_11.tint_symbol_4[7u].w);
    let v_17 = ((-(r2.xxyz)).xzw + cb11_11.tint_symbol_4[7u].xyz);
    r7 = vec4<f32>(v_17.x, r7.y, v_17.yz);
    let v_18 = fma(r1.www, r7.xzw, r2.xyz);
    r2 = vec4<f32>(v_18.xyz, r2.w);
    let v_19 = fma(r6.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r6 = vec4<f32>(v_19.xy, r6.zw);
    r1.w = dot(r6.xy, r6.xy);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.w = sqrt(abs(r1.wwww).w);
    r3.w = max(cb11_11.tint_symbol_4[6u].w, 0.00100000004749745131f);
    let v_20 = (r3.ww * r6.xy);
    r6 = vec4<f32>(v_20.xy, r6.zw);
    let v_21 = (r5.xyz * r6.yyy);
    r5 = vec4<f32>(v_21.xyz, r5.w);
    let v_22 = fma(r6.xxx, r4.xyz, r5.xyz);
    r4 = vec4<f32>(v_22.xyz, r4.w);
    let v_23 = fma(r1.www, r1.xyz, r4.xyz);
    r1 = vec4<f32>(v_23.xyz, r1.w);
    r1.w = dot(r1.xyz, r1.xyz);
    r1.w = inverseSqrt(r1.w);
    let v_24 = (r1.www * r1.xyz);
    r1 = vec4<f32>(v_24.xyz, r1.w);
    let v_25 = fma(r1.xyz, r7.yyy, r3.xyz);
    r1 = vec4<f32>(v_25.xyz, r1.w);
    r1.w = dot(r1.xyz, r1.xyz);
    r1.w = inverseSqrt(r1.w);
    let v_26 = (r1.www * r1.xyz);
    r3 = vec4<f32>(v_26.xyz, r3.w);
    r1.x = ((-(r6.wwww)).x + 1.0f);
  } else {
    r1.x = 1.0f;
  }
  r1.x = (r1.x * v4.w);
  let v_27 = (cb11_11.tint_symbol_4[1u].xyz + vec3<f32>(-1.0f));
  r1 = vec4<f32>(r1.x, v_27.xyz);
  let v_28 = fma(r1.xxx, r1.yzw, vec3<f32>(1.0f));
  r1 = vec4<f32>(v_28.xyz, r1.w);
  let v_29 = (r1.xyz * r2.xyz);
  r1 = vec4<f32>(v_29.xyz, r1.w);
  r1.w = clamp(fma(cb11_11.tint_symbol_4[1u].wwww, v4.wwww, r2.wwww).w, 0.0f, 1.0f);
  let v_30 = (r1.xyz * v4.xxx);
  r1 = vec4<f32>(v_30.xyz, r1.w);
  let v_31 = (v4.xx * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_31.xy, r2.zw);
  r2.z = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).z, 0.0f, 1.0f);
  r2.y = (r2.z * r2.y);
  r0.w = (r0.w * v4.x);
  let v_32 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_32.xyz, r1.w);
  let v_33 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).zw + vec2<f32>(1.0f, 2.0f));
  r2 = vec4<f32>(r2.xy, v_33.xy);
  r3.w = (r2.z * v4.z);
  let v_34 = (r2.ww * v0.zw);
  r4 = vec4<f32>(v_34.xy, r4.zw);
  r5 = textureSample(t3, s3, r4.xyxx.xy);
  r2.w = (cb5_5.tint_symbol_3[3u].z * cb11_11.tint_symbol_4[2u].z);
  r4.x = ((-(r5.xxxx)).x + r5.z);
  r5.x = fma(r2.w, r4.x, r5.x);
  let v_35 = (r5.xy * cb11_11.tint_symbol_4[2u].xx);
  r4 = vec4<f32>(v_35.xy, r4.zw);
  r2.w = fma(v4.z, r2.z, -1.0f);
  r2.z = fma(r2.z, r2.w, 1.0f);
  r2.w = (r2.z * r4.x);
  let v_36 = -(r1.xyxz);
  let v_37 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_36.xyw);
  r5 = vec4<f32>(v_37.xy, r5.z, v_37.z);
  let v_38 = fma(r2.www, r5.xyw, r1.xyz);
  r1 = vec4<f32>(v_38.xyz, r1.w);
  r2.w = (r3.w * cb11_11.tint_symbol_4[2u].x);
  let v_39 = ((-(r1.xyzx)).xyz + r5.zzz);
  r5 = vec4<f32>(v_39.xyz, r5.w);
  let v_40 = fma(r2.www, r5.xyz, r1.xyz);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  r1.w = fma(r4.x, r2.z, r1.w);
  r2.z = fma((-(r4.yyyy)).z, r2.z, 1.0f);
  r0.w = clamp(((r0.wwww * r2.zzzz)).w, 0.0f, 1.0f);
  r2.z = dot(r0.xyz, r0.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_41 = (r0.xyz * r2.zzz);
  r4 = vec4<f32>(v_41.xyz, r4.w);
  let v_42 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_43 = fma(r0.xyz, r2.zzz, v_42.xyz);
  r0 = vec4<f32>(v_43.xyz, r0.w);
  r2.z = dot(r0.xyz, r0.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_44 = (r0.xyz * r2.zzz);
  r0 = vec4<f32>(v_44.xyz, r0.w);
  let v_45 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_45.xy, r2.zw);
  r2.z = fma(r4.w, 510.0f, -500.0f);
  r2.z = max(r2.z, 0.0f);
  let v_46 = -(r2.zzzz);
  r2.w = fma(r4.w, 510.0f, v_46.w);
  r2.z = (r2.z * 558.0f);
  r2.z = fma(r2.w, 3.0f, r2.z);
  let v_47 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r5 = vec4<f32>(v_47.xyz, r5.w);
  let v_48 = (r5.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r6 = vec4<f32>(v_48.xyz, r6.w);
  let v_49 = fma(r5.xxx, cb6_6.tint_symbol_5[0u].xyz, r6.xyz);
  r5 = vec4<f32>(v_49.xy, r5.z, v_49.z);
  let v_50 = fma(r5.zzz, cb6_6.tint_symbol_5[2u].xyz, r5.xyw);
  r5 = vec4<f32>(v_50.xyz, r5.w);
  let v_51 = fma(r5.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r6 = vec4<f32>(v_51.xyz, r6.w);
  let v_52 = &(x0[0u]);
  let v_53 = r6;
  *(v_52) = vec4<f32>(v_53.xyz, (*(v_52)).w);
  let v_54 = fma(r5.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r7 = vec4<f32>(v_54.xyz, r7.w);
  let v_55 = &(x0[1u]);
  let v_56 = r7;
  *(v_55) = vec4<f32>(v_56.xyz, (*(v_55)).w);
  let v_57 = fma(r5.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r8 = vec4<f32>(v_57.xyz, r8.w);
  let v_58 = &(x0[2u]);
  let v_59 = r8;
  *(v_58) = vec4<f32>(v_59.xyz, (*(v_58)).w);
  let v_60 = fma(r5.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r5 = vec4<f32>(v_60.xyz, r5.w);
  let v_61 = &(x0[3u]);
  let v_62 = r5;
  *(v_61) = vec4<f32>(v_62.xyz, (*(v_61)).w);
  r2.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_63 = abs(r8.yyyy);
  r3.w = max(v_63.w, abs(r8.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_64 = (bitcast<u32>(r3.w) != 0u);
  let v_65 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_65, v_64);
  let v_66 = abs(r7.yyyy);
  r4.w = max(v_66.w, abs(r7.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r2.w)));
  let v_67 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_67 != 0u));
  let v_68 = abs(r6.yyyy);
  r4.w = max(v_68.w, abs(r6.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r2.w)));
  let v_69 = bitcast<u32>(r2.w);
  r2.w = select(r3.w, 0.0f, (v_69 != 0u));
  let v_70 = x0[bitcast<i32>(r2.w)];
  r5 = vec4<f32>(v_70.xyz, r5.w);
  r2.w = f32(bitcast<i32>(r2.w));
  r3.w = (r2.w + 0.5f);
  r3.w = (r3.w * 0.25f);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(1065353216u)));
  r2.w = dot(r6, cb6_6.tint_symbol_5[12u]);
  r4.w = dot(r6, cb6_6.tint_symbol_5[13u]);
  r5.x = (r5.x + 0.5f);
  r3.w = fma(r5.y, 0.25f, r3.w);
  r5.y = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  r2.w = ((-(r2.wwww)).w + r5.z);
  r6.x = dpdx(r5.x);
  let v_71 = dpdx(r3.ww);
  let v_72 = r6;
  r6 = vec4<f32>(v_72.x, v_71.x, v_72.z, v_71.y);
  r6.z = dpdx(r2.w);
  r7.y = dpdy(r5.x);
  let v_73 = dpdy(r3.ww);
  let v_74 = r7;
  r7 = vec4<f32>(v_73.x, v_74.y, v_73.y, v_74.w);
  r7.w = dpdy(r2.w);
  let v_75 = (r6.yw * r7.yw);
  let v_76 = r6;
  r6 = vec4<f32>(v_76.x, v_75.x, v_76.z, v_75.y);
  let v_77 = -(r6.ywyy);
  let v_78 = fma(r6.xz, r7.xz, v_77.xy);
  r8 = vec4<f32>(v_78.xy, r8.zw);
  r5.w = (1.0f / r8.x);
  r6.y = (r6.z * r7.y);
  let v_79 = -(r6.yyyy);
  r8.z = fma(r6.x, r7.w, v_79.z);
  let v_80 = (r5.ww * r8.yz);
  r6 = vec4<f32>(v_80.xy, r6.zw);
  let v_81 = max(r6.xy, vec2<f32>());
  r6 = vec4<f32>(v_81.xy, r6.zw);
  let v_82 = min(r6.xy, vec2<f32>(0.5f));
  r6 = vec4<f32>(v_82.xy, r6.zw);
  r2.w = fma((-(r4.wwww)).w, r6.x, r2.w);
  r2.w = fma((-(r4.wwww)).w, r6.y, r2.w);
  let v_83 = bitcast<u32>(r5.y);
  let v_84 = r2.w;
  r2.w = select(r5.z, v_84, (v_83 != 0u));
  r5.x = (r5.x + cb6_6.tint_symbol_5[14u].z);
  r5.y = fma(cb6_6.tint_symbol_5[14u].w, 0.25f, r3.w);
  let v_85 = r5.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_85.xy, r2.w);
  r3.w = dot(r3.xyz, v_42.xyz);
  r4.w = clamp(r3.wwww.w, 0.0f, 1.0f);
  r4.w = ((-(abs(r3.wwww))).w + r4.w);
  let v_86 = abs(r3.wwww);
  r3.w = fma(r1.w, r4.w, v_86.w);
  let v_87 = dot(r4.xyz, r3.xyz);
  r5.x = clamp(vec4<f32>(v_87, v_87, v_87, v_87).x, 0.0f, 1.0f);
  let v_88 = dot(r0.xyz, v_42.xyz);
  r5.y = clamp(vec4<f32>(v_88, v_88, v_88, v_88).y, 0.0f, 1.0f);
  let v_89 = ((-(r5.xyxx)).xy + vec2<f32>(1.0f));
  r5 = vec4<f32>(v_89.xy, r5.zw);
  let v_90 = (r5.xy * r5.xy);
  r5 = vec4<f32>(r5.xy, v_90.xy);
  let v_91 = (r5.zw * r5.zw);
  r5 = vec4<f32>(r5.xy, v_91.xy);
  let v_92 = (r5.xy * r5.zw);
  r5 = vec4<f32>(v_92.xy, r5.zw);
  let v_93 = fma(r5.xy, vec2<f32>(0.95999997854232788086f), vec2<f32>(0.03999999910593032837f));
  r5 = vec4<f32>(v_93.xy, r5.zw);
  let v_94 = (r2.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(r5.xy, v_94.xy);
  r4.w = (r5.z * 0.125f);
  r5.x = fma((-(r0.wwww)).x, r5.x, 1.0f);
  r0.x = dot(r3.xyz, r0.xyz);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r5.w);
  r0.x = exp2(r0.x);
  r0.x = (r5.y * r0.x);
  r0.x = (r4.w * r0.x);
  r0.x = (r0.w * r0.x);
  r0.x = (r3.w * r0.x);
  r0.y = (r3.w * r5.x);
  let v_95 = fma(r1.xyz, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_95.xyz, r0.w);
  let v_96 = (r0.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r0 = vec4<f32>(v_96.xyz, r0.w);
  r0.w = (r3.z + cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_97 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(r5.x, v_97.xyz);
  r3.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_98 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_98.xyz, r6.w);
  let v_99 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_99.xyz, r6.w);
  let v_100 = fma(r5.yzw, r3.www, r6.xyz);
  r5 = vec4<f32>(r5.x, v_100.xyz);
  let v_101 = (r2.yyy * r5.yzw);
  r5 = vec4<f32>(r5.x, v_101.xyz);
  let v_102 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_102.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_103 = dot(r7.xyz, r3.xyz);
  r0.w = clamp(vec4<f32>(v_103, v_103, v_103, v_103).w, 0.0f, 1.0f);
  let v_104 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r6.xyz);
  r6 = vec4<f32>(v_104.xyz, r6.w);
  let v_105 = fma(r6.xyz, r2.xxx, r5.yzw);
  r5 = vec4<f32>(r5.x, v_105.xyz);
  let v_106 = (r5.xxx * r5.yzw);
  r5 = vec4<f32>(r5.x, v_106.xyz);
  let v_107 = (r1.xyz * r5.yzw);
  r1 = vec4<f32>(v_107.xyz, r1.w);
  let v_108 = fma(r0.xyz, r2.www, r1.xyz);
  r0 = vec4<f32>(v_108.xyz, r0.w);
  r0.w = ((-(r5.xxxx)).w + 1.0f);
  r1.x = dot((-(r4.xyzx)).xyz, r3.xyz);
  r1.x = (r1.x + r1.x);
  let v_109 = -(r1.xxxx);
  let v_110 = -(r4.xyzx);
  let v_111 = fma(r3.xyz, v_109.xyz, v_110.xyz);
  r1 = vec4<f32>(v_111.xyz, r1.w);
  let v_112 = clamp(((r2.zzzz * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, v_112.xy);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r3.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.y = (r2.z * cb5_5.tint_symbol_3[6u].z);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r3.x)));
  r3.z = fma(r2.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.z = (r2.z * r2.z);
  r2.z = fma(r2.z, 5.0f, r3.x);
  let v_113 = bitcast<u32>(r3.y);
  let v_114 = r3.z;
  r2.z = select(r2.z, v_114, (v_113 != 0u));
  let v_115 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_115.xyz, r3.w);
  r1.x = (abs(r1.zzzz).x + 1.0f);
  let v_116 = (r3.xyz / r1.xxx);
  r3 = vec4<f32>(v_116.xyz, r3.w);
  let v_117 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_117.xyz, r3.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_118 = bitcast<vec2<u32>>(r1.xx);
  let v_119 = r3.xy;
  let v_120 = select(r3.zy, v_119, (v_118 != vec2<u32>()));
  r1 = vec4<f32>(v_120.xy, r1.zw);
  let v_121 = r2.z;
  r3 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_121);
  r1.x = max(r2.y, r2.x);
  let v_122 = (r1.xxx * r3.xyz);
  r1 = vec4<f32>(v_122.xyz, r1.w);
  let v_123 = (r2.www * r1.xyz);
  r2 = vec4<f32>(v_123.xyz, r2.w);
  let v_124 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_124.xyz, r2.w);
  let v_125 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_125.xyz, r1.w);
  let v_126 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_126.xyz, r0.w);
  o0.w = clamp(((r1.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_127 = (v6.xy * cb2_2.tint_symbol_1[18u].zw);
    r1 = vec4<f32>(v_127.xy, r1.zw);
    r1 = textureSample(t11, s11, r1.xyxx.xy);
    r0.w = (r1.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  r0.w = (r0.w * v5.w);
  let v_128 = ((-(r0.xyzx)).xyz + v5.xyz);
  r1 = vec4<f32>(v_128.xyz, r1.w);
  let v_129 = fma(r0.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_129.xyz, r0.w);
  let v_130 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_130.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @builtin(position) v_131 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v_131);
  return o0;
}
