diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r1 = fma(cb12_12.tint_symbol[0u].xyxy, vec4<f32>(-1.0f, 0.0f, 1.0f, 0.0f), v1.xy.xyxy);
  r2 = textureSample(t2, s2, r1.xyxx.xy);
  r1 = textureSample(t2, s2, r1.zwzz.xy);
  r2.z = r1.x;
  r1 = fma(cb12_12.tint_symbol[0u].xyxy, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), v1.xy.xyxy);
  r3 = textureSample(t2, s2, r1.xyxx.xy);
  r1 = textureSample(t2, s2, r1.zwzz.xy);
  r2.w = r1.x;
  r2.y = r3.x;
  let v = -(r2);
  r0 = (r0.xxxx + v);
  r0 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r0) >= vec4<f32>(0.00100000004749745131f))));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0) & vec4<u32>(1065353216u)));
  r1.x = dot(r0, r0);
  o0 = r0;
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r1.x == 0.0f))));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) == 0i)));
  v_1((bitcast<u32>(r0.x) != 0u));
}

fn v_1(v_2 : bool) {
  if (v_2) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
