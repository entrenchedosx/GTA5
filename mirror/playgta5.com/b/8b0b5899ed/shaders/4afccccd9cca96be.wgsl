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

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = inverseSqrt(r0.x);
  r0.y = fma(v4.z, r0.x, -0.34999999403953552246f);
  let v = (r0.xxx * v4.xyz);
  r0 = vec4<f32>(v.x, r0.y, v.yz);
  let v_1 = fma(r0.xzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r0 = vec4<f32>(v_1.x, r0.y, v_1.yz);
  r0.y = clamp(((r0.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r0.y = (r0.y * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.y = (r0.y * r1.x);
  let v_2 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_3 = r1;
  r1 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  r0.y = (r0.y * r1.y);
  r2 = textureSample(t3, s3, v3.xy.xyxx.xy);
  let v_4 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r1.y = (r2.w * cb12_12.tint_symbol_3[0u].y);
  r3.y = (r1.y * 0.001953125f);
  r1.y = dot(r2.xyz, cb12_12.tint_symbol_3[1u].xyz);
  r3.x = (r1.y * cb12_12.tint_symbol_3[0u].z);
  r1.y = clamp(fma(r1.yyyy, cb12_12.tint_symbol_3[0u].zzzz, vec4<f32>(0.40000000596046447754f)).y, 0.0f, 1.0f);
  let v_5 = (r1.yy * vec2<f32>(0.5f, 0.48828125f));
  r2 = vec4<f32>(v_5.xy, r2.zw);
  r1.y = fma((-(r3.xxxx)).y, 0.5f, 1.0f);
  r1.y = (r0.y * r1.y);
  r1.y = fma(r1.y, -0.5f, 1.0f);
  r4 = textureSample(t0, s0, v3.xy.xyxx.xy);
  let v_6 = (r4.xyz * v2.xyz);
  r4 = vec4<f32>(v_6.xyz, r4.w);
  r1.w = (r4.w * v1.w);
  o0.w = (r1.w * cb2_2.tint_symbol[15u].x);
  let v_7 = (r1.yyy * r4.xyz);
  o0 = vec4<f32>(v_7.xyz, o0.w);
  let v_8 = (r0.xzw * vec3<f32>(256.0f));
  r4 = vec4<f32>(v_8.xyz, r4.w);
  let v_9 = floor(r4.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = -(r4.xxyz);
  let v_11 = fma(r0.xzw, vec3<f32>(256.0f), v_10.xzw);
  r0 = vec4<f32>(v_11.x, r0.y, v_11.yz);
  let v_12 = (r4.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_12.xyz, o1.w);
  let v_13 = (r0.xzw * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_13.x, r0.y, v_13.yz);
  let v_14 = floor(r0.xzw);
  r0 = vec4<f32>(v_14.x, r0.y, v_14.yz);
  r0.x = dot(r0.xzw, vec3<f32>(32.0f, 4.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  r2.z = 0.97000002861022949219f;
  r3.z = cb12_12.tint_symbol_3[0u].x;
  let v_15 = -(r3.xxyz);
  let v_16 = (r2.xyz + v_15.xzw);
  r0 = vec4<f32>(v_16.x, r0.y, v_16.yz);
  let v_17 = max(r0.xzw, vec3<f32>());
  r0 = vec4<f32>(v_17.x, r0.y, v_17.yz);
  let v_18 = fma(r0.xzw, r0.yyy, r3.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = sqrt(r0.xy);
  o2 = vec4<f32>(v_19.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r1.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_20 = (r1.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_20.xy, r0.zw);
  let v_21 = sqrt(r0.xy);
  o3 = vec4<f32>(v_21.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4);
  return tint_symbol_4(o0, o1, o2, o3);
}
