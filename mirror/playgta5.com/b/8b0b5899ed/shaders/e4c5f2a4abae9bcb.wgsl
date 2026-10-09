diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb5_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb5_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0.x = max(cb11_11.tint_symbol_4[4u].w, 0.00100000004749745131f);
  r1 = textureSample(t3, s3, v1.xy.xyxx.xy);
  let v = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  let v_2 = (r0.xx * r0.yz);
  r0 = vec4<f32>(v_2.x, r0.yz, v_2.y);
  r0.y = dot(r0.yz, r0.yz);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.y = sqrt(abs(r0.yyyy).y);
  let v_3 = (r0.www * v6.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(r0.xxx, v5.xyz, r1.xyz);
  r0 = vec4<f32>(v_4.x, r0.y, v_4.yz);
  let v_5 = fma(r0.yyy, v2.xyz, r0.xzw);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  r1.x = fma(r0.z, r0.w, -0.34999999403953552246f);
  let v_6 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_7.xyz, o1.w);
  r0.x = clamp(((r1.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  let v_8 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  r0.x = (r0.y * r0.x);
  r1 = textureSample(t4, s4, v1.xy.xyxx.xy);
  let v_10 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_10.xy, r1.zw);
  r0.y = (r1.w * cb11_11.tint_symbol_4[3u].y);
  r2.y = (r0.y * 0.001953125f);
  r0.y = dot(r1.xyz, cb11_11.tint_symbol_4[4u].xyz);
  r0.y = (r0.y * cb11_11.tint_symbol_4[3u].z);
  r0.y = (r0.y * v3.x);
  r0.y = (r0.y * v2.w);
  r2.x = (r0.y * cb11_11.tint_symbol_4[2u].z);
  r0.y = clamp(fma(r0.yyyy, cb11_11.tint_symbol_4[2u].zzzz, vec4<f32>(0.40000000596046447754f)).y, 0.0f, 1.0f);
  let v_11 = -(r2.xyxx);
  let v_12 = fma(r0.yy, vec2<f32>(0.5f, 0.48828125f), v_11.xy);
  r1 = vec4<f32>(v_12.xy, r1.zw);
  r0.y = fma((-(r2.xxxx)).y, 0.5f, 1.0f);
  r0.y = (r0.y * r0.x);
  r0.y = fma(r0.y, -0.5f, 1.0f);
  r3 = textureSample(t0, s0, v1.xy.xyxx.xy);
  let v_13 = (r3.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  r3 = (r3 * v3.xxxw);
  let v_14 = (r0.yyy * r3.xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  r4.w = (r3.w * cb2_2.tint_symbol[15u].x);
  r0.y = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_15 = bitcast<vec4<u32>>(r0.yyyy);
  o0 = select(r4, v3, (v_15 != vec4<u32>()));
  o1.w = 0.0f;
  r1.z = 0.0f;
  let v_16 = max(r1.xyz, vec3<f32>());
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r2.z = cb11_11.tint_symbol_4[3u].x;
  let v_17 = fma(r1.xyz, r0.xxx, r2.xyz);
  r0 = vec4<f32>(v_17.xy, r0.z, v_17.z);
  let v_18 = sqrt(r0.xy);
  o2 = vec4<f32>(v_18.xy, o2.zw);
  o2.z = r0.w;
  o2.w = 1.0f;
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r0.z);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_19 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_19.xy, r0.zw);
  let v_20 = sqrt(r0.xy);
  o3 = vec4<f32>(v_20.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

struct tint_symbol_5 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3);
}
