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

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0.x = max(cb12_12.tint_symbol_3[1u].x, 0.00100000004749745131f);
  r0.y = dot(v6.xyz, v6.xyz);
  r0.y = inverseSqrt(r0.y);
  let v = (r0.yy * v6.xy);
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  r1 = textureSample(t2, s2, v2.xy.xyxx.xy);
  let v_2 = (cb12_12.tint_symbol_3[0u].xz * vec2<f32>(0.5f, 0.001953125f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = (-(r1.xxyx)).xz;
  let v_4 = r2;
  r2 = vec4<f32>(v_3.x, v_4.y, v_3.y, v_4.w);
  r0.w = fma(r1.w, cb12_12.tint_symbol_3[0u].x, r2.x);
  let v_5 = fma(r0.ww, r0.yz, v2.xy);
  let v_6 = r0;
  r0 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  r3 = textureSample(t2, s2, r0.yzyy.xy);
  r4 = textureSample(t0, s0, r0.yzyy.xy);
  let v_7 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_8 = r0;
  r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.00200000009499490261f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  let v_9 = (r0.xx * r0.yz);
  let v_10 = r1;
  r1 = vec4<f32>(v_9.x, v_10.y, v_9.y, v_10.w);
  r0.x = dot(r0.yz, r0.yz);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = sqrt(abs(r0.xxxx).x);
  let v_11 = (r1.zzz * v5.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = fma(r1.xxx, v4.xyz, r3.xyz);
  r1 = vec4<f32>(v_12.x, r1.y, v_12.yz);
  let v_13 = fma(r0.xxx, v3.xyz, r1.xzw);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = inverseSqrt(r1.x);
  r1.z = fma(r0.z, r1.x, -0.34999999403953552246f);
  let v_14 = (r0.xyz * r1.xxx);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_15.xyz, o1.w);
  r0.x = clamp(((r1.zzzz * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  let v_16 = (r0.ww * v1.xy);
  let v_17 = r0;
  r0 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  let v_18 = (r0.yz * cb2_2.tint_symbol[15u].zy);
  let v_19 = r3;
  r3 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  r3.x = fma(r0.y, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_20 = (r3.xz * vec2<f32>(0.5f));
  let v_21 = r0;
  r0 = vec4<f32>(v_21.x, v_20.xy, v_21.w);
  r0.x = (r0.x * r3.y);
  let v_22 = sqrt(r0.yz);
  o3 = vec4<f32>(v_22.xy, o3.zw);
  r0.y = (r0.w * cb12_12.tint_symbol_3[0u].w);
  r0.z = fma((-(r0.yyyy)).z, 0.5f, 1.0f);
  r0.z = (r0.z * r0.x);
  r0.z = fma(r0.z, -0.5f, 1.0f);
  let v_23 = (r0.www * r4.xyz);
  r1 = vec4<f32>(v_23.x, r1.y, v_23.yz);
  r2.x = (r4.w * v1.w);
  o0.w = (r2.x * cb2_2.tint_symbol[15u].x);
  r0.w = clamp(fma(cb12_12.tint_symbol_3[0u].wwww, r0.wwww, vec4<f32>(0.40000000596046447754f)).w, 0.0f, 1.0f);
  let v_24 = (r0.ww * vec2<f32>(0.5f, 0.48828125f));
  r3 = vec4<f32>(v_24.xy, r3.zw);
  let v_25 = (r0.zzz * r1.xzw);
  o0 = vec4<f32>(v_25.xyz, o0.w);
  o1.w = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r2.y = (-(r0.yyyy)).y;
  r2.w = (-(cb12_12.tint_symbol_3[0u].yyyy)).w;
  r3.z = 0.97000002861022949219f;
  let v_26 = (r2.yzw + r3.xyz);
  r1 = vec4<f32>(v_26.x, r1.y, v_26.yz);
  let v_27 = max(r1.xzw, vec3<f32>());
  r1 = vec4<f32>(v_27.x, r1.y, v_27.yz);
  r2.x = fma(r1.x, r0.x, r0.y);
  r2.y = fma(r1.z, r0.x, r1.y);
  o2.z = fma(r1.w, r0.x, cb12_12.tint_symbol_3[0u].y);
  let v_28 = sqrt(r2.xy);
  o2 = vec4<f32>(v_28.xy, o2.zw);
  o2.w = 1.0f;
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
