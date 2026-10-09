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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t2, s2, v3.xyxx.xy);
  r1 = textureSample(t3, s3, v3.zwzz.xy);
  let v = -(r1);
  r0 = (r0 + v);
  r0 = fma(v2.zzzz, r0, r1);
  r0 = fma(r0, cb11_11.tint_symbol_1[8u], cb11_11.tint_symbol_1[7u]);
  r0.w = (r0.w * v2.w);
  let v_1 = (r0.www * r0.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = (r0.ww * cb2_2.tint_symbol[15u].wx);
  r2 = vec4<f32>(v_2.xy, r2.zw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_1[9u].x == 0.0f)));
  let v_3 = bitcast<vec3<u32>>(r0.www);
  let v_4 = r0.xyz;
  let v_5 = select(r1.xyz, v_4, (v_3 != vec3<u32>()));
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((cb2_2.tint_symbol[15u].w == 1.0f))));
  r1.x = (r2.x * r2.x);
  o0.w = clamp(r2.yyyy.w, 0.0f, 1.0f);
  let v_6 = bitcast<u32>(r0.w);
  let v_7 = r1.x;
  o0.z = select(r0.z, v_7, (v_6 != 0u));
  let v_8 = r0;
  o0 = vec4<f32>(v_8.xy, o0.zw);
}

@fragment
fn main(@location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2, v3);
  return o0;
}
