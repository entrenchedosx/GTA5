diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = ((-(v1.xy.yyyy)).x + cb2_2.tint_symbol[16u].y);
  r0.y = ((-(cb2_2.tint_symbol[16u].xxxx)).y + cb2_2.tint_symbol[16u].y);
  r0.x = clamp(((r0.xxxx / r0.yyyy)).x, 0.0f, 1.0f);
  o0.z = (r0.x * cb12_12.tint_symbol_1[1u].w);
  r0.x = (v1.x * 65536.0f);
  r0.x = min(r0.x, 8191.0f);
  r0.y = (r0.x * 0.00390625f);
  r0.y = floor(r0.y);
  r0.x = fma((-(r0.yyyy)).x, 256.0f, r0.x);
  r0.y = (r0.y * 0.00390625f);
  o0.x = r0.y;
  r0.x = floor(r0.x);
  o0.y = (r0.x * 0.00390625f);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
