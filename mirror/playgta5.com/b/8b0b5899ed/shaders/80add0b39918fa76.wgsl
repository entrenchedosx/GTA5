diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec2<f32>, v6 : vec3<f32>, v7 : vec4<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  let v = (cb1_1.tint_symbol[12u].zxy * cb1_1.tint_symbol[13u].yzx);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(r0.xyzx);
  let v_2 = fma(cb1_1.tint_symbol[12u].yzx, cb1_1.tint_symbol[13u].zxy, v_1.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma((-(r0.xyzx)).xyz, cb2_2.tint_symbol_1[4u].xxx, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = (r1.xyz + cb1_1.tint_symbol[3u].xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = -(r1.xyzx);
  let v_9 = (r0.xyz + v_8.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  o1.z = sqrt(r0.x);
  o1 = vec3<f32>(v5.xy, o1.xyz.z).xyzx;
  o2 = vec4<f32>(v3.xy, o2.zw);
  o2 = vec4<f32>(o2.xy, v4.xy);
  o3 = v2;
  let v_10 = (v6.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = fma(v6.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = fma(v6.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_14 = dot(r0.xyz, v_13.xyz);
  r0.w = clamp(vec4<f32>(v_14, v_14, v_14, v_14).w, 0.0f, 1.0f);
  let v_15 = -(cb12_12.tint_symbol_3[3u].yyyy);
  r0.w = (r0.w + v_15.w);
  o4.w = (r0.w * 9.0f);
  let v_16 = r0;
  o4 = vec4<f32>(v_16.xyz, o4.w);
  let v_17 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_18 = (r1.xyz + v_17.xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  o8 = (((-(r1.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz)).xyzx;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = (r0.w * 0.00000399999998990097f);
  r1.x = min(r0.w, 1.0f);
  r1.y = ((-(r1.xxxx)).y + 1.0f);
  let v_19 = -(cb2_2.tint_symbol_1[16u].zzzz);
  let v_20 = clamp(((r1.xyxx + v_19)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_20.xy, r1.zw);
  r0.w = (cb3_3.tint_symbol_2[49u].w + -1.0f);
  let v_21 = fma(r1.xy, r0.ww, vec2<f32>(1.0f));
  r1 = vec4<f32>(v_21.xy, r1.zw);
  let v_22 = clamp(((r1.xyxx * v1.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o5 = vec4<f32>(v_22.xy, o5.zw);
  o5.z = v1.z;
  o5.w = 0.0f;
  let v_23 = (v7.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  let v_24 = fma(v7.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_24.xyz, r1.w);
  let v_25 = fma(v7.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_25.xyz, r1.w);
  o6 = r1.xyz.xyzx;
  let v_26 = (r0.yzx * r1.zxy);
  r2 = vec4<f32>(v_26.xyz, r2.w);
  let v_27 = -(r2.xyzx);
  let v_28 = fma(r1.yzx, r0.zxy, v_27.xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  o7 = ((r0.xyz * v7.www)).xyzx;
}

struct tint_symbol_4 {
  @builtin(position)
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec2<f32>, @location(6u) v6 : vec3<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_4(o0, o1, o2, o3, o4, o5, o6, o7, o8);
}
