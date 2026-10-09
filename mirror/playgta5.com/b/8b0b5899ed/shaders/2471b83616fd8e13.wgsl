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

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

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
  let v_6 = (v1.xy * cb11_11.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = (v1.xy * cb11_11.tint_symbol_4[6u].ww);
  r0 = vec4<f32>(r0.xy, v_7.xy);
  r1 = textureSample(t3, s3, v1.zwzz.xy);
  r2 = textureSample(t0, s0, r0.xyxx.xy);
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_8 = (r0.xxx * v2.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r4 = textureSample(t5, s5, r0.zwzz.xy);
  let v_9 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_9.xy, r4.zw);
  r0.y = dot(r4.xyz, cb11_11.tint_symbol_4[6u].xyz);
  r0.z = (r0.y * cb11_11.tint_symbol_4[5u].y);
  let v_10 = (r2.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r0.w = (r1.w * cb11_11.tint_symbol_4[1u].w);
  let v_11 = -(r2.xyzx);
  let v_12 = fma(r1.xyz, cb11_11.tint_symbol_4[1u].xyz, v_11.xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = fma(r0.www, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  r0.w = (r2.w * v3.w);
  r0.z = (r0.z * v3.x);
  r0.z = (r0.z * v2.w);
  let v_14 = ((-(cb11_11.tint_symbol_4[3u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r2 = vec4<f32>(v_14.xy, r2.zw);
  r1.w = (r2.x * v3.z);
  let v_15 = (r2.yy * v1.xy);
  let v_16 = r2;
  r2 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  r5 = textureSample(t4, s4, r2.yzyy.xy);
  r2.y = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[3u].z);
  r2.z = ((-(r5.xxxx)).z + r5.z);
  r5.x = fma(r2.y, r2.z, r5.x);
  let v_17 = (r5.xy * cb11_11.tint_symbol_4[3u].xx);
  let v_18 = r2;
  r2 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  r2.w = fma(v3.z, r2.x, -1.0f);
  r2.x = fma(r2.x, r2.w, 1.0f);
  r2.y = (r2.x * r2.y);
  let v_19 = -(r1.xyzx);
  let v_20 = fma(cb11_11.tint_symbol_4[4u].xyz, cb11_11.tint_symbol_4[3u].yyy, v_19.xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = fma(r2.yyy, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  r1.w = (r1.w * cb11_11.tint_symbol_4[3u].x);
  let v_22 = ((-(r1.xyzx)).xyz + r5.zzz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = fma(r1.www, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  r1.w = fma((-(r2.zzzz)).w, r2.x, 1.0f);
  r0.z = (r0.z * r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[7u].y)));
  r2.x = (cb11_11.tint_symbol_4[3u].w * cb11_11.tint_symbol_4[7u].y);
  r2.x = (r2.x * v3.x);
  r0.y = (r0.y * r2.x);
  r2.x = dot(v4.xyz, v4.xyz);
  r2.x = inverseSqrt(r2.x);
  let v_24 = ((-(cb3_3.tint_symbol_1[0u].xxyz)).yzw + vec3<f32>(0.0f, 0.0f, -1.0f));
  r2 = vec4<f32>(r2.x, v_24.xyz);
  let v_25 = fma(cb11_11.tint_symbol_4[8u].www, r2.yzw, cb3_3.tint_symbol_1[0u].xyz);
  r2 = vec4<f32>(r2.x, v_25.xyz);
  let v_26 = (r0.yyy * cb11_11.tint_symbol_4[8u].xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  let v_27 = -(r2.yzwy);
  let v_28 = fma(v4.xyz, r2.xxx, v_27.xyz);
  r2 = vec4<f32>(v_28.xyz, r2.w);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_29 = (r0.yyy * r2.xyz);
  r2 = vec4<f32>(v_29.xyz, r2.w);
  r0.y = dot(r3.xyz, r2.xyz);
  r0.y = clamp(((r0.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r2.x = fma(cb11_11.tint_symbol_4[7u].x, r4.w, 0.00000000999999993923f);
  r0.y = log2(r0.y);
  r0.y = (r0.y * r2.x);
  r0.y = exp2(r0.y);
  let v_30 = fma(r4.xyz, r0.yyy, r1.xyz);
  r2 = vec4<f32>(v_30.xyz, r2.w);
  let v_31 = bitcast<vec3<u32>>(r1.www);
  let v_32 = r2.xyz;
  let v_33 = select(r1.xyz, v_32, (v_31 != vec3<u32>()));
  r1 = vec4<f32>(v_33.xyz, r1.w);
  let v_34 = min(r1.xyz, vec3<f32>(240.0f));
  r1 = vec4<f32>(v_34.xyz, r1.w);
  r2.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.x = fma(v2.z, r0.x, -0.34999999403953552246f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * cb2_2.tint_symbol[15u].z);
  r0.y = fma((-(r0.zzzz)).y, 0.5f, 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = fma(r0.x, -0.5f, 1.0f);
  let v_35 = (r0.xxx * r1.xyz);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_36 = bitcast<vec4<u32>>(r0.xxxx);
  r0 = select(r2, v3, (v_36 != vec4<u32>()));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  v_5((bitcast<u32>(r1.x) != 0u));
  o0 = r0;
}

fn v_5(v_37 : bool) {
  if (v_37) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_38 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_38, v1, v2, v3, v4);
  return o0;
}
