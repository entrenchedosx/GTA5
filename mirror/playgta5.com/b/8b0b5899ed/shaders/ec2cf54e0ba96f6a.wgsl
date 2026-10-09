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

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
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
  r1.z = fma(r2.x, 2.0f, -1.0f);
  let v_7 = (r1.xy * vec2<f32>(3.1700000762939453125f));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  r2 = textureSample(t2, s2, r1.xyxx.xy);
  r1.x = fma(r2.x, 2.0f, -1.0f);
  r1.x = (r1.x * 0.5f);
  r1.x = fma(r1.z, 0.5f, r1.x);
  r1.x = fma((-(r1.xxxx)).x, cb11_11.tint_symbol_4[0u].x, 1.0f);
  r0 = (r0 * r1.xxxx);
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_8 = (r1.xxx * v3.xyz);
  r1 = vec4<f32>(r1.x, v_8.xyz);
  r2.x = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).x, 0.0f, 1.0f);
  r0.w = (r0.w * v1.w);
  let v_9 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_10 = r3;
  r3 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_11 = fma(r1.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_11.xyz, o1.w);
  r0.w = (cb12_12.tint_symbol_3[0u].x + -0.20000000298023223877f);
  r0.w = clamp(((r0.wwww * vec4<f32>(10.0f))).w, 0.0f, 1.0f);
  o1.w = (r0.w * r2.x);
  r3.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_12 = (r3.xz * vec2<f32>(0.5f));
  let v_13 = r1;
  r1 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  let v_14 = sqrt(r1.yz);
  o3 = vec4<f32>(v_14.xy, o3.zw);
  r0.w = fma(v3.z, r1.x, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r3.y * r0.w);
  r1.x = (r0.w * cb12_12.tint_symbol_3[0u].x);
  r0.w = fma(r0.w, -0.5f, 1.0f);
  let v_15 = (r0.www * r0.xyz);
  o0 = vec4<f32>(v_15.xyz, o0.w);
  let v_16 = (r1.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_16.xy, r0.zw);
  let v_17 = sqrt(r0.xy);
  o2 = vec4<f32>(v_17.xy, o2.zw);
  o2 = vec4<f32>(o2.xy, vec2<f32>(0.98000001907348632812f, 1.0f));
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.0f));
}

fn v_5(v_18 : bool) {
  if (v_18) {
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
fn main(@builtin(position) v_19 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v_19, v1, v2, v3);
  return tint_symbol_5(o0, o1, o2, o3);
}
