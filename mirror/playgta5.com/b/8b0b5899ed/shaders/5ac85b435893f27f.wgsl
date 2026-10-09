diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  let v_2 = v0.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xy) + vec2<i32>(-1i, 1i)));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0.x = textureLoad(t6, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w)).x;
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  let v_6 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xy) + vec2<i32>(0i, 1i)));
  r2 = vec4<f32>(v_6.xy, r2.zw);
  r0.y = textureLoad(t6, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).x;
  r0.x = (r0.y + r0.x);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  let v_7 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xy) + vec2<i32>(1i)));
  r2 = vec4<f32>(v_7.xy, r2.zw);
  r0.y = textureLoad(t6, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).x;
  r0.x = (r0.y + r0.x);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  let v_8 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xy) + vec2<i32>(-1i, 0i)));
  r2 = vec4<f32>(v_8.xy, r2.zw);
  r0.y = textureLoad(t6, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).x;
  r0.x = (r0.y + r0.x);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.y = textureLoad(t6, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).x;
  r0.x = (r0.y + r0.x);
  r2 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r1.xyww) + vec4<i32>(1i, 0i, 0i, 0i)));
  r0.y = textureLoad(t6, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).x;
  r0.x = (r0.y + r0.x);
  r2 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r1.xyww) + vec4<i32>(-1i, -1i, 0i, 0i)));
  r0.y = textureLoad(t6, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).x;
  r0.x = (r0.y + r0.x);
  r2 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r1.xyww) + vec4<i32>(0i, -1i, 0i, 0i)));
  r1 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r1) + vec4<i32>(1i, -1i, 0i, 0i)));
  r0.y = textureLoad(t6, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).x;
  r0.z = textureLoad(t6, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).x;
  r0.x = (r0.z + r0.x);
  r0.x = (r0.y + r0.x);
  o0 = (r0.xxxx * vec4<f32>(0.11111111193895339966f));
}

@fragment
fn main(@builtin(position) v_9 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_9);
  return o0;
}
