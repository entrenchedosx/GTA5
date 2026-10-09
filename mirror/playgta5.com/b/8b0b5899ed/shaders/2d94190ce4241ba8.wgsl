diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb12_struct {
  tint_symbol_1 : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v5 : vec4<f32>) {
  r0.x = (v2.z * 255.001953125f);
  let v = r0.x;
  let v_1 = max(v, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_1), 2147483647i, (v_1 >= 2147483648.0f)), 0i, !((v == v))));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) * 3i));
  r1 = vec4<f32>(v0.xyz, r1.w);
  r1.w = 1.0f;
  r0.y = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], r1);
  r2 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r0.y = dot(cb4_4.tint_symbol[bitcast<i32>(r0.x)], r1);
  r0.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], r1);
  r1 = fma(r0.yyyy, cb1_1.tint_symbol_1[8u], r2);
  r0 = fma(r0.xxxx, cb1_1.tint_symbol_1[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol_1[11u]);
  o1 = v3.xyxy;
  o2 = v5;
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0, v2, v3, v5);
  return tint_symbol_2(o0, o1, o2);
}
