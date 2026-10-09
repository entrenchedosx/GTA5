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

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

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
  let v_8 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = fma(r1.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_3[4u].xy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r0.w = (r1.x * cb11_11.tint_symbol_3[0u].w);
  r1.x = (r1.y * cb11_11.tint_symbol_3[1u].w);
  let v_10 = (r1.xxx * cb11_11.tint_symbol_3[1u].xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = fma(r0.www, cb11_11.tint_symbol_3[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = -(cb11_11.tint_symbol_3[2u].xyzx);
  let v_13 = (r1.xyz + v_12.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r2 = vec4<f32>(v_14.xy, r2.zw);
  let v_15 = r2.xy;
  let v_16 = max(v_15, vec2<f32>(-2147483648.0f));
  let v_17 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_16), vec2<i32>(2147483647i), (v_16 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_15 == v_15))));
  r3 = vec4<f32>(v_17.xy, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r0.w = textureLoad(t3, bitcast<vec2<i32>>(r3.xy), 0i).x;
  r1.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.w);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_18 = fma(r1.xyz, r0.www, cb11_11.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = (r2.xy * vec2<f32>(0.015625f));
  r2 = vec4<f32>(v_20.xy, r2.zw);
  let v_21 = textureSample(t14, s14, r2.xyxx.xy).xyz;
  r2 = vec4<f32>(v_21.xyz, r2.w);
  r1.w = (r2.z * cb12_12.tint_symbol_2[0u].w);
  r2 = fma(r2.xyyx, vec4<f32>(2.0f), vec4<f32>(-1.0f));
  let v_22 = fma(r0.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  let v_23 = &(x0[0u]);
  let v_24 = r3;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = fma(r0.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  let v_26 = &(x0[1u]);
  let v_27 = r4;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  let v_28 = fma(r0.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = &(x0[2u]);
  let v_30 = r0;
  *(v_29) = vec4<f32>(v_30.xyz, (*(v_29)).w);
  let v_31 = &(x0[3u]);
  let v_32 = r0;
  *(v_31) = vec4<f32>(v_32.xyz, (*(v_31)).w);
  let v_33 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.39999997615814208984f, 0.34999999403953552246f));
  r3 = vec4<f32>(r3.xy, v_33.xy);
  r0.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_34 = -(r1.wwww);
  r0.z = fma(r0.z, 0.5f, v_34.z);
  let v_35 = abs(r0.yyyy);
  let v_36 = max(v_35.xy, abs(r0.xxxx).xy);
  r0 = vec4<f32>(v_36.xy, r0.zw);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < r0.z)));
  let v_37 = (bitcast<u32>(r0.x) != 0u);
  let v_38 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r0.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_38, v_37);
  let v_39 = abs(r4.yyyy);
  r1.w = max(v_39.w, abs(r4.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.z)));
  let v_40 = bitcast<u32>(r1.w);
  r0.x = select(r0.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_40 != 0u));
  let v_41 = abs(r3.yyyy);
  r1.w = max(v_41.w, abs(r3.xxxx).w);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.z)));
  let v_42 = bitcast<u32>(r0.z);
  r0.x = select(r0.x, 0.0f, (v_42 != 0u));
  let v_43 = x0[bitcast<i32>(r0.x)];
  r4 = vec4<f32>(v_43.xyz, r4.w);
  r0.x = f32(bitcast<i32>(r0.x));
  r0.z = (r0.x + 0.5f);
  r0.z = (r0.z * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.xxxx)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r0.x = dot(r5, cb6_6.tint_symbol_1[12u]);
  r1.w = dot(r5, cb6_6.tint_symbol_1[13u]);
  r3.x = (r4.x + 0.5f);
  r3.y = fma(r4.y, 0.25f, r0.z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = ((-(r0.xxxx)).x + r4.z);
  let v_44 = dpdx(r3.xyy);
  r5 = vec4<f32>(v_44.xy, r5.z, v_44.z);
  r5.z = dpdx(r0.x);
  let v_45 = dpdy(r3.yxy);
  r6 = vec4<f32>(v_45.xyz, r6.w);
  r6.w = dpdy(r0.x);
  let v_46 = (r5.yw * r6.yw);
  r4 = vec4<f32>(v_46.xy, r4.zw);
  let v_47 = -(r4.xyxx);
  let v_48 = fma(r5.xz, r6.xz, v_47.xy);
  r7 = vec4<f32>(v_48.xy, r7.zw);
  r4.x = (1.0f / r7.x);
  r4.y = (r5.z * r6.y);
  let v_49 = -(r4.yyyy);
  r7.z = fma(r5.x, r6.w, v_49.z);
  let v_50 = (r4.xx * r7.yz);
  r4 = vec4<f32>(v_50.xy, r4.zw);
  let v_51 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_51.xy, r4.zw);
  let v_52 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_52.xy, r4.zw);
  r0.x = fma((-(r1.wwww)).x, r4.x, r0.x);
  r0.x = fma((-(r1.wwww)).x, r4.y, r0.x);
  let v_53 = bitcast<u32>(r0.z);
  let v_54 = r0.x;
  r4.z = select(r4.z, v_54, (v_53 != 0u));
  let v_55 = (r2.zw * r3.zw);
  let v_56 = r0;
  r0 = vec4<f32>(v_55.x, v_56.y, v_55.y, v_56.w);
  let v_57 = fma(r3.zw, r2.xy, r3.xy);
  r4 = vec4<f32>(v_57.xy, r4.zw);
  let v_58 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.0f, 0.25f));
  r2 = vec4<f32>(v_58.xy, r2.zw);
  r2.z = 0.0f;
  let v_59 = (r2.xyz + r4.xyz);
  r5 = vec4<f32>(v_59.xyz, r5.w);
  let v_60 = r5.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_60.xy, r5.z);
  let v_61 = fma(r0.xz, vec2<f32>(-0.5f, 0.5f), r3.xy);
  r4 = vec4<f32>(v_61.xy, r4.zw);
  let v_62 = (r2.xyz + r4.xyz);
  r2 = vec4<f32>(v_62.xyz, r2.w);
  let v_63 = r2.xyxx;
  r0.x = textureSampleCompareLevel(t15, s15, v_63.xy, r2.z);
  r0.x = (r0.x + r1.w);
  r2.x = (r0.x * 0.5f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = textureSample(t2, s2, r3.xyxx.xy).w;
    r2.y = ((-(r0.xxxx)).y + 1.0f);
  } else {
    r2.y = 1.0f;
  }
  r0.x = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).x, 0.0f, 1.0f);
  r0.y = clamp(fma(r0.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).y, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_64 = fma(r0.xx, r0.yy, r2.xy);
  r0 = vec4<f32>(v_64.xy, r0.zw);
  let v_65 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_65.xy, r0.zw);
  let v_66 = min(r0.xy, vec2<f32>(1.0f));
  let v_67 = r0;
  r0 = vec4<f32>(v_67.x, v_66.xy, v_67.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r0.z * r0.y);
  let v_68 = bitcast<u32>(r0.w);
  let v_69 = r1.w;
  r0.x = select(r0.y, v_69, (v_68 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_70 = r2;
  r2 = vec4<f32>(v_70.x, 0.0f, v_70.z, 0.5f);
  let v_71 = fma(r1.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  let v_72 = r0;
  r0 = vec4<f32>(v_72.x, v_71.x, v_72.z, v_71.y);
  r2.z = textureSample(t5, s5, r0.ywyy.xy).y;
  r0.y = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.w = clamp(fma(r1.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).w, 0.0f, 1.0f);
  r0.w = sqrt(r0.w);
  r0.w = fma((-(r0.wwww)).w, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.y = (r0.w * r0.y);
  o0 = (r0.yyyy * r0.xzzz);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
