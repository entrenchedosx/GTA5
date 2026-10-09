diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy + v1.xy)).xy, r0.zw);
  r0 = textureSampleLevel(t10, s10, r0.xyxx.xy, 1.0f);
  let v = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy * cb11_11.tint_symbol[3u].xx);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r1 = textureSample(t7, s7, v1.xy.xyxx.xy);
  let v_2 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_2.xy);
  let v_3 = fma(r0.xy, vec2<f32>(4.0f), r0.zw);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>(0.5f));
  o0 = (r0 + vec4<f32>(0.5f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
