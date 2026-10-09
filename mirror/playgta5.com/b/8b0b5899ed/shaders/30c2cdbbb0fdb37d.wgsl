diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb3_struct {
  tint_symbol_2 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb3_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0.z = fma((-(v0.yyyy)).z, cb2_2.tint_symbol_1[18u].w, 1.0f);
  let v_2 = (v0.xy * cb2_2.tint_symbol_1[18u].zw);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = fma(r0.xz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_3.xy);
  r1 = textureSample(t5, s5, r0.xyxx.xy);
  let v_4 = (r0.zw * cb5_5.tint_symbol_2[2u].xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = (r0.yyy * cb1_1.tint_symbol[13u].xyz);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = fma(r0.xxx, cb1_1.tint_symbol[12u].xyz, r0.yzw);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = -(cb1_1.tint_symbol[14u].xyzx);
  let v_8 = (r0.xyz + v_7.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r0.w = (cb5_5.tint_symbol_2[2u].w + 1.0f);
  r0.w = ((-(r1.xxxx)).w + r0.w);
  r0.w = (cb5_5.tint_symbol_2[2u].z / r0.w);
  let v_9 = fma(r0.xyz, r0.www, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (r0.xyz + (-(v2.xyz.xyxz)).xyw);
  r0 = vec4<f32>(v_10.xy, r0.z, v_10.z);
  r0.z = ((-(r0.zzzz)).z + v2.z);
  r0.z = max(r0.z, 0.0f);
  r0.z = min(r0.z, 0.10000000149011611938f);
  r0.x = dot(r0.xyw, r0.xyw);
  r0.x = sqrt(r0.x);
  r0.x = fma((-(v1.xy.xxxx)).x, 0.5f, r0.x);
  r0.y = (v1.x * 0.5f);
  r0.x = clamp(((r0.xxxx / r0.yyyy)).x, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = (r0.x * r0.z);
  r0.x = (r0.x * v1.y);
  r0.x = (r0.x * 10.0f);
  o0.w = (r0.x * r0.x);
  r0 = vec4<f32>(((v3.xyz * v3.xyz)).xyz, r0.w);
  let v_11 = log2(r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = (r0.xyz * vec3<f32>(0.45454546809196472168f));
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = exp2(r0.xyz);
  o0 = vec4<f32>(v_13.xyz, o0.w);
}

@fragment
fn main(@builtin(position) v_14 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_14, v1, v2, v3);
  return o0;
}
