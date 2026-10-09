diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>) {
  r0 = textureSample(t1, s1, v3.xyxx.xy);
  let v = fma(r0.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = dot(r0.xyz, v7.xyz);
  r0.x = clamp(vec4<f32>(v_1, v_1, v_1, v_1).x, 0.0f, 1.0f);
  let v_2 = (r0.xxx * cb12_12.tint_symbol_1[0u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.w = clamp(v4.x, 0.0f, 1.0f);
  r1 = textureSample(t0, s0, v2.zwzz.xy);
  r2 = textureSample(t0, s0, v2.xyxx.xy);
  let v_3 = -(r2);
  r1 = (r1 + v_3);
  r1 = fma(r0.wwww, r1, r2);
  r2 = (r1 * v1);
  let v_4 = fma(r0.xyz, r1.xyz, r2.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = (r2.www * r2.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb13_13.tint_symbol[0u].x))));
  r1.y = ((-(v5.xxxx)).y + 1.0f);
  r0.w = (r1.y * r2.w);
  let v_6 = bitcast<vec4<u32>>(r1.xxxx);
  let v_7 = r0;
  o0 = select(r2, v_7, (v_6 != vec4<u32>()));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5, v7);
  return o0;
}
