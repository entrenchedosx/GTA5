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
  r0.w = fma((-(r0.wwww)).w, cb2_2.tint_symbol[15u].x, r1.y);
  r2.w = fma(cb12_12.tint_symbol_3[0u].y, r0.w, r1.x);
  r0.w = dot(v0.xy, vec2<f32>(0.5f));
  r0.w = fract(r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.5f)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r2.w < 1.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.y)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r2.w)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r1.y)));
  v_3((bitcast<u32>(r0.w) != 0u));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[4u].x >= r1.x)));
  v_3((bitcast<u32>(r0.w) != 0u));
  r0.w = dot(v3.xyz, v3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_4 = (r0.www * v3.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  o1.w = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  let v_5 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_6 = r3;
  r3 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  let v_7 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_7.xyz, o1.w);
  r3.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_8 = (r3.xz * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = sqrt(r1.xy);
  o3 = vec4<f32>(v_9.xy, o3.zw);
  r0.w = fma(v3.z, r0.w, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r3.y * r0.w);
  let v_10 = (r0.ww * vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_10.xy, r1.zw);
  r0.w = fma(r0.w, -0.5f, 1.0f);
  let v_11 = (r0.www * r0.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = sqrt(r1.xy);
  o2 = vec4<f32>(v_12.xy, o2.zw);
  o2 = vec4<f32>(o2.xy, vec2<f32>(0.98000001907348632812f, 1.0f));
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.0f));
  o0 = r2;
}

fn v_3(v_13 : bool) {
  if (v_13) {
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
fn main(@builtin(position) v_14 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_14, v1, v2, v3);
  return tint_symbol_4(o0, o1, o2, o3);
}
