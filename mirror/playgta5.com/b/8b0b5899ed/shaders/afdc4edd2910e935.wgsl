diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

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

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

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

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec2<f32>, v6 : vec2<f32>, v7 : vec3<f32>, v8 : vec4<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  o1 = vec4<f32>(v3.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v4.xy);
  o2 = vec4<f32>(v2.xyz, o2.w);
  o2.w = v1.w;
  let v = (v7.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(v7.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v7.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_4 = dot(r0.xyz, v_3.xyz);
  r0.w = clamp(vec4<f32>(v_4, v_4, v_4, v_4).w, 0.0f, 1.0f);
  let v_5 = -(cb12_12.tint_symbol_3[4u].xxxx);
  r0.w = (r0.w + v_5.w);
  o3.w = (r0.w * 9.0f);
  let v_6 = r0;
  o3 = vec4<f32>(v_6.xyz, o3.w);
  let v_7 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = (r1.xyz + cb1_1.tint_symbol[3u].xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_12 = (r1.xyz + v_11.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = (r0.w * 0.00000399999998990097f);
  r2.x = min(r0.w, 1.0f);
  r2.y = ((-(r2.xxxx)).y + 1.0f);
  let v_13 = -(cb2_2.tint_symbol_1[16u].zzzz);
  let v_14 = clamp(((r2.xyxx + v_13)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_14.xy, r2.zw);
  r0.w = (cb3_3.tint_symbol_2[49u].w + -1.0f);
  let v_15 = fma(r2.xy, r0.ww, vec2<f32>(1.0f));
  r2 = vec4<f32>(v_15.xy, r2.zw);
  let v_16 = clamp(((r2.xyxx * v1.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o4 = vec4<f32>(v_16.xy, o4.zw);
  o4.z = v1.z;
  o4.w = 0.0f;
  let v_17 = (v8.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = fma(v8.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = fma(v8.zzz, cb1_1.tint_symbol[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  o5 = r2.xyz.xyzx;
  let v_20 = (r0.yzx * r2.zxy);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  let v_21 = -(r3.xyzx);
  let v_22 = fma(r2.yzx, r0.zxy, v_21.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  o6 = ((r0.xyz * v8.www)).xyzx;
  o7 = (((-(r1.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz)).xyzx;
  let v_23 = (cb1_1.tint_symbol[12u].zxy * cb1_1.tint_symbol[13u].yzx);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = -(r0.xyzx);
  let v_25 = fma(cb1_1.tint_symbol[12u].yzx, cb1_1.tint_symbol[13u].zxy, v_24.xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = fma((-(r0.xyzx)).xyz, cb2_2.tint_symbol_1[4u].xxx, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = ((-(r1.xyzx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  o8.z = sqrt(r0.x);
  o8 = vec3<f32>(v5.xy, o8.xyz.z).xyzx;
  o9 = v6.xyxy;
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
  @location(9u)
  o9 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec2<f32>, @location(6u) v6 : vec2<f32>, @location(7u) v7 : vec3<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_4(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9);
}
