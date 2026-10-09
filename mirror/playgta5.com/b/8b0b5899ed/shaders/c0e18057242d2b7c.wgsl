diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb60_struct {
  tint_symbol_2 : array<vec4<f32>, 60u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb60_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  let v = ((-(v5.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.z = dot(r0.xyz, r0.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_1 = (r0.zz * r0.xy);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = (r0.x + -100.0f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(0.00009999999747378752f))).x, 0.0f, 1.0f);
  let v_2 = dot(cb3_3.tint_symbol_2[59u].xy, r0.zw);
  r0.y = clamp(vec4<f32>(v_2, v_2, v_2, v_2).y, 0.0f, 1.0f);
  r0.x = (r0.x + r0.y);
  r0.x = min(r0.x, 1.0f);
  r0.y = (cb2_2.tint_symbol_1[15u].w * cb12_12.tint_symbol_3[0u].x);
  r0.y = (r0.y * cb3_3.tint_symbol_2[59u].w);
  r0.x = (r0.x * r0.y);
  r1.x = cb3_3.tint_symbol_2[46u].w;
  r1.y = cb3_3.tint_symbol_2[47u].w;
  r1.z = cb3_3.tint_symbol_2[48u].w;
  r0.y = dot(v4.xyz, v4.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_3 = (r0.yyy * v4.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  r0.y = fma(v4.z, r0.y, cb3_3.tint_symbol_2[43u].w);
  r0.y = (r0.y * cb3_3.tint_symbol_2[44u].w);
  r0.y = max(r0.y, 0.0f);
  let v_4 = dot(r1.xyz, r2.xyz);
  r0.z = clamp(vec4<f32>(v_4, v_4, v_4, v_4).z, 0.0f, 1.0f);
  let v_5 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_6 = dot(r2.xyz, v_5.xyz);
  r0.w = clamp(vec4<f32>(v_6, v_6, v_6, v_6).w, 0.0f, 1.0f);
  let v_7 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.zzz, r1.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = (r2.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  r0.y = ((-(cb2_2.tint_symbol_1[16u].zzzz)).y + 1.0f);
  let v_12 = fma(r3.xyz, r0.yyy, r2.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = clamp(v1.xyw, vec3<f32>(), vec3<f32>(1.0f));
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = (r3.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_15 = r0;
  r0 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  let v_16 = (r0.yz * r0.yz);
  let v_17 = r0;
  r0 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  let v_18 = (r0.zzz * r2.xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = fma(r1.xyz, r0.yyy, r2.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  r2 = textureSample(t0, s0, v3.xy.xyxx.xy);
  let v_20 = (r2.xyz * v2.xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  r0.z = (r3.z * r2.w);
  o0.w = (r0.z * cb2_2.tint_symbol_1[15u].x);
  let v_21 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = (r1.xyz * r2.xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  let v_23 = (r0.www * r2.xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  r0.z = (r0.y * r0.y);
  r0.z = (r0.z * cb3_3.tint_symbol_2[0u].w);
  let v_24 = (r0.zzz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = (r3.xyz * r4.xyz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  let v_26 = fma(r3.xyz, r0.yyy, r1.xyz);
  r0 = vec4<f32>(r0.x, v_26.xyz);
  let v_27 = fma(r2.xyz, r0.xxx, r0.yzw);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = (v5.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r1 = vec4<f32>(v_28.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_29 = (r0.www * r1.xyz);
  r2 = vec4<f32>(v_29.xyz, r2.w);
  let v_30 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r0.w = (r1.w + v_30.w);
  r0.w = max(r0.w, 0.0f);
  r1.x = (r0.w / r1.w);
  r1.x = (r1.x * r1.z);
  r1.y = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.z = (r1.y * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.y = (r1.z / r1.y);
  let v_31 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.y, (v_31 != 0u));
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
  let v_32 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.z = clamp(vec4<f32>(v_32, v_32, v_32, v_32).z, 0.0f, 1.0f);
  let v_33 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r1.w = clamp(vec4<f32>(v_33, v_33, v_33, v_33).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
  r1.w = exp2(r1.w);
  r1.z = log2(r1.z);
  r1.z = (r1.z * cb3_3.tint_symbol_2[53u].w);
  r1.z = exp2(r1.z);
  let v_34 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  let v_35 = fma(r1.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_36.xyz, r3.w);
  let v_37 = fma(r1.zzz, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_39 = (r2.xyz + v_38.xyz);
  r2 = vec4<f32>(v_39.xyz, r2.w);
  let v_40 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.z = (r0.w * v_40.z);
  let v_41 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r0.w = (r0.w + v_41.w);
  r0.w = max(r0.w, 0.0f);
  r0.w = (r0.w * cb3_3.tint_symbol_2[51u].x);
  r0.w = (r0.w * 1.44269502162933349609f);
  r0.w = exp2(r0.w);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = clamp(fma(r1.yyyy, r0.wwww, r1.xxxx).w, 0.0f, 1.0f);
  r1.x = (r1.z * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  let v_42 = fma(r1.xxx, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r1 = vec4<f32>(v_42.x, r1.y, v_42.yz);
  r2.x = ((-(r1.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r2.y = ((-(r1.zzzz)).y + cb3_3.tint_symbol_2[56u].w);
  r2.z = ((-(r1.wwww)).z + cb3_3.tint_symbol_2[57u].w);
  let v_43 = fma(r1.yyy, r2.xyz, r1.xzw);
  r1 = vec4<f32>(v_43.xyz, r1.w);
  let v_44 = ((-(r0.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_44.xyz, r1.w);
  let v_45 = fma(r0.www, r1.xyz, r0.xyz);
  o0 = vec4<f32>(v_45.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5);
  return o0;
}
