diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb3_struct {
  tint_symbol_1 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0.y = cb12_12.tint_symbol_1[2u].w;
  r1 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r0.z = (r1.w * 255.0099945068359375f);
  r0.z = floor(r0.z);
  r0.w = (r0.z + -32.0f);
  r0.x = (r0.w * 0.0078125f);
  r2 = textureSample(t5, s5, r0.xyxx.xy);
  let v = (r1.xyz * r2.xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  r2.w = 1.0f;
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 32.0f)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (160.0f >= r0.z)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  let v_1 = bitcast<vec4<u32>>(r0.xxxx);
  let v_2 = r2;
  r0 = select(r1, v_2, (v_1 != vec4<u32>()));
  r0 = (r0 * v1);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_3 = r0;
  o0 = vec4<f32>(v_3.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
