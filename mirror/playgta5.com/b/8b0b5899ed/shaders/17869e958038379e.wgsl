diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb1_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  r0.z = fma((-(cb13_13.tint_symbol[0u].xxxx)).z, 0.5f, v2.x);
  let v = fma(cb13_13.tint_symbol[0u].xyy, vec3<f32>(0.5f), v2.xyy);
  r0 = vec4<f32>(v.xy, r0.z, v.z);
  r1 = textureSample(t3, s3, r0.zwzz.xy);
  r0 = textureSample(t3, s3, r0.xyxx.xy);
  r0 = (r1 + r0);
  r1.x = fma(cb13_13.tint_symbol[0u].x, 0.5f, v2.x);
  let v_1 = fma((-(cb13_13.tint_symbol[0u].yyxy)).yzw, vec3<f32>(0.5f), v2.yxy);
  r1 = vec4<f32>(r1.x, v_1.xyz);
  r2 = textureSample(t3, s3, r1.xyxx.xy);
  r1 = textureSample(t3, s3, r1.zwzz.xy);
  r0 = (r0 + r2);
  r0 = (r1 + r0);
  r1.x = fma(r0.w, 0.25f, -0.5f);
  r0 = (r0 * vec4<f32>(0.25f));
  o0 = r0;
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.0f)));
  v_2((bitcast<u32>(r0.x) != 0u));
}

fn v_2(v_3 : bool) {
  if (v_3) {
    discard;
    return;
  }
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
