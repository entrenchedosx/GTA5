diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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
  let v_3 = (v11.xy * cb7_7.tint_symbol_2[1u].xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r2 = textureSample(t12, s12, r1.xyxx.xy);
  r0.w = ((-(r2.xxxx)).w + 1.0f);
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), !((vec4<f32>() == cb9_9.tint_symbol_3[5u].zwxy))));
  r1.z = ((-(r0.wwww)).z + 1.0f);
  let v_4 = bitcast<u32>(r2.x);
  let v_5 = r1.z;
  r0.w = select(r0.w, v_5, (v_4 != 0u));
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = fma(r0.w, cb7_7.tint_symbol_2[0u].z, cb7_7.tint_symbol_2[0u].w);
  r0.w = (1.0f / r0.w);
  r0.w = (r0.w + (-(v7.wwww)).w);
  r0.w = fma(r0.w, r0.w, (-(v7.xxxx)).w);
  r1.z = clamp(((r0.wwww * v5.xxxx)).z, 0.0f, 1.0f);
  r1.z = (r1.z * v0.w);
  let v_6 = -(cb8_8.tint_symbol_4[4u].wwww);
  r0.w = (r0.w + v_6.w);
  r0.w = clamp(((r0.wwww * v5.xxxx)).w, 0.0f, 1.0f);
  r1.w = ((-(r0.wwww)).w + 1.0f);
  r2.x = ((-(cb8_8.tint_symbol_4[4u].zzzz)).x + 1.0f);
  r0.w = fma(r1.w, r2.x, r0.w);
  let v_7 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r1.w = clamp(((x0[0u].xxxx * vec4<f32>(20.0f))).w, 0.0f, 1.0f);
  let v_8 = bitcast<u32>(r2.y);
  r1.w = select(1.0f, r1.w, (v_8 != 0u));
  r0.w = (r1.w * r1.z);
  r3 = textureSample(t5, s5, v1.xyxx.xy);
  let v_9 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r4 = textureSample(t5, s5, v1.zwzz.xy);
  let v_10 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  r4 = (-(r3) + r4);
  r3 = fma(v3.xy.xxxx, r4, r3);
  r0 = (r0 * r3);
  let v_11 = (r3.xyz * v5.yzw);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  r1.z = dot(r3.xyz, vec3<f32>(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
  r1.z = clamp(((r1.zzzz + vec4<f32>(-0.05000000074505805969f))).z, 0.0f, 1.0f);
  r1.z = (r1.z * v3.y);
  let v_12 = fma(r3.xyz, r1.zzz, r0.xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol[22u].y)));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r4 = textureSample(t4, s4, r1.xyxx.xy);
    r1.z = (r4.x + -1.0f);
    r1.z = clamp(fma(cb2_2.tint_symbol[22u].yyyy, r1.zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r1.z = (r1.z * v4.w);
  } else {
    r1.z = v4.w;
  }
  r0.w = clamp(r0.wwww.w, 0.0f, 1.0f);
  if ((bitcast<u32>(r2.z) != 0u)) {
    r4 = textureSample(t3, s3, r1.xyxx.xy);
    let v_13 = (r4.xyz * r4.xyz);
    r1 = vec4<f32>(v_13.xy, r1.z, v_13.z);
    let v_14 = fma((-(cb3_3.tint_symbol_1[0u].zzzz)).xyz, cb3_3.tint_symbol_1[1u].xyz, cb3_3.tint_symbol_1[43u].xyz);
    r2 = vec4<f32>(v_14.xyz, r2.w);
    let v_15 = (r1.xyw * r2.xyz);
    r1 = vec4<f32>(v_15.xy, r1.z, v_15.z);
    let v_16 = (r1.xyw * cb9_9.tint_symbol_3[6u].zzz);
    r2 = vec4<f32>(v_16.xyz, r2.w);
    let v_17 = (r3.xyz * r4.xyz);
    r4 = vec4<f32>(v_17.xyz, r4.w);
    let v_18 = (r4.xyz + r4.xyz);
    r5 = vec4<f32>(v_18.xyz, r5.w);
    let v_19 = fma((-(r4.xyzx)).xyz, vec3<f32>(2.0f), r3.xyz);
    r4 = vec4<f32>(v_19.xyz, r4.w);
    let v_20 = fma(v4.yyy, r4.xyz, r5.xyz);
    r4 = vec4<f32>(v_20.xyz, r4.w);
    let v_21 = fma((-(r1.xyxw)).xyw, cb9_9.tint_symbol_3[6u].zzz, r4.xyz);
    r1 = vec4<f32>(v_21.xy, r1.z, v_21.z);
    let v_22 = fma(v4.xxx, r1.xyw, r2.xyz);
    r1 = vec4<f32>(v_22.xy, r1.z, v_22.z);
  } else {
    let v_23 = ((-(r3.xyzx)).xyz + v4.xyz);
    r2 = vec4<f32>(v_23.xyz, r2.w);
    let v_24 = fma(r1.zzz, r2.xyz, r3.xyz);
    r1 = vec4<f32>(v_24.xy, r1.z, v_24.z);
  }
  let v_25 = (r1.xyw * cb2_2.tint_symbol[17u].zzz);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  let v_26 = bitcast<vec3<u32>>(r2.www);
  let v_27 = r1.xyw;
  let v_28 = select(r2.xyz, v_27, (v_26 != vec3<u32>()));
  r0 = vec4<f32>(v_28.xyz, r0.w);
  o2 = (r0.w * cb2_2.tint_symbol[22u].x);
  o0 = r0;
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) @interpolate(flat) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(9u) v9 : vec4<f32>, @builtin(position) v_29 : vec4<f32>, @location(15u) v12 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v3, v4, v5, v7, v9, v_29, v12);
  return tint_symbol_5(o0, o1, o2);
}
