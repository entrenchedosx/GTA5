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

struct cb5_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb5_struct_1;

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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1 = textureSample(t3, s3, v1.xy.xyxx.xy);
  let v = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb11_11.tint_symbol_4[4u].w, 0.00100000004749745131f);
  let v_1 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  let v_2 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_2.xyz, r2.w);
  let v_3 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_3.xy, r1.z, v_3.z);
  let v_4 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_5 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r3 = textureSample(t4, s4, v1.xy.xyxx.xy);
  let v_6 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_6.xy, r3.zw);
  r1.x = dot(r3.xyz, cb11_11.tint_symbol_4[4u].xyz);
  r1.x = (r1.x * cb11_11.tint_symbol_4[3u].z);
  let v_7 = (r0.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r0 = (r0 * v3.xxxw);
  r1.y = (v3.x * cb2_2.tint_symbol[15u].z);
  r1.x = (r1.x * v3.x);
  r1.x = (r1.x * v2.w);
  r3.x = (r1.x * cb11_11.tint_symbol_4[2u].z);
  r4.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.w = fma(r1.z, r1.w, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r0.w = (r0.w * r1.z);
  r0.w = (r1.y * r0.w);
  r1.y = fma((-(r3.xxxx)).y, 0.5f, 1.0f);
  r1.y = (r0.w * r1.y);
  r1.y = fma(r1.y, -0.5f, 1.0f);
  let v_8 = (r0.xyz * r1.yyy);
  r4 = vec4<f32>(v_8.xyz, r4.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_9 = bitcast<vec4<u32>>(r0.xxxx);
  r4 = select(r4, v3, (v_9 != vec4<u32>()));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r4.w)));
  v_10((bitcast<u32>(r0.x) != 0u));
  r0.x = (r3.w * cb11_11.tint_symbol_4[3u].y);
  r0.y = (v3.x * cb2_2.tint_symbol[15u].y);
  r0.z = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).z, 0.0f, 1.0f);
  r5.y = (r0.z * r0.y);
  let v_11 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_11.xyz, o1.w);
  r3.y = (r0.x * 0.001953125f);
  r5.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_12 = (r5.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_12.xy, r0.zw);
  let v_13 = sqrt(r0.xy);
  o3 = vec4<f32>(v_13.xy, o3.zw);
  r0.x = clamp(fma(r1.xxxx, cb11_11.tint_symbol_4[2u].zzzz, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  r3.z = cb11_11.tint_symbol_4[3u].x;
  let v_14 = -(r3.xyxx);
  let v_15 = fma(r0.xx, vec2<f32>(0.5f, 0.48828125f), v_14.xy);
  r0 = vec4<f32>(v_15.xy, r0.zw);
  r0.z = 0.0f;
  let v_16 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = fma(r0.xyz, r0.www, r3.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = sqrt(r0.xy);
  o2 = vec4<f32>(v_18.xy, o2.zw);
  o0 = r4;
  o1.w = 0.0f;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_10(v_19 : bool) {
  if (v_19) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3);
}
