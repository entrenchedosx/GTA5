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

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>) {
  o0 = v1;
  o1 = vec4<f32>(v2.xy, o1.zw);
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o1.z = r0.w;
  o1.w = 0.0f;
  let v_1 = (v0 + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r2.x = sqrt(r1.w);
  r1.w = inverseSqrt(r1.w);
  let v_2 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_2.xy, r1.z, v_2.z);
  let v_3 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r2.y = (r2.x + v_3.y);
  r2.y = max(r2.y, 0.0f);
  r2.x = (r2.y / r2.x);
  r1.z = (r1.z * r2.x);
  r2.x = (r1.z * cb3_3.tint_symbol_2[52u].z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.zzzz).z)));
  r2.z = (r2.x * -1.44269502162933349609f);
  r2.z = exp2(r2.z);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.x = (r2.z / r2.x);
  let v_4 = bitcast<u32>(r1.z);
  r1.z = select(1.0f, r2.x, (v_4 != 0u));
  r2.x = (r2.y * cb3_3.tint_symbol_2[51u].w);
  r1.z = (r1.z * r2.x);
  r1.z = min(r1.z, 1.0f);
  r1.z = (r1.z * 1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = min(r1.z, 1.0f);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r2.x = fma((-(r1.zzzz)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.z = (r1.z * cb3_3.tint_symbol_2[52u].y);
  let v_5 = dot(r1.xyw, cb3_3.tint_symbol_2[53u].xyz);
  r2.z = clamp(vec4<f32>(v_5, v_5, v_5, v_5).z, 0.0f, 1.0f);
  let v_6 = dot(r1.xyw, cb3_3.tint_symbol_2[54u].xyz);
  r1.x = clamp(vec4<f32>(v_6, v_6, v_6, v_6).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
  r1.x = exp2(r1.x);
  r1.y = log2(r2.z);
  r1.y = (r1.y * cb3_3.tint_symbol_2[53u].w);
  r1.y = exp2(r1.y);
  let v_7 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  let v_8 = fma(r1.xxx, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = fma(r1.yyy, r4.xyz, r3.xyz);
  r1 = vec4<f32>(v_10.xy, r1.z, v_10.z);
  let v_11 = -(cb3_3.tint_symbol_2[57u].xyxz);
  let v_12 = (r1.xyw + v_11.xyw);
  r1 = vec4<f32>(v_12.xy, r1.z, v_12.z);
  let v_13 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r2.z = (r2.y * v_13.z);
  let v_14 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.y = (r2.y + v_14.y);
  r2.y = max(r2.y, 0.0f);
  let v_15 = (r2.xy * cb3_3.tint_symbol_2[51u].yx);
  r2 = vec4<f32>(v_15.xy, r2.zw);
  r2.y = (r2.y * 1.44269502162933349609f);
  r2.y = exp2(r2.y);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  o2.w = clamp(fma(r2.xxxx, r2.yyyy, r1.zzzz).w, 0.0f, 1.0f);
  r1.z = (r2.z * 1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  let v_16 = fma(r1.zzz, r1.xyw, cb3_3.tint_symbol_2[57u].xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r3.x = ((-(r1.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r1.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r1.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_17 = fma(r2.xxx, r3.xyz, r1.xyz);
  o2 = vec4<f32>(v_17.xyz, o2.w);
  o3 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_18 = &(x0[0u]);
  *(v_18) = vec4<f32>((*(v_18)).x, vec3<f32>());
  o4[0u] = x0[0u].x;
  o4[1u] = x0[0u].y;
  o4[2u] = x0[0u].z;
  o4[3u] = x0[0u].w;
  v = vec4<f32>(o4[0u], o4[1u], o4[2u], o4[3u]);
}

struct tint_symbol_4 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @builtin(position)
  o3 : vec4<f32>,
  @builtin(clip_distances)
  o4 : array<f32, 4u>,
  @location(15u)
  tint_symbol_3 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2);
  return tint_symbol_4(o0, o1, o2, o3, o4, v);
}
