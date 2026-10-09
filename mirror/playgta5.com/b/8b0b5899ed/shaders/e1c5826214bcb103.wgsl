diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = fma(v0.wwww, cb1_1.tint_symbol[11u], r0);
  r1 = (r0 * vec4<f32>(1.0f, 1.0f, 0.99999988079071044922f, 1.0f));
  o0 = r1;
  let v = r1;
  o2 = vec4<f32>(o2.xy, v.ww);
  let v_1 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(v0.www, cb1_1.tint_symbol[3u].xyz, r1.xyz);
  o1 = vec4<f32>(v_4.xyz, o1.w);
  o1.w = 0.0f;
  let v_5 = (r0.xwy * vec3<f32>(0.5f));
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = -(r0.zzzz);
  o2.y = fma(r0.w, 0.5f, v_6.y);
  o2.x = (r0.y + r0.x);
  o3 = v1.xyxy;
}

struct tint_symbol_1 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0, v1);
  return tint_symbol_1(o0, o1, o2, o3);
}
