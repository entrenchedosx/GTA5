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

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb7_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb9_9.tint_symbol_3[5u].x))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    let v_1 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
    r1 = vec4<f32>(v_1.xyz, r1.w);
    let v_2 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
    r1 = vec4<f32>(v_2.xyz, r1.w);
    let v_3 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
    r1 = vec4<f32>(v_3.xyz, r1.w);
    let v_4 = (r1.xyz + cb1_1.tint_symbol[3u].xyz);
    r1 = vec4<f32>(v_4.xyz, r1.w);
    r2.x = (cb9_9.tint_symbol_3[6u].x * cb9_9.tint_symbol_3[6u].x);
    let v_5 = -(cb1_1.tint_symbol[15u].xyxz);
    let v_6 = (r1.xyz + v_5.xyw);
    r1 = vec4<f32>(v_6.xy, r1.z, v_6.z);
    r2.w = dot(r1.xyw, r1.xyw);
    r2.w = sqrt(r2.w);
    let v_7 = (r1.xyw / r2.www);
    r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
    r2.w = abs(r1.wwww).w;
    r2.w = (1.0f / r2.w);
    r1.z = ((-(r1.zzzz)).z + cb9_9.tint_symbol_3[6u].y);
    let v_8 = -(cb9_9.tint_symbol_3[6u].yyyy);
    r3.x = (cb1_1.tint_symbol[15u].z + v_8.x);
    let v_9 = abs(r3.xxxx);
    r3.x = (r2.w * v_9.x);
    r1.x = dot((-(cb1_1.tint_symbol[14u].xyzx)).xyz, r1.xyw);
    let v_10 = abs(r1.xxxx);
    r1.y = (r3.x * v_10.y);
    r1.z = fma(abs(r1.zzzz).z, r2.w, r3.x);
    let v_11 = abs(r1.xxxx);
    r1.x = (r1.z * v_11.x);
    r1.z = fma(r1.y, cb9_9.tint_symbol_3[1u].z, cb9_9.tint_symbol_3[1u].w);
    let v_12 = -(r1.yyyy);
    r1.y = (r1.z / v_12.y);
    r1.z = fma(r1.x, cb9_9.tint_symbol_3[1u].z, cb9_9.tint_symbol_3[1u].w);
    let v_13 = -(r1.xxxx);
    r1.x = (r1.z / v_13.x);
    r1.x = ((-(r1.yyyy)).x + r1.x);
    r2.y = abs(r1.xxxx).y;
    r2.z = (abs(r1.yyyy).z * r2.x);
    let v_14 = (r2.xy * r2.yz);
    r1 = vec4<f32>(v_14.xy, r1.zw);
    let v_15 = (r1.xy * vec2<f32>(-78.43303680419921875f, -235.299102783203125f));
    r1 = vec4<f32>(v_15.xy, r1.zw);
    let v_16 = exp2(r1.xy);
    o2 = vec4<f32>(v_16.xy, o2.zw);
    o2 = vec4<f32>(o2.xy, vec2<f32>());
  } else {
    let v_17 = (v0 + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
    r1 = vec4<f32>(v_17.xyz, r1.w);
    r1.w = dot(r1.xyz, r1.xyz);
    r2.x = sqrt(r1.w);
    let v_18 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_18.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r1.z * r2.x);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_19 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_19 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_20 = (r1.www * r1.xyz);
    r1 = vec4<f32>(v_20.xyz, r1.w);
    let v_21 = dot(r1.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_21, v_21, v_21, v_21).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_22 = dot(r1.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.x = clamp(vec4<f32>(v_22, v_22, v_22, v_22).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[53u].w);
    r1.x = exp2(r1.x);
    r1.y = fma((-(r2.xxxx)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    let v_23 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r1.z = (r2.y + v_23.z);
    r1.z = max(r1.z, 0.0f);
    let v_24 = (r1.yz * cb3_3.tint_symbol_2[51u].yx);
    let v_25 = r1;
    r1 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    o2.w = clamp(fma(r1.yyyy, r1.zzzz, r2.zzzz).w, 0.0f, 1.0f);
    let v_26 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r2.y * v_26.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_27 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_27.xyz, r2.w);
    let v_28 = fma(r1.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_28.xyz, r2.w);
    let v_29 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_29.xyz, r3.w);
    let v_30 = fma(r1.xxx, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_30.xyz, r2.w);
    let v_31 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_32 = (r2.xyz + v_31.xyz);
    r2 = vec4<f32>(v_32.xyz, r2.w);
    let v_33 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r1 = vec4<f32>(v_33.x, r1.y, v_33.yz);
    r2.x = ((-(r1.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
    r2.y = ((-(r1.zzzz)).y + cb3_3.tint_symbol_2[56u].w);
    r2.z = ((-(r1.wwww)).z + cb3_3.tint_symbol_2[57u].w);
    let v_34 = fma(r1.yyy, r2.xyz, r1.xzw);
    o2 = vec4<f32>(v_34.xyz, o2.w);
  }
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  o0 = v1;
  o1 = vec4<f32>(v2.xy, o1.zw);
  o1.z = r0.w;
  o1.w = 1.0f;
  o3 = r0;
  let v_35 = &(x0[0u]);
  *(v_35) = vec4<f32>((*(v_35)).x, vec3<f32>());
  o4[0u] = x0[0u].x;
  o4[1u] = x0[0u].y;
  o4[2u] = x0[0u].z;
  o4[3u] = x0[0u].w;
  v = vec4<f32>(o4[0u], o4[1u], o4[2u], o4[3u]);
}

struct tint_symbol_5 {
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
  tint_symbol_4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2);
  return tint_symbol_5(o0, o1, o2, o3, o4, v);
}
