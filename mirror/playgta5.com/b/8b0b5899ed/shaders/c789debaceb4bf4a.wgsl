diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb7_struct {
  tint_symbol : array<vec4<f32>, 7u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb7_struct;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : f32;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0.x = log2(v1.x);
  r0.x = (r0.x * cb11_11.tint_symbol[6u].x);
  r0.x = exp2(r0.x);
  let v = r0;
  r0 = vec4<f32>(v.x, ((v2.xy / v2.ww)).xy, v.w);
  r1 = textureSample(t15, s15, r0.yzyy.xy);
  r0.x = (r0.x * r1.x);
  r0.x = max(r0.x, -10.0f);
  r0.x = min(r0.x, 10.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (abs(r0.xxxx).y >= 9.0f)));
  let v_1 = bitcast<u32>(r0.y);
  o0 = select(r0.x, 0.0f, (v_1 != 0u));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v1, v2);
  return o0;
}
