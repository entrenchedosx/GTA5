diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb5_struct {
  tint_symbol : array<vec4<f32>, 5u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

@group(0u) @binding(16u) var s0 : sampler;

@group(0u) @binding(17u) var s1 : sampler;

@group(0u) @binding(32u) var t0 : texture_2d<f32>;

@group(0u) @binding(33u) var t1 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec4<f32>) {
  r0 = textureSampleLevel(t0, s0, v0.zwzz.xy, 0.0f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol[4u].x >= r0.x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= cb5_5.tint_symbol[4u].y)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r0.x)));
  let v = select(vec2<f32>(1.0f, 0.0f), vec2<f32>(0.0f, -1.0f), (bitcast<vec2<u32>>(r0.xx) != vec2<u32>()));
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r0.y = (r0.z + r0.y);
  r0.x = fma(cb5_5.tint_symbol[4u].w, r0.y, r0.x);
  let v_2 = fma(v0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>(1.0f));
  o0 = (r0.xxxx * r1);
  let v_3 = fma(v0.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  o1 = vec4<f32>(v_3.xy, o1.zw);
  r0 = textureSampleLevel(t1, s1, vec2<f32>(), 0.0f);
  o1.w = (1.0f / r0.x);
  o1.z = r0.x;
  o2 = vec4<f32>();
}

struct tint_symbol_1 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0);
  return tint_symbol_1(o0, o1, o2);
}
