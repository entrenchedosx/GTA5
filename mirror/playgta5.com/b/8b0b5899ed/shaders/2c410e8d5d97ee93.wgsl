diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb10_struct {
  tint_symbol_1 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb10_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_1[9u].x == 0.0f)));
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r1 = fma(r1, cb11_11.tint_symbol_1[8u], cb11_11.tint_symbol_1[7u]);
  let v = (r1.www * r1.xyz);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = bitcast<vec3<u32>>(r0.xxx);
  let v_2 = r1.xyz;
  let v_3 = select(r0.yzw, v_2, (v_1 != vec3<u32>()));
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (r1.ww * cb2_2.tint_symbol[15u].wx);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((cb2_2.tint_symbol[15u].w == 1.0f))));
  r1.x = (r1.x * r1.x);
  o0.w = clamp(r1.yyyy.w, 0.0f, 1.0f);
  let v_5 = bitcast<u32>(r0.w);
  let v_6 = r1.x;
  o0.z = select(r0.z, v_6, (v_5 != 0u));
  let v_7 = r0;
  o0 = vec4<f32>(v_7.xy, o0.zw);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
