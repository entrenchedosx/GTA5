diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = v0.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r0.xy) >> vec2<u32>(3u)));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0 = textureLoad(t5, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x == 0.0f)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    o0 = vec4<f32>();
    return;
  }
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x == 1.0f)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    o0 = vec4<f32>(1.0f);
    return;
  }
  o0 = vec4<f32>(0.5f);
}

@fragment
fn main(@builtin(position) v_6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_6);
  return o0;
}
