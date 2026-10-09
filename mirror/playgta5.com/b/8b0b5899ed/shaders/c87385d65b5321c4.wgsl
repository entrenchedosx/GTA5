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

fn main_inner() {
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((cb2_2.tint_symbol[15u].w == 1.0f))));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_1[9u].x == 0.0f)));
  r1 = fma(cb11_11.tint_symbol_1[6u], cb11_11.tint_symbol_1[8u], cb11_11.tint_symbol_1[7u]);
  let v = (r1.www * r1.xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  let v_1 = bitcast<vec3<u32>>(r0.yyy);
  let v_2 = r1.xyz;
  let v_3 = select(r2.xyz, v_2, (v_1 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = (r1.ww * cb2_2.tint_symbol[15u].wx);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1.x = (r1.x * r1.x);
  o0.w = clamp(r1.yyyy.w, 0.0f, 1.0f);
  let v_5 = bitcast<u32>(r0.x);
  let v_6 = r1.x;
  o0.z = select(r0.w, v_6, (v_5 != 0u));
  let v_7 = r0;
  o0 = vec4<f32>(v_7.yz, o0.zw);
}

@fragment
fn main() -> @location(0u) vec4<f32> {
  main_inner();
  return o0;
}
