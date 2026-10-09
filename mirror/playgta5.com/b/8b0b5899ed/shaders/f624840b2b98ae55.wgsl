diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

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
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol_1[4u].x);
  o0.w = exp2(r0.x);
  o0 = vec4<f32>(vec3<f32>(), o0.w);
}

@fragment
fn main(@builtin(position) v_7 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_7, v1);
  return o0;
}
