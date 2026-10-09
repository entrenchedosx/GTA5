diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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

struct cb4_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct_1;

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1 = textureSample(t4, s4, v1.xyxx.xy);
  let v = (v1.zw * cb10_10.tint_symbol_5[0u].zw);
  r2 = vec4<f32>(v.xy, r2.zw);
  r3 = textureSample(t3, s3, r2.xyxx.xy);
  r2.z = fma(r3.x, 2.0f, -1.0f);
  let v_1 = (r2.xy * vec2<f32>(3.1700000762939453125f));
  r2 = vec4<f32>(v_1.xy, r2.zw);
  r3 = textureSample(t3, s3, r2.xyxx.xy);
  r2.x = fma(r3.x, 2.0f, -1.0f);
  r2.x = (r2.x * 0.5f);
  r2.x = fma(r2.z, 0.5f, r2.x);
  r2.x = ((-(r2.xxxx)).x * cb10_10.tint_symbol_5[0u].x);
  r2.x = fma(r2.x, r1.w, 1.0f);
  r0 = (r0 * r2.xxxx);
  r2.y = dot(v2.xyz, v2.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_2 = (r2.yyy * v2.xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  let v_3 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1.x = dot(r1.xyz, cb11_11.tint_symbol_4[3u].xyz);
  r1.x = (r2.x * r1.x);
  let v_4 = (r0.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0 = (r0 * v3.xxxw);
  r1.y = (v3.x * cb2_2.tint_symbol[15u].z);
  r1.x = (r1.x * v3.x);
  r1.x = (r1.x * v2.w);
  r4.x = (r1.x * cb11_11.tint_symbol_4[2u].z);
  r5.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.w = fma(v2.z, r2.y, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r0.w = (r0.w * r1.z);
  r0.w = (r1.y * r0.w);
  r1.y = fma((-(r4.xxxx)).y, 0.5f, 1.0f);
  r1.y = (r0.w * r1.y);
  r1.y = fma(r1.y, -0.5f, 1.0f);
  let v_5 = (r0.xyz * r1.yyy);
  r5 = vec4<f32>(v_5.xyz, r5.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_6 = bitcast<vec4<u32>>(r0.xxxx);
  r2 = select(r5, v3, (v_6 != vec4<u32>()));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r2.w)));
  v_7((bitcast<u32>(r0.x) != 0u));
  r0.x = (v3.x * cb2_2.tint_symbol[15u].y);
  r0.y = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).y, 0.0f, 1.0f);
  r0.y = (r0.y * r0.x);
  let v_8 = fma(r3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_8.xyz, o1.w);
  r4.y = (r1.w * 0.029296875f);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_9 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_9.xy, r0.zw);
  let v_10 = sqrt(r0.xy);
  o3 = vec4<f32>(v_10.xy, o3.zw);
  r0.x = clamp(fma(r1.xxxx, cb11_11.tint_symbol_4[2u].zzzz, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_11 = -(r4.xyxx);
  let v_12 = fma(r0.xx, vec2<f32>(0.5f, 0.48828125f), v_11.xy);
  r0 = vec4<f32>(v_12.xy, r0.zw);
  let v_13 = max(r0.xy, vec2<f32>());
  r0 = vec4<f32>(v_13.xy, r0.zw);
  let v_14 = fma(r0.xy, r0.ww, r4.xy);
  r0 = vec4<f32>(v_14.xy, r0.zw);
  let v_15 = sqrt(r0.xy);
  o2 = vec4<f32>(v_15.xy, o2.zw);
  o0 = r2;
  o1.w = 0.0f;
  o2 = vec4<f32>(o2.xy, vec2<f32>(0.80000001192092895508f, 1.0f));
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_7(v_16 : bool) {
  if (v_16) {
    discard;
    return;
  }
}

struct tint_symbol_6 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v1, v2, v3);
  return tint_symbol_6(o0, o1, o2, o3);
}
