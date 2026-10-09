diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb1_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<u32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.y = (cb5_5.tint_symbol_1[0u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb5_5.tint_symbol_1[0u].z / r0.x);
  r1 = textureSample(t10, s10, v1.xy.xyxx.xy).zxyw;
  r0.y = fma(r1.y, 256.0f, r1.z);
  r0.y = (r0.y * cb2_2.tint_symbol[16u].y);
  let v = -(r0.xxxx);
  r0.y = fma(r0.y, 0.00390625f, v.y);
  r0.y = (r0.y / cb2_2.tint_symbol[16u].z);
  r0.z = clamp(r0.yyyy.z, 0.0f, 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < 0.0f)));
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.w = (r0.z * 0.5f);
  r0.z = fma((-(r0.zzzz)).z, 0.5f, 1.0f);
  r1.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r0.z = fma(r1.y, r0.z, r0.w);
  r1.x = clamp(r1.xxxx.x, 0.0f, 1.0f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < 1.0f)));
  r0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.w) != 0u));
  r0.z = (r0.z * r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.x)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r1.x)));
  r0.z = (r0.w * r0.z);
  r0.w = (r0.z * r0.z);
  r0.w = (r0.z * r0.w);
  let v_1 = bitcast<u32>(r0.y);
  let v_2 = r0.w;
  o0.x = select(r0.z, v_2, (v_1 != 0u));
  let v_3 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  let v_5 = r0.yz;
  let v_6 = max(v_5, vec2<f32>(-2147483648.0f));
  let v_7 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_6), vec2<i32>(2147483647i), (v_6 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_5 == v_5))));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)));
  r0.y = f32(bitcast<u32>(r1.y));
  let v_8 = (r0.yy + vec2<f32>(-7.0f, -16.0f));
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(0.10000000149011611938f) >= abs(r0.yyzy).yz)));
  let v_11 = r0;
  r0 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r0.y)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (1000.0f < r0.x)));
  o0.z = clamp(((r0.xxxx / cb2_2.tint_symbol[16u].yyyy)).z, 0.0f, 1.0f);
  r0.x = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r0.y)));
  r1 = textureSample(t4, s4, v1.xy.xyxx.xy);
  r0.y = clamp(((r1.xxxx + vec4<f32>(0.05000000074505805969f))).y, 0.0f, 1.0f);
  let v_12 = bitcast<u32>(r0.x);
  o0.y = select(r0.y, 1.0f, (v_12 != 0u));
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
