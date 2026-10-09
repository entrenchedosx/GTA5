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

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>, v4 : u32) {
  let v_1 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = r0.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.z = textureLoad(t3, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v4)).x;
  r0.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.z = ((-(r0.zzzz)).z + r0.w);
  r0.z = (cb11_11.tint_symbol_3[2u].w / r0.z);
  let v_5 = (r0.zzz * v3.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = (r0.xy * vec2<f32>(0.015625f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0.x = textureSample(t14, s14, r0.xyxx.xy).z;
  r0.x = (r0.x * cb12_12.tint_symbol_2[0u].w);
  let v_7 = fma(r1.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = &(x0[0u]);
  let v_9 = r2;
  *(v_8) = vec4<f32>(v_9.xyz, (*(v_8)).w);
  let v_10 = fma(r1.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = &(x0[1u]);
  let v_12 = r3;
  *(v_11) = vec4<f32>(v_12.xyz, (*(v_11)).w);
  let v_13 = fma(r1.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = &(x0[2u]);
  let v_15 = r1;
  *(v_14) = vec4<f32>(v_15.xyz, (*(v_14)).w);
  let v_16 = &(x0[3u]);
  let v_17 = r1;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = (cb6_6.tint_symbol_1[14u].yw * vec2<f32>(4.0f, 0.25f));
  let v_19 = r0;
  r0 = vec4<f32>(v_19.x, v_18.x, v_19.z, v_18.y);
  r1.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_20 = -(r0.xxxx);
  r0.x = fma(r1.z, 0.5f, v_20.x);
  let v_21 = abs(r1.yyyy);
  let v_22 = max(v_21.xy, abs(r1.xxxx).xy);
  r1 = vec4<f32>(v_22.xy, r1.zw);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.x)));
  let v_23 = (bitcast<u32>(r1.x) != 0u);
  let v_24 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_24, v_23);
  let v_25 = abs(r3.yyyy);
  r1.z = max(v_25.z, abs(r3.xxxx).z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z < r0.x)));
  let v_26 = bitcast<u32>(r1.z);
  r1.x = select(r1.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_26 != 0u));
  let v_27 = abs(r2.yyyy);
  r1.z = max(v_27.z, abs(r2.xxxx).z);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r0.x)));
  let v_28 = bitcast<u32>(r0.x);
  r0.x = select(r1.x, 0.0f, (v_28 != 0u));
  let v_29 = x0[bitcast<i32>(r0.x)];
  r1 = vec4<f32>(v_29.x, r1.y, v_29.yz);
  r0.x = f32(bitcast<i32>(r0.x));
  r2.x = (r0.x + 0.5f);
  r2.x = (r2.x * 0.25f);
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.xxxx)));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  r0.x = dot(r3, cb6_6.tint_symbol_1[12u]);
  r2.y = dot(r3, cb6_6.tint_symbol_1[13u]);
  r3.x = (r1.x + 0.5f);
  r3.y = fma(r1.z, 0.25f, r2.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = ((-(r0.xxxx)).x + r1.w);
  let v_30 = dpdx(r3.xyy);
  r4 = vec4<f32>(v_30.xy, r4.z, v_30.z);
  r4.z = dpdx(r0.x);
  let v_31 = dpdy(r3.yxy);
  r5 = vec4<f32>(v_31.xyz, r5.w);
  r5.w = dpdy(r0.x);
  let v_32 = (r4.yw * r5.yw);
  let v_33 = r2;
  r2 = vec4<f32>(v_32.x, v_33.y, v_32.y, v_33.w);
  let v_34 = -(r2.xzxx);
  let v_35 = fma(r4.xz, r5.xz, v_34.xy);
  r6 = vec4<f32>(v_35.xy, r6.zw);
  r1.z = (1.0f / r6.x);
  r2.x = (r4.z * r5.y);
  let v_36 = -(r2.xxxx);
  r6.z = fma(r4.x, r5.w, v_36.z);
  let v_37 = (r1.zz * r6.yz);
  let v_38 = r2;
  r2 = vec4<f32>(v_37.x, v_38.y, v_37.y, v_38.w);
  let v_39 = max(r2.xz, vec2<f32>());
  let v_40 = r2;
  r2 = vec4<f32>(v_39.x, v_40.y, v_39.y, v_40.w);
  let v_41 = min(r2.xz, vec2<f32>(0.5f));
  let v_42 = r2;
  r2 = vec4<f32>(v_41.x, v_42.y, v_41.y, v_42.w);
  r0.x = fma((-(r2.yyyy)).x, r2.x, r0.x);
  r0.x = fma((-(r2.yyyy)).x, r2.z, r0.x);
  let v_43 = bitcast<u32>(r1.x);
  let v_44 = r0.x;
  r3.z = select(r1.w, v_44, (v_43 != 0u));
  r2.x = (r3.x * cb6_6.tint_symbol_1[14u].x);
  r2.y = (r0.y * r3.y);
  let v_45 = (r2.xy + vec2<f32>(0.5f));
  r0 = vec4<f32>(v_45.xy, r0.zw);
  let v_46 = fract(r0.xy);
  r0 = vec4<f32>(v_46.xy, r0.zw);
  let v_47 = (r0.xy * vec2<f32>(3.0f));
  let v_48 = r1;
  r1 = vec4<f32>(v_47.x, v_48.y, v_47.y, v_48.w);
  let v_49 = fma((-(r0.xyxx)).xy, vec2<f32>(3.0f), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_49.xy, r2.zw);
  let v_50 = (r0.xy * r1.xz);
  r2 = vec4<f32>(r2.xy, v_50.xy);
  let v_51 = fma(r1.xz, r0.xy, r2.xy);
  r2 = vec4<f32>(v_51.xy, r2.zw);
  let v_52 = (r0.xy * r0.xy);
  r4 = vec4<f32>(v_52.xy, r4.zw);
  let v_53 = (r0.xy * r4.xy);
  r5 = vec4<f32>(v_53.x, r5.yz, v_53.y);
  let v_54 = fma((-(r4.xyxx)).xy, r0.xy, r2.xy);
  r2 = vec4<f32>(v_54.xy, r2.zw);
  let v_55 = fma((-(r4.xyxx)).xy, vec2<f32>(6.0f), vec2<f32>(4.0f));
  r4 = vec4<f32>(v_55.xy, r4.zw);
  let v_56 = fma(r2.zw, r0.xy, r4.xy);
  r4 = vec4<f32>(v_56.xy, r4.zw);
  let v_57 = fma(r1.xz, r0.xy, r1.xz);
  let v_58 = r1;
  r1 = vec4<f32>(v_57.x, v_58.y, v_57.y, v_58.w);
  let v_59 = (r1.xz + vec2<f32>(1.0f));
  let v_60 = r1;
  r1 = vec4<f32>(v_59.x, v_60.y, v_59.y, v_60.w);
  let v_61 = fma((-(r2.zzwz)).xz, r0.xy, r1.xz);
  let v_62 = r1;
  r1 = vec4<f32>(v_61.x, v_62.y, v_61.y, v_62.w);
  r6.x = r2.x;
  r6.y = r4.x;
  r6.z = r1.x;
  r6.w = r5.x;
  r6 = (r6 * vec4<f32>(0.16666667163372039795f));
  r5.x = r2.y;
  r5.y = r4.y;
  r5.z = r1.z;
  r2 = (r5 * vec4<f32>(0.16666667163372039795f));
  let v_63 = (r6.yw + r6.xz);
  let v_64 = r1;
  r1 = vec4<f32>(v_63.x, v_64.y, v_63.y, v_64.w);
  let v_65 = (r6.yw / r1.xz);
  r4 = vec4<f32>(v_65.xy, r4.zw);
  let v_66 = ((-(r0.xxxx)).xy + r4.xy);
  r4 = vec4<f32>(v_66.xy, r4.zw);
  let v_67 = (r2.yw + r2.xz);
  let v_68 = r2;
  r2 = vec4<f32>(v_67.x, v_68.y, v_67.y, v_68.w);
  let v_69 = (r2.yw / r2.xz);
  let v_70 = r2;
  r2 = vec4<f32>(v_70.x, v_69.x, v_70.z, v_69.y);
  let v_71 = ((-(r0.yyyy)).xy + r2.yw);
  r0 = vec4<f32>(v_71.xy, r0.zw);
  let v_72 = (r4.xy + vec2<f32>(-1.0f, 1.0f));
  let v_73 = r2;
  r2 = vec4<f32>(v_73.x, v_72.x, v_73.z, v_72.y);
  let v_74 = (r0.xy + vec2<f32>(-1.0f, 1.0f));
  r0 = vec4<f32>(v_74.xy, r0.zw);
  r4.x = (r2.y * cb6_6.tint_symbol_1[14u].z);
  r4.y = (r0.w * r0.x);
  r4.z = 0.0f;
  let v_75 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_75.xyz, r4.w);
  let v_76 = r4.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_76.xy, r4.z);
  r4.x = (r2.w * cb6_6.tint_symbol_1[14u].z);
  r4.y = (r0.w * r0.x);
  r4.z = 0.0f;
  let v_77 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_77.xyz, r4.w);
  let v_78 = r4.xyxx;
  r0.x = textureSampleCompareLevel(t15, s15, v_78.xy, r4.z);
  r4.x = (r2.y * cb6_6.tint_symbol_1[14u].z);
  r4.y = (r0.w * r0.y);
  r4.z = 0.0f;
  let v_79 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_79.xyz, r4.w);
  let v_80 = r4.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_80.xy, r4.z);
  r4.x = (r2.w * cb6_6.tint_symbol_1[14u].z);
  r4.y = (r0.w * r0.y);
  r4.z = 0.0f;
  let v_81 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_81.xyz, r4.w);
  let v_82 = r4.xyxx;
  r0.y = textureSampleCompareLevel(t15, s15, v_82.xy, r4.z);
  let v_83 = (r0.xy * r1.zz);
  r0 = vec4<f32>(v_83.xy, r0.zw);
  r0.x = fma(r1.x, r1.w, r0.x);
  r0.y = fma(r1.x, r2.y, r0.y);
  r0.y = (r0.y * r2.z);
  r0.x = fma(r2.x, r0.x, r0.y);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = textureSample(t2, s2, r3.xyxx.xy).w;
    r0.y = ((-(r0.wwww)).y + 1.0f);
  } else {
    r0.y = 1.0f;
  }
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).z, 0.0f, 1.0f);
  r0.w = clamp(fma(r1.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_84 = fma(r0.zz, r0.ww, r0.xy);
  r0 = vec4<f32>(v_84.xy, r0.zw);
  let v_85 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_85.xy, r0.zw);
  let v_86 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_86.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r0.w = (r0.y * r0.x);
  let v_87 = bitcast<u32>(r0.z);
  let v_88 = r0.w;
  r0.x = select(r0.x, v_88, (v_87 != 0u));
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
