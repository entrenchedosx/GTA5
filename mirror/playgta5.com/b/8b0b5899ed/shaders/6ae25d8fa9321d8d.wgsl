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

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  let v = (r0.xyz * cb12_12.tint_symbol_3[0u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0 = (r0 * v3.xxxw);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  v_1((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t3, s3, v1.xyxx.xy);
  let v_2 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  let v_3 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  let v_4 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_4.xy, r1.z, v_4.z);
  let v_5 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_6 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r3 = textureSample(t4, s4, v1.xyxx.xy);
  let v_7 = (r3.xy * r3.xy);
  let v_8 = r4;
  r4 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  r4.w = ((-(r3.zzzz)).w + 1.0f);
  let v_9 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r2.w = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).w, 0.0f, 1.0f);
  r3.y = (r1.y * r2.w);
  r1.y = (r4.y * v3.x);
  let v_10 = ((-(cb12_12.tint_symbol_3[2u].zzzz)).zw + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(r3.xy, v_10.xy);
  r2.w = (r3.z * v3.z);
  let v_11 = (r3.ww * v1.zw);
  r5 = vec4<f32>(v_11.xy, r5.zw);
  r5 = textureSample(t2, s2, r5.xyxx.xy);
  r3.w = (cb5_5.tint_symbol_2[3u].z * cb12_12.tint_symbol_3[2u].z);
  r5.w = ((-(r5.xxxx)).w + r5.z);
  r5.x = fma(r3.w, r5.w, r5.x);
  let v_12 = (r5.xy * cb12_12.tint_symbol_3[2u].xx);
  r5 = vec4<f32>(v_12.xy, r5.zw);
  r3.w = fma(v3.z, r3.z, -1.0f);
  r3.z = fma(r3.z, r3.w, 1.0f);
  r3.w = (r3.z * r5.x);
  let v_13 = -(r0.xyzx);
  let v_14 = fma(cb12_12.tint_symbol_3[3u].xyz, cb12_12.tint_symbol_3[2u].yyy, v_13.xyz);
  r6 = vec4<f32>(v_14.xyz, r6.w);
  let v_15 = fma(r3.www, r6.xyz, r0.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r2.w = (r2.w * cb12_12.tint_symbol_3[2u].x);
  let v_16 = ((-(r0.xxyz)).xzw + r5.zzz);
  r5 = vec4<f32>(v_16.x, r5.y, v_16.yz);
  let v_17 = fma(r2.www, r5.xzw, r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r2.w = fma((-(r5.yyyy)).w, r3.z, 1.0f);
  r4.x = (r1.y * r2.w);
  r3.z = (v3.x * cb12_12.tint_symbol_3[2u].w);
  r3.z = (r4.y * r3.z);
  r3.z = (r3.z * 1.5f);
  r3.w = dot(v4.xyz, v4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_18 = ((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = fma(cb12_12.tint_symbol_3[4u].www, r5.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = -(r5.xyzx);
  let v_21 = fma(v4.xyz, r3.www, v_20.xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_22 = (r3.www * r5.xyz);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  r3.w = dot(r2.xyz, r5.xyz);
  r3.w = clamp(((r3.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r4.y = fma(r4.z, 7.0f, 0.00000000999999993923f);
  r3.w = log2(r3.w);
  r3.w = (r3.w * r4.y);
  r3.w = exp2(r3.w);
  let v_23 = fma(r3.zzz, r3.www, r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_24.xyz, o1.w);
  r3.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_25 = (r3.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_25.xy, r2.zw);
  let v_26 = sqrt(r2.xy);
  o3 = vec4<f32>(v_26.xy, o3.zw);
  r1.z = fma(r1.z, r1.w, -0.34999999403953552246f);
  r1.z = clamp(((r1.zzzz * vec4<f32>(1.53846156597137451172f))).z, 0.0f, 1.0f);
  r1.z = (r1.z * cb5_5.tint_symbol_2[3u].z);
  r1.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r1.z = (r1.w * r1.z);
  r1.x = (r1.x * r1.z);
  r1.z = fma((-(r4.xxxx)).z, 0.5f, 1.0f);
  r1.z = (r1.z * r1.x);
  r1.z = fma(r1.z, -0.5f, 1.0f);
  let v_27 = (r0.xyz * r1.zzz);
  o0 = vec4<f32>(v_27.xyz, o0.w);
  r0.x = clamp(fma(r1.yyyy, r2.wwww, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_28 = -(r4.xzxx);
  let v_29 = fma(r0.xx, vec2<f32>(0.5f, 0.48828125f), v_28.xy);
  r0 = vec4<f32>(v_29.xy, r0.zw);
  r0.z = 0.0f;
  let v_30 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = fma(r0.xyz, r1.xxx, r4.xzw);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = sqrt(r0.xy);
  o2 = vec4<f32>(v_32.xy, o2.zw);
  o0.w = r0.w;
  o1.w = 0.0f;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_1(v_33 : bool) {
  if (v_33) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
