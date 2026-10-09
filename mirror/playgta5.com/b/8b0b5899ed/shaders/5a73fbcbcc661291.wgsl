diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb4_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0.x = (cb5_5.tint_symbol_1[3u].z * cb11_11.tint_symbol_2[2u].z);
  let v = ((-(cb11_11.tint_symbol_2[2u].zzzz)).yz + vec2<f32>(1.0f, 2.0f));
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  let v_2 = (r0.zz * v1.xy);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  r1 = textureSample(t4, s4, r0.zwzz.xy);
  r0.z = ((-(r1.xxxx)).z + r1.z);
  r0.x = fma(r0.x, r0.z, r1.x);
  r0.z = fma(v2.z, r0.y, -1.0f);
  r0.z = fma(r0.y, r0.z, 1.0f);
  r0.y = (r0.y * v2.z);
  let v_3 = (r0.xy * cb11_11.tint_symbol_2[2u].xx);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.x = (r0.z * r0.x);
  let v_4 = (v1.xy * cb11_11.tint_symbol_2[0u].xx);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  r2 = textureSample(t0, s0, r0.zwzz.xy);
  let v_5 = (r2.xyz * cb11_11.tint_symbol_2[0u].yzw);
  r1 = vec4<f32>(v_5.xy, r1.z, v_5.z);
  r3 = textureSample(t3, s3, v1.zwzz.xy);
  r0.z = ((-(r3.wwww)).z + 1.0f);
  let v_6 = (r3.www * r3.xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = fma(r1.xyw, r0.zzz, r3.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r2 = (r2 * v2.xxxw);
  let v_8 = -(r2.xyxz);
  let v_9 = fma(cb11_11.tint_symbol_2[3u].xyz, cb11_11.tint_symbol_2[2u].yyy, v_8.xyw);
  r1 = vec4<f32>(v_9.xy, r1.z, v_9.z);
  let v_10 = fma(r0.xxx, r1.xyw, r2.xyz);
  r0 = vec4<f32>(v_10.x, r0.y, v_10.yz);
  o0.w = (r2.w * cb2_2.tint_symbol[15u].x);
  let v_11 = ((-(r0.xzwx)).xyz + r1.zzz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = fma(r0.yyy, r1.xyz, r0.xzw);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_13.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
