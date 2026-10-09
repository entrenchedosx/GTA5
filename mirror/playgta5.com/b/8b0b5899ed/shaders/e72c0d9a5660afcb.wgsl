diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

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
  let v_14 = textureSample(t14, s14, r1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r1.z = (r1.z * cb12_12.tint_symbol_2[0u].w);
  let v_15 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_15.xy, r2.zw);
  let v_16 = fma(r0.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r1 = vec4<f32>(v_16.xy, r1.z, v_16.z);
  let v_17 = &(x0[0u]);
  let v_18 = r1;
  *(v_17) = vec4<f32>(v_18.xyw, (*(v_17)).w);
  let v_19 = fma(r0.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = &(x0[1u]);
  let v_21 = r3;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r0.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = &(x0[2u]);
  let v_24 = r0;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = &(x0[3u]);
  let v_26 = r0;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  let v_27 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.39999997615814208984f, 0.34999999403953552246f));
  r3 = vec4<f32>(r3.xy, v_27.xy);
  r0.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_28 = -(r1.zzzz);
  r0.z = fma(r0.z, 0.5f, v_28.z);
  let v_29 = abs(r0.yyyy);
  let v_30 = max(v_29.xy, abs(r0.xxxx).xy);
  r0 = vec4<f32>(v_30.xy, r0.zw);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < r0.z)));
  let v_31 = (bitcast<u32>(r0.x) != 0u);
  let v_32 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r0.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_32, v_31);
  let v_33 = abs(r3.yyyy);
  r1.z = max(v_33.z, abs(r3.xxxx).z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z < r0.z)));
  let v_34 = bitcast<u32>(r1.z);
  r0.x = select(r0.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_34 != 0u));
  let v_35 = abs(r1.yyyy);
  r1.x = max(v_35.x, abs(r1.xxxx).x);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.z)));
  let v_36 = bitcast<u32>(r0.z);
  r0.x = select(r0.x, 0.0f, (v_36 != 0u));
  let v_37 = x0[bitcast<i32>(r0.x)];
  r1 = vec4<f32>(v_37.xyz, r1.w);
  r0.x = f32(bitcast<i32>(r0.x));
  r0.z = (r0.x + 0.5f);
  r0.z = (r0.z * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.xxxx)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r0.x = dot(r4, cb6_6.tint_symbol_1[12u]);
  r1.w = dot(r4, cb6_6.tint_symbol_1[13u]);
  r4.x = (r1.x + 0.5f);
  r4.y = fma(r1.y, 0.25f, r0.z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = ((-(r0.xxxx)).x + r1.z);
  let v_38 = dpdx(r4.xyy);
  r5 = vec4<f32>(v_38.xy, r5.z, v_38.z);
  r5.z = dpdx(r0.x);
  let v_39 = dpdy(r4.yxy);
  r6 = vec4<f32>(v_39.xyz, r6.w);
  r6.w = dpdy(r0.x);
  let v_40 = (r5.yw * r6.yw);
  r1 = vec4<f32>(v_40.xy, r1.zw);
  let v_41 = -(r1.xyxx);
  let v_42 = fma(r5.xz, r6.xz, v_41.xy);
  r7 = vec4<f32>(v_42.xy, r7.zw);
  r1.x = (1.0f / r7.x);
  r1.y = (r5.z * r6.y);
  let v_43 = -(r1.yyyy);
  r7.z = fma(r5.x, r6.w, v_43.z);
  let v_44 = (r1.xx * r7.yz);
  r1 = vec4<f32>(v_44.xy, r1.zw);
  let v_45 = max(r1.xy, vec2<f32>());
  r1 = vec4<f32>(v_45.xy, r1.zw);
  let v_46 = min(r1.xy, vec2<f32>(0.5f));
  r1 = vec4<f32>(v_46.xy, r1.zw);
  r0.x = fma((-(r1.wwww)).x, r1.x, r0.x);
  r0.x = fma((-(r1.wwww)).x, r1.y, r0.x);
  let v_47 = bitcast<u32>(r0.z);
  let v_48 = r0.x;
  r4.z = select(r1.z, v_48, (v_47 != 0u));
  let v_49 = (r2.xy * r3.zw);
  r1 = vec4<f32>(v_49.xy, r1.zw);
  r1.z = 0.0f;
  let v_50 = (r1.xyz + r4.xyz);
  r1 = vec4<f32>(v_50.xyz, r1.w);
  let v_51 = (-(r2.yyyx)).zw;
  r2 = vec4<f32>(r2.xy, v_51.xy);
  r5 = (r2.zxyw * r3.zwzw);
  let v_52 = (r5.xy * vec2<f32>(0.5f));
  r6 = vec4<f32>(v_52.xy, r6.zw);
  r6.z = 0.0f;
  let v_53 = (r4.xyz + r6.xyz);
  r6 = vec4<f32>(v_53.xyz, r6.w);
  let v_54 = ((-(r2.xxyx)).xz * r3.zw);
  let v_55 = r0;
  r0 = vec4<f32>(v_54.x, v_55.y, v_54.y, v_55.w);
  let v_56 = (r0.xz * vec2<f32>(0.75f));
  r2 = vec4<f32>(v_56.xy, r2.zw);
  r2.z = 0.0f;
  let v_57 = (r2.xyz + r4.xyz);
  r2 = vec4<f32>(v_57.xyz, r2.w);
  let v_58 = (r5.zw * vec2<f32>(0.25f));
  r3 = vec4<f32>(v_58.xy, r3.zw);
  r3.z = 0.0f;
  let v_59 = (r3.xyz + r4.xyz);
  r3 = vec4<f32>(v_59.xyz, r3.w);
  let v_60 = r1.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_60.xy, r1.z);
  let v_61 = r6.xyxx;
  r1.y = textureSampleCompareLevel(t15, s15, v_61.xy, r6.z);
  let v_62 = r2.xyxx;
  r1.z = textureSampleCompareLevel(t15, s15, v_62.xy, r2.z);
  let v_63 = r3.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_63.xy, r3.z);
  r0.x = dot(r1, vec4<f32>(1.0f));
  r1.x = (r0.x * 0.25f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = textureSample(t2, s2, r4.xyxx.xy).w;
    r1.y = ((-(r0.xxxx)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.x = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).x, 0.0f, 1.0f);
  r0.y = clamp(fma(r0.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).y, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_64 = fma(r0.xx, r0.yy, r1.xy);
  r0 = vec4<f32>(v_64.xy, r0.zw);
  let v_65 = clamp(((r0.xxyx * r0.xxyx)).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_66 = r0;
  r0 = vec4<f32>(v_66.x, v_65.xy, v_66.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.x = (r0.z * r0.y);
  let v_67 = bitcast<u32>(r0.w);
  let v_68 = r1.x;
  r0.x = select(r0.y, v_68, (v_67 != 0u));
  o0 = r0.xzzz;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
