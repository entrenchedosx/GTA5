diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb76_struct {
  tint_symbol : array<vec4<f32>, 76u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb76_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t10, s10, v1.xy.xyxx.xy);
  r0.x = (r0.x * 0.25f);
  let v = fma(cb5_5.tint_symbol[72u].xy, vec2<f32>(0.0f, -1.0f), v1.xy);
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  r1 = textureSample(t4, s4, r0.yzyy.xy);
  r0.y = (cb5_5.tint_symbol[75u].w * 0.98000001907348632812f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.y < r1.x)));
  r1.w = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  r2 = textureSample(t4, s4, v1.xy.xyxx.xy);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.y < r2.x)));
  r1.x = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  r2 = fma(cb5_5.tint_symbol[72u].xyxy, vec4<f32>(1.0f, 0.0f, 1.0f, -1.0f), v1.xy.xyxy);
  r3 = textureSample(t4, s4, r2.xyxx.xy);
  r2 = textureSample(t4, s4, r2.zwzz.xy);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.y < r2.x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < r3.x)));
  let v_2 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.yz) & vec2<u32>(1065353216u)));
  let v_3 = r1;
  r1 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  let v_4 = dot(r1, r0.xxxx);
  o0 = vec4<f32>(vec3<f32>(v_4, v_4, v_4).xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
