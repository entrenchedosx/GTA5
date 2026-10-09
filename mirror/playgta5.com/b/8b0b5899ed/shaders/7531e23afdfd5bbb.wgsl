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

var<private> v8 : vec4<f32>;

var<private> v9 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v8 = v_1;
  x0[0u].x = v9[0u];
  x0[0u].y = v9[1u];
  x0[0u].z = v9[2u];
  x0[0u].w = v9[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r0.x)));
  v_2((bitcast<u32>(r0.x) != 0u));
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.z = dot(r0.xy, r0.xy);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = sqrt(abs(r0.zzzz).z);
  r1.x = max(cb12_12.tint_symbol_4[0u].y, 0.00100000004749745131f);
  let v_4 = (r0.xy * r1.xx);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = (r0.yyy * v5.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(r0.xxx, v4.xyz, r1.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(r0.zzz, v2.xyz, r1.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_8 = (r0.xyz * r1.xxx);
  r1 = vec4<f32>(r1.x, v_8.xyz);
  let v_9 = fma((-(r0.xyzx)).xyz, r1.xxx, v2.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = fma(cb12_12.tint_symbol_4[3u].xxx, r0.xyz, r1.yzw);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r0.z = dot(r0.xyz, r0.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_11 = (r0.zz * r0.xy);
  r0 = vec4<f32>(v_11.xy, r0.zw);
  r0.z = dot(v3.xyz, v3.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_12 = (r0.zzz * v3.xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = dot(r1.xyz, v2.xyz);
  r0.z = clamp(vec4<f32>(v_13, v_13, v_13, v_13).z, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r1.x = (r0.z * r0.z);
  r1.x = (r1.x * r1.x);
  r0.z = (r0.z * r1.x);
  r1.x = ((-(cb12_12.tint_symbol_4[0u].xxxx)).x + 1.0f);
  r0.z = fma(cb12_12.tint_symbol_4[0u].x, r0.z, r1.x);
  r1 = vec4<f32>(((v7.xy / v7.ww)).xy, r1.zw);
  let v_14 = fma(cb12_12.tint_symbol_4[2u].zw, r1.xy, cb12_12.tint_symbol_4[2u].xy);
  r1 = vec4<f32>(v_14.xy, r1.zw);
  let v_15 = (r0.xy * cb12_12.tint_symbol_4[0u].ww);
  r0 = vec4<f32>(v_15.xy, r0.zw);
  let v_16 = fma(r0.xy, vec2<f32>(0.001953125f, 0.00390625f), r1.xy);
  r0 = vec4<f32>(v_16.xy, r0.zw);
  r1 = textureSample(t1, s1, r0.xyxx.xy);
  let v_17 = (r1.xyz * cb12_12.tint_symbol_4[0u].zzz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  r0.x = (r0.z * v0.w);
  r0.y = (r0.w * r0.x);
  let v_18 = (r1.xyz * cb12_12.tint_symbol_4[3u].yyy);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r0.x = fma((-(r0.xxxx)).x, r0.w, 1.0f);
  o0.w = fma(cb12_12.tint_symbol_4[3u].x, r0.x, r0.y);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    let v_19 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
    r0 = vec4<f32>(v_19.xyz, r0.w);
    r0.w = dot(r0.xyz, r0.xyz);
    r1.w = sqrt(r0.w);
    let v_20 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.w = (r1.w + v_20.w);
    r2.w = max(r2.w, 0.0f);
    r1.w = (r2.w / r1.w);
    r1.w = (r0.z * r1.w);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r3.y = (r3.x * -1.44269502162933349609f);
    r3.y = exp2(r3.y);
    r3.y = ((-(r3.yyyy)).y + 1.0f);
    r3.x = (r3.y / r3.x);
    let v_21 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r3.x, (v_21 != 0u));
    r3.x = (r2.w * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r3.x);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_22 = (r0.www * r0.xyz);
    r0 = vec4<f32>(v_22.xyz, r0.w);
    let v_23 = dot(r0.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_23, v_23, v_23, v_23).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_24 = dot(r0.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r0.x = clamp(vec4<f32>(v_24, v_24, v_24, v_24).x, 0.0f, 1.0f);
    r0.x = log2(r0.x);
    r0.x = (r0.x * cb3_3.tint_symbol_2[53u].w);
    r0.x = exp2(r0.x);
    r0.y = fma((-(r1.wwww)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    let v_25 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r0.z = (r2.w + v_25.z);
    r0.z = max(r0.z, 0.0f);
    let v_26 = (r0.yz * cb3_3.tint_symbol_2[51u].yx);
    let v_27 = r0;
    r0 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
    r0.z = (r0.z * 1.44269502162933349609f);
    r0.z = exp2(r0.z);
    r0.z = ((-(r0.zzzz)).z + 1.0f);
    r0.z = clamp(fma(r0.yyyy, r0.zzzz, r3.xxxx).z, 0.0f, 1.0f);
    let v_28 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.w = (r2.w * v_28.w);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    let v_29 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_29.xyz, r3.w);
    let v_30 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_30.xyz, r3.w);
    let v_31 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_31.xyz, r4.w);
    let v_32 = fma(r0.xxx, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_32.xyz, r3.w);
    let v_33 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_34 = (r3.xyz + v_33.xyz);
    r3 = vec4<f32>(v_34.xyz, r3.w);
    let v_35 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_35.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_36 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_36.xyz, r4.w);
    let v_37 = fma(r0.yyy, r4.xyz, r3.xyz);
    r0 = vec4<f32>(v_37.xy, r0.z, v_37.z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r1.w) != 0u)) {
      let v_38 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
      r3 = vec4<f32>(v_38.xy, r3.zw);
      r3 = textureSample(t11, s11, r3.xyxx.xy);
      r1.w = (r3.x + -1.0f);
      r1.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r1.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r1.w = 1.0f;
    }
    let v_39 = -(r2.xyxz);
    let v_40 = fma(r0.xyw, r1.www, v_39.xyw);
    r0 = vec4<f32>(v_40.xy, r0.z, v_40.z);
    let v_41 = fma(r0.zzz, r0.xyw, r2.xyz);
    r0 = vec4<f32>(v_41.xyz, r0.w);
  } else {
    let v_42 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
    r3 = vec4<f32>(v_42.xyz, r3.w);
    r0.w = dot(r3.xyz, r3.xyz);
    r1.w = sqrt(r0.w);
    let v_43 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.w = (r1.w + v_43.w);
    r2.w = max(r2.w, 0.0f);
    r1.w = (r2.w / r1.w);
    r1.w = (r1.w * r3.z);
    r3.w = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r4.x = (r3.w * -1.44269502162933349609f);
    r4.x = exp2(r4.x);
    r4.x = ((-(r4.xxxx)).x + 1.0f);
    r3.w = (r4.x / r3.w);
    let v_44 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r3.w, (v_44 != 0u));
    r3.w = (r2.w * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r3.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r3.w = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_45 = (r0.www * r3.xyz);
    r3 = vec4<f32>(v_45.xyz, r3.w);
    let v_46 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_46, v_46, v_46, v_46).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_47 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r3.x = clamp(vec4<f32>(v_47, v_47, v_47, v_47).x, 0.0f, 1.0f);
    r3.x = log2(r3.x);
    r3.x = (r3.x * cb3_3.tint_symbol_2[53u].w);
    r3.x = exp2(r3.x);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_48 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.y = (r2.w + v_48.y);
    r3.y = max(r3.y, 0.0f);
    r3.y = (r3.y * cb3_3.tint_symbol_2[51u].x);
    r3.y = (r3.y * 1.44269502162933349609f);
    r3.y = exp2(r3.y);
    r3.y = ((-(r3.yyyy)).y + 1.0f);
    r3.y = clamp(fma(r1.wwww, r3.yyyy, r3.wwww).y, 0.0f, 1.0f);
    let v_49 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.w = (r2.w * v_49.w);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    let v_50 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r4 = vec4<f32>(v_50.xyz, r4.w);
    let v_51 = fma(r0.www, r4.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r4 = vec4<f32>(v_51.xyz, r4.w);
    let v_52 = ((-(r4.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r5 = vec4<f32>(v_52.xyz, r5.w);
    let v_53 = fma(r3.xxx, r5.xyz, r4.xyz);
    r3 = vec4<f32>(v_53.x, r3.y, v_53.yz);
    let v_54 = -(cb3_3.tint_symbol_2[57u].xxyz);
    let v_55 = (r3.xzw + v_54.xzw);
    r3 = vec4<f32>(v_55.x, r3.y, v_55.yz);
    let v_56 = fma(r2.www, r3.xzw, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_56.x, r3.y, v_56.yz);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_57 = ((-(r3.xzwx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_57.xyz, r4.w);
    let v_58 = fma(r1.www, r4.xyz, r3.xzw);
    r3 = vec4<f32>(v_58.x, r3.y, v_58.yz);
    let v_59 = fma((-(r1.xyzx)).xyz, cb12_12.tint_symbol_4[3u].yyy, r3.xzw);
    r1 = vec4<f32>(v_59.xyz, r1.w);
    let v_60 = fma(r3.yyy, r1.xyz, r2.xyz);
    r0 = vec4<f32>(v_60.xyz, r0.w);
  }
  let v_61 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_61.xyz, o0.w);
}

fn v_2(v_62 : bool) {
  if (v_62) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_63 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7, v_63);
  return o0;
}
