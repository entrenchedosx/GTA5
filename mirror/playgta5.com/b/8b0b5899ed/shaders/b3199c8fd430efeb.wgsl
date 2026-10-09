diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0 = textureSample(t4, s4, v1.xy.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w == 0.0f)));
  v((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_1 = -(r1);
  r0 = (r0 + v_1);
  r0 = fma(v4.xxxx, r0, r1);
  r1 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r2 = textureSample(t5, s5, v1.xy.xyxx.xy);
  r1.z = 1.0f;
  let v_2 = ((-(r1.xyxx)).xy + r2.xy);
  r2 = vec4<f32>(v_2.xy, r2.zw);
  r2.z = 0.0f;
  let v_3 = fma(v4.xxx, r2.xyz, r1.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r1.z = dot(r1.xyz, r1.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_4 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_2[0u].z, 0.00100000004749745131f);
  let v_6 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_8.xy, r1.z, v_8.z);
  let v_9 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_10 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_11 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_11.xyz, o1.w);
  r1.x = fma(r1.z, r1.w, -0.34999999403953552246f);
  r1.x = clamp(((r1.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r1.x = (r1.x * cb5_5.tint_symbol_1[3u].z);
  r1.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r1.x = (r1.y * r1.x);
  r1.x = (r1.x * v3.x);
  let v_12 = (r1.xx * vec2<f32>(0.5f, 0.48828125f));
  let v_13 = r1;
  r1 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_14 = (r0.xyz * r1.xxx);
  o0 = vec4<f32>(v_14.xyz, o0.w);
  let v_15 = sqrt(r1.yz);
  o2 = vec4<f32>(v_15.xy, o2.zw);
  o0.w = r0.w;
  o1.w = r0.w;
  o2.z = 0.98000001907348632812f;
  o2.w = r0.w;
  o3 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
}

fn v(v_16 : bool) {
  if (v_16) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_3(o0, o1, o2, o3);
}
