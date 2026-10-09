diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb7_struct;

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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
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
  r1.w = max(cb12_12.tint_symbol_3[6u].w, 0.00100000004749745131f);
  let v_3 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_5.xy, r1.z, v_5.z);
  let v_6 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_7 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r3 = textureSample(t4, s4, v1.xyxx.xy);
  let v_8 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_8.xy, r3.zw);
  r1.x = dot(r3.xyz, cb12_12.tint_symbol_3[6u].xyz);
  r1.x = (r1.x * cb12_12.tint_symbol_3[5u].y);
  r1.y = (r3.w * cb12_12.tint_symbol_3[5u].x);
  let v_9 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  r2.w = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).w, 0.0f, 1.0f);
  r4.y = (r2.w * r3.y);
  r1.x = (r1.x * v3.x);
  let v_10 = ((-(cb12_12.tint_symbol_3[3u].zzzz)).yz + vec2<f32>(1.0f, 2.0f));
  let v_11 = r3;
  r3 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  r2.w = (r3.y * v3.z);
  let v_12 = (r3.zz * v1.zw);
  r3 = vec4<f32>(r3.xy, v_12.xy);
  r5 = textureSample(t2, s2, r3.zwzz.xy);
  r3.z = (cb5_5.tint_symbol_2[3u].z * cb12_12.tint_symbol_3[3u].z);
  r3.w = ((-(r5.xxxx)).w + r5.z);
  r5.x = fma(r3.z, r3.w, r5.x);
  let v_13 = (r5.xy * cb12_12.tint_symbol_3[3u].xx);
  r3 = vec4<f32>(r3.xy, v_13.xy);
  r4.z = fma(v3.z, r3.y, -1.0f);
  r3.y = fma(r3.y, r4.z, 1.0f);
  r3.z = (r3.y * r3.z);
  let v_14 = -(r0.xyxz);
  let v_15 = fma(cb12_12.tint_symbol_3[4u].xyz, cb12_12.tint_symbol_3[3u].yyy, v_14.xyw);
  r5 = vec4<f32>(v_15.xy, r5.z, v_15.z);
  let v_16 = fma(r3.zzz, r5.xyw, r0.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r2.w = (r2.w * cb12_12.tint_symbol_3[3u].x);
  let v_17 = ((-(r0.xyzx)).xyz + r5.zzz);
  r5 = vec4<f32>(v_17.xyz, r5.w);
  let v_18 = fma(r2.www, r5.xyz, r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r2.w = fma((-(r3.wwww)).w, r3.y, 1.0f);
  r5.x = (r1.x * r2.w);
  let v_19 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_19.xyz, o1.w);
  r5.y = (r1.y * 0.001953125f);
  r4.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_20 = (r4.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_20.xy, r2.zw);
  let v_21 = sqrt(r2.xy);
  o3 = vec4<f32>(v_21.xy, o3.zw);
  r1.y = fma(r1.z, r1.w, -0.34999999403953552246f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r1.y = (r1.y * cb5_5.tint_symbol_2[3u].z);
  r1.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r1.y = (r1.z * r1.y);
  r1.y = (r3.x * r1.y);
  r1.z = fma((-(r5.xxxx)).z, 0.5f, 1.0f);
  r1.z = (r1.z * r1.y);
  r1.z = fma(r1.z, -0.5f, 1.0f);
  let v_22 = (r0.xyz * r1.zzz);
  o0 = vec4<f32>(v_22.xyz, o0.w);
  r0.x = clamp(fma(r1.xxxx, r2.wwww, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  r5.z = cb12_12.tint_symbol_3[4u].w;
  let v_23 = -(r5.xyxx);
  let v_24 = fma(r0.xx, vec2<f32>(0.5f, 0.48828125f), v_23.xy);
  r0 = vec4<f32>(v_24.xy, r0.zw);
  r0.z = 0.0f;
  let v_25 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = fma(r0.xyz, r1.yyy, r5.xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = sqrt(r0.xy);
  o2 = vec4<f32>(v_27.xy, o2.zw);
  o0.w = r0.w;
  o1.w = 0.0f;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_1(v_28 : bool) {
  if (v_28) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
