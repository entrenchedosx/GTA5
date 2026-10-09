diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb51_struct {
  tint_symbol_1 : array<vec4<f32>, 51u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb51_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb2_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec2<f32>) {
  let v = (v0 + cb5_5.tint_symbol_2[1u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy * cb5_5.tint_symbol_2[0u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = (r0.yyy * cb1_1.tint_symbol[13u].xyz);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = fma(r0.xxx, cb1_1.tint_symbol[12u].xyz, r0.yzw);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = -(cb1_1.tint_symbol[14u].xyzx);
  let v_5 = (r0.xyz + v_4.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  let v_6 = r0;
  o2 = vec4<f32>(v_6.xyz, o2.w);
  r0.x = sqrt(r0.w);
  r0.x = (cb3_3.tint_symbol_1[50u].x / r0.x);
  r0.x = max(r0.x, 0.0f);
  r0.x = (cb5_5.tint_symbol_2[0u].z / r0.x);
  let v_7 = -(cb5_5.tint_symbol_2[0u].wwww);
  r0.x = clamp(((r0.xxxx + v_7)).x, 0.0f, 1.0f);
  o0.z = ((-(r0.xxxx)).z + 1.0f);
  o0 = vec4<f32>(v0.xy, o0.zw);
  o0.w = 1.0f;
  let v_8 = fma(v0, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
  o1 = vec4<f32>(v_8.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, vec2<f32>());
  o2.w = 1.0f;
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec2<f32>) -> tint_symbol_3 {
  main_inner(v0);
  return tint_symbol_3(o0, o1, o2);
}
