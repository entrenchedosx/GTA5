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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.y = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb11_11.tint_symbol_3[2u].w / r0.x);
  let v_1 = (r0.xxx * v3.xyz);
  r0 = vec4<f32>(r0.x, v_1.xyz);
  let v_2 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = (r1.xy * vec2<f32>(0.015625f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1 = textureSample(t14, s14, r1.xyxx.xy);
  r1.x = (r1.z * cb12_12.tint_symbol_2[0u].w);
  let v_4 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  let v_5 = &(x0[0u]);
  let v_6 = r1;
  *(v_5) = vec4<f32>(v_6.yzw, (*(v_5)).w);
  let v_7 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = &(x0[1u]);
  let v_9 = r2;
  *(v_8) = vec4<f32>(v_9.xyz, (*(v_8)).w);
  let v_10 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r0 = vec4<f32>(r0.x, v_10.xyz);
  let v_11 = &(x0[2u]);
  let v_12 = r0;
  *(v_11) = vec4<f32>(v_12.yzw, (*(v_11)).w);
  let v_13 = &(x0[3u]);
  let v_14 = r0;
  *(v_13) = vec4<f32>(v_14.yzw, (*(v_13)).w);
  r0.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  let v_15 = -(r1.xxxx);
  r0.w = fma(r0.w, 0.5f, v_15.w);
  let v_16 = abs(r0.zzzz);
  let v_17 = max(v_16.yz, abs(r0.yyyy).yz);
  let v_18 = r0;
  r0 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < r0.w)));
  let v_19 = (bitcast<u32>(r0.y) != 0u);
  let v_20 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r0.y = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_20, v_19);
  let v_21 = abs(r2.yyyy);
  r1.x = max(v_21.x, abs(r2.xxxx).x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.w)));
  let v_22 = bitcast<u32>(r1.x);
  r0.y = select(r0.y, bitcast<f32>(v.tint_symbol_4[2i].x), (v_22 != 0u));
  let v_23 = abs(r1.zzzz);
  r1.x = max(v_23.x, abs(r1.yyyy).x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.w)));
  let v_24 = bitcast<u32>(r0.w);
  r0.y = select(r0.y, 0.0f, (v_24 != 0u));
  let v_25 = x0[bitcast<i32>(r0.y)];
  r1 = vec4<f32>(v_25.xyz, r1.w);
  r0.y = f32(bitcast<i32>(r0.y));
  r0.w = (r0.y + 0.5f);
  r0.w = (r0.w * 0.25f);
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.yyyy)));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  r0.y = dot(r2, cb6_6.tint_symbol_1[12u]);
  r1.w = dot(r2, cb6_6.tint_symbol_1[13u]);
  r2.x = (r1.x + 0.5f);
  r2.y = fma(r1.y, 0.25f, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((r0.y == 0.0f))));
  r0.y = ((-(r0.yyyy)).y + r1.z);
  let v_26 = dpdx(r2.xyy);
  r3 = vec4<f32>(v_26.xy, r3.z, v_26.z);
  r3.z = dpdx(r0.y);
  let v_27 = dpdy(r2.yxy);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  r4.w = dpdy(r0.y);
  let v_28 = (r3.yw * r4.yw);
  r1 = vec4<f32>(v_28.xy, r1.zw);
  let v_29 = -(r1.xyxx);
  let v_30 = fma(r3.xz, r4.xz, v_29.xy);
  r5 = vec4<f32>(v_30.xy, r5.zw);
  r1.x = (1.0f / r5.x);
  r1.y = (r3.z * r4.y);
  let v_31 = -(r1.yyyy);
  r5.z = fma(r3.x, r4.w, v_31.z);
  let v_32 = (r1.xx * r5.yz);
  r1 = vec4<f32>(v_32.xy, r1.zw);
  let v_33 = max(r1.xy, vec2<f32>());
  r1 = vec4<f32>(v_33.xy, r1.zw);
  let v_34 = min(r1.xy, vec2<f32>(0.5f));
  r1 = vec4<f32>(v_34.xy, r1.zw);
  r0.y = fma((-(r1.wwww)).y, r1.x, r0.y);
  r0.y = fma((-(r1.wwww)).y, r1.y, r0.y);
  let v_35 = bitcast<u32>(r0.w);
  let v_36 = r0.y;
  r0.y = select(r1.z, v_36, (v_35 != 0u));
  let v_37 = r2.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_37.xy, r0.y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r2 = textureSample(t2, s2, r2.xyxx.xy);
    r1.y = ((-(r2.wwww)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.x = clamp(fma(r0.xxxx, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).x, 0.0f, 1.0f);
  r0.y = clamp(fma(r0.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.0f)).y, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_38 = fma(r0.xx, r0.yy, r1.xy);
  r0 = vec4<f32>(v_38.xy, r0.zw);
  let v_39 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_39.xy, r0.zw);
  let v_40 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_40.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r0.w = (r0.y * r0.x);
  let v_41 = bitcast<u32>(r0.z);
  let v_42 = r0.w;
  r0.x = select(r0.x, v_42, (v_41 != 0u));
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
