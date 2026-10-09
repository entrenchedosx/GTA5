diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb10_struct {
  tint_symbol_1 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb10_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_1[9u].x == 0.0f)));
  r1 = fma(v1, cb11_11.tint_symbol_1[8u], cb11_11.tint_symbol_1[7u]);
  r0.y = (r1.w * v2.w);
  let v = (r0.yyy * r1.xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  let v_1 = (r0.yy * cb2_2.tint_symbol[15u].wx);
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  let v_3 = bitcast<vec3<u32>>(r0.xxx);
  let v_4 = r1.xyz;
  let v_5 = select(r2.xyz, v_4, (v_3 != vec3<u32>()));
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((cb2_2.tint_symbol[15u].w == 1.0f))));
  r0.y = (r0.y * r0.y);
  o0.w = clamp(r0.zzzz.w, 0.0f, 1.0f);
  let v_6 = bitcast<u32>(r0.x);
  let v_7 = r0.y;
  o0.z = select(r1.z, v_7, (v_6 != 0u));
  let v_8 = r1;
  o0 = vec4<f32>(v_8.xy, o0.zw);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
