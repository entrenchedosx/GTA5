diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb92_struct {
  tint_symbol : array<vec4<f32>, 92u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb92_struct;

struct tint_symbol_2 {
  tint_symbol_1 : array<u32>,
}

@group(0u) @binding(34u) var<storage, read> t2 : tint_symbol_2;

struct tint_symbol_4 {
  tint_symbol_3 : array<u32>,
}

@group(0u) @binding(162u) var<storage, read_write> u2 : tint_symbol_4;

var<workgroup> g0 : array<u32, 512u>;

@compute @workgroup_size(16u, 16u, 1u)
fn main(@builtin(global_invocation_id) vThreadID : vec3<u32>, @builtin(local_invocation_id) vThreadIDInGroup : vec3<u32>, @builtin(local_invocation_index) vThreadIDInGroupFlattened : u32) {
  let v = vec3<i32>(vThreadIDInGroup);
  let v_1 = vec3<i32>(vThreadID);
  let v_2 = max(cb5_5.tint_symbol[91u].yz, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.x = bitcast<f32>(((v_1.y * bitcast<i32>(r0.x)) + v_1.x));
  let v_4 = (bitcast<u32>((bitcast<i32>(r0.x) * 2i)) + 0u);
  let v_5 = t2.tint_symbol_1[v_4];
  let v_6 = t2.tint_symbol_1[(v_4 + 1u)];
  let v_7 = bitcast<vec2<f32>>(vec2<u32>(vec4<u32>(v_5, v_5, v_5, v_5).x, vec4<u32>(v_6, v_6, v_6, v_6).x));
  let v_8 = r0;
  r0 = vec4<f32>(v_7.x, v_8.y, v_7.y, v_8.w);
  let v_9 = (bitcast<u32>((i32(vThreadIDInGroupFlattened) * 2i)) + 0u);
  let v_10 = bitcast<vec2<u32>>(r0.xz);
  g0[v_9] = v_10.x;
  g0[(v_9 + 1u)] = v_10.y;
  workgroupBarrier();
  let v_11 = bitcast<vec2<f32>>((v_1.yx + (-(v.yyxy)).xz));
  let v_12 = r0;
  r0 = vec4<f32>(v_11.x, v_12.y, v_11.y, v_12.w);
  let v_13 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r0.xz) + v.xy));
  let v_14 = r0;
  r0 = vec4<f32>(v_13.x, v_14.y, v_13.y, v_14.w);
  let v_15 = bitcast<i32>(r0.z);
  let v_16 = bitcast<i32>(r0.y);
  r0.x = bitcast<f32>(((v_15 * v_16) + bitcast<i32>(r0.x)));
  r0.y = bitcast<f32>(((v.x * 16i) + v.y));
  let v_17 = (bitcast<u32>((bitcast<i32>(r0.y) * 2i)) + 0u);
  let v_18 = bitcast<vec2<f32>>(vec2<u32>(g0[v_17], g0[(v_17 + 1u)]));
  let v_19 = r0;
  r0 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  let v_20 = (bitcast<u32>((bitcast<i32>(r0.x) * 2i)) + 0u);
  let v_21 = bitcast<vec2<u32>>(r0.yz);
  u2.tint_symbol_3[v_20] = v_21.x;
  u2.tint_symbol_3[(v_20 + 1u)] = v_21.y;
}
