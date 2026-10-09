diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  let v = -(v2.xyz.xxxx);
  r0.x = (v.x + v2.y);
  r0.x = (1.0f / r0.x);
  r0.y = (v1.x + v.y);
  r0.x = clamp(((r0.xxxx * r0.yyyy)).x, 0.0f, 1.0f);
  r0.y = fma(r0.x, -2.0f, 3.0f);
  r0.x = (r0.x * r0.x);
  r0.z = (r0.x * r0.y);
  r0.x = fma((-(r0.yyyy)).x, r0.x, v2.z);
  r0.x = fma(v1.y, r0.x, r0.z);
  r0.x = log2(r0.x);
  r0.x = (r0.x * 2.20000004768371582031f);
  o0 = exp2(r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) @interpolate(perspective, sample) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
