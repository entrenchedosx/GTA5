diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

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

fn main_inner(v0 : vec2<i32>, v1 : f32, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v2.wz + vec2<f32>(-0.00196078442968428135f))).xy, r0.zw);
  let v = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>(v0).xy);
  let v_1 = ((-(r0.xyxx)).xy + r0.zw);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  let v_2 = (r0.zw + cb1_1.tint_symbol[3u].xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r2 = (r1.yyyy * cb1_1.tint_symbol[9u]);
  r2 = fma(r1.xxxx, cb1_1.tint_symbol[8u], r2);
  r2 = fma(vec4<f32>(v1, v1, v1, v1), cb1_1.tint_symbol[10u], r2);
  r2 = (r2 + cb1_1.tint_symbol[11u]);
  o0 = r2;
  let v_3 = -(cb4_4.tint_symbol_1[0u].xxxy);
  let v_4 = (r0.xy + v_3.zw);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = (r0.xy * cb4_4.tint_symbol_1[3u].ww);
  o4 = vec4<f32>(o4.xy, v_5.xy);
  let v_6 = fma(r0.zw, vec2<f32>(0.001953125f), vec2<f32>(0.001953125f));
  o1 = vec4<f32>(o1.xy, v_6.xy);
  let v_7 = (r2.xwy * vec3<f32>(0.5f));
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = -(r0.zzzz);
  o1.y = fma(r2.w, 0.5f, v_8.y);
  o1.x = (r0.y + r0.x);
  o3.w = r2.w;
  let v_9 = fma(v2.wz, vec2<f32>(2.0f), vec2<f32>(-1.00392162799835205078f));
  r0 = vec4<f32>(v_9.xy, r0.zw);
  r0.z = 1.5f;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_10 = (r0.www * r0.xyz);
  o2 = vec4<f32>(v_10.xyz, o2.w);
  o2.w = v2.y;
  r1.z = v1;
  let v_11 = (r1.xyz + cb1_1.tint_symbol[3u].xyz);
  o3 = vec4<f32>(v_11.xyz, o3.w);
  let v_12 = fma(r1.xy, vec2<f32>(0.001953125f), vec2<f32>(0.5f));
  o4 = vec4<f32>(v_12.xy, o4.zw);
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
}

@vertex
fn main(@location(0u) v0 : vec2<i32>, @location(1u) v1 : f32, @location(2u) v2 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2);
  return tint_symbol_2(o0, o1, o2, o3, o4);
}
