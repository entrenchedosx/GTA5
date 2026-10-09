diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec3<f32>, v6 : vec4<f32>) {
  r0 = vec4<f32>(((v5.zxy * vec3<f32>(0.0f, -1.0f, 0.0f))).xyz, r0.w);
  let v = fma(v5.yzx, vec3<f32>(-1.0f, 0.0f, 0.0f), (-(r0.xyzx)).xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = inverseSqrt(r0.w);
  let v_1 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.zxy * (-(v5.yzxy)).xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = -(r1.xyzx);
  let v_4 = fma(r0.yzx, (-(v5.zxyz)).xyz, v_3.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_5 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = -(v5.xyzx);
  r2 = vec4<f32>(((v0.yyy * v_6.xyz)).xyz, r2.w);
  let v_7 = fma(v0.xxx, r0.xyz, r2.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma(v0.zzz, r1.xyz, r2.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r3.x = 0.0f;
  r3.z = v4.z;
  let v_9 = (r2.xyz + r3.xxz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r3 = vec4<f32>(v4.xy.xy, r3.zw);
  r3.z = -1.0f;
  let v_10 = (r2.xyz + r3.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r3 = (r2.yyyy * cb1_1.tint_symbol[9u]);
  r3 = fma(r2.xxxx, cb1_1.tint_symbol[8u], r3);
  r2 = fma(r2.zzzz, cb1_1.tint_symbol[10u], r3);
  o0 = (r2 + cb1_1.tint_symbol[11u]);
  o1 = v6;
  r2 = vec4<f32>(((v1.yyy * v_6.xyz)).xyz, r2.w);
  let v_11 = fma(v1.xxx, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  o2 = fma(v1.zzz, r1.xyz, r0.xyz).xyzx;
  o3 = vec3<f32>(v3.xy, o3.xyz.z).xyzx;
  o3.z = v6.w;
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0, v1, v3, v4, v5, v6);
  return tint_symbol_1(o0, o1, o2, o3);
}
