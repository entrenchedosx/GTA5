diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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
  r0.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_25 = -(r1.xxxx);
  r0.z = fma(r0.z, 0.5f, v_25.z);
  let v_26 = abs(r0.yyyy);
  let v_27 = max(v_26.xy, abs(r0.xxxx).xy);
  r0 = vec4<f32>(v_27.xy, r0.zw);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < r0.z)));
  let v_28 = (bitcast<u32>(r0.x) != 0u);
  let v_29 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r0.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_29, v_28);
  let v_30 = abs(r2.yyyy);
  r1.x = max(v_30.x, abs(r2.xxxx).x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.z)));
  let v_31 = bitcast<u32>(r1.x);
  r0.x = select(r0.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_31 != 0u));
  let v_32 = abs(r1.zzzz);
  r1.x = max(v_32.x, abs(r1.yyyy).x);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.z)));
  let v_33 = bitcast<u32>(r0.z);
  r0.x = select(r0.x, 0.0f, (v_33 != 0u));
  let v_34 = x0[bitcast<i32>(r0.x)];
  r1 = vec4<f32>(v_34.xyz, r1.w);
  r0.x = f32(bitcast<i32>(r0.x));
  r0.z = (r0.x + 0.5f);
  r0.z = (r0.z * 0.25f);
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.xxxx)));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  r0.x = dot(r2, cb6_6.tint_symbol_1[12u]);
  r1.w = dot(r2, cb6_6.tint_symbol_1[13u]);
  r2.x = (r1.x + 0.5f);
  r2.y = fma(r1.y, 0.25f, r0.z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = ((-(r0.xxxx)).x + r1.z);
  let v_35 = dpdx(r2.xyy);
  r3 = vec4<f32>(v_35.xy, r3.z, v_35.z);
  r3.z = dpdx(r0.x);
  let v_36 = dpdy(r2.yxy);
  r4 = vec4<f32>(v_36.xyz, r4.w);
  r4.w = dpdy(r0.x);
  let v_37 = (r3.yw * r4.yw);
  r1 = vec4<f32>(v_37.xy, r1.zw);
  let v_38 = -(r1.xyxx);
  let v_39 = fma(r3.xz, r4.xz, v_38.xy);
  r5 = vec4<f32>(v_39.xy, r5.zw);
  r1.x = (1.0f / r5.x);
  r1.y = (r3.z * r4.y);
  let v_40 = -(r1.yyyy);
  r5.z = fma(r3.x, r4.w, v_40.z);
  let v_41 = (r1.xx * r5.yz);
  r1 = vec4<f32>(v_41.xy, r1.zw);
  let v_42 = max(r1.xy, vec2<f32>());
  r1 = vec4<f32>(v_42.xy, r1.zw);
  let v_43 = min(r1.xy, vec2<f32>(0.5f));
  r1 = vec4<f32>(v_43.xy, r1.zw);
  r0.x = fma((-(r1.wwww)).x, r1.x, r0.x);
  r0.x = fma((-(r1.wwww)).x, r1.y, r0.x);
  let v_44 = bitcast<u32>(r0.z);
  let v_45 = r0.x;
  r0.x = select(r1.z, v_45, (v_44 != 0u));
  let v_46 = r2.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_46.xy, r0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = textureSample(t2, s2, r2.xyxx.xy).w;
    r1.y = ((-(r0.xxxx)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.x = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).x, 0.0f, 1.0f);
  r0.y = clamp(fma(r0.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).y, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_47 = fma(r0.xx, r0.yy, r1.xy);
  r0 = vec4<f32>(v_47.xy, r0.zw);
  let v_48 = clamp(((r0.xxyx * r0.xxyx)).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_49 = r0;
  r0 = vec4<f32>(v_49.x, v_48.xy, v_49.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.x = (r0.z * r0.y);
  let v_50 = bitcast<u32>(r0.w);
  let v_51 = r1.x;
  r0.x = select(r0.y, v_51, (v_50 != 0u));
  o0 = r0.xzzz;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
