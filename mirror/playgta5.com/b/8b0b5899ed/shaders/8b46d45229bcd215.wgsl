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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> v3 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>) {
  x0[0u].x = v3[0u];
  x0[0u].y = v3[1u];
  x0[0u].z = v3[2u];
  x0[0u].w = v3[3u];
  r0 = textureSample(t2, s2, v0.xyxx.xy);
  r0.x = (r0.x * r0.x);
  r0.x = (r0.x * r0.x);
  let v = (r0.xxx * v1.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = (v0.zw + cb5_5.tint_symbol_1[3u].zz);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r1 = textureSample(t7, s7, r1.xyxx.xy);
  let v_2 = ((-(cb5_5.tint_symbol_1[3u].yywy)).xz + vec2<f32>(1.0f));
  let v_3 = r1;
  r1 = vec4<f32>(v_2.x, v_3.y, v_2.y, v_3.w);
  r0.w = fma(r1.y, r1.x, cb5_5.tint_symbol_1[3u].y);
  let v_4 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(v0.zw, vec2<f32>(0.001953125f), cb5_5.tint_symbol_1[3u].zz);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r2 = textureSample(t7, s7, r1.xyxx.xy);
  r0.w = fma(r2.y, r1.z, cb5_5.tint_symbol_1[3u].w);
  let v_6 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_7.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1);
  return o0;
}
