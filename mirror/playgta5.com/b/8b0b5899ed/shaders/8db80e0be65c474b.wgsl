diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_cube<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0.x = ((-(v2.xy.yyyy)).x + 1.0f);
  r0.y = ((-(r0.xxxx)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = sqrt(r0.x);
  r0.y = (v2.x + -0.5f);
  r0.y = (r0.y * 6.28318500518798828125f);
  let v = r0.yyyy;
  r1.x = sin(v.x);
  r2.x = cos(v.x);
  r2.x = dot(r0.xx, r2.xx);
  r2.y = dot(r0.xx, r1.xx);
  r2.z = fma(v2.y, 2.0f, -1.0f);
  let v_1 = cb5_5.tint_symbol[3u].x;
  r0 = textureSampleLevel(t3, s3, r2.xyzx.xyz, v_1);
  r0 = (r0 * v1);
  o0 = (r0 * cb5_5.tint_symbol[2u]);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
