diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb4_struct;

struct cb2_struct {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = max(v0.xy, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1u)));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) << 1u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) + bitcast<i32>(r0.y)));
  r0.x = dot(cb2_2.tint_symbol[0u], icb0[bitcast<i32>(r0.x)]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  v_5((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[4u].x >= r1.x)));
  v_5((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t3, s3, v2.xy.xyxx.xy);
  r1.x = dot(cb13_13.tint_symbol_3[0u], r1);
  r2 = textureSample(t4, s4, v2.xy.xyxx.xy);
  r1.y = dot(cb13_13.tint_symbol_3[1u], r2);
  r1.x = (r1.y + r1.x);
  r2 = textureSample(t5, s5, v2.xy.xyxx.xy);
  r1.y = dot(cb13_13.tint_symbol_3[2u], r2);
  r2 = textureSample(t6, s6, v2.xy.xyxx.xy);
  r1.z = dot(cb13_13.tint_symbol_3[3u], r2);
  r1.y = (r1.z + r1.y);
  r2 = textureSample(t9, s9, v2.xy.xyxx.xy);
  r3 = textureSample(t7, s7, v2.xy.xyxx.xy);
  let v_6 = ((-(r2.xxxy)).zw + r3.xy);
  r1 = vec4<f32>(r1.xy, v_6.xy);
  let v_7 = fma(r1.xx, r1.zw, r2.xy);
  let v_8 = r1;
  r1 = vec4<f32>(v_7.x, v_8.y, v_7.y, v_8.w);
  r2 = textureSample(t8, s8, v2.xy.xyxx.xy);
  let v_9 = ((-(r1.xzxx)).xy + r2.xy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  let v_10 = fma(r1.yy, r2.xy, r1.xz);
  r1 = vec4<f32>(v_10.xy, r1.zw);
  let v_11 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_11.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_12 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_12.xy, r1.zw);
  let v_13 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_14.xy, r1.z, v_14.z);
  let v_15 = fma(r1.zzz, v3.xyz, r1.xyw);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_16 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  r3 = textureSample(t10, s10, v2.xy.xyxx.xy);
  let v_17 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_17.xy, r3.zw);
  r1.x = dot(r3.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r3.x = (r1.x * cb12_12.tint_symbol_4[0u].z);
  r1.y = (r3.w * cb12_12.tint_symbol_4[0u].y);
  o1.w = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r0.w = (r0.w * v1.w);
  let v_18 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_19 = r4;
  r4 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_20 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_20.xyz, o1.w);
  r3.y = (r1.y * 0.001953125f);
  r4.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_21 = (r4.xz * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_21.xy, r2.zw);
  let v_22 = sqrt(r2.xy);
  o3 = vec4<f32>(v_22.xy, o3.zw);
  r0.w = fma(r1.z, r1.w, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.w = (r0.w * r1.y);
  r0.w = (r4.y * r0.w);
  r1.y = fma((-(r3.xxxx)).y, 0.5f, 1.0f);
  r1.y = (r0.w * r1.y);
  r1.y = fma(r1.y, -0.5f, 1.0f);
  let v_23 = (r0.xyz * r1.yyy);
  o0 = vec4<f32>(v_23.xyz, o0.w);
  r0.x = clamp(fma(r1.xxxx, cb12_12.tint_symbol_4[0u].zzzz, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_24 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_24.xy, r0.zw);
  r3.z = cb12_12.tint_symbol_4[0u].x;
  r0.z = 0.97000002861022949219f;
  let v_25 = -(r3.xyzx);
  let v_26 = (r0.xyz + v_25.xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = fma(r0.xyz, r0.www, r3.xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = sqrt(r0.xy);
  o2 = vec4<f32>(v_29.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_5(v_30 : bool) {
  if (v_30) {
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
fn main(@builtin(position) v_31 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v_31, v1, v2, v3, v4, v5);
  return tint_symbol_5(o0, o1, o2, o3);
}
