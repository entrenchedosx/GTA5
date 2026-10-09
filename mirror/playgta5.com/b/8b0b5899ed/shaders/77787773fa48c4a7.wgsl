diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb18_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(v.xyz, r1.w);
  r0.w = (r0.w * v3.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[5u].x == 1.0f)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_1 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
    r2 = vec4<f32>(v_1.xy, r2.zw);
    r2.z = 0.0f;
    r2 = textureSample(t2, s2, r2.xyzx.xyz);
  } else {
    let v_2 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
    r3 = vec4<f32>(v_2.xy, r3.zw);
    r3.z = 0.0f;
    r3 = textureSample(t2, s2, r3.xyzx.xyz);
    r4 = vec4<f32>(((v1.xy * vec2<f32>(2.0f))).xy, r4.zw);
    r4.z = 0.0f;
    r4 = textureSample(t2, s2, r4.xyzx.xyz);
    let v_3 = -(r4.xxxx);
    r1.w = (r3.x + v_3.w);
    r2.x = fma(cb13_13.tint_symbol_1[5u].x, r1.w, r4.x);
  }
  r1.w = (cb11_11.tint_symbol_2[0u].x + -2.0f);
  r1.w = fma(cb13_13.tint_symbol_1[5u].x, r1.w, 2.0f);
  r2.y = (cb13_13.tint_symbol_1[3u].z + -2.0f);
  r2.y = fma(cb13_13.tint_symbol_1[5u].x, r2.y, 2.0f);
  r2.x = fma(r2.x, 2.0f, -1.0f);
  r1.w = (r1.w * r2.x);
  r1.w = fma(r1.w, r2.y, 1.0f);
  let v_4 = (r0.xyz * r1.www);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r1.w = clamp(((v1.zzzz * vec4<f32>(4.0f))).w, 0.0f, 1.0f);
  let v_5 = (r0.xyz * cb13_13.tint_symbol_1[17u].xxx);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma((-(r2.xyzx)).xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (r0.xyz * cb13_13.tint_symbol_1[4u].xxx);
  o0 = vec4<f32>(v_7.xyz, o0.w);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_8 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_8.xyz, o1.w);
  o0.w = r0.x;
  o1.w = r0.x;
  o2 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 0.98000001907348632812f), o2.w);
  o2.w = r0.x;
  o3 = vec4<f32>();
}

struct tint_symbol_3 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2, v3);
  return tint_symbol_3(o0, o1, o2, o3);
}
