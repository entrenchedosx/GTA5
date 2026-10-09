diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb83_struct {
  tint_symbol : array<vec4<f32>, 83u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb83_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec2<f32>) {
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  let v = fma(v0, cb5_5.tint_symbol[82u].xy, cb5_5.tint_symbol[82u].zw);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0;
  o0 = vec4<f32>(v_1.xy, o0.zw);
  let v_2 = fma(r0.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.z = ((-(r0.yyyy)).z + 1.0f);
  o1 = r0.xz.xyxy;
  o2 = r0.xzxz;
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
fn main(@location(0u) v0 : vec2<f32>) -> tint_symbol_1 {
  main_inner(v0);
  return tint_symbol_1(o0, o1, o2);
}
