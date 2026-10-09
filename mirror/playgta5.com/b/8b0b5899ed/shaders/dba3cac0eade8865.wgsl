diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb2_struct {
  tint_symbol : array<vec4<f32>, 2u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb2_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner() {
  r0 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>() >= cb5_5.tint_symbol[0u])));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0) & vec4<u32>(1065353216u)));
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  v((bitcast<u32>(r0.x) != 0u));
  o0 = cb5_5.tint_symbol[0u];
  o1 = cb5_5.tint_symbol[1u];
}

fn v(v_1 : bool) {
  if (v_1) {
    discard;
    return;
  }
}

struct tint_symbol_1 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@fragment
fn main() -> tint_symbol_1 {
  main_inner();
  return tint_symbol_1(o0, o1);
}
