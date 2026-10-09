diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb1_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xyz.xy + (-(v2.xyxx)).xy)).xy, r0.zw);
  r0.z = dot(r0.xy, r0.xy);
  r0.z = sqrt(r0.z);
  r0.w = fma(r0.z, v2.z, (-(v2.wwww)).w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r0.w)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.w < 1.5f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & bitcast<u32>(r1.y)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r1.y = clamp(((abs(r0.wwww) * vec4<f32>(0.6666666865348815918f))).y, 0.0f, 1.0f);
  r0.w = max(r0.w, -1.0f);
  r0.w = min(r0.w, 1.5f);
  r0.w = (r0.w * 6.28318500518798828125f);
  r0.w = cos(r0.wwww.w);
  r0.z = (r0.w / r0.z);
  let v = (r0.zz * r0.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma(r0.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
  o0 = vec4<f32>(v_1.xy, o0.zw);
  r0.x = (r1.y * r1.y);
  r0.x = fma((-(r0.xxxx)).x, r0.x, 1.0f);
  r0.x = (r0.x * v1.z);
  r0.x = (r0.x * r1.x);
  o0.w = (r0.x * cb9_9.tint_symbol[0u].z);
  o0.z = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
