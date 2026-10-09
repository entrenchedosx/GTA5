diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb1_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy + vec2<f32>(0.5f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = (r0.xy * cb5_5.tint_symbol[0u].zw);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  o0 = textureSample(t2, s2, r0.xyxx.xy);
}

@fragment
fn main(@builtin(position) v_4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_4);
  return o0;
}
