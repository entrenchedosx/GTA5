diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb18_struct {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb18_struct;

struct cb9_struct {
  tint_symbol_3 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb9_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : u32) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy * cb10_10.tint_symbol_2[16u].zw);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = r0.xy;
  let v_5 = max(v_4, vec2<f32>(-2147483648.0f));
  let v_6 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_5), vec2<i32>(2147483647i), (v_5 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_4 == v_4))));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.z = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).y);
  r0.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).x;
  r0.y = f32(bitcast<u32>(r0.z));
  r0.z = (r0.y + -4.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f >= r0.y)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f >= abs(r0.zzzz).z)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r0.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r0.z = (cb10_10.tint_symbol_2[17u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.z);
  r0.x = (cb10_10.tint_symbol_2[17u].z / r0.x);
  r1 = vec4<f32>(((v1.xyz / v1.www)).xyz, r1.w);
  let v_7 = fma(r1.xyz, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_7.x, r0.y, v_7.yz);
  let v_8 = -(cb12_12.tint_symbol_3[3u].xyzx);
  let v_9 = (r0.xzw + v_8.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r0.x = dot(cb12_12.tint_symbol_3[1u].xyz, r1.xyz);
  r0.z = dot((-(cb12_12.tint_symbol_3[0u].xyzx)).xyz, r1.xyz);
  r1.y = (r0.z * cb12_12.tint_symbol_3[0u].w);
  r1.x = (r0.x * cb12_12.tint_symbol_3[1u].w);
  let v_10 = fma(r1.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
  let v_11 = r0;
  r0 = vec4<f32>(v_10.x, v_11.y, v_10.y, v_11.w);
  let v_12 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.xz < vec2<f32>())));
  r1 = vec4<f32>(v_12.xy, r1.zw);
  let v_13 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(1.0f) < r0.xz)));
  r1 = vec4<f32>(r1.xy, v_13.xy);
  r1.x = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.x)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.x)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r1.x)));
  let v_14 = bitcast<u32>(r1.x);
  r0.y = select(r0.y, 0.0f, (v_14 != 0u));
  r1.x = (cb12_12.tint_symbol_3[1u].w / cb12_12.tint_symbol_3[0u].w);
  r1.y = (r1.x * cb12_12.tint_symbol_3[4u].x);
  r1.x = cb12_12.tint_symbol_3[4u].x;
  let v_15 = (vec2<f32>(2.0f) / r1.xy);
  r1 = vec4<f32>(r1.xy, v_15.xy);
  let v_16 = (r0.xz * r1.xy);
  r1 = vec4<f32>(v_16.xy, r1.zw);
  r1.x = textureSample(t2, s2, r1.xyxx.xy).x;
  let v_17 = ((-(r1.zwzz)).xy + vec2<f32>(1.0f));
  r2 = vec4<f32>(v_17.xy, r2.zw);
  let v_18 = -(r2.xyxx);
  let v_19 = (r0.xz + v_18.xy);
  r2 = vec4<f32>(v_19.xy, r2.zw);
  let v_20 = clamp(((r2.xyxx / r1.zwzz)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_20.xy, r2.zw);
  let v_21 = ((-(r2.xyxx)).xy + vec2<f32>(1.0f));
  r2 = vec4<f32>(v_21.xy, r2.zw);
  let v_22 = (r0.xz / r1.zw);
  r2 = vec4<f32>(r2.xy, v_22.xy);
  let v_23 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.zw >= r0.xz)));
  let v_24 = r0;
  r0 = vec4<f32>(v_23.x, v_24.y, v_23.y, v_24.w);
  let v_25 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xz) & vec2<u32>(1065353216u)));
  let v_26 = r0;
  r0 = vec4<f32>(v_25.x, v_26.y, v_25.y, v_26.w);
  let v_27 = ((-(r2.xxyx)).yz + r2.zw);
  let v_28 = r1;
  r1 = vec4<f32>(v_28.x, v_27.xy, v_28.w);
  let v_29 = fma(r0.xz, r1.yz, r2.xy);
  let v_30 = r0;
  r0 = vec4<f32>(v_29.x, v_30.y, v_29.y, v_30.w);
  r0.x = (r0.z * r0.x);
  r0.x = (r0.x * r0.y);
  let v_31 = -(cb12_12.tint_symbol_3[5u].xxxx);
  r0.y = (r0.w + v_31.y);
  r0.y = clamp(((r0.yyyy * cb12_12.tint_symbol_3[5u].zzzz)).y, 0.0f, 1.0f);
  r2 = (-(cb12_12.tint_symbol_3[6u]) + cb12_12.tint_symbol_3[7u]);
  r2 = fma(r0.yyyy, r2, cb12_12.tint_symbol_3[6u]);
  let v_32 = -(cb12_12.tint_symbol_3[4u].zzzz);
  r0.y = (r0.w + v_32.y);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.w < cb12_12.tint_symbol_3[4u].z)));
  r0.y = clamp(((r0.yyyy * cb12_12.tint_symbol_3[5u].wwww)).y, 0.0f, 1.0f);
  r3 = (-(cb12_12.tint_symbol_3[7u]) + cb12_12.tint_symbol_3[8u]);
  r3 = fma(r0.yyyy, r3, cb12_12.tint_symbol_3[7u]);
  let v_33 = bitcast<vec4<u32>>(r0.zzzz);
  let v_34 = r2;
  r2 = select(r3, v_34, (v_33 != vec4<u32>()));
  r0.y = (r1.x * r2.w);
  let v_35 = (r2.xyz * cb12_12.tint_symbol_3[4u].yyy);
  r1 = vec4<f32>(v_35.xyz, r1.w);
  let v_36 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_36.xyz, o0.w);
  o0.w = (r0.y * r0.x);
}

@fragment
fn main(@builtin(position) v_37 : vec4<f32>, @location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v_37, v1, v2);
  return o0;
}
