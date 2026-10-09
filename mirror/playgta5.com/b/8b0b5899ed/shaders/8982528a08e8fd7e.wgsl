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

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  r0 = textureSample(t6, s6, v1.zwzz.xy);
  r0.y = fma(r0.y, 1.5f, 0.5f);
  r1 = textureSample(t2, s2, v1.xyxx.xy);
  r0.z = dot(r1.ww, r0.yy);
  r0.y = ((-(r0.yyyy)).y + r0.z);
  r0.y = clamp(((r0.yyyy + vec4<f32>(0.5f))).y, 0.0f, 1.0f);
  r0.y = clamp(fma(r0.yyyy, r0.xxxx, r0.xxxx).y, 0.0f, 1.0f);
  r2 = textureSample(t4, s4, v1.xyxx.xy);
  let v = ((-(r1.xyzx)).xyz + r2.xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  r0.z = fma(r2.w, 1.5f, 0.5f);
  let v_1 = fma(r0.yyy, r2.xyz, r1.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  r0.y = dot(r1.ww, r0.zz);
  r0.y = ((-(r0.zzzz)).y + r0.y);
  r0.y = clamp(((r0.yyyy + vec4<f32>(0.5f))).y, 0.0f, 1.0f);
  r0.x = clamp(fma(r0.yyyy, r0.xxxx, r0.xxxx).x, 0.0f, 1.0f);
  r2 = textureSample(t5, s5, v1.xyxx.xy);
  r3 = textureSample(t3, s3, v1.xyxx.xy);
  let v_2 = -(r3.xxyx);
  let v_3 = (r2.xy + v_2.yz);
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  let v_5 = fma(r0.xx, r0.yz, r3.xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0.z = max(cb12_12.tint_symbol_3[0u].z, 0.00100000004749745131f);
  let v_7 = (r0.zz * r0.xy);
  r0 = vec4<f32>(r0.xy, v_7.xy);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = sqrt(abs(r0.xxxx).x);
  let v_8 = (r0.www * v5.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = fma(r0.zzz, v4.xyz, r2.xyz);
  r0 = vec4<f32>(r0.x, v_9.xyz);
  let v_10 = fma(r0.xxx, v2.xyz, r0.yzw);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  r1.w = fma(r0.z, r0.w, -0.34999999403953552246f);
  let v_11 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_12.xyz, o1.w);
  r0.x = clamp(((r1.wwww * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * v3.x);
  let v_13 = -(cb12_12.tint_symbol_3[0u].yyyy);
  r0.y = fma(v_13.y, 0.5f, 1.0f);
  r0.y = (r0.y * r0.x);
  r0.y = fma(r0.y, -0.5f, 1.0f);
  let v_14 = (r0.yyy * r1.xyz);
  o0 = vec4<f32>(v_14.xyz, o0.w);
  o0.w = cb2_2.tint_symbol[15u].x;
  o1.w = 0.0f;
  r0.y = clamp(((cb12_12.tint_symbol_3[0u].yyyy + vec4<f32>(0.40000000596046447754f))).y, 0.0f, 1.0f);
  r1.y = v_13.y;
  r0.z = (cb12_12.tint_symbol_3[0u].x * 0.001953125f);
  r1.z = (-(r0.zzzz)).z;
  let v_15 = fma(r0.yy, vec2<f32>(0.5f, 0.48828125f), r1.yz);
  r1 = vec4<f32>(v_15.xy, r1.zw);
  r1.z = 0.97000002861022949219f;
  let v_16 = max(r1.xyz, vec3<f32>());
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r2.y = fma(r1.y, r0.x, r0.z);
  r2.x = fma(r1.x, r0.x, cb12_12.tint_symbol_3[0u].y);
  r0.x = (r0.x * r1.z);
  o2.z = r0.x;
  let v_17 = sqrt(r2.xy);
  o2 = vec4<f32>(v_17.xy, o2.zw);
  o2.w = 1.0f;
  r0.x = (v3.x + cb3_3.tint_symbol_1[45u].w);
  r0.y = v3.y;
  let v_18 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_18.xy, r0.zw);
  let v_19 = sqrt(r0.xy);
  o3 = vec4<f32>(v_19.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5);
  return tint_symbol_4(o0, o1, o2, o3);
}
