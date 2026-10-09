diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r1.x = (r0.y + r0.x);
  r1.x = (r0.z + r1.x);
  r1.x = (r1.x * cb5_5.tint_symbol_1[3u].w);
  let v = -(r0.xyzx);
  let v_1 = fma(r1.xxx, vec3<f32>(0.3333333432674407959f), v.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = fma(cb5_5.tint_symbol_1[3u].zzz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  o0.w = r0.w;
  let v_3 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (r0.xyz * v2.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_5.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
