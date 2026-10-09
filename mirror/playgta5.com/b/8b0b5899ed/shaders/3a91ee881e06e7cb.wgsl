diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb59_struct {
  tint_symbol_1 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb39_struct {
  tint_symbol_2 : array<vec4<f32>, 39u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb39_struct;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : u32) {
  let v = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).x;
  r0.y = (cb5_5.tint_symbol_2[0u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb5_5.tint_symbol_2[0u].z / r0.x);
  let v_4 = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[38u].x)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = textureSample(t7, s7, v1.xyxx.xy).x;
    r0.w = (r0.w + -1.0f);
    r0.w = clamp(fma(cb5_5.tint_symbol_2[38u].xxxx, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r1.x = dot(r0.xyz, r0.xyz);
    r1.y = sqrt(r1.x);
    let v_5 = -(cb3_3.tint_symbol_1[50u].xxxx);
    r1.z = (r1.y + v_5.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r0.z * r1.y);
    r1.w = (r1.y * cb3_3.tint_symbol_1[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_6 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_6 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_1[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_1[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_7 = (r0.xyz * r1.xxx);
    r2 = vec4<f32>(v_7.xyz, r2.w);
    let v_8 = dot(r2.xyz, cb3_3.tint_symbol_1[54u].xyz);
    r1.x = clamp(vec4<f32>(v_8, v_8, v_8, v_8).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_1[54u].w);
    r1.x = exp2(r1.x);
    let v_9 = dot(r2.xyz, cb3_3.tint_symbol_1[53u].xyz);
    r2.x = clamp(vec4<f32>(v_9, v_9, v_9, v_9).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_1[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_1[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_1[51u].y);
    let v_10 = -(cb3_3.tint_symbol_1[52u].xxxx);
    r2.y = (r1.z + v_10.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_1[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r3.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_11 = -(cb3_3.tint_symbol_1[51u].zzzz);
    r1.z = (r1.z * v_11.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_12 = ((-(cb3_3.tint_symbol_1[56u].xxyz)).yzw + cb3_3.tint_symbol_1[58u].xyz);
    r2 = vec4<f32>(r2.x, v_12.xyz);
    let v_13 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_1[56u].xyz);
    r2 = vec4<f32>(r2.x, v_13.xyz);
    let v_14 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_1[55u].xyz);
    r4 = vec4<f32>(v_14.xyz, r4.w);
    let v_15 = fma(r2.xxx, r4.xyz, r2.yzw);
    r2 = vec4<f32>(v_15.xyz, r2.w);
    let v_16 = -(cb3_3.tint_symbol_1[57u].xyzx);
    let v_17 = (r2.xyz + v_16.xyz);
    r2 = vec4<f32>(v_17.xyz, r2.w);
    let v_18 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_1[57u].xyz);
    r1 = vec4<f32>(v_18.x, r1.y, v_18.yz);
    r2.x = cb3_3.tint_symbol_1[55u].w;
    r2.y = cb3_3.tint_symbol_1[56u].w;
    r2.z = cb3_3.tint_symbol_1[57u].w;
    let v_19 = ((-(r1.xzwx)).xyz + r2.xyz);
    r2 = vec4<f32>(v_19.xyz, r2.w);
    let v_20 = fma(r1.yyy, r2.xyz, r1.xzw);
    r1 = vec4<f32>(v_20.xyz, r1.w);
    let v_21 = (r0.www * r1.xyz);
    r1 = vec4<f32>(v_21.xyz, r1.w);
  } else {
    r0.w = dot(r0.xyz, r0.xyz);
    r1.w = sqrt(r0.w);
    let v_22 = -(cb3_3.tint_symbol_1[50u].xxxx);
    r2.x = (r1.w + v_22.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r0.z * r1.w);
    r2.y = (r1.w * cb3_3.tint_symbol_1[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_23 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_23 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_1[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_1[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_24 = (r0.www * r0.xyz);
    r0 = vec4<f32>(v_24.xyz, r0.w);
    let v_25 = dot(r0.xyz, cb3_3.tint_symbol_1[54u].xyz);
    r0.w = clamp(vec4<f32>(v_25, v_25, v_25, v_25).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_1[54u].w);
    r0.w = exp2(r0.w);
    let v_26 = dot(r0.xyz, cb3_3.tint_symbol_1[53u].xyz);
    r0.x = clamp(vec4<f32>(v_26, v_26, v_26, v_26).x, 0.0f, 1.0f);
    r0.x = log2(r0.x);
    r0.x = (r0.x * cb3_3.tint_symbol_1[53u].w);
    r0.x = exp2(r0.x);
    r0.y = fma((-(r1.wwww)).y, cb3_3.tint_symbol_1[52u].y, 1.0f);
    let v_27 = -(cb3_3.tint_symbol_1[52u].xxxx);
    r0.z = (r2.x + v_27.z);
    r0.z = max(r0.z, 0.0f);
    let v_28 = (r0.yz * cb3_3.tint_symbol_1[51u].yx);
    let v_29 = r0;
    r0 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
    r0.z = (r0.z * 1.44269502162933349609f);
    r0.z = exp2(r0.z);
    r0.z = ((-(r0.zzzz)).z + 1.0f);
    r3.w = clamp(fma(r0.yyyy, r0.zzzz, r2.yyyy).w, 0.0f, 1.0f);
    let v_30 = -(cb3_3.tint_symbol_1[51u].zzzz);
    r0.z = (r2.x * v_30.z);
    r0.z = (r0.z * 1.44269502162933349609f);
    r0.z = exp2(r0.z);
    r0.z = ((-(r0.zzzz)).z + 1.0f);
    let v_31 = ((-(cb3_3.tint_symbol_1[56u].xyzx)).xyz + cb3_3.tint_symbol_1[58u].xyz);
    r2 = vec4<f32>(v_31.xyz, r2.w);
    let v_32 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_1[56u].xyz);
    r2 = vec4<f32>(v_32.xyz, r2.w);
    let v_33 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_1[55u].xyz);
    r4 = vec4<f32>(v_33.xyz, r4.w);
    let v_34 = fma(r0.xxx, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_34.xyz, r2.w);
    let v_35 = -(cb3_3.tint_symbol_1[57u].xyzx);
    let v_36 = (r2.xyz + v_35.xyz);
    r2 = vec4<f32>(v_36.xyz, r2.w);
    let v_37 = fma(r0.zzz, r2.xyz, cb3_3.tint_symbol_1[57u].xyz);
    r0 = vec4<f32>(v_37.x, r0.y, v_37.yz);
    r2.x = cb3_3.tint_symbol_1[55u].w;
    r2.y = cb3_3.tint_symbol_1[56u].w;
    r2.z = cb3_3.tint_symbol_1[57u].w;
    let v_38 = ((-(r0.xzwx)).xyz + r2.xyz);
    r2 = vec4<f32>(v_38.xyz, r2.w);
    let v_39 = fma(r0.yyy, r2.xyz, r0.xzw);
    r1 = vec4<f32>(v_39.xyz, r1.w);
  }
  let v_40 = (r1.xyz * cb2_2.tint_symbol[17u].zzz);
  r3 = vec4<f32>(v_40.xyz, r3.w);
  o0 = r3;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
