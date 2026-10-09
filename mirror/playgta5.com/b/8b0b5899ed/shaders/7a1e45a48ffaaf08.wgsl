diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

@group(0u) @binding(161u) var u1 : texture_storage_2d<r32float, write>;

var<workgroup> g0 : array<u32, 256u>;

@compute @workgroup_size(16u, 16u, 1u)
fn main(@builtin(workgroup_id) vThreadGroupID : vec3<u32>, @builtin(local_invocation_id) vThreadIDInGroup : vec3<u32>) {
  let v = vec3<i32>(vThreadIDInGroup);
  let v_1 = vec3<i32>(vThreadGroupID);
  r0.x = bitcast<f32>(((v.y * 16i) + v.x));
  let v_2 = bitcast<vec2<f32>>(((v_1.xy * vec2<i32>(16i)) + v.xy));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = max(cb12_12.tint_symbol[0u].zw, vec2<f32>());
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(v_3), vec2<u32>(4294967295u), (v_3 >= vec2<f32>(4294967296.0f))));
  let v_5 = r0;
  r0 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (bitcast<vec2<u32>>(r1.xy) < bitcast<vec2<u32>>(r0.yz))));
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r1 = vec4<f32>(r1.xy, vec2<f32>());
    r0.y = textureLoad(t2, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).x;
  } else {
    r0.y = 0.0f;
  }
  let v_8 = (bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u);
  g0[v_8] = bitcast<u32>(r0.y);
  workgroupBarrier();
  r1 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<u32>>(r0.xxxx) < vec4<u32>(128u, 64u, 32u, 16u))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r0.z = bitcast<f32>((bitcast<i32>(r0.x) + 128i));
    r0.z = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r0.z) * 1i)) + 0u)]);
    r0.y = (r0.z + r0.y);
    let v_9 = (bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u);
    g0[v_9] = bitcast<u32>(r0.y);
  }
  workgroupBarrier();
  if ((bitcast<u32>(r1.y) != 0u)) {
    r0.y = bitcast<f32>((bitcast<i32>(r0.x) + 64i));
    r0.y = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r0.y) * 1i)) + 0u)]);
    r0.z = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u)]);
    r0.y = (r0.y + r0.z);
    let v_10 = (bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u);
    g0[v_10] = bitcast<u32>(r0.y);
  }
  workgroupBarrier();
  if ((bitcast<u32>(r1.z) != 0u)) {
    r0.y = bitcast<f32>((bitcast<i32>(r0.x) + 32i));
    r0.y = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r0.y) * 1i)) + 0u)]);
    r0.z = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u)]);
    r0.y = (r0.y + r0.z);
    let v_11 = (bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u);
    g0[v_11] = bitcast<u32>(r0.y);
  }
  workgroupBarrier();
  if ((bitcast<u32>(r1.w) != 0u)) {
    r0.y = bitcast<f32>((bitcast<i32>(r0.x) + 16i));
    r0.y = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r0.y) * 1i)) + 0u)]);
    r0.z = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u)]);
    r0.y = (r0.y + r0.z);
    let v_12 = (bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u);
    g0[v_12] = bitcast<u32>(r0.y);
  }
  workgroupBarrier();
  r1 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<u32>>(r0.xxxx) < vec4<u32>(8u, 4u, 2u, 1u))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r0.y = bitcast<f32>((bitcast<i32>(r0.x) + 8i));
    r0.y = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r0.y) * 1i)) + 0u)]);
    r0.z = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u)]);
    r0.y = (r0.y + r0.z);
    let v_13 = (bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u);
    g0[v_13] = bitcast<u32>(r0.y);
  }
  workgroupBarrier();
  if ((bitcast<u32>(r1.y) != 0u)) {
    r0.y = bitcast<f32>((bitcast<i32>(r0.x) + 4i));
    r0.y = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r0.y) * 1i)) + 0u)]);
    r0.z = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u)]);
    r0.y = (r0.y + r0.z);
    let v_14 = (bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u);
    g0[v_14] = bitcast<u32>(r0.y);
  }
  workgroupBarrier();
  if ((bitcast<u32>(r1.z) != 0u)) {
    r0.y = bitcast<f32>((bitcast<i32>(r0.x) + 2i));
    r0.y = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r0.y) * 1i)) + 0u)]);
    r0.z = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u)]);
    r0.y = (r0.y + r0.z);
    let v_15 = (bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u);
    g0[v_15] = bitcast<u32>(r0.y);
  }
  workgroupBarrier();
  if ((bitcast<u32>(r1.w) != 0u)) {
    r0.y = bitcast<f32>(g0[1u]);
    r0.z = bitcast<f32>(g0[0u]);
    r0.y = (r0.y + r0.z);
    g0[0u] = bitcast<u32>(r0.y);
  }
  workgroupBarrier();
  if ((bitcast<u32>(r0.x) != 0u)) {
  } else {
    r0.x = bitcast<f32>(g0[0u]);
    textureStore(u1, v_1.xy, r0.xxxx);
  }
}
