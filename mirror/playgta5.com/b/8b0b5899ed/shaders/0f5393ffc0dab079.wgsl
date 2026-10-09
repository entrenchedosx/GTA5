diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v.xyz);
  let v_1 = (r0.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r0.w = (r0.w * v3.w);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r2.w = (r0.w * cb2_2.tint_symbol[16u].y);
  r0.w = fma(v2.z, r1.x, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].z);
  r1.x = fma(r0.w, -0.5f, 1.0f);
  let v_2 = (r0.xyz * r1.xxx);
  r2 = vec4<f32>(v_2.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_3 = bitcast<vec4<u32>>(r0.xxxx);
  r2 = select(r2, v3, (v_3 != vec4<u32>()));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r2.w)));
  v_4((bitcast<u32>(r0.x) != 0u));
  r3 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * cb2_2.tint_symbol[15u].y);
  let v_5 = fma(r1.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_5.xyz, o1.w);
  r1.y = (r3.w * 0.1953125f);
  r0.x = (cb2_2.tint_symbol[15u].z + cb3_3.tint_symbol_1[45u].w);
  let v_6 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = sqrt(r0.xy);
  o3 = vec4<f32>(v_7.xy, o3.zw);
  o3.z = clamp(((v3.xxxx * vec4<f32>(0.015625f))).z, 0.0f, 1.0f);
  r1.x = 0.0f;
  let v_8 = ((-(r1.xyxx)).xy + vec2<f32>(0.20000000298023223877f, 0.1953125f));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  let v_9 = max(r0.xy, vec2<f32>());
  r0 = vec4<f32>(v_9.xy, r0.zw);
  let v_10 = fma(r0.xy, r0.ww, r1.xy);
  r0 = vec4<f32>(v_10.xy, r0.zw);
  let v_11 = sqrt(r0.xy);
  o2 = vec4<f32>(v_11.xy, o2.zw);
  o0 = r2;
  o1.w = 0.0f;
  o2 = vec4<f32>(o2.xy, vec2<f32>(1.0f));
  o3.w = 1.00188386440277099609f;
}

fn v_4(v_12 : bool) {
  if (v_12) {
    discard;
    return;
  }
}

struct tint_symbol_5 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3);
  return tint_symbol_5(o0, o1, o2, o3);
}
