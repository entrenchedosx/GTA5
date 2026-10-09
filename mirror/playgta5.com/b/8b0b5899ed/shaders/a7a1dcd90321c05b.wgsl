diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>) {
  r0 = vec4<f32>(((v4.xy / v4.ww)).xy, r0.zw);
  r0 = textureSample(t3, s3, r0.xyxx.xy);
  r0.y = (cb12_12.tint_symbol[2u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb12_12.tint_symbol[2u].z / r0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= v4.z)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r1 = textureSample(t2, s2, v2.xyz.xyxx.xy);
  r0.y = ((-(r1.xxxx)).y + r1.y);
  r2.w = fma(v2.z, r0.y, r1.x);
  let v = r1;
  r2 = vec4<f32>(v.yyy, r2.w);
  r0 = (r0.xxxx * r2);
  o0 = (r0 * v1);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v4);
  return o0;
}
