diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb12_struct {
  tint_symbol_1 : array<vec4<f32>, 12u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb12_struct;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> v7 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  x0[0u].x = v7[0u];
  x0[0u].y = v7[1u];
  x0[0u].z = v7[2u];
  x0[0u].w = v7[3u];
  r0 = vec4<f32>(((v3.xyz * v4.xyz)).xyz, r0.w);
  let v = (r0.xyz * cb8_8.tint_symbol_1[11u].xxx);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_1.xyz, o0.w);
  r0 = textureSample(t7, s7, v1.xyxx.xy);
  r1 = textureSample(t7, s7, v0.xyz.xyxx.xy);
  let v_2 = -(r1.wwww);
  r0.x = (r0.w + v_2.x);
  r0.x = fma(v0.z, r0.x, r1.w);
  r0.x = clamp(((r0.xxxx * v3.wwww)).x, 0.0f, 1.0f);
  o0.w = r0.x;
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.15000000596046447754f < r0.x)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r0.y = ((-(v4.wwww)).y + 1.0f);
  o1 = (r0.x * r0.y);
  o2 = r0.x;
}

struct tint_symbol_2 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v3, v4);
  return tint_symbol_2(o0, o1, o2);
}
