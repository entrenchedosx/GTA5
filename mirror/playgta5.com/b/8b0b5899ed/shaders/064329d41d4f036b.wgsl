diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb4_struct;

struct cb6_struct {
  tint_symbol_2 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v4 : u32) {
  let v = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v4)).x;
  r0.y = (cb11_11.tint_symbol_2[3u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb11_11.tint_symbol_2[2u].w / r0.x);
  let v_4 = fma(v2.xyz, r0.xxx, cb11_11.tint_symbol_2[3u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r1.x = (-(cb11_11.tint_symbol_2[5u].wwww)).x;
  let v_5 = r1;
  r1 = vec4<f32>(v_5.x, 0.0f, v_5.z, 0.5f);
  let v_6 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r1.xy);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).z, 0.0f, 1.0f);
  r0.z = sqrt(r0.z);
  r0.z = (r0.z * cb6_6.tint_symbol_1[3u].z);
  r1.z = textureSample(t5, s5, r0.xyxx.xy).y;
  r0.x = textureSample(t6, s6, r1.zwzz.xy).x;
  let v_7 = -(r0.xxxx);
  o0 = fma(r0.zzzz, v_7, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) @interpolate(perspective, sample) v2 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v4);
  return o0;
}
