diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb20_struct {
  tint_symbol : array<vec4<f32>, 20u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb20_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> o0 : vec4<f32>;

struct tint_symbol_2 {
  tint_symbol_1 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_2;

fn main_inner(v1 : vec4<f32>, v2 : u32) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (4u < bitcast<u32>(cb2_2.tint_symbol[19u].x))));
  r0.y = bitcast<f32>((bitcast<u32>(cb2_2.tint_symbol[19u].x) >> 2u));
  let v_1 = bitcast<u32>(r0.x);
  let v_2 = r0.y;
  r0.x = select(bitcast<f32>(v.tint_symbol_1[0i].x), v_2, (v_1 != 0u));
  let v_3 = bitcast<vec4<u32>>(r0.xxxx);
  r0.x = bitcast<f32>(select(4294967295u, ((vec4<u32>(v2, v2, v2, v2) / select(vec4<u32>(1u), v_3, (v_3 != vec4<u32>())))).x, (v_3.x != 0u)));
  r0.y = textureSampleLevel(t6, s6, v1.xy.xyxx.xy, 0.0f).x;
  let v_4 = dot(r0.yyyy, icb0[bitcast<i32>(r0.x)]);
  o0 = vec4<f32>(v_4, v_4, v_4, v_4);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
