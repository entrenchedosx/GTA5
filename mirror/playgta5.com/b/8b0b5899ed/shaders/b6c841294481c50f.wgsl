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

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

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
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[4u].x >= r0.x)));
  v_5((bitcast<u32>(r0.x) != 0u));
  r0.x = dot(v3.xyz, v3.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_6 = (r0.xxx * v3.xyz);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  r1 = textureSample(t2, s2, v2.xy.xyxx.xy);
  let v_7 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  r1.x = dot(r1.xyz, cb12_12.tint_symbol_2[1u].xyz);
  r2.x = (r1.x * cb12_12.tint_symbol_2[0u].z);
  r1.z = (r1.w * cb12_12.tint_symbol_2[0u].y);
  r1.y = (r1.y * v1.w);
  r1.w = (v1.x * cb2_2.tint_symbol[15u].z);
  let v_8 = fma(r0.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_8.xyz, o1.w);
  r2.y = (r1.z * 0.001953125f);
  o2.w = (r1.y * cb2_2.tint_symbol[15u].x);
  r0.x = fma(v3.z, r0.x, -0.34999999403953552246f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_1[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = (r1.w * r0.x);
  r0.y = clamp(fma(r1.xxxx, cb12_12.tint_symbol_2[0u].zzzz, vec4<f32>(0.69999998807907104492f)).y, 0.0f, 1.0f);
  let v_9 = (r0.yy * vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r2.z = cb12_12.tint_symbol_2[0u].x;
  r1.z = 0.97000002861022949219f;
  let v_10 = -(r2.xxyz);
  let v_11 = (r1.xyz + v_10.yzw);
  r0 = vec4<f32>(r0.x, v_11.xyz);
  let v_12 = max(r0.yzw, vec3<f32>());
  r0 = vec4<f32>(r0.x, v_12.xyz);
  let v_13 = fma(r0.yzw, r0.xxx, r2.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = sqrt(r0.xy);
  o2 = vec4<f32>(v_14.xy, o2.zw);
  o1.w = 1.0f;
  o2.z = r0.z;
  o0 = vec4<f32>();
  o3 = vec4<f32>();
}

fn v_5(v_15 : bool) {
  if (v_15) {
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
fn main(@builtin(position) v_16 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_16, v1, v2, v3);
  return tint_symbol_3(o0, o1, o2, o3);
}
