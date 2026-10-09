diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb7_struct {
  tint_symbol : array<vec4<f32>, 7u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb7_struct;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy * cb12_12.tint_symbol[6u].zw);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0 = textureSample(t8, s8, r0.xyxx.xy);
  let v_3 = r0;
  o0 = vec4<f32>(v_3.xxx, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@builtin(position) v_4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_4);
  return o0;
}
