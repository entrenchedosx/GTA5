diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb1_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec3<f32>, v3 : vec2<f32>, v4 : vec4<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  let v = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = r0;
  o1 = vec4<f32>(v_4.xyz, o1.w);
  let v_5 = -(cb4_4.tint_symbol_1[0u].xyxx);
  let v_6 = (r0.xy + v_5.xy);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = (r0.xy * vec2<f32>(0.001953125f));
  o5 = vec4<f32>(o5.xy, v_7.xy);
  o1.w = v4.w;
  o2 = v1.xyzx;
  o3 = v2.xyzx;
  r0 = vec4<f32>(((v1.zxy * v2.yzx)).xyz, r0.w);
  let v_8 = fma(v1.yzx, v2.zxy, (-(r0.xyzx)).xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  o4 = ((r0.www * r0.xyz)).xyzx;
  o5 = vec4<f32>(v3.xy, o5.zw);
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec3<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_2(o0, o1, o2, o3, o4, o5);
}
