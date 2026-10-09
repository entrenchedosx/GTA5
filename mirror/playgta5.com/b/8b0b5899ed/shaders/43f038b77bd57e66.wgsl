diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0 = clamp(v1, vec4<f32>(), vec4<f32>(1.0f));
  r1 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r0.w = (r0.w * r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.5f)));
  v((bitcast<u32>(r1.w) != 0u));
  r1.w = dot(v3.xyz, v3.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_1 = (r1.www * v3.xyz);
  r2 = vec4<f32>(v_1.xyz, r2.w);
  r2.w = (cb2_2.tint_symbol_1[15u].w * cb12_12.tint_symbol_3[0u].x);
  r0.z = (r0.z * r0.z);
  let v_2 = (r0.xy * cb2_2.tint_symbol_1[15u].zy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.z = (r2.w * r0.z);
  let v_3 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r2.w = (r0.x * r0.x);
  r2.w = (r2.w * cb3_3.tint_symbol_2[0u].w);
  let v_5 = (r2.www * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  r0.z = (r0.z * cb3_3.tint_symbol_2[59u].w);
  let v_6 = ((-(v4.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_6.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_7 = (r2.ww * r4.xy);
  r4 = vec4<f32>(r4.xy, v_7.xy);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = (r2.w + -100.0f);
  r2.w = clamp(((r2.wwww * vec4<f32>(0.00009999999747378752f))).w, 0.0f, 1.0f);
  let v_8 = dot(cb3_3.tint_symbol_2[59u].xy, r4.zw);
  r3.w = clamp(vec4<f32>(v_8, v_8, v_8, v_8).w, 0.0f, 1.0f);
  r2.w = (r2.w + r3.w);
  r2.w = min(r2.w, 1.0f);
  r0.z = (r0.z * r2.w);
  let v_9 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_10 = dot(r2.xyz, v_9.xyz);
  r2.w = clamp(vec4<f32>(v_10, v_10, v_10, v_10).w, 0.0f, 1.0f);
  let v_11 = (r1.xyz * r2.www);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = (r3.xyz * r4.xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  r1.w = fma(v3.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[44u].w);
  r1.w = max(r1.w, 0.0f);
  let v_13 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.www, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_14 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.www, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = fma(r4.xyz, r2.www, r5.xyz);
  r4 = vec4<f32>(v_16.xyz, r4.w);
  let v_17 = (r0.yyy * r4.xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.www, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_18.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_19 = dot(r6.xyz, r2.xyz);
  r0.y = clamp(vec4<f32>(v_19, v_19, v_19, v_19).y, 0.0f, 1.0f);
  let v_20 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.yyy, r5.xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  let v_21 = fma(r2.xyz, r0.xxx, r4.xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = (r1.xyz * r2.xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  let v_23 = fma(r3.xyz, r0.xxx, r2.xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = fma(r1.xyz, r0.zzz, r2.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  let v_25 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r1 = vec4<f32>(v_25.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = sqrt(r0.w);
  let v_26 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r2.x = (r1.w + v_26.x);
  r2.x = max(r2.x, 0.0f);
  r1.w = (r2.x / r1.w);
  r1.w = (r1.w * r1.z);
  r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
  r2.z = (r2.y * -1.44269502162933349609f);
  r2.z = exp2(r2.z);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.y = (r2.z / r2.y);
  let v_27 = bitcast<u32>(r1.w);
  r1.w = select(1.0f, r2.y, (v_27 != 0u));
  r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
  r1.w = (r1.w * r2.y);
  r1.w = min(r1.w, 1.0f);
  r1.w = (r1.w * 1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = min(r1.w, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_28 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_28.xyz, r1.w);
  let v_29 = dot(r1.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_29, v_29, v_29, v_29).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_30 = dot(r1.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.x = clamp(vec4<f32>(v_30, v_30, v_30, v_30).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r1.x = (r1.x * cb3_3.tint_symbol_2[53u].w);
  r1.x = exp2(r1.x);
  r1.y = fma((-(r1.wwww)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
  let v_31 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r1.z = (r2.x + v_31.z);
  r1.z = max(r1.z, 0.0f);
  let v_32 = (r1.yz * cb3_3.tint_symbol_2[51u].yx);
  let v_33 = r1;
  r1 = vec4<f32>(v_33.x, v_32.xy, v_33.w);
  r1.z = (r1.z * 1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = clamp(fma(r1.yyyy, r1.zzzz, r2.yyyy).z, 0.0f, 1.0f);
  let v_34 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.w = (r2.x * v_34.w);
  r1.w = (r1.w * 1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  let v_35 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_36.xyz, r2.w);
  let v_37 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_37.xyz, r3.w);
  let v_38 = fma(r1.xxx, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_38.xyz, r2.w);
  let v_39 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_40 = (r2.xyz + v_39.xyz);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  let v_41 = fma(r1.www, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_41.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_42 = fma(r1.yyy, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_42.xy, r1.z, v_42.z);
  let v_43 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_43.xy, r1.z, v_43.z);
  let v_44 = fma(r1.zzz, r1.xyw, r0.xyz);
  o0 = vec4<f32>(v_44.xyz, o0.w);
}

fn v(v_45 : bool) {
  if (v_45) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
