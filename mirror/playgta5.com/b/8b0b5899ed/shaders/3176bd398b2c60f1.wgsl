diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> oDepth : f32;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  r0 = textureSample(t4, s4, r0.xyxx.xy);
  r0.y = (cb12_12.tint_symbol[3u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb12_12.tint_symbol[3u].z / r0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < v1.z)));
  v((bitcast<u32>(r0.x) != 0u));
  o0 = vec4<f32>();
  oDepth = 1.0f;
}

fn v(v_1 : bool) {
  if (v_1) {
    discard;
    return;
  }
}

struct tint_symbol_1 {
  @location(0u)
  o0 : vec4<f32>,
  @builtin(frag_depth)
  oDepth : f32,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v1);
  return tint_symbol_1(o0, oDepth);
}
