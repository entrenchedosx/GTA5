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

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_2 = -(cb5_5.tint_symbol_2[4u].xxxx);
  r1.y = fma(r0.w, cb2_2.tint_symbol[15u].x, v_2.y);
  r1.z = (v_2.z + 1.0f);
  r1.z = (r1.z * 0.10000000149011611938f);
  r1.y = (r1.y / r1.z);
  r1.y = fma((-(r0.wwww)).y, cb2_2.tint_symbol[15u].x, r1.y);
  r1.x = fma(cb12_12.tint_symbol_3[1u].y, r1.y, r1.x);
  r1.y = dot(v0.xy, vec2<f32>(0.5f));
  r1.y = fract(r1.y);
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yx < vec2<f32>(0.5f, 1.0f))));
  let v_4 = r1;
  r1 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r1.x)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.y)));
  v_5((bitcast<u32>(r1.y) != 0u));
  r1.y = dot(v3.xyz, v3.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_6 = (r1.yyy * v3.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r1.z = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  let v_7 = (r1.zz * cb12_12.tint_symbol_3[0u].zw);
  r3 = vec4<f32>(v_7.xy, r3.zw);
  o1.w = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb12_12.tint_symbol_3[0u].x);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].w);
  let v_8 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_9 = r4;
  r4 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  r0.w = (r0.w * v1.z);
  let v_10 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_10.xyz, o1.w);
  r4.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_11 = (r4.xz * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_11.xy, r2.zw);
  let v_12 = sqrt(r2.xy);
  o3 = vec4<f32>(v_12.xy, o3.zw);
  o3.z = clamp(((r0.wwww * vec4<f32>(0.0625f))).z, 0.0f, 1.0f);
  r0.w = fma(v3.z, r1.y, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.w = (r0.w * r1.y);
  r0.w = (r4.y * r0.w);
  r1.y = fma((-(r3.yyyy)).y, 0.5f, 1.0f);
  r1.y = (r0.w * r1.y);
  r1.y = fma(r1.y, -0.5f, 1.0f);
  let v_13 = (r0.xyz * r1.yyy);
  o0 = vec4<f32>(v_13.xyz, o0.w);
  r0.x = clamp(fma(r1.zzzz, cb12_12.tint_symbol_3[0u].wwww, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_14 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_14.xy, r0.zw);
  r3.z = (r3.x * 0.001953125f);
  r3.w = cb12_12.tint_symbol_3[0u].y;
  r0.z = 0.97000002861022949219f;
  let v_15 = -(r3.yzwy);
  let v_16 = (r0.xyz + v_15.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = fma(r0.xyz, r0.www, r3.yzw);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = sqrt(r0.xy);
  o2 = vec4<f32>(v_19.xy, o2.zw);
  o0.w = r1.x;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3.w = 1.00188386440277099609f;
}

fn v_5(v_20 : bool) {
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
fn main(@builtin(position) v_21 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_21, v1, v2, v3);
  return tint_symbol_4(o0, o1, o2, o3);
}
