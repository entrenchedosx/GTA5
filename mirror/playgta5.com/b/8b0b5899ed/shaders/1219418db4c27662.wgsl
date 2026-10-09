diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (cb2_2.tint_symbol[18u].zw + cb2_2.tint_symbol[18u].zw);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  let v_2 = -(r0.zwzz);
  let v_3 = fma(r0.xy, vec2<f32>(0.5f), v_2.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = r0.xy;
  let v_5 = max(v_4, vec2<f32>(-2147483648.0f));
  let v_6 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_5), vec2<i32>(2147483647i), (v_5 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_4 == v_4))));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r0.xy) + vec2<i32>(1i)));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1 = textureLoad(t13, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r2 = textureLoad(t13, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + vec4<i32>(0i, 1i, 1i, 0i)));
  r2.x = r2.y;
  let v_8 = r0;
  r3 = vec4<f32>(v_8.zw, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r3 = textureLoad(t13, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w));
  r2.y = r3.y;
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0 = textureLoad(t13, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
  r1.x = r0.y;
  let v_9 = (r1.xy * r2.xy);
  r0 = vec4<f32>(v_9.xy, r0.zw);
  r0.x = (r0.y * r0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  o0 = select(vec4<f32>(1.0f), vec4<f32>(), (bitcast<vec4<u32>>(r0.xxxx) != vec4<u32>()));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
