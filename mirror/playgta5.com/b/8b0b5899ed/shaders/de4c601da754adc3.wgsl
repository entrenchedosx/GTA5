diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

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

struct cb14_struct {
  tint_symbol_3 : array<vec4<f32>, 14u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb14_struct;

var<private> v7 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  x0[0u].x = v7[0u];
  x0[0u].y = v7[1u];
  x0[0u].z = v7[2u];
  x0[0u].w = v7[3u];
  r0.x = (v0.w * cb2_2.tint_symbol_1[15u].x);
  r0.y = clamp(((v5.xy.yyyy * vec4<f32>(0.6666666865348815918f))).y, 0.0f, 1.0f);
  r0.z = clamp(((-(abs(v5.xy.xxxx)) + v5.xy.yyyy)).z, 0.0f, 1.0f);
  r0.z = (r0.z + -1.0f);
  r0.y = fma(r0.y, r0.z, 1.0f);
  r0.x = (r0.y * r0.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x < cb11_11.tint_symbol_3[13u].x)));
  v((bitcast<u32>(r0.y) != 0u));
  r0.y = clamp(fma(v1.wwww, vec4<f32>(2.0f), vec4<f32>(-1.0f)).y, 0.0f, 1.0f);
  r0.z = dot(v2.xyz, v2.xyz);
  r0.w = dot(v3.xyz, v3.xyz);
  r1.x = (r0.w * r0.z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00000000999999993923f < r1.x)));
  r0.z = inverseSqrt(r0.z);
  let v_1 = (r0.zzz * v2.xyz);
  r1 = vec4<f32>(r1.x, v_1.xyz);
  r0.z = inverseSqrt(r0.w);
  let v_2 = (r0.zzz * v3.xyz);
  r2 = vec4<f32>(v_2.xyz, r2.w);
  r0.z = fma((-(r0.yyyy)).z, r0.y, 1.0f);
  r0.z = sqrt(r0.z);
  let v_3 = (r0.zzz * r2.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  let v_4 = fma(r1.yzw, r0.yyy, r2.xyz);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  r1.y = dot(r0.yzw, r0.yzw);
  r1.y = inverseSqrt(r1.y);
  let v_5 = (r0.yzw * r1.yyy);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = bitcast<vec3<u32>>(r1.xxx);
  let v_7 = select(vec3<f32>(0.0f, 0.0f, 1.0f), r0.yzw, (v_6 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_7.xyz);
  let v_8 = (v1.xy * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r2 = vec4<f32>(((v0.xyz * v0.xyz)).xyz, r2.w);
  let v_9 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  let v_10 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>() < cb11_11.tint_symbol_3[10u].xy)));
  r1 = vec4<f32>(r1.xy, v_10.xy);
  r2.w = (r0.w + cb3_3.tint_symbol_2[43u].w);
  r2.w = (r2.w * cb3_3.tint_symbol_2[44u].w);
  r2.w = max(r2.w, 0.0f);
  r3.x = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.w)));
  let v_11 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r1.wz)));
  let v_12 = r3;
  r3 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  let v_13 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.zw) & bitcast<vec2<u32>>(r3.yz)));
  let v_14 = r3;
  r3 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  let v_15 = fma(cb3_3.tint_symbol_2[47u].xyz, r2.www, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  let v_16 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.yyy) & bitcast<vec3<u32>>(r4.xyz)));
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = fma(cb3_3.tint_symbol_2[45u].xyz, r2.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  let v_18 = (r5.xyz + r6.xyz);
  r7 = vec4<f32>(v_18.xyz, r7.w);
  let v_19 = bitcast<vec3<u32>>(r3.zzz);
  let v_20 = r7.xyz;
  let v_21 = select(r5.xyz, v_20, (v_19 != vec3<u32>()));
  r3 = vec4<f32>(r3.x, v_21.xyz);
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.w)));
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_22 = fma(r4.xyz, r1.www, r3.yzw);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = fma(r6.xyz, cb2_2.tint_symbol_1[16u].zzz, r4.xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = bitcast<vec3<u32>>(r1.zzz);
  let v_25 = r4.xyz;
  let v_26 = select(r3.yzw, v_25, (v_24 != vec3<u32>()));
  r3 = vec4<f32>(r3.x, v_26.xyz);
  let v_27 = (r1.yyy * r3.yzw);
  r1 = vec4<f32>(r1.x, v_27.xyz);
  let v_28 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r1.yzw) & bitcast<vec3<u32>>(r3.xxx)));
  r1 = vec4<f32>(r1.x, v_28.xyz);
  let v_29 = fma(cb3_3.tint_symbol_2[43u].xyz, r2.www, cb3_3.tint_symbol_2[44u].xyz);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  r4.x = cb3_3.tint_symbol_2[46u].w;
  r4.y = cb3_3.tint_symbol_2[47u].w;
  r4.z = cb3_3.tint_symbol_2[48u].w;
  let v_30 = dot(r4.xyz, r0.yzw);
  r0.y = clamp(vec4<f32>(v_30, v_30, v_30, v_30).y, 0.0f, 1.0f);
  let v_31 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.yyy, r3.xyz);
  r0 = vec4<f32>(r0.x, v_31.xyz);
  let v_32 = fma(r0.yzw, r1.xxx, r1.yzw);
  r0 = vec4<f32>(r0.x, v_32.xyz);
  r1 = vec4<f32>(((v0.xyz * v4.www)).xyz, r1.w);
  let v_33 = fma(r0.yzw, r2.xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_33.xyz);
  let v_34 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r1 = vec4<f32>(v_34.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r2.x = sqrt(r1.w);
  let v_35 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r2.y = (r2.x + v_35.y);
  r2.y = max(r2.y, 0.0f);
  r2.x = (r2.y / r2.x);
  r2.x = (r1.z * r2.x);
  r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
  r2.w = (r2.z * -1.44269502162933349609f);
  r2.w = exp2(r2.w);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.z = (r2.w / r2.z);
  let v_36 = bitcast<u32>(r2.x);
  r2.x = select(1.0f, r2.z, (v_36 != 0u));
  r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
  r2.x = (r2.x * r2.z);
  r2.x = min(r2.x, 1.0f);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = min(r2.x, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
  r1.w = inverseSqrt(r1.w);
  let v_37 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_37.xyz, r1.w);
  let v_38 = dot(r1.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r1.w = clamp(vec4<f32>(v_38, v_38, v_38, v_38).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
  r1.w = exp2(r1.w);
  let v_39 = dot(r1.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.x = clamp(vec4<f32>(v_39, v_39, v_39, v_39).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r1.x = (r1.x * cb3_3.tint_symbol_2[53u].w);
  r1.x = exp2(r1.x);
  r1.y = fma((-(r2.xxxx)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
  let v_40 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r1.z = (r2.y + v_40.z);
  r1.z = max(r1.z, 0.0f);
  let v_41 = (r1.yz * cb3_3.tint_symbol_2[51u].yx);
  let v_42 = r1;
  r1 = vec4<f32>(v_42.x, v_41.xy, v_42.w);
  r1.z = (r1.z * 1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = clamp(fma(r1.yyyy, r1.zzzz, r2.zzzz).z, 0.0f, 1.0f);
  let v_43 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r2.x = (r2.y * v_43.x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  let v_44 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(r2.x, v_44.xyz);
  let v_45 = fma(r1.www, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(r2.x, v_45.xyz);
  let v_46 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_46.xyz, r3.w);
  let v_47 = fma(r1.xxx, r3.xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_47.xyz);
  let v_48 = -(cb3_3.tint_symbol_2[57u].xxyz);
  let v_49 = (r2.yzw + v_48.yzw);
  r2 = vec4<f32>(r2.x, v_49.xyz);
  let v_50 = fma(r2.xxx, r2.yzw, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_50.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_51 = fma(r1.yyy, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_51.xy, r1.z, v_51.z);
  let v_52 = ((-(r0.yzyw)).xyw + r1.xyw);
  r1 = vec4<f32>(v_52.xy, r1.z, v_52.z);
  let v_53 = fma(r1.zzz, r1.xyw, r0.yzw);
  r0 = vec4<f32>(r0.x, v_53.xyz);
  let v_54 = (r0.yzw * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_54.xyz, o0.w);
  o0.w = r0.x;
}

fn v(v_55 : bool) {
  if (v_55) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5);
  return o0;
}
