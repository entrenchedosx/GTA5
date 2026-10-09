diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb218_struct {
  tint_symbol : array<vec4<f32>, 218u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb218_struct;

struct cb16_struct {
  tint_symbol_1 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>) {
  let v = fma(cb7_7.tint_symbol[217u].zz, v2.xy, cb7_7.tint_symbol[216u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy * vec2<f32>(6.28318500518798828125f));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = sin(r0.xyxx.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = fma(r0.xy, cb7_7.tint_symbol[216u].zw, cb7_7.tint_symbol[217u].xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = sin(r0.xyxx.xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0.z = dot(r0.xy, r0.xy);
  let v_5 = fma(v3.yy, r0.xy, v0.xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r0.x = (r0.z * v3.y);
  r1.z = fma(r0.x, cb7_7.tint_symbol[217u].w, v0.z);
  let v_6 = -(cb1_1.tint_symbol_1[15u].zxyz);
  let v_7 = (r1.zxy + v_6.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = -(cb1_1.tint_symbol_1[14u].xyzx);
  r0.w = dot(r0.yzx, v_8.xyz);
  r0.w = (cb7_7.tint_symbol[214u].x / r0.w);
  r1.w = (abs(v3.xxxx).w * cb7_7.tint_symbol[214u].y);
  r2.x = fma(r1.w, r0.w, cb7_7.tint_symbol[214u].z);
  r1.w = (r0.w * r1.w);
  r1.w = min(r1.w, 1.0f);
  r1.w = (r1.w * r1.w);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb7_7.tint_symbol[214u].w);
  r1.w = exp2(r1.w);
  o1.w = (r1.w * cb7_7.tint_symbol[215u].w);
  r1.w = max(r2.x, 1.0f);
  r0.w = (r1.w / r0.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < v3.x)));
  r2.x = select(-1.0f, 1.0f, (bitcast<u32>(r1.w) != 0u));
  o2.y = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r0.w = (r0.w * r2.x);
  let v_9 = (r0.xyz * v1.yzx);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = -(r2.xyzx);
  let v_11 = fma(r0.zxy, v1.zxy, v_10.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_12 = (r0.xyz * r1.www);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = fma(r0.www, r0.xyz, r1.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  r2 = (r1.yyyy * cb1_1.tint_symbol_1[9u]);
  r2 = fma(r1.xxxx, cb1_1.tint_symbol_1[8u], r2);
  r1 = fma(r1.zzzz, cb1_1.tint_symbol_1[10u], r2);
  o0 = (r1 + cb1_1.tint_symbol_1[11u]);
  let v_14 = cb7_7.tint_symbol[215u];
  o1 = vec4<f32>(v_14.xyz, o1.w);
  o2.x = v2.x;
  o3 = r0.xyz.xyzx;
  let v_15 = (r0.zxy * v1.yzx);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = -(r1.xyzx);
  o4 = fma(r0.yzx, v1.zxy, v_16.xyz).xyzx;
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_2(o0, o1, o2, o3, o4);
}
