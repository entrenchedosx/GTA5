diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb1_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb9_struct {
  tint_symbol_4 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb9_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = max(v0.xy, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1u)));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) << 1u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) + bitcast<i32>(r0.y)));
  r0.x = dot(cb2_2.tint_symbol[0u], icb0[bitcast<i32>(r0.x)]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  v_5((bitcast<u32>(r0.x) != 0u));
  let v_6 = (v1.xyz.xy * cb11_11.tint_symbol_4[5u].ww);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r1 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r0.z = dot(v2.xyz, v2.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_7 = (r0.zzz * v2.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r3 = textureSample(t6, s6, r0.xyxx.xy);
  let v_8 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_8.xy, r3.zw);
  r0.x = dot(r3.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r0.y = (r0.x * cb11_11.tint_symbol_4[4u].y);
  let v_9 = (r1.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r4 = (r1 * v3.xxxw);
  r0.w = (v3.x * cb2_2.tint_symbol[15u].z);
  let v_10 = (v1.xyz.xy * cb11_11.tint_symbol_4[8u].xx);
  r3 = vec4<f32>(v_10.xy, r3.zw);
  r5 = textureSample(t3, s3, r3.xyxx.xy);
  r6 = textureSample(t4, s4, r3.xyxx.xy);
  r1.w = clamp(((v1.xyz.zzzz + v1.xyz.zzzz)).w, 0.0f, 1.0f);
  r2.w = (v1.z + -0.5f);
  r2.w = clamp(((r2.wwww + r2.wwww)).w, 0.0f, 1.0f);
  r1.w = (r5.w * r1.w);
  let v_11 = fma((-(r1.xyzx)).xyz, v3.xxx, r5.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = fma(r1.www, r1.xyz, r4.xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = ((-(r1.xyzx)).xyz + r6.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = fma(r2.www, r3.xyz, r1.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r0.y = (r0.y * v3.x);
  r0.y = (r0.y * v2.w);
  let v_15 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_15.xy, r3.zw);
  r1.w = (r3.x * v3.z);
  let v_16 = (r3.yy * v1.xyz.xy);
  let v_17 = r3;
  r3 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  r5 = textureSample(t5, s5, r3.yzyy.xy);
  r2.w = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  r3.y = ((-(r5.xxxx)).y + r5.z);
  r5.x = fma(r2.w, r3.y, r5.x);
  let v_18 = (r5.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_19 = r3;
  r3 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  r2.w = fma(v3.z, r3.x, -1.0f);
  r2.w = fma(r3.x, r2.w, 1.0f);
  r3.x = (r2.w * r3.y);
  let v_20 = -(r1.xyzx);
  let v_21 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_20.xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = fma(r3.xxx, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  r1.w = (r1.w * cb11_11.tint_symbol_4[2u].x);
  let v_23 = ((-(r1.xyzx)).xyz + r5.zzz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = fma(r1.www, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_24.xyz, r1.w);
  r1.w = fma((-(r3.zzzz)).w, r2.w, 1.0f);
  r0.y = (r0.y * r1.w);
  r1.w = (v3.x * cb11_11.tint_symbol_4[2u].w);
  r0.x = (r0.x * r1.w);
  r0.x = (r0.x * 0.75f);
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_25 = ((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r3 = vec4<f32>(v_25.xyz, r3.w);
  let v_26 = fma(cb11_11.tint_symbol_4[6u].www, r3.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  let v_27 = (r0.xxx * cb11_11.tint_symbol_4[6u].xyz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  let v_28 = -(r3.xyzx);
  let v_29 = fma(v4.xyz, r1.www, v_28.xyz);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_30 = (r0.xxx * r3.xyz);
  r3 = vec4<f32>(v_30.xyz, r3.w);
  r0.x = dot(r2.xyz, r3.xyz);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.w = fma(r3.w, 15.0f, 0.00000000999999993923f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r1.w);
  r0.x = exp2(r0.x);
  let v_31 = fma(r4.xyz, r0.xxx, r1.xyz);
  r1 = vec4<f32>(v_31.xyz, r1.w);
  let v_32 = min(r1.xyz, vec3<f32>(240.0f));
  r1 = vec4<f32>(v_32.xyz, r1.w);
  r2.w = (r4.w * cb2_2.tint_symbol[15u].x);
  r0.x = fma(v2.z, r0.z, -0.34999999403953552246f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r0.x = (r0.z * r0.x);
  r0.x = (r0.w * r0.x);
  r0.y = fma((-(r0.yyyy)).y, 0.5f, 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = fma(r0.x, -0.5f, 1.0f);
  let v_33 = (r0.xxx * r1.xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_34 = bitcast<vec4<u32>>(r0.xxxx);
  r0 = select(r2, v3, (v_34 != vec4<u32>()));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  v_5((bitcast<u32>(r1.x) != 0u));
  o0 = r0;
}

fn v_5(v_35 : bool) {
  if (v_35) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_36 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_36, v1, v2, v3, v4);
  return o0;
}
