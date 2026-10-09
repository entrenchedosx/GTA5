enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb24_struct {
  tint_symbol_1 : array<vec4<f32>, 24u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb24_struct;

struct cb6_struct {
  tint_symbol_2 : array<vec4<f32>, 6u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb6_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb17_struct {
  tint_symbol_4 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_5 : array<vec4<f32>, 50u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb2_struct {
  tint_symbol_6 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb2_struct;

var<private> v6 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : vec4<i32>;

var<private> o9 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>, v_1 : i32) {
  let v_2 = 0i;
  v6.x = bitcast<f32>((v_1 - v_2));
  let v_3 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = r0;
  o6 = vec4<f32>(v_8.xyz, o6.w);
  r0.x = dot(r1.xyz, r1.xyz);
  o3 = r1.xyz.xyzx;
  r0.x = (r0.x * 0.00000399999998990097f);
  r0.x = min(r0.x, 1.0f);
  r0.y = ((-(r0.xxxx)).y + 1.0f);
  let v_9 = -(cb2_2.tint_symbol_4[16u].zzzz);
  let v_10 = clamp(((r0.xyxx + v_9)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_10.xy, r0.zw);
  r0.z = (cb3_3.tint_symbol_5[49u].w + -1.0f);
  let v_11 = fma(r0.xy, r0.zz, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_11.xy, r0.zw);
  let v_12 = clamp(((r0.xyxx * v1.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o0 = vec4<f32>(v_12.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, v1.zw);
  o1 = vec4<f32>(o1.xy, v3.xy);
  r0 = vec4<f32>(v2.xy, r0.zw);
  r0.z = 1.0f;
  o1.x = dot(cb13_13.tint_symbol_6[0u].xyz, r0.xyz);
  o1.y = dot(cb13_13.tint_symbol_6[1u].xyz, r0.xyz);
  r0.x = dot(v4, v4);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.10000000149011611938f)));
  let v_13 = select(v4, vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r0.xxx) != vec3<u32>()));
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_15.xy, r0.z, v_15.z);
  let v_16 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_17 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  o2 = r0.xyz.xyzx;
  let v_18 = (v5.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = fma(v5.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  let v_20 = fma(v5.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  o4 = r1.xyz.xyzx;
  let v_21 = (r0.yzx * r1.zxy);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = -(r2.xyzx);
  let v_23 = fma(r1.yzx, r0.zxy, v_22.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  o5 = ((r0.xyz * v5.www)).xyzx;
  o6.w = 1.0f;
  r0.x = bitcast<f32>((bitcast<u32>(v6.x) >> 2u));
  r0.y = bitcast<f32>((bitcast<u32>(v6.x) & 3u));
  r0.z = bitcast<f32>(-(bitcast<i32>(r0.y)));
  let v_24 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (bitcast<vec3<u32>>(r0.yyy) < vec3<u32>(1u, 2u, 3u))));
  r1 = vec4<f32>(v_24.xyz, r1.w);
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) + -3i));
  let v_25 = bitcast<u32>(r1.y);
  r2.z = select(r0.y, 0.0f, (v_25 != 0u));
  r2.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r1.y)));
  r2.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.z) == 0i)));
  r2.x = r1.x;
  r0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & bitcast<vec4<u32>>(cb6_6.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.x) + 4i))])));
  let v_26 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.yw) | bitcast<vec2<u32>>(r0.xz)));
  r0 = vec4<f32>(v_26.xy, r0.zw);
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r0.x)));
  r0.y = bitcast<f32>((bitcast<i32>(r0.x) << 2u));
  let v_27 = bitcast<i32>(r0.x);
  o8 = vec4<i32>(v_27, v_27, v_27, v_27);
  r1 = (cb6_6.tint_symbol_2[1u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r1 = fma(cb6_6.tint_symbol_2[1u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r0.y)], r1);
  r1 = fma(cb6_6.tint_symbol_2[1u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 2i))], r1);
  r1 = fma(cb6_6.tint_symbol_2[1u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 3i))], r1);
  r1 = (r1 * v0.yyyy);
  r2 = (cb6_6.tint_symbol_2[0u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r2 = fma(cb6_6.tint_symbol_2[0u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r0.y)], r2);
  r2 = fma(cb6_6.tint_symbol_2[0u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 2i))], r2);
  r2 = fma(cb6_6.tint_symbol_2[0u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 3i))], r2);
  r1 = fma(v0.xxxx, r2, r1);
  r2 = (cb6_6.tint_symbol_2[2u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r2 = fma(cb6_6.tint_symbol_2[2u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r0.y)], r2);
  r2 = fma(cb6_6.tint_symbol_2[2u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 2i))], r2);
  r2 = fma(cb6_6.tint_symbol_2[2u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 3i))], r2);
  r1 = fma(v0.zzzz, r2, r1);
  r2 = (cb6_6.tint_symbol_2[3u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r2 = fma(cb6_6.tint_symbol_2[3u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r0.y)], r2);
  r2 = fma(cb6_6.tint_symbol_2[3u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 2i))], r2);
  r0 = fma(cb6_6.tint_symbol_2[3u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 3i))], r2);
  r0 = (r0 + r1);
  o7 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_3[0u]);
  let v_28 = &(x0[0u]);
  *(v_28) = vec4<f32>((*(v_28)).x, vec3<f32>());
  o9[0u] = x0[0u].x;
  o9[1u] = x0[0u].y;
  o9[2u] = x0[0u].z;
  o9[3u] = x0[0u].w;
  v = vec4<f32>(o9[0u], o9[1u], o9[2u], o9[3u]);
}

struct tint_symbol_8 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @location(4u)
  o4 : vec4<f32>,
  @location(5u)
  o5 : vec4<f32>,
  @location(6u)
  o6 : vec4<f32>,
  @builtin(position)
  o7 : vec4<f32>,
  @location(9u) @interpolate(flat)
  o8 : vec4<i32>,
  @builtin(clip_distances)
  o9 : array<f32, 4u>,
  @location(15u)
  tint_symbol_7 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @builtin(instance_index) v_29 : u32) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v3, v4, v5, i32(v_29));
  return tint_symbol_8(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, v);
}
