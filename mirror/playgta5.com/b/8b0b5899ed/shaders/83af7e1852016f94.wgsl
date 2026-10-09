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

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> v4 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v : bool) {
  v4.x = bitcast<f32>(select(0u, 4294967295u, v));
  r0.x = select(-1.0f, 1.0f, (bitcast<u32>(v4.x) != 0u));
  let v_1 = (r0.xxx * v3.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  r1.x = fma(r0.z, r0.w, -0.34999999403953552246f);
  let v_2 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_2.xy, r0.z, v_2.z);
  o1.w = clamp(fma(r0.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  let v_3 = fma(r0.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_3.xyz, o1.w);
  r0.x = clamp(((r1.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  let v_4 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_5 = r1;
  r1 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  r0.x = (r0.x * r1.y);
  r0.y = fma(r0.x, -0.5f, 1.0f);
  let v_6 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  let v_7 = r0;
  r0 = vec4<f32>(v_6.x, v_7.y, v_6.y, v_7.w);
  let v_8 = sqrt(r0.xz);
  o2 = vec4<f32>(v_8.xy, o2.zw);
  r2 = textureSample(t0, s0, v2.xy.xyxx.xy);
  let v_9 = (r0.yyy * r2.xyz);
  o0 = vec4<f32>(v_9.xyz, o0.w);
  r0.x = (r2.w * v1.w);
  o0.w = (r0.x * cb2_2.tint_symbol[15u].x);
  o2 = vec4<f32>(o2.xy, vec2<f32>(0.98000001907348632812f, 1.0f));
  r1.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_10 = (r1.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_10.xy, r0.zw);
  let v_11 = sqrt(r0.xy);
  o3 = vec4<f32>(v_11.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>());
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @builtin(front_facing) v_12 : bool) -> tint_symbol_3 {
  main_inner(v1, v2, v3, v_12);
  return tint_symbol_3(o0, o1, o2, o3);
}
