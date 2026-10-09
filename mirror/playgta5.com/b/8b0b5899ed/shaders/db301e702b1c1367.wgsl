diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb23_struct {
  tint_symbol : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v12 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v7 : vec4<f32>) {
  x0[0u].x = v12[0u];
  x0[0u].y = v12[1u];
  x0[0u].z = v12[2u];
  x0[0u].w = v12[3u];
  r0 = textureSample(t5, s5, v1.zwzz.xy);
  let v = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r1 = textureSample(t5, s5, v1.xyxx.xy);
  let v_1 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = -(r1);
  r0 = (r0 + v_2);
  r0 = fma(v3.xy.xxxx, r0, r1);
  r0 = (r0 * v0);
  let v_3 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_3.xyz, o0.w);
  r0.w = clamp(r0.wwww.w, 0.0f, 1.0f);
  o0.w = r0.w;
  o2 = (r0.w * cb2_2.tint_symbol[22u].x);
  o1 = v7.w;
}

struct tint_symbol_1 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0, v1, v3, v7);
  return tint_symbol_1(o0, o1, o2);
}
