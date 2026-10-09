diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  o0 = vec4<f32>();
  r0.x = dot(v3.xyz, v3.xyz);
  r0.x = inverseSqrt(r0.x);
  let v = (r0.xxx * v3.xyz);
  r0 = vec4<f32>(r0.x, v.xyz);
  r0.x = fma(v3.z, r0.x, -0.34999999403953552246f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_1[3u].z);
  let v_1 = fma(r0.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_1.xyz, o1.w);
  o1.w = 1.0f;
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.y = (v1.x * cb2_2.tint_symbol[15u].z);
  r0.x = (r0.y * r0.x);
  r1.z = 0.97000002861022949219f;
  r2 = textureSample(t2, s2, v2.xy.xyxx.xy);
  let v_2 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_2.xy, r2.zw);
  r0.y = (r2.w * cb12_12.tint_symbol_2[0u].y);
  r3.y = (r0.y * 0.001953125f);
  r0.y = dot(r2.xyz, cb12_12.tint_symbol_2[1u].xyz);
  r0.z = (r2.y * v1.w);
  o2.w = (r0.z * cb2_2.tint_symbol[15u].x);
  r0.z = clamp(fma(r0.yyyy, cb12_12.tint_symbol_2[0u].zzzz, vec4<f32>(0.69999998807907104492f)).z, 0.0f, 1.0f);
  r3.x = (r0.y * cb12_12.tint_symbol_2[0u].z);
  let v_3 = (r0.zz * vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r3.z = cb12_12.tint_symbol_2[0u].x;
  let v_4 = -(r3.xxyz);
  let v_5 = (r1.xyz + v_4.yzw);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = max(r0.yzw, vec3<f32>());
  r0 = vec4<f32>(r0.x, v_6.xyz);
  let v_7 = fma(r0.yzw, r0.xxx, r3.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = sqrt(r0.xy);
  o2 = vec4<f32>(v_8.xy, o2.zw);
  o2.z = r0.z;
  o3 = vec4<f32>();
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2, v3);
  return tint_symbol_3(o0, o1, o2, o3);
}
