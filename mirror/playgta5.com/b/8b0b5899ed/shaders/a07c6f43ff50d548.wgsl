diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (v1.z < 0.0f)));
  v((bitcast<u32>(r0.x) != 0u));
  let v_1 = (cb2_2.tint_symbol[17u].zzz * vec3<f32>(1.0f, 0.0f, 0.0f));
  o0 = vec4<f32>(v_1.xyz, o0.w);
  o0.w = 1.0f;
}

fn v(v_2 : bool) {
  if (v_2) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
