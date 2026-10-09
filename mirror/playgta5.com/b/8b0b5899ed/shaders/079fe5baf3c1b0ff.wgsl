diagnostic(off, derivative_uniformity);

struct cb92_struct {
  tint_symbol : array<vec4<f32>, 92u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb92_struct;

struct tint_symbol_2 {
  tint_symbol_1 : array<u32>,
}

@group(0u) @binding(162u) var<storage, read_write> u2 : tint_symbol_2;

var<workgroup> g0 : array<u32, 2048u>;

@compute @workgroup_size(1024u, 1u, 1u)
fn main(@builtin(global_invocation_id) vThreadID : vec3<u32>, @builtin(local_invocation_index) vThreadIDInGroupFlattened : u32) {
  let v = i32(vThreadIDInGroupFlattened);
  let v_1 = vec3<i32>(vThreadID);
  var v_2 : f32 = 0.0f;
  var v_3 : f32 = 0.0f;
  var v_4 : f32 = 0.0f;
  var v_5 : f32 = 0.0f;
  var v_6 : f32 = 0.0f;
  var v_7 : f32 = 0.0f;
  var v_8 : f32 = 0.0f;
  var v_9 : f32 = 0.0f;
  let v_10 = (bitcast<u32>((v_1.x * 2i)) + 0u);
  let v_11 = bitcast<vec2<f32>>(vec2<u32>(u2.tint_symbol_1[v_10], u2.tint_symbol_1[(v_10 + 1u)]));
  let v_12 = vec4<f32>(v_11.xy, vec4<f32>(v_2, v_3, v_4, v_5).zw);
  v_2 = v_12.x;
  v_3 = v_12.y;
  v_4 = v_12.z;
  v_5 = v_12.w;
  let v_13 = (bitcast<u32>((v * 2i)) + 0u);
  let v_14 = bitcast<vec2<u32>>(vec4<f32>(v_2, v_3, v_4, v_5).xy);
  g0[v_13] = v_14.x;
  g0[(v_13 + 1u)] = v_14.y;
  workgroupBarrier();
  let v_15 = max(cb5_5.tint_symbol[90u].w, 0.0f);
  v_2 = bitcast<f32>(select(u32(v_15), 4294967295u, (v_15 >= 4294967296.0f)));
  let v_16 = max(cb5_5.tint_symbol[91u].x, 0.0f);
  v_3 = bitcast<f32>(select(u32(v_16), 4294967295u, (v_16 >= 4294967296.0f)));
  v_2 = bitcast<f32>((bitcast<u32>(v_2) >> 1u));
  v_3 = bitcast<f32>((bitcast<u32>(v_3) & bitcast<u32>(v_1.x)));
  v_3 = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(v_3) != 0i)));
  v_4 = v_2;
  loop {
    v_5 = bitcast<f32>(select(0u, 4294967295u, (0u >= bitcast<u32>(v_4))));
    if ((bitcast<u32>(v_5) != 0u)) {
      break;
    }
    v_5 = bitcast<f32>(~(bitcast<u32>(v_4)));
    v_5 = bitcast<f32>((bitcast<u32>(v_5) & bitcast<u32>(v)));
    v_5 = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(v_5) * 2i)) + 1u)]);
    v_6 = bitcast<f32>((bitcast<u32>(v_4) | bitcast<u32>(v)));
    v_6 = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(v_6) * 2i)) + 1u)]);
    v_5 = bitcast<f32>(select(0u, 4294967295u, (v_5 >= v_6)));
    v_5 = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(v_5) == bitcast<i32>(v_3))));
    if ((bitcast<u32>(v_5) != 0u)) {
      v_5 = bitcast<f32>((bitcast<u32>(v_4) ^ bitcast<u32>(v)));
      let v_17 = (bitcast<u32>((bitcast<i32>(v_5) * 2i)) + 0u);
      let v_18 = bitcast<vec2<f32>>(vec2<u32>(g0[v_17], g0[(v_17 + 1u)]));
      let v_19 = vec4<f32>(v_18.xy, vec4<f32>(v_6, v_7, v_8, v_9).zw);
      v_6 = v_19.x;
      v_7 = v_19.y;
      v_8 = v_19.z;
      v_9 = v_19.w;
    } else {
      let v_20 = (bitcast<u32>((v * 2i)) + 0u);
      let v_21 = bitcast<vec2<f32>>(vec2<u32>(g0[v_20], g0[(v_20 + 1u)]));
      let v_22 = vec4<f32>(v_21.xy, vec4<f32>(v_6, v_7, v_8, v_9).zw);
      v_6 = v_22.x;
      v_7 = v_22.y;
      v_8 = v_22.z;
      v_9 = v_22.w;
    }
    workgroupBarrier();
    let v_23 = (bitcast<u32>((v * 2i)) + 0u);
    let v_24 = bitcast<vec2<u32>>(vec4<f32>(v_6, v_7, v_8, v_9).xy);
    g0[v_23] = v_24.x;
    g0[(v_23 + 1u)] = v_24.y;
    workgroupBarrier();
    v_4 = bitcast<f32>((bitcast<u32>(v_4) >> 1u));
  }
  let v_25 = (bitcast<u32>((v * 2i)) + 0u);
  let v_26 = bitcast<vec2<f32>>(vec2<u32>(g0[v_25], g0[(v_25 + 1u)]));
  let v_27 = vec4<f32>(v_26.xy, vec4<f32>(v_2, v_3, v_4, v_5).zw);
  v_2 = v_27.x;
  v_3 = v_27.y;
  v_4 = v_27.z;
  v_5 = v_27.w;
  let v_28 = (bitcast<u32>((v_1.x * 2i)) + 0u);
  let v_29 = bitcast<vec2<u32>>(vec4<f32>(v_2, v_3, v_4, v_5).xy);
  u2.tint_symbol_1[v_28] = v_29.x;
  u2.tint_symbol_1[(v_28 + 1u)] = v_29.y;
}
