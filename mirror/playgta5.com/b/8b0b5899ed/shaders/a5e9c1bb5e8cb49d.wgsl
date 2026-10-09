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

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

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
  let v_3 = (v3.xy * cb11_11.tint_symbol_4[0u].zw);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = (r1.xy * vec2<f32>(3.1700000762939453125f));
  r1 = vec4<f32>(r1.xy, v_4.xy);
  r2 = textureSample(t3, s3, r1.xyxx.xy);
  let v_5 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r2 = textureSample(t3, s3, r1.zwzz.xy);
  let v_6 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_6.xy);
  let v_7 = (r1.zw * vec2<f32>(0.5f));
  r1 = vec4<f32>(r1.xy, v_7.xy);
  let v_8 = fma(r1.xy, vec2<f32>(0.5f), r1.zw);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = (r1.xy * cb11_11.tint_symbol_4[0u].yy);
  let v_10 = r1;
  r1 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  r0.w = ((-(r1.xxxx)).w * cb11_11.tint_symbol_4[0u].x);
  r2 = textureSample(t5, s5, v3.xy.xyxx.xy);
  r3 = textureSample(t6, s6, v3.xy.xyxx.xy);
  let v_11 = fma(r1.yz, r3.ww, r2.xy);
  r1 = vec4<f32>(v_11.xy, r1.zw);
  let v_12 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_12.xy, r1.zw);
  r1.z = max(cb12_12.tint_symbol_3[2u].x, 0.00100000004749745131f);
  let v_13 = (r1.zz * r1.xy);
  r1 = vec4<f32>(r1.xy, v_13.xy);
  r1.x = dot(r1.xy, r1.xy);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.x = sqrt(abs(r1.xxxx).x);
  let v_14 = (r1.www * v7.xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = fma(r1.zzz, v6.xyz, r2.xyz);
  r1 = vec4<f32>(r1.x, v_15.xyz);
  let v_16 = fma(r1.xxx, v4.xyz, r1.yzw);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_17 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  r1.x = fma(r1.z, r1.w, -0.34999999403953552246f);
  r1.x = clamp(((r1.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r1.x = (r1.x * cb5_5.tint_symbol_2[3u].z);
  r0.x = dot(r2.xyz, r0.xyz);
  let v_18 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_18.xyz, o1.w);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r2 = (r3.xyxy * r3.xyxy);
  r0.y = fma(r0.w, r3.w, 1.0f);
  r0.z = fma(r2.w, cb12_12.tint_symbol_3[0u].w, 0.00000000999999993923f);
  let v_19 = (r2.xyz * cb12_12.tint_symbol_3[0u].zyx);
  r1 = vec4<f32>(r1.x, v_19.xyz);
  r0.x = (r0.x * r0.z);
  r0.x = exp2(r0.x);
  r0.z = (r1.w * cb12_12.tint_symbol_3[1u].x);
  let v_20 = (r0.zzz * cb12_12.tint_symbol_3[1u].yzw);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  let v_21 = (r0.xxx * r2.xyz);
  r0 = vec4<f32>(v_21.x, r0.y, v_21.yz);
  r2 = textureSample(t0, s0, v3.xy.xyxx.xy);
  r2 = (r0.yyyy * r2);
  let v_22 = fma(r2.xyz, v2.xyz, r0.xzw);
  r0 = vec4<f32>(v_22.x, r0.y, v_22.yz);
  r1.w = (r2.w * v1.w);
  o0.w = (r1.w * cb2_2.tint_symbol[15u].x);
  r1.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r1.x = (r1.w * r1.x);
  let v_23 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_24 = r2;
  r2 = vec4<f32>(v_24.x, v_23.xy, v_24.w);
  r1.x = (r1.x * r2.y);
  r3.x = (r0.y * r1.y);
  r0.y = clamp(fma(r1.yyyy, r0.yyyy, vec4<f32>(0.40000000596046447754f)).y, 0.0f, 1.0f);
  r3.y = (r1.z * 0.001953125f);
  let v_25 = (r0.yy * vec2<f32>(0.5f, 0.48828125f));
  r4 = vec4<f32>(v_25.xy, r4.zw);
  r0.y = fma((-(r3.xxxx)).y, 0.5f, 1.0f);
  r0.y = (r0.y * r1.x);
  r0.y = fma(r0.y, -0.5f, 1.0f);
  let v_26 = (r0.yyy * r0.xzw);
  o0 = vec4<f32>(v_26.xyz, o0.w);
  o1.w = clamp(fma(v4.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r4.z = 0.97000002861022949219f;
  r3.z = cb12_12.tint_symbol_3[0u].x;
  let v_27 = ((-(r3.xyzx)).xyz + r4.xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = fma(r0.xyz, r1.xxx, r3.xyz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = sqrt(r0.xy);
  o2 = vec4<f32>(v_30.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r2.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_31 = (r2.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_31.xy, r0.zw);
  let v_32 = sqrt(r0.xy);
  o3 = vec4<f32>(v_32.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

struct tint_symbol_5 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_5(o0, o1, o2, o3);
}
