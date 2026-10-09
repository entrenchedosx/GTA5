diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb25_struct {
  tint_symbol_1 : array<vec4<f32>, 25u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb25_struct;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r0.y = (cb5_5.tint_symbol_1[0u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb5_5.tint_symbol_1[0u].z / r0.x);
  r0.y = fma(cb5_5.tint_symbol_1[24u].y, 0.5f, cb5_5.tint_symbol_1[24u].x);
  r0.x = ((-(r0.yyyy)).x + r0.x);
  r0.y = (cb5_5.tint_symbol_1[24u].y * 0.5f);
  r0.x = (r0.x / r0.y);
  r0.x = min(abs(r0.xxxx).x, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = ((-(cb5_5.tint_symbol_1[24u].zzzz)).y + cb5_5.tint_symbol_1[24u].w);
  o0 = fma(r0.xxxx, r0.yyyy, cb5_5.tint_symbol_1[24u].zzzz);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
