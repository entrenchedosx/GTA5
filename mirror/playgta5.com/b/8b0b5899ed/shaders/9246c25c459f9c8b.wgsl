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
  r0 = textureSampleLevel(t5, s5, v1.zwzz.xy, 0.0f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.z == 0.0f)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.0f)));
  let v = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1065353216u)));
  r0 = vec4<f32>(v.xy, r0.zw);
  r1.x = fma(v1.x, v0.z, v0.x);
  r1.y = fma((-(v1.yyyy)).y, v0.w, v0.y);
  let v_1 = (r1.xy + vec2<f32>(-0.5f, 0.5f));
  r0 = vec4<f32>(r0.xy, v_1.xy);
  let v_2 = (r0.zw + r0.zw);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = (r0.yy * r1.xy);
  r2 = vec4<f32>(v_3.xy, r2.zw);
  let v_4 = (r0.yy * vec2<f32>(0.0f, 1.0f));
  r2 = vec4<f32>(r2.xy, v_4.xy);
  o0 = (r0.xxxx * r2);
  let v_5 = fma(r1.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = (r0.xy * vec2<f32>(0.5f));
  o1 = vec4<f32>(v_6.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, vec2<f32>(0.0f, 1.0f));
  r1.z = 1.0f;
  o2.x = dot(r1.xyz, cb11_11.tint_symbol[18u].xyz);
  o2.y = dot(r1.xyz, cb11_11.tint_symbol[19u].xyz);
  o2.z = dot(r1.xyz, cb11_11.tint_symbol[20u].xyz);
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
