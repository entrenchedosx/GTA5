diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb2_struct {
  tint_symbol : array<vec4<f32>, 2u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb2_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = (v1.xy.xyxy + vec4<f32>(-0.0078125f, 0.0f, 0.0f, -0.0078125f));
  r1 = textureSample(t4, s4, r0.xyxx.xy).yzxw;
  r0 = textureSample(t4, s4, r0.zwzz.xy).yzwx;
  r2 = (v1.xy.xyxy + vec4<f32>(0.0078125f, 0.0f, 0.0f, 0.0078125f));
  r3 = textureSample(t4, s4, r2.zwzz.xy).yxwz;
  r2 = textureSample(t4, s4, r2.xyxx.xy);
  r4 = (v1.xy.xyxy + vec4<f32>(0.00390625f, 0.0f, 0.0f, 0.00390625f));
  r5 = textureSample(t4, s4, r4.xyxx.xy);
  r4 = textureSample(t4, s4, r4.zwzz.xy);
  r5.y = r4.x;
  r4 = (v1.xy.xyxy + vec4<f32>(-0.00390625f, 0.0f, 0.0f, -0.00390625f));
  r6 = textureSample(t4, s4, r4.xyxx.xy);
  r4 = textureSample(t4, s4, r4.zwzz.xy);
  r5.w = r4.x;
  r5.z = r6.x;
  r4 = (v1.xy.xyxy + vec4<f32>(0.00390625f, 0.00390625f, 0.00390625f, -0.00390625f));
  r6 = textureSample(t4, s4, r4.xyxx.xy);
  r4 = textureSample(t4, s4, r4.zwzz.xy);
  r2.w = r4.x;
  r2.y = r6.x;
  r4 = textureSample(t4, s4, v1.xy.xyxx.xy);
  r2.z = r4.x;
  r6 = min(r2, r5);
  let v = r2;
  let v_1 = r3;
  r3 = vec4<f32>(v.y, v_1.y, v.z, v_1.w);
  let v_2 = r2;
  r0 = vec4<f32>(v_2.wz, r0.zw);
  r2 = (v1.xy.xyxy + vec4<f32>(-0.00390625f, -0.00390625f, -0.00390625f, 0.00390625f));
  r7 = textureSample(t4, s4, r2.zwzz.xy);
  r2 = textureSample(t4, s4, r2.xyxx.xy);
  r1.w = r2.x;
  r3.w = r7.x;
  r2 = min(r3.xywz, r6);
  let v_3 = r3;
  r1 = vec4<f32>(v_3.zw, r1.zw);
  r2 = min(r1, r2);
  r0.z = r1.w;
  r1 = min(r0, r2);
  let v_4 = r0;
  let v_5 = r3;
  r3 = vec4<f32>(v_5.x, v_4.xz, v_5.w);
  r0 = (r3 * vec4<f32>(0.07000000029802322388f));
  r0 = fma(r5, vec4<f32>(0.18000000715255737305f), r0);
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.x = ((-(r4.xxxx)).x + r0.x);
  r0.x = (r0.x * cb11_11.tint_symbol[0u].x);
  let v_6 = ((-(r1.xxyx)).yz + r1.zw);
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = fma(r0.yz, vec2<f32>(3.0f), vec2<f32>(0.5f));
  o0 = vec4<f32>(o0.xy, v_8.xy);
  r0.y = ((-(r4.xxxx)).y + 0.5f);
  r0.x = fma(r0.y, cb11_11.tint_symbol[0u].y, r0.x);
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, ((v1.xy + v2.xy)).xy, v_9.w);
  r1 = textureSample(t6, s6, r0.yzyy.xy);
  r0.y = fma(r1.y, 2.0f, -1.0f);
  r0.x = fma(r0.y, cb11_11.tint_symbol[1u].y, r0.x);
  r0.x = (r0.x * cb11_11.tint_symbol[0u].w);
  r0.y = (r0.x * cb11_11.tint_symbol[1u].w);
  o0.y = fma(r0.x, cb11_11.tint_symbol[1u].w, r4.y);
  r0.x = (r0.y * cb11_11.tint_symbol[1u].w);
  r0.y = (r4.y + -0.5f);
  r0.y = (r0.y * cb11_11.tint_symbol[1u].x);
  r0.y = fma(r0.y, cb11_11.tint_symbol[1u].w, r4.x);
  o0.x = fma(r0.x, 0.5f, r0.y);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
