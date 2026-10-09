diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = fma(cb2_2.tint_symbol[18u].zwzw, vec4<f32>(0.5f, 0.5f, -0.5f, 0.5f), v1.xy.xyxy);
  r1 = textureSample(t6, s6, r0.xyxx.xy);
  r0 = textureSample(t6, s6, r0.zwzz.xy);
  r2 = fma(cb2_2.tint_symbol[18u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), v1.xy.xyxy);
  r3 = textureSample(t6, s6, r2.xyxx.xy);
  r2 = textureSample(t6, s6, r2.zwzz.xy);
  let v = -(r2.wwww);
  r0.x = (r0.w + v.x);
  let v_1 = -(r3.wwww);
  r0.y = (r1.w + v_1.y);
  let v_2 = -(r0.xxxx);
  let v_3 = fma(r0.yy, vec2<f32>(-1.0f, 1.0f), v_2.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.z = dot(r0.xy, r0.xy);
  r0.w = inverseSqrt(r0.z);
  r0.z = sqrt(r0.z);
  r0.z = (r0.z * 3.0f);
  r0.z = min(r0.z, 1.0f);
  r0.z = (r0.z * r0.z);
  let v_4 = (r0.wwz * r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.zz * r0.xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = (r0.xy * cb2_2.tint_symbol[18u].zw);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = fma((-(r0.xxxy)).zw, vec2<f32>(1.5f), v1.xy);
  r0 = vec4<f32>(r0.xy, v_7.xy);
  let v_8 = fma(r0.xy, vec2<f32>(1.5f), v1.xy);
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r1 = textureSample(t6, s6, r0.xyxx.xy);
  r0 = textureSample(t6, s6, r0.zwzz.xy);
  r2 = textureSample(t6, s6, v1.xy.xyxx.xy);
  r0 = fma(r2, vec4<f32>(0.5f), r0);
  r0 = (r1 + r0);
  o0 = (r0 * vec4<f32>(0.40000000596046447754f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
