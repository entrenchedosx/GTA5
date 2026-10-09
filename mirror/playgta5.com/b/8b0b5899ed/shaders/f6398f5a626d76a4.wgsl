diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

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

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v5 : vec4<f32>) {
  r0.x = 0.0f;
  r1 = textureSample(t9, s9, v5.zwzz.xy);
  r0.y = dot(r1.xx, cb10_10.tint_symbol_2[0u].zz);
  let v = ((-(r0.xyxx)).xy + v5.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy + cb10_10.tint_symbol_2[0u].xx);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = (r0.xy + v5.xy);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  r2 = textureSample(t3, s3, r0.xyxx.xy);
  r0 = textureSample(t10, s10, r0.zwzz.xy);
  r0.x = (r0.x * r2.y);
  r0.y = (v1.z + (-(cb10_10.tint_symbol_2[0u].yyyy)).y);
  r0.y = max(r0.y, 0.0f);
  r0.y = (r0.y * cb10_10.tint_symbol_2[0u].w);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * v1.w);
  r0.x = clamp(((r1.xxxx * r0.xxxx)).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb2_2.tint_symbol[15u].x);
  o0.w = r0.x;
  r0.y = (v2.z + -0.34999999403953552246f);
  r0.y = clamp(((r0.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r0.y = (r0.y * cb5_5.tint_symbol_1[3u].z);
  r0.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r0.y = (r0.z * r0.y);
  r0.y = (r0.y * cb2_2.tint_symbol[15u].z);
  let v_3 = fma(r0.yyy, vec3<f32>(-0.5f), vec3<f32>(1.0f));
  o0 = vec4<f32>(v_3.xyz, o0.w);
  let v_4 = (r0.yy * vec2<f32>(0.5f, 0.48828125f));
  let v_5 = r0;
  r0 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = sqrt(r0.yz);
  o2 = vec4<f32>(v_6.xy, o2.zw);
  o1.w = r0.x;
  o2.w = r0.x;
  let v_7 = fma(v2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_7.xyz, o1.w);
  o2.z = 0.98000001907348632812f;
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2, v5);
  return tint_symbol_3(o0, o1, o2, o3);
}
