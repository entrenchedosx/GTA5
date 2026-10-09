diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb17_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t2, s2, v2.xy.xyxx.xy).yxzw;
  r1 = textureSample(t4, s4, v3.xyxx.xy);
  r0.y = r1.y;
  r1 = textureSample(t6, s6, v3.zwzz.xy);
  r0.z = r1.y;
  let v = fma((-(r0.xyzx)).xyz, r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = (r0.xyz * cb12_12.tint_symbol[16u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r0.w = fma(r0.x, cb12_12.tint_symbol[15u].x, v1.z);
  r0.w = fma(r0.y, cb12_12.tint_symbol[15u].y, r0.w);
  r0.w = fma(r0.z, cb12_12.tint_symbol[15u].z, r0.w);
  let v_2 = (r0.xyz * cb12_12.tint_symbol[14u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.y = max(r0.z, r0.y);
  r0.x = max(r0.y, r0.x);
  r0.y = (r0.x * v1.y);
  r0.x = fma((-(v1.yyyy)).x, r0.x, 1.0f);
  r0.x = fma((-(r0.xxxx)).x, r0.w, r0.y);
  let v_3 = -(cb12_12.tint_symbol[8u].xxxx);
  r0.x = (r0.x + v_3.x);
  r0.x = clamp(((r0.xxxx * cb12_12.tint_symbol[8u].yyyy)).x, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = ((-(cb12_12.tint_symbol[10u].wwww)).y + 1.0f);
  r0.x = clamp(fma(r0.xxxx, cb12_12.tint_symbol[10u].wwww, r0.yyyy).x, 0.0f, 1.0f);
  r0.x = fma((-(r0.xxxx)).x, 12.0f, 1.0f);
  r0.x = max(r0.x, 0.0f);
  o0.w = (r0.x * v1.w);
  o0 = vec4<f32>(vec3<f32>(), o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
