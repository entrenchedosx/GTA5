diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb47_struct {
  tint_symbol_2 : array<vec4<f32>, 47u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb47_struct;

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb6_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

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
  r1 = (r0 * vec4<f32>(1.0f, 1.0f, 0.99999499320983886719f, 1.0f));
  o0 = r1;
  let v = r1;
  o2 = vec4<f32>(o2.xy, v.ww);
  let v_1 = (v0 + cb1_1.tint_symbol[3u].xyz);
  o1 = vec4<f32>(v_1.xyz, o1.w);
  o1.w = v1.y;
  let v_2 = (r0.xwy * vec3<f32>(0.5f));
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = -(r0.zzzz);
  o2.y = fma(r0.w, 0.5f, v_3.y);
  o2.x = (r0.y + r0.x);
  r0.x = (cb4_4.tint_symbol_3[5u].x * cb10_10.tint_symbol_4[0u].y);
  r0.y = 0.0f;
  o3 = ((r0.xy + v2)).xyxy;
  r0.x = (v3.z + cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_4 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  let v_5 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  o4 = fma(r0.yzw, cb2_2.tint_symbol_1[16u].zzz, r1.xyz).xyzx;
  let v_6 = dot(v3, (-(cb3_3.tint_symbol_2[0u].xyzx)).xyz);
  r0.x = clamp(vec4<f32>(v_6, v_6, v_6, v_6).x, 0.0f, 1.0f);
  o5 = ((r0.xxx * cb3_3.tint_symbol_2[1u].xyz)).xyzx;
}

struct tint_symbol_5 {
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5);
}
