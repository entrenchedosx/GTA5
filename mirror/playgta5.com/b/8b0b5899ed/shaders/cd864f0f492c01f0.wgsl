diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb65_struct {
  tint_symbol : array<vec4<f32>, 65u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb65_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>) {
  r0.x = fma(v1.x, v0.z, v0.x);
  r0.y = fma((-(v1.yyyy)).y, v0.w, v0.y);
  let v = (r0.xy + vec2<f32>(-0.5f, 0.5f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy + r0.xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = fma(r0.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = fma(r1.xy, vec2<f32>(0.5f), vec2<f32>(-0.5f));
  r1 = vec4<f32>(r1.xy, v_3.xy);
  let v_4 = (r1.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  o1 = r1.xy.xyxy;
  r1.x = dot(r1.zw, r1.zw);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.x = log2(r1.x);
  r1.x = (r1.x * cb5_5.tint_symbol[64u].y);
  r1.x = exp2(r1.x);
  r1.x = clamp(((r1.xxxx + cb5_5.tint_symbol[64u].xxxx)).x, 0.0f, 1.0f);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 1.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r0 = vec4<f32>(r0.xy, vec2<f32>(0.0f, 1.0f));
  o0 = (r0 * r1.xxxx);
}

struct tint_symbol_1 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0, v1);
  return tint_symbol_1(o0, o1);
}
