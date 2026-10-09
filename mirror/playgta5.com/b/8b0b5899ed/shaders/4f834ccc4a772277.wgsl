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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
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
  r0.w = fma((-(r0.wwww)).w, cb2_2.tint_symbol[15u].x, r1.y);
  r0.w = fma(cb12_12.tint_symbol_3[2u].z, r0.w, r1.x);
  r1.x = dot(v0.xy, vec2<f32>(0.5f));
  r1.x = fract(r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.5f)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.w < 1.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t4, s4, v2.xy.xyxx.xy);
  let v_4 = (v2.xy * cb11_11.tint_symbol_4[0u].zw);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r3 = textureSample(t2, s2, r2.xyxx.xy);
  let v_5 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(r2.xy, v_5.xy);
  let v_6 = (r2.xy * vec2<f32>(3.1700000762939453125f));
  r2 = vec4<f32>(v_6.xy, r2.zw);
  r3 = textureSample(t2, s2, r2.xyxx.xy);
  let v_7 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_7.xy, r2.zw);
  let v_8 = (r2.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_8.xy, r2.zw);
  let v_9 = fma(r2.zw, vec2<f32>(0.5f), r2.xy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  r2.z = ((-(r2.xxxx)).z * cb11_11.tint_symbol_4[0u].x);
  r2.z = fma(r2.z, r1.w, 1.0f);
  let v_10 = (r2.xy * cb11_11.tint_symbol_4[0u].yy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  let v_11 = (r0.xyz * r2.zzz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  r3 = textureSample(t3, s3, v2.xy.xyxx.xy);
  let v_12 = fma(r2.xy, r1.ww, r3.xy);
  r2 = vec4<f32>(v_12.xy, r2.zw);
  let v_13 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_13.xy, r2.zw);
  r2.w = dot(r2.xy, r2.xy);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = sqrt(abs(r2.wwww).w);
  r3.x = max(cb12_12.tint_symbol_3[1u].w, 0.00100000004749745131f);
  let v_14 = (r2.xy * r3.xx);
  r2 = vec4<f32>(v_14.xy, r2.zw);
  let v_15 = (r2.yyy * v5.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = fma(r2.xxx, v4.xyz, r3.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = fma(r2.www, v3.xyz, r3.xyz);
  r2 = vec4<f32>(v_17.xy, r2.z, v_17.z);
  r3.x = dot(r2.xyw, r2.xyw);
  r3.x = inverseSqrt(r3.x);
  let v_18 = (r2.xyw * r3.xxx);
  r3 = vec4<f32>(r3.x, v_18.xyz);
  let v_19 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_19.xy, r1.zw);
  r1.x = dot(r1.xyz, cb12_12.tint_symbol_3[1u].xyz);
  let v_20 = (r1.xw * cb12_12.tint_symbol_3[0u].zy);
  r1 = vec4<f32>(v_20.xy, r1.zw);
  r4.x = (r2.z * r1.x);
  r1.z = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).z, 0.0f, 1.0f);
  let v_21 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_22 = r5;
  r5 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  let v_23 = fma(r3.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_23.xyz, o1.w);
  r1.w = (cb12_12.tint_symbol_3[2u].x + -0.20000000298023223877f);
  r1.w = clamp(((r1.wwww * vec4<f32>(10.0f))).w, 0.0f, 1.0f);
  o1.w = (r1.w * r1.z);
  r4.y = (r1.y * 0.001953125f);
  r5.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_24 = (r5.xz * vec2<f32>(0.5f));
  let v_25 = r1;
  r1 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
  let v_26 = sqrt(r1.yz);
  o3 = vec4<f32>(v_26.xy, o3.zw);
  r1.y = fma(r2.w, r3.x, -0.34999999403953552246f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r1.y = (r1.y * cb5_5.tint_symbol_2[3u].z);
  r1.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r1.y = (r1.z * r1.y);
  r1.y = (r5.y * r1.y);
  r1.z = fma((-(r4.xxxx)).z, 0.5f, 1.0f);
  r1.z = (r1.z * r1.y);
  r1.y = (r1.y * cb12_12.tint_symbol_3[2u].x);
  r1.z = fma(r1.z, -0.5f, 1.0f);
  let v_27 = (r0.xyz * r1.zzz);
  o0 = vec4<f32>(v_27.xyz, o0.w);
  r0.x = clamp(fma(r1.xxxx, r2.zzzz, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_28 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_28.xy, r0.zw);
  r4.z = cb12_12.tint_symbol_3[0u].x;
  r0.z = 0.97000002861022949219f;
  let v_29 = -(r4.xyzx);
  let v_30 = (r0.xyz + v_29.xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = fma(r0.xyz, r1.yyy, r4.xyz);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  let v_33 = sqrt(r0.xy);
  o2 = vec4<f32>(v_33.xy, o2.zw);
  o0.w = r0.w;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_3(v_34 : bool) {
  if (v_34) {
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
fn main(@builtin(position) v_35 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v_35, v1, v2, v3, v4, v5);
  return tint_symbol_5(o0, o1, o2, o3);
}
