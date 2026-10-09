diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb6_struct {
  tint_symbol_4 : array<vec4<f32>, 6u>,
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

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  let v = (v1.xy * cb11_11.tint_symbol_4[3u].ww);
  r0 = vec4<f32>(v.xy, r0.zw);
  r1 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r2 = textureSample(t6, s6, v1.xy.xyxx.xy);
  let v_1 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_1.xy);
  r2.x = dot(r0.zw, r0.zw);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = sqrt(abs(r2.xxxx).x);
  let v_2 = (r0.www * v6.xyz);
  r2 = vec4<f32>(r2.x, v_2.xyz);
  let v_3 = fma(r0.zzz, v5.xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_3.xyz);
  let v_4 = fma(r2.xxx, v2.xyz, r2.yzw);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_5 = (r0.zzz * r2.xyz);
  r2 = vec4<f32>(v_5.xy, r2.z, v_5.z);
  r3 = textureSample(t7, s7, r0.xyxx.xy);
  let v_6 = (r3.xy * r3.xy);
  let v_7 = r4;
  r4 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r0.x = (r4.y * v3.x);
  let v_8 = (r1.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r5 = (r1 * v3.xxxw);
  r0.y = (v3.x * cb2_2.tint_symbol[15u].z);
  let v_9 = (v7.xyz.xy * cb11_11.tint_symbol_4[5u].xx);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  r6 = textureSample(t3, s3, r3.xyxx.xy);
  r7 = textureSample(t4, s4, r3.xyxx.xy);
  r0.w = clamp(((v7.xyz.zzzz + v7.xyz.zzzz)).w, 0.0f, 1.0f);
  r1.w = (v7.z + -0.5f);
  r1.w = clamp(((r1.wwww + r1.wwww)).w, 0.0f, 1.0f);
  r0.w = (r6.w * r0.w);
  let v_10 = fma((-(r1.xyzx)).xyz, v3.xxx, r6.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = fma(r0.www, r1.xyz, r5.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = ((-(r1.xyxz)).xyw + r7.xyz);
  r3 = vec4<f32>(v_12.xy, r3.z, v_12.z);
  let v_13 = fma(r1.www, r3.xyw, r1.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  r0.x = (r0.x * v2.w);
  r0.x = (r0.x * 0.40000000596046447754f);
  let v_14 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_14.xy, r3.zw);
  r0.w = (r3.x * v3.z);
  let v_15 = (r3.yy * v7.xyz.xy);
  let v_16 = r3;
  r3 = vec4<f32>(v_16.x, v_15.x, v_16.z, v_15.y);
  r6 = textureSample(t5, s5, r3.ywyy.xy);
  r1.w = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  r3.y = ((-(r6.xxxx)).y + r6.z);
  r6.x = fma(r1.w, r3.y, r6.x);
  let v_17 = (r6.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_18 = r3;
  r3 = vec4<f32>(v_18.x, v_17.x, v_18.z, v_17.y);
  r1.w = fma(v3.z, r3.x, -1.0f);
  r1.w = fma(r3.x, r1.w, 1.0f);
  r3.x = (r1.w * r3.y);
  let v_19 = -(r1.xyzx);
  let v_20 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_19.xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = fma(r3.xxx, r5.xyz, r1.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  r0.w = (r0.w * cb11_11.tint_symbol_4[2u].x);
  let v_22 = ((-(r1.xyzx)).xyz + r6.zzz);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  let v_23 = fma(r0.www, r5.xyz, r1.xyz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  r0.w = fma((-(r3.wwww)).w, r1.w, 1.0f);
  r4.x = (r0.w * r0.x);
  r5.w = (r5.w * cb2_2.tint_symbol[15u].x);
  r0.z = fma(r2.z, r0.z, -0.34999999403953552246f);
  r0.z = clamp(((r0.zzzz * vec4<f32>(1.53846156597137451172f))).z, 0.0f, 1.0f);
  r0.z = (r0.z * cb5_5.tint_symbol_2[3u].z);
  r1.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r0.z = (r0.z * r1.w);
  r0.y = (r0.y * r0.z);
  r0.z = fma((-(r4.xxxx)).z, 0.5f, 1.0f);
  r0.z = (r0.z * r0.y);
  r0.z = fma(r0.z, -0.5f, 1.0f);
  let v_24 = (r0.zzz * r1.xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  r0.z = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_25 = bitcast<vec4<u32>>(r0.zzzz);
  r1 = select(r5, v3, (v_25 != vec4<u32>()));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r1.w)));
  v_26((bitcast<u32>(r0.z) != 0u));
  r4.w = ((-(r3.zzzz)).w + 1.0f);
  r0.z = (v3.x * cb2_2.tint_symbol[15u].y);
  r2.z = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).z, 0.0f, 1.0f);
  r3.y = (r0.z * r2.z);
  let v_27 = fma(r2.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_27.xyz, o1.w);
  r3.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_28 = (r3.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_28.xy, r2.zw);
  let v_29 = sqrt(r2.xy);
  o3 = vec4<f32>(v_29.xy, o3.zw);
  r0.x = clamp(fma(r0.xxxx, r0.wwww, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_30 = -(r4.xzxx);
  let v_31 = fma(r0.xx, vec2<f32>(0.5f, 0.48828125f), v_30.xy);
  r2 = vec4<f32>(v_31.xy, r2.zw);
  r2.z = 0.0f;
  let v_32 = max(r2.xyz, vec3<f32>());
  r0 = vec4<f32>(v_32.x, r0.y, v_32.yz);
  let v_33 = fma(r0.xzw, r0.yyy, r4.xzw);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  let v_34 = sqrt(r0.xy);
  o2 = vec4<f32>(v_34.xy, o2.zw);
  o0 = r1;
  o1.w = 0.0f;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_26(v_35 : bool) {
  if (v_35) {
    discard;
    return;
  }
}

struct tint_symbol_5 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v5, v6, v7);
  return tint_symbol_5(o0, o1, o2, o3);
}
