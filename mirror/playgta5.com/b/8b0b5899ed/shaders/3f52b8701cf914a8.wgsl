diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb8_struct {
  tint_symbol : array<vec4<f32>, 8u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb8_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy * cb12_12.tint_symbol[7u].xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.x = textureSampleLevel(t4, s4, r0.xyxx.xy, 0.0f).x;
  let v_3 = (cb12_12.tint_symbol[4u].xy * cb12_12.tint_symbol[7u].xy);
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r1 = (r0.yzyz * vec4<f32>(1.46630120277404785156f, 1.46630120277404785156f, 3.42189478874206542969f, 3.42189478874206542969f));
  r2 = fma(v0.xyxy, cb12_12.tint_symbol[7u].xyxy, r1);
  let v_5 = -(r1);
  r1 = fma(v0.xyxy, cb12_12.tint_symbol[7u].xyxy, v_5);
  r0.w = textureSampleLevel(t4, s4, r2.xyxx.xy, 0.0f).x;
  r2.x = textureSampleLevel(t4, s4, r2.zwzz.xy, 0.0f).x;
  r1.x = textureSampleLevel(t4, s4, r1.xyxx.xy, 0.0f).x;
  r1.y = textureSampleLevel(t4, s4, r1.zwzz.xy, 0.0f).x;
  r1.y = (r1.y + r2.x);
  r0.w = (r0.w + r1.x);
  r0.x = fma(r0.w, 1.79126775264739990234f, r0.x);
  r0.x = fma(r1.y, 1.15372908115386962891f, r0.x);
  r1 = (r0.yzyz * vec4<f32>(5.37871646881103515625f, 5.37871646881103515625f, 7.33737802505493164062f, 7.33737802505493164062f));
  let v_6 = (r0.yz * vec2<f32>(9.29838466644287109375f));
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r2 = fma(v0.xyxy, cb12_12.tint_symbol[7u].xyxy, r1);
  let v_8 = -(r1);
  r1 = fma(v0.xyxy, cb12_12.tint_symbol[7u].xyxy, v_8);
  r0.w = textureSampleLevel(t4, s4, r2.xyxx.xy, 0.0f).x;
  r2.x = textureSampleLevel(t4, s4, r2.zwzz.xy, 0.0f).x;
  r1.x = textureSampleLevel(t4, s4, r1.xyxx.xy, 0.0f).x;
  r1.y = textureSampleLevel(t4, s4, r1.zwzz.xy, 0.0f).x;
  r1.y = (r1.y + r2.x);
  r0.w = (r0.w + r1.x);
  r0.x = fma(r0.w, 0.52255117893218994141f, r0.x);
  r0.x = fma(r1.y, 0.16638529300689697266f, r0.x);
  let v_9 = fma(v0.xy, cb12_12.tint_symbol[7u].xy, r0.yz);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  let v_10 = -(r0.yyzy);
  let v_11 = fma(v0.xy, cb12_12.tint_symbol[7u].xy, v_10.yz);
  let v_12 = r0;
  r0 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r0.y = textureSampleLevel(t4, s4, r0.yzyy.xy, 0.0f).x;
  r0.z = textureSampleLevel(t4, s4, r1.xyxx.xy, 0.0f).x;
  r0.y = (r0.y + r0.z);
  r0.x = fma(r0.y, 0.03723040595650672913f, r0.x);
  o0 = (r0.xxxx * vec4<f32>(0.11987062543630599976f));
}

@fragment
fn main(@builtin(position) v_13 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_13);
  return o0;
}
