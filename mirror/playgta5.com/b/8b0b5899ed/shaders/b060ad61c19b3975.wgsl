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

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>, v4 : vec4<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  let v = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = (r0.w * 0.00000399999998990097f);
  r1.x = min(r0.w, 1.0f);
  r1.y = ((-(r1.xxxx)).y + 1.0f);
  let v_5 = -(cb2_2.tint_symbol_1[16u].zzzz);
  let v_6 = clamp(((r1.xyxx + v_5)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r0.w = (cb3_3.tint_symbol_2[49u].w + -1.0f);
  let v_7 = fma(r1.xy, r0.ww, vec2<f32>(1.0f));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = clamp(((r1.xyxx * v1.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o1 = vec4<f32>(v_8.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v1.zw);
  o2 = v2.xyxy;
  r0.w = dot(v3, v3);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.10000000149011611938f)));
  let v_9 = select(v3, vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r0.www) != vec3<u32>()));
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = (r1.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = fma(r1.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r1 = vec4<f32>(v_11.xy, r1.z, v_11.z);
  let v_12 = fma(r1.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyw);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_13 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  o3 = r1.xyz.xyzx;
  let v_14 = (v4.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = fma(v4.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = fma(v4.zzz, cb1_1.tint_symbol[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  o4 = r2.xyz.xyzx;
  let v_17 = (r1.yzx * r2.zxy);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = -(r3.xyzx);
  let v_19 = fma(r2.yzx, r1.zxy, v_18.xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  o6.z = dot(r1.xyz, r0.xyz);
  o6.x = dot(r2.xyz, r0.xyz);
  let v_20 = (r3.xyz * v4.www);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  o5 = r1.xyz.xyzx;
  o6.y = dot(r1.xyz, r0.xyz);
  o6.w = 1.0f;
}

struct tint_symbol_3 {
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_3(o0, o1, o2, o3, o4, o5, o6);
}
