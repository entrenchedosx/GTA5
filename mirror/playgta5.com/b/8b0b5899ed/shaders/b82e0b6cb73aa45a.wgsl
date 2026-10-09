diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  r1 = textureSample(t8, s8, r0.xyxx.xy);
  let v = (r1.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r2 = vec4<f32>(v.xyz, r2.w);
  let v_1 = fract(r2.xyz);
  r2 = vec4<f32>(v_1.xyz, r2.w);
  let v_2 = fma((-(r2.yzyy)).xy, vec2<f32>(0.125f), r2.xy);
  r2 = vec4<f32>(v_2.xy, r2.zw);
  let v_3 = fma(r1.xyz, vec3<f32>(256.0f), r2.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = (r1.xyz + vec3<f32>(-128.0f));
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_5 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r2 = vec4<f32>(((v2.xyz / v2.www)).xyz, r2.w);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_6 = (r0.zzz * r2.xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = -(r2.xyzx);
  let v_8 = -(cb11_11.tint_symbol_1[1u].xyzx);
  let v_9 = fma(v_7.xyz, r0.zzz, v_8.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = dot((-(r3.xyzx)).xyz, r1.xyz);
  r3.x = clamp(vec4<f32>(v_10, v_10, v_10, v_10).x, 0.0f, 1.0f);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_11 = (r0.zzz * r2.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = dot(r2.xyz, v_8.xyz);
  r3.y = clamp(vec4<f32>(v_12, v_12, v_12, v_12).y, 0.0f, 1.0f);
  r0.z = dot(r1.xyz, r2.xyz);
  let v_13 = dot(r1.xyz, v_8.xyz);
  r0.w = clamp(vec4<f32>(v_13, v_13, v_13, v_13).w, 0.0f, 1.0f);
  r0.z = clamp(((r0.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r0.z = log2(r0.z);
  let v_14 = ((-(r3.xyxx)).xy + vec2<f32>(1.0f));
  r1 = vec4<f32>(v_14.xy, r1.zw);
  let v_15 = (r1.xy * r1.xy);
  r1 = vec4<f32>(r1.xy, v_15.xy);
  let v_16 = (r1.zw * r1.zw);
  r1 = vec4<f32>(r1.xy, v_16.xy);
  let v_17 = (r1.xy * r1.zw);
  r1 = vec4<f32>(v_17.xy, r1.zw);
  r2 = textureSample(t9, s9, r0.xyxx.xy);
  r3 = textureSample(t7, s7, r0.xyxx.xy);
  let v_18 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  r0.x = ((-(r2.zzzz)).x + 1.0f);
  let v_19 = fma(r2.zz, r1.xy, r0.xx);
  r0 = vec4<f32>(v_19.xy, r0.zw);
  let v_20 = (r2.xy * r2.xy);
  r1 = vec4<f32>(v_20.xy, r1.zw);
  r1.z = fma(r1.y, 512.0f, -500.0f);
  r1.z = max(r1.z, 0.0f);
  let v_21 = -(r1.zzzz);
  r1.y = fma(r1.y, 512.0f, v_21.y);
  r1.z = (r1.z * 558.0f);
  r1.y = fma(r1.y, 3.0f, r1.z);
  let v_22 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  let v_23 = r1;
  r1 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  r1.x = min(r1.x, 1.0f);
  r0.z = (r0.z * r1.z);
  r1.y = (r1.y * 0.125f);
  r0.z = exp2(r0.z);
  r0.y = (r0.y * r0.z);
  r0.x = fma((-(r1.xxxx)).x, r0.x, 1.0f);
  r0.x = (r0.x * r0.w);
  r0.y = (r1.y * r0.y);
  r0.y = (r1.x * r0.y);
  r0.y = (r0.w * r0.y);
  let v_24 = fma(r3.xyz, r0.xxx, r0.yyy);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = (r0.xyz * cb11_11.tint_symbol_1[3u].xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_26.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
