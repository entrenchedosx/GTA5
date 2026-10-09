diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec2<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = textureSample(t4, s4, v1.xyxx.xy).x;
  r0.x = ((-(r0.xxxx)).x + cb5_5.tint_symbol[0u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb5_5.tint_symbol[0u].z / r0.x);
  r0.y = textureSample(t11, s11, v1.xyxx.xy).x;
  r0.y = ((-(r0.xxxx)).y + r0.y);
  r0.z = textureSample(t12, s12, v1.xyxx.xy).x;
  r0.z = clamp(r0.zzzz.z, 0.0f, 1.0f);
  r0.x = fma(r0.z, r0.y, r0.x);
  let v = -(cb5_5.tint_symbol[3u].xxzx);
  let v_1 = (r0.xx + v.yz);
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  o0.x = r0.x;
  let v_3 = clamp(((r0.yzyy * cb5_5.tint_symbol[3u].ywyy)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = (r0.y + r0.x);
  r0.y = min(r0.y, 1.0f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  let v_4 = -(r0.xxxx);
  let v_5 = bitcast<u32>(r0.z);
  o0.y = select(r0.y, v_4.y, (v_5 != 0u));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec2<f32> {
  main_inner(v1);
  return o0;
}
