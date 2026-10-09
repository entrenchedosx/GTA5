diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

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

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r1 = textureSample(t0, s0, v1.xy.xyxx.xy);
  let v = (r1.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  r0.w = (r0.w * cb11_11.tint_symbol_4[1u].w);
  let v_1 = -(r2.xyzx);
  let v_2 = fma(r0.xyz, cb11_11.tint_symbol_4[1u].xyz, v_1.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(r0.www, r0.xyz, r2.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r0 = (r1 * v3.xxxw);
  let v_4 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1.z = (r1.x * v3.z);
  let v_5 = (r1.yy * v1.xy);
  let v_6 = r1;
  r1 = vec4<f32>(v_6.x, v_5.x, v_6.z, v_5.y);
  r2 = textureSample(t4, s4, r1.ywyy.xy);
  r1.y = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  r1.w = ((-(r2.xxxx)).w + r2.z);
  r1.y = fma(r1.y, r1.w, r2.x);
  r1.y = (r1.y * cb11_11.tint_symbol_4[2u].x);
  r1.w = fma(v3.z, r1.x, -1.0f);
  r1.x = fma(r1.x, r1.w, 1.0f);
  r1.x = (r1.x * r1.y);
  let v_7 = -(r0.xyxz);
  let v_8 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_7.xyw);
  r2 = vec4<f32>(v_8.xy, r2.z, v_8.z);
  let v_9 = fma(r1.xxx, r2.xyw, r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  r1.x = (r1.z * cb11_11.tint_symbol_4[2u].x);
  let v_10 = ((-(r0.xxyz)).yzw + r2.zzz);
  r1 = vec4<f32>(r1.x, v_10.xyz);
  let v_11 = fma(r1.xxx, r1.yzw, r0.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r1.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_12 = bitcast<vec4<u32>>(r0.xxxx);
  r0 = select(r1, v3, (v_12 != vec4<u32>()));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  v_13((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t5, s5, v1.xy.xyxx.xy);
  let v_14 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_14.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb11_11.tint_symbol_4[4u].w, 0.00100000004749745131f);
  let v_15 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_15.xy, r1.zw);
  let v_16 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  let v_17 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_17.xy, r1.z, v_17.z);
  let v_18 = fma(r1.zzz, (-(v2.xyzx)).xyz, r1.xyw);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_19 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  r2 = textureSample(t6, s6, v1.xy.xyxx.xy);
  r1.w = (v3.x * cb2_2.tint_symbol[15u].y);
  r2.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r2.y = (r1.w * r2.x);
  let v_20 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_20.xyz, o1.w);
  r2.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_21 = (r2.wxy * vec3<f32>(0.01953125f, 0.5f, 0.5f));
  r1 = vec4<f32>(v_21.xyz, r1.w);
  let v_22 = sqrt(r1.yz);
  o3 = vec4<f32>(v_22.xy, o3.zw);
  o2.y = sqrt(r1.x);
  o0 = r0;
  o1.w = 0.0f;
  o2.z = cb11_11.tint_symbol_4[3u].w;
  o2 = vec4<f32>(0.0f, o2.yz, 1.0f);
  o3 = vec4<f32>(o3.xy, vec2<f32>());
}

fn v_13(v_23 : bool) {
  if (v_23) {
    discard;
    return;
  }
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3);
}
