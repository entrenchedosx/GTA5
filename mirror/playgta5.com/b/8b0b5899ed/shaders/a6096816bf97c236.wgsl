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

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o0 = r0;
  r0.z = ((-(v1.xxxx)).z + 1.0f);
  o1.w = fma(v1.z, r0.z, v1.x);
  let v = (v0 + cb1_1.tint_symbol[3u].xyz);
  r1 = vec4<f32>(v.xyz, r1.w);
  let v_1 = r1;
  o1 = vec4<f32>(v_1.xyz, o1.w);
  let v_2 = (r0.xwy * vec3<f32>(0.5f));
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = -(r0.zzzz);
  o2.y = fma(r0.w, 0.5f, v_3.y);
  o2.x = (r0.y + r0.x);
  o2.z = r0.w;
  o2.w = v1.y;
  o3 = vec4<f32>(v2.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>());
  o4.x = v1.z;
  o4 = vec4<f32>(o4.x, vec3<f32>());
  let v_4 = -(cb4_4.tint_symbol_1[0u].xyxx);
  let v_5 = (r1.xy + v_4.xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = (r1.xy * cb4_4.tint_symbol_1[3u].ww);
  o5 = vec4<f32>(v_6.xy, o5.zw);
  let v_7 = fma(r0.xy, vec2<f32>(0.001953125f), vec2<f32>(0.001953125f));
  o5 = vec4<f32>(o5.xy, v_7.xy);
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2);
  return tint_symbol_2(o0, o1, o2, o3, o4, o5);
}
