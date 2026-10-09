diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb73_struct {
  tint_symbol_1 : array<vec4<f32>, 73u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb73_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = (cb5_5.tint_symbol_1[72u].x / cb5_5.tint_symbol_1[72u].y);
  r0.y = 1.0f;
  r0 = vec4<f32>(r0.xy, ((v1.xy + vec2<f32>(-0.5f))).xy);
  let v = (r0.xy * r0.zw);
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.x = dot(r1.xy, r1.xy);
  r1.y = sqrt(r1.x);
  r2 = (cb5_5.tint_symbol_1[69u] * cb5_5.tint_symbol_1[72u].zzzz);
  r1.y = fma(r2.y, r1.y, r2.x);
  r1.x = fma(r1.x, r1.y, 1.0f);
  let v_1 = (r0.zw * r1.xx);
  let v_2 = r1;
  r1 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  let v_3 = fma(r1.xx, r0.zw, vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_3.xy);
  r3 = textureSample(t5, s5, r0.zwzz.xy);
  let v_4 = (r3.yz * cb2_2.tint_symbol[17u].ww);
  let v_5 = o0;
  o0 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = (r0.xy * r1.yz);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0.x = dot(r0.xy, r0.xy);
  r0.y = sqrt(r0.x);
  r0.y = fma(r2.w, r0.y, r2.z);
  r0.x = fma(r0.x, r0.y, 1.0f);
  let v_7 = fma(r0.xx, r1.yz, vec2<f32>(0.5f));
  r0 = vec4<f32>(v_7.xy, r0.zw);
  r0 = textureSample(t5, s5, r0.xyxx.xy);
  o0.x = (r0.x * cb2_2.tint_symbol[17u].w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
