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

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r0.w = dot(r0.xyz, cb12_12.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(vec3<f32>(1.0f), r0.w);
  r0 = (r0 * v1);
  let v = -(cb12_12.tint_symbol_2[1u].yyyy);
  r1.x = fma(v.x, 0.5f, 1.0f);
  r1.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r1.y = (r1.y * cb5_5.tint_symbol_1[3u].z);
  r1.y = (r1.y * cb2_2.tint_symbol[15u].z);
  r1.x = (r1.x * r1.y);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_1 = (r0.xyz * r1.xxx);
  o0 = vec4<f32>(v_1.xyz, o0.w);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  o0.w = r0.x;
  o2.w = r0.x;
  o1 = vec4<f32>();
  r0.x = clamp(((cb12_12.tint_symbol_2[1u].yyyy + vec4<f32>(0.69999998807907104492f))).x, 0.0f, 1.0f);
  let v_2 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r2.y = v.y;
  r2.w = (-(cb12_12.tint_symbol_2[0u].wwww)).w;
  r0.z = 0.97000002861022949219f;
  r0.w = (cb12_12.tint_symbol_2[1u].x * 0.001953125f);
  r2.z = (-(r0.wwww)).z;
  let v_3 = (r0.xyz + r2.yzw);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r2.y = fma(r0.y, r1.y, r0.w);
  r2.x = fma(r0.x, r1.y, cb12_12.tint_symbol_2[1u].y);
  o2.z = fma(r0.z, r1.y, cb12_12.tint_symbol_2[0u].w);
  let v_5 = sqrt(r2.xy);
  o2 = vec4<f32>(v_5.xy, o2.zw);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2);
  return tint_symbol_3(o0, o1, o2, o3);
}
