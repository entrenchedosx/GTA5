diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

struct tint_symbol_3 {
  tint_symbol_2 : array<vec4<u32>, 1u>,
}

@group(0u) @binding(15u) var<uniform> v : tint_symbol_3;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>) {
  r0.x = (cb1_1.tint_symbol[3u].x * 0.20000000298023223877f);
  let v_1 = -(r0.xxxx);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= v_1.y)));
  r0.x = fract(abs(r0.xxxx).x);
  let v_2 = -(r0.xxxx);
  let v_3 = bitcast<u32>(r0.y);
  r0.x = select(v_2.x, r0.x, (v_3 != 0u));
  r0.x = (r0.x * 5.0f);
  r0.x = fma(cb2_2.tint_symbol_1[16u].x, 2.5f, r0.x);
  r0.x = sin(r0.xxxx.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < abs(r0.xxxx).x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb2_2.tint_symbol_1[16u].y < 0.00600000005215406418f)));
  let v_4 = bitcast<u32>(r0.y);
  let v_5 = r0.x;
  r0.x = select(bitcast<f32>(v.tint_symbol_2[0i].x), v_5, (v_4 != 0u));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f >= cb2_2.tint_symbol_1[16u].y)));
  let v_6 = bitcast<u32>(r0.y);
  r0.x = select(r0.x, 0.0f, (v_6 != 0u));
  r0.y = select(1.0f, 0.0f, (bitcast<u32>(r0.y) != 0u));
  r1 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  r0.z = fma(r0.y, r1.z, -0.00000999999974737875f);
  let v_7 = (r0.yyy * r1.xyw);
  r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
  r1.z = (r0.z * r0.y);
  o0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0.xxxx) & bitcast<vec4<u32>>(r1)));
  o1 = clamp(v1, vec4<f32>(), vec4<f32>(1.0f));
  o2 = v2.xyxy;
}

struct tint_symbol_4 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2);
  return tint_symbol_4(o0, o1, o2);
}
