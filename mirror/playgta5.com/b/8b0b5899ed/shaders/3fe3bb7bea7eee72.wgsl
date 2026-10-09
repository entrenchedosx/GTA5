diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

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

struct cb5_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb5_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> v7 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v : bool) {
  v7.x = bitcast<f32>(select(0u, 4294967295u, v));
  r0.x = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  let v_1 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).yz + vec2<f32>(1.0f, 2.0f));
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  let v_3 = (r0.zz * v1.xy);
  r0 = vec4<f32>(r0.xy, v_3.xy);
  r1 = textureSample(t4, s4, r0.zwzz.xy);
  r0.z = ((-(r1.xxxx)).z + r1.z);
  r0.x = fma(r0.x, r0.z, r1.x);
  r0.z = fma(v3.z, r0.y, -1.0f);
  r0.z = fma(r0.y, r0.z, 1.0f);
  r0.y = (r0.y * v3.z);
  let v_4 = (r0.xy * cb11_11.tint_symbol_4[2u].xx);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0.x = (r0.z * r0.x);
  r2 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.z = (r2.w * cb11_11.tint_symbol_4[1u].w);
  r3 = textureSample(t0, s0, v1.xy.xyxx.xy);
  let v_5 = (r3.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r1 = vec4<f32>(v_5.xy, r1.z, v_5.z);
  let v_6 = -(r1.xywx);
  let v_7 = fma(r2.xyz, cb11_11.tint_symbol_4[1u].xyz, v_6.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma(r0.zzz, r2.xyz, r1.xyw);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r2 = (r3 * v3.xxxw);
  let v_9 = -(r2.xyxz);
  let v_10 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_9.xyw);
  r1 = vec4<f32>(v_10.xy, r1.z, v_10.z);
  let v_11 = fma(r0.xxx, r1.xyw, r2.xyz);
  r0 = vec4<f32>(v_11.x, r0.y, v_11.yz);
  r2.w = (r2.w * cb2_2.tint_symbol[15u].x);
  let v_12 = ((-(r0.xzwx)).xyz + r1.zzz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = fma(r0.yyy, r1.xyz, r0.xzw);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_14 = bitcast<vec4<u32>>(r0.xxxx);
  o0 = select(r2, v3, (v_14 != vec4<u32>()));
  r0.x = max(cb11_11.tint_symbol_4[4u].w, 0.00100000004749745131f);
  r1 = textureSample(t5, s5, v1.xy.xyxx.xy);
  let v_15 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_16 = r0;
  r0 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  let v_17 = (r0.xx * r0.yz);
  r0 = vec4<f32>(v_17.x, r0.yz, v_17.y);
  r0.y = dot(r0.yz, r0.yz);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.y = sqrt(abs(r0.yyyy).y);
  let v_18 = (r0.www * v6.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = fma(r0.xxx, v5.xyz, r1.xyz);
  r0 = vec4<f32>(v_19.x, r0.y, v_19.yz);
  r1.x = select(1.0f, -1.0f, (bitcast<u32>(v7.x) != 0u));
  let v_20 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = fma(r0.yyy, r1.xyz, r0.xzw);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_22 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_23.xyz, o1.w);
  o1.w = 0.0f;
  r0 = textureSample(t6, s6, v1.xy.xyxx.xy);
  r0.x = (r0.w * 0.01953125f);
  o2.y = sqrt(r0.x);
  o2.z = cb11_11.tint_symbol_4[3u].w;
  o2 = vec4<f32>(0.0f, o2.yz, 1.0f);
  r0.x = (v3.x * cb2_2.tint_symbol[15u].y);
  r0.y = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).y, 0.0f, 1.0f);
  r0.y = (r0.y * r0.x);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_24 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_24.xy, r0.zw);
  let v_25 = sqrt(r0.xy);
  o3 = vec4<f32>(v_25.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>());
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(front_facing) v_26 : bool) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v5, v6, v_26);
  return tint_symbol_5(o0, o1, o2, o3);
}
