diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb23_struct {
  tint_symbol : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb6_struct {
  tint_symbol_1 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb6_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v12 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>, v9 : vec4<f32>) {
  x0[0u].x = v12[0u];
  x0[0u].y = v12[1u];
  x0[0u].z = v12[2u];
  x0[0u].w = v12[3u];
  r0.x = (cb8_8.tint_symbol_1[5u].z + 0.00100000004749745131f);
  r1 = textureSample(t5, s5, v1.xyxx.xy);
  let v = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v.xyz, r1.w);
  r2.x = dot(r1.xyz, vec3<f32>(1.0f));
  let v_1 = -(r2.xxxx);
  r0.x = (r0.x + v_1.x);
  r3 = textureSample(t5, s5, v1.zwzz.xy);
  let v_2 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  r2.y = dot(r3.xyz, vec3<f32>(1.0f));
  let v_3 = -(cb8_8.tint_symbol_1[5u].yyyy);
  let v_4 = (r2.xy + v_3.yz);
  let v_5 = r0;
  r0 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = clamp(((r0.xyzx * vec4<f32>(10000.0f, 10000.0f, 10000.0f, 0.0f))).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = -(r2.xyxx);
  let v_8 = fma(r0.yz, r0.xx, v_7.xy);
  r0 = vec4<f32>(v_8.xy, r0.zw);
  let v_9 = fma(cb8_8.tint_symbol_1[5u].ww, r0.xy, r2.xy);
  r0 = vec4<f32>(v_9.xy, r0.zw);
  r3.w = r0.y;
  r1.w = r0.x;
  r0 = (-(r1) + r3);
  r0 = fma(v3.xy.xxxx, r0, r1);
  let v_10 = (r0.xyz * v5.yzw);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  r1.w = dot(r1.xyz, vec3<f32>(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
  r1.w = clamp(((r1.wwww + vec4<f32>(-0.05000000074505805969f))).w, 0.0f, 1.0f);
  r1.w = (r1.w * v3.y);
  let v_11 = fma(v9.xyz, v7.zzz, v0.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  r2.w = v0.w;
  r0 = (r0 * r2);
  let v_12 = fma(r1.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r0.w = clamp(r0.wwww.w, 0.0f, 1.0f);
  let v_13 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_13.xyz, o0.w);
  o0.w = r0.w;
  o2 = (r0.w * cb2_2.tint_symbol[22u].x);
  o1 = v7.w;
}

struct tint_symbol_2 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(5u) @interpolate(flat) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(9u) v9 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v3, v5, v7, v9);
  return tint_symbol_2(o0, o1, o2);
}
