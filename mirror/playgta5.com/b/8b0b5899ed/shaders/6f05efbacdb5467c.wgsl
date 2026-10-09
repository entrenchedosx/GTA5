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
  r0 = vec4<f32>((((-(v1.xy.yxyy)).xy + vec2<f32>(1.0f))).xy, r0.zw);
  r0.z = (r0.x * 1.5f);
  r0.w = fma((-(r0.xxxx)).w, 1.5f, 1.0f);
  r0.z = max(r0.w, r0.z);
  r0.w = max(r0.y, v1.x);
  r0.w = max(r0.z, r0.w);
  r0.z = log2(r0.z);
  r0.w = log2(r0.w);
  r0.w = (r0.w * 150.0f);
  r0.w = exp2(r0.w);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r1.x = fma((-(r0.xxxx)).x, 1.5f, v1.x);
  r0.x = fma((-(r0.xxxx)).x, 1.5f, r0.y);
  let v = abs(r0.xxxx);
  r0.x = max(v.x, abs(r1.xxxx).x);
  r0.x = (r0.x * r0.x);
  r0.x = (r0.x * r0.x);
  r0.x = fma((-(r0.xxxx)).x, r0.x, r0.w);
  r0.y = (v1.y * v1.y);
  r0.w = (r0.y * r0.y);
  r0.y = (r0.y * r0.w);
  r1.w = (r0.y * r0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.5f < cb3_3.tint_symbol[32u].x)));
  r0.x = select(95.0f, 45.0f, (bitcast<u32>(r0.x) != 0u));
  r0.x = (r0.z * r0.x);
  r0.x = exp2(r0.x);
  let v_1 = fma(v1.xy, vec2<f32>(-1.0f, 1.0f), vec2<f32>(1.0f, 0.0f));
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  r2 = textureSample(t1, s1, r0.yzyy.xy);
  let v_3 = fma(r0.xxx, cb3_3.tint_symbol[37u].xyz, r2.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r0 = (r1 * cb3_3.tint_symbol[38u].xxxx);
  o0 = (r0 * vec4<f32>(0.89999997615814208984f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
