diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

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

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v11 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>, v : vec4<f32>, v12 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v11 = v_1;
  x0[0u].x = v12.x;
  x0[0u].y = v12.y;
  x0[0u].z = v12.z;
  x0[0u].w = v12.w;
  r0 = textureSample(t8, s8, v2.xyxx.xy);
  let v_2 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.z = (r0.z * v0.w);
  r0.w = (r0.z * cb8_8.tint_symbol_3[5u].x);
  r0.w = (r0.w * 100.0f);
  let v_3 = fma(r0.xy, r0.ww, v11.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = (r0.xy * cb7_7.tint_symbol_1[1u].xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.w = ((-(r1.xxxx)).w + 1.0f);
  let v_5 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), !((vec2<f32>() == cb9_9.tint_symbol_2[5u].zw))));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r1.z = ((-(r0.wwww)).z + 1.0f);
  let v_6 = bitcast<u32>(r1.x);
  let v_7 = r1.z;
  r0.w = select(r0.w, v_7, (v_6 != 0u));
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = fma(r0.w, cb7_7.tint_symbol_1[0u].z, cb7_7.tint_symbol_1[0u].w);
  r0.w = (1.0f / r0.w);
  r0.w = (r0.w + (-(v7.wwww)).w);
  r1.x = clamp(((r0.wwww * vec4<f32>(1000.0f))).x, 0.0f, 1.0f);
  r1.x = (r1.x * v0.w);
  r0.w = fma(r0.w, r0.w, (-(v7.xxxx)).w);
  r1.z = clamp(((r0.wwww * v5.xxxx)).z, 0.0f, 1.0f);
  r1.x = (r1.z * r1.x);
  let v_8 = -(cb8_8.tint_symbol_3[4u].wwww);
  r0.w = (r0.w + v_8.w);
  r0.w = clamp(((r0.wwww * v5.xxxx)).w, 0.0f, 1.0f);
  r1.z = ((-(r0.wwww)).z + 1.0f);
  r1.w = ((-(cb8_8.tint_symbol_3[4u].zzzz)).w + 1.0f);
  r0.w = fma(r1.z, r1.w, r0.w);
  let v_9 = (r0.www * v0.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r0.w = clamp(((x0[0u].xxxx * vec4<f32>(20.0f))).w, 0.0f, 1.0f);
  let v_10 = bitcast<u32>(r1.y);
  r0.w = select(1.0f, r0.w, (v_10 != 0u));
  r0.w = (r0.w * r1.x);
  r1 = textureSample(t5, s5, v1.xyxx.xy);
  let v_11 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r3 = textureSample(t5, s5, v1.zwzz.xy);
  let v_12 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  r3 = (-(r1) + r3);
  r1 = fma(v3.xy.xxxx, r3, r1);
  r0.w = (r0.w * r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00009999999747378752f < r0.z)));
  r3 = fma(cb7_7.tint_symbol_1[1u].xyxy, vec4<f32>(0.5f, -1.5f, -1.5f, -0.5f), r0.xyxy);
  r4 = fma(cb7_7.tint_symbol_1[1u].xyxy, vec4<f32>(-0.5f, 1.5f, 1.5f, 0.5f), r0.xyxy);
  r5 = textureSample(t6, s6, r0.xyxx.xy);
  r6 = textureSample(t6, s6, r3.xyxx.xy);
  r3 = textureSample(t6, s6, r3.zwzz.xy);
  r7 = textureSample(t6, s6, r4.xyxx.xy);
  r4 = textureSample(t6, s6, r4.zwzz.xy);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_13 = (r5.xyz + r6.xyz);
    r6 = vec4<f32>(v_13.xyz, r6.w);
    let v_14 = (r3.xyz + r6.xyz);
    r3 = vec4<f32>(v_14.xyz, r3.w);
    let v_15 = (r7.xyz + r3.xyz);
    r3 = vec4<f32>(v_15.xyz, r3.w);
    let v_16 = (r4.xyz + r3.xyz);
    r3 = vec4<f32>(v_16.xyz, r3.w);
    let v_17 = (r3.xyz * vec3<f32>(0.20000000298023223877f));
    r5 = vec4<f32>(v_17.xyz, r5.w);
  }
  let v_18 = (r5.xyz * cb2_2.tint_symbol[17u].www);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = -(r3.xyzx);
  let v_20 = fma(r2.xyz, r1.xyz, v_19.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = fma(r0.www, r1.xyz, r3.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  let v_22 = (r1.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_22.xyz, o0.w);
  o2 = (r0.w * cb2_2.tint_symbol[22u].x);
  o0.w = r0.z;
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(5u) @interpolate(flat) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_23 : vec4<f32>, @location(15u) v12 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3, v5, v7, v_23, v12);
  return tint_symbol_4(o0, o1, o2);
}
