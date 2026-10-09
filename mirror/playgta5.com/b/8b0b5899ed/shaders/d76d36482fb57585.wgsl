diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb2_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  let v = fma(v2.xy, cb9_9.tint_symbol_1[1u].xy, cb9_9.tint_symbol_1[1u].zw);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy * cb10_10.tint_symbol[0u].xx);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r0.x = textureSample(t5, s5, r0.xyxx.xy).x;
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r0.x)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r0.x = (r0.x * v1.z);
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, ((v1.xyz.xy + (-(v2.xxyx)).yz)).xy, v_2.w);
  r0.w = dot(r0.yz, r0.yz);
  r0.w = sqrt(r0.w);
  r1.x = fma(r0.w, v2.z, (-(v2.wwww)).x);
  r1.y = (abs(r1.xxxx).y * 0.6666666865348815918f);
  r1.y = min(r1.y, 1.0f);
  r1.y = (r1.y * r1.y);
  r1.y = fma((-(r1.yyyy)).y, r1.y, 1.0f);
  r0.x = (r0.x * r1.y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r1.x)));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.x < 1.5f)));
  r1.x = max(r1.x, -1.0f);
  r1.x = min(r1.x, 1.5f);
  r1.x = (r1.x * 6.28318500518798828125f);
  r1.x = cos(r1.xxxx.x);
  r0.w = (r1.x / r0.w);
  let v_3 = (r0.ww * r0.yz);
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  let v_5 = fma(r0.yz, vec2<f32>(0.5f), vec2<f32>(0.5f));
  o0 = vec4<f32>(v_5.xy, o0.zw);
  r0.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.z)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r0.x = (r0.x * r0.y);
  o0.w = (r0.x * cb9_9.tint_symbol_1[0u].z);
  o0.z = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
