diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb25_struct {
  tint_symbol_1 : array<vec4<f32>, 25u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb25_struct;

struct cb46_struct {
  tint_symbol_2 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb3_struct {
  tint_symbol_4 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = ((-(v5.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = clamp(fma(r0.xxxx, v4.wwww, v4.zzzz).x, 0.0f, 1.0f);
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, ((v5.xyz.xy * vec2<f32>(0.0625f))).xy, v_3.w);
  let v_4 = -(r0.yzyy);
  let v_5 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.yz >= v_4.xy)));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  let v_6 = fract(abs(r0.yyzy).yz);
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = -(r0.yyzy);
  let v_9 = bitcast<vec2<u32>>(r1.xy);
  let v_10 = select(v_8.yz, r0.yz, (v_9 != vec2<u32>()));
  let v_11 = r0;
  r0 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  let v_12 = fma(r0.yz, vec2<f32>(16.0f), v0.xy);
  let v_13 = r0;
  r0 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  r0.w = (r0.x * 3.99600005149841308594f);
  r1.x = fract(r0.w);
  r1.x = (r1.x * 4.0f);
  r1.x = floor(r1.x);
  r1.x = (r1.x * 0.25f);
  r0.w = floor(r0.w);
  r1.y = (r0.w * 0.25f);
  let v_14 = (r0.yz * vec2<f32>(0.03125f));
  let v_15 = r0;
  r0 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  let v_16 = -(r0.yyyz);
  let v_17 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.yz >= v_16.zw)));
  r1 = vec4<f32>(r1.xy, v_17.xy);
  let v_18 = fract(abs(r0.yyzy).yz);
  let v_19 = r0;
  r0 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  let v_20 = -(r0.yyzy);
  let v_21 = bitcast<vec2<u32>>(r1.zw);
  let v_22 = select(v_20.yz, r0.yz, (v_21 != vec2<u32>()));
  let v_23 = r0;
  r0 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  let v_24 = fma(r0.yz, vec2<f32>(0.25f), r1.xy);
  let v_25 = r0;
  r0 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
  r1 = textureSample(t9, s9, r0.yzyy.xy);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.y) == 0i)));
  v_26((bitcast<u32>(r0.y) != 0u));
  let v_27 = (v5.xyz + (-(cb2_2.tint_symbol_1[23u].xxyz)).yzw);
  r0 = vec4<f32>(r0.x, v_27.xyz);
  r0.z = dot(r0.yzw, r0.yzw);
  r0.z = (r0.z * 28.0f);
  r0.z = min(r0.z, 1.0f);
  let v_28 = (v5.xyz + (-(cb2_2.tint_symbol_1[24u].xyzx)).xyz);
  r1 = vec4<f32>(v_28.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = (r0.w * 28.0f);
  r0.w = min(r0.w, 1.0f);
  let v_29 = ((-(r0.zzzw)).zw + vec2<f32>(1.0f));
  r0 = vec4<f32>(r0.xy, v_29.xy);
  r0.y = (r0.z * r0.y);
  r0.z = (r0.w * r1.x);
  r1 = fma(r0.yyyy, vec4<f32>(0.15999999642372131348f), v3);
  r1 = fma(r0.zzzz, vec4<f32>(0.15999999642372131348f), r1);
  r2 = textureSample(t0, s0, r1.xyxx.xy);
  r1.x = v7.w;
  r1.y = v8.w;
  r3 = textureSample(t3, s3, r1.xyxx.xy);
  let v_30 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_31 = r0;
  r0 = vec4<f32>(v_31.x, v_30.xy, v_31.w);
  r0.w = dot(r0.yz, r0.yz);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.x = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_32 = (r0.yz * r1.xx);
  let v_33 = r0;
  r0 = vec4<f32>(v_33.x, v_32.xy, v_33.w);
  let v_34 = (r0.zzz * v8.xyz);
  r3 = vec4<f32>(v_34.xyz, r3.w);
  let v_35 = fma(r0.yyy, v7.xyz, r3.xyz);
  r3 = vec4<f32>(v_35.xyz, r3.w);
  let v_36 = fma(r0.www, v6.xyz, r3.xyz);
  r0 = vec4<f32>(r0.x, v_36.xyz);
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = inverseSqrt(r1.x);
  let v_37 = (r0.yzw * r1.xxx);
  r3 = vec4<f32>(v_37.xyz, r3.w);
  r4 = textureSample(t4, s4, v3.xyxx.xy);
  let v_38 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_38.xy, r4.zw);
  r0.y = dot(r4.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r4.x = (r0.y * cb12_12.tint_symbol_4[0u].z);
  r0.z = (r4.w * cb12_12.tint_symbol_4[0u].y);
  r1.y = clamp(fma(v6.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).y, 0.0f, 1.0f);
  r5 = textureSample(t7, s7, r1.zwzz.xy);
  r1.z = (r5.y * v1.w);
  r1.w = (v4.x + (-(cb10_10.tint_symbol_5[0u].wwww)).w);
  r0.x = (r0.x * r1.w);
  r0.x = fma(v1.w, r0.x, cb10_10.tint_symbol_5[0u].w);
  r1.w = clamp(((v1.wwww + v1.wwww)).w, 0.0f, 1.0f);
  r2.w = (v4.y + -0.00999999977648258209f);
  r1.w = fma(r1.w, r2.w, 0.00999999977648258209f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z < r1.w)));
  v_26((bitcast<u32>(r1.z) != 0u));
  let v_39 = (r0.xxx * r2.xyz);
  r2 = vec4<f32>(v_39.xyz, r2.w);
  let v_40 = (r2.xyz * v2.xyz);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  let v_41 = (v1.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_42 = r5;
  r5 = vec4<f32>(v_42.x, v_41.xy, v_42.w);
  let v_43 = fma(r3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_43.xyz, o1.w);
  r0.x = (cb12_12.tint_symbol_4[2u].x + -0.20000000298023223877f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(10.0f))).x, 0.0f, 1.0f);
  o1.w = (r0.x * r1.y);
  r4.y = (r0.z * 0.001953125f);
  r5.x = fma(v1.x, cb2_2.tint_symbol_1[15u].z, cb3_3.tint_symbol_2[45u].w);
  let v_44 = (r5.xz * vec2<f32>(0.5f));
  let v_45 = r0;
  r0 = vec4<f32>(v_44.x, v_45.y, v_44.y, v_45.w);
  let v_46 = sqrt(r0.xz);
  o3 = vec4<f32>(v_46.xy, o3.zw);
  r0.x = fma(r0.w, r1.x, -0.34999999403953552246f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_3[3u].z);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  r0.x = (r0.z * r0.x);
  r0.x = (r5.y * r0.x);
  r0.z = fma((-(r4.xxxx)).z, 0.5f, 1.0f);
  r0.z = (r0.z * r0.x);
  r0.w = ((-(cb12_12.tint_symbol_4[2u].xxxx)).w + 1.0f);
  r0.z = (r0.w * r0.z);
  r0.x = (r0.x * cb12_12.tint_symbol_4[2u].x);
  r0.z = fma(r0.z, -0.5f, 1.0f);
  let v_47 = (r0.zzz * r2.xyz);
  o0 = vec4<f32>(v_47.xyz, o0.w);
  r0.y = clamp(fma(r0.yyyy, cb12_12.tint_symbol_4[0u].zzzz, vec4<f32>(0.40000000596046447754f)).y, 0.0f, 1.0f);
  let v_48 = (r0.yy * vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_48.xy, r1.zw);
  r4.z = cb12_12.tint_symbol_4[0u].x;
  r1.z = 0.97000002861022949219f;
  let v_49 = -(r4.xxyz);
  let v_50 = (r1.xyz + v_49.yzw);
  r0 = vec4<f32>(r0.x, v_50.xyz);
  let v_51 = max(r0.yzw, vec3<f32>());
  r0 = vec4<f32>(r0.x, v_51.xyz);
  let v_52 = fma(r0.yzw, r0.xxx, r4.xyz);
  r0 = vec4<f32>(v_52.xyz, r0.w);
  let v_53 = sqrt(r0.xy);
  o2 = vec4<f32>(v_53.xy, o2.zw);
  o0.w = cb2_2.tint_symbol_1[15u].x;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_26(v_54 : bool) {
  if (v_54) {
    discard;
    return;
  }
}

struct tint_symbol_6 {
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
fn main(@builtin(position) v_55 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v_55, v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_6(o0, o1, o2, o3);
}
