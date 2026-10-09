diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

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

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
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
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[4u].x >= r1.x)));
  v_5((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_6 = (r1.xxx * v3.xyz);
  r1 = vec4<f32>(r1.x, v_6.xyz);
  r2.x = dot(v4.xyz, v4.xyz);
  r2.x = inverseSqrt(r2.x);
  let v_7 = (r2.xxx * v4.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r2.w = dot((-(r2.xyzx)).xyz, r1.yzw);
  r2.w = (r2.w + r2.w);
  let v_8 = -(r2.wwww);
  let v_9 = -(r2.xyzx);
  let v_10 = fma(r1.yzw, v_8.xyz, v_9.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r2.y = dot(r2.xyz, r2.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_11 = fma(r2.xz, r2.yy, vec2<f32>(1.0f));
  r2 = vec4<f32>(v_11.xy, r2.zw);
  let v_12 = (r2.xy * vec2<f32>(-0.5f));
  r2 = vec4<f32>(v_12.xy, r2.zw);
  r2 = textureSample(t2, s2, r2.xyxx.xy);
  r0.w = (r0.w * v1.w);
  r2.w = (v1.x * cb2_2.tint_symbol[15u].z);
  let v_13 = fma(r2.xyz, cb12_12.tint_symbol_2[0u].xxx, r0.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_14 = fma(r1.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_14.xyz, o1.w);
  r1.x = fma(v3.z, r1.x, -0.34999999403953552246f);
  r1.x = clamp(((r1.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r1.x = (r1.x * cb5_5.tint_symbol_1[3u].z);
  r1.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r1.x = (r1.y * r1.x);
  r1.x = (r2.w * r1.x);
  let v_15 = (r1.xx * vec2<f32>(0.5f, 0.48828125f));
  let v_16 = r1;
  r1 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_17 = (r0.xyz * r1.xxx);
  o0 = vec4<f32>(v_17.xyz, o0.w);
  let v_18 = sqrt(r1.yz);
  o2 = vec4<f32>(v_18.xy, o2.zw);
  o0.w = r0.w;
  o1.w = r0.w;
  o2.z = 0.98000001907348632812f;
  o2.w = r0.w;
  o3 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
}

fn v_5(v_19 : bool) {
  if (v_19) {
    discard;
    return;
  }
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
fn main(@builtin(position) v_20 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_20, v1, v2, v3, v4);
  return tint_symbol_3(o0, o1, o2, o3);
}
