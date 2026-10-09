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

struct cb3_struct {
  tint_symbol_3 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb3_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>) {
  r0.x = (v3.x * 6.28318500518798828125f);
  let v = (cb13_13.tint_symbol_3[0u].zzw * cb13_13.tint_symbol_3[1u].zzw);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = fma(cb2_2.tint_symbol_1[16u].xxx, r0.yzw, r0.xxx);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = sin(r0.xyzx.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (v3.xxy * cb13_13.tint_symbol_3[0u].xxy);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = (r1.xyz * cb13_13.tint_symbol_3[1u].xxy);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(r0.xyz, r1.xyz, v0);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  let v_6 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = (r0.x * 0.00000399999998990097f);
  r0.x = min(r0.x, 1.0f);
  r0.y = ((-(r0.xxxx)).y + 1.0f);
  let v_11 = -(cb2_2.tint_symbol_1[16u].zzzz);
  let v_12 = clamp(((r0.xyxx + v_11)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_12.xy, r0.zw);
  r0.z = (cb3_3.tint_symbol_2[49u].w + -1.0f);
  let v_13 = fma(r0.xy, r0.zz, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_13.xy, r0.zw);
  let v_14 = clamp(((r0.xyxx * v1.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o1 = vec4<f32>(v_14.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v1.zw);
  r0.x = v1.z;
  r0.y = cb13_13.tint_symbol_3[2u].x;
  o2 = textureSampleLevel(t2, s2, r0.xyxx.xy, 0.0f);
  o3 = v2.xyxy;
  r0.x = dot(v4, v4);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.10000000149011611938f)));
  let v_15 = select(v4, vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r0.xxx) != vec3<u32>()));
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_17.xy, r0.z, v_17.z);
  let v_18 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_19 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  o4 = r0.xyz.xyzx;
  let v_20 = (v5.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = fma(v5.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  let v_22 = fma(v5.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  o5 = r1.xyz.xyzx;
  let v_23 = (r0.yzx * r1.zxy);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = -(r2.xyzx);
  let v_25 = fma(r1.yzx, r0.zxy, v_24.xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  o6 = ((r0.xyz * v5.www)).xyzx;
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3, v4, v5);
  return tint_symbol_4(o0, o1, o2, o3, o4, o5, o6);
}
