diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (v1.y == 0.0f)));
  let v = select(v0.xy, vec2<f32>(-1000.0f), (bitcast<vec2<u32>>(r0.xx) != vec2<u32>()));
  r0 = vec4<f32>(v.xy, r0.zw);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>) -> @builtin(position) vec4<f32> {
  main_inner(v0, v1);
  return o0;
}
