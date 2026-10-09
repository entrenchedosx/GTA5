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

struct cb3_struct {
  tint_symbol_3 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v3.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_2 = -(cb5_5.tint_symbol_2[4u].xxxx);
  r1.y = fma(r0.w, cb2_2.tint_symbol[15u].x, v_2.y);
  r1.z = (v_2.z + 1.0f);
  r1.z = (r1.z * 0.10000000149011611938f);
  r1.y = (r1.y / r1.z);
  r0.w = fma((-(r0.wwww)).w, cb2_2.tint_symbol[15u].x, r1.y);
  r0.w = fma(cb12_12.tint_symbol_3[2u].x, r0.w, r1.x);
  r1.x = dot(v0.xy, vec2<f32>(0.5f));
  r1.x = fract(r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.5f)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.w < 1.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v4.xyz, v4.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_4 = (r1.xxx * v4.xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  r2 = textureSample(t3, s3, v3.xy.xyxx.xy);
  let v_5 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  r2.x = dot(r2.xyz, cb12_12.tint_symbol_3[1u].xyz);
  r3.x = (r2.x * cb12_12.tint_symbol_3[0u].z);
  r2.y = (r2.w * cb12_12.tint_symbol_3[0u].y);
  o1.w = clamp(fma(v4.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  let v_6 = (r0.xyz * v2.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_8 = r4;
  r4 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  let v_9 = fma(r1.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_9.xyz, o1.w);
  r3.y = (r2.y * 0.001953125f);
  r4.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_10 = (r4.xz * vec2<f32>(0.5f));
  let v_11 = r1;
  r1 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  let v_12 = sqrt(r1.yz);
  o3 = vec4<f32>(v_12.xy, o3.zw);
  r1.x = fma(v4.z, r1.x, -0.34999999403953552246f);
  r1.x = clamp(((r1.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r1.x = (r1.x * cb5_5.tint_symbol_2[3u].z);
  r1.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r1.x = (r1.y * r1.x);
  r1.x = (r4.y * r1.x);
  r1.y = fma((-(r3.xxxx)).y, 0.5f, 1.0f);
  r1.y = (r1.y * r1.x);
  r1.y = fma(r1.y, -0.5f, 1.0f);
  let v_13 = (r0.xyz * r1.yyy);
  o0 = vec4<f32>(v_13.xyz, o0.w);
  r0.x = clamp(fma(r2.xxxx, cb12_12.tint_symbol_3[0u].zzzz, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_14 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_14.xy, r0.zw);
  r3.z = cb12_12.tint_symbol_3[0u].x;
  r0.z = 0.97000002861022949219f;
  let v_15 = -(r3.xyzx);
  let v_16 = (r0.xyz + v_15.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = fma(r0.xyz, r1.xxx, r3.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = sqrt(r0.xy);
  o2 = vec4<f32>(v_19.xy, o2.zw);
  o0.w = r0.w;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_3(v_20 : bool) {
  if (v_20) {
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
fn main(@builtin(position) v_21 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_21, v1, v2, v3, v4);
  return tint_symbol_4(o0, o1, o2, o3);
}
