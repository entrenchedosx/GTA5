diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

@group(0u) @binding(161u) var u1 : texture_storage_2d<r32float, write>;

var<workgroup> g0 : array<u32, 1024u>;

@compute @workgroup_size(16u, 16u, 1u)
fn main(@builtin(workgroup_id) vThreadGroupID : vec3<u32>, @builtin(local_invocation_id) vThreadIDInGroup : vec3<u32>) {
  let v = vec3<i32>(vThreadIDInGroup);
  let v_1 = vec3<i32>(vThreadGroupID);
  r0.x = bitcast<f32>(((v.y * 16i) + v.x));
  let v_2 = bitcast<vec2<f32>>((v_1.xy << vec2<u32>(5u)));
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  let v_4 = bitcast<vec2<f32>>(((v.xy * vec2<i32>(2i)) + bitcast<vec2<i32>>(r0.yz)));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2.x = textureLoad(t2, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).x;
  r3 = bitcast<vec4<f32>>((vec4<i32>(0i, 1i, 1i, 0i) + bitcast<vec4<i32>>(r1.xyxy)));
  let v_5 = r3;
  r4 = vec4<f32>(v_5.zw, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r2.y = textureLoad(t2, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w)).x;
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r2.z = textureLoad(t2, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w)).x;
  let v_6 = bitcast<vec2<f32>>((vec2<i32>(1i) + bitcast<vec2<i32>>(r1.xy)));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2.w = textureLoad(t2, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).x;
  let v_7 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
  let v_8 = bitcast<vec4<u32>>(r2);
  g0[v_7] = v_8.x;
  g0[(v_7 + 1u)] = v_8.y;
  g0[(v_7 + 2u)] = v_8.z;
  g0[(v_7 + 3u)] = v_8.w;
  workgroupBarrier();
  r1 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<u32>>(r0.xxxx) < vec4<u32>(128u, 64u, 32u, 16u))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r0.y = bitcast<f32>((bitcast<i32>(r0.x) + 128i));
    let v_9 = (bitcast<u32>((bitcast<i32>(r0.y) * 4i)) + 0u);
    r3 = bitcast<vec4<f32>>(vec4<u32>(g0[v_9], g0[(v_9 + 1u)], g0[(v_9 + 2u)], g0[(v_9 + 3u)]));
    r2 = (r2 + r3);
    let v_10 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
    let v_11 = bitcast<vec4<u32>>(r2);
    g0[v_10] = v_11.x;
    g0[(v_10 + 1u)] = v_11.y;
    g0[(v_10 + 2u)] = v_11.z;
    g0[(v_10 + 3u)] = v_11.w;
  }
  workgroupBarrier();
  if ((bitcast<u32>(r1.y) != 0u)) {
    r0.y = bitcast<f32>((bitcast<i32>(r0.x) + 64i));
    let v_12 = (bitcast<u32>((bitcast<i32>(r0.y) * 4i)) + 0u);
    r2 = bitcast<vec4<f32>>(vec4<u32>(g0[v_12], g0[(v_12 + 1u)], g0[(v_12 + 2u)], g0[(v_12 + 3u)]));
    let v_13 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
    r3 = bitcast<vec4<f32>>(vec4<u32>(g0[v_13], g0[(v_13 + 1u)], g0[(v_13 + 2u)], g0[(v_13 + 3u)]));
    r2 = (r2 + r3);
    let v_14 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
    let v_15 = bitcast<vec4<u32>>(r2);
    g0[v_14] = v_15.x;
    g0[(v_14 + 1u)] = v_15.y;
    g0[(v_14 + 2u)] = v_15.z;
    g0[(v_14 + 3u)] = v_15.w;
  }
  workgroupBarrier();
  if ((bitcast<u32>(r1.z) != 0u)) {
    r0.y = bitcast<f32>((bitcast<i32>(r0.x) + 32i));
    let v_16 = (bitcast<u32>((bitcast<i32>(r0.y) * 4i)) + 0u);
    r2 = bitcast<vec4<f32>>(vec4<u32>(g0[v_16], g0[(v_16 + 1u)], g0[(v_16 + 2u)], g0[(v_16 + 3u)]));
    let v_17 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
    r3 = bitcast<vec4<f32>>(vec4<u32>(g0[v_17], g0[(v_17 + 1u)], g0[(v_17 + 2u)], g0[(v_17 + 3u)]));
    r2 = (r2 + r3);
    let v_18 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
    let v_19 = bitcast<vec4<u32>>(r2);
    g0[v_18] = v_19.x;
    g0[(v_18 + 1u)] = v_19.y;
    g0[(v_18 + 2u)] = v_19.z;
    g0[(v_18 + 3u)] = v_19.w;
  }
  workgroupBarrier();
  if ((bitcast<u32>(r1.w) != 0u)) {
    r0.y = bitcast<f32>((bitcast<i32>(r0.x) + 16i));
    let v_20 = (bitcast<u32>((bitcast<i32>(r0.y) * 4i)) + 0u);
    r1 = bitcast<vec4<f32>>(vec4<u32>(g0[v_20], g0[(v_20 + 1u)], g0[(v_20 + 2u)], g0[(v_20 + 3u)]));
    let v_21 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
    r2 = bitcast<vec4<f32>>(vec4<u32>(g0[v_21], g0[(v_21 + 1u)], g0[(v_21 + 2u)], g0[(v_21 + 3u)]));
    r1 = (r1 + r2);
    let v_22 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
    let v_23 = bitcast<vec4<u32>>(r1);
    g0[v_22] = v_23.x;
    g0[(v_22 + 1u)] = v_23.y;
    g0[(v_22 + 2u)] = v_23.z;
    g0[(v_22 + 3u)] = v_23.w;
  }
  workgroupBarrier();
  r1 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<u32>>(r0.xxxx) < vec4<u32>(8u, 4u, 2u, 1u))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r0.y = bitcast<f32>((bitcast<i32>(r0.x) + 8i));
    let v_24 = (bitcast<u32>((bitcast<i32>(r0.y) * 4i)) + 0u);
    r2 = bitcast<vec4<f32>>(vec4<u32>(g0[v_24], g0[(v_24 + 1u)], g0[(v_24 + 2u)], g0[(v_24 + 3u)]));
    let v_25 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
    r3 = bitcast<vec4<f32>>(vec4<u32>(g0[v_25], g0[(v_25 + 1u)], g0[(v_25 + 2u)], g0[(v_25 + 3u)]));
    r2 = (r2 + r3);
    let v_26 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
    let v_27 = bitcast<vec4<u32>>(r2);
    g0[v_26] = v_27.x;
    g0[(v_26 + 1u)] = v_27.y;
    g0[(v_26 + 2u)] = v_27.z;
    g0[(v_26 + 3u)] = v_27.w;
  }
  workgroupBarrier();
  if ((bitcast<u32>(r1.y) != 0u)) {
    r0.y = bitcast<f32>((bitcast<i32>(r0.x) + 4i));
    let v_28 = (bitcast<u32>((bitcast<i32>(r0.y) * 4i)) + 0u);
    r2 = bitcast<vec4<f32>>(vec4<u32>(g0[v_28], g0[(v_28 + 1u)], g0[(v_28 + 2u)], g0[(v_28 + 3u)]));
    let v_29 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
    r3 = bitcast<vec4<f32>>(vec4<u32>(g0[v_29], g0[(v_29 + 1u)], g0[(v_29 + 2u)], g0[(v_29 + 3u)]));
    r2 = (r2 + r3);
    let v_30 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
    let v_31 = bitcast<vec4<u32>>(r2);
    g0[v_30] = v_31.x;
    g0[(v_30 + 1u)] = v_31.y;
    g0[(v_30 + 2u)] = v_31.z;
    g0[(v_30 + 3u)] = v_31.w;
  }
  workgroupBarrier();
  if ((bitcast<u32>(r1.z) != 0u)) {
    r0.y = bitcast<f32>((bitcast<i32>(r0.x) + 2i));
    let v_32 = (bitcast<u32>((bitcast<i32>(r0.y) * 4i)) + 0u);
    r2 = bitcast<vec4<f32>>(vec4<u32>(g0[v_32], g0[(v_32 + 1u)], g0[(v_32 + 2u)], g0[(v_32 + 3u)]));
    let v_33 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
    r3 = bitcast<vec4<f32>>(vec4<u32>(g0[v_33], g0[(v_33 + 1u)], g0[(v_33 + 2u)], g0[(v_33 + 3u)]));
    r2 = (r2 + r3);
    let v_34 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
    let v_35 = bitcast<vec4<u32>>(r2);
    g0[v_34] = v_35.x;
    g0[(v_34 + 1u)] = v_35.y;
    g0[(v_34 + 2u)] = v_35.z;
    g0[(v_34 + 3u)] = v_35.w;
  }
  workgroupBarrier();
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1 = bitcast<vec4<f32>>(vec4<u32>(g0[4u], g0[5u], g0[6u], g0[7u]));
    r2 = bitcast<vec4<f32>>(vec4<u32>(g0[0u], g0[1u], g0[2u], g0[3u]));
    r1 = (r1 + r2);
    let v_36 = bitcast<vec4<u32>>(r1);
    g0[0u] = v_36.x;
    g0[1u] = v_36.y;
    g0[2u] = v_36.z;
    g0[3u] = v_36.w;
  }
  workgroupBarrier();
  if ((bitcast<u32>(r0.x) != 0u)) {
  } else {
    r0 = bitcast<vec4<f32>>(vec4<u32>(g0[0u], g0[1u], g0[2u], g0[3u]));
    r0.x = dot(r0, vec4<f32>(0.25f));
    r0.x = (r0.x * 0.00390625f);
    textureStore(u1, v_1.xy, r0.xxxx);
  }
}
