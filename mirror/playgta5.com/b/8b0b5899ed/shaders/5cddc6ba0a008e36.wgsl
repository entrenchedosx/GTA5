diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec4<f32>) {
  r0.x = dot(v0.xyz, v0.xyz);
  r0.x = inverseSqrt(r0.x);
  let v = (r0.xxx * v0.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = (v1.w + 0.02899999916553497314f);
  r1.x = (v3.x * 0.5f);
  let v_1 = -(r1.xxxx);
  r1.y = fma(r0.x, r0.w, v_1.y);
  let v_2 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v2.xyz, r1.xxx, v1.xyz);
  r1 = vec4<f32>(v_3.x, r1.y, v_3.yz);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  let v_4 = bitcast<u32>(r0.w);
  let v_5 = r1.y;
  r0.x = select(r0.x, v_5, (v_4 != 0u));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  r1.y = fma(v3.x, 0.5f, r0.x);
  let v_6 = bitcast<u32>(r0.w);
  let v_7 = r1.y;
  r0.x = select(r0.x, v_7, (v_6 != 0u));
  r2 = vec4<f32>(((v2.xyz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz, r2.w);
  let v_8 = fma(v2.zxy, vec3<f32>(0.0f, 0.0f, 1.0f), (-(r2.xyzx)).xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r0.w = dot(r2.xz, r2.xz);
  r0.w = inverseSqrt(r0.w);
  let v_9 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = (r2.xyz * v2.zxy);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = -(r3.xyzx);
  let v_12 = fma(v2.yzx, r2.yzx, v_11.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_13 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = (r2.zxy * v2.yzx);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = -(r3.xyzx);
  let v_16 = fma(r2.yzx, v2.zxy, v_15.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = fma(r0.xxx, v2.xyz, r3.xyz);
  r0 = vec4<f32>(v_18.xy, r0.z, v_18.z);
  let v_19 = fma(r0.zzz, r2.xyz, r0.xyw);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = (r1.xzw + r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  let v_21 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_22 = (r0.xyz + v_21.xyz);
  o2 = vec4<f32>(v_22.xyz, o2.w);
  r0 = (r1 + cb1_1.tint_symbol[11u]);
  o0 = r0;
  r1.x = (r0.w + r0.x);
  r1.y = ((-(r0.yyyy)).y + r0.w);
  let v_23 = (r1.xy * vec2<f32>(0.5f));
  o1 = vec4<f32>(v_23.xy, o1.zw);
  let v_24 = r0;
  o1 = vec4<f32>(o1.xy, v_24.zw);
  o2.w = r0.w;
  o3 = v1;
  o4 = v2;
  o5 = v3.xyxy;
  o6 = v4;
}

struct tint_symbol_1 {
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_1(o0, o1, o2, o3, o4, o5, o6);
}
