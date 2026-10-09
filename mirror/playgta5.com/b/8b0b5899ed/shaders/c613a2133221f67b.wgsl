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

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v.xyz);
  r2 = textureSample(t4, s4, v1.xy.xyxx.xy);
  let v_1 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_1.xy, r2.zw);
  r2.x = dot(r2.xyz, cb11_11.tint_symbol_3[5u].xyz);
  r2.x = (r2.x * cb11_11.tint_symbol_3[4u].y);
  let v_2 = (r0.xyz * cb11_11.tint_symbol_3[0u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0 = (r0 * v3.xxxw);
  r2.y = (v3.x * cb2_2.tint_symbol[15u].z);
  r2.x = (r2.x * v3.x);
  r2.x = (r2.x * v2.w);
  let v_3 = ((-(cb11_11.tint_symbol_3[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_3.xy, r3.zw);
  r2.z = (r3.x * v3.z);
  let v_4 = (r3.yy * v1.xy);
  let v_5 = r3;
  r3 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  r4 = textureSample(t3, s3, r3.yzyy.xy);
  r3.y = (cb5_5.tint_symbol_1[3u].z * cb11_11.tint_symbol_3[2u].z);
  r3.z = ((-(r4.xxxx)).z + r4.z);
  r4.x = fma(r3.y, r3.z, r4.x);
  let v_6 = (r4.xy * cb11_11.tint_symbol_3[2u].xx);
  let v_7 = r3;
  r3 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r3.w = fma(v3.z, r3.x, -1.0f);
  r3.x = fma(r3.x, r3.w, 1.0f);
  r3.y = (r3.x * r3.y);
  let v_8 = -(r0.xyxz);
  let v_9 = fma(cb11_11.tint_symbol_3[3u].xyz, cb11_11.tint_symbol_3[2u].yyy, v_8.xyw);
  r4 = vec4<f32>(v_9.xy, r4.z, v_9.z);
  let v_10 = fma(r3.yyy, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r2.z = (r2.z * cb11_11.tint_symbol_3[2u].x);
  let v_11 = ((-(r0.xyzx)).xyz + r4.zzz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = fma(r2.zzz, r4.xyz, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r2.z = fma((-(r3.zzzz)).z, r3.x, 1.0f);
  r3.x = (r2.z * r2.x);
  r4.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.w = fma(v2.z, r1.x, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_1[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r2.y * r0.w);
  r1.x = fma((-(r3.xxxx)).x, 0.5f, 1.0f);
  r1.x = (r0.w * r1.x);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_13 = (r0.xyz * r1.xxx);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_2[4u].x) | bitcast<u32>(cb12_12.tint_symbol_2[4u].y)));
  let v_14 = bitcast<vec4<u32>>(r0.xxxx);
  r5 = select(r4, v3, (v_14 != vec4<u32>()));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r5.w)));
  v_15((bitcast<u32>(r0.x) != 0u));
  r0.x = (r2.w * cb11_11.tint_symbol_3[4u].x);
  let v_16 = fma(r1.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_16.xyz, o1.w);
  r3.y = (r0.x * 0.001953125f);
  r0.x = clamp(fma(r2.xxxx, r2.zzzz, vec4<f32>(0.69999998807907104492f)).x, 0.0f, 1.0f);
  r3.z = cb11_11.tint_symbol_3[3u].w;
  let v_17 = -(r3.xyxx);
  let v_18 = fma(r0.xx, vec2<f32>(0.5f, 0.48828125f), v_17.xy);
  r0 = vec4<f32>(v_18.xy, r0.zw);
  r0.z = 0.0f;
  let v_19 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = fma(r0.xyz, r0.www, r3.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = sqrt(r0.xy);
  o2 = vec4<f32>(v_21.xy, o2.zw);
  o0 = r5;
  o1.w = r4.w;
  o2.z = r0.z;
  o2.w = r4.w;
  o3 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
}

fn v_15(v_22 : bool) {
  if (v_22) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3);
  return tint_symbol_4(o0, o1, o2, o3);
}
