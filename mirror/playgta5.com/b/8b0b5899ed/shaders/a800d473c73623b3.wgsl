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

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb6_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_2 = -(cb5_5.tint_symbol_2[4u].xxxx);
  r1.y = fma(r0.w, cb2_2.tint_symbol[15u].x, v_2.y);
  r1.z = (v_2.z + 1.0f);
  r1.z = (r1.z * 0.10000000149011611938f);
  r1.y = (r1.y / r1.z);
  r1.y = fma((-(r0.wwww)).y, cb2_2.tint_symbol[15u].x, r1.y);
  r1.x = fma(cb12_12.tint_symbol_3[5u].y, r1.y, r1.x);
  r1.y = dot(v0.xy, vec2<f32>(0.5f));
  r1.y = fract(r1.y);
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yx < vec2<f32>(0.5f, 1.0f))));
  let v_4 = r1;
  r1 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r1.x)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.y)));
  v_5((bitcast<u32>(r1.y) != 0u));
  let v_6 = (v2.xy * cb11_11.tint_symbol_4[0u].zw);
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r2 = textureSample(t3, s3, r1.yzyy.xy);
  let v_8 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_8.xy, r2.zw);
  let v_9 = (r1.yz * vec2<f32>(3.1700000762939453125f));
  let v_10 = r1;
  r1 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  r3 = textureSample(t3, s3, r1.yzyy.xy);
  let v_11 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_12 = r1;
  r1 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  let v_13 = (r1.yz * vec2<f32>(0.5f));
  let v_14 = r1;
  r1 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  let v_15 = fma(r2.xy, vec2<f32>(0.5f), r1.yz);
  let v_16 = r1;
  r1 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  r1.w = ((-(r1.yyyy)).w * cb11_11.tint_symbol_4[0u].x);
  r1.w = fma(r1.w, r0.w, 1.0f);
  let v_17 = (r1.yz * cb11_11.tint_symbol_4[0u].yy);
  let v_18 = r1;
  r1 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  let v_19 = (r0.xyz * r1.www);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r3 = textureSample(t5, s5, v2.xy.xyxx.xy);
  let v_20 = fma(r1.yz, r0.ww, r3.xy);
  let v_21 = r1;
  r1 = vec4<f32>(v_21.x, v_20.xy, v_21.w);
  let v_22 = fma(r1.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_23 = r1;
  r1 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  r0.w = dot(r1.yz, r1.yz);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r2.w = max(cb12_12.tint_symbol_3[4u].x, 0.00100000004749745131f);
  let v_24 = (r1.yz * r2.ww);
  let v_25 = r1;
  r1 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
  let v_26 = (r1.zzz * v5.xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  let v_27 = fma(r1.yyy, v4.xyz, r3.xyz);
  r3 = vec4<f32>(v_27.xyz, r3.w);
  let v_28 = fma(r0.www, v3.xyz, r3.xyz);
  r3 = vec4<f32>(v_28.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_29 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_29.xy, r3.z, v_29.z);
  r1.y = dot(r0.xyz, cb12_12.tint_symbol_3[2u].xyz);
  r0.x = dot(r0.xyz, cb12_12.tint_symbol_3[3u].xyz);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < 0.5f)));
  r0.z = dot(cb12_12.tint_symbol_3[2u].ww, r1.yy);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.y = (r1.y + r1.y);
  r1.z = ((-(cb12_12.tint_symbol_3[2u].wwww)).z + 1.0f);
  r1.y = fma((-(r1.yyyy)).y, r1.z, 1.0f);
  let v_30 = bitcast<u32>(r0.y);
  let v_31 = r0.z;
  r4.x = select(r1.y, v_31, (v_30 != 0u));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.5f)));
  r0.z = dot(cb12_12.tint_symbol_3[3u].ww, r0.xx);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = (r0.x + r0.x);
  r1.y = ((-(cb12_12.tint_symbol_3[3u].wwww)).y + 1.0f);
  r0.x = fma((-(r0.xxxx)).x, r1.y, 1.0f);
  let v_32 = bitcast<u32>(r0.y);
  let v_33 = r0.z;
  r4.y = select(r0.x, v_33, (v_32 != 0u));
  r0.x = dot(r4.xy, cb12_12.tint_symbol_3[1u].xy);
  r0.x = (r0.x * cb12_12.tint_symbol_3[0u].w);
  r4.x = (r1.w * r0.x);
  r0.y = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).y, 0.0f, 1.0f);
  let v_34 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_35 = r5;
  r5 = vec4<f32>(v_35.x, v_34.xy, v_35.w);
  let v_36 = fma(r3.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_36.xyz, o1.w);
  r0.z = (cb12_12.tint_symbol_3[4u].w + -0.20000000298023223877f);
  r0.z = clamp(((r0.zzzz * vec4<f32>(10.0f))).z, 0.0f, 1.0f);
  o1.w = (r0.z * r0.y);
  r5.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_37 = (r5.xz * vec2<f32>(0.5f));
  let v_38 = r0;
  r0 = vec4<f32>(v_38.x, v_37.xy, v_38.w);
  let v_39 = sqrt(r0.yz);
  o3 = vec4<f32>(v_39.xy, o3.zw);
  r0.y = fma(r3.z, r0.w, -0.34999999403953552246f);
  r0.y = clamp(((r0.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r0.y = (r0.y * cb5_5.tint_symbol_2[3u].z);
  r0.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r0.y = (r0.z * r0.y);
  r0.y = (r5.y * r0.y);
  r0.z = fma((-(r4.xxxx)).z, 0.5f, 1.0f);
  r0.z = (r0.z * r0.y);
  r0.y = (r0.y * cb12_12.tint_symbol_3[4u].w);
  r0.z = fma(r0.z, -0.5f, 1.0f);
  let v_40 = (r0.zzz * r2.xyz);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  r0.x = clamp(fma(r0.xxxx, r1.wwww, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_41 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r3 = vec4<f32>(v_41.xy, r3.zw);
  r4.y = 0.0f;
  r4.z = cb12_12.tint_symbol_3[0u].y;
  r3.z = 0.97000002861022949219f;
  let v_42 = -(r4.xxyz);
  let v_43 = (r3.xyz + v_42.xzw);
  r0 = vec4<f32>(v_43.x, r0.y, v_43.yz);
  let v_44 = max(r0.xzw, vec3<f32>());
  r0 = vec4<f32>(v_44.x, r0.y, v_44.yz);
  let v_45 = fma(r0.xzw, r0.yyy, r4.xyz);
  r0 = vec4<f32>(v_45.xyz, r0.w);
  let v_46 = sqrt(r0.xy);
  o2 = vec4<f32>(v_46.xy, o2.zw);
  r0.x = ((-(v6.wwww)).x + 1.0f);
  r1 = vec4<f32>(r1.x, ((v6.www * v6.xyz)).xyz);
  let v_47 = fma(r2.xyz, r0.xxx, r1.yzw);
  r2 = vec4<f32>(v_47.xyz, r2.w);
  let v_48 = fma(r2.xyz, r0.xxx, r1.yzw);
  o0 = vec4<f32>(v_48.xyz, o0.w);
  o0.w = r1.x;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_5(v_49 : bool) {
  if (v_49) {
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
fn main(@builtin(position) v_50 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v_50, v1, v2, v3, v4, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3);
}
