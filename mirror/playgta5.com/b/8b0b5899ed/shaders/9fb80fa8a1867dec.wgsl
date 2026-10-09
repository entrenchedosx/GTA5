diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t6, s6, v1.xy.xyxx.xy);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00196078442968428135f)));
  v((bitcast<u32>(r0.w) != 0u));
  r1 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(-1i));
  let v_1 = (r1.xyz * cb2_2.tint_symbol[17u].www);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = fma(r0.xyz, cb2_2.tint_symbol[17u].www, r1.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r1 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(-1i, 0i));
  let v_3 = fma(r1.xyz, cb2_2.tint_symbol[17u].www, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(-1i, 1i));
  let v_4 = fma(r1.xyz, cb2_2.tint_symbol[17u].www, r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r1 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(0i, -1i));
  let v_5 = fma(r1.xyz, cb2_2.tint_symbol[17u].www, r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r1 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(0i, 1i));
  let v_6 = fma(r1.xyz, cb2_2.tint_symbol[17u].www, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r1 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(1i, -1i));
  let v_7 = fma(r1.xyz, cb2_2.tint_symbol[17u].www, r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r1 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(1i, 0i));
  let v_8 = fma(r1.xyz, cb2_2.tint_symbol[17u].www, r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r1 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(1i));
  let v_9 = fma(r1.xyz, cb2_2.tint_symbol[17u].www, r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = (r0.xyz * vec3<f32>(0.11111111193895339966f));
  o0 = vec4<f32>(v_11.xyz, o0.w);
  o0.w = 1.0f;
}

fn v(v_12 : bool) {
  if (v_12) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
