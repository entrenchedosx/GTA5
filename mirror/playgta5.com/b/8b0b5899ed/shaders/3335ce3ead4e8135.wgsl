diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec2<f32>, v6 : vec2<f32>) {
  let v = (cb1_1.tint_symbol[14u].zxy * vec3<f32>(0.0f, -1.0f, 0.0f));
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(r0.xyzx);
  let v_2 = fma(cb1_1.tint_symbol[14u].yzx, vec3<f32>(-1.0f, 0.0f, 0.0f), v_1.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = -(cb1_1.tint_symbol[12u].xyzx);
  let v_4 = (r0.xyz + v_3.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(v6.xxx, r0.xyz, cb1_1.tint_symbol[12u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (v5 * cb12_12.tint_symbol_1[1u].xy);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = (r0.xyz * r1.xxx);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (cb1_1.tint_symbol[13u].xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = -(cb1_1.tint_symbol[13u].xyzx);
  let v_10 = fma(v6.xxx, r2.xyz, v_9.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = (r1.yyy * r2.xyz);
  r1 = vec4<f32>(r1.x, v_11.xyz);
  r0.w = (r1.x * 0.30000001192092895508f);
  r2 = vec4<f32>(((v3 + vec2<f32>(-0.5f))).xy, r2.zw);
  let v_12 = (r1.yzw * r2.yyy);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = fma(r2.xxx, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = fma((-(r0.wwww)).xyz, cb1_1.tint_symbol[14u].xyz, r0.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = (r0.xyz + v0);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r0.w = dot(r0.xyz, cb1_1.tint_symbol[1u].xyz);
  r1 = (r0.wwww * cb1_1.tint_symbol[9u]);
  r0.w = dot(r0.xyz, cb1_1.tint_symbol[0u].xyz);
  r0.x = dot(r0.xyz, cb1_1.tint_symbol[2u].xyz);
  r1 = fma(r0.wwww, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.xxxx, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  o1 = v4.xyxy;
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec2<f32>, @location(6u) v6 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v3, v4, v5, v6);
  return tint_symbol_2(o0, o1);
}
