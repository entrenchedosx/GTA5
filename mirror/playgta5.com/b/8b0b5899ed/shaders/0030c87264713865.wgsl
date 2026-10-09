diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb46_struct {
  tint_symbol : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb23_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  r0.x = v2.w;
  r0.y = v3.w;
  r0 = textureSample(t2, s2, r0.xyxx.xy);
  r0.w = (r0.w * v1.w);
  r0.w = (r0.w * cb10_10.tint_symbol_1[22u].x);
  r0.w = (r0.w * cb10_10.tint_symbol_1[22u].w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < cb10_10.tint_symbol_1[22u].y)));
  v((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_1 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = -(r0.xyzx);
  let v_4 = fma(r0.xyz, v4.xyz, v_3.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = fma(v4.www, r2.xyz, r0.xyz);
  o0 = vec4<f32>(v_5.xyz, o0.w);
  let v_6 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_6.xyz, o1.w);
  r0.x = (v5.x + cb3_3.tint_symbol[45u].w);
  r0.x = (r0.x * 0.5f);
  r0.y = 0.0f;
  let v_7 = sqrt(r0.xy);
  o3 = vec4<f32>(v_7.xy, o3.zw);
  o0.w = r0.w;
  o1.w = 1.0f;
  o2 = vec4<f32>(0.0f, 0.0f, 0.98000001907348632812f, 1.0f);
  o3.z = 0.0f;
  o3.w = (cb10_10.tint_symbol_1[22u].z * 0.49607843160629272461f);
}

fn v(v_8 : bool) {
  if (v_8) {
    discard;
    return;
  }
}

struct tint_symbol_2 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v1, v2, v3, v4, v5);
  return tint_symbol_2(o0, o1, o2, o3);
}
