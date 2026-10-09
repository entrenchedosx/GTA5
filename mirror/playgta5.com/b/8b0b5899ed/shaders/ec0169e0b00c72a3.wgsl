diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb16_struct_1 {
  tint_symbol_1 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb16_struct_1;

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

var<private> o10 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o0 = r0;
  o2.w = r0.w;
  o1 = vec4<f32>(v1.xyz, o1.w);
  o1.w = v5.w;
  let v = (v0.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  o2 = vec4<f32>(v.xyz, o2.w);
  r0.x = dot(v2.xyz, v2.xyz);
  r0.y = sqrt(r0.x);
  r0.x = inverseSqrt(r0.x);
  let v_1 = (r0.xxx * v2.zxy);
  r0 = vec4<f32>(v_1.x, r0.y, v_1.yz);
  r0.y = (1.0f / r0.y);
  let v_2 = (r0.yyy * v2.xyz);
  o3 = vec4<f32>(v_2.xyz, o3.w);
  o3.w = r0.y;
  r0.y = dot(v3.xyz, v3.xyz);
  r1.x = sqrt(r0.y);
  r0.y = inverseSqrt(r0.y);
  let v_3 = (r0.yyy * v3.yzx);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  r0.y = (1.0f / r1.x);
  let v_4 = (r0.yyy * v3.xyz);
  o4 = vec4<f32>(v_4.xyz, o4.w);
  o4.w = r0.y;
  let v_5 = (r0.xzw * r1.yzw);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = -(r2.xyzx);
  let v_7 = fma(r0.wxz, r1.zwy, v_6.xyz);
  o5 = vec4<f32>(v_7.xyz, o5.w);
  o5.w = v3.w;
  o6 = vec4<f32>(v5.xyz, o6.w);
  o6.w = cb2_2.tint_symbol_1[15u].z;
  r0.x = (v4.z / v4.y);
  let v_8 = -(r0.xxxx);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= v_8.y)));
  r0.z = fract(abs(r0.xxxx).z);
  r1.y = floor(r0.x);
  let v_9 = -(r0.zzzz);
  let v_10 = bitcast<u32>(r0.y);
  r0.x = select(v_9.x, r0.z, (v_10 != 0u));
  r0.y = fma((-(r0.xxxx)).y, v4.y, v4.y);
  r1.x = (r0.x * v4.y);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.y < 0.00100000004749745131f)));
  r2.x = 0.0f;
  r2.y = (r1.y + 1.0f);
  let v_11 = bitcast<vec2<u32>>(r0.xx);
  let v_12 = r2.xy;
  let v_13 = select(r1.xy, v_12, (v_11 != vec2<u32>()));
  o7 = vec4<f32>(v_13.xy, o7.zw);
  o7 = vec4<f32>(o7.xy, ((vec2<f32>(1.0f) / v4.yx)).xy);
  let v_14 = ((-(v0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  o8 = vec4<f32>(v_14.xyz, o8.w);
  o8.w = v0.w;
  r0.x = (v4.w * 0.5f);
  let v_15 = -(r0.xxxx);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= v_15.y)));
  r0.z = fract(abs(r0.xxxx).z);
  o9.x = floor(r0.x);
  let v_16 = -(r0.zzzz);
  let v_17 = bitcast<u32>(r0.y);
  r0.x = select(v_16.x, r0.z, (v_17 != 0u));
  o9.y = (r0.x + r0.x);
  o9.z = v2.w;
  o9.w = v1.w;
  o10 = vec4<f32>(vec3<f32>(), o10.w);
  o10.w = cb2_2.tint_symbol_1[15u].y;
}

struct tint_symbol_2 {
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
  @location(10u)
  o10 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2, v3, v4, v5);
  return tint_symbol_2(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10);
}
