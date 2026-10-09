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

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0.x = (cb5_5.tint_symbol_1[3u].z * cb11_11.tint_symbol_3[2u].z);
  let v = ((-(cb11_11.tint_symbol_3[2u].zzzz)).yz + vec2<f32>(1.0f, 2.0f));
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  let v_2 = (r0.zz * v1.xy);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  r1 = textureSample(t3, s3, r0.zwzz.xy);
  r0.z = ((-(r1.xxxx)).z + r1.z);
  r1.x = fma(r0.x, r0.z, r1.x);
  let v_3 = (r1.xy * cb11_11.tint_symbol_3[2u].xx);
  let v_4 = r0;
  r0 = vec4<f32>(v_3.x, v_4.y, v_3.y, v_4.w);
  r0.w = fma(v3.z, r0.y, -1.0f);
  r0.w = fma(r0.y, r0.w, 1.0f);
  r0.y = (r0.y * v3.z);
  r0.y = (r0.y * cb11_11.tint_symbol_3[2u].x);
  r0.x = (r0.w * r0.x);
  r0.z = fma((-(r0.zzzz)).z, r0.w, 1.0f);
  r2 = textureSample(t0, s0, v1.xy.xyxx.xy);
  let v_5 = (r2.xyz * cb11_11.tint_symbol_3[0u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r2 = (r2 * v3.xxxw);
  let v_6 = -(r2.xyxz);
  let v_7 = fma(cb11_11.tint_symbol_3[3u].xyz, cb11_11.tint_symbol_3[2u].yyy, v_6.xyw);
  r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
  let v_8 = fma(r0.xxx, r1.xyw, r2.xyz);
  r1 = vec4<f32>(v_8.xy, r1.z, v_8.z);
  r2.w = (r2.w * cb2_2.tint_symbol[15u].x);
  let v_9 = ((-(r1.xywx)).xyz + r1.zzz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = fma(r0.yyy, r3.xyz, r1.xyw);
  r0 = vec4<f32>(v_10.xy, r0.z, v_10.z);
  r1 = textureSample(t4, s4, v1.xy.xyxx.xy);
  let v_11 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_11.xy, r1.zw);
  r1.w = (r1.w * cb11_11.tint_symbol_3[4u].x);
  r3.y = (r1.w * 0.001953125f);
  r1.x = dot(r1.xyz, cb11_11.tint_symbol_3[5u].xyz);
  r1.x = (r1.x * cb11_11.tint_symbol_3[4u].y);
  r1.x = (r1.x * v3.x);
  r1.x = (r1.x * v2.w);
  r3.x = (r0.z * r1.x);
  r0.z = clamp(fma(r1.xxxx, r0.zzzz, vec4<f32>(0.69999998807907104492f)).z, 0.0f, 1.0f);
  let v_12 = -(r3.xyxx);
  let v_13 = fma(r0.zz, vec2<f32>(0.5f, 0.48828125f), v_12.xy);
  r1 = vec4<f32>(v_13.xy, r1.zw);
  r0.z = fma((-(r3.xxxx)).z, 0.5f, 1.0f);
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = inverseSqrt(r1.w);
  r3.w = fma(v2.z, r1.w, -0.34999999403953552246f);
  let v_14 = (r1.www * v2.xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = fma(r4.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_15.xyz, o1.w);
  r1.w = clamp(((r3.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r1.w = (r1.w * cb5_5.tint_symbol_1[3u].z);
  r3.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r1.w = (r1.w * r3.w);
  r3.w = (v3.x * cb2_2.tint_symbol[15u].z);
  r1.w = (r1.w * r3.w);
  r0.z = (r0.z * r1.w);
  r0.z = fma(r0.z, -0.5f, 1.0f);
  let v_16 = (r0.zzz * r0.xyw);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_2[4u].x) | bitcast<u32>(cb12_12.tint_symbol_2[4u].y)));
  let v_17 = bitcast<vec4<u32>>(r0.xxxx);
  o0 = select(r2, v3, (v_17 != vec4<u32>()));
  o1.w = r2.w;
  o2.w = r2.w;
  r1.z = 0.0f;
  let v_18 = max(r1.xyz, vec3<f32>());
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r3.z = cb11_11.tint_symbol_3[3u].w;
  let v_19 = fma(r0.xyz, r1.www, r3.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = sqrt(r0.xy);
  o2 = vec4<f32>(v_20.xy, o2.zw);
  o2.z = r0.z;
  o3 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3);
  return tint_symbol_4(o0, o1, o2, o3);
}
