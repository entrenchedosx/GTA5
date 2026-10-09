diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb10_struct {
  tint_symbol_1 : array<vec4<f32>, 10u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb10_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>) {
  r0 = vec4<f32>(v0.xy.xy, r0.zw);
  let v = fma(r0.xy, vec2<f32>(300.0f), cb1_1.tint_symbol[15u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.z = cb11_11.tint_symbol_2[0u].x;
  let v_1 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_2 = (r0.xyz + v_1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  o2 = r0.xyz.xyzx;
  let v_3 = (r1.yyy * cb6_6.tint_symbol_1[1u].xyy);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = fma(r1.xxx, cb6_6.tint_symbol_1[0u].xyy, r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(r1.zzz, cb6_6.tint_symbol_1[2u].xyy, r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = fma(r0.xyz, cb6_6.tint_symbol_1[5u].xyy, cb6_6.tint_symbol_1[9u].xyy);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (r0.xyz + vec3<f32>(0.5f, 0.5f, 1.5f));
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r0.w = ((-(r0.yyyy)).w + 1.0f);
  let v_8 = fma(r0.xw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  o0 = vec4<f32>(v_8.xy, o0.zw);
  o1 = ((r0.xz * vec2<f32>(1.0f, 0.25f))).xyxy;
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>) -> tint_symbol_3 {
  main_inner(v0);
  return tint_symbol_3(o0, o1, o2);
}
