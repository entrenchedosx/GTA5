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
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[4u].x >= r1.x)));
  v_5((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t3, s3, v2.xy.xyxx.xy);
  let v_6 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_3[2u].x, 0.00100000004749745131f);
  let v_7 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_9.xy, r1.z, v_9.z);
  let v_10 = fma(r1.zzz, v3.xyz, r1.xyw);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_11 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  r3 = textureSample(t4, s4, v2.xy.xyxx.xy);
  r3 = (r3.xyxy * r3.xyxy);
  o1.w = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r1.x = (r0.w * 255.0099945068359375f);
  r1.x = floor(r1.x);
  r1.y = (r1.x + -32.0f);
  r4.x = (r1.y * 0.0078125f);
  r4.y = cb12_12.tint_symbol_3[2u].w;
  r4 = textureSample(t5, s5, r4.xyxx.xy);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 32.0f)));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (160.0f >= r1.x)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & bitcast<u32>(r1.y)));
  let v_12 = (r0.xyz * r4.xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  r4.w = 1.0f;
  let v_13 = bitcast<vec4<u32>>(r1.xxxx);
  let v_14 = r4;
  r0 = select(r0, v_14, (v_13 != vec4<u32>()));
  r0.w = (r0.w * v1.w);
  let v_15 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_16 = r4;
  r4 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  let v_17 = (r3.xyz * cb12_12.tint_symbol_3[0u].zyx);
  r5 = vec4<f32>(v_17.xyz, r5.w);
  r1.x = (r5.z * cb12_12.tint_symbol_3[1u].x);
  r1.y = dot(v4.xyz, v4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_18 = (r1.xxx * cb12_12.tint_symbol_3[1u].yzw);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  let v_19 = -(cb3_3.tint_symbol_1[0u].xyzx);
  let v_20 = fma(v4.xyz, r1.yyy, v_19.xyz);
  r7 = vec4<f32>(v_20.xyz, r7.w);
  r1.x = dot(r7.xyz, r7.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_21 = (r1.xxx * r7.xyz);
  r7 = vec4<f32>(v_21.xyz, r7.w);
  r1.x = dot(r2.xyz, r7.xyz);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  let v_22 = fma(r3.xw, cb12_12.tint_symbol_3[0u].zw, vec2<f32>(0.40000000596046447754f, 0.00000000999999993923f));
  r3 = vec4<f32>(v_22.xy, r3.zw);
  r1.x = log2(r1.x);
  r1.x = (r1.x * r3.y);
  r1.x = exp2(r1.x);
  let v_23 = fma(r6.xyz, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_24 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_24.xyz, o1.w);
  r4.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_25 = (r4.xz * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_25.xy, r1.zw);
  let v_26 = sqrt(r1.xy);
  o3 = vec4<f32>(v_26.xy, o3.zw);
  r0.w = fma(r1.z, r1.w, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r4.y * r0.w);
  let v_27 = (r5.xy * vec2<f32>(1.0f, 0.001953125f));
  let v_28 = r1;
  r1 = vec4<f32>(v_28.x, v_27.xy, v_28.w);
  r1.x = fma((-(r5.xxxx)).x, 0.5f, 1.0f);
  r1.x = (r0.w * r1.x);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_29 = (r0.xyz * r1.xxx);
  o0 = vec4<f32>(v_29.xyz, o0.w);
  r3.x = clamp(r3.xxxx.x, 0.0f, 1.0f);
  let v_30 = (r3.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_30.xy, r0.zw);
  r1.w = cb12_12.tint_symbol_3[0u].x;
  r0.z = 0.97000002861022949219f;
  let v_31 = -(r1.yzwy);
  let v_32 = (r0.xyz + v_31.xyz);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  let v_33 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_33.xyz, r0.w);
  let v_34 = fma(r0.xyz, r0.www, r1.yzw);
  r0 = vec4<f32>(v_34.xyz, r0.w);
  let v_35 = sqrt(r0.xy);
  o2 = vec4<f32>(v_35.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_5(v_36 : bool) {
  if (v_36) {
    discard;
    return;
  }
}

struct tint_symbol_4 {
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
fn main(@builtin(position) v_37 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_37, v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
