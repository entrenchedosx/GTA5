diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb23_struct {
  tint_symbol : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb44_struct {
  tint_symbol_1 : array<vec4<f32>, 44u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb44_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb2_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb7_struct;

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb5_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

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
  let v_2 = (v11.xy * cb7_7.tint_symbol_2[1u].xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + 1.0f);
  r1 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), !((vec4<f32>() == cb9_9.tint_symbol_3[5u].zwxy))));
  r0.w = ((-(r0.zzzz)).w + 1.0f);
  let v_3 = bitcast<u32>(r1.x);
  let v_4 = r0.w;
  r0.z = select(r0.z, v_4, (v_3 != 0u));
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = fma(r0.z, cb7_7.tint_symbol_2[0u].z, cb7_7.tint_symbol_2[0u].w);
  r0.z = (1.0f / r0.z);
  r0.z = (r0.z + (-(v7.wwww)).z);
  r0.z = fma(r0.z, r0.z, (-(v7.xxxx)).z);
  r0.w = clamp(((r0.zzzz * v5.xxxx)).w, 0.0f, 1.0f);
  r0.w = (r0.w * v0.w);
  let v_5 = -(cb8_8.tint_symbol_4[4u].wwww);
  r0.z = (r0.z + v_5.z);
  r0.z = clamp(((r0.zzzz * v5.xxxx)).z, 0.0f, 1.0f);
  r1.x = ((-(r0.zzzz)).x + 1.0f);
  r2.x = ((-(cb8_8.tint_symbol_4[4u].zzzz)).x + 1.0f);
  r0.z = fma(r1.x, r2.x, r0.z);
  let v_6 = (r0.zzz * v0.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r0.z = clamp(((x0[0u].xxxx * vec4<f32>(20.0f))).z, 0.0f, 1.0f);
  let v_7 = bitcast<u32>(r1.y);
  r0.z = select(1.0f, r0.z, (v_7 != 0u));
  r2.w = (r0.z * r0.w);
  r3 = textureSample(t5, s5, v1.xyxx.xy);
  let v_8 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r4 = textureSample(t5, s5, v1.zwzz.xy);
  let v_9 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  r4 = (-(r3) + r4);
  r3 = fma(v3.xy.xxxx, r4, r3);
  r4 = (r2 * r3);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol[22u].y)));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r5 = textureSample(t4, s4, r0.xyxx.xy);
    r0.z = (r5.x + -1.0f);
    r0.z = clamp(fma(cb2_2.tint_symbol[22u].yyyy, r0.zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r0.z = (r0.z * v4.w);
  } else {
    r0.z = v4.w;
  }
  r4.w = clamp(r4.wwww.w, 0.0f, 1.0f);
  if ((bitcast<u32>(r1.z) != 0u)) {
    r5 = textureSample(t3, s3, r0.xyxx.xy);
    let v_10 = (r5.xyz * r5.xyz);
    r0 = vec4<f32>(v_10.xy, r0.z, v_10.z);
    let v_11 = fma((-(cb3_3.tint_symbol_1[0u].zzzz)).xyz, cb3_3.tint_symbol_1[1u].xyz, cb3_3.tint_symbol_1[43u].xyz);
    r1 = vec4<f32>(v_11.xyz, r1.w);
    let v_12 = (r0.xyw * r1.xyz);
    r0 = vec4<f32>(v_12.xy, r0.z, v_12.z);
    let v_13 = (r0.xyw * cb9_9.tint_symbol_3[6u].zzz);
    r1 = vec4<f32>(v_13.xyz, r1.w);
    let v_14 = (r4.xyz * r5.xyz);
    r5 = vec4<f32>(v_14.xyz, r5.w);
    let v_15 = (r5.xyz + r5.xyz);
    r5 = vec4<f32>(v_15.xyz, r5.w);
    let v_16 = -(r5.xyzx);
    let v_17 = fma(r2.xyz, r3.xyz, v_16.xyz);
    r6 = vec4<f32>(v_17.xyz, r6.w);
    let v_18 = fma(v4.yyy, r6.xyz, r5.xyz);
    r5 = vec4<f32>(v_18.xyz, r5.w);
    let v_19 = fma((-(r0.xyxw)).xyw, cb9_9.tint_symbol_3[6u].zzz, r5.xyz);
    r0 = vec4<f32>(v_19.xy, r0.z, v_19.z);
    let v_20 = fma(v4.xxx, r0.xyw, r1.xyz);
    r0 = vec4<f32>(v_20.xy, r0.z, v_20.z);
  } else {
    let v_21 = fma((-(r2.xyzx)).xyz, r3.xyz, v4.xyz);
    r1 = vec4<f32>(v_21.xyz, r1.w);
    let v_22 = fma(r0.zzz, r1.xyz, r4.xyz);
    r0 = vec4<f32>(v_22.xy, r0.z, v_22.z);
  }
  let v_23 = (r0.xyw * cb2_2.tint_symbol[17u].zzz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  let v_24 = bitcast<vec3<u32>>(r1.www);
  let v_25 = r0.xyw;
  let v_26 = select(r1.xyz, v_25, (v_24 != vec3<u32>()));
  r4 = vec4<f32>(v_26.xyz, r4.w);
  o2 = (r4.w * cb2_2.tint_symbol[22u].x);
  o0 = r4;
  o1 = v7.w;
}

struct tint_symbol_5 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) @interpolate(flat) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_27 : vec4<f32>, @location(15u) v12 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v3, v4, v5, v7, v_27, v12);
  return tint_symbol_5(o0, o1, o2);
}
