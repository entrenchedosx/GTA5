diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  o0 = vec4<f32>();
  o1 = vec4<f32>();
  r0.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_1[3u].z);
  r0.y = (v1.x * cb2_2.tint_symbol[15u].z);
  r0.x = (r0.y * r0.x);
  let v = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = sqrt(r0.xy);
  o2 = vec4<f32>(v_1.xy, o2.zw);
  o2 = vec4<f32>(o2.xy, vec2<f32>());
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r0.x = dot(r0.xyz, cb12_12.tint_symbol_2[0u].xyz);
  r0.y = (r0.w * v1.w);
  r0.x = clamp(((-(r0.xxxx) + vec4<f32>(1.0f))).x, 0.0f, 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * cb2_2.tint_symbol[15u].x);
  o3.w = (r0.x * cb5_5.tint_symbol_1[2u].x);
  o3 = vec4<f32>(vec3<f32>(), o3.w);
}

struct tint_symbol_3 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2);
  return tint_symbol_3(o0, o1, o2, o3);
}
