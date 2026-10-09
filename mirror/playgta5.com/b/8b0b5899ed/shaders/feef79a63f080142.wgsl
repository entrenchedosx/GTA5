diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb10_struct {
  tint_symbol : array<vec4<f32>, 10u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb10_struct;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : f32;

fn main_inner(v2 : vec4<f32>) {
  r0 = (v2.xyxy + cb11_11.tint_symbol[9u].zwzw);
  r1 = (r0.zwzw + vec4<f32>(0.00390625f, 0.00390625f, -0.00390625f, -0.00390625f));
  r2 = textureSample(t14, s14, r1.xyxx.xy);
  r1 = textureSample(t14, s14, r1.zwzz.xy);
  r2.y = r1.x;
  r1 = (r0 + vec4<f32>(-0.00390625f, 0.00390625f, 0.00390625f, -0.00390625f));
  r3 = textureSample(t14, s14, r1.xyxx.xy);
  r1 = textureSample(t14, s14, r1.zwzz.xy);
  r2.w = r1.x;
  r2.z = r3.x;
  r1 = (r2 * vec4<f32>(0.07000000029802322388f));
  r2 = (r0.zwzw + vec4<f32>(0.00390625f, 0.0f, 0.0f, 0.00390625f));
  r3 = textureSample(t14, s14, r2.xyxx.xy);
  r2 = textureSample(t14, s14, r2.zwzz.xy);
  r3.y = r2.x;
  r2 = (r0.zwzw + vec4<f32>(-0.00390625f, 0.0f, 0.0f, -0.00390625f));
  r4 = textureSample(t14, s14, r2.xyxx.xy);
  r2 = textureSample(t14, s14, r2.zwzz.xy);
  r3.w = r2.x;
  r3.z = r4.x;
  r1 = fma(r3, vec4<f32>(0.18000000715255737305f), r1);
  r0.x = (r1.y + r1.x);
  r0.x = (r1.z + r0.x);
  r0.x = (r1.w + r0.x);
  r1 = textureSample(t14, s14, r0.zwzz.xy);
  r0.x = ((-(r0.xxxx)).x + r1.x);
  let v = fma(r0.zw, vec2<f32>(8.0f), cb11_11.tint_symbol[7u].ww);
  let v_1 = r1;
  r1 = vec4<f32>(v_1.x, v.xy, v_1.w);
  r2 = textureSample(t11, s11, r1.yzyy.xy);
  r0.y = (r2.x + -0.49215686321258544922f);
  r0.y = (r0.y * cb11_11.tint_symbol[6u].w);
  r2 = textureSample(t15, s15, r0.zwzz.xy);
  let v_2 = (r0.zw + r0.zw);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  let v_3 = fma(cb11_11.tint_symbol[9u].xy, vec2<f32>(0.001953125f), r0.zw);
  r0 = vec4<f32>(r0.xy, v_3.xy);
  r0.y = fma(r0.y, cb11_11.tint_symbol[6u].x, r2.x);
  r1.y = (cb11_11.tint_symbol[6u].x * cb11_11.tint_symbol[7u].y);
  r2.y = fma(r0.w, cb11_11.tint_symbol[7u].x, cb11_11.tint_symbol[6u].z);
  r3 = (cb11_11.tint_symbol[6u].xxxy * vec4<f32>(40.0f, 0.5f, -0.51457315683364868164f, 0.00000249999993684469f));
  r2.x = fma(r0.z, cb11_11.tint_symbol[7u].x, r3.w);
  r2 = textureSample(t11, s11, r2.xyxx.xy);
  r0.z = (r2.x + -0.49215686321258544922f);
  r0.y = fma(r0.z, r1.y, r0.y);
  r0.x = fma((-(r0.xxxx)).x, r3.x, r0.y);
  r0.x = fma((-(r1.xxxx)).x, r3.y, r0.x);
  r0.y = exp2(r3.z);
  r0.x = (r0.y * r0.x);
  r0.x = max(r0.x, -10.0f);
  r0.x = min(r0.x, 10.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (abs(r0.xxxx).y >= 9.0f)));
  let v_4 = bitcast<u32>(r0.y);
  o0 = select(r0.x, 0.0f, (v_4 != 0u));
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v2);
  return o0;
}
