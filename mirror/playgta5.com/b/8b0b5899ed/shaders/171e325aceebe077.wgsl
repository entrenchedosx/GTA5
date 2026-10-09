diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> oDepth : f32;

fn main_inner(v1 : vec4<f32>, v2 : u32) {
  o0 = vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f);
  let v = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).x;
  oDepth = ((-(r0.xxxx)).x + 1.0f);
}

struct tint_symbol_1 {
  @location(0u)
  o0 : vec4<f32>,
  @builtin(frag_depth)
  oDepth : f32,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> tint_symbol_1 {
  main_inner(v1, v2);
  return tint_symbol_1(o0, oDepth);
}
