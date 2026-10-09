diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb8_struct {
  tint_symbol : array<vec4<f32>, 8u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb8_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  let v = (v2.xy + (-(cb12_12.tint_symbol[4u].xyxx)).xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy * cb12_12.tint_symbol[6u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r0.z = dot(r0.xy, r0.xy);
  r0.w = fma(cb12_12.tint_symbol[7u].y, r0.z, cb12_12.tint_symbol[7u].x);
  r1.x = (r0.z * r0.z);
  r1.y = (r1.x * cb12_12.tint_symbol[7u].w);
  r0.w = fma(r1.x, cb12_12.tint_symbol[7u].z, r0.w);
  r0.z = fma(r1.y, r0.z, r0.w);
  let v_2 = (r0.zz * r0.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = fma(cb12_12.tint_symbol[5u].zw, r0.xy, cb12_12.tint_symbol[4u].xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = -(cb12_12.tint_symbol[5u].xxxy);
  let v_5 = (cb12_12.tint_symbol[4u].zw + v_4.zw);
  r0 = vec4<f32>(r0.xy, v_5.xy);
  let v_6 = (cb12_12.tint_symbol[4u].zw + cb12_12.tint_symbol[5u].xy);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = max(r0.zw, r0.xy);
  r0 = vec4<f32>(r0.xy, v_7.xy);
  let v_8 = min(r1.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, v_8.xy);
  let v_9 = ((-(r0.xxxy)).zw + r0.zw);
  r0 = vec4<f32>(r0.xy, v_9.xy);
  r0.z = dot(r0.zw, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((r0.z == 0.0f))));
  r1 = textureSample(t2, s2, r0.xyxx.xy);
  if ((bitcast<u32>(r0.z) != 0u)) {
    o0 = vec4<f32>();
    return;
  }
  o0 = r1;
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
