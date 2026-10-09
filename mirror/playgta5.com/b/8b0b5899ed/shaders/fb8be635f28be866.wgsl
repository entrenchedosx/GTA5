diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb6_struct {
  tint_symbol : array<vec4<f32>, 6u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb6_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  r0.x = (cb5_5.tint_symbol[5u].z * 0.015625f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (v2.y >= r0.x)));
  r0.y = fma(cb5_5.tint_symbol[5u].z, 0.015625f, 0.015625f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (v2.y < r0.y)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  let v = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (v2.xy.xxx < vec3<f32>(0.25f, 0.5f, 0.75f))));
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = bitcast<vec4<u32>>(r0.wwww);
  let v_2 = cb5_5.tint_symbol[3u];
  r1 = select(cb5_5.tint_symbol[4u], v_2, (v_1 != vec4<u32>()));
  let v_3 = bitcast<vec4<u32>>(r0.zzzz);
  let v_4 = cb5_5.tint_symbol[2u];
  r1 = select(r1, v_4, (v_3 != vec4<u32>()));
  let v_5 = bitcast<vec4<u32>>(r0.yyyy);
  let v_6 = cb5_5.tint_symbol[1u];
  r1 = select(r1, v_6, (v_5 != vec4<u32>()));
  o0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0.xxxx) & bitcast<vec4<u32>>(r1)));
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
