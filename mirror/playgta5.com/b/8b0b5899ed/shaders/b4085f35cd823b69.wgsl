diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb5_struct {
  tint_symbol : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy * cb12_12.tint_symbol[2u].zw);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0 = textureGather(0i, t4, s4, r0.xy);
  let v_3 = max(r0.yw, r0.xz);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.x = max(r0.y, r0.x);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol[4u].w);
  o0 = exp2(r0.xxxx);
}

@fragment
fn main(@builtin(position) v_4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_4);
  return o0;
}
