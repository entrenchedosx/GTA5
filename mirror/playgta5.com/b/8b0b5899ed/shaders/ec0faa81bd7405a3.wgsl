diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb4_struct;

struct cb7_struct {
  tint_symbol_2 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb7_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = fma(cb2_2.tint_symbol[18u].zwzw, vec4<f32>(4.0f, 4.0f, 4.0f, -4.0f), v1.xy.xyxy);
  r1 = textureSample(t2, s2, r0.xyxx.xy);
  r0 = textureSample(t2, s2, r0.zwzz.xy);
  r0 = (r0 + r1);
  r1 = fma(cb2_2.tint_symbol[18u].zwzw, vec4<f32>(-4.0f, 4.0f, -4.0f, -4.0f), v1.xy.xyxy);
  r2 = textureSample(t2, s2, r1.xyxx.xy);
  r1 = textureSample(t2, s2, r1.zwzz.xy);
  r0 = (r0 + r2);
  r0 = (r1 + r0);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
  r0 = (r0 * vec4<f32>(0.25f));
  r0.y = max(r0.y, 0.0039215688593685627f);
  o0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r1.x)));
  r0.y = clamp(fma(cb11_11.tint_symbol_2[6u].wwww, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).y, 0.0f, 1.0f);
  r0.y = sqrt(r0.y);
  r0.y = fma((-(r0.yyyy)).y, cb6_6.tint_symbol_1[3u].z, 1.0f);
  o0.w = (r0.y * r0.w);
  let v = r0;
  let v_1 = o0;
  o0 = vec4<f32>(v.x, v_1.y, v.z, v_1.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
