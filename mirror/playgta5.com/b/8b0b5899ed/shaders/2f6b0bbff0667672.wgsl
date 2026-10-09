diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb2_struct {
  tint_symbol : array<vec4<f32>, 2u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb2_struct;

var<private> o0 : vec4<f32>;

var<private> oDepth : f32;

fn main_inner(v1 : vec4<f32>) {
  o0 = vec4<f32>(1.0f);
  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = sqrt(r0.x);
  r0.x = fma(r0.x, cb6_6.tint_symbol[0u].w, cb6_6.tint_symbol[1u].x);
  r0.y = dpdx(r0.x);
  r0.z = dpdy(r0.x);
  let v = abs(r0.zzzz);
  r0.y = max(v.y, abs(r0.yyyy).y);
  oDepth = clamp(fma(cb6_6.tint_symbol[1u].y, r0.y, r0.x), 0.0f, 1.0f);
}

struct tint_symbol_1 {
  @location(0u)
  o0 : vec4<f32>,
  @builtin(frag_depth)
  oDepth : f32,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v1);
  return tint_symbol_1(o0, oDepth);
}
