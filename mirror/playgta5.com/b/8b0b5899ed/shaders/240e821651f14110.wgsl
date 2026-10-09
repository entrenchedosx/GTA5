diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
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
  let v_6 = (v1.xy * cb11_11.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = (v1.xy * cb11_11.tint_symbol_4[5u].ww);
  r0 = vec4<f32>(r0.xy, v_7.xy);
  r1 = textureSample(t3, s3, v1.zwzz.xy);
  r2 = textureSample(t0, s0, r0.xyxx.xy);
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_8 = (r0.xxx * v2.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r4 = textureSample(t5, s5, v1.zwzz.xy);
  let v_9 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_9.xy, r0.zw);
  r3.w = dot(r0.xy, r0.xy);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = sqrt(abs(r3.wwww).w);
  r4.x = max(cb11_11.tint_symbol_4[8u].x, 0.00100000004749745131f);
  let v_10 = (r0.xy * r4.xx);
  r0 = vec4<f32>(v_10.xy, r0.zw);
  let v_11 = (r0.yyy * v6.xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = fma(r0.xxx, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = fma(r3.www, v2.xyz, r4.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = inverseSqrt(r0.x);
  r5 = textureSample(t6, s6, r0.zwzz.xy);
  let v_14 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_14.xy, r5.zw);
  r0.y = dot(r5.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r0.z = (r0.y * cb11_11.tint_symbol_4[4u].y);
  let v_15 = (r2.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  r0.w = (r1.w * cb11_11.tint_symbol_4[1u].w);
  let v_16 = -(r5.xyzx);
  let v_17 = fma(r1.xyz, cb11_11.tint_symbol_4[1u].xyz, v_16.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = fma(r0.www, r1.xyz, r5.xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = -(r3.xyzx);
  let v_20 = fma(r4.xyz, r0.xxx, v_19.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = fma(r0.www, r1.xyz, r3.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  r2 = (r2 * v3.xxxw);
  r0.x = (v3.x * cb2_2.tint_symbol[15u].z);
  r0.z = (r0.z * v3.x);
  r0.z = (r0.z * v2.w);
  let v_22 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_22.xy, r3.zw);
  r0.w = (r3.x * v3.z);
  let v_23 = (r3.yy * v1.xy);
  let v_24 = r3;
  r3 = vec4<f32>(v_24.x, v_23.xy, v_24.w);
  r4 = textureSample(t4, s4, r3.yzyy.xy);
  r1.w = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  r3.y = ((-(r4.xxxx)).y + r4.z);
  r4.x = fma(r1.w, r3.y, r4.x);
  let v_25 = (r4.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_26 = r3;
  r3 = vec4<f32>(v_26.x, v_25.xy, v_26.w);
  r1.w = fma(v3.z, r3.x, -1.0f);
  r1.w = fma(r3.x, r1.w, 1.0f);
  r3.x = (r1.w * r3.y);
  let v_27 = -(r2.xyxz);
  let v_28 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_27.xyw);
  r4 = vec4<f32>(v_28.xy, r4.z, v_28.z);
  let v_29 = fma(r3.xxx, r4.xyw, r2.xyz);
  r2 = vec4<f32>(v_29.xyz, r2.w);
  r0.w = (r0.w * cb11_11.tint_symbol_4[2u].x);
  let v_30 = ((-(r2.xyxz)).xyw + r4.zzz);
  r3 = vec4<f32>(v_30.xy, r3.z, v_30.z);
  let v_31 = fma(r0.www, r3.xyw, r2.xyz);
  r2 = vec4<f32>(v_31.xyz, r2.w);
  r0.w = fma((-(r3.zzzz)).w, r1.w, 1.0f);
  r0.z = (r0.w * r0.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[6u].y)));
  r1.w = (cb11_11.tint_symbol_4[2u].w * cb11_11.tint_symbol_4[6u].y);
  r1.w = (r1.w * v3.x);
  r0.y = (r0.y * r1.w);
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_32 = ((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r3 = vec4<f32>(v_32.xyz, r3.w);
  let v_33 = fma(cb11_11.tint_symbol_4[7u].www, r3.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r3 = vec4<f32>(v_33.xyz, r3.w);
  let v_34 = (r0.yyy * cb11_11.tint_symbol_4[7u].xyz);
  r4 = vec4<f32>(v_34.xyz, r4.w);
  let v_35 = -(r3.xyzx);
  let v_36 = fma(v4.xyz, r1.www, v_35.xyz);
  r3 = vec4<f32>(v_36.xyz, r3.w);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_37 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_37.xyz, r3.w);
  r0.y = dot(r1.xyz, r3.xyz);
  r0.y = clamp(((r0.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r1.x = fma(cb11_11.tint_symbol_4[6u].x, r5.w, 0.00000000999999993923f);
  r0.y = log2(r0.y);
  r0.y = (r0.y * r1.x);
  r0.y = exp2(r0.y);
  let v_38 = fma(r4.xyz, r0.yyy, r2.xyz);
  r1 = vec4<f32>(v_38.xy, r1.z, v_38.z);
  let v_39 = bitcast<vec3<u32>>(r0.www);
  let v_40 = r1.xyw;
  let v_41 = select(r2.xyz, v_40, (v_39 != vec3<u32>()));
  r1 = vec4<f32>(v_41.xy, r1.z, v_41.z);
  let v_42 = min(r1.xyw, vec3<f32>(240.0f));
  r1 = vec4<f32>(v_42.xy, r1.z, v_42.z);
  r2.w = (r2.w * cb2_2.tint_symbol[15u].x);
  r0.y = (r1.z + -0.34999999403953552246f);
  r0.y = clamp(((r0.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r0.y = (r0.y * cb5_5.tint_symbol_2[3u].z);
  r0.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r0.y = (r0.w * r0.y);
  r0.x = (r0.x * r0.y);
  r0.y = fma((-(r0.zzzz)).y, 0.5f, 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = fma(r0.x, -0.5f, 1.0f);
  let v_43 = (r0.xxx * r1.xyw);
  r2 = vec4<f32>(v_43.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_44 = bitcast<vec4<u32>>(r0.xxxx);
  r0 = select(r2, v3, (v_44 != vec4<u32>()));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  v_5((bitcast<u32>(r1.x) != 0u));
  o0 = r0;
}

fn v_5(v_45 : bool) {
  if (v_45) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_46 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_46, v1, v2, v3, v4, v5, v6);
  return o0;
}
