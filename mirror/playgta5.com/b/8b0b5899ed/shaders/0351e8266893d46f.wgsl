diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

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

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  r0 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r1 = textureSample(t5, s5, v1.xy.xyxx.xy);
  let v = clamp(v2.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r2 = vec4<f32>(v.xyz, r2.w);
  let v_1 = ((-(r2.xyzx)).xyz + vec3<f32>(1.0f));
  r3 = vec4<f32>(v_1.xyz, r3.w);
  r0.w = (r3.y * r3.x);
  r1.w = (r2.z * r0.w);
  r0.w = (r3.z * r0.w);
  let v_2 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(r0.xyz, r0.www, r1.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1 = textureSample(t8, s8, v1.xy.xyxx.xy);
  r0.w = (r2.y * r3.x);
  r1.w = (r2.z * r0.w);
  r0.w = (r3.z * r0.w);
  let v_4 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r2 = textureSample(t11, s11, v1.xy.xyxx.xy);
  let v_5 = fma(r2.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r1.x = cb3_3.tint_symbol_2[46u].w;
  r1.y = cb3_3.tint_symbol_2[47u].w;
  r1.z = cb3_3.tint_symbol_2[48u].w;
  let v_7 = dot(r1.xyz, v4.xyz);
  r0.w = clamp(vec4<f32>(v_7, v_7, v_7, v_7).w, 0.0f, 1.0f);
  r1.x = (v4.z + cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_8 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(r1.x, v_8.xyz);
  let v_9 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r1.yzw);
  r1 = vec4<f32>(r1.x, v_9.xyz);
  let v_10 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = (r2.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  r0.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_13 = fma(r3.xyz, r0.www, r2.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = clamp(v5.xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_14.xy, r3.zw);
  let v_15 = (r3.xy * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_15.xy, r3.zw);
  let v_16 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_16.xy, r3.zw);
  let v_17 = (r2.xyz * r3.yyy);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = fma(r1.yzw, r3.xxx, r2.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r0.w = clamp(cb12_12.tint_symbol_3[0u].y, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_19 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  let v_20 = (r0.xyz * r1.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = dot(v4.xyz, (-(cb3_3.tint_symbol_2[0u].xyzx)).xyz);
  r1.w = clamp(vec4<f32>(v_21, v_21, v_21, v_21).w, 0.0f, 1.0f);
  r0.w = (r0.w * r1.w);
  let v_22 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  r0.w = (r3.x * r3.x);
  r0.w = (r0.w * cb3_3.tint_symbol_2[0u].w);
  let v_23 = (r0.www * cb3_3.tint_symbol_2[1u].xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = (r0.xyz * r2.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = fma(r0.xyz, r3.xxx, r1.xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_27 = (r0.www * r1.xyz);
  r2 = vec4<f32>(v_27.xyz, r2.w);
  let v_28 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r0.w = (r1.w + v_28.w);
  r0.w = max(r0.w, 0.0f);
  r1.x = (r0.w / r1.w);
  r1.x = (r1.x * r1.z);
  r1.y = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.z = (r1.y * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.y = (r1.z / r1.y);
  let v_29 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.y, (v_29 != 0u));
  r1.y = (r0.w * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.y);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.y = fma((-(r1.xxxx)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
  let v_30 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.z = clamp(vec4<f32>(v_30, v_30, v_30, v_30).z, 0.0f, 1.0f);
  let v_31 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r1.w = clamp(vec4<f32>(v_31, v_31, v_31, v_31).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
  r1.w = exp2(r1.w);
  r1.z = log2(r1.z);
  r1.z = (r1.z * cb3_3.tint_symbol_2[53u].w);
  r1.z = exp2(r1.z);
  let v_32 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  let v_33 = fma(r1.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  let v_34 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_34.xyz, r3.w);
  let v_35 = fma(r1.zzz, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_37 = (r2.xyz + v_36.xyz);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.z = (r0.w * v_38.z);
  let v_39 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r0.w = (r0.w + v_39.w);
  r0.w = max(r0.w, 0.0f);
  r0.w = (r0.w * cb3_3.tint_symbol_2[51u].x);
  r0.w = (r0.w * 1.44269502162933349609f);
  r0.w = exp2(r0.w);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = clamp(fma(r1.yyyy, r0.wwww, r1.xxxx).w, 0.0f, 1.0f);
  r1.x = (r1.z * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  let v_40 = fma(r1.xxx, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r1 = vec4<f32>(v_40.x, r1.y, v_40.yz);
  r2.x = ((-(r1.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r2.y = ((-(r1.zzzz)).y + cb3_3.tint_symbol_2[56u].w);
  r2.z = ((-(r1.wwww)).z + cb3_3.tint_symbol_2[57u].w);
  let v_41 = fma(r1.yyy, r2.xyz, r1.xzw);
  r1 = vec4<f32>(v_41.xyz, r1.w);
  let v_42 = ((-(r0.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_42.xyz, r1.w);
  let v_43 = fma(r0.www, r1.xyz, r0.xyz);
  o0 = vec4<f32>(v_43.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5);
  return o0;
}
