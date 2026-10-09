diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb90_struct {
  tint_symbol : array<vec4<f32>, 90u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb90_struct;

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
  let v_3 = (bitcast<u32>((bitcast<i32>(r0.x) * 9i)) + 0u);
  let v_4 = t0.tint_symbol_1[v_3];
  let v_5 = t0.tint_symbol_1[(v_3 + 1u)];
  let v_6 = t0.tint_symbol_1[(v_3 + 2u)];
  let v_7 = bitcast<vec3<f32>>(vec3<u32>(vec4<u32>(v_4, v_4, v_4, v_4).x, vec4<u32>(v_5, v_5, v_5, v_5).x, vec4<u32>(v_6, v_6, v_6, v_6).x));
  r0 = vec4<f32>(r0.x, v_7.xyz);
  let v_8 = (r0.yz / cb5_5.tint_symbol[89u].xy);
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  o1.z = r0.w;
  let v_10 = fma(r0.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_11 = r0;
  r0 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  o0.y = -(r0.z);
  o0.x = r0.y;
  let v_12 = (vec2<f32>(1.0f) / cb5_5.tint_symbol[89u].xy);
  let v_13 = r0;
  r0 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  let v_14 = (bitcast<u32>((bitcast<i32>(r0.x) * 9i)) + 4u);
  let v_15 = t0.tint_symbol_1[v_14];
  let v_16 = t0.tint_symbol_1[(v_14 + 1u)];
  let v_17 = t0.tint_symbol_1[(v_14 + 2u)];
  let v_18 = t0.tint_symbol_1[(v_14 + 3u)];
  r1 = bitcast<vec4<f32>>(vec4<u32>(vec4<u32>(v_15, v_15, v_15, v_15).x, vec4<u32>(v_16, v_16, v_16, v_16).x, vec4<u32>(v_17, v_17, v_17, v_17).x, vec4<u32>(v_18, v_18, v_18, v_18).x));
  let v_19 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r0.x) * 9i)) + 8u)];
  o2.w = bitcast<f32>(vec4<u32>(v_19, v_19, v_19, v_19).x);
  let v_20 = (r0.yz * r1.xx);
  r0 = vec4<f32>(v_20.xy, r0.zw);
  let v_21 = r1;
  o2 = vec4<f32>(v_21.yzw, o2.w);
  let v_22 = (r0.xy * cb5_5.tint_symbol[87u].ww);
  o1 = vec3<f32>(v_22.xy, o1.xyz.z).xyzx;
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
fn main(@builtin(vertex_index) v_23 : u32) -> tint_symbol_3 {
  main_inner(i32(v_23));
  return tint_symbol_3(o0, o1, o2);
}
