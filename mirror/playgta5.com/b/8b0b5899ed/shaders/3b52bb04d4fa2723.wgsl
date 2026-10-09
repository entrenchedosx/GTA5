diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct tint_symbol_2 {
  tint_symbol_1 : array<u32>,
}

@group(0u) @binding(32u) var<storage, read> t0 : tint_symbol_2;

struct tint_symbol_4 {
  tint_symbol_3 : array<u32>,
}

@group(0u) @binding(160u) var<storage, read_write> u0 : tint_symbol_4;

@compute @workgroup_size(64u, 1u, 1u)
fn main(@builtin(global_invocation_id) vThreadID : vec3<u32>) {
  r0.x = bitcast<f32>((vec3<i32>(vThreadID).x << 6u));
  r0.y = r0.x;
  loop {
    r0.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(r0.y) >= bitcast<u32>(cb0_0.tint_symbol[0u].x))));
    if ((bitcast<u32>(r0.z) != 0u)) {
      break;
    }
    let v = (bitcast<u32>(bitcast<i32>(r0.y)) >> 2u);
    let v_1 = t0.tint_symbol_1[v];
    let v_2 = t0.tint_symbol_1[(v + 1u)];
    let v_3 = t0.tint_symbol_1[(v + 2u)];
    let v_4 = t0.tint_symbol_1[(v + 3u)];
    r1 = bitcast<vec4<f32>>(vec4<u32>(vec4<u32>(v_1, v_1, v_1, v_1).x, vec4<u32>(v_2, v_2, v_2, v_2).x, vec4<u32>(v_3, v_3, v_3, v_3).x, vec4<u32>(v_4, v_4, v_4, v_4).x));
    let v_5 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r0.yyy) + vec3<i32>(16i, 32i, 48i)));
    r2 = vec4<f32>(v_5.xyz, r2.w);
    let v_6 = (bitcast<u32>(bitcast<i32>(r2.x)) >> 2u);
    let v_7 = t0.tint_symbol_1[v_6];
    let v_8 = t0.tint_symbol_1[(v_6 + 1u)];
    let v_9 = t0.tint_symbol_1[(v_6 + 2u)];
    let v_10 = t0.tint_symbol_1[(v_6 + 3u)];
    r3 = bitcast<vec4<f32>>(vec4<u32>(vec4<u32>(v_7, v_7, v_7, v_7).x, vec4<u32>(v_8, v_8, v_8, v_8).x, vec4<u32>(v_9, v_9, v_9, v_9).x, vec4<u32>(v_10, v_10, v_10, v_10).x));
    let v_11 = (bitcast<u32>(bitcast<i32>(r2.y)) >> 2u);
    let v_12 = t0.tint_symbol_1[v_11];
    let v_13 = t0.tint_symbol_1[(v_11 + 1u)];
    let v_14 = t0.tint_symbol_1[(v_11 + 2u)];
    let v_15 = t0.tint_symbol_1[(v_11 + 3u)];
    r4 = bitcast<vec4<f32>>(vec4<u32>(vec4<u32>(v_12, v_12, v_12, v_12).x, vec4<u32>(v_13, v_13, v_13, v_13).x, vec4<u32>(v_14, v_14, v_14, v_14).x, vec4<u32>(v_15, v_15, v_15, v_15).x));
    let v_16 = (bitcast<u32>(bitcast<i32>(r2.z)) >> 2u);
    let v_17 = t0.tint_symbol_1[v_16];
    let v_18 = t0.tint_symbol_1[(v_16 + 1u)];
    let v_19 = t0.tint_symbol_1[(v_16 + 2u)];
    let v_20 = t0.tint_symbol_1[(v_16 + 3u)];
    r5 = bitcast<vec4<f32>>(vec4<u32>(vec4<u32>(v_17, v_17, v_17, v_17).x, vec4<u32>(v_18, v_18, v_18, v_18).x, vec4<u32>(v_19, v_19, v_19, v_19).x, vec4<u32>(v_20, v_20, v_20, v_20).x));
    let v_21 = (bitcast<u32>(r0.y) >> 2u);
    let v_22 = bitcast<vec4<u32>>(r1);
    u0.tint_symbol_3[v_21] = v_22.x;
    u0.tint_symbol_3[(v_21 + 1u)] = v_22.y;
    u0.tint_symbol_3[(v_21 + 2u)] = v_22.z;
    u0.tint_symbol_3[(v_21 + 3u)] = v_22.w;
    let v_23 = (bitcast<u32>(r2.x) >> 2u);
    let v_24 = bitcast<vec4<u32>>(r3);
    u0.tint_symbol_3[v_23] = v_24.x;
    u0.tint_symbol_3[(v_23 + 1u)] = v_24.y;
    u0.tint_symbol_3[(v_23 + 2u)] = v_24.z;
    u0.tint_symbol_3[(v_23 + 3u)] = v_24.w;
    let v_25 = (bitcast<u32>(r2.y) >> 2u);
    let v_26 = bitcast<vec4<u32>>(r4);
    u0.tint_symbol_3[v_25] = v_26.x;
    u0.tint_symbol_3[(v_25 + 1u)] = v_26.y;
    u0.tint_symbol_3[(v_25 + 2u)] = v_26.z;
    u0.tint_symbol_3[(v_25 + 3u)] = v_26.w;
    let v_27 = (bitcast<u32>(r2.z) >> 2u);
    let v_28 = bitcast<vec4<u32>>(r5);
    u0.tint_symbol_3[v_27] = v_28.x;
    u0.tint_symbol_3[(v_27 + 1u)] = v_28.y;
    u0.tint_symbol_3[(v_27 + 2u)] = v_28.z;
    u0.tint_symbol_3[(v_27 + 3u)] = v_28.w;
    r0.y = bitcast<f32>((bitcast<i32>(r0.y) + bitcast<i32>(cb0_0.tint_symbol[0u].y)));
  }
}
