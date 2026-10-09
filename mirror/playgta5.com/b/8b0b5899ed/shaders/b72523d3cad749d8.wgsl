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

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb8_struct {
  tint_symbol_3 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb8_struct;

struct cb4_struct {
  tint_symbol_4 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

var<private> v6 : vec4<f32>;

var<private> v7 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v6 = v_1;
  x0[0u].x = v7[0u];
  x0[0u].y = v7[1u];
  x0[0u].z = v7[2u];
  x0[0u].w = v7[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_2 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v_2.xyz);
  r2 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_3 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_3.xy, r2.zw);
  r2.x = dot(r2.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r2.x = clamp(((r2.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  let v_4 = r2;
  r2 = vec4<f32>(v_4.x, ((v5.xy / v5.ww)).xy, v_4.w);
  let v_5 = fma(cb12_12.tint_symbol_4[3u].zw, r2.yz, cb12_12.tint_symbol_4[3u].xy);
  let v_6 = r2;
  r2 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  r3 = textureSample(t1, s1, r2.yzyy.xy);
  r0.w = (r0.w * v0.w);
  let v_7 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_8 = r2;
  r2 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  let v_9 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (r2.yz * r2.yz);
  let v_11 = r2;
  r2 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_12 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_13 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = fma(r4.xyz, r2.www, r5.xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  let v_16 = (r2.zzz * r4.xyz);
  r4 = vec4<f32>(v_16.xyz, r4.w);
  let v_17 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_17.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_18 = dot(r6.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_18, v_18, v_18, v_18).x, 0.0f, 1.0f);
  let v_19 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r5.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  let v_20 = fma(r1.xyz, r2.yyy, r4.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = (r2.xxx * r1.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  r1.w = ((-(r2.xxxx)).w + 1.0f);
  let v_22 = (r1.www * r3.xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  let v_23 = fma(r1.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    let v_24 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
    r1 = vec4<f32>(v_24.xyz, r1.w);
    r0.w = dot(r1.xyz, r1.xyz);
    r1.w = sqrt(r0.w);
    let v_25 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_25.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r1.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_26 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_26 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_27 = (r0.www * r1.xyz);
    r1 = vec4<f32>(v_27.xyz, r1.w);
    let v_28 = dot(r1.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_28, v_28, v_28, v_28).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_29 = dot(r1.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.x = clamp(vec4<f32>(v_29, v_29, v_29, v_29).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[53u].w);
    r1.x = exp2(r1.x);
    r1.y = fma((-(r1.wwww)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    let v_30 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r1.z = (r2.x + v_30.z);
    r1.z = max(r1.z, 0.0f);
    let v_31 = (r1.yz * cb3_3.tint_symbol_2[51u].yx);
    let v_32 = r1;
    r1 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    r1.z = clamp(fma(r1.yyyy, r1.zzzz, r2.yyyy).z, 0.0f, 1.0f);
    let v_33 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.w = (r2.x * v_33.w);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    let v_34 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_34.xyz, r2.w);
    let v_35 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_35.xyz, r2.w);
    let v_36 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_36.xyz, r3.w);
    let v_37 = fma(r1.xxx, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_37.xyz, r2.w);
    let v_38 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_39 = (r2.xyz + v_38.xyz);
    r2 = vec4<f32>(v_39.xyz, r2.w);
    let v_40 = fma(r1.www, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_40.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_41 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_41.xyz, r3.w);
    let v_42 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_42.xy, r1.z, v_42.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_43 = (v6.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_43.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_44 = -(r0.xyxz);
    let v_45 = fma(r1.xyw, r0.www, v_44.xyw);
    r1 = vec4<f32>(v_45.xy, r1.z, v_45.z);
    let v_46 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_46.xyz, r1.w);
  } else {
    let v_47 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
    r2 = vec4<f32>(v_47.xyz, r2.w);
    r0.w = dot(r2.xyz, r2.xyz);
    r1.w = sqrt(r0.w);
    let v_48 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.w = (r1.w + v_48.w);
    r2.w = max(r2.w, 0.0f);
    r1.w = (r2.w / r1.w);
    r1.w = (r1.w * r2.z);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r3.y = (r3.x * -1.44269502162933349609f);
    r3.y = exp2(r3.y);
    r3.y = ((-(r3.yyyy)).y + 1.0f);
    r3.x = (r3.y / r3.x);
    let v_49 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r3.x, (v_49 != 0u));
    r3.x = (r2.w * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r3.x);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_50 = (r0.www * r2.xyz);
    r2 = vec4<f32>(v_50.xyz, r2.w);
    let v_51 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_51, v_51, v_51, v_51).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_52 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_52, v_52, v_52, v_52).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_53 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r2.w + v_53.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.yyyy, r3.xxxx).y, 0.0f, 1.0f);
    let v_54 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.z = (r2.w * v_54.z);
    r2.z = (r2.z * 1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    let v_55 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_55.xyz, r3.w);
    let v_56 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_56.xyz, r3.w);
    let v_57 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_57.xyz, r4.w);
    let v_58 = fma(r2.xxx, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_58.xyz, r3.w);
    let v_59 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_60 = (r3.xyz + v_59.xyz);
    r3 = vec4<f32>(v_60.xyz, r3.w);
    let v_61 = fma(r2.zzz, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_61.x, r2.y, v_61.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_62 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_62.xyz, r3.w);
    let v_63 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_63.x, r2.y, v_63.yz);
    let v_64 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_64.x, r2.y, v_64.yz);
    let v_65 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_65.xyz, r1.w);
  }
  let v_66 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_66.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @builtin(position) v_67 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v_67);
  return o0;
}
