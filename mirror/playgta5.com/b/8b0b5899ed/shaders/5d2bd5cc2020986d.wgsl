enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb27_struct {
  tint_symbol_3 : array<vec4<f32>, 27u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb27_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : vec4<f32>;

var<private> o9 : vec4<f32>;

var<private> o10 : vec4<f32>;

var<private> o11 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec3<f32>, v3 : vec2<f32>, v4 : vec4<f32>) {
  let v_1 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = fma(v0.www, cb1_1.tint_symbol[3u].xyz, r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r1.w = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_5 = (r0.www * r0.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = (r0.xyz / r1.www);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  o0 = r1;
  let v_7 = (v2.yyy * cb1_1.tint_symbol[1u].xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  let v_8 = fma(v2.xxx, cb1_1.tint_symbol[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = fma(v2.zzz, cb1_1.tint_symbol[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_10 = (r0.www * r3.xyz);
  o1 = vec4<f32>(v_10.xyz, o1.w);
  o1.w = v1.w;
  let v_11 = (v4.yyy * cb1_1.tint_symbol[1u].xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = fma(v4.xxx, cb1_1.tint_symbol[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = fma(v4.zzz, cb1_1.tint_symbol[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_14 = (r0.www * r3.xyz);
  o2 = vec4<f32>(v_14.xyz, o2.w);
  o2.w = v1.y;
  r3 = vec4<f32>(((v2.yzx * v4.zxy)).xyz, r3.w);
  let v_15 = fma(v4.yzx, v2.zxy, (-(r3.xyzx)).xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = (r3.xyz * v4.www);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = (r3.yyy * cb1_1.tint_symbol[1u].xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = fma(r3.xxx, cb1_1.tint_symbol[0u].xyz, r4.xyz);
  r3 = vec4<f32>(v_18.xy, r3.z, v_18.z);
  let v_19 = fma(r3.zzz, cb1_1.tint_symbol[2u].xyz, r3.xyw);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_20 = (r0.www * r3.xyz);
  o3 = vec4<f32>(v_20.xyz, o3.w);
  o3.w = v1.z;
  let v_21 = fma(v3, cb12_12.tint_symbol_3[25u].zw, cb12_12.tint_symbol_3[24u].xy);
  r3 = vec4<f32>(v_21.xy, r3.zw);
  let v_22 = (r3.xy + cb12_12.tint_symbol_3[18u].zw);
  r3 = vec4<f32>(v_22.xy, r3.zw);
  let v_23 = clamp(((cb12_12.tint_symbol_3[17u].xxxy + vec4<f32>(0.0f, 0.0f, -1000.0f, -1000.0f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(r3.xy, v_23.xy);
  o4 = ((r3.zw + r3.xy)).xyxy;
  let v_24 = fma(v3, cb12_12.tint_symbol_3[26u].xy, cb12_12.tint_symbol_3[24u].zw);
  r3 = vec4<f32>(v_24.xy, r3.zw);
  let v_25 = (r3.xy + cb12_12.tint_symbol_3[18u].zw);
  o5 = vec4<f32>(v_25.xy, o5.zw);
  let v_26 = fma(v3, cb12_12.tint_symbol_3[26u].zw, cb12_12.tint_symbol_3[25u].xy);
  r3 = vec4<f32>(v_26.xy, r3.zw);
  let v_27 = (r3.xy + cb12_12.tint_symbol_3[18u].zw);
  o5 = vec4<f32>(o5.xy, v_27.xy);
  r3 = (r0.yyyy * cb12_12.tint_symbol_3[20u]);
  r3 = fma(r0.xxxx, cb12_12.tint_symbol_3[19u], r3);
  r3 = fma(r0.zzzz, cb12_12.tint_symbol_3[21u], r3);
  r3 = (r3 + cb12_12.tint_symbol_3[22u]);
  let v_28 = (r3.xwy * vec3<f32>(0.5f));
  r0 = vec4<f32>(v_28.xy, r0.z, v_28.z);
  let v_29 = -(r0.wwww);
  o6.y = fma(r3.w, 0.5f, v_29.y);
  o6.x = (r0.y + r0.x);
  let v_30 = r3;
  o6 = vec4<f32>(o6.xy, v_30.ww);
  r0.x = dot((-(r1.xyzx)).xyz, cb12_12.tint_symbol_3[3u].xyz);
  let v_31 = -(r0.xxxx);
  let v_32 = -(r1.xyxz);
  let v_33 = fma(v_31.xyw, cb12_12.tint_symbol_3[3u].xyz, v_32.xyw);
  r0 = vec4<f32>(v_33.xy, r0.z, v_33.z);
  r1.x = dot(r1.xyz, cb12_12.tint_symbol_3[3u].xyz);
  r1.y = dot(r0.xyw, r0.xyw);
  r1.y = inverseSqrt(r1.y);
  let v_34 = (r0.xyw * r1.yyy);
  o7 = vec4<f32>(v_34.xyz, o7.w);
  r0.x = clamp(r1.xxxx.x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol_3[10u].x);
  o7.w = exp2(r0.x);
  r0.x = dot(r1.xx, cb12_12.tint_symbol_3[9u].xx);
  r0.y = fma(r1.x, r1.x, 1.0f);
  r0.w = (cb12_12.tint_symbol_3[9u].y + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.w);
  r0.x = log2(abs(r0.xxxx).x);
  r0.x = (r0.x * 1.5f);
  r0.x = exp2(r0.x);
  r0.x = (r0.y / r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol_3[9u].z);
  let v_35 = (r0.xxx * cb12_12.tint_symbol_3[4u].xyz);
  r0 = vec4<f32>(v_35.xy, r0.z, v_35.z);
  o8 = ((r0.xyw * cb12_12.tint_symbol_3[9u].www)).xyzx;
  let v_36 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r0.x = clamp(vec4<f32>(v_36, v_36, v_36, v_36).x, 0.0f, 1.0f);
  let v_37 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.y = clamp(vec4<f32>(v_37, v_37, v_37, v_37).y, 0.0f, 1.0f);
  r0.y = log2(r0.y);
  r0.y = (r0.y * cb3_3.tint_symbol_2[54u].w);
  r0.y = exp2(r0.y);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_2[53u].w);
  r0.x = exp2(r0.x);
  let v_38 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r1 = vec4<f32>(v_38.xyz, r1.w);
  let v_39 = fma(r0.yyy, r1.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r1 = vec4<f32>(v_39.xyz, r1.w);
  let v_40 = ((-(r1.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  let v_41 = fma(r0.xxx, r2.xyz, r1.xyz);
  r0 = vec4<f32>(v_41.xy, r0.z, v_41.z);
  let v_42 = -(cb3_3.tint_symbol_2[57u].xyxz);
  let v_43 = (r0.xyw + v_42.xyw);
  r0 = vec4<f32>(v_43.xy, r0.z, v_43.z);
  let v_44 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.x = (r1.w + v_44.x);
  r1.x = max(r1.x, 0.0f);
  let v_45 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.x * v_45.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_46 = fma(r1.yyy, r0.xyw, cb3_3.tint_symbol_2[57u].xyz);
  r0 = vec4<f32>(v_46.xy, r0.z, v_46.z);
  r1.y = (r1.x / r1.w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].w);
  r0.z = (r0.z * r1.y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.zzzz).y)));
  r0.z = (r0.z * cb3_3.tint_symbol_2[52u].z);
  r1.z = (r0.z * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r0.z = (r1.z / r0.z);
  let v_47 = bitcast<u32>(r1.y);
  r0.z = select(1.0f, r0.z, (v_47 != 0u));
  r0.z = (r0.z * r1.x);
  r0.z = min(r0.z, 1.0f);
  r0.z = (r0.z * 1.44269502162933349609f);
  r0.z = exp2(r0.z);
  r0.z = min(r0.z, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = clamp(((r0.zzzz * cb3_3.tint_symbol_2[52u].yyyy)).z, 0.0f, 1.0f);
  r1.x = ((-(v1.xxxx)).x + 1.0f);
  r0.z = max(r0.z, r1.x);
  let v_48 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_48.xy, r0.z, v_48.z);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r1.y = (r1.x * cb3_3.tint_symbol_2[52u].w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].w, 1.0f);
  r2.x = (r1.y * cb3_3.tint_symbol_2[55u].w);
  r2.y = (r1.y * cb3_3.tint_symbol_2[56u].w);
  r2.z = (r1.y * cb3_3.tint_symbol_2[57u].w);
  let v_49 = fma(r0.xyw, r1.xxx, r2.xyz);
  o9 = vec4<f32>(v_49.xyz, o9.w);
  o9.w = (r0.z * r1.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r3.z < 0.0f)));
  r0.y = (0.10000000149011611938f / r3.w);
  let v_50 = bitcast<u32>(r0.x);
  let v_51 = r0.y;
  r0.x = select(r3.z, v_51, (v_50 != 0u));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  r0.z = (r3.w + -0.10000000149011611938f);
  let v_52 = bitcast<u32>(r0.y);
  let v_53 = r0.z;
  r0.y = select(r3.z, v_53, (v_52 != 0u));
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_3[23u].w))));
  let v_54 = bitcast<u32>(r0.z);
  let v_55 = r0.x;
  r0.x = select(r0.y, v_55, (v_54 != 0u));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.w)));
  let v_56 = bitcast<u32>(r0.y);
  let v_57 = r0.x;
  o10.z = select(r3.z, v_57, (v_56 != 0u));
  let v_58 = r3;
  o10 = vec4<f32>(v_58.xy, o10.z, v_58.w);
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_59 = &(x0[0u]);
  *(v_59) = vec4<f32>((*(v_59)).x, vec3<f32>());
  o11[0u] = x0[0u].x;
  o11[1u] = x0[0u].y;
  o11[2u] = x0[0u].z;
  o11[3u] = x0[0u].w;
  v = vec4<f32>(o11[0u], o11[1u], o11[2u], o11[3u]);
}

struct tint_symbol_5 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @location(4u)
  o4 : vec4<f32>,
  @location(5u)
  o5 : vec4<f32>,
  @location(6u)
  o6 : vec4<f32>,
  @location(7u)
  o7 : vec4<f32>,
  @location(8u)
  o8 : vec4<f32>,
  @location(9u)
  o9 : vec4<f32>,
  @builtin(position)
  o10 : vec4<f32>,
  @builtin(clip_distances)
  o11 : array<f32, 4u>,
  @location(15u)
  tint_symbol_4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec3<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, v);
}
