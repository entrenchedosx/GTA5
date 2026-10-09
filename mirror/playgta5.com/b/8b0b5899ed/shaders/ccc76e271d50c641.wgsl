diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb1_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : f32;

fn main_inner(v2 : vec4<f32>) {
  r0 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), v2.xy.xyxy);
  r1 = textureSample(t6, s6, r0.xyxx.xy);
  r0 = textureSample(t6, s6, r0.zwzz.xy);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.5f < r0.x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.5f < r1.x)));
  let v = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1065353216u)));
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.x = (r0.x + r0.y);
  r1 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), v2.xy.xyxy);
  r2 = textureSample(t6, s6, r1.xyxx.xy);
  r1 = textureSample(t6, s6, r1.zwzz.xy);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.5f < r1.x)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.5f < r2.x)));
  let v_1 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.yz) & vec2<u32>(1065353216u)));
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  r0.x = (r0.z + r0.x);
  o0 = (r0.y + r0.x);
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v2);
  return o0;
}
