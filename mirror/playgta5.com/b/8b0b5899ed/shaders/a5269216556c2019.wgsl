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

@group(0u) @binding(13u) var<uniform> cb13_13 : cb1_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  let v = ((-(v0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = (cb13_13.tint_symbol_1[0u].y * 0.10000000149011611938f);
  let v_1 = fma(r0.xyz, r0.www, v0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2.x = sin(v1.z);
  r3.x = cos(v1.z);
  let v_2 = (r2.xx * v1.yx);
  r2 = vec4<f32>(v_2.xy, r2.zw);
  let v_3 = -(r2.xxxx);
  r1.x = fma(v1.x, r3.x, v_3.x);
  r1.y = fma(v1.y, r3.x, r2.y);
  r0 = (r0 + r1);
  o0 = r0;
  let v_4 = (r0.xy / r0.ww);
  o4 = vec4<f32>(o4.xy, v_4.xy);
  o1 = v2;
  o2 = v3;
  o3 = v4;
  o4.x = v5.z;
  o4.y = 0.0f;
  o5 = v6;
  o6 = v7;
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((v1.z == 0.0f))));
  r0.y = dot(cb12_12.tint_symbol_2[1u].xyz, cb12_12.tint_symbol_2[1u].xyz);
  r0.y = inverseSqrt(r0.y);
  let v_5 = (r0.yyy * cb12_12.tint_symbol_2[1u].xyz);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = ((-(r0.zzzz)).xyz * cb1_1.tint_symbol[5u].xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma((-(r0.yyyy)).xyz, cb1_1.tint_symbol[4u].xyz, r1.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = fma((-(r0.wwww)).yzw, cb1_1.tint_symbol[6u].xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_8.xyz);
  let v_9 = -(v1.zzzz);
  r1.x = sin(v_9.x);
  r2.x = cos(v_9.x);
  let v_10 = (r0.zy * r1.xx);
  r1 = vec4<f32>(v_10.xy, r1.zw);
  let v_11 = -(r1.xxxx);
  r3.x = fma(r0.y, r2.x, v_11.x);
  r3.y = fma(r0.z, r2.x, r1.y);
  let v_12 = bitcast<vec2<u32>>(r0.xx);
  let v_13 = r3.xy;
  let v_14 = select(r0.yz, v_13, (v_12 != vec2<u32>()));
  o7 = vec3<f32>(v_14.xy, o7.xyz.z).xyzx;
  o7.z = r0.w;
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
  @location(7u)
  o7 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_3(o0, o1, o2, o3, o4, o5, o6, o7);
}
