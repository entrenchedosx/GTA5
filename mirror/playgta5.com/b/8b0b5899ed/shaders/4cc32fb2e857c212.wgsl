diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb3_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb5_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec2<f32>) {
  o0 = v0;
  o1 = v1.xyxy;
  let v = fma(v1, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma(r0.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_1[4u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r0.y = (r0.y * cb11_11.tint_symbol_1[1u].w);
  r0.x = (r0.x * cb11_11.tint_symbol_1[0u].w);
  let v_2 = (r0.yyy * cb11_11.tint_symbol_1[1u].xyz);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = fma(r0.xxx, cb11_11.tint_symbol_1[0u].xyz, r0.yzw);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = -(cb11_11.tint_symbol_1[2u].xyzx);
  let v_5 = (r0.xyz + v_4.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  o2 = r0.xyz.xyzx;
  let v_6 = (r0.yyy * cb6_6.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(r0.xxx, cb6_6.tint_symbol[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_7.xy, r0.z, v_7.z);
  o3 = fma(r0.zzz, cb6_6.tint_symbol[2u].xyz, r0.xyw).xyzx;
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
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v1);
  return tint_symbol_2(o0, o1, o2, o3);
}
