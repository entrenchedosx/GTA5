diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = max(v0.xy, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r0.xy), 0i).y);
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 32u));
  o0 = select(vec4<f32>(), vec4<f32>(1.0f), (bitcast<vec4<u32>>(r0.xxxx) != vec4<u32>()));
}

@fragment
fn main(@builtin(position) v_4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_4);
  return o0;
}
