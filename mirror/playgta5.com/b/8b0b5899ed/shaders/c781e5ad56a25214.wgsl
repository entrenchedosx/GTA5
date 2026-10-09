diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb3_struct;

@group(0u) @binding(16u) var s0 : sampler;

@group(0u) @binding(17u) var s1 : sampler;

@group(0u) @binding(32u) var t0 : texture_2d<f32>;

@group(0u) @binding(33u) var t1 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>) {
  r0 = textureSampleLevel(t0, s0, v1.zwzz.xy, 0.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x < cb5_5.tint_symbol[2u].x)));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= cb5_5.tint_symbol[2u].x)));
  r0.z = select(0.0f, -1.0f, (bitcast<u32>(r0.x) != 0u));
  let v = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1065353216u)));
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.y = (r0.z + r0.y);
  r0.x = fma(cb5_5.tint_symbol[2u].w, r0.y, r0.x);
  r1.x = fma(v1.x, v0.z, v0.x);
  r1.y = fma((-(v1.yyyy)).y, v0.w, v0.y);
  let v_1 = (r1.xy + vec2<f32>(-0.5f, 0.5f));
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  let v_3 = (r0.yz + r0.yz);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = fma(r1.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(1.0f));
  let v_5 = r0;
  r0 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = (r0.yz * vec2<f32>(0.5f));
  o1 = vec4<f32>(v_6.xy, o1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>(1.0f));
  o0 = (r0.xxxx * r1);
  r0 = textureSampleLevel(t1, s1, vec2<f32>(), 0.0f);
  o1.w = (1.0f / r0.x);
  o1.z = r0.x;
}

struct tint_symbol_1 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0, v1);
  return tint_symbol_1(o0, o1);
}
