diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb4_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy + vec2<f32>(0.5f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = (r0.xy * cb10_10.tint_symbol[3u].xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = -(cb10_10.tint_symbol[3u].yyyx);
  let v_5 = fma(r0.yx, cb10_10.tint_symbol[3u].yx, v_4.zw);
  r1 = vec4<f32>(r1.xy, v_5.xy);
  r0 = textureGather(0i, t5, s5, r1.xy);
  r2 = textureGather(0i, t5, s5, r1.xz);
  r3 = textureGather(0i, t5, s5, r1.wy);
  r1 = textureGather(0i, t5, s5, r1.wz);
  r0 = (r0 + r2);
  r0 = (r1 + r0);
  r0 = (r3 + r0);
  let v_6 = dot(r0, vec4<f32>(0.0625f));
  o0 = vec4<f32>(v_6, v_6, v_6, v_6);
}

@fragment
fn main(@builtin(position) v_7 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_7);
  return o0;
}
