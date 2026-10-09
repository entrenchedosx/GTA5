diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb14_struct {
  tint_symbol : array<vec4<f32>, 14u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb14_struct;

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

var<private> v1 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec2<f32>, v : i32) {
  let v_1 = 0i;
  v1.x = bitcast<f32>((v - v_1));
  r0.x = bitcast<f32>((bitcast<i32>(v1.x) * 5i));
  r1.x = cb5_5.tint_symbol_3[bitcast<i32>(r0.x)].y;
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, ((v0 + vec2<f32>(-0.5f, -0.0f))).xy, v_2.w);
  r2 = bitcast<vec4<f32>>(((bitcast<vec4<i32>>(v1.xxxx) * vec4<i32>(5i)) + vec4<i32>(1i, 2i, 3i, 4i)));
  let v_3 = ((-(cb10_10.tint_symbol_2[0u].xyzx)).xyz + cb5_5.tint_symbol_3[bitcast<i32>(r2.z)].xyz);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = clamp(fma(r0.wwww, cb4_4.tint_symbol_1[1u].zzzz, cb4_4.tint_symbol_1[1u].wwww).w, -0.0f, 1.0f);
  let v_4 = (r0.ww * cb5_5.tint_symbol_3[bitcast<i32>(r2.w)].xy);
  r3 = vec4<f32>(v_4.xy, r3.zw);
  let v_5 = -(cb1_1.tint_symbol[13u].xxyz);
  let v_6 = (r3.yyy * v_5.yzw);
  r3 = vec4<f32>(r3.x, v_6.xyz);
  let v_7 = (r3.xxx * cb1_1.tint_symbol[12u].xyz);
  r4 = vec4<f32>(v_7.xyz, r4.w);
  let v_8 = (r0.zzz * r3.yzw);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = fma(r0.yyy, r4.xyz, r3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r3.z = fma(cb5_5.tint_symbol_3[bitcast<i32>(r2.w)].y, r0.w, r3.z);
  r3.w = 1.0f;
  r1.y = cb5_5.tint_symbol_3[bitcast<i32>(r2.x)].y;
  r1.z = cb5_5.tint_symbol_3[bitcast<i32>(r2.y)].y;
  r1.w = cb5_5.tint_symbol_3[bitcast<i32>(r2.z)].y;
  r0.y = dot(r3, r1);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r4.x = cb5_5.tint_symbol_3[bitcast<i32>(r0.x)].x;
  r0.x = cb5_5.tint_symbol_3[bitcast<i32>(r0.x)].z;
  r4.y = cb5_5.tint_symbol_3[bitcast<i32>(r2.x)].x;
  r4.z = cb5_5.tint_symbol_3[bitcast<i32>(r2.y)].x;
  r4.w = cb5_5.tint_symbol_3[bitcast<i32>(r2.z)].x;
  r2.w = dot(r3, r4);
  r1 = fma(r2.wwww, cb1_1.tint_symbol[8u], r1);
  r0.y = cb5_5.tint_symbol_3[bitcast<i32>(r2.x)].z;
  r0.z = cb5_5.tint_symbol_3[bitcast<i32>(r2.y)].z;
  r0.w = cb5_5.tint_symbol_3[bitcast<i32>(r2.z)].z;
  r0.x = dot(r3, r0);
  r0.y = (r3.z / cb4_4.tint_symbol_1[1u].y);
  r0.y = clamp(abs(r0.yyyy).y, -0.0f, 1.0f);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  o0.z = fma(r0.y, cb4_4.tint_symbol_1[1u].x, r1.z);
  let v_10 = r1;
  o0 = vec4<f32>(v_10.xy, o0.z, v_10.w);
  r0.x = fma(v0.y, 0.5f, 0.5f);
  o1.y = min(r0.x, 1.0f);
  o1.x = v0.x;
}

struct tint_symbol_4 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec2<f32>, @builtin(instance_index) v_11 : u32) -> tint_symbol_4 {
  main_inner(v0, i32(v_11));
  return tint_symbol_4(o0, o1);
}
