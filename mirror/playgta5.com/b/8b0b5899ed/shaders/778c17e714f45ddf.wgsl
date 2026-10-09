diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> sample_pos : array<vec2<f32>, 31u> = array<vec2<f32>, 31u>(vec2<f32>(), vec2<f32>(0.25f), vec2<f32>(-0.25f), vec2<f32>(-0.125f, -0.375f), vec2<f32>(0.375f, -0.125f), vec2<f32>(-0.375f, 0.125f), vec2<f32>(0.125f, 0.375f), vec2<f32>(0.0625f, -0.1875f), vec2<f32>(-0.0625f, 0.1875f), vec2<f32>(0.3125f, 0.0625f), vec2<f32>(-0.1875f, -0.3125f), vec2<f32>(-0.3125f, 0.3125f), vec2<f32>(-0.4375f, -0.0625f), vec2<f32>(0.1875f, 0.4375f), vec2<f32>(0.4375f, -0.4375f), vec2<f32>(0.0625f), vec2<f32>(-0.0625f, -0.1875f), vec2<f32>(-0.1875f, 0.125f), vec2<f32>(0.25f, -0.0625f), vec2<f32>(-0.3125f, -0.125f), vec2<f32>(0.125f, 0.3125f), vec2<f32>(0.3125f, 0.1875f), vec2<f32>(0.1875f, -0.3125f), vec2<f32>(-0.125f, 0.375f), vec2<f32>(0.0f, -0.4375f), vec2<f32>(-0.25f, -0.375f), vec2<f32>(-0.375f, 0.25f), vec2<f32>(-0.5f, 0.0f), vec2<f32>(0.4375f, -0.25f), vec2<f32>(0.375f, 0.4375f), vec2<f32>(-0.4375f, -0.5f));

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
  let v_1 = textureNumSamples(t3);
  let v_2 = sample_pos[select(0u, ((v_1 + 0u) - 1u), ((0u < v_1) & true))];
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = dpdx(v3.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = dpdy(v3.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = (r0.yyy * r2.xyz);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = fma(r0.xxx, r1.xyz, r0.yzw);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (r0.xyz + v3.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = r1.xy;
  let v_10 = max(v_9, vec2<f32>(-2147483648.0f));
  let v_11 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_10), vec2<i32>(2147483647i), (v_10 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_9 == v_9))));
  r2 = vec4<f32>(v_11.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0.w = textureLoad(t3, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r1.z = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.z);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_12 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = (r1.xy * vec2<f32>(0.015625f));
  r1 = vec4<f32>(v_13.xy, r1.zw);
  r1.x = textureSample(t14, s14, r1.xyxx.xy).z;
  r1.x = (r1.x * cb12_12.tint_symbol_2[0u].w);
  let v_14 = fma(r0.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r1 = vec4<f32>(r1.x, v_14.xyz);
  let v_15 = &(x0[0u]);
  let v_16 = r1;
  *(v_15) = vec4<f32>(v_16.yzw, (*(v_15)).w);
  let v_17 = fma(r0.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = &(x0[1u]);
  let v_19 = r2;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = fma(r0.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = &(x0[2u]);
  let v_22 = r0;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  let v_23 = &(x0[3u]);
  let v_24 = r0;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = (cb6_6.tint_symbol_1[14u].yw * vec2<f32>(4.0f, 0.25f));
  r2 = vec4<f32>(r2.xy, v_25.xy);
  r0.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_26 = -(r1.xxxx);
  r0.z = fma(r0.z, 0.5f, v_26.z);
  let v_27 = abs(r0.yyyy);
  let v_28 = max(v_27.xy, abs(r0.xxxx).xy);
  r0 = vec4<f32>(v_28.xy, r0.zw);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < r0.z)));
  let v_29 = (bitcast<u32>(r0.x) != 0u);
  let v_30 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r0.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_30, v_29);
  let v_31 = abs(r2.yyyy);
  r1.x = max(v_31.x, abs(r2.xxxx).x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.z)));
  let v_32 = bitcast<u32>(r1.x);
  r0.x = select(r0.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_32 != 0u));
  let v_33 = abs(r1.zzzz);
  r1.x = max(v_33.x, abs(r1.yyyy).x);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.z)));
  let v_34 = bitcast<u32>(r0.z);
  r0.x = select(r0.x, 0.0f, (v_34 != 0u));
  let v_35 = x0[bitcast<i32>(r0.x)];
  r1 = vec4<f32>(v_35.xyz, r1.w);
  r0.x = f32(bitcast<i32>(r0.x));
  r0.z = (r0.x + 0.5f);
  r0.z = (r0.z * 0.25f);
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.xxxx)));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  r0.x = dot(r3, cb6_6.tint_symbol_1[12u]);
  r1.w = dot(r3, cb6_6.tint_symbol_1[13u]);
  r3.x = (r1.x + 0.5f);
  r3.y = fma(r1.y, 0.25f, r0.z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = ((-(r0.xxxx)).x + r1.z);
  let v_36 = dpdx(r3.xyy);
  r4 = vec4<f32>(v_36.xy, r4.z, v_36.z);
  r4.z = dpdx(r0.x);
  let v_37 = dpdy(r3.yxy);
  r5 = vec4<f32>(v_37.xyz, r5.w);
  r5.w = dpdy(r0.x);
  let v_38 = (r4.yw * r5.yw);
  r1 = vec4<f32>(v_38.xy, r1.zw);
  let v_39 = -(r1.xyxx);
  let v_40 = fma(r4.xz, r5.xz, v_39.xy);
  r6 = vec4<f32>(v_40.xy, r6.zw);
  r1.x = (1.0f / r6.x);
  r1.y = (r4.z * r5.y);
  let v_41 = -(r1.yyyy);
  r6.z = fma(r4.x, r5.w, v_41.z);
  let v_42 = (r1.xx * r6.yz);
  r1 = vec4<f32>(v_42.xy, r1.zw);
  let v_43 = max(r1.xy, vec2<f32>());
  r1 = vec4<f32>(v_43.xy, r1.zw);
  let v_44 = min(r1.xy, vec2<f32>(0.5f));
  r1 = vec4<f32>(v_44.xy, r1.zw);
  r0.x = fma((-(r1.wwww)).x, r1.x, r0.x);
  r0.x = fma((-(r1.wwww)).x, r1.y, r0.x);
  let v_45 = bitcast<u32>(r0.z);
  let v_46 = r0.x;
  r3.z = select(r1.z, v_46, (v_45 != 0u));
  r1.x = (r3.x * cb6_6.tint_symbol_1[14u].x);
  r1.y = (r2.z * r3.y);
  let v_47 = (r1.xy + vec2<f32>(0.5f));
  let v_48 = r0;
  r0 = vec4<f32>(v_47.x, v_48.y, v_47.y, v_48.w);
  let v_49 = fract(r0.xz);
  let v_50 = r0;
  r0 = vec4<f32>(v_49.x, v_50.y, v_49.y, v_50.w);
  let v_51 = (r0.xz * vec2<f32>(3.0f));
  r1 = vec4<f32>(v_51.xy, r1.zw);
  let v_52 = fma((-(r0.xxxz)).zw, vec2<f32>(3.0f), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_52.xy);
  let v_53 = (r0.xz * r1.xy);
  r2 = vec4<f32>(v_53.xy, r2.zw);
  let v_54 = fma(r1.xy, r0.xz, r1.zw);
  r1 = vec4<f32>(r1.xy, v_54.xy);
  let v_55 = (r0.xz * r0.xz);
  r4 = vec4<f32>(v_55.xy, r4.zw);
  let v_56 = (r0.xz * r4.xy);
  r5 = vec4<f32>(v_56.x, r5.yz, v_56.y);
  let v_57 = fma((-(r4.xxxy)).zw, r0.xz, r1.zw);
  r1 = vec4<f32>(r1.xy, v_57.xy);
  let v_58 = fma((-(r4.xyxx)).xy, vec2<f32>(6.0f), vec2<f32>(4.0f));
  r4 = vec4<f32>(v_58.xy, r4.zw);
  let v_59 = fma(r2.xy, r0.xz, r4.xy);
  r4 = vec4<f32>(v_59.xy, r4.zw);
  let v_60 = fma(r1.xy, r0.xz, r1.xy);
  r1 = vec4<f32>(v_60.xy, r1.zw);
  let v_61 = (r1.xy + vec2<f32>(1.0f));
  r1 = vec4<f32>(v_61.xy, r1.zw);
  let v_62 = fma((-(r2.xyxx)).xy, r0.xz, r1.xy);
  r1 = vec4<f32>(v_62.xy, r1.zw);
  r6.y = r4.x;
  let v_63 = r1;
  let v_64 = r6;
  r6 = vec4<f32>(v_63.z, v_64.y, v_63.x, v_64.w);
  r6.w = r5.x;
  r6 = (r6 * vec4<f32>(0.16666667163372039795f));
  r5.y = r4.y;
  let v_65 = r1;
  let v_66 = r5;
  r5 = vec4<f32>(v_65.w, v_66.y, v_65.y, v_66.w);
  r1 = (r5 * vec4<f32>(0.16666667163372039795f));
  let v_67 = (r6.yw + r6.xz);
  r2 = vec4<f32>(v_67.xy, r2.zw);
  let v_68 = (r6.yw / r2.xy);
  r4 = vec4<f32>(v_68.xy, r4.zw);
  let v_69 = ((-(r0.xxxx)).xy + r4.xy);
  r4 = vec4<f32>(v_69.xy, r4.zw);
  let v_70 = (r1.yw + r1.xz);
  let v_71 = r1;
  r1 = vec4<f32>(v_70.x, v_71.y, v_70.y, v_71.w);
  let v_72 = (r1.yw / r1.xz);
  let v_73 = r1;
  r1 = vec4<f32>(v_73.x, v_72.x, v_73.z, v_72.y);
  let v_74 = ((-(r0.zzzz)).xz + r1.yw);
  let v_75 = r0;
  r0 = vec4<f32>(v_74.x, v_75.y, v_74.y, v_75.w);
  let v_76 = (r4.xy + vec2<f32>(-1.0f, 1.0f));
  let v_77 = r1;
  r1 = vec4<f32>(v_77.x, v_76.x, v_77.z, v_76.y);
  let v_78 = (r0.xz + vec2<f32>(-1.0f, 1.0f));
  let v_79 = r0;
  r0 = vec4<f32>(v_78.x, v_79.y, v_78.y, v_79.w);
  r4.x = (r1.y * cb6_6.tint_symbol_1[14u].z);
  r4.y = (r2.w * r0.x);
  r4.z = 0.0f;
  let v_80 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_80.xyz, r4.w);
  let v_81 = r4.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_81.xy, r4.z);
  r4.x = (r1.w * cb6_6.tint_symbol_1[14u].z);
  r4.y = (r2.w * r0.x);
  r4.z = 0.0f;
  let v_82 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_82.xyz, r4.w);
  let v_83 = r4.xyxx;
  r0.x = textureSampleCompareLevel(t15, s15, v_83.xy, r4.z);
  r4.x = (r1.y * cb6_6.tint_symbol_1[14u].z);
  r4.y = (r2.w * r0.z);
  r4.z = 0.0f;
  let v_84 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_84.xyz, r4.w);
  let v_85 = r4.xyxx;
  r1.y = textureSampleCompareLevel(t15, s15, v_85.xy, r4.z);
  r4.x = (r1.w * cb6_6.tint_symbol_1[14u].z);
  r4.y = (r2.w * r0.z);
  r4.z = 0.0f;
  let v_86 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_86.xyz, r4.w);
  let v_87 = r4.xyxx;
  r0.z = textureSampleCompareLevel(t15, s15, v_87.xy, r4.z);
  let v_88 = (r0.xz * r2.yy);
  let v_89 = r0;
  r0 = vec4<f32>(v_88.x, v_89.y, v_88.y, v_89.w);
  r0.x = fma(r2.x, r2.z, r0.x);
  r0.z = fma(r2.x, r1.y, r0.z);
  r0.z = (r0.z * r1.z);
  r1.x = fma(r1.x, r0.x, r0.z);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = textureSample(t2, s2, r3.xyxx.xy).w;
    r1.y = ((-(r0.xxxx)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.x = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).x, 0.0f, 1.0f);
  r0.y = clamp(fma(r0.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).y, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_90 = fma(r0.xx, r0.yy, r1.xy);
  r0 = vec4<f32>(v_90.xy, r0.zw);
  let v_91 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_91.xy, r0.zw);
  let v_92 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_92.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r0.w = (r0.y * r0.x);
  let v_93 = bitcast<u32>(r0.z);
  let v_94 = r0.w;
  r0.x = select(r0.x, v_94, (v_93 != 0u));
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
