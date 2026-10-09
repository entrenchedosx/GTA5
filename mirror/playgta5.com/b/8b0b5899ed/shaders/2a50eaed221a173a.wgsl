diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : f32;

var<private> oDepth : f32;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0.x = (cb2_2.tint_symbol[16u].x * 0.00150000001303851604f);
  let v = fma(v2.xyz.xy, vec2<f32>(0.00999999977648258209f), r0.xx);
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  let v_2 = fma(v2.xyz.yx, vec2<f32>(0.00999999977648258209f), (-(r0.xxxx)).xw);
  r0 = vec4<f32>(v_2.x, r0.yz, v_2.y);
  r1 = textureSample(t3, s3, r0.xwxx.xy);
  r0 = textureSample(t3, s3, r0.yzyy.xy);
  r0.x = (r1.w + r0.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (1.0f < r0.x)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r0.x = min(r0.x, r1.x);
  o0 = r0.x;
  oDepth = r0.x;
}

struct tint_symbol_1 {
  @location(0u)
  o0 : f32,
  @builtin(frag_depth)
  oDepth : f32,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v1, v2);
  return tint_symbol_1(o0, oDepth);
}
