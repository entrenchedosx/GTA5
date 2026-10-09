diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb2_struct;

struct cb2_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb2_struct_1;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v11 : vec4<f32>;

var<private> v12 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>, v10 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v11 = v_1;
  x0[0u].x = v12[0u];
  x0[0u].y = v12[1u];
  x0[0u].z = v12[2u];
  x0[0u].w = v12[3u];
  let v_2 = (v11.xy * cb9_9.tint_symbol_3[0u].zw);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0 = textureSample(t2, s2, r0.xyxx.xy);
  r0.y = (cb9_9.tint_symbol_3[1u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb9_9.tint_symbol_3[1u].z / r0.x);
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, ((v10.xy / v10.ww)).xy, v_3.w);
  let v_4 = fma(r0.yz, r0.xx, cb1_1.tint_symbol[15u].xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = (r0.xy + (-(v8.xyxx)).xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r1.x = dot(v2.zw, r0.xy);
  r1.y = dot(v9.xyz.xy, r0.xy);
  r0.x = (v8.w * 0.5f);
  r0 = fma(r1.xyxy, r0.xxxx, vec4<f32>(0.5f));
  let v_6 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.zw < vec2<f32>())));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(1.0f) < r0.zw)));
  r1 = vec4<f32>(r1.xy, v_7.xy);
  r1.x = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.x)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.x)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r1.x)));
  r1.w = select(v0.w, 0.0f, (bitcast<u32>(r1.x) != 0u));
  r0 = (r0 + v1);
  r0 = (r0 * v6.zwzw);
  r2 = textureSample(t5, s5, r0.xyxx.xy);
  let v_8 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r0 = textureSample(t5, s5, r0.zwzz.xy);
  let v_9 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = -(r2);
  r0 = (r0 + v_10);
  r0 = fma(v3.xy.xxxx, r0, r2);
  let v_11 = fma(v5.xyz, v7.zzz, v0.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r2 = (r1 * r0);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_12 = (v11.xy * cb7_7.tint_symbol_2[1u].xy);
    r3 = vec4<f32>(v_12.xy, r3.zw);
    r3 = textureSample(t4, s4, r3.xyxx.xy);
    r0.w = (r3.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r0.w = (r0.w * v4.w);
  } else {
    r0.w = v4.w;
  }
  let v_13 = fma((-(r0.xyzx)).xyz, r1.xyz, v4.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = fma(r0.www, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_15.xyz, o0.w);
  o2 = (r2.w * cb2_2.tint_symbol_1[22u].x);
  o0.w = r2.w;
  o1 = 0.0f;
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) @interpolate(flat) v5 : vec4<f32>, @location(6u) @interpolate(flat) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>, @builtin(position) v_16 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v_16);
  return tint_symbol_4(o0, o1, o2);
}
