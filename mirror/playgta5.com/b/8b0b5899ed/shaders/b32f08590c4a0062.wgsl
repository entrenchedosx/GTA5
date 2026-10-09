enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb16_struct {
  tint_symbol_1 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb17_struct {
  tint_symbol_3 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_4 : array<vec4<f32>, 50u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v_1 = r0;
  let v_2 = max(v_1, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_2), vec4<i32>(2147483647i), (v_2 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_1 == v_1))));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
  r1 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r1);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r1);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r1);
  r2 = vec4<f32>(v0.xyz, r2.w);
  r2.w = 1.0f;
  r1.w = dot(r1, r2);
  let v_3 = (r1.www * cb1_1.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  r4 = (r1.wwww * cb1_1.tint_symbol_1[9u]);
  r5 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
  r5 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r5);
  r5 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r5);
  r5 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r5);
  r1.w = dot(r5, r2);
  let v_4 = fma(r1.www, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  r4 = fma(r1.wwww, cb1_1.tint_symbol_1[8u], r4);
  r6 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
  r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r6);
  r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r6);
  r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r6);
  r0.w = dot(r0, r2);
  let v_5 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r3.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r3 = fma(r0.wwww, cb1_1.tint_symbol_1[10u], r4);
  r3 = (r3 + cb1_1.tint_symbol_1[11u]);
  let v_6 = (r2.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = ((-(r2.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz);
  r4 = vec4<f32>(v_7.xyz, r4.w);
  let v_8 = r2;
  o5 = vec4<f32>(v_8.xyz, o5.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = (r0.w * 0.00000399999998990097f);
  r2.x = min(r0.w, 1.0f);
  r2.y = ((-(r2.xxxx)).y + 1.0f);
  let v_9 = -(cb2_2.tint_symbol_3[16u].zzzz);
  let v_10 = clamp(((r2.xyxx + v_9)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r0.w = (cb3_3.tint_symbol_4[49u].w + -1.0f);
  let v_11 = fma(r2.xy, r0.ww, vec2<f32>(1.0f));
  r2 = vec4<f32>(v_11.xy, r2.zw);
  let v_12 = clamp(((r2.xyxx * v6.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o0 = vec4<f32>(v_12.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, v6.zw);
  o1 = v3.xyxy;
  r0.w = dot(r1.xyz, v4);
  r1.x = dot(r1.xyz, v5.xyz);
  let v_13 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = (r0.www * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  r0.w = dot(r5.xyz, v4);
  r1.w = dot(r5.xyz, v5.xyz);
  let v_15 = fma(r1.www, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  r0.w = dot(r0.xyz, v4);
  r0.x = dot(r0.xyz, v5.xyz);
  let v_17 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r1.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r2.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  o2 = r1.xyz.xyzx;
  o3 = r0.xyz.xyzx;
  let v_19 = (r0.zxy * r1.yzx);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  let v_20 = -(r2.xyzx);
  let v_21 = fma(r0.yzx, r1.zxy, v_20.xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  o6.z = dot(r1.xyz, r4.xyz);
  o6.x = dot(r0.xyz, r4.xyz);
  let v_22 = (r2.xyz * v5.www);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  o4 = r0.xyz.xyzx;
  o6.y = dot(r0.xyz, r4.xyz);
  o5.w = 1.0f;
  o6.w = 1.0f;
  o7 = r3;
  x0[0u].x = dot(r3, cb0_0.tint_symbol_2[0u]);
  let v_23 = &(x0[0u]);
  *(v_23) = vec4<f32>((*(v_23)).x, vec3<f32>());
  o8[0u] = x0[0u].x;
  o8[1u] = x0[0u].y;
  o8[2u] = x0[0u].z;
  o8[3u] = x0[0u].w;
  v = vec4<f32>(o8[0u], o8[1u], o8[2u], o8[3u]);
}

struct tint_symbol_6 {
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
  @builtin(clip_distances)
  o8 : array<f32, 4u>,
  @location(15u)
  tint_symbol_5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, o6, o7, o8, v);
}
