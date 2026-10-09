diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  let v = (v3.zxy + (-(cb1_1.tint_symbol[15u].zxyz)).xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = (r0.xyz * vec3<f32>(0.0f, 1.0f, 0.0f));
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = -(r1.xyzx);
  let v_3 = fma(r0.zxy, vec3<f32>(1.0f, 0.0f, 0.0f), v_2.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = inverseSqrt(r0.w);
  let v_4 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  let v_5 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = (r0.xyz * r1.yzx);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = -(r2.xyzx);
  let v_8 = fma(r0.zxy, r1.zxy, v_7.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_9 = (r0.xyz * r1.www);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r2 = vec4<f32>(((v0 + (-(v3.xyzx)).xyz)).xyz, r2.w);
  let v_11 = fma(r1.xyz, r2.xxx, v3);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = fma(r0.xyz, r2.yyy, r1.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r0.w = (r0.w * 0.35355338454246520996f);
  r0.w = (1.0f / r0.w);
  r0.w = min(r0.w, 1.0f);
  let v_13 = (r0.yyy * cb1_1.tint_symbol[5u].xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = fma(r0.xxx, cb1_1.tint_symbol[4u].xyz, r1.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = fma(r0.zzz, cb1_1.tint_symbol[6u].xyz, r1.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = (r0.xyz + cb1_1.tint_symbol[7u].xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r1.x);
  r0.z = (r0.z + r1.x);
  let v_17 = (r0.xy / r0.zz);
  o0 = vec4<f32>(v_17.xy, o0.zw);
  r0.x = (r1.x + -1.0f);
  o0.z = (r0.x * 0.00022227161389309913f);
  o0.w = 1.0f;
  o1.x = v2.x;
  o1.y = v1.w;
  r0 = vec4<f32>(((v1.xyz * v2.yyy)).xyz, r0.w);
  o2 = ((r0.www * r0.xyz)).xyzx;
}

struct tint_symbol_1 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_1 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_1(o0, o1, o2);
}
