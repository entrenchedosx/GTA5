diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0.x = max(cb12_12.tint_symbol_2[0u].w, 0.00100000004749745131f);
  r1 = textureSample(t3, s3, v3.xy.xyxx.xy);
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
  let v_5 = fma(r0.yyy, v4.xyz, r0.xzw);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  r1.x = fma(r0.z, r0.w, -0.34999999403953552246f);
  let v_6 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_7.xyz, o1.w);
  r0.x = clamp(((r1.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_1[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.y = (v1.x * cb2_2.tint_symbol[15u].z);
  r0.x = (r0.y * r0.x);
  r0.y = fma((-(cb12_12.tint_symbol_2[0u].zzzz)).y, 0.5f, 1.0f);
  r0.y = (r0.y * r0.x);
  r0.y = fma(r0.y, -0.5f, 1.0f);
  r1 = textureSample(t0, s0, v3.xy.xyxx.xy);
  let v_8 = (r1.xyz * v2.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r0.z = (r1.w * v1.w);
  r0.z = (r0.z * cb2_2.tint_symbol[15u].x);
  let v_9 = (r0.yyy * r1.xyz);
  o0 = vec4<f32>(v_9.xyz, o0.w);
  o0.w = r0.z;
  o1.w = r0.z;
  o2.w = r0.z;
  r0.y = clamp(((cb12_12.tint_symbol_2[0u].zzzz + vec4<f32>(0.69999998807907104492f))).y, 0.0f, 1.0f);
  let v_10 = (r0.yy * vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_10.xy, r1.zw);
  let v_11 = (-(cb12_12.tint_symbol_2[0u].zzzx)).yw;
  let v_12 = r0;
  r0 = vec4<f32>(v_12.x, v_11.x, v_12.z, v_11.y);
  r1.z = 0.97000002861022949219f;
  r1.w = (cb12_12.tint_symbol_2[0u].y * 0.001953125f);
  r0.z = (-(r1.wwww)).z;
  let v_13 = (r0.yzw + r1.xyz);
  r0 = vec4<f32>(r0.x, v_13.xyz);
  let v_14 = max(r0.yzw, vec3<f32>());
  r0 = vec4<f32>(r0.x, v_14.xyz);
  r1.y = fma(r0.z, r0.x, r1.w);
  let v_15 = fma(r0.yw, r0.xx, cb12_12.tint_symbol_2[0u].zx);
  let v_16 = r1;
  r1 = vec4<f32>(v_15.x, v_16.y, v_15.y, v_16.w);
  let v_17 = sqrt(r1.xy);
  o2 = vec4<f32>(v_17.xy, o2.zw);
  o2.z = r1.z;
  o3 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
}

struct tint_symbol_3 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_3(o0, o1, o2, o3);
}
