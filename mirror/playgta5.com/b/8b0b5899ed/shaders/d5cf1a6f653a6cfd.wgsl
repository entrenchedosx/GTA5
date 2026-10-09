diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb39_struct {
  tint_symbol : array<vec4<f32>, 39u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb39_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = -(v1.xy.yyyy);
  r0.x = (v.x + v1.x);
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, (((-(v1.xy.xxyx)).yz + vec2<f32>(1.0f))).xy, v_1.w);
  r0.w = (r0.y + v.w);
  let v_2 = abs(r0.wwww);
  r0.x = max(v_2.x, abs(r0.xxxx).x);
  r0.x = (r0.x * r0.x);
  r0.x = (r0.x * r0.x);
  let v_3 = max(r0.zy, v1.xy.yx);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r2 = textureSample(t1, s1, r0.yzyy.xy);
  r0.y = max(r1.x, r1.y);
  r0.z = log2(r1.x);
  r0.y = log2(r0.y);
  r0.y = (r0.y * 150.0f);
  r0.y = exp2(r0.y);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r1.w = fma((-(r0.xxxx)).w, r0.x, r0.y);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.5f < cb3_3.tint_symbol[32u].x)));
  r0.x = select(95.0f, 45.0f, (bitcast<u32>(r0.x) != 0u));
  r0.x = (r0.z * r0.x);
  r0.x = exp2(r0.x);
  let v_4 = fma(r0.xxx, cb3_3.tint_symbol[37u].xyz, r2.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  o0 = (r1 * cb3_3.tint_symbol[38u].xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
