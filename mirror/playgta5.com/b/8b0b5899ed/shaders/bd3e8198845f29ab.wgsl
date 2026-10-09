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

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = (v1.xyxy + cb11_11.tint_symbol[9u].zwzw);
  r1 = (r0.zwzw + vec4<f32>(0.00390625f, 0.0f, 0.0f, 0.00390625f));
  r2 = textureSample(t11, s11, r1.xyxx.xy).yxzw;
  r1 = textureSample(t11, s11, r1.zwzz.xy);
  r3.x = r2.y;
  r3.y = r1.x;
  r2.y = r1.y;
  r1 = (r0 + vec4<f32>(-0.00390625f, 0.0f, 0.0f, -0.00390625f));
  r0 = textureSample(t11, s11, r0.zwzz.xy);
  r4 = textureSample(t11, s11, r1.xyxx.xy);
  r1 = textureSample(t11, s11, r1.zwzz.xy);
  r3.z = r4.x;
  r2.z = r4.y;
  r3.w = r1.x;
  r2.w = r1.y;
  r1.y = dot(r2, vec4<f32>(0.25f));
  r1.x = dot(r3, vec4<f32>(0.25f));
  let v = ((-(r0.xxxy)).zw + r1.xy);
  r0 = vec4<f32>(r0.xy, v.xy);
  let v_1 = (cb11_11.tint_symbol[6u].xxx * vec3<f32>(2.5f, 5.0f, 0.15000000596046447754f));
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = clamp(r1.xyxx.xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = fma(r1.xy, r0.zw, r0.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = -(r0.yyyy);
  r0.z = fma(r1.z, v_4.z, r0.y);
  r1 = textureSample(t14, s14, v1.xyxx.xy);
  r0.y = (r1.x + -0.10000000149011611938f);
  let v_5 = (r1.xx * vec2<f32>(0.5f));
  let v_6 = r1;
  r1 = vec4<f32>(v_5.x, v_6.y, v_5.y, v_6.w);
  r0.y = max(r0.y, 0.0f);
  r0.y = min(r0.y, 2.0f);
  let v_7 = (r0.yy * cb11_11.tint_symbol[6u].yy);
  let v_8 = r1;
  r1 = vec4<f32>(v_8.x, v_7.x, v_8.z, v_7.y);
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r1.zwzw >= r0.xzxz)));
  r1 = (-(r0.xzxz) + r1);
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  r3 = clamp((cb11_11.tint_symbol[6u].xxxx * vec4<f32>(1.0f, 3.0f, 1.0f, 3.0f)), vec4<f32>(), vec4<f32>(1.0f));
  r3 = (r3 + vec4<f32>(-0.00999999977648258209f, -0.00100000004749745131f, -0.00999999977648258209f, -0.00100000004749745131f));
  r2 = fma(r2, r3, vec4<f32>(0.00999999977648258209f, 0.00100000004749745131f, 0.00999999977648258209f, 0.00100000004749745131f));
  o0 = fma(r2, r1, r0.xzxz);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
