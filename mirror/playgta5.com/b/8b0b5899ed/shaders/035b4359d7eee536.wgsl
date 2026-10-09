diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb8_struct {
  tint_symbol : array<vec4<f32>, 8u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb8_struct;

@group(1u) @binding(32u) var t0 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  let v = (v2.xy * cb5_5.tint_symbol[7u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = cb5_5.tint_symbol[3u].x;
  let v_5 = max(v_4, -2147483648.0f);
  r1.x = bitcast<f32>(select(select(i32(v_5), 2147483647i, (v_5 >= 2147483648.0f)), 0i, !((v_4 == v_4))));
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  let v_6 = textureLoad(t0, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r1.x)).xyz;
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r0.xyz * cb5_5.tint_symbol[2u].xyz);
  o0 = vec4<f32>(v_8.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
