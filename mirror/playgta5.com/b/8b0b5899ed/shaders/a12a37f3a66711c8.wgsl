diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0.x = max(cb12_12.tint_symbol_2[1u].y, 0.00100000004749745131f);
  r0.y = dot(v6.xyz, v6.xyz);
  r0.y = inverseSqrt(r0.y);
  let v = (r0.yy * v6.xy);
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  r1 = textureSample(t3, s3, v2.xy.xyxx.xy);
  let v_2 = (cb12_12.tint_symbol_2[0u].yw * vec2<f32>(0.5f, 0.001953125f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = (-(r1.xxyx)).xz;
  let v_4 = r2;
  r2 = vec4<f32>(v_3.x, v_4.y, v_3.y, v_4.w);
  r0.w = fma(r1.w, cb12_12.tint_symbol_2[0u].y, r2.x);
  let v_5 = fma(r0.ww, r0.yz, v2.xy);
  let v_6 = r0;
  r0 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  r3 = textureSample(t3, s3, r0.yzyy.xy);
  r4 = textureSample(t0, s0, r0.yzyy.xy);
  let v_7 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_8 = r0;
  r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  let v_9 = (r0.xx * r0.yz);
  r0 = vec4<f32>(v_9.x, r0.yz, v_9.y);
  r0.y = dot(r0.yz, r0.yz);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.y = sqrt(abs(r0.yyyy).y);
  let v_10 = (r0.www * v5.xyz);
  r1 = vec4<f32>(v_10.x, r1.y, v_10.yz);
  let v_11 = fma(r0.xxx, v4.xyz, r1.xzw);
  r0 = vec4<f32>(v_11.x, r0.y, v_11.yz);
  let v_12 = fma(r0.yyy, v3.xyz, r0.xzw);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  r1.x = fma(r0.z, r0.w, -0.34999999403953552246f);
  let v_13 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_14.xyz, o1.w);
  r0.x = clamp(((r1.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_1[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * cb2_2.tint_symbol[15u].z);
  r0.y = dot(r3.xy, r3.xy);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= 0.00200000009499490261f)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r0.z = (r0.y * cb12_12.tint_symbol_2[1u].x);
  r0.w = fma((-(r0.zzzz)).w, 0.5f, 1.0f);
  r0.w = (r0.w * r0.x);
  r0.w = fma(r0.w, -0.5f, 1.0f);
  let v_15 = (r0.yyy * r4.xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  let v_16 = (r0.yyy * v1.xyz);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  r0.y = clamp(fma(cb12_12.tint_symbol_2[1u].xxxx, r0.yyyy, vec4<f32>(0.69999998807907104492f)).y, 0.0f, 1.0f);
  let v_17 = (r0.yy * vec2<f32>(0.5f, 0.48828125f));
  r6 = vec4<f32>(v_17.xy, r6.zw);
  r5.w = v1.w;
  r4 = (r4 * r5);
  let v_18 = (r0.www * r4.xyz);
  o0 = vec4<f32>(v_18.xyz, o0.w);
  r0.y = (r4.w * cb2_2.tint_symbol[15u].x);
  r0.w = (r3.z * r4.w);
  o1.w = (r0.w * cb2_2.tint_symbol[15u].x);
  o0.w = r0.y;
  o2.w = r0.y;
  r2.y = (-(r0.zzzz)).y;
  r2.w = (-(cb12_12.tint_symbol_2[0u].zzzz)).w;
  r6.z = 0.97000002861022949219f;
  let v_19 = (r2.yzw + r6.xyz);
  r1 = vec4<f32>(v_19.x, r1.y, v_19.yz);
  let v_20 = max(r1.xzw, vec3<f32>());
  r1 = vec4<f32>(v_20.x, r1.y, v_20.yz);
  r2.x = fma(r1.x, r0.x, r0.z);
  r2.y = fma(r1.z, r0.x, r1.y);
  o2.z = fma(r1.w, r0.x, cb12_12.tint_symbol_2[0u].z);
  let v_21 = sqrt(r2.xy);
  o2 = vec4<f32>(v_21.xy, o2.zw);
  o3 = vec4<f32>();
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
