diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb59_struct {
  tint_symbol_1 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb45_struct {
  tint_symbol_2 : array<vec4<f32>, 45u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb45_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0.x = textureSample(t3, s3, v1.xyxx.xy).x;
  r0.y = (cb5_5.tint_symbol_2[0u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb5_5.tint_symbol_2[0u].z / r0.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[44u].x)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    let v = (cb2_2.tint_symbol[18u].zw + cb2_2.tint_symbol[18u].zw);
    let v_1 = r0;
    r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
    let v_2 = (v1.xy * cb2_2.tint_symbol[18u].xy);
    r1 = vec4<f32>(v_2.xy, r1.zw);
    let v_3 = (r1.xy * vec2<f32>(0.5f));
    r1 = vec4<f32>(v_3.xy, r1.zw);
    let v_4 = round(r1.xy);
    r1 = vec4<f32>(v_4.xy, r1.zw);
    let v_5 = (r0.yz * r1.xy);
    let v_6 = r0;
    r0 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
    r1 = textureGather(0i, t7, s7, r0.yz);
    r2 = textureGather(1i, t7, s7, r0.yz);
    r3 = (-(r0.xxxx) + r2);
    r2 = (r3 / r2);
    let v_7 = abs(r2.yyyy);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (v_7.y < abs(r2.xxxx).y)));
    let v_8 = r1;
    let v_9 = r3;
    r3 = vec4<f32>(v_8.y, v_9.y, v_8.x, v_9.w);
    let v_10 = abs(r2.yyyx).yw;
    let v_11 = r3;
    r3 = vec4<f32>(v_11.x, v_10.x, v_11.z, v_10.y);
    let v_12 = bitcast<vec2<u32>>(r0.yy);
    let v_13 = r3.xy;
    let v_14 = select(r3.zw, v_13, (v_12 != vec2<u32>()));
    let v_15 = r0;
    r0 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (abs(r2.zzzz).w < r0.z)));
    r3.x = r1.z;
    r3.y = abs(r2.zzzz).y;
    let v_16 = bitcast<vec2<u32>>(r0.ww);
    let v_17 = r3.xy;
    let v_18 = select(r0.yz, v_17, (v_16 != vec2<u32>()));
    let v_19 = r0;
    r0 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
    r0.z = bitcast<f32>(select(0u, 4294967295u, (abs(r2.wwww).z < r0.z)));
    let v_20 = bitcast<u32>(r0.z);
    let v_21 = r1.w;
    r0.y = select(r0.y, v_21, (v_20 != 0u));
    r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r2) < vec4<f32>(0.00999999977648258209f))));
    let v_22 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r2.zw) & bitcast<vec2<u32>>(r2.xy)));
    r0 = vec4<f32>(r0.xy, v_22.xy);
    r0.z = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.z)));
    r0.w = dot(r1, vec4<f32>(0.25f));
    let v_23 = bitcast<u32>(r0.z);
    let v_24 = r0.w;
    r0.y = select(r0.y, v_24, (v_23 != 0u));
  } else {
    r0.y = 1.0f;
  }
  let v_25 = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(v_25.x, r0.y, v_25.yz);
  r0.y = (r0.y + -1.0f);
  r0.y = clamp(fma(cb5_5.tint_symbol_2[44u].xxxx, r0.yyyy, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r1.x = dot(r0.xzw, r0.xzw);
  r1.y = sqrt(r1.x);
  let v_26 = -(cb3_3.tint_symbol_1[50u].xxxx);
  r1.z = (r1.y + v_26.z);
  r1.z = max(r1.z, 0.0f);
  r1.y = (r1.z / r1.y);
  r1.y = (r0.w * r1.y);
  r1.w = (r1.y * cb3_3.tint_symbol_1[52u].z);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
  r2.x = (r1.w * -1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.w = (r2.x / r1.w);
  let v_27 = bitcast<u32>(r1.y);
  r1.y = select(1.0f, r1.w, (v_27 != 0u));
  r1.w = (r1.z * cb3_3.tint_symbol_1[51u].w);
  r1.y = (r1.y * r1.w);
  r1.y = min(r1.y, 1.0f);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = min(r1.y, 1.0f);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.w = (r1.y * cb3_3.tint_symbol_1[52u].y);
  r1.x = inverseSqrt(r1.x);
  let v_28 = (r0.xzw * r1.xxx);
  r0 = vec4<f32>(v_28.x, r0.y, v_28.yz);
  let v_29 = dot(r0.xzw, cb3_3.tint_symbol_1[54u].xyz);
  r1.x = clamp(vec4<f32>(v_29, v_29, v_29, v_29).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r1.x = (r1.x * cb3_3.tint_symbol_1[54u].w);
  r1.x = exp2(r1.x);
  let v_30 = dot(r0.xzw, cb3_3.tint_symbol_1[53u].xyz);
  r0.x = clamp(vec4<f32>(v_30, v_30, v_30, v_30).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_1[53u].w);
  r0.x = exp2(r0.x);
  r0.z = fma((-(r1.yyyy)).z, cb3_3.tint_symbol_1[52u].y, 1.0f);
  let v_31 = -(cb3_3.tint_symbol_1[52u].xxxx);
  r0.w = (r1.z + v_31.w);
  r0.w = max(r0.w, 0.0f);
  let v_32 = (r0.zw * cb3_3.tint_symbol_1[51u].yx);
  r0 = vec4<f32>(r0.xy, v_32.xy);
  r0.w = (r0.w * 1.44269502162933349609f);
  r0.w = exp2(r0.w);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  o0.w = clamp(fma(r0.zzzz, r0.wwww, r1.wwww).w, 0.0f, 1.0f);
  let v_33 = -(cb3_3.tint_symbol_1[51u].zzzz);
  r0.w = (r1.z * v_33.w);
  r0.w = (r0.w * 1.44269502162933349609f);
  r0.w = exp2(r0.w);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_34 = ((-(cb3_3.tint_symbol_1[56u].xxyz)).yzw + cb3_3.tint_symbol_1[58u].xyz);
  r1 = vec4<f32>(r1.x, v_34.xyz);
  let v_35 = fma(r1.xxx, r1.yzw, cb3_3.tint_symbol_1[56u].xyz);
  r1 = vec4<f32>(v_35.xyz, r1.w);
  let v_36 = ((-(r1.xyzx)).xyz + cb3_3.tint_symbol_1[55u].xyz);
  r2 = vec4<f32>(v_36.xyz, r2.w);
  let v_37 = fma(r0.xxx, r2.xyz, r1.xyz);
  r1 = vec4<f32>(v_37.xyz, r1.w);
  let v_38 = -(cb3_3.tint_symbol_1[57u].xyzx);
  let v_39 = (r1.xyz + v_38.xyz);
  r1 = vec4<f32>(v_39.xyz, r1.w);
  let v_40 = fma(r0.www, r1.xyz, cb3_3.tint_symbol_1[57u].xyz);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  r2.x = ((-(r1.xxxx)).x + cb3_3.tint_symbol_1[55u].w);
  r2.y = ((-(r1.yyyy)).y + cb3_3.tint_symbol_1[56u].w);
  r2.z = ((-(r1.zzzz)).z + cb3_3.tint_symbol_1[57u].w);
  let v_41 = fma(r0.zzz, r2.xyz, r1.xyz);
  r0 = vec4<f32>(v_41.x, r0.y, v_41.yz);
  let v_42 = (r0.yyy * r0.xzw);
  r0 = vec4<f32>(v_42.xyz, r0.w);
  let v_43 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_43.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
