diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb64_struct {
  tint_symbol : array<vec4<f32>, 64u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb64_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = fma(cb5_5.tint_symbol[63u].w, 0.5f, v1.y);
  r0.x = (r0.x * cb5_5.tint_symbol[63u].z);
  r0.x = sin(r0.xxxx.x);
  r0.x = fma(r0.x, 0.5f, 0.5f);
  r0.x = (r0.x * cb5_5.tint_symbol[63u].x);
  r0.y = (v1.y + cb5_5.tint_symbol[63u].w);
  r0.y = (r0.y * cb5_5.tint_symbol[63u].y);
  r0.y = sin(r0.yyyy.y);
  r0.y = fma(r0.y, 0.5f, 0.5f);
  o0.w = fma(r0.y, cb5_5.tint_symbol[63u].x, r0.x);
  o0 = vec4<f32>(vec3<f32>(), o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
