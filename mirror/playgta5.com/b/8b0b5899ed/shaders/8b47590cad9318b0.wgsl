diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb2_struct;

struct cb12_struct {
  tint_symbol_2 : array<vec4<f32>, 12u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb12_struct;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

var<private> v6 : vec4<f32>;

var<private> v7 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v6 = v_1;
  x0[0u].x = v7[0u];
  x0[0u].y = v7[1u];
  x0[0u].z = v7[2u];
  x0[0u].w = v7[3u];
  r0 = vec4<f32>(((v3.xyz * v4.xyz)).xyz, r0.w);
  r1 = textureSample(t7, s7, v1.xyxx.xy);
  r2 = textureSample(t7, s7, v0.xyz.xyxx.xy);
  let v_2 = -(r2.wwww);
  r0.w = (r1.w + v_2.w);
  r0.w = fma(v0.z, r0.w, r2.w);
  r0.w = clamp(((r0.wwww * v3.wwww)).w, 0.0f, 1.0f);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb8_8.tint_symbol_2[11u].w)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = fma((-(v6.zzzz)).x, v6.z, 1.0f);
    r2 = textureSample(t9, s9, v1.xyxx.xy);
    r3 = textureSample(t9, s9, v0.xyz.xyxx.xy);
    let v_3 = -(r3.xxyz);
    let v_4 = (r2.xyz + v_3.yzw);
    r1 = vec4<f32>(r1.x, v_4.xyz);
    let v_5 = fma(v0.xyz.zzz, r1.yzw, r3.xyz);
    r1 = vec4<f32>(r1.x, v_5.xyz);
    let v_6 = fma(r1.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    let v_7 = r1;
    r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
    let v_8 = (r1.yz * r1.ww);
    let v_9 = r1;
    r1 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
    let v_10 = (r1.yz * cb7_7.tint_symbol_1[1u].xy);
    let v_11 = r1;
    r1 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
    r1.x = (r1.x * cb8_8.tint_symbol_2[11u].w);
    let v_12 = (r1.xx * r1.yz);
    r1 = vec4<f32>(v_12.xy, r1.zw);
  } else {
    r1 = vec4<f32>(vec2<f32>(), r1.zw);
  }
  let v_13 = fma(v6.xy, cb7_7.tint_symbol_1[1u].xy, r1.xy);
  r1 = vec4<f32>(v_13.xy, r1.zw);
  r1 = textureSample(t8, s8, r1.xyxx.xy);
  let v_14 = (r1.xyz * cb8_8.tint_symbol_2[11u].yyy);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = fma(r0.xyz, cb8_8.tint_symbol_2[11u].xxx, r1.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_16.xyz, o0.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.15000000596046447754f < r0.w)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r0.y = ((-(v4.wwww)).y + 1.0f);
  o1 = (r0.x * r0.y);
  o0.w = r0.w;
  o2 = r0.x;
}

struct tint_symbol_3 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_17 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v3, v4, v_17);
  return tint_symbol_3(o0, o1, o2);
}
