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

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  let v = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
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
  r1.x = cb3_3.tint_symbol_2[46u].w;
  r1.y = cb3_3.tint_symbol_2[47u].w;
  r1.z = cb3_3.tint_symbol_2[48u].w;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_17 = (r1.www * v2.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  r1.w = fma(v2.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[44u].w);
  r1.w = max(r1.w, 0.0f);
  let v_18 = dot(r1.xyz, r2.xyz);
  r1.x = clamp(vec4<f32>(v_18, v_18, v_18, v_18).x, 0.0f, 1.0f);
  let v_19 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_20 = dot(r2.xyz, v_19.xyz);
  r1.y = clamp(vec4<f32>(v_20, v_20, v_20, v_20).y, 0.0f, 1.0f);
  let v_21 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.www, cb3_3.tint_symbol_2[44u].xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r2.xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  let v_23 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.www, cb3_3.tint_symbol_2[46u].xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  let v_24 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.www, cb3_3.tint_symbol_2[48u].xyz);
  r1 = vec4<f32>(v_24.x, r1.y, v_24.yz);
  let v_25 = (r3.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_26 = fma(r1.xzw, r2.www, r3.xyz);
  r1 = vec4<f32>(v_26.x, r1.y, v_26.yz);
  let v_27 = clamp(v1.xyw, vec3<f32>(), vec3<f32>(1.0f));
  r3 = vec4<f32>(v_27.xyz, r3.w);
  let v_28 = (r3.xy * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_28.xy, r3.zw);
  o0.w = (r3.z * cb2_2.tint_symbol_1[15u].x);
  let v_29 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_29.xy, r3.zw);
  let v_30 = (r1.xzw * r3.yyy);
  r1 = vec4<f32>(v_30.x, r1.y, v_30.yz);
  let v_31 = fma(r2.xyz, r3.xxx, r1.xzw);
  r1 = vec4<f32>(v_31.x, r1.y, v_31.yz);
  r2.x = (r3.x * r3.x);
  r2.x = (r2.x * cb3_3.tint_symbol_2[0u].w);
  let v_32 = (r2.xxx * cb3_3.tint_symbol_2[1u].xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  let v_33 = (r1.yyy * r2.xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  let v_34 = fma(r2.xyz, r3.xxx, r1.xzw);
  r1 = vec4<f32>(v_34.xyz, r1.w);
  let v_35 = -(r1.xyxz);
  let v_36 = (r0.xyw + v_35.xyw);
  r0 = vec4<f32>(v_36.xy, r0.z, v_36.z);
  let v_37 = fma(r0.zzz, r0.xyw, r1.xyz);
  o0 = vec4<f32>(v_37.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
