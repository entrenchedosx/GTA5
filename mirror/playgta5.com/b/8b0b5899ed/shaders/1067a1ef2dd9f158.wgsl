diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb84_struct {
  tint_symbol : array<vec4<f32>, 84u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb84_struct;

struct tint_symbol_2 {
  tint_symbol_1 : array<u32>,
}

@group(0u) @binding(32u) var<storage, read> t0 : tint_symbol_2;

@group(0u) @binding(34u) var<storage, read> t2 : tint_symbol_2;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v : i32) {
  let v_1 = 0i;
  v0.x = bitcast<f32>((v - v_1));
  o0 = vec4<f32>(o0.xy, vec2<f32>(1.0f));
  let v_2 = t2.tint_symbol_1[(bitcast<u32>((bitcast<i32>(v0.x) * 2i)) + 0u)];
  r0.x = bitcast<f32>(vec4<u32>(v_2, v_2, v_2, v_2).x);
  let v_3 = (bitcast<u32>((bitcast<i32>(r0.x) * 8i)) + 0u);
  let v_4 = t0.tint_symbol_1[v_3];
  let v_5 = t0.tint_symbol_1[(v_3 + 1u)];
  let v_6 = t0.tint_symbol_1[(v_3 + 2u)];
  let v_7 = t0.tint_symbol_1[(v_3 + 3u)];
  r1 = bitcast<vec4<f32>>(vec4<u32>(vec4<u32>(v_4, v_4, v_4, v_4).x, vec4<u32>(v_5, v_5, v_5, v_5).x, vec4<u32>(v_6, v_6, v_6, v_6).x, vec4<u32>(v_7, v_7, v_7, v_7).x));
  let v_8 = (bitcast<u32>((bitcast<i32>(r0.x) * 8i)) + 4u);
  let v_9 = t0.tint_symbol_1[v_8];
  let v_10 = t0.tint_symbol_1[(v_8 + 1u)];
  let v_11 = t0.tint_symbol_1[(v_8 + 2u)];
  let v_12 = t0.tint_symbol_1[(v_8 + 3u)];
  o2 = bitcast<vec4<f32>>(vec4<u32>(vec4<u32>(v_9, v_9, v_9, v_9).x, vec4<u32>(v_10, v_10, v_10, v_10).x, vec4<u32>(v_11, v_11, v_11, v_11).x, vec4<u32>(v_12, v_12, v_12, v_12).x));
  let v_13 = (r1.xy / cb5_5.tint_symbol[83u].xy);
  r0 = vec4<f32>(v_13.xy, r0.zw);
  let v_14 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_14.xy, r0.zw);
  o0.y = -(r0.y);
  o0.x = r0.x;
  let v_15 = (vec2<f32>(1.0f) / cb5_5.tint_symbol[83u].xy);
  r0 = vec4<f32>(v_15.xy, r0.zw);
  let v_16 = (r0.xy * r1.ww);
  r0 = vec4<f32>(v_16.xy, r0.zw);
  o1.z = r1.z;
  r0.z = (cb5_5.tint_symbol[81u].w * 15.0f);
  let v_17 = (r0.zz * r0.xy);
  o1 = vec3<f32>(v_17.xy, o1.xyz.z).xyzx;
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@builtin(vertex_index) v_18 : u32) -> tint_symbol_3 {
  main_inner(i32(v_18));
  return tint_symbol_3(o0, o1, o2);
}
