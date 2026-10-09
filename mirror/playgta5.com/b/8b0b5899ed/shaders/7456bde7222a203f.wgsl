diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb31_struct {
  tint_symbol_1 : array<vec4<f32>, 31u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb31_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<u32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w)));
  r0.x = f32(bitcast<u32>(r0.y));
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.xx >= vec2<f32>(3.0f, 23.0f))));
  let v_5 = r0;
  r0 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.xx < vec2<f32>(4.0f, 24.0f))));
  r0 = vec4<f32>(v_6.x, r0.yz, v_6.y);
  let v_7 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xw) & bitcast<vec2<u32>>(r0.yz)));
  r0 = vec4<f32>(v_7.xy, r0.zw);
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r0.x)));
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_8 = fma(r1.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(r0.x, v_8.xyz);
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = inverseSqrt(r0.y);
  r0.y = (r0.y * r0.w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < 0.97000002861022949219f)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r0.x)));
  r1 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.y = (cb5_5.tint_symbol_1[0u].w + 1.0f);
  r0.y = ((-(r1.xxxx)).y + r0.y);
  r0.y = (cb5_5.tint_symbol_1[0u].z / r0.y);
  r0.z = (cb5_5.tint_symbol_1[30u].y + cb5_5.tint_symbol_1[30u].x);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.y < r0.z)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[30u].x < r0.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  let v_9 = bitcast<vec4<u32>>(r0.xxxx);
  o0 = select(r0.yyyy, vec4<f32>(), (v_9 != vec4<u32>()));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
