diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb1_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec2<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  r0.x = v3.z;
  r0.y = cb13_13.tint_symbol_1[0u].x;
  o1 = textureSampleLevel(t2, s2, r0.xyxx.xy, 0.0f);
  o2 = vec4<f32>(v4.xy, o2.zw);
  o2 = vec4<f32>(o2.xy, v2.xy);
  let v = (v1.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(v1.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v1.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (r0.xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = fma(cb12_12.tint_symbol_2[1u].xxx, r0.xyz, vec3<f32>(0.0f, 0.0f, 1.0f));
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o3 = vec4<f32>(v_5.xyz, o3.w);
  o3.w = cb12_12.tint_symbol_2[1u].y;
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec2<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_3(o0, o1, o2, o3);
}
