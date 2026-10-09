diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb25_struct {
  tint_symbol_1 : array<vec4<f32>, 25u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb25_struct;

@group(1u) @binding(34u) var t2 : texture_multisampled_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<u32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : u32) {
  let v = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.z = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).y);
  r0.z = f32(bitcast<u32>(r0.z));
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.zz >= vec2<f32>(3.0f, 23.0f))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.zz < vec2<f32>(4.0f, 24.0f))));
  r1 = vec4<f32>(r1.xy, v_5.xy);
  let v_6 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.zw) & bitcast<vec2<u32>>(r1.xy)));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r0.z = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.x)));
  let v_7 = textureLoad(t2, bitcast<vec2<i32>>(r0.xy), 0i).xyz;
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r0.x = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), 0i).x;
  let v_8 = fma(r1.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = inverseSqrt(r0.y);
  r0.y = (r0.y * r1.z);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < 0.97000002861022949219f)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r0.z)));
  r0.z = (cb5_5.tint_symbol_1[0u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.z);
  r0.x = (cb5_5.tint_symbol_1[0u].z / r0.x);
  r0.z = (cb5_5.tint_symbol_1[24u].y + cb5_5.tint_symbol_1[24u].x);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.x < r0.z)));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[24u].x < r0.x)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.x)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  let v_9 = bitcast<vec4<u32>>(r0.yyyy);
  o0 = select(r0.xxxx, vec4<f32>(), (v_9 != vec4<u32>()));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
