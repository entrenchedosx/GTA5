diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb5_struct {
  tint_symbol : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  let v_2 = cb12_12.tint_symbol[4u].xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = v0.xy;
  let v_6 = max(v_5, vec2<f32>(-2147483648.0f));
  let v_7 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_6), vec2<i32>(2147483647i), (v_6 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_5 == v_5))));
  r2 = vec4<f32>(v_7.xy, r2.zw);
  let v_8 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r2.xy) + bitcast<vec2<i32>>(r1.xy)));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r0 = textureLoad(t4, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
  r0.x = (r0.x * 0.15000000596046447754f);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r3 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
  r0.x = fma(r3.x, 0.18000000715255737305f, r0.x);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  let v_9 = bitcast<vec2<f32>>(-(bitcast<vec2<i32>>(r1.xy)));
  r3 = vec4<f32>(v_9.xy, r3.zw);
  r3 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2.xyww) + bitcast<vec4<i32>>(r3)));
  r3 = textureLoad(t4, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w));
  r0.x = fma(r3.x, 0.15000000596046447754f, r0.x);
  let v_10 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xy) << vec2<u32>(1u)));
  r3 = vec4<f32>(v_10.xy, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r4 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2.xyww) + bitcast<vec4<i32>>(r3.xyww)));
  let v_11 = -(bitcast<vec4<i32>>(r3));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2.xyww) + v_11));
  r3 = textureLoad(t4, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w));
  r4 = textureLoad(t4, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w));
  r0.x = fma(r4.x, 0.11999999731779098511f, r0.x);
  r0.x = fma(r3.x, 0.11999999731779098511f, r0.x);
  let v_12 = bitcast<vec2<f32>>((vec2<i32>(3i) * bitcast<vec2<i32>>(r1.xy)));
  r3 = vec4<f32>(v_12.xy, r3.zw);
  let v_13 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xy) << vec2<u32>(2u)));
  r1 = vec4<f32>(v_13.xy, r1.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r4 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2.xyww) + bitcast<vec4<i32>>(r3.xyww)));
  let v_14 = -(bitcast<vec4<i32>>(r3));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2.xyww) + v_14));
  r3 = textureLoad(t4, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w));
  r4 = textureLoad(t4, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w));
  r0.x = fma(r4.x, 0.09000000357627868652f, r0.x);
  r0.x = fma(r3.x, 0.09000000357627868652f, r0.x);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r3 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2.xyww) + bitcast<vec4<i32>>(r1.xyww)));
  let v_15 = -(bitcast<vec4<i32>>(r1));
  r1 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2) + v_15));
  r1 = textureLoad(t4, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
  r2 = textureLoad(t4, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w));
  r0.x = fma(r2.x, 0.05000000074505805969f, r0.x);
  o0 = fma(r1.xxxx, vec4<f32>(0.05000000074505805969f), r0.xxxx);
}

@fragment
fn main(@builtin(position) v_16 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_16);
  return o0;
}
