diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb51_struct {
  tint_symbol_1 : array<vec4<f32>, 51u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb51_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb2_struct;

@group(0u) @binding(16u) var s0 : sampler;

@group(0u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>) {
  r0.x = fma(v1.x, v0.z, v0.x);
  r0.y = fma((-(v1.yyyy)).y, v0.w, v0.y);
  let v = (r0.xy + vec2<f32>(-0.5f, 0.5f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy + r0.xy);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  let v_2 = fma(r0.xy, vec2<f32>(2.0f), cb5_5.tint_symbol_2[1u].xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = (r0.xy * cb5_5.tint_symbol_2[0u].xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r1 = textureSampleLevel(t0, s0, v1.zwzz.xy, 0.0f);
  r1.x = (cb3_3.tint_symbol_1[50u].x * 0.80000001192092895508f);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r1.y)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  let v_4 = (r0.zw * r1.xx);
  o0 = vec4<f32>(v_4.xy, o0.zw);
  let v_5 = fma(r0.zw, vec2<f32>(1.0f, -1.0f), vec2<f32>(1.0f));
  r0 = vec4<f32>(r0.xy, v_5.xy);
  let v_6 = (r0.zw * vec2<f32>(0.5f));
  o1 = vec4<f32>(v_6.xy, o1.zw);
  o0.z = (r1.x * cb3_3.tint_symbol_1[50u].z);
  o0.w = r1.x;
  o1 = vec4<f32>(o1.xy, vec2<f32>());
  let v_7 = (r0.yyy * cb1_1.tint_symbol[13u].xyz);
  r0 = vec4<f32>(r0.x, v_7.xyz);
  let v_8 = fma(r0.xxx, cb1_1.tint_symbol[12u].xyz, r0.yzw);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = -(cb1_1.tint_symbol[14u].xyzx);
  let v_10 = (r0.xyz + v_9.xyz);
  o2 = vec4<f32>(v_10.xyz, o2.w);
  o2.w = 1.0f;
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0, v1);
  return tint_symbol_3(o0, o1, o2);
}
