diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

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

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0.x = (cb5_5.tint_symbol_1[3u].z * cb11_11.tint_symbol_2[2u].z);
  let v = ((-(cb11_11.tint_symbol_2[2u].zzzz)).yz + vec2<f32>(1.0f, 2.0f));
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  let v_2 = (r0.zz * v1.zw);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  r1 = textureSample(t3, s3, r0.zwzz.xy);
  r0.z = ((-(r1.xxxx)).z + r1.z);
  r0.x = fma(r0.x, r0.z, r1.x);
  r0.z = fma(v2.z, r0.y, -1.0f);
  r0.z = fma(r0.y, r0.z, 1.0f);
  r0.y = (r0.y * v2.z);
  let v_3 = (r0.xy * cb11_11.tint_symbol_2[2u].xx);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.x = (r0.z * r0.x);
  r2 = textureSample(t0, s0, v1.xyxx.xy);
  let v_4 = (r2.xyz * cb11_11.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  r2 = (r2 * v2.xxxw);
  let v_5 = -(r2.xyxz);
  let v_6 = fma(cb11_11.tint_symbol_2[3u].xyz, cb11_11.tint_symbol_2[2u].yyy, v_5.xyw);
  r1 = vec4<f32>(v_6.xy, r1.z, v_6.z);
  let v_7 = fma(r0.xxx, r1.xyw, r2.xyz);
  r0 = vec4<f32>(v_7.x, r0.y, v_7.yz);
  o0.w = (r2.w * cb2_2.tint_symbol[15u].x);
  let v_8 = ((-(r0.xzwx)).xyz + r1.zzz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(r0.yyy, r1.xyz, r0.xzw);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_10.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
