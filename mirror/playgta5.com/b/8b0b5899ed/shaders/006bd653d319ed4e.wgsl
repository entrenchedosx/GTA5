diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb25_struct {
  tint_symbol : array<vec4<f32>, 25u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb25_struct;

@group(0u) @binding(16u) var s0 : sampler;

@group(0u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>) {
  r0 = textureSampleLevel(t0, s0, v1.zwzz.xy, 0.0f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= cb5_5.tint_symbol[24u].x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.0f)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r1.x = fma(v1.x, v0.z, v0.x);
  r1.y = fma((-(v1.yyyy)).y, v0.w, v0.y);
  let v = (r1.xy + vec2<f32>(-0.5f, 0.5f));
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  let v_2 = (r0.yz + r0.yz);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = fma(r1.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(1.0f));
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  o1 = ((r0.yz * vec2<f32>(0.5f))).xyxy;
  r1 = vec4<f32>(r1.xy, vec2<f32>(0.0f, 1.0f));
  o0 = (r0.xxxx * r1);
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
