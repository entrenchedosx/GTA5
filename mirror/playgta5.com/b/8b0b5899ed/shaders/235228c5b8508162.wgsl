diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb2_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

struct cb1280_struct {
  tint_symbol_3 : array<vec4<f32>, 1280u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb1280_struct;

var<private> v6 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v4 : vec2<f32>, v : i32) {
  let v_1 = 0i;
  v6.x = bitcast<f32>((v - v_1));
  r0.x = bitcast<f32>((bitcast<i32>(v6.x) * 5i));
  r1.x = cb5_5.tint_symbol_3[bitcast<i32>(r0.x)].y;
  r2.w = 1.0f;
  let v_2 = bitcast<vec3<f32>>(((bitcast<vec3<i32>>(v6.xxx) * vec3<i32>(5i)) + vec3<i32>(1i, 2i, 3i)));
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = ((-(cb10_10.tint_symbol_2[0u].xyzx)).xyz + cb5_5.tint_symbol_3[bitcast<i32>(r0.w)].xyz);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  r3.x = dot(r3.xyz, r3.xyz);
  r3.x = clamp(fma(r3.xxxx, cb4_4.tint_symbol_1[1u].zzzz, cb4_4.tint_symbol_1[1u].wwww).x, 0.0f, 1.0f);
  let v_4 = (r3.xxx * v0.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  r1.y = cb5_5.tint_symbol_3[bitcast<i32>(r0.y)].y;
  r1.z = cb5_5.tint_symbol_3[bitcast<i32>(r0.z)].y;
  r1.w = cb5_5.tint_symbol_3[bitcast<i32>(r0.w)].y;
  r1.x = dot(r2, r1);
  r1 = (r1.xxxx * cb1_1.tint_symbol[9u]);
  r3.x = cb5_5.tint_symbol_3[bitcast<i32>(r0.x)].x;
  r4.x = cb5_5.tint_symbol_3[bitcast<i32>(r0.x)].z;
  r3.y = cb5_5.tint_symbol_3[bitcast<i32>(r0.y)].x;
  r3.z = cb5_5.tint_symbol_3[bitcast<i32>(r0.z)].x;
  r3.w = cb5_5.tint_symbol_3[bitcast<i32>(r0.w)].x;
  r0.x = dot(r2, r3);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r4.y = cb5_5.tint_symbol_3[bitcast<i32>(r0.y)].z;
  r4.z = cb5_5.tint_symbol_3[bitcast<i32>(r0.z)].z;
  r4.w = cb5_5.tint_symbol_3[bitcast<i32>(r0.w)].z;
  r0.x = dot(r2, r4);
  r0 = fma(r0.xxxx, cb1_1.tint_symbol[10u], r1);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  r1.x = (v0.z / cb4_4.tint_symbol_1[1u].y);
  r1.x = min(abs(r1.xxxx).x, 1.0f);
  o0.z = fma(r1.x, cb4_4.tint_symbol_1[1u].x, r0.z);
  let v_5 = r0;
  o0 = vec4<f32>(v_5.xy, o0.z, v_5.w);
  o1 = v4.xyxy;
}

struct tint_symbol_4 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(4u) v4 : vec2<f32>, @builtin(instance_index) v_6 : u32) -> tint_symbol_4 {
  main_inner(v0, v4, i32(v_6));
  return tint_symbol_4(o0, o1);
}
