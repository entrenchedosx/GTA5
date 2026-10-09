diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb1_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = cb9_9.tint_symbol[0u].x;
  r0.y = 0.0f;
  let v = fma(v1.xyz.xy, vec2<f32>(3.0f, 1.0f), r0.xy);
  r0 = vec4<f32>(r0.xy, v.xy);
  let v_1 = textureSample(t6, s6, r0.zwzz.xy).yw;
  r0 = vec4<f32>(r0.xy, v_1.xy);
  let v_2 = fma(r0.wz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_2.xy);
  r1 = vec4<f32>(((v1.xyz.xy * vec2<f32>(6.0f, 2.0f))).xy, r1.zw);
  let v_3 = fma(r0.xy, vec2<f32>(4.0f), r1.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = textureSample(t6, s6, r0.xyxx.xy).yw;
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = fma(r0.yx, vec2<f32>(2.0f), r0.zw);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = (r0.xy + vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = (r0.xy * cb9_9.tint_symbol[0u].yy);
  r0 = vec4<f32>(v_7.xy, r0.zw);
  let v_8 = fma(r0.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
  o0 = vec4<f32>(v_8.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>());
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
