diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb3_struct {
  tint_symbol_1 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb3_struct;

@group(0u) @binding(21u) var s5 : sampler;

@group(0u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec4<f32>) {
  r0 = textureSampleLevel(t5, s5, v0.zwzz.xy, 0.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x < cb5_5.tint_symbol_1[2u].x)));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= cb5_5.tint_symbol_1[2u].x)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.0f)));
  r0.w = select(0.0f, -1.0f, (bitcast<u32>(r0.x) != 0u));
  let v = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.xyz) & vec3<u32>(1065353216u)));
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.y = (r0.w + r0.y);
  r0.x = fma(cb5_5.tint_symbol_1[2u].w, r0.y, r0.x);
  let v_1 = fma(v0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>(1.0f));
  r1 = (r0.xxxx * r1);
  o0 = (r0.zzzz * r1);
  o1 = fma(v0.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f)).xyxy;
  let v_2 = fma(v0.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = fma((-(cb2_2.tint_symbol[18u].zwzz)).xy, vec2<f32>(0.5f), r0.xy);
  o2 = vec4<f32>(v_3.xy, o2.zw);
  let v_4 = fma(cb2_2.tint_symbol[18u].zw, vec2<f32>(0.5f), r0.xy);
  o2 = vec4<f32>(o2.xy, v_4.xy);
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0);
  return tint_symbol_2(o0, o1, o2);
}
