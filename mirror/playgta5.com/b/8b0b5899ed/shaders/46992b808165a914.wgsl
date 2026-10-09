enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct_1;

struct cb9_struct {
  tint_symbol_3 : array<vec4<f32>, 9u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb9_struct;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v12 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : vec4<f32>;

var<private> o9 : vec4<f32>;

var<private> o10 : vec4<f32>;

var<private> o11 : vec4<f32>;

var<private> o12 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 3u>;

var<private> x1 : array<vec4<f32>, 3u>;

var<private> x2 : array<vec4<f32>, 3u>;

var<private> x3 : array<vec4<f32>, 3u>;

var<private> x4 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>, v10 : vec4<f32>, v11 : vec4<f32>, v_1 : i32, v13 : vec3<f32>) {
  let v_2 = 0i;
  v12.x = bitcast<f32>((v_1 - v_2));
  x0[0u].x = v9.x;
  x0[1u].x = 0.5f;
  x0[2u].x = v9.y;
  x1[0u].x = v9.z;
  x1[1u].x = 0.5f;
  x1[2u].x = v9.w;
  x2[0u].x = v9.x;
  x2[1u].x = 0.5f;
  x2[2u].x = v9.y;
  x3[0u].x = v9.z;
  x3[1u].x = 0.5f;
  x3[2u].x = v9.w;
  r0 = vec4<f32>(((v1.xyz * v1.xyz)).xyz, r0.w);
  let v_3 = fma(r0.xyz, v3.yyy, v1.xyz);
  o0 = vec4<f32>(v_3.xyz, o0.w);
  o0.w = (v1.w * v4.y);
  let v_4 = v13.xy;
  let v_5 = max(v_4, vec2<f32>(-2147483648.0f));
  let v_6 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_5), vec2<i32>(2147483647i), (v_5 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_4 == v_4))));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0.z = x0[bitcast<i32>(r0.x)].x;
  r1 = vec4<f32>((((-(v11.xwxx)).xy + v11.yz)).xy, r1.zw);
  o1.z = fma(r0.z, r1.x, v11.x);
  r0.w = x1[bitcast<i32>(r0.y)].x;
  o1.w = fma(r0.w, r1.y, v11.w);
  r1 = vec4<f32>((((-(v10.xwxx)).xy + v10.yz)).xy, r1.zw);
  o1.x = fma(r0.z, r1.x, v10.x);
  o1.y = fma(r0.w, r1.y, v10.w);
  r0.x = x2[bitcast<i32>(r0.x)].x;
  r0.y = x3[bitcast<i32>(r0.y)].x;
  o2.y = fma(r0.y, r1.y, v10.w);
  o2.x = fma(r0.x, r1.x, v10.x);
  o2 = vec4<f32>(o2.xy, vec2<f32>());
  o3.x = clamp(v3.x, 0.0f, 1.0f);
  o3.y = v3.y;
  o4 = vec4<f32>();
  r0.x = f32(bitcast<u32>(v12.x));
  r0.x = (r0.x * cb9_9.tint_symbol_3[8u].y);
  let v_7 = r0.x;
  let v_8 = max(v_7, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_8), 2147483647i, (v_8 >= 2147483648.0f)), 0i, !((v_7 == v_7))));
  let v_9 = cb9_9.tint_symbol_3[8u].x;
  let v_10 = max(v_9, -2147483648.0f);
  r0.y = bitcast<f32>(select(select(i32(v_10), 2147483647i, (v_10 >= 2147483648.0f)), 0i, !((v_9 == v_9))));
  let v_11 = (-(bitcast<vec4<i32>>(r0.xxxx))).x;
  let v_12 = bitcast<i32>(r0.y);
  r0.x = bitcast<f32>(((v_11 * v_12) + bitcast<i32>(v12.x)));
  r0.x = dot(cb9_9.tint_symbol_3[7u], icb0[bitcast<i32>(r0.x)]);
  r0.x = trunc(r0.x);
  o5.z = r0.x;
  r0.x = ((-(r0.xxxx)).x + 3.0f);
  r0.x = (r0.x * 0.25f);
  o5.x = v4.x;
  let v_13 = o5;
  o5 = vec4<f32>(v_13.x, v1.x, v_13.z, v1.z);
  o6 = vec4<f32>(v5.xy, o6.zw);
  o6 = vec4<f32>(o6.xy, vec2<f32>());
  r1 = vec4<f32>(((v0.xz + v7.xz)).xy, r1.zw);
  r2.x = v6.w;
  r2.y = v8.w;
  let v_14 = (r1.xy + r2.xy);
  r1 = vec4<f32>(v_14.xy, r1.zw);
  let v_15 = ((-(r2.xxxy)).zw + v8.xz);
  r1 = vec4<f32>(r1.xy, v_15.xy);
  let v_16 = fma(r1.zw, r0.zz, r1.xy);
  let v_17 = r0;
  r0 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  r1 = vec4<f32>(((v6.xz + (-(v7.xzxx)).xy)).xy, r1.zw);
  let v_18 = fma(r1.xy, r0.ww, r0.yz);
  r1 = vec4<f32>(v_18.xy, r1.zw);
  r1.z = 1.0f;
  r2.x = dot(r1.xyz, cb9_9.tint_symbol_3[2u].xyz);
  r2.y = dot(r1.xyz, cb9_9.tint_symbol_3[3u].xyz);
  r2.z = dot(r1.xyz, cb9_9.tint_symbol_3[4u].xyz);
  let v_19 = (r2.xyz * cb7_7.tint_symbol_2[0u].xxx);
  r0 = vec4<f32>(r0.x, v_19.xyz);
  let v_20 = fma(r2.xyz, cb7_7.tint_symbol_2[0u].xxx, cb1_1.tint_symbol[15u].xyz);
  o8 = vec4<f32>(v_20.xyz, o8.w);
  r0.y = dot(r0.yzw, r0.yzw);
  o7.z = sqrt(r0.y);
  o7 = vec4<f32>(vec2<f32>(), o7.z, 0.0f);
  o8.w = 0.0f;
  o9 = vec4<f32>();
  o10 = vec4<f32>();
  r0.y = (r1.y + 1.0f);
  r0.x = fma(r0.y, 0.125f, r0.x);
  r1.w = fma(r0.x, 2.0f, -1.0f);
  let v_21 = r1;
  o11 = vec4<f32>(v_21.xw, o11.zw);
  x4[0u].x = dot(r1.xwz, cb0_0.tint_symbol_1[0u].xyw);
  o11 = vec4<f32>(o11.xy, vec2<f32>(0.0f, 1.0f));
  let v_22 = &(x4[0u]);
  *(v_22) = vec4<f32>((*(v_22)).x, vec3<f32>());
  o12[0u] = x4[0u].x;
  o12[1u] = x4[0u].y;
  o12[2u] = x4[0u].z;
  o12[3u] = x4[0u].w;
  v = vec4<f32>(o12[0u], o12[1u], o12[2u], o12[3u]);
}

struct tint_symbol_5 {
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
  @location(7u)
  o7 : vec4<f32>,
  @location(8u)
  o8 : vec4<f32>,
  @location(9u)
  o9 : vec4<f32>,
  @location(10u)
  o10 : vec4<f32>,
  @builtin(position)
  o11 : vec4<f32>,
  @builtin(clip_distances)
  o12 : array<f32, 4u>,
  @location(15u)
  tint_symbol_4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>, @location(11u) v11 : vec4<f32>, @builtin(instance_index) v_23 : u32, @location(13u) v13 : vec3<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v3, v4, v5, v6, v7, v8, v9, v10, v11, i32(v_23), v13);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, v);
}
