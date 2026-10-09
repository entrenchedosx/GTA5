diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb2_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb4_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v0 : vec3<f32>) {
  r0.x = dot(v0.yz, v0.yz);
  r0.y = (cb8_8.tint_symbol_2[1u].x * cb8_8.tint_symbol_2[1u].x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.y < r0.x)));
  let v = (v0 * cb8_8.tint_symbol_2[1u].www);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = bitcast<vec3<u32>>(r0.xxx);
  let v_2 = select(v0, r0.yzw, (v_1 != vec3<u32>()));
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = bitcast<vec3<u32>>(cb7_7.tint_symbol_1[0u].yyy);
  let v_4 = select(v0, r0.xyz, (v_3 != vec3<u32>()));
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.yyy * cb4_4.tint_symbol_3[1u].xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(r0.xxx, cb4_4.tint_symbol_3[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_6.xy, r0.z, v_6.z);
  let v_7 = fma(r0.zzz, cb4_4.tint_symbol_3[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r0.xyz + cb4_4.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
}

@vertex
fn main(@location(0u) v0 : vec3<f32>) -> @builtin(position) vec4<f32> {
  main_inner(v0);
  return o0;
}
