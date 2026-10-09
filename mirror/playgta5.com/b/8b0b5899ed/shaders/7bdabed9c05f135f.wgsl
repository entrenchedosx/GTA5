diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb44_struct {
  tint_symbol : array<vec4<f32>, 44u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb44_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner() {
  r0 = textureSample(t4, s4, vec2<f32>(0.5f));
  r0.x = ((-(r0.xxxx)).x + cb5_5.tint_symbol[0u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb5_5.tint_symbol[0u].z / r0.x);
  let v = (r0.xxx * cb5_5.tint_symbol[43u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  o0 = sqrt(r0.xxxx);
}

@fragment
fn main() -> @location(0u) vec4<f32> {
  main_inner();
  return o0;
}
