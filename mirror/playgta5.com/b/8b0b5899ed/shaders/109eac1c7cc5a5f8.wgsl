diagnostic(off, derivative_uniformity);

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

var<private> v12 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner() {
  x0[0u].x = v12[0u];
  x0[0u].y = v12[1u];
  x0[0u].z = v12[2u];
  x0[0u].w = v12[3u];
  let v = (cb2_2.tint_symbol[17u].zzz * vec3<f32>(1.0f, 0.0f, 0.0f));
  o0 = vec4<f32>(v.xyz, o0.w);
  o0.w = 0.75f;
}

@fragment
fn main() -> @location(0u) vec4<f32> {
  main_inner();
  return o0;
}
