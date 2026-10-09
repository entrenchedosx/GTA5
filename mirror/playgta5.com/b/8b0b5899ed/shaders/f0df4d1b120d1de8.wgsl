diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb67_struct {
  tint_symbol_1 : array<vec4<f32>, 67u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb67_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = (cb5_5.tint_symbol_1[66u].x / cb5_5.tint_symbol_1[66u].y);
  r0.y = 1.0f;
  r0 = vec4<f32>(r0.xy, ((v1.xy + vec2<f32>(-0.5f))).xy);
  let v = (r0.xy * r0.zw);
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.x = dot(r1.xy, r1.xy);
  r1.y = sqrt(r1.x);
  r1.y = fma(cb5_5.tint_symbol_1[63u].y, r1.y, cb5_5.tint_symbol_1[63u].x);
  r1.x = fma(r1.x, r1.y, 1.0f);
  let v_1 = (r0.zw * r1.xx);
  let v_2 = r1;
  r1 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  let v_3 = fma(r1.xx, r0.zw, vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_3.xy);
  let v_4 = textureSample(t5, s5, r0.zwzz.xy).yz;
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = (r0.zw * cb2_2.tint_symbol[17u].ww);
  let v_6 = o0;
  o0 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  let v_7 = (r0.xy * r1.yz);
  r0 = vec4<f32>(v_7.xy, r0.zw);
  r0.x = dot(r0.xy, r0.xy);
  r0.y = sqrt(r0.x);
  r0.y = fma(cb5_5.tint_symbol_1[63u].w, r0.y, cb5_5.tint_symbol_1[63u].z);
  r0.x = fma(r0.x, r0.y, 1.0f);
  let v_8 = fma(r0.xx, r1.yz, vec2<f32>(0.5f));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r0.x = textureSample(t5, s5, r0.xyxx.xy).x;
  o0.x = (r0.x * cb2_2.tint_symbol[17u].w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
