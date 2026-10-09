diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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

struct cb6_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb6_struct_1;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v11 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>, v : vec4<f32>, v12 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v11 = v_1;
  x0[0u].x = v12.x;
  x0[0u].y = v12.y;
  x0[0u].z = v12.z;
  x0[0u].w = v12.w;
  let v_2 = (v11.xy * cb7_7.tint_symbol_1[1u].xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + 1.0f);
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), !((vec2<f32>() == cb9_9.tint_symbol_2[5u].zw))));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r0.w = ((-(r0.zzzz)).w + 1.0f);
  let v_4 = bitcast<u32>(r1.x);
  let v_5 = r0.w;
  r0.z = select(r0.z, v_5, (v_4 != 0u));
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = fma(r0.z, cb7_7.tint_symbol_1[0u].z, cb7_7.tint_symbol_1[0u].w);
  r0.z = (1.0f / r0.z);
  r0.z = (r0.z + (-(v7.wwww)).z);
  r0.z = fma(r0.z, r0.z, (-(v7.xxxx)).z);
  r0.w = clamp(((r0.zzzz * v5.xxxx)).w, 0.0f, 1.0f);
  r0.w = (r0.w * v0.w);
  let v_6 = -(cb8_8.tint_symbol_3[4u].wwww);
  r0.z = (r0.z + v_6.z);
  r0.z = clamp(((r0.zzzz * v5.xxxx)).z, 0.0f, 1.0f);
  r1.x = ((-(r0.zzzz)).x + 1.0f);
  r1.z = ((-(cb8_8.tint_symbol_3[4u].zzzz)).z + 1.0f);
  r0.z = fma(r1.x, r1.z, r0.z);
  let v_7 = (r0.zzz * v0.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r0.z = clamp(((x0[0u].xxxx * vec4<f32>(20.0f))).z, 0.0f, 1.0f);
  let v_8 = bitcast<u32>(r1.y);
  r0.z = select(1.0f, r0.z, (v_8 != 0u));
  r2.w = (r0.z * r0.w);
  r1 = textureSample(t5, s5, v1.xyxx.xy);
  let v_9 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r3 = textureSample(t5, s5, v1.zwzz.xy);
  let v_10 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r4.x = dot(r1.xyz, vec3<f32>(1.0f));
  r4.y = dot(r3.xyz, vec3<f32>(1.0f));
  let v_11 = -(cb8_8.tint_symbol_3[5u].yyyy);
  let v_12 = (r4.xy + v_11.zw);
  r0 = vec4<f32>(r0.xy, v_12.xy);
  let v_13 = clamp(((r0.zzzw * vec4<f32>(0.0f, 0.0f, 10000.0f, 10000.0f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(r0.xy, v_13.xy);
  r4.z = (cb8_8.tint_symbol_3[5u].z + 0.00100000004749745131f);
  r4.z = ((-(r4.xxxx)).z + r4.z);
  r4.z = clamp(((r4.zzzz * vec4<f32>(10000.0f))).z, 0.0f, 1.0f);
  let v_14 = -(r4.xxxy);
  let v_15 = fma(r0.zw, r4.zz, v_14.zw);
  r0 = vec4<f32>(r0.xy, v_15.xy);
  let v_16 = fma(cb8_8.tint_symbol_3[5u].ww, r0.zw, r4.xy);
  r0 = vec4<f32>(r0.xy, v_16.xy);
  r1.w = r0.z;
  r3.w = r0.w;
  r3 = (-(r1) + r3);
  r1 = fma(v3.xy.xxxx, r3, r1);
  r3 = (r1 * r2);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol[22u].y)));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r0 = textureSample(t4, s4, r0.xyxx.xy);
    r0.x = (r0.x + -1.0f);
    r0.x = clamp(fma(cb2_2.tint_symbol[22u].yyyy, r0.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r0.x = (r0.x * v4.w);
  } else {
    r0.x = v4.w;
  }
  r3.w = clamp(r3.wwww.w, 0.0f, 1.0f);
  let v_17 = fma((-(r2.xxyz)).yzw, r1.xyz, v4.xyz);
  r0 = vec4<f32>(r0.x, v_17.xyz);
  let v_18 = fma(r0.xxx, r0.yzw, r3.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_19.xyz, o0.w);
  o2 = (r3.w * cb2_2.tint_symbol[22u].x);
  o0.w = r3.w;
  o1 = v7.w;
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) @interpolate(flat) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_20 : vec4<f32>, @location(15u) v12 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v3, v4, v5, v7, v_20, v12);
  return tint_symbol_4(o0, o1, o2);
}
