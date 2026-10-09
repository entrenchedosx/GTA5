diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb3_struct {
  tint_symbol_2 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb3_struct;

struct cb18_struct {
  tint_symbol_3 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  let v_4 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), 0i).xyz;
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + cb12_12.tint_symbol_3[17u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb12_12.tint_symbol_3[17u].z / r0.x);
  let v_5 = fma(r1.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(r0.x, v_5.xyz);
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = inverseSqrt(r1.x);
  let v_6 = (r0.yzw * r1.xxx);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  r0.y = dot(cb12_12.tint_symbol_3[1u].xyz, r0.yzw);
  r0.y = clamp((-(r0.yyyy)).y, 0.0f, 1.0f);
  r1 = vec4<f32>(((v2.xyz / v2.www)).xyz, r1.w);
  let v_7 = fma(r1.xyz, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_7.x, r0.y, v_7.yz);
  let v_8 = ((-(r0.xxzw)).xzw + cb12_12.tint_symbol_3[0u].xyz);
  r0 = vec4<f32>(v_8.x, r0.y, v_8.yz);
  r1.x = dot((-(cb12_12.tint_symbol_3[1u].xyzx)).xyz, r0.xzw);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  let v_9 = -(cb12_12.tint_symbol_3[5u].zzzz);
  r1.x = (r1.x + v_9.x);
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & 1065353216u));
  r0.y = (r0.y * r1.y);
  r0.y = (r0.y * r0.y);
  let v_10 = (cb12_12.tint_symbol_3[1u].zxy * cb12_12.tint_symbol_3[2u].yzx);
  r1 = vec4<f32>(r1.x, v_10.xyz);
  let v_11 = -(r1.yyzw);
  let v_12 = fma(cb12_12.tint_symbol_3[1u].yzx, cb12_12.tint_symbol_3[2u].zxy, v_11.yzw);
  r1 = vec4<f32>(r1.x, v_12.xyz);
  r1.y = dot(r1.yzw, r0.xzw);
  r0.x = dot(cb12_12.tint_symbol_3[2u].xyz, r0.xzw);
  r2.y = (r0.x / cb12_12.tint_symbol_3[5u].y);
  r2.x = (r1.y / cb12_12.tint_symbol_3[5u].x);
  let v_13 = clamp(fma(r2.xxyx, vec4<f32>(0.5f, 0.0f, 0.5f, 0.0f), vec4<f32>(0.5f, 0.0f, 0.5f, 0.0f)).xz, vec2<f32>(), vec2<f32>(1.0f));
  let v_14 = r0;
  r0 = vec4<f32>(v_13.x, v_14.y, v_13.y, v_14.w);
  r0.x = textureSampleLevel(t2, s2, r0.xzxx.xy, 0.0f).x;
  r0.x = (r0.y * r0.x);
  r0.y = (cb12_12.tint_symbol_3[5u].z + cb12_12.tint_symbol_3[5u].z);
  r0.y = (r1.x / r0.y);
  r0.y = clamp(((-(r0.yyyy) + vec4<f32>(1.0f))).y, 0.0f, 1.0f);
  r0.y = (r0.y * r0.y);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol_3[3u].w);
  r0.x = (r0.x * cb5_5.tint_symbol_2[2u].z);
  o0.w = (r0.x * cb12_12.tint_symbol_3[3u].x);
  o0 = vec4<f32>(vec3<f32>(), o0.w);
  o1 = vec4<f32>();
  o2 = vec4<f32>();
  r0.y = ((-(cb12_12.tint_symbol_3[3u].xxxx)).y + 1.0f);
  o3.w = (r0.y * r0.x);
  o3 = vec4<f32>(vec3<f32>(), o3.w);
}

struct tint_symbol_4 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2);
  return tint_symbol_4(o0, o1, o2, o3);
}
