diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> oDepth : f32;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  o0 = vec4<f32>(1.0f);
  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = sqrt(r0.x);
  r0.x = fma(r0.x, cb6_6.tint_symbol_1[0u].w, cb6_6.tint_symbol_1[1u].x);
  r0.y = dpdx(r0.x);
  r0.z = dpdy(r0.x);
  let v = abs(r0.zzzz);
  r0.y = max(v.y, abs(r0.yyyy).y);
  r0.x = clamp(fma(cb6_6.tint_symbol_1[1u].yyyy, r0.yyyy, r0.xxxx).x, 0.0f, 1.0f);
  r1 = textureSample(t0, s0, v2.xyxx.xy);
  r0.y = fma(r1.w, cb2_2.tint_symbol[15u].x, -0.25f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
  let v_1 = bitcast<u32>(r0.y);
  oDepth = select(1.0f, r0.x, (v_1 != 0u));
}

struct tint_symbol_2 {
  @location(0u)
  o0 : vec4<f32>,
  @builtin(frag_depth)
  oDepth : f32,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v1, v2);
  return tint_symbol_2(o0, oDepth);
}
