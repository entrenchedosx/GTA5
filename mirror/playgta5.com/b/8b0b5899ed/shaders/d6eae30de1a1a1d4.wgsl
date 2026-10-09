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

@group(1u) @binding(8u) var<uniform> cb8_8 : cb6_struct;

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

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v7 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v11 = v_1;
  x0[0u].x = v12[0u];
  x0[0u].y = v12[1u];
  x0[0u].z = v12[2u];
  x0[0u].w = v12[3u];
  r0 = textureSample(t5, s5, v1.xyxx.xy);
  let v_2 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r1 = textureSample(t5, s5, v1.zwzz.xy);
  let v_3 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r2.x = dot(r0.xyz, vec3<f32>(1.0f));
  r2.y = dot(r1.xyz, vec3<f32>(1.0f));
  let v_4 = -(cb8_8.tint_symbol_2[5u].yyyy);
  let v_5 = (r2.xy + v_4.zw);
  r2 = vec4<f32>(r2.xy, v_5.xy);
  let v_6 = clamp(((r2.zzzw * vec4<f32>(0.0f, 0.0f, 10000.0f, 10000.0f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, v_6.xy);
  r3.x = (cb8_8.tint_symbol_2[5u].z + 0.00100000004749745131f);
  r3.x = ((-(r2.xxxx)).x + r3.x);
  r3.x = clamp(((r3.xxxx * vec4<f32>(10000.0f))).x, 0.0f, 1.0f);
  let v_7 = -(r2.xxxy);
  let v_8 = fma(r2.zw, r3.xx, v_7.zw);
  r2 = vec4<f32>(r2.xy, v_8.xy);
  let v_9 = fma(cb8_8.tint_symbol_2[5u].ww, r2.zw, r2.xy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  r0.w = r2.x;
  r1.w = r2.y;
  r1 = (-(r0) + r1);
  r0 = fma(v3.xy.xxxx, r1, r0);
  r1 = (r0 * v0);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_10 = (v11.xy * cb7_7.tint_symbol_1[1u].xy);
    r2 = vec4<f32>(v_10.xy, r2.zw);
    r2 = textureSample(t4, s4, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r0.w = (r0.w * v4.w);
  } else {
    r0.w = v4.w;
  }
  r1.w = clamp(r1.wwww.w, 0.0f, 1.0f);
  let v_11 = fma((-(v0.xyzx)).xyz, r0.xyz, v4.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = fma(r0.www, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_13.xyz, o0.w);
  o2 = (r1.w * cb2_2.tint_symbol[22u].x);
  o0.w = r1.w;
  o1 = v7.w;
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_14 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v3, v4, v7, v_14);
  return tint_symbol_3(o0, o1, o2);
}
