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

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb6_struct {
  tint_symbol_4 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb6_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v9 : vec4<f32>;

var<private> v10 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v8 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v9 = v_1;
  x0[0u].x = v10[0u];
  x0[0u].y = v10[1u];
  x0[0u].z = v10[2u];
  x0[0u].w = v10[3u];
  r0 = textureSample(t4, s4, v2.zwzz.xy);
  r0.x = dot(v1, r0);
  r0.z = (r0.x * v0.w);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (cb10_10.tint_symbol_4[5u].z < r0.z)));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == v2.x))));
    r1 = textureSample(t5, s5, vec2<f32>());
    let v_2 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r1 = vec4<f32>(v_2.xy, r1.zw);
    let v_3 = bitcast<u32>(r0.z);
    let v_4 = cb10_10.tint_symbol_4[5u].x;
    r0.z = select(cb10_10.tint_symbol_4[5u].y, v_4, (v_3 != 0u));
    let v_5 = fma(r1.xy, r0.zz, v3.xyz.xy);
    r1 = vec4<f32>(v_5.xy, r1.zw);
    r1.z = v3.z;
    r0.z = dot(r1.xyz, r1.xyz);
    r0.z = inverseSqrt(r0.z);
    let v_6 = (r0.zzz * r1.xyz);
    r1 = vec4<f32>(v_6.xyz, r1.w);
  } else {
    r1 = vec4<f32>(v3.xyz.xyz, r1.w);
  }
  r2 = textureSample(t0, s0, v2.xyxx.xy);
  r2 = clamp(fma(r0.xxxx, v0, r2), vec4<f32>(), vec4<f32>(1.0f));
  r0.z = (r2.w * v8.x);
  r0.z = (r0.z * cb2_2.tint_symbol[15u].x);
  r0.w = dot(v9.xy, vec2<f32>(0.5f));
  r0.w = fract(r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.5f)));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.z)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r1.w)));
  v_7((bitcast<u32>(r0.w) != 0u));
  r3 = textureSample(t2, s2, v2.xyxx.xy);
  let v_8 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_8.xy, r3.zw);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.w = max(cb12_12.tint_symbol_3[1u].w, 0.00100000004749745131f);
  let v_9 = (r1.ww * r3.xy);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  let v_10 = (r3.yyy * v5.xyz);
  r3 = vec4<f32>(r3.x, v_10.xyz);
  let v_11 = fma(r3.xxx, v4.xyz, r3.yzw);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = fma(r0.www, r1.xyz, r3.xyz);
  r1 = vec4<f32>(v_12.xy, r1.z, v_12.z);
  r0.w = dot(r1.xyw, r1.xyw);
  r0.w = inverseSqrt(r0.w);
  let v_13 = (r0.www * r1.xyw);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  r4 = textureSample(t3, s3, v2.xyxx.xy);
  let v_14 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_14.xy, r4.zw);
  r1.x = dot(r4.xyz, cb12_12.tint_symbol_3[1u].xyz);
  r1.y = (r1.x * cb12_12.tint_symbol_3[0u].z);
  r1.x = (r4.w * cb12_12.tint_symbol_3[0u].y);
  o1.w = clamp(fma(r1.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r0.y = dot(r0.xxx, cb12_12.tint_symbol_3[1u].xyz);
  let v_15 = max(r0.xy, r1.xy);
  r4 = vec4<f32>(v_15.xy, r4.zw);
  let v_16 = fma(r3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_16.xyz, o1.w);
  r0.x = (cb2_2.tint_symbol[15u].z + cb3_3.tint_symbol_1[45u].w);
  r0.x = (r0.x * 0.5f);
  r0.y = (cb2_2.tint_symbol[15u].y * 0.5f);
  let v_17 = sqrt(r0.xy);
  o3 = vec4<f32>(v_17.xy, o3.zw);
  r0.x = fma(r1.w, r0.w, -0.34999999403953552246f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * cb2_2.tint_symbol[15u].z);
  r0.y = fma((-(r4.yyyy)).y, 0.5f, 1.0f);
  r0.y = (r0.y * r0.x);
  r0.y = fma(r0.y, -0.5f, 1.0f);
  let v_18 = (r0.yyy * r2.xyz);
  o0 = vec4<f32>(v_18.xyz, o0.w);
  r0.y = clamp(((r4.yyyy + vec4<f32>(0.40000000596046447754f))).y, 0.0f, 1.0f);
  let v_19 = (r0.yy * vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_19.xy, r1.zw);
  r4.z = (r4.x * 0.001953125f);
  r4.w = cb12_12.tint_symbol_3[0u].x;
  r1.z = 0.97000002861022949219f;
  let v_20 = -(r4.yzwy);
  let v_21 = (r1.xyz + v_20.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  let v_22 = max(r1.xyz, vec3<f32>());
  r1 = vec4<f32>(v_22.xyz, r1.w);
  let v_23 = fma(r1.xyz, r0.xxx, r4.yzw);
  r0 = vec4<f32>(v_23.xy, r0.z, v_23.z);
  let v_24 = sqrt(r0.xy);
  o2 = vec4<f32>(v_24.xy, o2.zw);
  o0.w = r0.z;
  o2.z = r0.w;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_7(v_25 : bool) {
  if (v_25) {
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(8u) v8 : vec4<f32>, @builtin(position) v_26 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v4, v5, v8, v_26);
  return tint_symbol_5(o0, o1, o2, o3);
}
