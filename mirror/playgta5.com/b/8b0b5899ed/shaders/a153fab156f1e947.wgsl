diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb6_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

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
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r0.w = (r0.w * v3.w);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  v_5((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t3, s3, v1.xyxx.xy);
  let v_6 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  let v_7 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_8.xy, r1.z, v_8.z);
  let v_9 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_10 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r3 = textureSample(t4, s4, v1.xyxx.xy);
  let v_11 = (r3.xy * r3.xy);
  r1 = vec4<f32>(v_11.xy, r1.zw);
  let v_12 = (r0.xyz * cb12_12.tint_symbol_3[0u].xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r2.w = (r1.x * v3.x);
  let v_13 = ((-(cb12_12.tint_symbol_3[3u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_13.xy, r3.zw);
  r3.z = (r3.x * v3.z);
  let v_14 = (r3.yy * v1.zw);
  let v_15 = r3;
  r3 = vec4<f32>(v_15.x, v_14.x, v_15.z, v_14.y);
  r4 = textureSample(t2, s2, r3.ywyy.xy);
  r3.y = (cb5_5.tint_symbol_2[3u].z * cb12_12.tint_symbol_3[3u].z);
  r3.w = ((-(r4.xxxx)).w + r4.z);
  r4.x = fma(r3.y, r3.w, r4.x);
  let v_16 = (r4.xy * cb12_12.tint_symbol_3[3u].xx);
  let v_17 = r3;
  r3 = vec4<f32>(v_17.x, v_16.x, v_17.z, v_16.y);
  r4.x = fma(v3.z, r3.x, -1.0f);
  r3.x = fma(r3.x, r4.x, 1.0f);
  r3.y = (r3.x * r3.y);
  let v_18 = -(r0.xyxz);
  let v_19 = fma(cb12_12.tint_symbol_3[4u].xyz, cb12_12.tint_symbol_3[3u].yyy, v_18.xyw);
  r4 = vec4<f32>(v_19.xy, r4.z, v_19.z);
  let v_20 = fma(r3.yyy, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r3.y = (r3.z * cb12_12.tint_symbol_3[3u].x);
  let v_21 = ((-(r0.xyzx)).xyz + r4.zzz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = fma(r3.yyy, r4.xyz, r0.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  r3.x = fma((-(r3.wwww)).x, r3.x, 1.0f);
  r2.w = (r2.w * r3.x);
  r3.x = (v3.x * cb12_12.tint_symbol_3[3u].w);
  r1.x = (r1.x * r3.x);
  r1.x = (r1.x * 1.5f);
  r3.x = dot(v4.xyz, v4.xyz);
  r3.x = inverseSqrt(r3.x);
  let v_23 = ((-(cb3_3.tint_symbol_1[0u].xxyz)).yzw + vec3<f32>(0.0f, 0.0f, -1.0f));
  r3 = vec4<f32>(r3.x, v_23.xyz);
  let v_24 = fma(cb12_12.tint_symbol_3[5u].www, r3.yzw, cb3_3.tint_symbol_1[0u].xyz);
  r3 = vec4<f32>(r3.x, v_24.xyz);
  let v_25 = -(r3.yzwy);
  let v_26 = fma(v4.xyz, r3.xxx, v_25.xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_27 = (r3.www * r3.xyz);
  r3 = vec4<f32>(v_27.xyz, r3.w);
  r2.x = dot(r2.xyz, r3.xyz);
  r2.x = clamp(((r2.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.y = fma(r1.y, 7.0f, 0.00000000999999993923f);
  r2.x = log2(r2.x);
  r1.y = (r1.y * r2.x);
  r1.y = exp2(r1.y);
  let v_28 = fma(r1.xxx, r1.yyy, r0.xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  r1.x = fma(r1.z, r1.w, -0.34999999403953552246f);
  r1.x = clamp(((r1.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r1.x = (r1.x * cb5_5.tint_symbol_2[3u].z);
  r1.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r1.x = (r1.y * r1.x);
  r1.x = (r1.x * cb2_2.tint_symbol[15u].z);
  r1.y = fma((-(r2.wwww)).y, 0.5f, 1.0f);
  r1.x = (r1.y * r1.x);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_29 = (r0.xyz * r1.xxx);
  o0 = vec4<f32>(v_29.xyz, o0.w);
  o0.w = r0.w;
}

fn v_5(v_30 : bool) {
  if (v_30) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_31 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_31, v1, v2, v3, v4, v5, v6);
  return o0;
}
