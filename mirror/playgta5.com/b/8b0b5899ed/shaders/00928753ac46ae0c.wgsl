diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb11_struct {
  tint_symbol : array<vec4<f32>, 11u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb11_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = (v1.xyz + (-(cb12_12.tint_symbol[10u].xyzx)).xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(v1.www, r0.xyz, cb12_12.tint_symbol[10u].xyz);
  o0 = vec4<f32>(v_1.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
