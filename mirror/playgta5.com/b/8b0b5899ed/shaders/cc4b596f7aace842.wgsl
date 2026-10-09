diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb9_struct {
  tint_symbol : array<vec4<f32>, 9u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb9_struct;

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
  r0.w = fma(r1.y, r0.z, r0.w);
  let v_2 = (r0.ww * r0.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r1 = fma(cb12_12.tint_symbol[8u].wwyy, r0.zzzz, cb12_12.tint_symbol[8u].zzxx);
  r1 = (r0.xyxy * r1);
  r1 = fma(cb12_12.tint_symbol[5u].zwzw, r1, cb12_12.tint_symbol[4u].xyxy);
  let v_3 = -(cb12_12.tint_symbol[5u].xxxy);
  let v_4 = (cb12_12.tint_symbol[4u].zw + v_3.zw);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = (cb12_12.tint_symbol[4u].zw + cb12_12.tint_symbol[5u].xy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  let v_6 = max(r0.zw, r1.xy);
  r0 = vec4<f32>(r0.xy, v_6.xy);
  let v_7 = min(r2.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, v_7.xy);
  let v_8 = ((-(r1.xxxy)).zw + r0.zw);
  r0 = vec4<f32>(r0.xy, v_8.xy);
  r0.z = dot(r0.zw, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((r0.z == 0.0f))));
  r2 = textureSample(t2, s2, r1.xyxx.xy);
  let v_9 = fma(cb12_12.tint_symbol[5u].zw, r0.xy, cb12_12.tint_symbol[4u].xy);
  r0 = vec4<f32>(v_9.xy, r0.zw);
  r3 = textureSample(t2, s2, r0.xyxx.xy);
  r1 = textureSample(t2, s2, r1.zwzz.xy);
  if ((bitcast<u32>(r0.z) != 0u)) {
    o0 = vec4<f32>();
    return;
  }
  o0.x = r1.x;
  o0.y = r3.y;
  o0.z = r2.z;
  o0.w = 1.0f;
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
