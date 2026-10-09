diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

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

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

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
  let v_6 = (v2.xy * cb11_11.tint_symbol_4[0u].zw);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r2 = textureSample(t2, s2, r1.xyxx.xy);
  let v_7 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_7.xy);
  let v_8 = (r1.xy * vec2<f32>(3.1700000762939453125f));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r2 = textureSample(t2, s2, r1.xyxx.xy);
  let v_9 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_9.xy, r1.zw);
  let v_10 = (r1.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_10.xy, r1.zw);
  let v_11 = fma(r1.zw, vec2<f32>(0.5f), r1.xy);
  r1 = vec4<f32>(v_11.xy, r1.zw);
  r1.z = fma((-(r1.xxxx)).z, cb11_11.tint_symbol_4[0u].x, 1.0f);
  r0 = (r0 * r1.zzzz);
  r2 = textureSample(t3, s3, v2.xy.xyxx.xy);
  let v_12 = fma(r1.xy, cb11_11.tint_symbol_4[0u].yy, r2.xy);
  r1 = vec4<f32>(v_12.xy, r1.zw);
  let v_13 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_13.xy, r1.zw);
  r1.w = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r2.x = max(cb12_12.tint_symbol_3[0u].w, 0.00100000004749745131f);
  let v_14 = (r1.xy * r2.xx);
  r1 = vec4<f32>(v_14.xy, r1.zw);
  let v_15 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = fma(r1.xxx, v4.xyz, r2.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  let v_17 = fma(r1.www, v3.xyz, r2.xyz);
  r1 = vec4<f32>(v_17.xy, r1.z, v_17.z);
  r2.x = dot(r1.xyw, r1.xyw);
  r2.x = inverseSqrt(r2.x);
  let v_18 = (r1.xyw * r2.xxx);
  r2 = vec4<f32>(r2.x, v_18.xyz);
  r1.x = (r1.z * cb12_12.tint_symbol_3[0u].z);
  r1.y = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).y, 0.0f, 1.0f);
  r0.w = (r0.w * v1.w);
  let v_19 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_20 = r3;
  r3 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_21 = fma(r2.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_21.xyz, o1.w);
  r0.w = (cb12_12.tint_symbol_3[1u].x + -0.20000000298023223877f);
  r0.w = clamp(((r0.wwww * vec4<f32>(10.0f))).w, 0.0f, 1.0f);
  o1.w = (r0.w * r1.y);
  r0.w = (cb12_12.tint_symbol_3[0u].y * 0.001953125f);
  r3.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_22 = (r3.xz * vec2<f32>(0.5f));
  let v_23 = r2;
  r2 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  let v_24 = sqrt(r2.yz);
  o3 = vec4<f32>(v_24.xy, o3.zw);
  r1.y = fma(r1.w, r2.x, -0.34999999403953552246f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r1.y = (r1.y * cb5_5.tint_symbol_2[3u].z);
  r1.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r1.y = (r1.w * r1.y);
  r1.y = (r3.y * r1.y);
  r1.w = fma((-(r1.xxxx)).w, 0.5f, 1.0f);
  r1.w = (r1.w * r1.y);
  r1.y = (r1.y * cb12_12.tint_symbol_3[1u].x);
  r1.w = fma(r1.w, -0.5f, 1.0f);
  let v_25 = (r0.xyz * r1.www);
  o0 = vec4<f32>(v_25.xyz, o0.w);
  r0.x = clamp(fma(cb12_12.tint_symbol_3[0u].zzzz, r1.zzzz, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_26 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_26.xy, r0.zw);
  r2.x = (-(r1.xxxx)).x;
  r2.y = (-(r0.wwww)).y;
  r2.z = (-(cb12_12.tint_symbol_3[0u].xxxx)).z;
  r0.z = 0.97000002861022949219f;
  let v_27 = (r0.xyz + r2.xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_28.xyz, r0.w);
  r2.x = fma(r0.x, r1.y, r1.x);
  r2.y = fma(r0.y, r1.y, r0.w);
  o2.z = fma(r0.z, r1.y, cb12_12.tint_symbol_3[0u].x);
  let v_29 = sqrt(r2.xy);
  o2 = vec4<f32>(v_29.xy, o2.zw);
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
