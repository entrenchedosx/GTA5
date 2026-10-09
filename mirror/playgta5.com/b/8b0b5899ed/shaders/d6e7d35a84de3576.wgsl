diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

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

var<private> v3 : vec4<f32>;

var<private> v4 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v3 = v_1;
  x0[0u].x = v4[0u];
  x0[0u].y = v4[1u];
  x0[0u].z = v4[2u];
  x0[0u].w = v4[3u];
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
  let v_4 = (r0.yzw * v0.xyz);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  let v_5 = (r0.yzw * vec3<f32>(16.0f));
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r1.w = clamp(((r1.wwww * v0.wwww)).w, 0.0f, 1.0f);
  let v_6 = fma((-(r0.yyzw)).yzw, vec3<f32>(16.0f), v2.xyz);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  let v_7 = fma(r0.xxx, r0.yzw, r1.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_8.xyz, o0.w);
  o2 = (r1.w * cb2_2.tint_symbol[22u].x);
  o0.w = r1.w;
  o1 = v1.z;
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(position) v_9 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2, v_9);
  return tint_symbol_2(o0, o1, o2);
}
