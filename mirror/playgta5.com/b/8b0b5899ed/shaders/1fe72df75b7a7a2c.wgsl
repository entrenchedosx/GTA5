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

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  let v = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
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
  r1.y = dot(v3.xyz, v3.xyz);
  r1.y = inverseSqrt(r1.y);
  r1.z = fma(v3.z, r1.y, cb3_3.tint_symbol_2[43u].w);
  let v_17 = (r1.yyy * v3.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  r1.y = (r1.z * cb3_3.tint_symbol_2[44u].w);
  r1.y = max(r1.y, 0.0f);
  let v_18 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = (r3.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(r1.x, v_21.xyz);
  let v_22 = fma(r4.xyz, r1.xxx, r3.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  let v_23 = clamp(v1.yw, vec2<f32>(), vec2<f32>(1.0f));
  r4 = vec4<f32>(v_23.xy, r4.zw);
  r1.x = (r4.x * cb2_2.tint_symbol_1[15u].y);
  r1.x = (r1.x * r1.x);
  let v_24 = (r1.xxx * r3.xyz);
  r3 = vec4<f32>(v_24.xyz, r3.w);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_25 = dot(r5.xyz, r2.xyz);
  r1.x = clamp(vec4<f32>(v_25, v_25, v_25, v_25).x, 0.0f, 1.0f);
  let v_26 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_27 = dot(r2.xyz, v_26.xyz);
  r2.x = clamp(vec4<f32>(v_27, v_27, v_27, v_27).x, 0.0f, 1.0f);
  let v_28 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r1.yzw);
  r1 = vec4<f32>(v_28.xyz, r1.w);
  r1.w = (v2.z * v2.z);
  let v_29 = fma(r1.xyz, r1.www, r3.xyz);
  r1 = vec4<f32>(v_29.xyz, r1.w);
  r3 = textureSample(t0, s0, v2.xyz.xyxx.xy);
  let v_30 = (r3.xyz * r3.xyz);
  r2 = vec4<f32>(r2.x, v_30.xyz);
  r3.x = (r4.y * r3.w);
  o0.w = (r3.x * cb2_2.tint_symbol_1[15u].x);
  let v_31 = -(r2.yzwy);
  let v_32 = fma(r2.yzw, v5.xyz, v_31.xyz);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  let v_33 = fma(v5.www, r3.xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_33.xyz);
  let v_34 = (r1.xyz * r2.yzw);
  r1 = vec4<f32>(v_34.xyz, r1.w);
  let v_35 = (r2.xxx * r2.yzw);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  r2.w = (r1.w * r1.w);
  r2.w = (r2.w * cb3_3.tint_symbol_2[0u].w);
  let v_36 = (r2.www * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_36.xyz, r3.w);
  let v_37 = (r2.xyz * r3.xyz);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = fma(r2.xyz, r1.www, r1.xyz);
  r1 = vec4<f32>(v_38.xyz, r1.w);
  let v_39 = -(r1.xyxz);
  let v_40 = (r0.xyw + v_39.xyw);
  r0 = vec4<f32>(v_40.xy, r0.z, v_40.z);
  let v_41 = fma(r0.zzz, r0.xyw, r1.xyz);
  o0 = vec4<f32>(v_41.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5);
  return o0;
}
