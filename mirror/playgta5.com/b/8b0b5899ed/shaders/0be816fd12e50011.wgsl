diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

var<private> icb0 : array<vec4<f32>, 8u> = array<vec4<f32>, 8u>(vec4<f32>(), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(), vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 0.0f, 0.0f));

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (v1.y == 0.0f)));
  let v = select(v0.xy, vec2<f32>(-1000.0f), (bitcast<vec2<u32>>(r0.xx) != vec2<u32>()));
  r0 = vec4<f32>(v.xy, r0.zw);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  o1.w = fract(v0.z);
  o1.z = trunc(v0.z);
  o1 = vec4<f32>(v1.xy, o1.zw);
  let v_1 = max(v0.z, 0.0f);
  r0.x = bitcast<f32>(select(u32(v_1), 4294967295u, (v_1 >= 4294967296.0f)));
  r0.y = bitcast<f32>((bitcast<i32>(r0.x) + 1i));
  let v_2 = max(cb12_12.tint_symbol_1[3u].y, 0.0f);
  r0.z = bitcast<f32>(select(u32(v_2), 4294967295u, (v_2 >= 4294967296.0f)));
  let v_3 = bitcast<vec4<u32>>(r0.yyyy);
  let v_4 = bitcast<vec4<u32>>(r0.zzzz);
  let v_5 = select(vec4<u32>(1u), v_4, (v_4 != vec4<u32>()));
  r1.x = bitcast<f32>(select(4294967295u, ((v_3 / v_5)).x, (v_4.x != 0u)));
  r2.x = bitcast<f32>(select(4294967295u, ((v_3 % v_5)).x, (v_4.x != 0u)));
  let v_6 = bitcast<vec4<u32>>(r0.xxxx);
  let v_7 = bitcast<vec4<u32>>(r0.zzzz);
  let v_8 = select(vec4<u32>(1u), v_7, (v_7 != vec4<u32>()));
  r0.x = bitcast<f32>(select(4294967295u, ((v_6 / v_8)).x, (v_7.x != 0u)));
  r3.x = bitcast<f32>(select(4294967295u, ((v_6 % v_8)).x, (v_7.x != 0u)));
  r2.z = f32(bitcast<i32>(r2.x));
  r2.w = f32(bitcast<i32>(r1.x));
  r2.x = f32(bitcast<i32>(r3.x));
  r2.y = f32(bitcast<i32>(r0.x));
  r0 = (vec4<f32>(1.0f) / cb12_12.tint_symbol_1[3u].yxyx);
  r1 = (r0 * r2);
  r0.x = fma(v1.z, 255.0f, 0.5f);
  let v_9 = r0.x;
  let v_10 = max(v_9, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_10), 2147483647i, (v_10 >= 2147483648.0f)), 0i, !((v_9 == v_9))));
  o2 = fma(icb0[bitcast<i32>(r0.x)].xyxy, r0.zwzw, r1);
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0, v1);
  return tint_symbol_2(o0, o1, o2);
}
