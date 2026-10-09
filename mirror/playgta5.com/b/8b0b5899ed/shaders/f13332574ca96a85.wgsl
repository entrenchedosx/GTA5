diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb2_struct;

struct cb6_struct {
  tint_symbol_2 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb6_struct;

struct cb12_struct {
  tint_symbol_3 : array<vec4<f32>, 12u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb12_struct;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v6 : vec4<f32>;

var<private> v7 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v6 = v_1;
  x0[0u].x = v7[0u];
  x0[0u].y = v7[1u];
  x0[0u].z = v7[2u];
  x0[0u].w = v7[3u];
  r0 = textureSample(t7, s7, v1.xyxx.xy);
  r0.x = (r0.w * v3.w);
  let v_2 = (v6.xy * cb7_7.tint_symbol_1[1u].xy);
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb8_8.tint_symbol_3[11u].w)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = fma((-(v6.zzzz)).w, v6.z, 1.0f);
    r1 = textureSample(t9, s9, v1.xyxx.xy);
    let v_4 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r1 = vec4<f32>(v_4.xy, r1.zw);
    let v_5 = (r1.xy * r1.zz);
    r1 = vec4<f32>(v_5.xy, r1.zw);
    let v_6 = (r1.xy * cb7_7.tint_symbol_1[1u].xy);
    r1 = vec4<f32>(v_6.xy, r1.zw);
    r0.w = (r0.w * cb8_8.tint_symbol_3[11u].w);
    let v_7 = (r0.ww * r1.xy);
    r1 = vec4<f32>(v_7.xy, r1.zw);
  } else {
    r1 = vec4<f32>(vec2<f32>(), r1.zw);
  }
  let v_8 = fma(v6.xy, cb7_7.tint_symbol_1[1u].xy, r1.xy);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r1 = textureSample(t8, s8, r1.xyxx.xy);
  let v_9 = (r1.xyz * cb8_8.tint_symbol_3[11u].yyy);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = fma(v3.xyz, v4.xyz, r1.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  r2 = textureSample(t12, s12, r0.yzyy.xy);
  r0.y = ((-(r2.xxxx)).y + 1.0f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb10_10.tint_symbol_2[5u].z))));
  r0.w = ((-(r0.yyyy)).w + 1.0f);
  let v_11 = bitcast<u32>(r0.z);
  let v_12 = r0.w;
  r0.y = select(r0.y, v_12, (v_11 != 0u));
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.y = fma(r0.y, cb7_7.tint_symbol_1[0u].z, cb7_7.tint_symbol_1[0u].w);
  r0.y = (1.0f / r0.y);
  r0.y = (r0.y + (-(v4.wwww)).y);
  r0.y = (r0.y * r0.y);
  r0.y = clamp(((r0.yyyy * cb8_8.tint_symbol_3[9u].wwww)).y, 0.0f, 1.0f);
  o0.w = (r0.y * r0.x);
  let v_13 = (r1.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_13.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_14 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4, v_14);
  return o0;
}
