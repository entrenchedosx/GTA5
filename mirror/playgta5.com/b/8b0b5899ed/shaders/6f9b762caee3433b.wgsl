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

struct cb2_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb2_struct_1;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v3 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v : vec4<f32>, v4 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v3 = v_1;
  x0[0u].x = v4.x;
  x0[0u].y = v4.y;
  x0[0u].z = v4.z;
  x0[0u].w = v4.w;
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol[22u].y)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    let v_2 = (v3.xy * cb7_7.tint_symbol_2[1u].xy);
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
  let v_4 = (r0.yzw * vec3<f32>(16.0f));
  r0 = vec4<f32>(r0.x, v_4.xyz);
  let v_5 = (v3.xy * cb7_7.tint_symbol_2[1u].xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r2 = textureSample(t12, s12, r1.xyxx.xy);
  r1.z = ((-(r2.xxxx)).z + 1.0f);
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), !((vec4<f32>() == cb9_9.tint_symbol_3[5u].zwxy))));
  r3.x = ((-(r1.zzzz)).x + 1.0f);
  let v_6 = bitcast<u32>(r2.x);
  let v_7 = r3.x;
  r1.z = select(r1.z, v_7, (v_6 != 0u));
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = fma(r1.z, cb7_7.tint_symbol_2[0u].z, cb7_7.tint_symbol_2[0u].w);
  r1.z = (1.0f / r1.z);
  r1.z = (r1.z + (-(v1.zzzz)).z);
  r2.x = (v1.w * cb8_8.tint_symbol_4[1u].x);
  let v_8 = -(r2.xxxx);
  r1.z = fma(r1.z, r1.z, v_8.z);
  r2.x = clamp(r1.zzzz.x, 0.0f, 1.0f);
  r2.x = (r2.x * v0.w);
  let v_9 = -(cb8_8.tint_symbol_4[1u].zzzz);
  r1.z = clamp(((r1.zzzz + v_9)).z, 0.0f, 1.0f);
  r3.x = ((-(r1.zzzz)).x + 1.0f);
  r3.y = ((-(cb8_8.tint_symbol_4[1u].yyyy)).y + 1.0f);
  r1.z = fma(r3.x, r3.y, r1.z);
  let v_10 = (r1.zzz * v0.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r1.z = clamp(((x0[0u].xxxx * vec4<f32>(20.0f))).z, 0.0f, 1.0f);
  let v_11 = bitcast<u32>(r2.y);
  r1.z = select(1.0f, r1.z, (v_11 != 0u));
  r1.z = (r1.z * r2.x);
  let v_12 = (r0.yzw * r3.xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  r5.w = clamp(((r1.wwww * r1.zzzz)).w, 0.0f, 1.0f);
  if ((bitcast<u32>(r2.z) != 0u)) {
    r1 = textureSample(t3, s3, r1.xyxx.xy);
    let v_13 = (r1.xyz * r1.xyz);
    r2 = vec4<f32>(v_13.xyz, r2.w);
    let v_14 = fma((-(cb3_3.tint_symbol_1[0u].zzzz)).xyz, cb3_3.tint_symbol_1[1u].xyz, cb3_3.tint_symbol_1[43u].xyz);
    r6 = vec4<f32>(v_14.xyz, r6.w);
    let v_15 = (r2.xyz * r6.xyz);
    r2 = vec4<f32>(v_15.xyz, r2.w);
    let v_16 = (r2.xyz * cb9_9.tint_symbol_3[6u].zzz);
    r6 = vec4<f32>(v_16.xyz, r6.w);
    let v_17 = (r1.xyz * r4.xyz);
    r1 = vec4<f32>(v_17.xyz, r1.w);
    let v_18 = (r1.xyz + r1.xyz);
    r1 = vec4<f32>(v_18.xyz, r1.w);
    let v_19 = -(r1.xyzx);
    let v_20 = fma(r0.yzw, r3.xyz, v_19.xyz);
    r7 = vec4<f32>(v_20.xyz, r7.w);
    let v_21 = fma(v2.yyy, r7.xyz, r1.xyz);
    r1 = vec4<f32>(v_21.xyz, r1.w);
    let v_22 = fma((-(r2.xyzx)).xyz, cb9_9.tint_symbol_3[6u].zzz, r1.xyz);
    r1 = vec4<f32>(v_22.xyz, r1.w);
    let v_23 = fma(v2.xxx, r1.xyz, r6.xyz);
    r1 = vec4<f32>(v_23.xyz, r1.w);
  } else {
    let v_24 = fma((-(r0.yyzw)).yzw, r3.xyz, v2.xyz);
    r0 = vec4<f32>(r0.x, v_24.xyz);
    let v_25 = fma(r0.xxx, r0.yzw, r4.xyz);
    r1 = vec4<f32>(v_25.xyz, r1.w);
  }
  let v_26 = (r1.xyz * cb2_2.tint_symbol[17u].zzz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = bitcast<vec3<u32>>(r2.www);
  let v_28 = r1.xyz;
  let v_29 = select(r0.xyz, v_28, (v_27 != vec3<u32>()));
  r5 = vec4<f32>(v_29.xyz, r5.w);
  o2 = (r5.w * cb2_2.tint_symbol[22u].x);
  o0 = r5;
  o1 = v1.z;
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(position) v_30 : vec4<f32>, @location(15u) v4 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v_30, v4);
  return tint_symbol_5(o0, o1, o2);
}
