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

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb2_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec3<f32>) {
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
  o3.w = r0.w;
  let v_2 = (v0 + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = -(cb4_4.tint_symbol_1[0u].xyxx);
  let v_4 = (r0.xy + v_3.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = fma(r1.xy, vec2<f32>(0.001953125f), vec2<f32>(0.001953125f));
  o1 = vec4<f32>(o1.xy, v_5.xy);
  o2 = vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f);
  let v_6 = r0;
  o3 = vec4<f32>(v_6.xyz, o3.w);
  let v_7 = -(cb11_11.tint_symbol_2[1u].xxxy);
  let v_8 = (r0.xy + v_7.zw);
  r0 = vec4<f32>(r0.xy, v_8.xy);
  let v_9 = (r0.xy * cb4_4.tint_symbol_1[3u].ww);
  o4 = vec4<f32>(o4.xy, v_9.xy);
  let v_10 = (r0.zw * cb11_11.tint_symbol_2[1u].zw);
  r0 = vec4<f32>(v_10.xy, r0.zw);
  let v_11 = fma(r0.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  o4 = vec4<f32>(v_11.xy, o4.zw);
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
  @location(4u)
  o4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>) -> tint_symbol_3 {
  main_inner(v0);
  return tint_symbol_3(o0, o1, o2, o3, o4);
}
