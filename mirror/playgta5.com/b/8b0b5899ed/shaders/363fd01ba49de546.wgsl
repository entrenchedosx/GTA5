diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  let v = fma(cb2_2.tint_symbol[18u].zw, vec2<f32>(-0.5f), v1.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  r0 = textureSample(t11, s11, r0.xyxx.xy);
  r0.y = (cb12_12.tint_symbol_1[0u].w + cb12_12.tint_symbol_1[0u].z);
  r0.x = fma((-(cb12_12.tint_symbol_1[0u].wwww)).x, r0.x, r0.y);
  r0.x = max(r0.x, 0.0f);
  let v_1 = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.xyz * vec3<f32>(1.00199997425079345703f));
  o0 = vec4<f32>(v_2.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
