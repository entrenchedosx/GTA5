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

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb18_struct {
  tint_symbol_3 : array<vec4<f32>, 18u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb18_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb1_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v = r0;
  let v_1 = max(v, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_1), vec4<i32>(2147483647i), (v_1 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v == v))));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
  r1 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r1);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r1);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r1);
  r2.x = dot(r1.xyz, v4);
  r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r3);
  r2.y = dot(r3.xyz, v4);
  r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r4);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r4);
  r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r4);
  r2.z = dot(r0.xyz, v4);
  let v_2 = (r2.xyz * cb9_9.tint_symbol_4[0u].yyy);
  r4 = vec4<f32>(v_2.xyz, r4.w);
  let v_3 = (r2.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r5 = vec4<f32>(v_3.xyz, r5.w);
  let v_4 = fma(r2.xxx, cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
  r2 = vec4<f32>(v_4.xy, r2.z, v_4.z);
  let v_5 = fma(r2.zzz, cb1_1.tint_symbol_1[2u].xyz, r2.xyw);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = (r4.xyz * v7.www);
  r4 = vec4<f32>(v_6.xyz, r4.w);
  r5 = vec4<f32>(v0.xyz, r5.w);
  r5.w = 1.0f;
  r6.x = dot(r1, r5);
  r1.x = dot(r1.xyz, v5.xyz);
  r6.y = dot(r3, r5);
  r1.y = dot(r3.xyz, v5.xyz);
  let v_7 = (r1.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(r1.x, v_7.xyz);
  let v_8 = fma(r1.xxx, cb1_1.tint_symbol_1[0u].xyz, r1.yzw);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r6.z = dot(r0, r5);
  r0.x = dot(r0.xyz, v5.xyz);
  let v_9 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r1.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = fma(r4.xyz, cb13_13.tint_symbol_3[2u].zzz, r6.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r6.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = fma(r6.xxx, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = fma(r6.zzz, cb1_1.tint_symbol_1[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = (r3.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  o4 = (((-(r3.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz)).xyzx;
  r3 = (r1.yyyy * cb1_1.tint_symbol_1[9u]);
  r3 = fma(r1.xxxx, cb1_1.tint_symbol_1[8u], r3);
  r1 = fma(r1.zzzz, cb1_1.tint_symbol_1[10u], r3);
  o0 = (r1 + cb1_1.tint_symbol_1[11u]);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[0u].w < 0.0f)));
  r0.w = select(v0.z, 0.0f, (bitcast<u32>(r0.w) != 0u));
  let v_15 = -(cb13_13.tint_symbol_3[0u].xyxx);
  let v_16 = (r0.ww + v_15.xy);
  r1 = vec4<f32>(v_16.xy, r1.zw);
  let v_17 = clamp(((r1.xyxx / cb13_13.tint_symbol_3[17u].wwww)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_17.xy, r1.zw);
  r0.w = ((-(cb13_13.tint_symbol_3[0u].zzzz)).w + cb13_13.tint_symbol_3[0u].w);
  r0.w = fma(r1.x, r0.w, cb13_13.tint_symbol_3[0u].z);
  r1.x = ((-(r1.yyyy)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r1.x = (v7.w * cb13_13.tint_symbol_3[2u].w);
  o1.z = max(abs(r0.wwww).z, r1.x);
  o1 = vec3<f32>(v3.xy, o1.xyz.z).xyzx;
  o2 = r2.xyz.xyzx;
  o3 = vec4<f32>(v6.xyz, o3.w);
  o3.w = 1.0f;
  o5 = r0.xyz.xyzx;
  let v_18 = (r2.yzx * r0.zxy);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = -(r1.xyzx);
  let v_20 = fma(r0.yzx, r2.zxy, v_19.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  o6 = ((r0.xyz * v5.www)).xyzx;
  o7.y = fma((-(v6.yyyy)).y, 25.5f, 1.0f);
  r0 = vec4<f32>(((v6.yy + vec2<f32>(0.52941179275512695312f, -0.03921568766236305237f))).xy, r0.zw);
  r0.z = (r0.x * r0.x);
  o7.z = (r0.x * r0.z);
  r0.x = (r0.y * cb2_2.tint_symbol_2[16u].w);
  o7.x = (r0.x * 0.96078431606292724609f);
}

struct tint_symbol_5 {
  @builtin(position)
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, o6, o7);
}
