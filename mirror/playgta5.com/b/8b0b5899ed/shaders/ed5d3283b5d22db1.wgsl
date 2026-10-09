enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

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

var<private> v5 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<i32>;

var<private> o6 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 1u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_7;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>, v_2 : i32) {
  let v_3 = 0i;
  v5.x = bitcast<f32>((v_2 - v_3));
  o0 = vec4<f32>(o0.xy, v1.zw);
  r0.x = (cb3_3.tint_symbol_5[49u].w + -1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f >= cb2_2.tint_symbol_4[16u].y)));
  r0.z = select(1.0f, 0.0f, (bitcast<u32>(r0.y) != 0u));
  let v_4 = (r0.zzz * v0);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = (r1.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(r1.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r1.zzz, cb1_1.tint_symbol[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = (r2.xyz + cb1_1.tint_symbol[3u].xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = ((-(r2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = r2;
  o3 = vec4<f32>(v_10.xyz, o3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = (r0.w * 0.00000399999998990097f);
  r2.x = min(r0.w, 1.0f);
  r2.y = ((-(r2.xxxx)).y + 1.0f);
  let v_11 = -(cb2_2.tint_symbol_4[16u].zzzz);
  let v_12 = clamp(((r2.xyxx + v_11)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_12.xy, r2.zw);
  let v_13 = fma(r2.xy, r0.xx, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_13.x, r0.yz, v_13.y);
  let v_14 = clamp(((r0.xwxx * v1.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o0 = vec4<f32>(v_14.xy, o0.zw);
  o1 = v2.xyxy;
  r0.x = dot(v3, v3);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.10000000149011611938f)));
  let v_15 = select(v3, vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r0.xxx) != vec3<u32>()));
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = (r2.yyy * cb1_1.tint_symbol[1u].xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = fma(r2.xxx, cb1_1.tint_symbol[0u].xyz, r3.xyz);
  r2 = vec4<f32>(v_17.xy, r2.z, v_17.z);
  let v_18 = fma(r2.zzz, cb1_1.tint_symbol[2u].xyz, r2.xyw);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = inverseSqrt(r0.x);
  o2 = ((r0.xxx * r2.xyz)).xyzx;
  o3.w = 1.0f;
  r0.x = (cb1_1.tint_symbol[3u].x * 0.20000000298023223877f);
  let v_19 = -(r0.xxxx);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.x >= v_19.w)));
  r0.x = fract(abs(r0.xxxx).x);
  let v_20 = -(r0.xxxx);
  let v_21 = bitcast<u32>(r0.w);
  r0.x = select(v_20.x, r0.x, (v_21 != 0u));
  r0.x = (r0.x * 5.0f);
  r0.x = fma(cb2_2.tint_symbol_4[16u].x, 2.5f, r0.x);
  r0.x = sin(r0.xxxx.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < abs(r0.xxxx).x)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb2_2.tint_symbol_4[16u].y < 0.00600000005215406418f)));
  let v_22 = bitcast<u32>(r0.w);
  let v_23 = r0.x;
  r0.x = select(bitcast<f32>(v_1.tint_symbol_6[0i].x), v_23, (v_22 != 0u));
  let v_24 = bitcast<u32>(r0.y);
  r0.x = select(r0.x, 0.0f, (v_24 != 0u));
  r0.y = bitcast<f32>((bitcast<u32>(v5.x) >> 2u));
  r0.w = bitcast<f32>((bitcast<u32>(v5.x) & 3u));
  r1.w = bitcast<f32>(-(bitcast<i32>(r0.w)));
  let v_25 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (bitcast<vec3<u32>>(r0.www) < vec3<u32>(1u, 2u, 3u))));
  r2 = vec4<f32>(v_25.xyz, r2.w);
  r0.w = bitcast<f32>((bitcast<i32>(r0.w) + -3i));
  let v_26 = bitcast<u32>(r2.y);
  r3.z = select(r0.w, 0.0f, (v_26 != 0u));
  r3.y = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r2.y)));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.z) == 0i)));
  r3.x = r2.x;
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & bitcast<vec4<u32>>(cb6_6.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.y) + 4i))])));
  let v_27 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r2.yw) | bitcast<vec2<u32>>(r2.xz)));
  let v_28 = r0;
  r0 = vec4<f32>(v_28.x, v_27.x, v_28.z, v_27.y);
  r0.y = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r0.y)));
  r0.w = bitcast<f32>((bitcast<i32>(r0.y) << 2u));
  let v_29 = bitcast<i32>(r0.y);
  o5 = vec4<i32>(v_29, v_29, v_29, v_29);
  r2 = (cb6_6.tint_symbol_2[0u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.w) + 1i))]);
  r2 = fma(cb6_6.tint_symbol_2[0u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r0.w)], r2);
  r2 = fma(cb6_6.tint_symbol_2[0u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], r2);
  r2 = fma(cb6_6.tint_symbol_2[0u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.w) + 3i))], r2);
  r3 = (cb6_6.tint_symbol_2[1u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.w) + 1i))]);
  r3 = fma(cb6_6.tint_symbol_2[1u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r0.w)], r3);
  r3 = fma(cb6_6.tint_symbol_2[1u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], r3);
  r3 = fma(cb6_6.tint_symbol_2[1u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.w) + 3i))], r3);
  r3 = (r1.yyyy * r3);
  r2 = fma(r1.xxxx, r2, r3);
  r3 = (cb6_6.tint_symbol_2[2u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.w) + 1i))]);
  r3 = fma(cb6_6.tint_symbol_2[2u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r0.w)], r3);
  r3 = fma(cb6_6.tint_symbol_2[2u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], r3);
  r3 = fma(cb6_6.tint_symbol_2[2u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.w) + 3i))], r3);
  r1 = fma(r1.zzzz, r3, r2);
  r2 = (cb6_6.tint_symbol_2[3u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.w) + 1i))]);
  r2 = fma(cb6_6.tint_symbol_2[3u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r0.w)], r2);
  r2 = fma(cb6_6.tint_symbol_2[3u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], r2);
  r2 = fma(cb6_6.tint_symbol_2[3u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.w) + 3i))], r2);
  r1 = (r1 + r2);
  r0.y = fma(r0.z, r1.z, -0.00000999999974737875f);
  let v_30 = (r0.zzz * r1.xyw);
  r1 = vec4<f32>(v_30.xy, r1.z, v_30.z);
  r1.z = (r0.y * r0.z);
  o4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0.xxxx) & bitcast<vec4<u32>>(r1)));
  x0[0u].x = dot(r1, cb0_0.tint_symbol_3[0u]);
  let v_31 = &(x0[0u]);
  *(v_31) = vec4<f32>((*(v_31)).x, vec3<f32>());
  o6[0u] = x0[0u].x;
  o6[1u] = x0[0u].y;
  o6[2u] = x0[0u].z;
  o6[3u] = x0[0u].w;
  v = vec4<f32>(o6[0u], o6[1u], o6[2u], o6[3u]);
}

struct tint_symbol_9 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @builtin(position)
  o4 : vec4<f32>,
  @location(6u) @interpolate(flat)
  o5 : vec4<i32>,
  @builtin(clip_distances)
  o6 : array<f32, 4u>,
  @location(15u)
  tint_symbol_8 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>, @builtin(instance_index) v_32 : u32) -> tint_symbol_9 {
  main_inner(v0, v1, v2, v3, i32(v_32));
  return tint_symbol_9(o0, o1, o2, o3, o4, o5, o6, v);
}
