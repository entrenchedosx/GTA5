diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v0 : vec4<f32>) {
  r0.x = dot(v0.xyz, v0.xyz);
  r0.y = inverseSqrt(r0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  let v = (r0.yyy * v0.xyz);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = bitcast<vec3<u32>>(r0.xxx);
  let v_2 = select(v0.xyz, r0.yzw, (v_1 != vec3<u32>()));
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.w = (cb12_12.tint_symbol_1[4u].w + cb12_12.tint_symbol_1[4u].y);
  let v_3 = fma(r0.xyz, r0.www, cb12_12.tint_symbol_1[0u].xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
}

@vertex
fn main(@location(0u) v0 : vec4<f32>) -> @builtin(position) vec4<f32> {
  main_inner(v0);
  return o0;
}
