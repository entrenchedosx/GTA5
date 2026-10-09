diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb23_struct {
  tint_symbol : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb2_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v11 : vec4<f32>;

var<private> v12 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>, v9 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v11 = v_1;
  x0[0u].x = v12[0u];
  x0[0u].y = v12[1u];
  x0[0u].z = v12[2u];
  x0[0u].w = v12[3u];
  let v_2 = fma(v9.xyz, v7.zzz, v0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r1 = textureSample(t5, s5, v1.xyxx.xy);
  let v_3 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r2 = textureSample(t5, s5, v1.zwzz.xy);
  let v_4 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  r2 = (-(r1) + r2);
  r1 = fma(v3.xy.xxxx, r2, r1);
  r0.w = v0.w;
  r0 = (r0 * r1);
  let v_5 = (r1.xyz * v5.yzw);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r1.w = dot(r1.xyz, vec3<f32>(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
  r1.w = clamp(((r1.wwww + vec4<f32>(-0.05000000074505805969f))).w, 0.0f, 1.0f);
  r1.w = (r1.w * v3.y);
  let v_6 = fma(r1.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol[22u].y)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    let v_7 = (v11.xy * cb7_7.tint_symbol_1[1u].xy);
    r1 = vec4<f32>(v_7.xy, r1.zw);
    r1 = textureSample(t4, s4, r1.xyxx.xy);
    r1.x = (r1.x + -1.0f);
    r1.x = clamp(fma(cb2_2.tint_symbol[22u].yyyy, r1.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r1.x = (r1.x * v4.w);
  } else {
    r1.x = v4.w;
  }
  r0.w = clamp(r0.wwww.w, 0.0f, 1.0f);
  let v_8 = ((-(r0.xxyz)).yzw + v4.xyz);
  r1 = vec4<f32>(r1.x, v_8.xyz);
  let v_9 = fma(r1.xxx, r1.yzw, r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_10.xyz, o0.w);
  o2 = (r0.w * cb2_2.tint_symbol[22u].x);
  o0.w = r0.w;
  o1 = v7.w;
}

struct tint_symbol_2 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) @interpolate(flat) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(9u) v9 : vec4<f32>, @builtin(position) v_11 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v3, v4, v5, v7, v9, v_11);
  return tint_symbol_2(o0, o1, o2);
}
