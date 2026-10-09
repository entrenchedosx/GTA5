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

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
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
  let v_6 = (v1.xy * cb11_11.tint_symbol_3[3u].ww);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r1 = textureSample(t0, s0, v1.xyxx.xy);
  r2 = textureSample(t6, s6, v1.xyxx.xy);
  let v_7 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_7.xy);
  r2.x = dot(r0.zw, r0.zw);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = sqrt(abs(r2.xxxx).x);
  let v_8 = (r0.www * v6.xyz);
  r2 = vec4<f32>(r2.x, v_8.xyz);
  let v_9 = fma(r0.zzz, v5.xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_9.xyz);
  let v_10 = fma(r2.xxx, v2.xyz, r2.yzw);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = inverseSqrt(r0.z);
  r3 = textureSample(t7, s7, r0.xyxx.xy);
  r0.x = (r3.x * r3.x);
  r0.x = (r0.x * v3.x);
  let v_11 = (r1.xyz * cb11_11.tint_symbol_3[0u].xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r3 = (r1 * v3.xxxw);
  r0.y = (v3.x * cb2_2.tint_symbol[15u].z);
  let v_12 = (v1.zw * cb11_11.tint_symbol_3[5u].xx);
  r2 = vec4<f32>(v_12.xy, r2.zw);
  r4 = textureSample(t3, s3, r2.xyxx.xy);
  r5 = textureSample(t4, s4, r2.xyxx.xy);
  r0.w = clamp(((v7.xyz.zzzz + v7.xyz.zzzz)).w, 0.0f, 1.0f);
  r1.w = (v7.z + -0.5f);
  r1.w = clamp(((r1.wwww + r1.wwww)).w, 0.0f, 1.0f);
  r0.w = (r4.w * r0.w);
  let v_13 = fma((-(r1.xyzx)).xyz, v3.xxx, r4.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = fma(r0.www, r1.xyz, r3.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = ((-(r1.xyxz)).xyw + r5.xyz);
  r2 = vec4<f32>(v_15.xy, r2.z, v_15.z);
  let v_16 = fma(r1.www, r2.xyw, r1.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r0.x = (r0.x * v2.w);
  r0.x = (r0.x * 0.40000000596046447754f);
  let v_17 = ((-(cb11_11.tint_symbol_3[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r2 = vec4<f32>(v_17.xy, r2.zw);
  r0.w = (r2.x * v3.z);
  let v_18 = (r2.yy * v7.xyz.xy);
  let v_19 = r2;
  r2 = vec4<f32>(v_19.x, v_18.x, v_19.z, v_18.y);
  r4 = textureSample(t5, s5, r2.ywyy.xy);
  r1.w = (cb5_5.tint_symbol_1[3u].z * cb11_11.tint_symbol_3[2u].z);
  r2.y = ((-(r4.xxxx)).y + r4.z);
  r4.x = fma(r1.w, r2.y, r4.x);
  let v_20 = (r4.xy * cb11_11.tint_symbol_3[2u].xx);
  let v_21 = r2;
  r2 = vec4<f32>(v_21.x, v_20.x, v_21.z, v_20.y);
  r1.w = fma(v3.z, r2.x, -1.0f);
  r1.w = fma(r2.x, r1.w, 1.0f);
  r2.x = (r1.w * r2.y);
  let v_22 = -(r1.xyzx);
  let v_23 = fma(cb11_11.tint_symbol_3[3u].xyz, cb11_11.tint_symbol_3[2u].yyy, v_22.xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  let v_24 = fma(r2.xxx, r3.xyz, r1.xyz);
  r1 = vec4<f32>(v_24.xyz, r1.w);
  r0.w = (r0.w * cb11_11.tint_symbol_3[2u].x);
  let v_25 = ((-(r1.xyzx)).xyz + r4.zzz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  let v_26 = fma(r0.www, r3.xyz, r1.xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  r0.w = fma((-(r2.wwww)).w, r1.w, 1.0f);
  r0.x = (r0.w * r0.x);
  r3.w = (r3.w * cb2_2.tint_symbol[15u].x);
  r0.z = fma(r2.z, r0.z, -0.34999999403953552246f);
  r0.z = clamp(((r0.zzzz * vec4<f32>(1.53846156597137451172f))).z, 0.0f, 1.0f);
  r0.z = (r0.z * cb5_5.tint_symbol_1[3u].z);
  r0.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r0.z = (r0.w * r0.z);
  r0.y = (r0.y * r0.z);
  r0.x = fma((-(r0.xxxx)).x, 0.5f, 1.0f);
  r0.x = (r0.x * r0.y);
  r0.x = fma(r0.x, -0.5f, 1.0f);
  let v_27 = (r0.xxx * r1.xyz);
  r3 = vec4<f32>(v_27.xyz, r3.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_2[4u].x) | bitcast<u32>(cb12_12.tint_symbol_2[4u].y)));
  let v_28 = bitcast<vec4<u32>>(r0.xxxx);
  r0 = select(r3, v3, (v_28 != vec4<u32>()));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  v_5((bitcast<u32>(r1.x) != 0u));
  o0 = r0;
}

fn v_5(v_29 : bool) {
  if (v_29) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_30 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_30, v1, v2, v3, v5, v6, v7);
  return o0;
}
