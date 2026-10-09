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

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v3.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_2 = -(cb5_5.tint_symbol_2[4u].xxxx);
  r1.y = fma(r0.w, cb2_2.tint_symbol[15u].x, v_2.y);
  r1.z = (v_2.z + 1.0f);
  r1.z = (r1.z * 0.10000000149011611938f);
  r1.y = (r1.y / r1.z);
  r0.w = fma((-(r0.wwww)).w, cb2_2.tint_symbol[15u].x, r1.y);
  r0.w = fma(cb12_12.tint_symbol_3[3u].x, r0.w, r1.x);
  r1.x = dot(v0.xy, vec2<f32>(0.5f));
  r1.x = fract(r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.5f)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.w < 1.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1.x = ((-(v1.wwww)).x + 1.0f);
  r2 = textureSample(t5, s5, v3.zwzz.xy);
  r3 = textureSample(t7, s7, v3.xyxx.xy);
  let v_4 = (v3.xy * cb11_11.tint_symbol_4[0u].zw);
  let v_5 = r1;
  r1 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  r4 = textureSample(t3, s3, r1.yzyy.xy);
  let v_6 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r4 = vec4<f32>(v_6.xy, r4.zw);
  let v_7 = (r1.yz * vec2<f32>(3.1700000762939453125f));
  let v_8 = r1;
  r1 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  r5 = textureSample(t3, s3, r1.yzyy.xy);
  let v_9 = fma(r5.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_10 = r1;
  r1 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  let v_11 = (r1.yz * vec2<f32>(0.5f));
  let v_12 = r1;
  r1 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  let v_13 = fma(r4.xy, vec2<f32>(0.5f), r1.yz);
  let v_14 = r1;
  r1 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r1.w = ((-(r1.yyyy)).w * cb11_11.tint_symbol_4[0u].x);
  r1.w = fma(r1.w, r3.w, 1.0f);
  let v_15 = (r1.yz * cb11_11.tint_symbol_4[0u].yy);
  let v_16 = r1;
  r1 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  let v_17 = (r0.xyz * r1.www);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r4 = textureSample(t6, s6, v3.xyxx.xy);
  let v_18 = fma(r1.yz, r3.ww, r4.xy);
  let v_19 = r1;
  r1 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  let v_20 = fma(r1.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_21 = r1;
  r1 = vec4<f32>(v_21.x, v_20.xy, v_21.w);
  r2.w = dot(r1.yz, r1.yz);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = sqrt(abs(r2.wwww).w);
  r4.x = max(cb12_12.tint_symbol_3[1u].w, 0.00100000004749745131f);
  let v_22 = (r1.yz * r4.xx);
  let v_23 = r1;
  r1 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  let v_24 = (r1.zzz * v6.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = fma(r1.yyy, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  let v_26 = fma(r2.www, v4.xyz, r4.xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_27 = (r1.yyy * r4.xyz);
  r4 = vec4<f32>(v_27.xy, r4.z, v_27.z);
  let v_28 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_28.xy, r3.zw);
  r1.z = dot(r3.xyz, cb12_12.tint_symbol_3[1u].xyz);
  r1.z = (r1.z * cb12_12.tint_symbol_3[0u].w);
  r2.w = (r3.w * cb12_12.tint_symbol_3[0u].z);
  r3.x = (r1.w * r1.z);
  r3.w = clamp(fma(v4.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  let v_29 = (r0.xyz * v2.xyz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  r5.x = ((-(r1.xxxx)).x + 1.0f);
  let v_30 = (r1.xxx * r2.xyz);
  r2 = vec4<f32>(v_30.xyz, r2.w);
  let v_31 = fma(r0.xyz, r5.xxx, r2.xyz);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_33 = r2;
  r2 = vec4<f32>(v_33.x, v_32.xy, v_33.w);
  let v_34 = fma(r4.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_34.xyz, o1.w);
  r1.x = (cb12_12.tint_symbol_3[2u].z + -0.20000000298023223877f);
  r1.x = clamp(((r1.xxxx * vec4<f32>(10.0f))).x, 0.0f, 1.0f);
  o1.w = (r1.x * r3.w);
  r3.y = (r2.w * 0.001953125f);
  r2.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_35 = (r2.xz * vec2<f32>(0.5f));
  let v_36 = r2;
  r2 = vec4<f32>(v_35.x, v_36.y, v_35.y, v_36.w);
  let v_37 = sqrt(r2.xz);
  o3 = vec4<f32>(v_37.xy, o3.zw);
  r1.x = fma(r4.z, r1.y, -0.34999999403953552246f);
  r1.x = clamp(((r1.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r1.x = (r1.x * cb5_5.tint_symbol_2[3u].z);
  r1.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r1.x = (r1.y * r1.x);
  r1.x = (r2.y * r1.x);
  r1.y = fma((-(r3.xxxx)).y, 0.5f, 1.0f);
  r1.y = (r1.y * r1.x);
  r1.x = (r1.x * cb12_12.tint_symbol_3[2u].z);
  r1.y = fma(r1.y, -0.5f, 1.0f);
  let v_38 = (r0.xyz * r1.yyy);
  o0 = vec4<f32>(v_38.xyz, o0.w);
  r0.x = clamp(fma(r1.zzzz, r1.wwww, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_39 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_39.xy, r0.zw);
  r3.z = cb12_12.tint_symbol_3[0u].y;
  r0.z = 0.97000002861022949219f;
  let v_40 = -(r3.xyzx);
  let v_41 = (r0.xyz + v_40.xyz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_42.xyz, r0.w);
  let v_43 = fma(r0.xyz, r1.xxx, r3.xyz);
  r0 = vec4<f32>(v_43.xyz, r0.w);
  let v_44 = sqrt(r0.xy);
  o2 = vec4<f32>(v_44.xy, o2.zw);
  o0.w = r0.w;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_3(v_45 : bool) {
  if (v_45) {
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
fn main(@builtin(position) v_46 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v_46, v1, v2, v3, v4, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3);
}
