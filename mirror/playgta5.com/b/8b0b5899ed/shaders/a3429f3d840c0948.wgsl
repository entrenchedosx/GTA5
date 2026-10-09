diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

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

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = inverseSqrt(r0.x);
  r0.y = fma(v2.z, r0.x, -0.34999999403953552246f);
  let v = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(v.x, r0.y, v.yz);
  let v_1 = fma(r0.xzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_1.xyz, o1.w);
  r0.x = clamp(((r0.yyyy * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  let v_2 = (v1.xyw * cb2_2.tint_symbol[15u].zyx);
  r1 = vec4<f32>(r1.x, v_2.xyz);
  r0.x = (r0.x * r1.y);
  let v_3 = fma(r0.xxx, vec3<f32>(-0.5f), vec3<f32>(1.0f));
  o0 = vec4<f32>(v_3.xyz, o0.w);
  let v_4 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = sqrt(r0.xy);
  o2 = vec4<f32>(v_5.xy, o2.zw);
  o0.w = r1.w;
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  o2 = vec4<f32>(o2.xy, vec2<f32>(0.98000001907348632812f, 1.0f));
  r1.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_6 = (r1.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = sqrt(r0.xy);
  o3 = vec4<f32>(v_7.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.0f));
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2);
  return tint_symbol_3(o0, o1, o2, o3);
}
