diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(32u) var t0 : texture_multisampled_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> oDepth : f32;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = v0.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t0, bitcast<vec2<i32>>(r0.xy), 0i).x;
  oDepth = r0.x;
}

@fragment
fn main(@builtin(position) v_5 : vec4<f32>) -> @builtin(frag_depth) f32 {
  main_inner(v_5);
  return oDepth;
}
