diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb21_struct {
  tint_symbol : array<vec4<f32>, 21u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb21_struct;

@group(0u) @binding(21u) var s5 : sampler;

@group(0u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>) {
  r0.x = fma(v1.x, v0.z, v0.x);
  r0.y = fma((-(v1.yyyy)).y, v0.w, v0.y);
  let v = (r0.xy + vec2<f32>(-0.5f, 0.5f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy + r0.xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r1 = textureSampleLevel(t5, s5, v1.zwzz.xy, 0.0f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.z >= 0.0f)));
  let v_2 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.zw == vec2<f32>())));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.xy) & vec2<u32>(1065353216u)));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  let v_4 = (r0.ww * r0.xy);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  let v_5 = (r0.ww * vec2<f32>(0.0f, 1.0f));
  r2 = vec4<f32>(r2.xy, v_5.xy);
  r2 = (r1.xxxx * r2);
  o0 = (r1.yyyy * r2);
  let v_6 = fma(r0.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = (r1.xy * vec2<f32>(0.5f));
  o1 = vec4<f32>(v_7.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, vec2<f32>(0.0f, 1.0f));
  r0.z = 1.0f;
  o2.x = dot(r0.xyz, cb11_11.tint_symbol[18u].xyz);
  o2.y = dot(r0.xyz, cb11_11.tint_symbol[19u].xyz);
  o2.z = dot(r0.xyz, cb11_11.tint_symbol[20u].xyz);
  o2.w = 1.0f;
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0, v1);
  return tint_symbol_1(o0, o1, o2);
}
