diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb23_struct {
  tint_symbol : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb2_struct;

struct cb6_struct {
  tint_symbol_2 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb6_struct;

struct cb2_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb2_struct_1;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v3 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v : vec4<f32>, v4 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v3 = v_1;
  x0[0u].x = v4.x;
  x0[0u].y = v4.y;
  x0[0u].z = v4.z;
  x0[0u].w = v4.w;
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol[22u].y)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    let v_2 = (v3.xy * cb7_7.tint_symbol_1[1u].xy);
    r0 = vec4<f32>(v_2.xy, r0.zw);
    r0 = textureSample(t4, s4, r0.xyxx.xy);
    r0.x = (r0.x + -1.0f);
    r0.x = clamp(fma(cb2_2.tint_symbol[22u].yyyy, r0.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r0.x = (r0.x * v2.w);
  } else {
    r0.x = v2.w;
  }
  r1 = textureSample(t5, s5, v1.xyxx.xy);
  let v_3 = (r1.xyz * r1.xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = (r0.yzw * vec3<f32>(16.0f));
  r0 = vec4<f32>(r0.x, v_4.xyz);
  let v_5 = (v3.xy * cb7_7.tint_symbol_1[1u].xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r2 = textureSample(t12, s12, r1.xyxx.xy);
  r1.x = ((-(r2.xxxx)).x + 1.0f);
  let v_6 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), !((vec2<f32>() == cb9_9.tint_symbol_2[5u].zw))));
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r2.x = ((-(r1.xxxx)).x + 1.0f);
  let v_8 = bitcast<u32>(r1.y);
  let v_9 = r2.x;
  r1.x = select(r1.x, v_9, (v_8 != 0u));
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.x = fma(r1.x, cb7_7.tint_symbol_1[0u].z, cb7_7.tint_symbol_1[0u].w);
  r1.x = (1.0f / r1.x);
  r1.x = (r1.x + (-(v1.zzzz)).x);
  r1.y = (v1.w * cb8_8.tint_symbol_3[1u].x);
  let v_10 = -(r1.yyyy);
  r1.x = fma(r1.x, r1.x, v_10.x);
  r1.y = clamp(r1.xxxx.y, 0.0f, 1.0f);
  r1.y = (r1.y * v0.w);
  let v_11 = -(cb8_8.tint_symbol_3[1u].zzzz);
  r1.x = clamp(((r1.xxxx + v_11)).x, 0.0f, 1.0f);
  r2.x = ((-(r1.xxxx)).x + 1.0f);
  r2.y = ((-(cb8_8.tint_symbol_3[1u].yyyy)).y + 1.0f);
  r1.x = fma(r2.x, r2.y, r1.x);
  let v_12 = (r1.xxx * v0.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  r1.x = clamp(((x0[0u].xxxx * vec4<f32>(20.0f))).x, 0.0f, 1.0f);
  let v_13 = bitcast<u32>(r1.z);
  r1.x = select(1.0f, r1.x, (v_13 != 0u));
  r1.x = (r1.x * r1.y);
  let v_14 = (r0.yzw * r2.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  r1.x = clamp(((r1.wwww * r1.xxxx)).x, 0.0f, 1.0f);
  let v_15 = fma((-(r0.yyzw)).yzw, r2.xyz, v2.xyz);
  r0 = vec4<f32>(r0.x, v_15.xyz);
  let v_16 = fma(r0.xxx, r0.yzw, r3.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_17.xyz, o0.w);
  o2 = (r1.x * cb2_2.tint_symbol[22u].x);
  o0.w = r1.x;
  o1 = v1.z;
}

struct tint_symbol_4 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(position) v_18 : vec4<f32>, @location(15u) v4 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v_18, v4);
  return tint_symbol_4(o0, o1, o2);
}
