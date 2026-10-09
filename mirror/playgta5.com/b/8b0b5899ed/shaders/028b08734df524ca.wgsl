diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

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

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  let v = (v3.xy * cb11_11.tint_symbol_4[0u].zw);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy * vec2<f32>(3.1700000762939453125f));
  r0 = vec4<f32>(r0.xy, v_1.xy);
  r1 = textureSample(t3, s3, r0.xyxx.xy);
  let v_2 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r1 = textureSample(t3, s3, r0.zwzz.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_3.xy);
  let v_4 = (r0.zw * vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = fma(r0.xy, vec2<f32>(0.5f), r0.zw);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r1 = textureSample(t5, s5, v3.xy.xyxx.xy);
  let v_6 = fma(r0.xy, cb11_11.tint_symbol_4[0u].yy, r1.xy);
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r0.x = fma((-(r0.xxxx)).x, cb11_11.tint_symbol_4[0u].x, 1.0f);
  let v_8 = fma(r0.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  r0.w = max(cb12_12.tint_symbol_3[1u].x, 0.00100000004749745131f);
  let v_10 = (r0.ww * r0.yz);
  r1 = vec4<f32>(v_10.xy, r1.zw);
  r0.y = dot(r0.yz, r0.yz);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.y = sqrt(abs(r0.yyyy).y);
  let v_11 = (r1.yyy * v6.xyz);
  r1 = vec4<f32>(r1.x, v_11.xyz);
  let v_12 = fma(r1.xxx, v5.xyz, r1.yzw);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = fma(r0.yyy, v4.xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_13.xyz);
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = inverseSqrt(r1.x);
  r1.y = fma(r0.w, r1.x, -0.34999999403953552246f);
  let v_14 = (r0.yzw * r1.xxx);
  r0 = vec4<f32>(r0.x, v_14.xyz);
  let v_15 = fma(r0.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_15.xyz, o1.w);
  r0.y = clamp(((r1.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r0.y = (r0.y * cb5_5.tint_symbol_2[3u].z);
  r0.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r0.y = (r0.z * r0.y);
  let v_16 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_17 = r1;
  r1 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  r0.y = (r0.y * r1.y);
  r0.z = (r0.x * cb12_12.tint_symbol_3[0u].w);
  r0.w = fma((-(r0.zzzz)).w, 0.5f, 1.0f);
  r0.w = (r0.w * r0.y);
  r0.y = (r0.y * cb12_12.tint_symbol_3[1u].w);
  r0.w = fma(r0.w, -0.5f, 1.0f);
  r2 = textureSample(t0, s0, v3.xy.xyxx.xy);
  r2 = (r0.xxxx * r2);
  r0.x = clamp(fma(cb12_12.tint_symbol_3[0u].wwww, r0.xxxx, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_18 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r3 = vec4<f32>(v_18.xy, r3.zw);
  let v_19 = (r2.xyz * v2.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r0.x = (r2.w * v1.w);
  o0.w = (r0.x * cb2_2.tint_symbol[15u].x);
  let v_20 = (r0.www * r2.xyz);
  o0 = vec4<f32>(v_20.xyz, o0.w);
  r0.x = (cb12_12.tint_symbol_3[1u].w + -0.20000000298023223877f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(10.0f))).x, 0.0f, 1.0f);
  r0.w = clamp(fma(v4.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  o1.w = (r0.x * r0.w);
  r2.z = (-(cb12_12.tint_symbol_3[0u].yyyy)).z;
  r3.z = 0.97000002861022949219f;
  r0.x = (cb12_12.tint_symbol_3[0u].z * 0.001953125f);
  let v_21 = (-(r0.zxzz)).xy;
  r2 = vec4<f32>(v_21.xy, r2.zw);
  let v_22 = (r2.xyz + r3.xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  let v_23 = max(r2.xyz, vec3<f32>());
  r2 = vec4<f32>(v_23.xyz, r2.w);
  r3.x = fma(r2.x, r0.y, r0.z);
  r3.y = fma(r2.y, r0.y, r0.x);
  o2.z = fma(r2.z, r0.y, cb12_12.tint_symbol_3[0u].y);
  let v_24 = sqrt(r3.xy);
  o2 = vec4<f32>(v_24.xy, o2.zw);
  o2.w = 1.0f;
  r1.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_25 = (r1.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_25.xy, r0.zw);
  let v_26 = sqrt(r0.xy);
  o3 = vec4<f32>(v_26.xy, o3.zw);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3);
}
