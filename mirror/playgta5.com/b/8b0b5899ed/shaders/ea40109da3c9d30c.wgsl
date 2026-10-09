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

var<private> v12 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v7 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v11 = v_1;
  x0[0u].x = v12[0u];
  x0[0u].y = v12[1u];
  x0[0u].z = v12[2u];
  x0[0u].w = v12[3u];
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
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb9_9.tint_symbol_2[5u].z))));
  r1.y = ((-(r0.wwww)).y + 1.0f);
  let v_5 = bitcast<u32>(r1.x);
  let v_6 = r1.y;
  r0.w = select(r0.w, v_6, (v_5 != 0u));
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = fma(r0.w, cb7_7.tint_symbol_1[0u].z, cb7_7.tint_symbol_1[0u].w);
  r0.w = (1.0f / r0.w);
  r0.w = (r0.w + (-(v7.wwww)).w);
  r0.w = clamp(((r0.wwww * vec4<f32>(1000.0f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * v0.w);
  r1 = textureSample(t5, s5, v1.xyxx.xy);
  let v_7 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r2 = textureSample(t5, s5, v1.zwzz.xy);
  let v_8 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r2 = (-(r1) + r2);
  r1 = fma(v3.xy.xxxx, r2, r1);
  r2 = vec4<f32>(v0.xyz, r2.w);
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
    let v_9 = (r5.xyz + r6.xyz);
    r6 = vec4<f32>(v_9.xyz, r6.w);
    let v_10 = (r3.xyz + r6.xyz);
    r3 = vec4<f32>(v_10.xyz, r3.w);
    let v_11 = (r7.xyz + r3.xyz);
    r3 = vec4<f32>(v_11.xyz, r3.w);
    let v_12 = (r4.xyz + r3.xyz);
    r3 = vec4<f32>(v_12.xyz, r3.w);
    let v_13 = (r3.xyz * vec3<f32>(0.20000000298023223877f));
    r5 = vec4<f32>(v_13.xyz, r5.w);
  }
  let v_14 = (r5.xyz * cb2_2.tint_symbol[17u].www);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = -(r3.xyzx);
  let v_16 = fma(r2.xyz, r1.xyz, v_15.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = fma(r0.www, r1.xyz, r3.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = (r1.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_18.xyz, o0.w);
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_19 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3, v7, v_19);
  return tint_symbol_4(o0, o1, o2);
}
