diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy + vec2<f32>(-0.5f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = fract(r0.xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-0.5f));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = fma(r0.xy, cb2_2.tint_symbol[18u].zw, v1.xy);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0 = textureSample(t8, s8, r0.xyxx.xy);
  let v_7 = r0;
  o0 = vec4<f32>(v_7.xxx, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@builtin(position) v_8 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_8, v1);
  return o0;
}
