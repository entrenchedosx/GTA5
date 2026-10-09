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

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
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
  r0 = textureSample(t3, s3, v2.xy.xyxx.xy);
  r0.x = dot(v6.xyz, v6.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_6 = (r0.xx * v6.xy);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = (cb12_12.tint_symbol_2[0u].yw * vec2<f32>(0.5f, 0.001953125f));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = (-(r1.xxyx)).xz;
  let v_9 = r2;
  r2 = vec4<f32>(v_8.x, v_9.y, v_8.y, v_9.w);
  r0.z = fma(r0.w, cb12_12.tint_symbol_2[0u].y, r2.x);
  let v_10 = fma(r0.zz, r0.xy, v2.xy);
  r0 = vec4<f32>(v_10.xy, r0.zw);
  r3 = textureSample(t3, s3, r0.xyxx.xy);
  r0 = textureSample(t0, s0, r0.xyxx.xy);
  let v_11 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_12 = r1;
  r1 = vec4<f32>(v_11.x, v_12.y, v_11.y, v_12.w);
  r1.w = dot(r1.xz, r1.xz);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r2.x = max(cb12_12.tint_symbol_2[1u].y, 0.00100000004749745131f);
  let v_13 = (r1.xz * r2.xx);
  let v_14 = r1;
  r1 = vec4<f32>(v_13.x, v_14.y, v_13.y, v_14.w);
  let v_15 = (r1.zzz * v5.xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  let v_16 = fma(r1.xxx, v4.xyz, r4.xyz);
  r4 = vec4<f32>(v_16.xyz, r4.w);
  let v_17 = fma(r1.www, v3.xyz, r4.xyz);
  r1 = vec4<f32>(v_17.x, r1.y, v_17.yz);
  r2.x = dot(r1.xzw, r1.xzw);
  r2.x = inverseSqrt(r2.x);
  let v_18 = (r1.xzw * r2.xxx);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  r1.x = dot(r3.xy, r3.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.00200000009499490261f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  let v_19 = (r0.xyz * r1.xxx);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = (r1.xxx * v1.xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  r1.z = (r1.x * cb12_12.tint_symbol_2[1u].x);
  r5.w = v1.w;
  r0 = (r0 * r5);
  r3.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.w = (r0.w * r3.z);
  o1.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_21 = fma(r4.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_21.xyz, o1.w);
  r0.w = fma(r1.w, r2.x, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_1[3u].z);
  r1.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r0.w = (r0.w * r1.w);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].z);
  r1.w = fma((-(r1.zzzz)).w, 0.5f, 1.0f);
  r1.w = (r0.w * r1.w);
  r1.w = fma(r1.w, -0.5f, 1.0f);
  let v_22 = (r0.xyz * r1.www);
  o0 = vec4<f32>(v_22.xyz, o0.w);
  r0.x = clamp(fma(cb12_12.tint_symbol_2[1u].xxxx, r1.xxxx, vec4<f32>(0.69999998807907104492f)).x, 0.0f, 1.0f);
  let v_23 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_23.xy, r0.zw);
  r2.y = (-(r1.zzzz)).y;
  r2.w = (-(cb12_12.tint_symbol_2[0u].zzzz)).w;
  r0.z = 0.97000002861022949219f;
  let v_24 = (r0.xyz + r2.yzw);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_25.xyz, r0.w);
  r2.x = fma(r0.x, r0.w, r1.z);
  r2.y = fma(r0.y, r0.w, r1.y);
  o2.z = fma(r0.z, r0.w, cb12_12.tint_symbol_2[0u].z);
  let v_26 = sqrt(r2.xy);
  o2 = vec4<f32>(v_26.xy, o2.zw);
  o0.w = r3.x;
  o2.w = r3.x;
  o3 = vec4<f32>();
}

fn v_5(v_27 : bool) {
  if (v_27) {
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
fn main(@builtin(position) v_28 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_28, v1, v2, v3, v4, v5, v6);
  return tint_symbol_3(o0, o1, o2, o3);
}
