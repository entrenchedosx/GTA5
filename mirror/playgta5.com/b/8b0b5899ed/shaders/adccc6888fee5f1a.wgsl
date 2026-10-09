diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  r0.x = (cb5_5.tint_symbol[3u].w + 1.0f);
  r1 = textureSample(t6, s6, v2.xy.xyxx.xy);
  let v = -(r1.xxxx);
  r0.x = (r0.x + v.x);
  r0.x = (cb5_5.tint_symbol[3u].z / r0.x);
  let v_1 = -(cb5_5.tint_symbol[3u].xxxx);
  r0.x = (r0.x + v_1.x);
  r0.y = (v_1.y + cb5_5.tint_symbol[3u].y);
  r0.x = (r0.x / r0.y);
  let v_2 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), !((cb5_5.tint_symbol[3u].zw == vec2<f32>()))));
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r0.y)));
  let v_4 = bitcast<u32>(r0.y);
  let v_5 = r0.x;
  r0.x = select(r1.x, v_5, (v_4 != 0u));
  o0 = (r0.xxxx * cb5_5.tint_symbol[2u]);
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
