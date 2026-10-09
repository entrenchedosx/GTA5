diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb3_struct {
  tint_symbol_1 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb3_struct;

struct cb18_struct {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  let v = (cb12_12.tint_symbol_2[1u].zxy * cb12_12.tint_symbol_2[2u].yzx);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(r0.xyzx);
  let v_2 = fma(cb12_12.tint_symbol_2[1u].yzx, cb12_12.tint_symbol_2[2u].zxy, v_1.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy / v1.ww)).xy, r1.zw);
  r2 = textureSample(t12, s12, r1.xyxx.xy);
  r1 = textureSample(t8, s8, r1.xyxx.xy);
  let v_3 = fma(r1.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r0.w = ((-(r2.xxxx)).w + cb12_12.tint_symbol_2[17u].w);
  r0.w = (r0.w + 1.0f);
  r0.w = (cb12_12.tint_symbol_2[17u].z / r0.w);
  r2 = vec4<f32>(((v2.xyz / v2.www)).xyz, r2.w);
  let v_4 = fma(r2.xyz, r0.www, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r0.x = dot(r0.xyz, r2.xyz);
  r0.z = dot(cb12_12.tint_symbol_2[2u].xyz, r2.xyz);
  r0.w = dot((-(cb12_12.tint_symbol_2[1u].xyzx)).xyz, r2.xyz);
  let v_6 = (r0.xz / cb12_12.tint_symbol_2[5u].xy);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = clamp(fma(r0.xyxx, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f), vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_7.xy, r0.zw);
  r2 = textureSampleLevel(t2, s2, r0.xyxx.xy, 0.0f);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_8 = (r0.xxx * r1.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r0.x = dot(cb12_12.tint_symbol_2[1u].xyz, r0.xyz);
  r0.x = clamp((-(r0.xxxx)).x, 0.0f, 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
  let v_9 = -(cb12_12.tint_symbol_2[5u].zzzz);
  r0.z = (r0.w + v_9.z);
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * r0.x);
  r0.x = (r0.x * r2.x);
  r0.y = (cb12_12.tint_symbol_2[5u].z + cb12_12.tint_symbol_2[5u].z);
  r0.y = (r0.z / r0.y);
  r0.y = clamp(((-(r0.yyyy) + vec4<f32>(1.0f))).y, 0.0f, 1.0f);
  r0.y = (r0.y * r0.y);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol_2[3u].w);
  r0.x = (r0.x * cb5_5.tint_symbol_1[2u].z);
  o0.w = (r0.x * cb12_12.tint_symbol_2[3u].x);
  o0 = vec4<f32>(vec3<f32>(), o0.w);
  o1 = vec4<f32>();
  o2 = vec4<f32>();
  r0.y = ((-(cb12_12.tint_symbol_2[3u].xxxx)).y + 1.0f);
  o3.w = (r0.y * r0.x);
  o3 = vec4<f32>(vec3<f32>(), o3.w);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2);
  return tint_symbol_3(o0, o1, o2, o3);
}
