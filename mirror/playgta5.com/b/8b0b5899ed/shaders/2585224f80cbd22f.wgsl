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

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>, v9 : vec4<f32>, v : vec4<f32>, v12 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v11 = v_1;
  x0[0u].x = v12.x;
  x0[0u].y = v12.y;
  x0[0u].z = v12.z;
  x0[0u].w = v12.w;
  let v_2 = fma(v9.xyz, v7.zzz, v0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (v11.xy * cb7_7.tint_symbol_1[1u].xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r2 = textureSample(t12, s12, r1.xyxx.xy);
  r0.w = ((-(r2.xxxx)).w + 1.0f);
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), !((vec2<f32>() == cb9_9.tint_symbol_2[5u].zw))));
  r1 = vec4<f32>(r1.xy, v_4.xy);
  r2.x = ((-(r0.wwww)).x + 1.0f);
  let v_5 = bitcast<u32>(r1.z);
  let v_6 = r2.x;
  r0.w = select(r0.w, v_6, (v_5 != 0u));
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = fma(r0.w, cb7_7.tint_symbol_1[0u].z, cb7_7.tint_symbol_1[0u].w);
  r0.w = (1.0f / r0.w);
  r0.w = (r0.w + (-(v7.wwww)).w);
  r0.w = fma(r0.w, r0.w, (-(v7.xxxx)).w);
  r1.z = clamp(((r0.wwww * v5.xxxx)).z, 0.0f, 1.0f);
  r1.z = (r1.z * v0.w);
  let v_7 = -(cb8_8.tint_symbol_3[4u].wwww);
  r0.w = (r0.w + v_7.w);
  r0.w = clamp(((r0.wwww * v5.xxxx)).w, 0.0f, 1.0f);
  r2.x = ((-(r0.wwww)).x + 1.0f);
  r2.y = ((-(cb8_8.tint_symbol_3[4u].zzzz)).y + 1.0f);
  r0.w = fma(r2.x, r2.y, r0.w);
  let v_8 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r2.x = clamp(((x0[0u].xxxx * vec4<f32>(20.0f))).x, 0.0f, 1.0f);
  let v_9 = bitcast<u32>(r1.w);
  r1.w = select(1.0f, r2.x, (v_9 != 0u));
  r0.w = (r1.w * r1.z);
  r2 = textureSample(t5, s5, v1.xyxx.xy);
  let v_10 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r3 = textureSample(t5, s5, v1.zwzz.xy);
  let v_11 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  r4.x = dot(r2.xyz, vec3<f32>(1.0f));
  r4.y = dot(r3.xyz, vec3<f32>(1.0f));
  let v_12 = -(cb8_8.tint_symbol_3[5u].yyyy);
  let v_13 = (r4.xy + v_12.zw);
  r1 = vec4<f32>(r1.xy, v_13.xy);
  let v_14 = clamp(((r1.zzzw * vec4<f32>(0.0f, 0.0f, 10000.0f, 10000.0f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_14.xy);
  r4.z = (cb8_8.tint_symbol_3[5u].z + 0.00100000004749745131f);
  r4.z = ((-(r4.xxxx)).z + r4.z);
  r4.z = clamp(((r4.zzzz * vec4<f32>(10000.0f))).z, 0.0f, 1.0f);
  let v_15 = -(r4.xxxy);
  let v_16 = fma(r1.zw, r4.zz, v_15.zw);
  r1 = vec4<f32>(r1.xy, v_16.xy);
  let v_17 = fma(cb8_8.tint_symbol_3[5u].ww, r1.zw, r4.xy);
  r1 = vec4<f32>(r1.xy, v_17.xy);
  r2.w = r1.z;
  r3.w = r1.w;
  r3 = (-(r2) + r3);
  r2 = fma(v3.xy.xxxx, r3, r2);
  r0 = (r0 * r2);
  let v_18 = (r2.xyz * v5.yzw);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r1.z = dot(r2.xyz, vec3<f32>(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
  r1.z = clamp(((r1.zzzz + vec4<f32>(-0.05000000074505805969f))).z, 0.0f, 1.0f);
  r1.z = (r1.z * v3.y);
  let v_19 = fma(r2.xyz, r1.zzz, r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol[22u].y)));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r1 = textureSample(t4, s4, r1.xyxx.xy);
    r1.x = (r1.x + -1.0f);
    r1.x = clamp(fma(cb2_2.tint_symbol[22u].yyyy, r1.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r1.x = (r1.x * v4.w);
  } else {
    r1.x = v4.w;
  }
  r0.w = clamp(r0.wwww.w, 0.0f, 1.0f);
  let v_20 = ((-(r0.xxyz)).yzw + v4.xyz);
  r1 = vec4<f32>(r1.x, v_20.xyz);
  let v_21 = fma(r1.xxx, r1.yzw, r0.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_22.xyz, o0.w);
  o2 = (r0.w * cb2_2.tint_symbol[22u].x);
  o0.w = r0.w;
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) @interpolate(flat) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(9u) v9 : vec4<f32>, @builtin(position) v_23 : vec4<f32>, @location(15u) v12 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v3, v4, v5, v7, v9, v_23, v12);
  return tint_symbol_4(o0, o1, o2);
}
