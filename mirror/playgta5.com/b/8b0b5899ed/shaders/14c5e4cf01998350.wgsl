diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct tint_symbol_2 {
  tint_symbol_1 : array<u32>,
}

@group(0u) @binding(160u) var<storage, read_write> u0 : tint_symbol_2;

@compute @workgroup_size(64u, 1u, 1u)
fn main(@builtin(global_invocation_id) vThreadID : vec3<u32>) {
  r0.x = bitcast<f32>((vec3<i32>(vThreadID).x << 6u));
  r0.y = r0.x;
  loop {
    r0.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(r0.y) >= bitcast<u32>(cb0_0.tint_symbol[0u].x))));
    if ((bitcast<u32>(r0.z) != 0u)) {
      break;
    }
    let v = (bitcast<u32>(r0.y) >> 2u);
    let v_1 = bitcast<vec4<u32>>(cb0_0.tint_symbol[0u].zzzz);
    u0.tint_symbol_1[v] = v_1.x;
    u0.tint_symbol_1[(v + 1u)] = v_1.y;
    u0.tint_symbol_1[(v + 2u)] = v_1.z;
    u0.tint_symbol_1[(v + 3u)] = v_1.w;
    let v_2 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r0.yyy) + vec3<i32>(16i, 32i, 48i)));
    r1 = vec4<f32>(v_2.xyz, r1.w);
    let v_3 = (bitcast<u32>(r1.x) >> 2u);
    let v_4 = bitcast<vec4<u32>>(cb0_0.tint_symbol[0u].zzzz);
    u0.tint_symbol_1[v_3] = v_4.x;
    u0.tint_symbol_1[(v_3 + 1u)] = v_4.y;
    u0.tint_symbol_1[(v_3 + 2u)] = v_4.z;
    u0.tint_symbol_1[(v_3 + 3u)] = v_4.w;
    let v_5 = (bitcast<u32>(r1.y) >> 2u);
    let v_6 = bitcast<vec4<u32>>(cb0_0.tint_symbol[0u].zzzz);
    u0.tint_symbol_1[v_5] = v_6.x;
    u0.tint_symbol_1[(v_5 + 1u)] = v_6.y;
    u0.tint_symbol_1[(v_5 + 2u)] = v_6.z;
    u0.tint_symbol_1[(v_5 + 3u)] = v_6.w;
    let v_7 = (bitcast<u32>(r1.z) >> 2u);
    let v_8 = bitcast<vec4<u32>>(cb0_0.tint_symbol[0u].zzzz);
    u0.tint_symbol_1[v_7] = v_8.x;
    u0.tint_symbol_1[(v_7 + 1u)] = v_8.y;
    u0.tint_symbol_1[(v_7 + 2u)] = v_8.z;
    u0.tint_symbol_1[(v_7 + 3u)] = v_8.w;
    r0.y = bitcast<f32>((bitcast<i32>(r0.y) + bitcast<i32>(cb0_0.tint_symbol[0u].y)));
  }
}
