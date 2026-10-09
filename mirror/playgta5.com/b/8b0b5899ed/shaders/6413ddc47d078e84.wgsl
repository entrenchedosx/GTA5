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

struct cb8_struct {
  tint_symbol_3 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(4u) var<uniform> cb4_4 : cb8_struct;

struct cb2_struct {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb2_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v3 : vec4<f32>) {
  let v = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  r1.y = ((-(r1.xxxx)).y + 22000.0f);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < 0.0f)));
  v_1((bitcast<u32>(r1.y) != 0u));
  r1.y = (cb4_4.tint_symbol_3[5u].x * 0.10000000149011611938f);
  let v_2 = fma(v3.yx, vec2<f32>(0.00223214295692741871f), r1.yy);
  r1 = vec4<f32>(r1.xy, v_2.xy);
  let v_3 = fma(v3.xy, vec2<f32>(0.001953125f), (-(r1.yyyy)).xy);
  r2 = vec4<f32>(v_3.xy, r2.zw);
  r2 = textureSample(t2, s2, r2.xyxx.xy);
  let v_4 = fma(r2.wy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r3 = textureSample(t2, s2, r1.zwzz.xy);
  let v_5 = fma(r3.yw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_6 = r1;
  r1 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  let v_7 = -(r2.xxyx);
  let v_8 = (v_7.yz + (-(r1.yyzy)).yz);
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = (r1.yz * cb4_4.tint_symbol_3[7u].ww);
  let v_11 = r1;
  r1 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  let v_12 = (r1.yz * cb4_4.tint_symbol_3[6u].xx);
  r2 = vec4<f32>(v_12.xy, r2.zw);
  r2.z = 1.0f;
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_13 = fma((-(r2.xyzx)).xyz, r1.yyy, vec3<f32>(0.0f, 0.0f, 1.0f));
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = (r1.yyy * r2.xyz);
  r1 = vec4<f32>(r1.x, v_14.xyz);
  let v_15 = fma(r3.xyz, vec3<f32>(0.8333333134651184082f), r1.yzw);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = (r0.www * r0.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = fma(r0.xyz, r0.www, cb3_3.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(v_17.xy, r0.z, v_17.z);
  r2.w = dot(r3.xyz, r2.xyz);
  r2.w = (r2.w + r2.w);
  let v_18 = -(r2.wwww);
  let v_19 = fma(r2.xyz, v_18.xyz, r3.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  let v_20 = (r2.xy * vec2<f32>(0.25f, 0.5f));
  r2 = vec4<f32>(v_20.xy, r2.zw);
  r2.w = (abs(r2.zzzz).w + 1.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_21 = (r2.xy / r2.ww);
  r2 = vec4<f32>(v_21.xy, r2.zw);
  let v_22 = ((-(r2.xxyx)).yz + vec2<f32>(0.25f, 0.5f));
  let v_23 = r4;
  r4 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  r2.x = ((-(r4.yyyy)).x + 1.0f);
  let v_24 = bitcast<u32>(r2.z);
  let v_25 = r2.x;
  r4.x = select(r4.y, v_25, (v_24 != 0u));
  r2 = textureSample(t1, s1, r4.xzxx.xy);
  let v_26 = (v3.xy + (-(cb11_11.tint_symbol_4[1u].xyxx)).xy);
  r4 = vec4<f32>(v_26.xy, r4.zw);
  r4.x = (r4.x * cb11_11.tint_symbol_4[1u].z);
  r4.z = fma((-(r4.yyyy)).z, cb11_11.tint_symbol_4[1u].w, 1.0f);
  r4 = textureSample(t3, s3, r4.xzxx.xy);
  let v_27 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  let v_28 = fma((-(r4.xyzx)).xyz, cb4_4.tint_symbol_3[3u].xyz, r2.xyz);
  r2 = vec4<f32>(v_28.xyz, r2.w);
  let v_29 = (r4.xyz * cb4_4.tint_symbol_3[3u].xyz);
  r4 = vec4<f32>(v_29.xyz, r4.w);
  r2.w = dot((-(r3.xyzx)).xyz, r1.yzw);
  r3.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = fma(r3.w, 0.30000001192092895508f, r2.w);
  r5 = textureSample(t6, s6, r2.wwww.xy);
  let v_30 = fma(r5.xxx, r2.xyz, r4.xyz);
  r2 = vec4<f32>(v_30.xyz, r2.w);
  r2.w = dot(r0.xyw, r0.xyw);
  r2.w = inverseSqrt(r2.w);
  let v_31 = (r0.xyw * r2.www);
  r0 = vec4<f32>(v_31.xy, r0.z, v_31.z);
  let v_32 = dot((-(r0.xywx)).xyz, r1.yzw);
  r0.x = clamp(vec4<f32>(v_32, v_32, v_32, v_32).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb4_4.tint_symbol_3[6u].w);
  r0.x = exp2(r0.x);
  r0.x = (r0.x * cb4_4.tint_symbol_3[6u].z);
  let v_33 = fma(cb3_3.tint_symbol_2[1u].xyz, r0.xxx, r2.xyz);
  r0 = vec4<f32>(v_33.xy, r0.z, v_33.z);
  let v_34 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_34.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r0.z = (r0.z * r1.x);
  r1.x = (r0.z * cb3_3.tint_symbol_2[52u].z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.zzzz).z)));
  r1.z = (r1.x * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.x = (r1.z / r1.x);
  let v_35 = bitcast<u32>(r0.z);
  r0.z = select(1.0f, r1.x, (v_35 != 0u));
  r1.x = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r0.z = (r0.z * r1.x);
  r0.z = min(r0.z, 1.0f);
  r0.z = (r0.z * 1.44269502162933349609f);
  r0.z = exp2(r0.z);
  r0.z = min(r0.z, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r1.x = fma((-(r0.zzzz)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r0.z = (r0.z * cb3_3.tint_symbol_2[52u].y);
  let v_36 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.z = clamp(vec4<f32>(v_36, v_36, v_36, v_36).z, 0.0f, 1.0f);
  let v_37 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r1.w = clamp(vec4<f32>(v_37, v_37, v_37, v_37).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
  r1.w = exp2(r1.w);
  r1.z = log2(r1.z);
  r1.z = (r1.z * cb3_3.tint_symbol_2[53u].w);
  r1.z = exp2(r1.z);
  let v_38 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_38.xyz, r2.w);
  let v_39 = fma(r1.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_39.xyz, r2.w);
  let v_40 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_40.xyz, r3.w);
  let v_41 = fma(r1.zzz, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_41.xyz, r2.w);
  let v_42 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_43 = (r2.xyz + v_42.xyz);
  r2 = vec4<f32>(v_43.xyz, r2.w);
  let v_44 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.z = (r1.y * v_44.z);
  let v_45 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r1.y = (r1.y + v_45.y);
  r1.y = max(r1.y, 0.0f);
  let v_46 = (r1.xy * cb3_3.tint_symbol_2[51u].yx);
  r1 = vec4<f32>(v_46.xy, r1.zw);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r0.z = clamp(fma(r1.xxxx, r1.yyyy, r0.zzzz).z, 0.0f, 1.0f);
  r1.y = (r1.z * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_47 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r1 = vec4<f32>(r1.x, v_47.xyz);
  r2.x = ((-(r1.yyyy)).x + cb3_3.tint_symbol_2[55u].w);
  r2.y = ((-(r1.zzzz)).y + cb3_3.tint_symbol_2[56u].w);
  r2.z = ((-(r1.wwww)).z + cb3_3.tint_symbol_2[57u].w);
  let v_48 = fma(r1.xxx, r2.xyz, r1.yzw);
  r1 = vec4<f32>(v_48.xyz, r1.w);
  let v_49 = ((-(r0.xywx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_49.xyz, r1.w);
  let v_50 = fma(r0.zzz, r1.xyz, r0.xyw);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  let v_51 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_51.xyz, o0.w);
  o0.w = 0.0f;
}

fn v_1(v_52 : bool) {
  if (v_52) {
    discard;
    return;
  }
}

@fragment
fn main(@location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v3);
  return o0;
}
