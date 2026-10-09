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

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

var<private> v6 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  x0[0u].x = v6[0u];
  x0[0u].y = v6[1u];
  x0[0u].z = v6[2u];
  x0[0u].w = v6[3u];
  let v = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_1 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_1.xy, r0.z, v_1.z);
  let v_2 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_2.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r0.z = (r0.z * r1.x);
  r1.x = (r0.z * cb3_3.tint_symbol_2[52u].z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.zzzz).z)));
  r1.z = (r1.x * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.x = (r1.z / r1.x);
  let v_3 = bitcast<u32>(r0.z);
  r0.z = select(1.0f, r1.x, (v_3 != 0u));
  r1.x = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r0.z = (r0.z * r1.x);
  r0.z = min(r0.z, 1.0f);
  r0.z = (r0.z * 1.44269502162933349609f);
  r0.z = exp2(r0.z);
  r0.z = min(r0.z, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r1.x = fma((-(r0.zzzz)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r0.z = (r0.z * cb3_3.tint_symbol_2[52u].y);
  let v_4 = dot(r0.xyw, cb3_3.tint_symbol_2[53u].xyz);
  r1.z = clamp(vec4<f32>(v_4, v_4, v_4, v_4).z, 0.0f, 1.0f);
  let v_5 = dot(r0.xyw, cb3_3.tint_symbol_2[54u].xyz);
  r0.x = clamp(vec4<f32>(v_5, v_5, v_5, v_5).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
  r0.x = exp2(r0.x);
  r0.y = log2(r1.z);
  r0.y = (r0.y * cb3_3.tint_symbol_2[53u].w);
  r0.y = exp2(r0.y);
  let v_6 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r0.xxx, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = fma(r0.yyy, r3.xyz, r2.xyz);
  r0 = vec4<f32>(v_9.xy, r0.z, v_9.z);
  let v_10 = -(cb3_3.tint_symbol_2[57u].xyxz);
  let v_11 = (r0.xyw + v_10.xyw);
  r0 = vec4<f32>(v_11.xy, r0.z, v_11.z);
  let v_12 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.z = (r1.y * v_12.z);
  let v_13 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r1.y = (r1.y + v_13.y);
  r1.y = max(r1.y, 0.0f);
  let v_14 = (r1.xy * cb3_3.tint_symbol_2[51u].yx);
  r1 = vec4<f32>(v_14.xy, r1.zw);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r0.z = clamp(fma(r1.xxxx, r1.yyyy, r0.zzzz).z, 0.0f, 1.0f);
  r1.y = (r1.z * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_15 = fma(r1.yyy, r0.xyw, cb3_3.tint_symbol_2[57u].xyz);
  r0 = vec4<f32>(v_15.xy, r0.z, v_15.z);
  r2.x = ((-(r0.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r2.y = ((-(r0.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r2.z = ((-(r0.wwww)).z + cb3_3.tint_symbol_2[57u].w);
  let v_16 = fma(r1.xxx, r2.xyz, r0.xyw);
  r0 = vec4<f32>(v_16.xy, r0.z, v_16.z);
  r1.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  r1.y = (v3.z + cb3_3.tint_symbol_2[43u].w);
  r1.y = (r1.y * cb3_3.tint_symbol_2[44u].w);
  r1.y = max(r1.y, 0.0f);
  let v_17 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = (r2.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(r1.x, v_20.xyz);
  let v_21 = fma(r3.xyz, r1.xxx, r2.xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = (v4.xy * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_22.xy, r3.zw);
  let v_23 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_23.xy, r3.zw);
  let v_24 = (r2.xyz * r3.yyy);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  r4.x = cb3_3.tint_symbol_2[46u].w;
  r4.y = cb3_3.tint_symbol_2[47u].w;
  r4.z = cb3_3.tint_symbol_2[48u].w;
  let v_25 = dot(r4.xyz, v3.xyz);
  r1.x = clamp(vec4<f32>(v_25, v_25, v_25, v_25).x, 0.0f, 1.0f);
  let v_26 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r1.yzw);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  let v_27 = fma(r1.xyz, r3.xxx, r2.xyz);
  r1 = vec4<f32>(v_27.xyz, r1.w);
  r2 = textureSample(t2, s2, v0.xyxx.xy);
  r3 = textureSample(t4, s4, v0.zwzz.xy);
  let v_28 = clamp(v1.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r4 = vec4<f32>(v_28.xyz, r4.w);
  let v_29 = ((-(r4.xyzx)).xyz + vec3<f32>(1.0f));
  r5 = vec4<f32>(v_29.xyz, r5.w);
  r1.w = (r5.y * r5.x);
  r2.w = (r4.z * r1.w);
  r1.w = (r5.z * r1.w);
  let v_30 = (r2.www * r3.xyz);
  r3 = vec4<f32>(v_30.xyz, r3.w);
  let v_31 = fma(r2.xyz, r1.www, r3.xyz);
  r2 = vec4<f32>(v_31.xyz, r2.w);
  r3 = textureSample(t6, s6, v0.zwzz.xy);
  r1.w = (r4.y * r5.x);
  r2.w = (r4.z * r1.w);
  r1.w = (r5.z * r1.w);
  let v_32 = fma(r3.xyz, r1.www, r2.xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  r3 = textureSample(t8, s8, v0.zwzz.xy);
  let v_33 = fma(r3.xyz, r2.www, r2.xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  let v_34 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  let v_35 = fma((-(r1.xyxz)).xyw, r2.xyz, r0.xyw);
  r0 = vec4<f32>(v_35.xy, r0.z, v_35.z);
  let v_36 = (r1.xyz * r2.xyz);
  r1 = vec4<f32>(v_36.xyz, r1.w);
  let v_37 = fma(r0.zzz, r0.xyw, r1.xyz);
  o0 = vec4<f32>(v_37.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4);
  return o0;
}
