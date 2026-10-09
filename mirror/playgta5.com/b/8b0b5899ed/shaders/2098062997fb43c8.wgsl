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

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  x0[0u].x = v8[0u];
  x0[0u].y = v8[1u];
  x0[0u].z = v8[2u];
  x0[0u].w = v8[3u];
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
  r1 = textureSample(t3, s3, v0.xyxx.xy);
  r2 = textureSample(t6, s6, v0.xyxx.xy);
  r3 = textureSample(t0, s0, v0.zwzz.xy);
  let v_17 = clamp(r3.xyzx.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = ((-(r3.xyzx)).xyz + vec3<f32>(1.0f));
  r4 = vec4<f32>(v_18.xyz, r4.w);
  r1.w = (r4.y * r4.x);
  r2.w = (r3.z * r1.w);
  r1.w = (r4.z * r1.w);
  let v_19 = (r2.www * r2.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  let v_20 = fma(r1.xyz, r1.www, r2.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  r2 = textureSample(t9, s9, v0.xyxx.xy);
  r1.w = (r3.y * r4.x);
  r2.w = (r3.z * r1.w);
  r1.w = (r4.z * r1.w);
  let v_21 = fma(r2.xyz, r1.www, r1.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  r3 = textureSample(t12, s12, v0.xyxx.xy);
  let v_22 = fma(r3.xyz, r2.www, r1.xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  let v_23 = (r1.xyz * v1.xyz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  let v_24 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_24.xyz, r1.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  r2.x = (v3.z + cb3_3.tint_symbol_2[43u].w);
  r2.x = (r2.x * cb3_3.tint_symbol_2[44u].w);
  r2.x = max(r2.x, 0.0f);
  let v_25 = fma(cb3_3.tint_symbol_2[45u].xyz, r2.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r2 = vec4<f32>(r2.x, v_25.xyz);
  let v_26 = (r2.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r2 = vec4<f32>(r2.x, v_26.xyz);
  let v_27 = fma(cb3_3.tint_symbol_2[47u].xyz, r2.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_27.xyz, r3.w);
  let v_28 = fma(cb3_3.tint_symbol_2[43u].xyz, r2.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  let v_29 = fma(r3.xyz, r1.www, r2.yzw);
  r2 = vec4<f32>(v_29.xyz, r2.w);
  let v_30 = (v4.xy * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_30.xy, r3.zw);
  let v_31 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_31.xy, r3.zw);
  let v_32 = (r2.xyz * r3.yyy);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_33 = dot(r5.xyz, v3.xyz);
  r1.w = clamp(vec4<f32>(v_33, v_33, v_33, v_33).w, 0.0f, 1.0f);
  let v_34 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.www, r4.xyz);
  r3 = vec4<f32>(r3.x, v_34.xyz);
  let v_35 = fma(r3.yzw, r3.xxx, r2.xyz);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = fma((-(r2.xyxz)).xyw, r1.xyz, r0.xyw);
  r0 = vec4<f32>(v_36.xy, r0.z, v_36.z);
  let v_37 = (r1.xyz * r2.xyz);
  r1 = vec4<f32>(v_37.xyz, r1.w);
  let v_38 = fma(r0.zzz, r0.xyw, r1.xyz);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  let v_39 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_39.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4);
  return o0;
}
