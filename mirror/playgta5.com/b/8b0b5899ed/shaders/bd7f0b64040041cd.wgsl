diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb57_struct {
  tint_symbol_1 : array<vec4<f32>, 57u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb57_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<u32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w)));
  r0.x = f32(bitcast<u32>(r0.y));
  r0.x = (r0.x * 0.0039215688593685627f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[56u].x < r0.x)));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t5, s5, v1.xy.xyxx.xy);
  let v_4 = (r0.xyz * cb2_2.tint_symbol[17u].www);
  o0 = vec4<f32>(v_4.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
