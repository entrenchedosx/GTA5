diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb4_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o0 = r0;
  let v = (r0.xwy * vec3<f32>(0.5f));
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(r0.zzzz);
  o1.y = fma(r0.w, 0.5f, v_1.y);
  o1.x = (r0.y + r0.x);
  o4.w = r0.w;
  let v_2 = (v0 + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = -(cb4_4.tint_symbol_1[0u].xyxx);
  let v_4 = (r0.xy + v_3.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = fma(r1.xy, vec2<f32>(0.001953125f), vec2<f32>(0.001953125f));
  o1 = vec4<f32>(o1.xy, v_5.xy);
  let v_6 = r0;
  o2 = vec4<f32>(v_6.xyz, o2.w);
  let v_7 = (r0.xy * cb4_4.tint_symbol_1[3u].ww);
  o3 = vec4<f32>(o3.xy, v_7.xy);
  o2.w = v1.x;
  o3 = vec4<f32>(v2.xy, o3.zw);
  r0.x = dot(v3, v3);
  r0.x = inverseSqrt(r0.x);
  let v_8 = (r0.xxx * v3);
  o4 = vec4<f32>(v_8.xyz, o4.w);
  r0 = textureSampleLevel(t2, s2, v2.xyxx.xy, 0.0f);
  let v_9 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  o5 = vec4<f32>(o5.xy, v_9.xy);
  o5 = vec4<f32>(v1.yz, o5.zw);
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @location(4u)
  o4 : vec4<f32>,
  @location(5u)
  o5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_2(o0, o1, o2, o3, o4, o5);
}
