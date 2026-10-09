diagnostic(off, derivative_uniformity);

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb18_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb4_struct;

@group(0u) @binding(39u) var t7 : texture_2d<f32>;

@group(0u) @binding(40u) var t8 : texture_2d<f32>;

@group(0u) @binding(161u) var u1 : texture_storage_2d<rgba32float, write>;

var<workgroup> g0 : array<atomic<u32>, 1536u>;

struct tint_symbol_3 {
  tint_symbol_2 : array<vec4<u32>, 6u>,
}

@group(0u) @binding(15u) var<uniform> v : tint_symbol_3;

@compute @workgroup_size(8u, 8u, 1u)
fn main(@builtin(workgroup_id) vThreadGroupID : vec3<u32>, @builtin(local_invocation_id) vThreadIDInGroup : vec3<u32>) {
  let v_1 = vec3<i32>(vThreadIDInGroup);
  let v_2 = vec3<i32>(vThreadGroupID);
  var v_3 : f32 = 0.0f;
  var v_4 : f32 = 0.0f;
  var v_5 : f32 = 0.0f;
  var v_6 : f32 = 0.0f;
  var v_7 : f32 = 0.0f;
  var v_8 : f32 = 0.0f;
  var v_9 : f32 = 0.0f;
  var v_10 : f32 = 0.0f;
  var v_11 : f32 = 0.0f;
  var v_12 : f32 = 0.0f;
  var v_13 : f32 = 0.0f;
  var v_14 : f32 = 0.0f;
  v_3 = bitcast<f32>(((v_1.y * 8i) + v_1.x));
  let v_15 = bitcast<vec2<f32>>(((v_2.xy * vec2<i32>(8i)) + v_1.xy));
  let v_16 = vec4<f32>(v_15.xy, vec4<f32>(v_7, v_8, v_9, v_10).zw);
  v_7 = v_16.x;
  v_8 = v_16.y;
  v_9 = v_16.z;
  v_10 = v_16.w;
  let v_17 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (bitcast<vec2<u32>>(vec4<f32>(v_7, v_8, v_9, v_10).xy) < bitcast<vec2<u32>>(cb10_10.tint_symbol_1[3u].xy))));
  let v_18 = vec4<f32>(v_17.xy, vec4<f32>(v_11, v_12, v_13, v_14).zw);
  v_11 = v_18.x;
  v_12 = v_18.y;
  v_13 = v_18.z;
  v_14 = v_18.w;
  v_11 = bitcast<f32>((bitcast<u32>(v_12) & bitcast<u32>(v_11)));
  if ((bitcast<u32>(v_11) != 0u)) {
    let v_19 = vec4<f32>(vec4<f32>(v_7, v_8, v_9, v_10).xy, vec2<f32>());
    v_7 = v_19.x;
    v_8 = v_19.y;
    v_9 = v_19.z;
    v_10 = v_19.w;
    v_11 = textureLoad(t7, bitcast<vec2<i32>>(vec4<f32>(v_7, v_8, v_9, v_10).xy), bitcast<i32>(v_10)).x;
    v_11 = ((-(vec4<f32>(v_11, v_12, v_13, v_14).xxxx)).x + 1.0f);
    let v_20 = textureLoad(t8, bitcast<vec2<i32>>(vec4<f32>(v_7, v_8, v_9, v_10).xy), bitcast<i32>(v_10)).xw;
    let v_21 = vec4<f32>(v_20.xy, vec4<f32>(v_7, v_8, v_9, v_10).zw);
    v_7 = v_21.x;
    v_8 = v_21.y;
    v_9 = v_21.z;
    v_10 = v_21.w;
    v_9 = bitcast<f32>(select(0u, 4294967295u, (v_11 < 1.0f)));
    v_10 = bitcast<f32>((bitcast<u32>(v_9) & 1u));
    let v_22 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(vec4<f32>(v_7, v_8, v_9, v_10).xy) * bitcast<vec2<i32>>(vec4<f32>(v_7, v_8, v_9, v_10).ww)));
    let v_23 = vec4<f32>(v_11, v_12, v_13, v_14);
    let v_24 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
    v_11 = v_24.x;
    v_12 = v_24.y;
    v_13 = v_24.z;
    v_14 = v_24.w;
    let v_25 = (bitcast<u32>(v_9) != 0u);
    v_14 = select(bitcast<f32>(v.tint_symbol_2[0i].x), 0.0f, v_25);
    let v_26 = vec4<f32>(v_11, v_12, v_13, v_14);
    let v_27 = vec4<f32>(v_26.zw, vec4<f32>(v_7, v_8, v_9, v_10).zw);
    v_7 = v_27.x;
    v_8 = v_27.y;
    v_9 = v_27.z;
    v_10 = v_27.w;
    let v_28 = vec4<f32>(v_11, v_12, v_13, v_14).xxyz;
    v_11 = v_28.x;
    v_12 = v_28.y;
    v_13 = v_28.z;
    v_14 = v_28.w;
  } else {
    let v_29 = vec4<f32>(vec2<f32>(1073741824.0f, 0.0f), vec4<f32>(v_7, v_8, v_9, v_10).zw);
    v_7 = v_29.x;
    v_8 = v_29.y;
    v_9 = v_29.z;
    v_10 = v_29.w;
    v_11 = 1073741824.0f;
    v_12 = 0.0f;
    v_13 = 0.0f;
    v_14 = 0.0f;
  }
  let v_30 = (bitcast<u32>((bitcast<i32>(v_3) * 6i)) + 4u);
  let v_31 = bitcast<vec2<u32>>(vec4<f32>(v_7, v_8, v_9, v_10).xy);
  atomicStore(&(g0[v_30]), v_31.x);
  atomicStore(&(g0[(v_30 + 1u)]), v_31.y);
  let v_32 = (bitcast<u32>((bitcast<i32>(v_3) * 6i)) + 0u);
  let v_33 = bitcast<vec4<u32>>(vec4<f32>(v_11, v_12, v_13, v_14));
  atomicStore(&(g0[v_32]), v_33.x);
  atomicStore(&(g0[(v_32 + 1u)]), v_33.y);
  atomicStore(&(g0[(v_32 + 2u)]), v_33.z);
  atomicStore(&(g0[(v_32 + 3u)]), v_33.w);
  workgroupBarrier();
  let v_34 = vec4<f32>(v_3, v_4, v_5, v_6);
  let v_35 = vec4<f32>(v_34.x, vec3<f32>(0.0f, bitcast<f32>(v.tint_symbol_2[1i].x), bitcast<f32>(v.tint_symbol_2[2i].x)).xyz);
  v_3 = v_35.x;
  v_4 = v_35.y;
  v_5 = v_35.z;
  v_6 = v_35.w;
  v_7 = v_3;
  let v_36 = vec4<f32>(v_7, v_8, v_9, v_10);
  let v_37 = vec4<f32>(v_36.x, vec2<f32>(bitcast<f32>(v.tint_symbol_2[3i].x), bitcast<f32>(v.tint_symbol_2[4i].x)).xy, v_36.w);
  v_7 = v_37.x;
  v_8 = v_37.y;
  v_9 = v_37.z;
  v_10 = v_37.w;
  v_10 = bitcast<f32>(v.tint_symbol_2[5i].x);
  loop {
    v_11 = bitcast<f32>(select(0u, 4294967295u, (0u >= bitcast<u32>(v_10))));
    if ((bitcast<u32>(v_11) != 0u)) {
      break;
    }
    v_11 = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(v_7) < bitcast<u32>(v_10))));
    if ((bitcast<u32>(v_11) != 0u)) {
      v_11 = bitcast<f32>((bitcast<i32>(v_7) + bitcast<i32>(v_10)));
      v_12 = bitcast<f32>(atomicLoad(&(g0[(bitcast<u32>((bitcast<i32>(v_11) * 6i)) + 0u)])));
      _ = atomicMin(&(g0[(bitcast<u32>((bitcast<i32>(v_3) * 6i)) + (bitcast<u32>(bitcast<i32>(v_4)) >> 2u))]), bitcast<u32>(v_12));
      v_12 = bitcast<f32>(atomicLoad(&(g0[(bitcast<u32>((bitcast<i32>(v_11) * 6i)) + 1u)])));
      _ = atomicMax(&(g0[(bitcast<u32>((bitcast<i32>(v_3) * 6i)) + (bitcast<u32>(bitcast<i32>(v_5)) >> 2u))]), bitcast<u32>(v_12));
      v_12 = bitcast<f32>(atomicLoad(&(g0[(bitcast<u32>((bitcast<i32>(v_11) * 6i)) + 2u)])));
      _ = atomicMax(&(g0[(bitcast<u32>((bitcast<i32>(v_3) * 6i)) + (bitcast<u32>(bitcast<i32>(v_6)) >> 2u))]), bitcast<u32>(v_12));
      v_12 = bitcast<f32>(atomicLoad(&(g0[(bitcast<u32>((bitcast<i32>(v_11) * 6i)) + 3u)])));
      _ = atomicMax(&(g0[(bitcast<u32>((bitcast<i32>(v_7) * 6i)) + (bitcast<u32>(bitcast<i32>(v_8)) >> 2u))]), bitcast<u32>(v_12));
      v_12 = bitcast<f32>(atomicLoad(&(g0[(bitcast<u32>((bitcast<i32>(v_11) * 6i)) + 4u)])));
      _ = atomicMin(&(g0[(bitcast<u32>((bitcast<i32>(v_7) * 6i)) + (bitcast<u32>(bitcast<i32>(v_9)) >> 2u))]), bitcast<u32>(v_12));
      v_11 = bitcast<f32>(atomicLoad(&(g0[(bitcast<u32>((bitcast<i32>(v_11) * 6i)) + 5u)])));
      v_12 = bitcast<f32>(atomicLoad(&(g0[(bitcast<u32>((bitcast<i32>(v_3) * 6i)) + 5u)])));
      v_11 = bitcast<f32>((bitcast<i32>(v_12) + bitcast<i32>(v_11)));
      let v_38 = (bitcast<u32>((bitcast<i32>(v_3) * 6i)) + 5u);
      atomicStore(&(g0[v_38]), bitcast<u32>(v_11));
    }
    workgroupBarrier();
    v_10 = bitcast<f32>((bitcast<u32>(v_10) >> 1u));
  }
  if ((bitcast<u32>(v_7) != 0u)) {
  } else {
    let v_39 = bitcast<vec4<f32>>(vec4<u32>(atomicLoad(&(g0[0u])), atomicLoad(&(g0[1u])), atomicLoad(&(g0[2u])), atomicLoad(&(g0[3u]))));
    v_3 = v_39.x;
    v_4 = v_39.y;
    v_5 = v_39.z;
    v_6 = v_39.w;
    let v_40 = (vec4<f32>(v_3, v_4, v_5, v_6).xy + cb11_11.tint_symbol[17u].ww);
    let v_41 = vec4<f32>(v_40.xy, vec4<f32>(v_3, v_4, v_5, v_6).zw);
    v_3 = v_41.x;
    v_4 = v_41.y;
    v_5 = v_41.z;
    v_6 = v_41.w;
    let v_42 = (cb11_11.tint_symbol[17u].zz / vec4<f32>(v_3, v_4, v_5, v_6).xy);
    let v_43 = vec4<f32>(v_42.xy, vec4<f32>(v_7, v_8, v_9, v_10).zw);
    v_7 = v_43.x;
    v_8 = v_43.y;
    v_9 = v_43.z;
    v_10 = v_43.w;
    v_3 = bitcast<f32>(atomicLoad(&(g0[5u])));
    v_3 = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(v_3) == 64i)));
    let v_44 = bitcast<vec2<u32>>(vec4<f32>(v_3, v_4, v_5, v_6).xx);
    let v_45 = select(vec4<f32>(v_3, v_4, v_5, v_6).zw, vec2<f32>(-1.0f, 0.0f), (v_44 != vec2<u32>()));
    let v_46 = vec4<f32>(vec4<f32>(v_7, v_8, v_9, v_10).xy, v_45.xy);
    v_7 = v_46.x;
    v_8 = v_46.y;
    v_9 = v_46.z;
    v_10 = v_46.w;
    textureStore(u1, v_2.xy, vec4<f32>(v_7, v_8, v_9, v_10));
  }
}
