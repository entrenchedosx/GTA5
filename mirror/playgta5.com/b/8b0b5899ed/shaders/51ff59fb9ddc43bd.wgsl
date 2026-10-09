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

struct cb7_struct {
  tint_symbol_4 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb7_struct;

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
  r0 = textureSample(t3, s3, v1.zwzz.xy);
  r1 = textureSample(t0, s0, v1.xyxx.xy);
  r2.x = dot(v2.xyz, v2.xyz);
  r2.x = inverseSqrt(r2.x);
  let v_6 = (r2.xxx * v2.xyz);
  r2 = vec4<f32>(r2.x, v_6.xyz);
  r3 = textureSample(t5, s5, v1.zwzz.xy);
  let v_7 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_7.xy, r3.zw);
  r3.x = dot(r3.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r3.y = (r3.x * cb11_11.tint_symbol_4[4u].y);
  let v_8 = (r1.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r4 = vec4<f32>(v_8.xyz, r4.w);
  r0.w = (r0.w * cb11_11.tint_symbol_4[1u].w);
  let v_9 = -(r4.xyzx);
  let v_10 = fma(r0.xyz, cb11_11.tint_symbol_4[1u].xyz, v_9.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = fma(r0.www, r0.xyz, r4.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r0 = (r1 * v3.xxxw);
  r1.x = (v3.x * cb2_2.tint_symbol[15u].z);
  r1.y = (r3.y * v3.x);
  r1.y = (r1.y * v2.w);
  let v_12 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).zw + vec2<f32>(1.0f, 2.0f));
  r1 = vec4<f32>(r1.xy, v_12.xy);
  r3.y = (r1.z * v3.z);
  let v_13 = (r1.ww * v1.xy);
  r4 = vec4<f32>(v_13.xy, r4.zw);
  r4 = textureSample(t4, s4, r4.xyxx.xy);
  r1.w = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  r3.z = ((-(r4.xxxx)).z + r4.z);
  r4.x = fma(r1.w, r3.z, r4.x);
  let v_14 = (r4.xy * cb11_11.tint_symbol_4[2u].xx);
  r4 = vec4<f32>(v_14.xy, r4.zw);
  r1.w = fma(v3.z, r1.z, -1.0f);
  r1.z = fma(r1.z, r1.w, 1.0f);
  r1.w = (r1.z * r4.x);
  let v_15 = -(r0.xyzx);
  let v_16 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_15.xyz);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = fma(r1.www, r5.xyz, r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r1.w = (r3.y * cb11_11.tint_symbol_4[2u].x);
  let v_18 = ((-(r0.xxyz)).xzw + r4.zzz);
  r4 = vec4<f32>(v_18.x, r4.y, v_18.yz);
  let v_19 = fma(r1.www, r4.xzw, r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r1.z = fma((-(r4.yyyy)).z, r1.z, 1.0f);
  r1.y = (r1.z * r1.y);
  r1.z = (v3.x * cb11_11.tint_symbol_4[2u].w);
  r1.z = (r3.x * r1.z);
  r1.z = (r1.z * 0.75f);
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_20 = ((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r3 = vec4<f32>(v_20.xyz, r3.w);
  let v_21 = fma(cb11_11.tint_symbol_4[6u].www, r3.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  let v_22 = (r1.zzz * cb11_11.tint_symbol_4[6u].xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = -(r3.xyzx);
  let v_24 = fma(v4.xyz, r1.www, v_23.xyz);
  r3 = vec4<f32>(v_24.xyz, r3.w);
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_25 = (r1.zzz * r3.xyz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  r1.z = dot(r2.yzw, r3.xyz);
  r1.z = clamp(((r1.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r1.w = fma(r3.w, 15.0f, 0.00000000999999993923f);
  r1.z = log2(r1.z);
  r1.z = (r1.z * r1.w);
  r1.z = exp2(r1.z);
  let v_26 = fma(r4.xyz, r1.zzz, r0.xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = min(r0.xyz, vec3<f32>(240.0f));
  r0 = vec4<f32>(v_27.xyz, r0.w);
  r3.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.w = fma(v2.z, r2.x, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r0.w = (r0.w * r1.z);
  r0.w = (r1.x * r0.w);
  r1.x = fma((-(r1.yyyy)).x, 0.5f, 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = fma(r0.w, -0.5f, 1.0f);
  let v_28 = (r0.www * r0.xyz);
  r3 = vec4<f32>(v_28.xyz, r3.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_29 = bitcast<vec4<u32>>(r0.xxxx);
  r0 = select(r3, v3, (v_29 != vec4<u32>()));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  v_5((bitcast<u32>(r1.x) != 0u));
  o0 = r0;
}

fn v_5(v_30 : bool) {
  if (v_30) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_31 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_31, v1, v2, v3, v4);
  return o0;
}
