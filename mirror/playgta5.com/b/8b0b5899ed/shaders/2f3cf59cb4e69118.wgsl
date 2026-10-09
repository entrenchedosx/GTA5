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

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0.x = ((-(cb12_12.tint_symbol_3[2u].wwww)).x + 1.0f);
  r1 = textureSample(t0, s0, v3.xy.xyxx.xy);
  r0.y = dot(r1.xyz, cb12_12.tint_symbol_3[2u].xyz);
  r0.z = ((-(r0.yyyy)).z + 1.0f);
  r0.z = (r0.z + r0.z);
  r0.x = fma((-(r0.zzzz)).x, r0.x, 1.0f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.y < 0.5f)));
  r0.y = dot(cb12_12.tint_symbol_3[2u].ww, r0.yy);
  let v = bitcast<u32>(r0.z);
  let v_1 = r0.y;
  r0.x = select(r0.x, v_1, (v != 0u));
  r0.z = ((-(cb12_12.tint_symbol_3[3u].wwww)).z + 1.0f);
  r0.w = dot(r1.xyz, cb12_12.tint_symbol_3[3u].xyz);
  r2.x = ((-(r0.wwww)).x + 1.0f);
  r2.x = (r2.x + r2.x);
  r0.z = fma((-(r2.xxxx)).z, r0.z, 1.0f);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.5f)));
  r0.w = dot(cb12_12.tint_symbol_3[3u].ww, r0.ww);
  let v_2 = bitcast<u32>(r2.x);
  let v_3 = r0.w;
  r0.y = select(r0.z, v_3, (v_2 != 0u));
  r0.x = dot(r0.xy, cb12_12.tint_symbol_3[1u].xy);
  r0.x = (r0.x * cb12_12.tint_symbol_3[0u].z);
  let v_4 = (v3.xy * cb11_11.tint_symbol_4[0u].zw);
  let v_5 = r0;
  r0 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = (r0.yz * vec2<f32>(3.1700000762939453125f));
  r2 = vec4<f32>(v_6.xy, r2.zw);
  r3 = textureSample(t3, s3, r0.yzyy.xy);
  let v_7 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_8 = r0;
  r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  r2 = textureSample(t3, s3, r2.xyxx.xy);
  let v_9 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_9.xy, r2.zw);
  let v_10 = (r2.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_10.xy, r2.zw);
  let v_11 = fma(r0.yz, vec2<f32>(0.5f), r2.xy);
  let v_12 = r0;
  r0 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r0.w = ((-(r0.yyyy)).w * cb11_11.tint_symbol_4[0u].x);
  let v_13 = (r0.yz * cb11_11.tint_symbol_4[0u].yy);
  let v_14 = r0;
  r0 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r0.w = fma(r0.w, r1.w, 1.0f);
  r2.x = (r0.w * r0.x);
  r0.x = clamp(fma(r0.xxxx, r0.wwww, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  r3 = (r0.wwww * r1);
  let v_15 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_15.xy, r1.zw);
  r0.x = fma((-(r2.xxxx)).x, 0.5f, 1.0f);
  r4 = textureSample(t4, s4, v3.xy.xyxx.xy);
  let v_16 = fma(r0.yz, r1.ww, r4.xy);
  let v_17 = r0;
  r0 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  let v_18 = fma(r0.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_19 = r0;
  r0 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  r0.w = dot(r0.yz, r0.yz);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.w = max(cb12_12.tint_symbol_3[4u].x, 0.00100000004749745131f);
  let v_20 = (r0.yz * r1.ww);
  let v_21 = r0;
  r0 = vec4<f32>(v_21.x, v_20.xy, v_21.w);
  let v_22 = (r0.zzz * v6.xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = fma(r0.yyy, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = fma(r0.www, v4.xyz, r4.xyz);
  r0 = vec4<f32>(r0.x, v_24.xyz);
  r1.w = dot(r0.yzw, r0.yzw);
  r1.w = inverseSqrt(r1.w);
  r2.w = fma(r0.w, r1.w, -0.34999999403953552246f);
  let v_25 = (r0.yzw * r1.www);
  r0 = vec4<f32>(r0.x, v_25.xyz);
  let v_26 = fma(r0.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_26.xyz, o1.w);
  r0.y = clamp(((r2.wwww * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r0.y = (r0.y * cb5_5.tint_symbol_2[3u].z);
  r0.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r0.y = (r0.z * r0.y);
  let v_27 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_28 = r4;
  r4 = vec4<f32>(v_28.x, v_27.xy, v_28.w);
  r0.y = (r0.y * r4.y);
  r0.x = (r0.x * r0.y);
  r0.y = (r0.y * cb12_12.tint_symbol_3[4u].y);
  r0.x = fma(r0.x, -0.5f, 1.0f);
  let v_29 = (r3.xyz * v2.xyz);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  r0.z = (r3.w * v1.w);
  o0.w = (r0.z * cb2_2.tint_symbol[15u].x);
  let v_30 = (r0.xxx * r3.xyz);
  o0 = vec4<f32>(v_30.xyz, o0.w);
  r0.x = (cb12_12.tint_symbol_3[4u].y + -0.20000000298023223877f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(10.0f))).x, 0.0f, 1.0f);
  r0.z = clamp(fma(v4.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).z, 0.0f, 1.0f);
  o1.w = (r0.x * r0.z);
  r1.z = 0.97000002861022949219f;
  r2.y = 0.0f;
  r2.z = cb12_12.tint_symbol_3[0u].x;
  let v_31 = -(r2.xxyz);
  let v_32 = (r1.xyz + v_31.xzw);
  r0 = vec4<f32>(v_32.x, r0.y, v_32.yz);
  let v_33 = max(r0.xzw, vec3<f32>());
  r0 = vec4<f32>(v_33.x, r0.y, v_33.yz);
  let v_34 = fma(r0.xzw, r0.yyy, r2.xyz);
  r0 = vec4<f32>(v_34.xyz, r0.w);
  let v_35 = sqrt(r0.xy);
  o2 = vec4<f32>(v_35.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r4.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_36 = (r4.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_36.xy, r0.zw);
  let v_37 = sqrt(r0.xy);
  o3 = vec4<f32>(v_37.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3);
}
