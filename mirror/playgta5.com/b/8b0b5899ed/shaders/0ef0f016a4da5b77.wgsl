diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb39_struct {
  tint_symbol : array<vec4<f32>, 39u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb39_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = (vec2<f32>(0.00499999988824129105f, -0.00499999988824129105f) * cb3_3.tint_symbol[34u].xx);
  let v_1 = r0;
  r0 = vec4<f32>(v.x, v_1.y, v.y, v_1.w);
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, 0.00499999988824129105f, v_2.z, 0.00499999988824129105f);
  r1.x = (v1.x * cb3_3.tint_symbol[34u].x);
  r1.y = v1.y;
  r0 = (r0 + r1.xyxy);
  r2 = textureSample(t1, s1, r0.xyxx.xy);
  r0 = textureSample(t1, s1, r0.zwzz.xy);
  r0.x = (r0.w + r2.w);
  let v_3 = (vec2<f32>(0.00499999988824129105f, -0.00499999988824129105f) * cb3_3.tint_symbol[34u].xx);
  let v_4 = r2;
  r2 = vec4<f32>(v_3.x, v_4.y, v_3.y, v_4.w);
  let v_5 = r2;
  r2 = vec4<f32>(v_5.x, -0.00499999988824129105f, v_5.z, -0.00499999988824129105f);
  r2 = (r1.xyxy + r2);
  r1 = textureSample(t1, s1, r1.xyxx.xy);
  r3 = textureSample(t1, s1, r2.xyxx.xy);
  r2 = textureSample(t1, s1, r2.zwzz.xy);
  r0.x = (r0.x + r3.w);
  r0.x = (r2.w + r0.x);
  r0.x = (r1.w + r0.x);
  r0.w = (r0.x * 0.20000000298023223877f);
  let v_6 = (r0.www * cb3_3.tint_symbol[36u].xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0 = (r0 * cb3_3.tint_symbol[33u].xxxx);
  r1.x = ((-(v1.xy.yyyy)).x + 1.0f);
  let v_7 = fma((-(r1.xxxx)).xyz, vec3<f32>(0.69999998807907104492f), cb3_3.tint_symbol[35u].xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r2.w = 1.0f;
  r0 = fma(r2, r1.wwww, r0);
  o0 = (r0 * cb3_3.tint_symbol[38u].xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
