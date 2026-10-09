diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = (v1.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = ((-(r0.xxxx)).x + 22000.0f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  v_1((bitcast<u32>(r0.x) != 0u));
  o0 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
}

fn v_1(v_2 : bool) {
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
