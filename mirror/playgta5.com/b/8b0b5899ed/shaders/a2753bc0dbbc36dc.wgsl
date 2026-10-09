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

struct cb5_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
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
  r0.w = fma(cb12_12.tint_symbol_3[4u].w, r0.w, r1.x);
  r1.x = dot(v0.xy, vec2<f32>(0.5f));
  r1.x = fract(r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.5f)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.w < 1.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t3, s3, v3.xy.xyxx.xy);
  let v_4 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_3[4u].x, 0.00100000004749745131f);
  let v_5 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  let v_6 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
  let v_8 = fma(r1.zzz, v4.xyz, r1.xyw);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_9 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r1.x = dot(r0.xyz, cb12_12.tint_symbol_3[2u].xyz);
  r1.y = dot(r0.xyz, cb12_12.tint_symbol_3[3u].xyz);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.5f)));
  r3.x = dot(cb12_12.tint_symbol_3[2u].ww, r1.xx);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.x = (r1.x + r1.x);
  r3.y = ((-(cb12_12.tint_symbol_3[2u].wwww)).y + 1.0f);
  r1.x = fma((-(r1.xxxx)).x, r3.y, 1.0f);
  let v_10 = bitcast<u32>(r2.w);
  let v_11 = r3.x;
  r3.x = select(r1.x, v_11, (v_10 != 0u));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.y < 0.5f)));
  r2.w = dot(cb12_12.tint_symbol_3[3u].ww, r1.yy);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.y = (r1.y + r1.y);
  r3.z = ((-(cb12_12.tint_symbol_3[3u].wwww)).z + 1.0f);
  r1.y = fma((-(r1.yyyy)).y, r3.z, 1.0f);
  let v_12 = bitcast<u32>(r1.x);
  let v_13 = r2.w;
  r3.y = select(r1.y, v_13, (v_12 != 0u));
  r1.x = dot(r3.xy, cb12_12.tint_symbol_3[1u].xy);
  r3.x = (r1.x * cb12_12.tint_symbol_3[0u].z);
  r1.y = clamp(fma(v4.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).y, 0.0f, 1.0f);
  let v_14 = (r0.xyz * v2.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_16 = r4;
  r4 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  let v_17 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_17.xyz, o1.w);
  r2.x = (cb12_12.tint_symbol_3[4u].y + -0.20000000298023223877f);
  r2.x = clamp(((r2.xxxx * vec4<f32>(10.0f))).x, 0.0f, 1.0f);
  o1.w = (r1.y * r2.x);
  r4.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_18 = (r4.xz * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_18.xy, r2.zw);
  let v_19 = sqrt(r2.xy);
  o3 = vec4<f32>(v_19.xy, o3.zw);
  r1.y = fma(r1.z, r1.w, -0.34999999403953552246f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r1.y = (r1.y * cb5_5.tint_symbol_2[3u].z);
  r1.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r1.y = (r1.z * r1.y);
  r1.y = (r4.y * r1.y);
  r1.z = fma((-(r3.xxxx)).z, 0.5f, 1.0f);
  r1.z = (r1.z * r1.y);
  r1.y = (r1.y * cb12_12.tint_symbol_3[4u].y);
  r1.z = fma(r1.z, -0.5f, 1.0f);
  let v_20 = (r0.xyz * r1.zzz);
  o0 = vec4<f32>(v_20.xyz, o0.w);
  r0.x = clamp(fma(r1.xxxx, cb12_12.tint_symbol_3[0u].zzzz, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_21 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_21.xy, r0.zw);
  r3.y = 0.0f;
  r3.z = cb12_12.tint_symbol_3[0u].x;
  r0.z = 0.97000002861022949219f;
  let v_22 = -(r3.xyzx);
  let v_23 = (r0.xyz + v_22.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = fma(r0.xyz, r1.yyy, r3.xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = sqrt(r0.xy);
  o2 = vec4<f32>(v_26.xy, o2.zw);
  o0.w = r0.w;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_3(v_27 : bool) {
  if (v_27) {
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
fn main(@builtin(position) v_28 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_28, v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
