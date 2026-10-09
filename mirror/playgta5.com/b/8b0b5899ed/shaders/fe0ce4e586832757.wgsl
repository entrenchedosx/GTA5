enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec3<f32>, v3 : vec2<f32>) {
  o0 = vec4<f32>(v3.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, v1.xy);
  let v_1 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  o1 = r0.xyz.xyzx;
  let v_5 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_6 = (r0.xyz + v_5.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (v2.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = fma(v2.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(v2.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = (r1.xyz + vec3<f32>(-0.0f, -0.0f, -1.0f));
  r1 = vec4<f32>(v_10.xyz, r1.w);
  o2 = fma(cb12_12.tint_symbol_3[1u].xxx, r1.xyz, vec3<f32>(-0.0f, -0.0f, 1.0f)).xyzx;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_11 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_11.xy, r0.z, v_11.z);
  let v_12 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_12.y);
  r1.y = max(r1.y, -0.0f);
  r1.x = (r1.y / r1.x);
  r0.z = (r0.z * r1.x);
  r1.x = (r0.z * cb3_3.tint_symbol_2[52u].z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.zzzz).z)));
  r1.z = (r1.x * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.x = (r1.z / r1.x);
  let v_13 = bitcast<u32>(r0.z);
  r0.z = select(1.0f, r1.x, (v_13 != 0u));
  r1.x = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r0.z = (r0.z * r1.x);
  r0.z = min(r0.z, 1.0f);
  r0.z = (r0.z * 1.44269502162933349609f);
  r0.z = exp2(r0.z);
  r0.z = min(r0.z, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r1.x = fma((-(r0.zzzz)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r0.z = (r0.z * cb3_3.tint_symbol_2[52u].y);
  let v_14 = dot(r0.xyw, cb3_3.tint_symbol_2[53u].xyz);
  r1.z = clamp(vec4<f32>(v_14, v_14, v_14, v_14).z, -0.0f, 1.0f);
  let v_15 = dot(r0.xyw, cb3_3.tint_symbol_2[54u].xyz);
  r0.x = clamp(vec4<f32>(v_15, v_15, v_15, v_15).x, -0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
  r0.x = exp2(r0.x);
  r0.y = log2(r1.z);
  r0.y = (r0.y * cb3_3.tint_symbol_2[53u].w);
  r0.y = exp2(r0.y);
  let v_16 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  let v_17 = fma(r0.xxx, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = fma(r0.yyy, r3.xyz, r2.xyz);
  r0 = vec4<f32>(v_19.xy, r0.z, v_19.z);
  let v_20 = -(cb3_3.tint_symbol_2[57u].xyxz);
  let v_21 = (r0.xyw + v_20.xyw);
  r0 = vec4<f32>(v_21.xy, r0.z, v_21.z);
  let v_22 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.z = (r1.y * v_22.z);
  let v_23 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r1.y = (r1.y + v_23.y);
  r1.y = max(r1.y, -0.0f);
  let v_24 = (r1.xy * cb3_3.tint_symbol_2[51u].yx);
  r1 = vec4<f32>(v_24.xy, r1.zw);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  o3.w = clamp(fma(r1.xxxx, r1.yyyy, r0.zzzz).w, -0.0f, 1.0f);
  r0.z = (r1.z * 1.44269502162933349609f);
  r0.z = exp2(r0.z);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_25 = fma(r0.zzz, r0.xyw, cb3_3.tint_symbol_2[57u].xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  r2.x = ((-(r0.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r2.y = ((-(r0.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r2.z = ((-(r0.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_26 = fma(r1.xxx, r2.xyz, r0.xyz);
  o3 = vec4<f32>(v_26.xyz, o3.w);
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o4 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_27 = &(x0[0u]);
  *(v_27) = vec4<f32>((*(v_27)).x, vec3<f32>());
  o5[0u] = x0[0u].x;
  o5[1u] = x0[0u].y;
  o5[2u] = x0[0u].z;
  o5[3u] = x0[0u].w;
  v = vec4<f32>(o5[0u], o5[1u], o5[2u], o5[3u]);
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
  @builtin(position)
  o4 : vec4<f32>,
  @builtin(clip_distances)
  o5 : array<f32, 4u>,
  @location(15u)
  tint_symbol_4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec3<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, v);
}
