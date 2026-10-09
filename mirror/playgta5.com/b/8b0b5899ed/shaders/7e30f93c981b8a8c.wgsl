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
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_48 = abs(r9.yyyy);
  r5.w = max(v_48.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_49 = (bitcast<u32>(r5.w) != 0u);
  let v_50 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_50, v_49);
  let v_51 = abs(r8.yyyy);
  r6.x = max(v_51.x, abs(r8.xxxx).x);
  r6.x = bitcast<f32>(select(0u, 4294967295u, (r6.x < r4.w)));
  let v_52 = bitcast<u32>(r6.x);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_52 != 0u));
  let v_53 = abs(r7.yyyy);
  r6.x = max(v_53.x, abs(r7.xxxx).x);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.x < r4.w)));
  let v_54 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_54 != 0u));
  let v_55 = x0[bitcast<i32>(r4.w)];
  r6 = vec4<f32>(v_55.xyz, r6.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r7 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r7 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r7) & vec4<u32>(1065353216u)));
  r4.w = dot(r7, cb6_6.tint_symbol_5[12u]);
  r6.w = dot(r7, cb6_6.tint_symbol_5[13u]);
  r6.x = (r6.x + 0.5f);
  r5.w = fma(r6.y, 0.25f, r5.w);
  r6.y = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r6.z);
  r7.x = dpdx(r6.x);
  let v_56 = dpdx(r5.ww);
  let v_57 = r7;
  r7 = vec4<f32>(v_57.x, v_56.x, v_57.z, v_56.y);
  r7.z = dpdx(r4.w);
  r8.y = dpdy(r6.x);
  let v_58 = dpdy(r5.ww);
  let v_59 = r8;
  r8 = vec4<f32>(v_58.x, v_59.y, v_58.y, v_59.w);
  r8.w = dpdy(r4.w);
  let v_60 = (r7.yw * r8.yw);
  let v_61 = r7;
  r7 = vec4<f32>(v_61.x, v_60.x, v_61.z, v_60.y);
  let v_62 = -(r7.ywyy);
  let v_63 = fma(r7.xz, r8.xz, v_62.xy);
  r9 = vec4<f32>(v_63.xy, r9.zw);
  r7.y = (1.0f / r9.x);
  r7.z = (r7.z * r8.y);
  let v_64 = -(r7.zzzz);
  r9.z = fma(r7.x, r8.w, v_64.z);
  let v_65 = (r7.yy * r9.yz);
  r7 = vec4<f32>(v_65.xy, r7.zw);
  let v_66 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_66.xy, r7.zw);
  let v_67 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_67.xy, r7.zw);
  r4.w = fma((-(r6.wwww)).w, r7.x, r4.w);
  r4.w = fma((-(r6.wwww)).w, r7.y, r4.w);
  let v_68 = bitcast<u32>(r6.y);
  let v_69 = r4.w;
  r4.w = select(r6.z, v_69, (v_68 != 0u));
  r6.x = (r6.x + cb6_6.tint_symbol_5[14u].z);
  r6.y = fma(cb6_6.tint_symbol_5[14u].w, 0.25f, r5.w);
  let v_70 = r6.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_70.xy, r4.w);
  r5.w = dot(r1.yzw, v_26.xyz);
  r6.x = clamp(r5.wwww.x, 0.0f, 1.0f);
  r6.x = ((-(abs(r5.wwww))).x + r6.x);
  let v_71 = abs(r5.wwww);
  r5.w = fma(r0.w, r6.x, v_71.w);
  let v_72 = dot(r4.xyz, r1.yzw);
  r6.x = clamp(vec4<f32>(v_72, v_72, v_72, v_72).x, 0.0f, 1.0f);
  let v_73 = dot(r5.xyz, v_26.xyz);
  r6.y = clamp(vec4<f32>(v_73, v_73, v_73, v_73).y, 0.0f, 1.0f);
  let v_74 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_74.xy, r6.zw);
  let v_75 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_75.xy);
  let v_76 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_76.xy);
  let v_77 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_77.xy, r6.zw);
  let v_78 = fma(r6.xy, vec2<f32>(0.95999997854232788086f), vec2<f32>(0.03999999910593032837f));
  r6 = vec4<f32>(v_78.xy, r6.zw);
  let v_79 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(r6.xy, v_79.xy);
  r6.z = (r6.z * 0.125f);
  r6.x = fma((-(r2.xxxx)).x, r6.x, 1.0f);
  r5.x = dot(r1.yzw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r6.w);
  r5.x = exp2(r5.x);
  let v_80 = (r5.xw * r6.yx);
  r5 = vec4<f32>(v_80.xy, r5.zw);
  r5.x = (r6.z * r5.x);
  r5.x = (r2.x * r5.x);
  r5.x = (r5.w * r5.x);
  let v_81 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_81.xyz, r5.w);
  let v_82 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_82.xyz, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r8 = vec4<f32>(vec3<f32>(), r8.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_83 = (v_23.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_83.xyz, r7.w);
    let v_84 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_84.xyz, r8.w);
    r7.w = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_85 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_85.xyz, r8.w);
    let v_86 = (r8.xyz + v_23.xyz);
    r8 = vec4<f32>(v_86.xyz, r8.w);
    let v_87 = bitcast<vec3<u32>>(r6.yyy);
    let v_88 = r7.xyz;
    let v_89 = select(r8.xyz, v_88, (v_87 != vec3<u32>()));
    r7 = vec4<f32>(v_89.xyz, r7.w);
    r6.y = dot(r7.xyz, r7.xyz);
    let v_90 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_90.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_91 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_91.xyz, r7.w);
    r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[11u].w);
    r6.y = (r6.y / r7.w);
    let v_92 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r7.xyz, v_92.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    r8.x = dot(r7.xyz, r1.yzw);
    r8.y = clamp(r8.xxxx.y, 0.0f, 1.0f);
    r8.y = ((-(abs(r8.xxxx))).y + r8.y);
    let v_93 = abs(r8.xxxx);
    r8.x = fma(r0.w, r8.y, v_93.x);
    r7.w = (r7.w * r8.x);
    r8.x = (r6.y * r7.w);
    let v_94 = (r8.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_94.xyz, r8.w);
    let v_95 = (r0.xyz * r8.xyz);
    r8 = vec4<f32>(v_95.xyz, r8.w);
    let v_96 = fma(r3.xyz, r3.www, r7.xyz);
    r7 = vec4<f32>(v_96.xyz, r7.w);
    r8.w = dot(r7.xyz, r7.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_97 = (r7.xyz * r8.www);
    r7 = vec4<f32>(v_97.xyz, r7.w);
    let v_98 = dot(r7.xyz, r4.xyz);
    r8.w = clamp(vec4<f32>(v_98, v_98, v_98, v_98).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.x = (r8.w * r8.w);
    r9.x = (r9.x * r9.x);
    r8.w = (r8.w * r9.x);
    r8.w = fma(r8.w, 0.95999997854232788086f, 0.03999999910593032837f);
    let v_99 = dot(r7.xyz, r1.yzw);
    r7.x = clamp(vec4<f32>(v_99, v_99, v_99, v_99).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r6.w * r7.x);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r8.w);
    r7.x = (r7.w * r7.x);
    r6.y = (r6.y * r7.x);
    r6.y = (r6.z * r6.y);
    let v_100 = (r6.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_100.xyz, r7.w);
  }
  r6.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.y) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    let v_101 = bitcast<u32>(r7.w);
    let v_102 = r6.y;
    r5.w = select(r5.w, v_102, (v_101 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_103 = (v_23.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_103.xyz, r9.w);
      let v_104 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_104.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_105 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_105.xyz, r10.w);
      let v_106 = (r10.xyz + v_23.xyz);
      r10 = vec4<f32>(v_106.xyz, r10.w);
      let v_107 = bitcast<vec3<u32>>(r6.yyy);
      let v_108 = r9.xyz;
      let v_109 = select(r10.xyz, v_108, (v_107 != vec3<u32>()));
      r9 = vec4<f32>(v_109.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_110 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_110.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_111 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_111.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[12u].w);
      r6.y = (r6.y / r7.w);
      let v_112 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r9.xyz, v_112.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      r8.w = dot(r9.xyz, r1.yzw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_113 = abs(r8.wwww);
      r8.w = fma(r0.w, r9.w, v_113.w);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_114 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_114.xyz, r10.w);
      let v_115 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_115.xyz, r8.w);
      let v_116 = fma(r3.xyz, r3.www, r9.xyz);
      r9 = vec4<f32>(v_116.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_117 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_117.xyz, r9.w);
      let v_118 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_118, v_118, v_118, v_118).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(r8.w, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_119 = dot(r9.xyz, r1.yzw);
      r9.x = clamp(vec4<f32>(v_119, v_119, v_119, v_119).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_120 = fma(r6.yyy, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_120.xyz, r7.w);
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
      let v_121 = (v_23.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_121.xyz, r9.w);
      let v_122 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_122.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_123 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_123.xyz, r10.w);
      let v_124 = (r10.xyz + v_23.xyz);
      r10 = vec4<f32>(v_124.xyz, r10.w);
      let v_125 = bitcast<vec3<u32>>(r6.yyy);
      let v_126 = r9.xyz;
      let v_127 = select(r10.xyz, v_126, (v_125 != vec3<u32>()));
      r9 = vec4<f32>(v_127.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      let v_128 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_128.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_129 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_129.xyz, r9.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.y, cb3_3.tint_symbol_2[13u].w);
      r6.y = (r6.y / r7.w);
      let v_130 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r9.xyz, v_130.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      r8.w = dot(r9.xyz, r1.yzw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_131 = abs(r8.wwww);
      r8.w = fma(r0.w, r9.w, v_131.w);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.y * r7.w);
      let v_132 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_132.xyz, r10.w);
      let v_133 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_133.xyz, r8.w);
      let v_134 = fma(r3.xyz, r3.www, r9.xyz);
      r9 = vec4<f32>(v_134.xyz, r9.w);
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_135 = (r8.www * r9.xyz);
      r9 = vec4<f32>(v_135.xyz, r9.w);
      let v_136 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_136, v_136, v_136, v_136).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(r8.w, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_137 = dot(r9.xyz, r1.yzw);
      r9.x = clamp(vec4<f32>(v_137, v_137, v_137, v_137).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r6.w * r9.x);
      r9.x = exp2(r9.x);
      r8.w = (r8.w * r9.x);
      r7.w = (r7.w * r8.w);
      r6.y = (r6.y * r7.w);
      r6.y = (r6.z * r6.y);
      let v_138 = fma(r6.yyy, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_138.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_139 = (v_23.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_139.xyz, r9.w);
      let v_140 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_140.xyz, r10.w);
      r6.y = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.y = clamp(((r6.yyyy / cb3_3.tint_symbol_2[22u].wwww)).y, 0.0f, 1.0f);
      r6.y = (r6.y * cb3_3.tint_symbol_2[22u].w);
      let v_141 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_141.xyz, r10.w);
      let v_142 = (r10.xyz + v_23.xyz);
      r10 = vec4<f32>(v_142.xyz, r10.w);
      let v_143 = bitcast<vec3<u32>>(r5.www);
      let v_144 = r9.xyz;
      let v_145 = select(r10.xyz, v_144, (v_143 != vec3<u32>()));
      r9 = vec4<f32>(v_145.xyz, r9.w);
      r5.w = dot(r9.xyz, r9.xyz);
      let v_146 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_146.xyz, r9.w);
      r6.y = dot(r9.xyz, r9.xyz);
      r6.y = inverseSqrt(r6.y);
      let v_147 = (r6.yyy * r9.xyz);
      r9 = vec4<f32>(v_147.xyz, r9.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r6.y = fma(r6.y, r5.w, cb3_3.tint_symbol_2[14u].w);
      r5.w = (r5.w / r6.y);
      let v_148 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.y = dot(r9.xyz, v_148.xyz);
      r6.y = clamp(fma(r6.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      r7.w = dot(r9.xyz, r1.yzw);
      r8.w = clamp(r7.wwww.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r7.wwww))).w + r8.w);
      let v_149 = abs(r7.wwww);
      r7.w = fma(r0.w, r8.w, v_149.w);
      r6.y = (r6.y * r7.w);
      r7.w = (r5.w * r6.y);
      let v_150 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_150.xyz, r10.w);
      let v_151 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_151.xyz, r8.w);
      let v_152 = fma(r3.xyz, r3.www, r9.xyz);
      r3 = vec4<f32>(v_152.xyz, r3.w);
      r3.w = dot(r3.xyz, r3.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_153 = (r3.www * r3.xyz);
      r3 = vec4<f32>(v_153.xyz, r3.w);
      let v_154 = dot(r3.xyz, r4.xyz);
      r3.w = clamp(vec4<f32>(v_154, v_154, v_154, v_154).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r7.w = (r3.w * r3.w);
      r7.w = (r7.w * r7.w);
      r3.w = (r3.w * r7.w);
      r3.w = fma(r3.w, 0.95999997854232788086f, 0.03999999910593032837f);
      let v_155 = dot(r3.xyz, r1.yzw);
      r3.x = clamp(vec4<f32>(v_155, v_155, v_155, v_155).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r6.w);
      r3.x = exp2(r3.x);
      r3.x = (r3.x * r3.w);
      r3.x = (r6.y * r3.x);
      r3.x = (r5.w * r3.x);
      r3.x = (r6.z * r3.x);
      let v_156 = fma(r3.xxx, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_156.xyz, r7.w);
    }
  }
  r3.x = (r6.x * r6.x);
  r2.x = (r2.x * r2.x);
  let v_157 = (r7.xyz * r2.xxx);
  r3 = vec4<f32>(r3.x, v_157.xyz);
  let v_158 = fma(r3.xxx, r8.xyz, r3.yzw);
  r3 = vec4<f32>(v_158.xyz, r3.w);
  let v_159 = fma(r5.xyz, r4.www, r3.xyz);
  r3 = vec4<f32>(v_159.xyz, r3.w);
  r1.x = fma(v1.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_160 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_160.xyz, r5.w);
  r2.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_161 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(r6.x, v_161.xyz);
  let v_162 = (r6.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(r6.x, v_162.xyz);
  let v_163 = fma(r5.xyz, r2.xxx, r6.yzw);
  r5 = vec4<f32>(v_163.xyz, r5.w);
  let v_164 = (r2.zzz * r5.xyz);
  r5 = vec4<f32>(v_164.xyz, r5.w);
  let v_165 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(r6.x, v_165.xyz);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_166 = dot(r7.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_166, v_166, v_166, v_166).x, 0.0f, 1.0f);
  let v_167 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.yzw);
  r6 = vec4<f32>(r6.x, v_167.xyz);
  let v_168 = fma(r6.yzw, r2.yyy, r5.xyz);
  r5 = vec4<f32>(v_168.xyz, r5.w);
  let v_169 = (r6.xxx * r5.xyz);
  r5 = vec4<f32>(v_169.xyz, r5.w);
  let v_170 = fma(r5.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_170.xyz, r0.w);
  r1.x = ((-(r6.xxxx)).x + 1.0f);
  r2.x = dot((-(r4.xyzx)).xyz, r1.yzw);
  r2.x = (r2.x + r2.x);
  let v_171 = -(r2.xxxx);
  let v_172 = -(r4.xxyz);
  let v_173 = fma(r1.yzw, v_171.yzw, v_172.yzw);
  r1 = vec4<f32>(r1.x, v_173.xyz);
  let v_174 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.0f, 0.0f, 0.00177619897294789553f))).xw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_174.x, r2.yz, v_174.y);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r3.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.y = (r2.x * cb5_5.tint_symbol_3[6u].z);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r3.x)));
  r3.z = fma(r2.x, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.x = (r2.x * r2.x);
  r2.x = fma(r2.x, 5.0f, r3.x);
  let v_175 = bitcast<u32>(r3.y);
  let v_176 = r3.z;
  r2.x = select(r2.x, v_176, (v_175 != 0u));
  let v_177 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_177.xyz, r3.w);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_178 = (r3.xyz / r1.yyy);
  r3 = vec4<f32>(v_178.xyz, r3.w);
  let v_179 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_179.xyz, r3.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_180 = bitcast<vec2<u32>>(r1.yy);
  let v_181 = r3.xy;
  let v_182 = select(r3.zy, v_181, (v_180 != vec2<u32>()));
  let v_183 = r1;
  r1 = vec4<f32>(v_183.x, v_182.xy, v_183.w);
  let v_184 = r2.x;
  r3 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_184);
  r1.y = max(r2.z, r2.y);
  let v_185 = (r1.yyy * r3.xyz);
  r1 = vec4<f32>(r1.x, v_185.xyz);
  let v_186 = (r2.www * r1.yzw);
  r2 = vec4<f32>(v_186.xyz, r2.w);
  let v_187 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_187.xyz, r2.w);
  let v_188 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_188.xyz);
  let v_189 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_189.xyz, r0.w);
  o0.w = clamp(((r0.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_190 = (v6.xy * cb2_2.tint_symbol_1[18u].zw);
    r1 = vec4<f32>(v_190.xy, r1.zw);
    r1 = textureSample(t11, s11, r1.xyxx.xy);
    r0.w = (r1.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  r0.w = (r0.w * v5.w);
  let v_191 = ((-(r0.xyzx)).xyz + v5.xyz);
  r1 = vec4<f32>(v_191.xyz, r1.w);
  let v_192 = fma(r0.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_192.xyz, r0.w);
  let v_193 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_193.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @builtin(position) v_194 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v_194);
  return o0;
}
