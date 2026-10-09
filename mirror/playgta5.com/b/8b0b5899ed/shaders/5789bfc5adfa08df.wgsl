diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb2_struct {
  tint_symbol : array<vec4<f32>, 2u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb2_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = fma(v1.xy, vec2<f32>(4.0f), cb9_9.tint_symbol[1u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = -(r0.xxxy);
  let v_2 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.xy >= v_1.zw)));
  r0 = vec4<f32>(r0.xy, v_2.xy);
  let v_3 = fract(abs(r0.xyxx).xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = -(r0.xyxx);
  let v_5 = bitcast<vec2<u32>>(r0.zw);
  let v_6 = select(v_4.xy, r0.xy, (v_5 != vec2<u32>()));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0 = textureSample(t4, s4, r0.xyxx.xy);
  let v_7 = (v1.xy + (-(cb9_9.tint_symbol[1u].xxyx)).yz);
  let v_8 = r0;
  r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.y = clamp(((r0.yyyy / cb9_9.tint_symbol[0u].wwww)).y, 0.0f, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.x = (r0.x * r0.y);
  let v_9 = (r0.xxx * cb9_9.tint_symbol[0u].xyz);
  o0 = vec4<f32>(v_9.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
