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

struct cb10_struct {
  tint_symbol_4 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb10_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
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
  let v_6 = (v1.zw * cb11_11.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = (v1.zw * cb11_11.tint_symbol_4[5u].ww);
  r0 = vec4<f32>(r0.xy, v_7.xy);
  r1 = textureSample(t5, s5, v1.zwzz.xy);
  r2 = textureSample(t0, s0, r0.xyxx.xy);
  r3 = textureSample(t8, s8, v1.xyxx.xy);
  r4 = textureSample(t7, s7, v7.xyz.xyxx.xy);
  r0.x = min(cb11_11.tint_symbol_4[2u].x, 0.5f);
  let v_8 = ((-(r3.xxxy)).zw + r4.xy);
  r3 = vec4<f32>(r3.xy, v_8.xy);
  let v_9 = fma(r0.xx, r3.zw, r3.xy);
  r0 = vec4<f32>(v_9.xy, r0.zw);
  let v_10 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_10.xy, r0.zw);
  r3.x = dot(r0.xy, r0.xy);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = sqrt(abs(r3.xxxx).x);
  r3.y = max(cb11_11.tint_symbol_4[8u].x, 0.00100000004749745131f);
  let v_11 = (r0.xy * r3.yy);
  r0 = vec4<f32>(v_11.xy, r0.zw);
  let v_12 = (r0.yyy * v6.xyz);
  r3 = vec4<f32>(r3.x, v_12.xyz);
  let v_13 = fma(r0.xxx, v5.xyz, r3.yzw);
  r3 = vec4<f32>(r3.x, v_13.xyz);
  let v_14 = fma(r3.xxx, v2.xyz, r3.yzw);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_15 = (r0.xxx * r3.xyz);
  r3 = vec4<f32>(v_15.xy, r3.z, v_15.z);
  r4 = textureSample(t9, s9, r0.zwzz.xy);
  let v_16 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_16.xy, r4.zw);
  r0.y = dot(r4.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r0.z = (r0.y * cb11_11.tint_symbol_4[4u].y);
  let v_17 = (r2.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = (v1.xy * cb11_11.tint_symbol_4[9u].zz);
  r5 = vec4<f32>(v_18.xy, r5.zw);
  r6 = textureSample(t3, s3, r5.xyxx.xy);
  r5 = textureSample(t4, s4, r5.xyxx.xy);
  r0.w = clamp(((v7.xyz.zzzz + v7.xyz.zzzz)).w, 0.0f, 1.0f);
  r5.w = (v7.z + -0.5f);
  r5.w = clamp(((r5.wwww + r5.wwww)).w, 0.0f, 1.0f);
  r0.w = (r6.w * r0.w);
  let v_19 = fma((-(r2.xyzx)).xyz, cb11_11.tint_symbol_4[0u].yzw, r6.xyz);
  r6 = vec4<f32>(v_19.xyz, r6.w);
  let v_20 = fma(r0.www, r6.xyz, r4.xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = ((-(r4.xyzx)).xyz + r5.xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  let v_22 = fma(r5.www, r5.xyz, r4.xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  r0.w = (r1.w * cb11_11.tint_symbol_4[1u].w);
  let v_23 = -(r4.xyzx);
  let v_24 = fma(r1.xyz, cb11_11.tint_symbol_4[1u].xyz, v_23.xyz);
  r1 = vec4<f32>(v_24.xyz, r1.w);
  let v_25 = fma(r0.www, r1.xyz, r4.xyz);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  r1 = (r2 * v3.xxxw);
  r0.w = (v3.x * cb2_2.tint_symbol[15u].z);
  r0.z = (r0.z * v3.x);
  r0.z = (r0.z * v2.w);
  let v_26 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r2 = vec4<f32>(v_26.xy, r2.zw);
  r2.z = (r2.x * v3.z);
  let v_27 = (r2.yy * v7.xyz.xy);
  let v_28 = r2;
  r2 = vec4<f32>(v_28.x, v_27.x, v_28.z, v_27.y);
  r5 = textureSample(t6, s6, r2.ywyy.xy);
  r2.y = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  r2.w = ((-(r5.xxxx)).w + r5.z);
  r5.x = fma(r2.y, r2.w, r5.x);
  let v_29 = (r5.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_30 = r2;
  r2 = vec4<f32>(v_30.x, v_29.x, v_30.z, v_29.y);
  r4.x = fma(v3.z, r2.x, -1.0f);
  r2.x = fma(r2.x, r4.x, 1.0f);
  r2.y = (r2.x * r2.y);
  let v_31 = -(r1.xyzx);
  let v_32 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_31.xyz);
  r4 = vec4<f32>(v_32.xyz, r4.w);
  let v_33 = fma(r2.yyy, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_33.xyz, r1.w);
  r2.y = (r2.z * cb11_11.tint_symbol_4[2u].x);
  let v_34 = ((-(r1.xyzx)).xyz + r5.zzz);
  r4 = vec4<f32>(v_34.xyz, r4.w);
  let v_35 = fma(r2.yyy, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_35.xyz, r1.w);
  r2.x = fma((-(r2.wwww)).x, r2.x, 1.0f);
  r0.z = (r0.z * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[6u].y)));
  r2.y = (cb11_11.tint_symbol_4[2u].w * cb11_11.tint_symbol_4[6u].y);
  r2.y = (r2.y * v3.x);
  r0.y = (r0.y * r2.y);
  r2.y = dot(v4.xyz, v4.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_36 = ((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r4 = vec4<f32>(v_36.xyz, r4.w);
  let v_37 = fma(cb11_11.tint_symbol_4[7u].www, r4.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r4 = vec4<f32>(v_37.xyz, r4.w);
  let v_38 = (r0.yyy * cb11_11.tint_symbol_4[7u].xyz);
  r5 = vec4<f32>(v_38.xyz, r5.w);
  let v_39 = -(r4.xxyz);
  let v_40 = fma(v4.xyz, r2.yyy, v_39.yzw);
  r2 = vec4<f32>(r2.x, v_40.xyz);
  r0.y = dot(r2.yzw, r2.yzw);
  r0.y = inverseSqrt(r0.y);
  let v_41 = (r0.yyy * r2.yzw);
  r2 = vec4<f32>(r2.x, v_41.xyz);
  r0.y = dot(r3.xyw, r2.yzw);
  r0.y = clamp(((r0.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r2.y = fma(cb11_11.tint_symbol_4[6u].x, r4.w, 0.00000000999999993923f);
  r0.y = log2(r0.y);
  r0.y = (r0.y * r2.y);
  r0.y = exp2(r0.y);
  let v_42 = fma(r5.xyz, r0.yyy, r1.xyz);
  r2 = vec4<f32>(r2.x, v_42.xyz);
  let v_43 = bitcast<vec3<u32>>(r2.xxx);
  let v_44 = r2.yzw;
  let v_45 = select(r1.xyz, v_44, (v_43 != vec3<u32>()));
  r1 = vec4<f32>(v_45.xyz, r1.w);
  let v_46 = min(r1.xyz, vec3<f32>(240.0f));
  r1 = vec4<f32>(v_46.xyz, r1.w);
  r2.w = (r1.w * cb2_2.tint_symbol[15u].x);
  r0.x = fma(r3.z, r0.x, -0.34999999403953552246f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.w * r0.x);
  r0.y = fma((-(r0.zzzz)).y, 0.5f, 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = fma(r0.x, -0.5f, 1.0f);
  let v_47 = (r0.xxx * r1.xyz);
  r2 = vec4<f32>(v_47.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_48 = bitcast<vec4<u32>>(r0.xxxx);
  r0 = select(r2, v3, (v_48 != vec4<u32>()));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  v_5((bitcast<u32>(r1.x) != 0u));
  o0 = r0;
}

fn v_5(v_49 : bool) {
  if (v_49) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_50 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_50, v1, v2, v3, v4, v5, v6, v7);
  return o0;
}
