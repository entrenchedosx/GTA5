diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : f32;

var<private> o1 : vec4<f32>;

var<private> o2 : f32;

var<private> o3 : f32;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = fma(v0.xy, vec2<f32>(2.0f), vec2<f32>(-0.5f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = r0.xy;
  let v_4 = max(v_3, vec2<f32>(-2147483648.0f));
  let v_5 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_4), vec2<i32>(2147483647i), (v_4 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_3 == v_3))));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1 = textureLoad(t6, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  o0 = ((-(r1.xxxx)).x + 1.0f);
  o1 = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
  r1 = textureLoad(t10, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
  r0 = textureLoad(t11, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
  o3 = r0.x;
  o2 = r1.x;
}

struct tint_symbol {
  @location(0u)
  o0 : f32,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : f32,
  @location(3u)
  o3 : f32,
}

@fragment
fn main(@builtin(position) v_6 : vec4<f32>) -> tint_symbol {
  main_inner(v_6);
  return tint_symbol(o0, o1, o2, o3);
}
