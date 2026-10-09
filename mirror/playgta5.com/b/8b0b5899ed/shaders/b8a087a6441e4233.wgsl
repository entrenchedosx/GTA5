diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb75_struct {
  tint_symbol : array<vec4<f32>, 75u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb75_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner() {
  r0 = textureSample(t0, s0, vec2<f32>(0.5f));
  r0.y = log2(r0.x);
  o0.w = r0.x;
  r0.x = (r0.y * cb5_5.tint_symbol[71u].y);
  r0.x = exp2(r0.x);
  r0.x = fma(cb5_5.tint_symbol[71u].x, r0.x, cb5_5.tint_symbol[71u].z);
  r0.x = (r0.x + cb5_5.tint_symbol[71u].w);
  r0.x = max(r0.x, cb5_5.tint_symbol[72u].x);
  r0.x = min(r0.x, cb5_5.tint_symbol[72u].y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  let v = -(bitcast<vec4<i32>>(r0.yyyy));
  r0.y = bitcast<f32>((bitcast<i32>(r0.z) + v.y));
  r0.y = f32(bitcast<i32>(r0.y));
  r0.z = (abs(r0.xxxx).z * cb5_5.tint_symbol[72u].z);
  r0.x = fma(r0.z, r0.y, r0.x);
  r0.x = max(r0.x, cb5_5.tint_symbol[72u].x);
  o0.z = min(r0.x, cb5_5.tint_symbol[72u].y);
  o0.x = exp2(cb5_5.tint_symbol[74u].w);
  o0.y = cb5_5.tint_symbol[74u].w;
}

@fragment
fn main() -> @location(0u) vec4<f32> {
  main_inner();
  return o0;
}
