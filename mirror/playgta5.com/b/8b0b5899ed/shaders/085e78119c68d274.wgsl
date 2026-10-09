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

struct cb50_struct {
  tint_symbol_3 : array<vec4<f32>, 50u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb1_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v5 : vec3<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v = r0;
  let v_1 = max(v, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_1), vec4<i32>(2147483647i), (v_1 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v == v))));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
  r1 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r1);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r1);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r1);
  r2 = vec4<f32>(v0.xyz, r2.w);
  r2.w = 1.0f;
  r1.w = dot(r1, r2);
  r3 = (r1.wwww * cb1_1.tint_symbol_1[9u]);
  let v_2 = (r1.www * cb1_1.tint_symbol_1[1u].xyz);
  r4 = vec4<f32>(v_2.xyz, r4.w);
  r5 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
  r5 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r5);
  r5 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r5);
  r5 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r5);
  r1.w = dot(r5, r2);
  r3 = fma(r1.wwww, cb1_1.tint_symbol_1[8u], r3);
  let v_3 = fma(r1.www, cb1_1.tint_symbol_1[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_3.xyz, r4.w);
  r6 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
  r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r6);
  r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r6);
  r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r6);
  r0.w = dot(r0, r2);
  r2 = fma(r0.wwww, cb1_1.tint_symbol_1[10u], r3);
  let v_4 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r4.xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = (r3.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = ((-(r3.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  o0 = (r2 + cb1_1.tint_symbol_1[11u]);
  r0.w = dot(r3.xyz, r3.xyz);
  o5 = r3.xyz.xyzx;
  r0.w = (r0.w * 0.00000399999998990097f);
  r2.x = min(r0.w, 1.0f);
  r2.y = ((-(r2.xxxx)).y + 1.0f);
  let v_7 = -(cb2_2.tint_symbol_2[16u].zzzz);
  let v_8 = clamp(((r2.xyxx + v_7)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_8.xy, r2.zw);
  r0.w = (cb3_3.tint_symbol_3[49u].w + -1.0f);
  let v_9 = fma(r2.xy, r0.ww, vec2<f32>(1.0f));
  r2 = vec4<f32>(v_9.xy, r2.zw);
  let v_10 = clamp(((r2.xyxx * v7.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o1 = vec4<f32>(v_10.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v7.zw);
  r2.x = v7.z;
  r2.y = cb13_13.tint_symbol_4[0u].x;
  o2 = textureSampleLevel(t2, s2, r2.xyxx.xy, 0.0f);
  o3 = vec4<f32>(v3.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 0.10000000149011611938f));
  r0.w = dot(r1.xyz, v5);
  r1.x = dot(r1.xyz, v6.xyz);
  let v_11 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = (r0.www * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  r0.w = dot(r5.xyz, v5);
  r1.w = dot(r5.xyz, v6.xyz);
  let v_13 = fma(r1.www, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  r0.w = dot(r0.xyz, v5);
  r0.x = dot(r0.xyz, v6.xyz);
  let v_15 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r1.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r2.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  o4 = r1.xyz.xyzx;
  o6 = r0.xyz.xyzx;
  let v_17 = (r0.zxy * r1.yzx);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = -(r2.xyzx);
  let v_19 = fma(r0.yzx, r1.zxy, v_18.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  o7 = ((r0.xyz * v6.www)).xyzx;
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v5, v6, v7);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, o6, o7);
}
