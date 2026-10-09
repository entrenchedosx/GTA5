diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

@group(1u) @binding(32u) var t0 : texture_multisampled_2d<f32>;

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
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t0, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r0.y = (r0.x + cb5_5.tint_symbol[3u].w);
  r0.y = (cb5_5.tint_symbol[3u].z / r0.y);
  let v_5 = -(cb5_5.tint_symbol[3u].xxxx);
  r0.y = (r0.y + v_5.y);
  r0.z = (v_5.z + cb5_5.tint_symbol[3u].y);
  r0.y = (r0.y / r0.z);
  let v_6 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), !((cb5_5.tint_symbol[3u].zw == vec2<f32>()))));
  r0 = vec4<f32>(r0.xy, v_6.xy);
  r0.z = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r0.z)));
  let v_7 = bitcast<u32>(r0.z);
  let v_8 = r0.y;
  r0.x = select(r0.x, v_8, (v_7 != 0u));
  o0 = (r0.xxxx * cb5_5.tint_symbol[2u]);
}

@fragment
fn main(@builtin(position) v_9 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_9);
  return o0;
}
