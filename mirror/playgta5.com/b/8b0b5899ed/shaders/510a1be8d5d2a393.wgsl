diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb6_struct {
  tint_symbol_1 : array<vec4<f32>, 6u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb6_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>, v4 : vec4<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  o1 = v1;
  o2 = (v2.xyxy * cb10_10.tint_symbol_1[1u].xxyy);
  let v = (cb10_10.tint_symbol_1[2u].yx * cb10_10.tint_symbol_1[2u].yx);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = -(r0.yyyy);
  r0.y = fma(cb10_10.tint_symbol_1[2u].y, cb10_10.tint_symbol_1[2u].y, v_1.y);
  r0.y = (1.0f / r0.y);
  o3.z = (r0.y * r0.x);
  o3.w = -(r0.y);
  o3.x = cb10_10.tint_symbol_1[5u].x;
  o3.y = cb10_10.tint_symbol_1[3u].x;
  let v_2 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  o4 = ((r0.xyz + cb1_1.tint_symbol[3u].xyz)).xyzx;
  r0.x = dot(v3, v3);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.10000000149011611938f)));
  let v_5 = select(v3, vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r0.xxx) != vec3<u32>()));
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_7.xy, r0.z, v_7.z);
  let v_8 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_9 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  o5 = r0.xyz.xyzx;
  let v_10 = (v4.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = fma(v4.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = fma(v4.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = r1;
  o6 = vec4<f32>(v_13.xyz, o6.w);
  let v_14 = (v2 * cb10_10.tint_symbol_1[1u].zz);
  r2 = vec4<f32>(v_14.xy, r2.zw);
  o6.w = r2.x;
  o7.w = r2.y;
  let v_15 = (r0.yzx * r1.zxy);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = -(r2.xyzx);
  let v_17 = fma(r1.yzx, r0.zxy, v_16.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = (r0.xyz * v4.www);
  o7 = vec4<f32>(v_18.xyz, o7.w);
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
  @location(5u)
  o5 : vec4<f32>,
  @location(6u)
  o6 : vec4<f32>,
  @location(7u)
  o7 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_2(o0, o1, o2, o3, o4, o5, o6, o7);
}
