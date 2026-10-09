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

struct cb3_struct {
  tint_symbol_3 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

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

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

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
  r0 = textureSample(t0, s0, v3.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[4u].x >= r1.x)));
  v_5((bitcast<u32>(r1.x) != 0u));
  r1.x = ((-(v1.wwww)).x + 1.0f);
  r2 = textureSample(t5, s5, v3.zwzz.xy);
  r3 = textureSample(t7, s7, v3.xyxx.xy);
  let v_6 = (v3.xy * cb11_11.tint_symbol_4[0u].zw);
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r4 = textureSample(t3, s3, r1.yzyy.xy);
  let v_8 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r4 = vec4<f32>(v_8.xy, r4.zw);
  let v_9 = (r1.yz * vec2<f32>(3.1700000762939453125f));
  let v_10 = r1;
  r1 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  r5 = textureSample(t3, s3, r1.yzyy.xy);
  let v_11 = fma(r5.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_12 = r1;
  r1 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  let v_13 = (r1.yz * vec2<f32>(0.5f));
  let v_14 = r1;
  r1 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  let v_15 = fma(r4.xy, vec2<f32>(0.5f), r1.yz);
  let v_16 = r1;
  r1 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  r1.w = ((-(r1.yyyy)).w * cb11_11.tint_symbol_4[0u].x);
  r1.w = fma(r1.w, r3.w, 1.0f);
  let v_17 = (r1.yz * cb11_11.tint_symbol_4[0u].yy);
  let v_18 = r1;
  r1 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  r0 = (r0 * r1.wwww);
  r4 = textureSample(t6, s6, v3.xyxx.xy);
  let v_19 = fma(r1.yz, r3.ww, r4.xy);
  let v_20 = r1;
  r1 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  let v_21 = fma(r1.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_22 = r1;
  r1 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  r2.w = dot(r1.yz, r1.yz);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = sqrt(abs(r2.wwww).w);
  r4.x = max(cb12_12.tint_symbol_3[1u].w, 0.00100000004749745131f);
  let v_23 = (r1.yz * r4.xx);
  let v_24 = r1;
  r1 = vec4<f32>(v_24.x, v_23.xy, v_24.w);
  let v_25 = (r1.zzz * v6.xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  let v_26 = fma(r1.yyy, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  let v_27 = fma(r2.www, v4.xyz, r4.xyz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_28 = (r1.yyy * r4.xyz);
  r4 = vec4<f32>(v_28.xy, r4.z, v_28.z);
  let v_29 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_29.xy, r3.zw);
  r1.z = dot(r3.xyz, cb12_12.tint_symbol_3[1u].xyz);
  r1.z = (r1.z * cb12_12.tint_symbol_3[0u].w);
  r2.w = (r3.w * cb12_12.tint_symbol_3[0u].z);
  r3.x = (r1.w * r1.z);
  r3.w = clamp(fma(v4.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  let v_30 = (r0.xyz * v2.xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  r5.x = ((-(r1.xxxx)).x + 1.0f);
  let v_31 = (r1.xxx * r2.xyz);
  r2 = vec4<f32>(v_31.xyz, r2.w);
  let v_32 = fma(r0.xyz, r5.xxx, r2.xyz);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  r0.w = (r0.w * v1.w);
  let v_33 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_34 = r2;
  r2 = vec4<f32>(v_34.x, v_33.xy, v_34.w);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_35 = fma(r4.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_35.xyz, o1.w);
  r0.w = (cb12_12.tint_symbol_3[2u].z + -0.20000000298023223877f);
  r0.w = clamp(((r0.wwww * vec4<f32>(10.0f))).w, 0.0f, 1.0f);
  o1.w = (r0.w * r3.w);
  r3.y = (r2.w * 0.001953125f);
  r2.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_36 = (r2.xz * vec2<f32>(0.5f));
  let v_37 = r2;
  r2 = vec4<f32>(v_36.x, v_37.y, v_36.y, v_37.w);
  let v_38 = sqrt(r2.xz);
  o3 = vec4<f32>(v_38.xy, o3.zw);
  r0.w = fma(r4.z, r1.y, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r2.y * r0.w);
  r1.x = fma((-(r3.xxxx)).x, 0.5f, 1.0f);
  r1.x = (r0.w * r1.x);
  r0.w = (r0.w * cb12_12.tint_symbol_3[2u].z);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_39 = (r0.xyz * r1.xxx);
  o0 = vec4<f32>(v_39.xyz, o0.w);
  r0.x = clamp(fma(r1.zzzz, r1.wwww, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_40 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_40.xy, r0.zw);
  r3.z = cb12_12.tint_symbol_3[0u].y;
  r0.z = 0.97000002861022949219f;
  let v_41 = -(r3.xyzx);
  let v_42 = (r0.xyz + v_41.xyz);
  r0 = vec4<f32>(v_42.xyz, r0.w);
  let v_43 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_43.xyz, r0.w);
  let v_44 = fma(r0.xyz, r0.www, r3.xyz);
  r0 = vec4<f32>(v_44.xyz, r0.w);
  let v_45 = sqrt(r0.xy);
  o2 = vec4<f32>(v_45.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_5(v_46 : bool) {
  if (v_46) {
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
fn main(@builtin(position) v_47 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v_47, v1, v2, v3, v4, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3);
}
