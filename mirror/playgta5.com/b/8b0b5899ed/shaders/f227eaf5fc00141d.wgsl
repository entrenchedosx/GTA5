diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec2<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o0 = r0;
  o1 = vec4<f32>(v1.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v0.zz.xy);
  let v = (r0.xwy * vec3<f32>(0.5f));
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(r0.zzzz);
  o2.y = fma(r0.w, 0.5f, v_1.y);
  o2.x = (r0.y + r0.x);
  let v_2 = r0;
  o2 = vec4<f32>(o2.xy, v_2.ww);
}

struct tint_symbol_1 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec2<f32>) -> tint_symbol_1 {
  main_inner(v0, v1);
  return tint_symbol_1(o0, o1, o2);
}
