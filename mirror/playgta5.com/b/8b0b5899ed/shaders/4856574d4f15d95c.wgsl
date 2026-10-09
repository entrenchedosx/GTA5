diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

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

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0.y = cb12_12.tint_symbol_3[2u].w;
  r1 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r0.z = (r1.w * 255.0099945068359375f);
  r0.z = floor(r0.z);
  r0.w = (r0.z + -32.0f);
  r0.x = (r0.w * 0.0078125f);
  r2 = textureSample(t5, s5, r0.xyxx.xy);
  let v = (r1.xyz * r2.xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  r2.w = 1.0f;
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 32.0f)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (160.0f >= r0.z)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  let v_1 = bitcast<vec4<u32>>(r0.xxxx);
  let v_2 = r2;
  r0 = select(r1, v_2, (v_1 != vec4<u32>()));
  r0.w = (r0.w * v1.w);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.w = dot(v4.xyz, v4.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_3 = -(cb3_3.tint_symbol_1[0u].xyzx);
  let v_4 = fma(v4.xyz, r0.www, v_3.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_5 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r0.w = max(cb12_12.tint_symbol_3[2u].x, 0.00100000004749745131f);
  r2 = textureSample(t3, s3, v2.xy.xyxx.xy);
  let v_6 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_6.xy, r2.zw);
  let v_7 = (r0.ww * r2.xy);
  r2 = vec4<f32>(r2.xy, v_7.xy);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  let v_8 = (r2.www * v6.xyz);
  r2 = vec4<f32>(v_8.xy, r2.z, v_8.z);
  let v_9 = fma(r2.zzz, v5.xyz, r2.xyw);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma(r0.www, v3.xyz, r2.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_11 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_11.xy, r2.z, v_11.z);
  r0.w = fma(r2.z, r0.w, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = dot(r2.xyw, r1.xyz);
  let v_12 = fma(r2.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_12.xyz, o1.w);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r2 = textureSample(t4, s4, v2.xy.xyxx.xy);
  r2 = (r2.xyxy * r2.xyxy);
  let v_13 = fma(r2.xw, cb12_12.tint_symbol_3[0u].zw, vec2<f32>(0.40000000596046447754f, 0.00000000999999993923f));
  let v_14 = r1;
  r1 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  let v_15 = (r2.xyz * cb12_12.tint_symbol_3[0u].zyx);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  r1.x = (r1.x * r1.z);
  r1.y = clamp(r1.yyyy.y, 0.0f, 1.0f);
  let v_16 = (r1.yy * vec2<f32>(0.5f, 0.48828125f));
  r3 = vec4<f32>(v_16.xy, r3.zw);
  r1.x = exp2(r1.x);
  r1.y = (r2.z * cb12_12.tint_symbol_3[1u].x);
  let v_17 = (r1.yyy * cb12_12.tint_symbol_3[1u].yzw);
  r1 = vec4<f32>(r1.x, v_17.xyz);
  let v_18 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  let v_19 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_20 = r1;
  r1 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  r0.w = (r0.w * r1.y);
  r1.y = fma((-(r2.xxxx)).y, 0.5f, 1.0f);
  let v_21 = (r2.xy * vec2<f32>(1.0f, 0.001953125f));
  let v_22 = r2;
  r2 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  r1.y = (r0.w * r1.y);
  r1.y = fma(r1.y, -0.5f, 1.0f);
  let v_23 = (r0.xyz * r1.yyy);
  o0 = vec4<f32>(v_23.xyz, o0.w);
  o1.w = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r3.z = 0.97000002861022949219f;
  r2.w = cb12_12.tint_symbol_3[0u].x;
  let v_24 = ((-(r2.yzwy)).xyz + r3.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = fma(r0.xyz, r0.www, r2.yzw);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = sqrt(r0.xy);
  o2 = vec4<f32>(v_27.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r1.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_28 = (r1.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_28.xy, r0.zw);
  let v_29 = sqrt(r0.xy);
  o3 = vec4<f32>(v_29.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
