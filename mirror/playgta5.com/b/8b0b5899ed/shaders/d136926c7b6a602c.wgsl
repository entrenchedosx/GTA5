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

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb3_struct {
  tint_symbol_3 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = inverseSqrt(r0.x);
  let v = -(cb3_3.tint_symbol_1[0u].xyzx);
  let v_1 = fma(v5.xyz, r0.xxx, v.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_2 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.w = max(cb12_12.tint_symbol_3[2u].x, 0.00100000004749745131f);
  r1 = textureSample(t4, s4, v3.xy.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = (r0.ww * r1.xy);
  r1 = vec4<f32>(r1.xy, v_4.xy);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  let v_5 = (r1.www * v7.xyz);
  r1 = vec4<f32>(v_5.xy, r1.z, v_5.z);
  let v_6 = fma(r1.zzz, v6.xyz, r1.xyw);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(r0.www, v4.xyz, r1.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_8 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_8.xy, r1.z, v_8.z);
  r0.w = fma(r1.z, r0.w, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r0.x = dot(r1.xyw, r0.xyz);
  let v_9 = fma(r1.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_9.xyz, o1.w);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r1 = textureSample(t5, s5, v3.xy.xyxx.xy);
  r1 = (r1.xyxy * r1.xyxy);
  let v_10 = fma(r1.xw, cb12_12.tint_symbol_3[0u].zw, vec2<f32>(0.40000000596046447754f, 0.00000000999999993923f));
  let v_11 = r0;
  r0 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  let v_12 = (r1.xyz * cb12_12.tint_symbol_3[0u].zyx);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  r0.x = (r0.x * r0.z);
  r0.y = clamp(r0.yyyy.y, 0.0f, 1.0f);
  let v_13 = (r0.yy * vec2<f32>(0.5f, 0.48828125f));
  r2 = vec4<f32>(v_13.xy, r2.zw);
  r0.x = exp2(r0.x);
  r0.y = (r1.z * cb12_12.tint_symbol_3[1u].x);
  let v_14 = (r0.yyy * cb12_12.tint_symbol_3[1u].yzw);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = (r0.xxx * r3.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r3 = textureSample(t0, s0, v3.xy.xyxx.xy);
  let v_16 = fma(r3.xyz, v2.xyz, r0.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r1.z = (r3.w * v1.w);
  o0.w = (r1.z * cb2_2.tint_symbol[15u].x);
  r1.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r0.w = (r0.w * r1.z);
  let v_17 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_18 = r3;
  r3 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  r0.w = (r0.w * r3.y);
  r1.z = fma((-(r1.xxxx)).z, 0.5f, 1.0f);
  let v_19 = (r1.xy * vec2<f32>(1.0f, 0.001953125f));
  let v_20 = r4;
  r4 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  r1.x = (r0.w * r1.z);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_21 = (r0.xyz * r1.xxx);
  o0 = vec4<f32>(v_21.xyz, o0.w);
  o1.w = clamp(fma(v4.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r2.z = 0.97000002861022949219f;
  r4.w = cb12_12.tint_symbol_3[0u].x;
  let v_22 = -(r4.yzwy);
  let v_23 = (r2.xyz + v_22.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = fma(r0.xyz, r0.www, r4.yzw);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = sqrt(r0.xy);
  o2 = vec4<f32>(v_26.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r3.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_27 = (r3.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_27.xy, r0.zw);
  let v_28 = sqrt(r0.xy);
  o3 = vec4<f32>(v_28.xy, o3.zw);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_4(o0, o1, o2, o3);
}
