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

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy + v2.xy)).xy, r0.zw);
  r0 = textureSample(t6, s6, r0.xyxx.xy);
  r0.x = fma(r0.y, 2.0f, -1.0f);
  r1 = (v1.xy.xyxy + vec4<f32>(0.00390625f, 0.0f, 0.0f, 0.00390625f));
  r2 = textureSample(t5, s5, r1.xyxx.xy);
  r1 = textureSample(t5, s5, r1.zwzz.xy);
  r2.y = r1.x;
  r1 = (v1.xy.xyxy + vec4<f32>(-0.00390625f, 0.0f, 0.0f, -0.00390625f));
  r3 = textureSample(t5, s5, r1.xyxx.xy);
  r1 = textureSample(t5, s5, r1.zwzz.xy);
  r2.w = r1.x;
  r2.z = r3.x;
  r1 = (v1.xy.xyxy + vec4<f32>(-0.00390625f, -0.00390625f, -0.00390625f, 0.00390625f));
  r3 = textureSample(t5, s5, r1.xyxx.xy).yzwx;
  r1 = textureSample(t5, s5, r1.zwzz.xy).yzxw;
  r4.z = r3.w;
  r5 = (v1.xy.xyxy + vec4<f32>(0.00390625f, 0.00390625f, 0.00390625f, -0.00390625f));
  r6 = textureSample(t5, s5, r5.zwzz.xy).yzwx;
  r5 = textureSample(t5, s5, r5.xyxx.xy);
  r6.y = r5.x;
  r5 = textureSample(t5, s5, v1.xy.xyxx.xy);
  r6.z = r5.x;
  let v = r6;
  r4 = vec4<f32>(v.wz, r4.zw);
  let v_1 = r4;
  let v_2 = r7;
  r7 = vec4<f32>(v_2.x, v_1.xz, v_2.w);
  let v_3 = r6;
  r1 = vec4<f32>(v_3.y, r1.yz, v_3.z);
  let v_4 = r1;
  r7 = vec4<f32>(v_4.x, r7.yz, v_4.z);
  r7 = (r7 * vec4<f32>(0.07000000029802322388f));
  r7 = fma(r2, vec4<f32>(0.18000000715255737305f), r7);
  r0.y = dot(r7, vec4<f32>(1.0f));
  r0.y = ((-(r5.xxxx)).y + r0.y);
  r0.y = (r0.y * cb11_11.tint_symbol[0u].x);
  r0.z = ((-(r5.xxxx)).z + 0.5f);
  r0.y = fma(r0.z, cb11_11.tint_symbol[0u].y, r0.y);
  r0.x = fma(r0.x, cb11_11.tint_symbol[1u].y, r0.y);
  r0.x = (r0.x * cb11_11.tint_symbol[0u].w);
  r0.y = (r0.x * cb11_11.tint_symbol[1u].w);
  o0.y = fma(r0.x, cb11_11.tint_symbol[1u].w, r5.y);
  r0.x = (r0.y * cb11_11.tint_symbol[1u].w);
  r0.y = (r5.y + -0.5f);
  r0.y = (r0.y * cb11_11.tint_symbol[1u].x);
  r0.y = fma(r0.y, cb11_11.tint_symbol[1u].w, r5.x);
  o0.x = fma(r0.x, 0.5f, r0.y);
  o0 = vec4<f32>(o0.xy, vec2<f32>(1.0f));
  r0 = (v1.xy.xyxy + vec4<f32>(0.0078125f, 0.0f, 0.0f, 0.0078125f));
  r5 = textureSample(t5, s5, r0.xyxx.xy);
  r0 = textureSample(t5, s5, r0.zwzz.xy);
  r1.y = r0.x;
  r6.x = r5.x;
  r0 = min(r2, r6);
  r0 = min(r1, r0);
  let v_5 = r1;
  r3 = vec4<f32>(v_5.wz, r3.zw);
  r1 = (v1.xy.xyxy + vec4<f32>(-0.0078125f, 0.0f, 0.0f, -0.0078125f));
  r2 = textureSample(t5, s5, r1.xyxx.xy);
  r1 = textureSample(t5, s5, r1.zwzz.xy);
  r4.w = r1.x;
  r3.z = r2.x;
  r0 = min(r3, r0);
  r0 = min(r4, r0);
  let v_6 = ((-(r0.xyxx)).xy + r0.zw);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = fma(r0.xy, vec2<f32>(3.0f), vec2<f32>(0.5f));
  o1 = vec4<f32>(v_7.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, vec2<f32>(1.0f));
}

struct tint_symbol_1 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v1, v2);
  return tint_symbol_1(o0, o1);
}
