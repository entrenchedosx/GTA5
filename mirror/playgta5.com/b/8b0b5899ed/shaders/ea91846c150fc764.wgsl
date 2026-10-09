diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb23_struct {
  tint_symbol : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb2_struct;

struct cb6_struct {
  tint_symbol_2 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb6_struct;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb5_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v11 : vec4<f32>;

var<private> v12 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>, v9 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v11 = v_1;
  x0[0u].x = v12[0u];
  x0[0u].y = v12[1u];
  x0[0u].z = v12[2u];
  x0[0u].w = v12[3u];
  let v_2 = fma(v9.xyz, v7.zzz, v0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (v11.xy * cb7_7.tint_symbol_1[1u].xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r2 = textureSample(t12, s12, r1.xyxx.xy);
  r0.w = ((-(r2.xxxx)).w + 1.0f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb9_9.tint_symbol_2[5u].z))));
  r1.w = ((-(r0.wwww)).w + 1.0f);
  let v_4 = bitcast<u32>(r1.z);
  let v_5 = r1.w;
  r0.w = select(r0.w, v_5, (v_4 != 0u));
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = fma(r0.w, cb7_7.tint_symbol_1[0u].z, cb7_7.tint_symbol_1[0u].w);
  r0.w = (1.0f / r0.w);
  r0.w = (r0.w + (-(v7.wwww)).w);
  r0.w = fma(r0.w, r0.w, (-(v7.xxxx)).w);
  let v_6 = -(cb8_8.tint_symbol_3[4u].wwww);
  r0.w = (r0.w + v_6.w);
  r0.w = clamp(((r0.wwww * v5.xxxx)).w, 0.0f, 1.0f);
  r1.z = ((-(r0.wwww)).z + 1.0f);
  r1.w = ((-(cb8_8.tint_symbol_3[4u].zzzz)).w + 1.0f);
  r0.w = fma(r1.z, r1.w, r0.w);
  let v_7 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r2 = textureSample(t5, s5, v1.xyxx.xy);
  let v_8 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r3 = textureSample(t5, s5, v1.zwzz.xy);
  let v_9 = -(r2.xyzx);
  let v_10 = fma(r3.xyz, r3.xyz, v_9.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = fma(v3.xy.xxx, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = (r2.xyz * v5.yzw);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  r0.w = dot(r3.xyz, vec3<f32>(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
  r0.w = clamp(((r0.wwww + vec4<f32>(-0.05000000074505805969f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * v3.y);
  let v_13 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = fma(r0.xyz, r2.xyz, r3.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r1 = textureSample(t4, s4, r1.xyxx.xy);
    r0.w = (r1.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r0.w = (r0.w * v4.w);
  } else {
    r0.w = v4.w;
  }
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = (r0.w * v0.w);
  let v_15 = (r0.xyz * r0.www);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  r0.w = clamp(vec4<f32>(v_16, v_16, v_16, v_16).w, 0.0f, 1.0f);
  let v_17 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_17.xyz, o0.w);
  o2 = (r0.w * cb2_2.tint_symbol[22u].x);
  o0.w = r0.w;
  o1 = v7.w;
}

struct tint_symbol_4 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) @interpolate(flat) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(9u) v9 : vec4<f32>, @builtin(position) v_18 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v3, v4, v5, v7, v9, v_18);
  return tint_symbol_4(o0, o1, o2);
}
