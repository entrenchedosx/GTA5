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

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb3_struct {
  tint_symbol_3 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

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
  r0 = textureSample(t0, s0, v3.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_6 = -(cb5_5.tint_symbol_2[4u].xxxx);
  r1.y = fma(r0.w, cb2_2.tint_symbol[15u].x, v_6.y);
  r1.z = (v_6.z + 1.0f);
  r1.z = (r1.z * 0.10000000149011611938f);
  r1.y = (r1.y / r1.z);
  r0.w = fma((-(r0.wwww)).w, cb2_2.tint_symbol[15u].x, r1.y);
  r0.w = fma(cb12_12.tint_symbol_3[2u].z, r0.w, r1.x);
  r1.x = dot(v0.xy, vec2<f32>(0.5f));
  r1.x = fract(r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.5f)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.w < 1.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.x)));
  v_5((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t3, s3, v3.xy.xyxx.xy);
  let v_7 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_3[1u].w, 0.00100000004749745131f);
  let v_8 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_10.xy, r1.z, v_10.z);
  let v_11 = fma(r1.zzz, v4.xyz, r1.xyw);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_12 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  r3 = textureSample(t4, s4, v3.xy.xyxx.xy);
  let v_13 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_13.xy, r3.zw);
  r1.x = dot(r3.xyz, cb12_12.tint_symbol_3[1u].xyz);
  r3.x = (r1.x * cb12_12.tint_symbol_3[0u].z);
  r1.y = (r3.w * cb12_12.tint_symbol_3[0u].y);
  let v_14 = (r0.xyz * v2.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_16 = r4;
  r4 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  let v_17 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = (r2.xyz * vec3<f32>(256.0f));
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = floor(r5.xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = -(r5.xyzx);
  let v_21 = fma(r2.xyz, vec3<f32>(256.0f), v_20.xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = (r2.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r2 = vec4<f32>(v_22.xyz, r2.w);
  let v_23 = floor(r2.xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  r2.x = dot(r2.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r2.x * 0.0039215688593685627f);
  let v_24 = (r5.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_24.xyz, o1.w);
  r3.y = (r1.y * 0.001953125f);
  r4.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_25 = (r4.xz * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_25.xy, r2.zw);
  let v_26 = sqrt(r2.xy);
  o3 = vec4<f32>(v_26.xy, o3.zw);
  r1.y = fma(r1.z, r1.w, -0.34999999403953552246f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r1.y = (r1.y * cb5_5.tint_symbol_2[3u].z);
  r1.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r1.y = (r1.z * r1.y);
  r1.y = (r4.y * r1.y);
  r1.z = fma((-(r3.xxxx)).z, 0.5f, 1.0f);
  r1.z = (r1.z * r1.y);
  r1.y = (r1.y * cb12_12.tint_symbol_3[2u].x);
  r1.z = fma(r1.z, -0.5f, 1.0f);
  let v_27 = (r0.xyz * r1.zzz);
  o0 = vec4<f32>(v_27.xyz, o0.w);
  r0.x = clamp(fma(r1.xxxx, cb12_12.tint_symbol_3[0u].zzzz, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_28 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_28.xy, r0.zw);
  r3.z = cb12_12.tint_symbol_3[0u].x;
  r0.z = 0.97000002861022949219f;
  let v_29 = -(r3.xyzx);
  let v_30 = (r0.xyz + v_29.xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = fma(r0.xyz, r1.yyy, r3.xyz);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  let v_33 = sqrt(r0.xy);
  o2 = vec4<f32>(v_33.xy, o2.zw);
  o0.w = r0.w;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_5(v_34 : bool) {
  if (v_34) {
    discard;
    return;
  }
}

struct tint_symbol_4 {
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
fn main(@builtin(position) v_35 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_35, v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
