diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_cube<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0.x = max(cb12_12.tint_symbol_3[0u].x, 0.00100000004749745131f);
  r1 = textureSample(t2, s2, v2.xy.xyxx.xy);
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
  let v_5 = fma(r0.yyy, v3.xyz, r0.xzw);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_6 = (r0.www * r0.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r0.x = fma(r0.z, r0.w, -0.34999999403953552246f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = dot(v4.xyz, v4.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_7 = (r0.yyy * v4.xyz.xzy);
  r0 = vec4<f32>(r0.x, v_7.xyz);
  r1.w = dot((-(r0.ywzy)).xyz, r1.xyz);
  r1.w = (r1.w + r1.w);
  let v_8 = -(r1.wwww);
  let v_9 = -(r0.yyzw);
  let v_10 = fma(r1.xzy, v_8.yzw, v_9.yzw);
  r0 = vec4<f32>(r0.x, v_10.xyz);
  let v_11 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_11.xyz, o1.w);
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = inverseSqrt(r1.x);
  let v_12 = (r0.yzw * r1.xxx);
  r0 = vec4<f32>(r0.x, v_12.xyz);
  r1 = textureSample(t3, s3, r0.yzwy.xyz);
  r2 = textureSample(t0, s0, v2.xy.xyxx.xy);
  let v_13 = fma(r1.xyz, cb12_12.tint_symbol_3[0u].yyy, r2.xyz);
  r0 = vec4<f32>(r0.x, v_13.xyz);
  r1.x = (r2.w * v1.w);
  o0.w = (r1.x * cb2_2.tint_symbol[15u].x);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.x = (r0.x * r1.x);
  let v_14 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_15 = r1;
  r1 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  r0.x = (r0.x * r1.y);
  r1.y = fma(r0.x, -0.5f, 1.0f);
  let v_16 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r2 = vec4<f32>(v_16.xy, r2.zw);
  let v_17 = sqrt(r2.xy);
  o2 = vec4<f32>(v_17.xy, o2.zw);
  let v_18 = (r0.yzw * r1.yyy);
  o0 = vec4<f32>(v_18.xyz, o0.w);
  o1.w = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  o2 = vec4<f32>(o2.xy, vec2<f32>(0.98000001907348632812f, 1.0f));
  r1.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_19 = (r1.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_19.xy, r0.zw);
  let v_20 = sqrt(r0.xy);
  o3 = vec4<f32>(v_20.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.0f));
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
