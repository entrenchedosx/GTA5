diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb9_struct {
  tint_symbol : array<vec4<f32>, 9u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb9_struct;

@group(1u) @binding(38u) var t6 : texture_2d<u32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  let v = (v2.xy * cb5_5.tint_symbol[8u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0 = bitcast<vec4<f32>>(textureLoad(t6, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w)));
  r0.x = f32(bitcast<u32>(r0.y));
  o0 = (r0.xxxx * cb5_5.tint_symbol[2u]);
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
