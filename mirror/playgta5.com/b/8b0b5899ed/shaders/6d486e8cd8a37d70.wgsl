enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb53_struct {
  tint_symbol_2 : array<vec4<f32>, 53u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb53_struct;

struct cb13_struct {
  tint_symbol_3 : array<vec4<f32>, 13u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb13_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>) {
  let v_1 = (v2.xy + cb11_11.tint_symbol_3[9u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = (r0.xy * vec2<f32>(6.28318500518798828125f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = sin(r0.xyxx.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = (cb11_11.tint_symbol_3[0u].zz * cb11_11.tint_symbol_3[9u].zw);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = (r0.zw * r0.xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = sin(r0.xyxx.xy);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0.z = dot(r0.xy, r0.xy);
  let v_7 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = (r1.xyz + cb1_1.tint_symbol[3u].xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  r2.z = fma(v3.y, r0.z, r1.z);
  let v_11 = fma(v3.yy, r0.xy, r1.xy);
  r2 = vec4<f32>(v_11.xy, r2.zw);
  let v_12 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_13 = (r2.xyz + v_12.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = -(cb1_1.tint_symbol[14u].xyzx);
  r0.x = dot(r0.xyz, v_14.xyz);
  r0.x = max(r0.x, 0.00999999977648258209f);
  r0.x = (cb11_11.tint_symbol_3[8u].x / r0.x);
  r0.y = max(r0.x, 0.00000000999999993923f);
  let v_15 = (cb11_11.tint_symbol_3[0u].xy * cb11_11.tint_symbol_3[8u].yz);
  r0 = vec4<f32>(r0.xy, v_15.xy);
  let v_16 = abs(v3.xxxx);
  r0.z = (r0.z * v_16.z);
  r0.w = max(r0.w, 0.00000000999999993923f);
  r0.x = (r0.x * r0.z);
  r0.z = clamp(r0.xxxx.z, 0.0f, 1.0f);
  r0.z = fma(r0.z, 0.5f, r0.x);
  r0.x = min(r0.x, 1.0f);
  r0.x = (r0.x * r0.x);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r0.w);
  r0.x = exp2(r0.x);
  r0.y = (r0.z / r0.y);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < v3.x)));
  r1.x = select(-1.0f, 1.0f, (bitcast<u32>(r0.w) != 0u));
  o1.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  r0.y = (r0.y * r1.x);
  o5.x = (r0.z * r1.x);
  o5.y = r0.z;
  let v_17 = ((-(r2.zxyz)).xyz + cb1_1.tint_symbol[15u].zxy);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = (v1.yyy * cb1_1.tint_symbol[1u].yzx);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = fma(v1.xxx, cb1_1.tint_symbol[0u].yzx, r3.xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = fma(v1.zzz, cb1_1.tint_symbol[2u].yzx, r3.xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  let v_21 = (r1.xyz * r3.xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = -(r4.xyzx);
  let v_23 = fma(r1.zxy, r3.yzx, v_22.xyz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_24 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_24.xyz, r1.w);
  let v_25 = fma(r0.yyy, r1.xyz, r2.xyz);
  r0 = vec4<f32>(r0.x, v_25.xyz);
  let v_26 = (r0.yzw + v_12.xyz);
  r2 = vec4<f32>(v_26.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  let v_27 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r2.x = (r1.w + v_27.x);
  r2.x = max(r2.x, 0.0f);
  r1.w = (r2.x / r1.w);
  r1.w = (r1.w * r2.z);
  r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
  r2.z = (r2.y * -1.44269502162933349609f);
  r2.z = exp2(r2.z);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.y = (r2.z / r2.y);
  let v_28 = bitcast<u32>(r1.w);
  r1.w = select(1.0f, r2.y, (v_28 != 0u));
  r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
  let v_29 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r2.x + v_29.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.w = (r1.w * r2.y);
  r1.w = min(r1.w, 1.0f);
  r1.w = (r1.w * 1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = min(r1.w, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r2.y = fma((-(r1.wwww)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.w = (r1.w * cb3_3.tint_symbol_2[52u].y);
  r2.y = (r2.y * cb3_3.tint_symbol_2[51u].y);
  r1.w = clamp(fma(r2.yyyy, r2.xxxx, r1.wwww).w, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r0.x = (r0.x * r1.w);
  o0.w = (r0.x * cb11_11.tint_symbol_3[8u].w);
  let v_30 = ((-(cb11_11.tint_symbol_3[1u].xyzx)).xyz + cb11_11.tint_symbol_3[2u].xyz);
  r2 = vec4<f32>(v_30.xyz, r2.w);
  let v_31 = fma(v2.www, r2.xyz, cb11_11.tint_symbol_3[1u].xyz);
  r2 = vec4<f32>(v_31.xyz, r2.w);
  let v_32 = ((-(r2.xyzx)).xyz + cb11_11.tint_symbol_3[11u].xyz);
  r4 = vec4<f32>(v_32.xyz, r4.w);
  let v_33 = fma(cb11_11.tint_symbol_3[11u].www, r4.xyz, r2.xyz);
  o0 = vec4<f32>(v_33.xyz, o0.w);
  let v_34 = ((-(cb11_11.tint_symbol_3[3u].xyzx)).xyz + cb11_11.tint_symbol_3[12u].xyz);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  let v_35 = fma(cb11_11.tint_symbol_3[12u].www, r2.xyz, cb11_11.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = r2;
  o1 = vec4<f32>(v_36.xy, o1.zw);
  o4.w = r2.z;
  o1.z = v2.x;
  o2 = r1.xyz.xyzx;
  let v_37 = (r3.xyz * r1.zxy);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = -(r2.xyzx);
  o3 = fma(r1.yzx, r3.yzx, v_38.xyz).xyzx;
  let v_39 = r0;
  o4 = vec4<f32>(v_39.yzw, o4.w);
  r1 = (r0.zzzz * cb11_11.tint_symbol_3[5u]);
  r1 = fma(r0.yyyy, cb11_11.tint_symbol_3[4u], r1);
  r0 = fma(r0.wwww, cb11_11.tint_symbol_3[6u], r1);
  r0 = (r0 + cb11_11.tint_symbol_3[7u]);
  o6 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_40 = &(x0[0u]);
  *(v_40) = vec4<f32>((*(v_40)).x, vec3<f32>());
  o7[0u] = x0[0u].x;
  o7[1u] = x0[0u].y;
  o7[2u] = x0[0u].z;
  o7[3u] = x0[0u].w;
  v = vec4<f32>(o7[0u], o7[1u], o7[2u], o7[3u]);
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
  @builtin(position)
  o6 : vec4<f32>,
  @builtin(clip_distances)
  o7 : array<f32, 4u>,
  @location(15u)
  tint_symbol_4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, o6, o7, v);
}
