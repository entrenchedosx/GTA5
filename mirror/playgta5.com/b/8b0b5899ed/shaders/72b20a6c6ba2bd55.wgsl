diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = fma(v1.xy.xyxy, vec4<f32>(1.0f, -1.0f, 1.0f, -1.0f), vec4<f32>(0.00124999997206032276f, 1.00166666507720947266f, -0.00124999997206032276f, 0.99833333492279052734f));
  r1 = textureSample(t1, s1, r0.zwzz.xy);
  r0 = textureSample(t1, s1, r0.xyxx.xy);
  r1 = (r1 * vec4<f32>(0.125f));
  r0 = fma(r0, vec4<f32>(0.125f), r1);
  r1 = fma(v1.xy.xyxy, vec4<f32>(1.0f, -1.0f, 1.0f, -1.0f), vec4<f32>(-0.00124999997206032276f, 1.00166666507720947266f, 0.00124999997206032276f, 0.99833333492279052734f));
  r2 = textureSample(t1, s1, r1.xyxx.xy);
  r1 = textureSample(t1, s1, r1.zwzz.xy);
  r0 = fma(r2, vec4<f32>(0.125f), r0);
  r0 = fma(r1, vec4<f32>(0.125f), r0);
  r1 = fma(v1.xy.xyxy, vec4<f32>(1.0f, -1.0f, 1.0f, -1.0f), vec4<f32>(0.00249999994412064552f, 1.00250005722045898438f, -0.00187499995809048414f, 0.99666666984558105469f));
  r2 = textureSample(t1, s1, r1.xyxx.xy);
  r1 = textureSample(t1, s1, r1.zwzz.xy);
  r0 = fma(r2, vec4<f32>(0.125f), r0);
  r0 = fma(r1, vec4<f32>(0.125f), r0);
  r1 = fma(v1.xy.xyxy, vec4<f32>(1.0f, -1.0f, 1.0f, -1.0f), vec4<f32>(-0.00224999990314245224f, 1.00316667556762695312f, 0.00224999990314245224f, 0.99683332443237304688f));
  r2 = textureSample(t1, s1, r1.xyxx.xy);
  r1 = textureSample(t1, s1, r1.zwzz.xy);
  r0 = fma(r2, vec4<f32>(0.125f), r0);
  r0 = fma(r1, vec4<f32>(0.125f), r0);
  let v = fma(v1.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1 = textureSample(t1, s1, r1.xyxx.xy);
  let v_1 = -(r1);
  r0 = (r0 + v_1);
  r0 = fma(r0, vec4<f32>(0.5f), r1);
  r1.x = dot(r0.xyz, r0.xyz);
  r1.y = 1.0f;
  r1 = (-(r0) + r1.xxxy);
  o0 = fma(r1, vec4<f32>(0.85000002384185791016f), r0);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
