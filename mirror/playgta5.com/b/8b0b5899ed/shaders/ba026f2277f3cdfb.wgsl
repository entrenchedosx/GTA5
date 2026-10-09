diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb5_struct {
  tint_symbol : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t5, s5, v2.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((v1.w == 0.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1 = textureSample(t5, s5, v2.zwzz.xy);
    r1 = (-(r0) + r1);
    r0 = fma(v1.wwww, r1, r0);
  }
  r0 = (r0 * v1.yyyy);
  r1.x = dot(r0.xyz, r0.xyz);
  r1.y = cb12_12.tint_symbol[4u].x;
  r1 = textureSample(t6, s6, r1.xyxx.xy);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol[4u].y)));
  let v = bitcast<vec3<u32>>(r1.www);
  let v_1 = r1.xyz;
  let v_2 = select(r0.xyz, v_1, (v != vec3<u32>()));
  o0 = vec4<f32>(v_2.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
