diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>) {
  let v = (v0.yyy * cb1_1.tint_symbol[9u].xyw);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(v0.xxx, cb1_1.tint_symbol[8u].xyw, r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.zzz, cb1_1.tint_symbol[10u].xyw, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (r0.xyz + cb1_1.tint_symbol[11u].xyw);
  o0 = vec4<f32>(v_3.xy, o0.z, v_3.z);
  o0.z = 0.0f;
  o1 = vec4<f32>(v0.xyz, o1.w);
  o1.w = 0.0f;
}

struct tint_symbol_1 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>) -> tint_symbol_1 {
  main_inner(v0);
  return tint_symbol_1(o0, o1);
}
