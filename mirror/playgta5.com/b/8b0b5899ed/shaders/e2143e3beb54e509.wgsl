enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

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

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>) {
  o0 = vec4<f32>(v2.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, v0.xy.xy);
  let v_1 = (v0 + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = sqrt(r0.w);
  let v_2 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.x = (r0.w + v_2.x);
  r1.x = max(r1.x, 0.0f);
  r0.w = (r1.x / r0.w);
  r0.w = (r0.w * r0.z);
  r1.y = (r0.w * cb3_3.tint_symbol_2[52u].z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.wwww).w)));
  r1.z = (r1.y * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.y = (r1.z / r1.y);
  let v_3 = bitcast<u32>(r0.w);
  r0.w = select(1.0f, r1.y, (v_3 != 0u));
  r1.y = (r1.x * cb3_3.tint_symbol_2[51u].w);
  let v_4 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r1.x = (r1.x + v_4.x);
  r1.x = max(r1.x, 0.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].x);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r0.w = (r0.w * r1.y);
  r0.w = min(r0.w, 1.0f);
  r0.w = (r0.w * 1.44269502162933349609f);
  r0.w = exp2(r0.w);
  r0.w = min(r0.w, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r1.y = fma((-(r0.wwww)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r0.w = (r0.w * cb3_3.tint_symbol_2[52u].y);
  r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
  r0.w = clamp(fma(r1.yyyy, r1.xxxx, r0.wwww).w, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_5 = -(cb1_1.tint_symbol[14u].xyzx);
  r0.z = dot(r0.xyz, v_5.xyz);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.y = (r0.z * cb5_5.tint_symbol_3[3u].x);
  r0.y = max(r0.y, 1.0f);
  r0.z = (r0.y * r0.y);
  let v_6 = -(cb5_5.tint_symbol_3[2u].yyyy);
  r1.x = (r0.x + v_6.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r0.z = (r1.x / r0.z);
  r0.z = (r0.z * r0.w);
  let v_7 = -(cb5_5.tint_symbol_3[1u].yyyy);
  r0.w = (r0.x + v_7.w);
  r0.x = (r0.x + -500.0f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(0.00050000002374872565f))).x, 0.0f, 1.0f);
  r0.x = fma(r0.x, 15.0f, 1.0f);
  r0.w = clamp(((r0.wwww / cb5_5.tint_symbol_3[1u].zzzz)).w, 0.0f, 1.0f);
  r0.w = (r0.w * r0.z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb5_5.tint_symbol_3[1u].x))));
  let v_8 = bitcast<u32>(r1.x);
  let v_9 = r0.w;
  r0.z = select(r0.z, v_9, (v_8 != 0u));
  r0.w = (v1.w * cb5_5.tint_symbol_3[2u].w);
  let v_10 = (r0.www * v1.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  o1 = ((r0.xxx * r1.xyz)).xyzx;
  let v_12 = (v2 + vec2<f32>(-0.5f));
  r0 = vec4<f32>(v_12.x, r0.yz, v_12.y);
  let v_13 = (r0.xw * cb5_5.tint_symbol_3[2u].xx);
  r0 = vec4<f32>(v_13.x, r0.yz, v_13.y);
  let v_14 = (r0.www * cb1_1.tint_symbol[13u].xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = fma(r0.xxx, cb1_1.tint_symbol[12u].xyz, r1.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = (r0.yyy * r1.xyz);
  r0 = vec4<f32>(v_16.xy, r0.z, v_16.z);
  let v_17 = fma(r0.xyw, r0.zzz, v0);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o2 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_18 = &(x0[0u]);
  *(v_18) = vec4<f32>((*(v_18)).x, vec3<f32>());
  o3[0u] = x0[0u].x;
  o3[1u] = x0[0u].y;
  o3[2u] = x0[0u].z;
  o3[3u] = x0[0u].w;
  v = vec4<f32>(o3[0u], o3[1u], o3[2u], o3[3u]);
}

struct tint_symbol_5 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @builtin(position)
  o2 : vec4<f32>,
  @builtin(clip_distances)
  o3 : array<f32, 4u>,
  @location(15u)
  tint_symbol_4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2);
  return tint_symbol_5(o0, o1, o2, o3, v);
}
