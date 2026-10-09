diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

struct cb5_struct {
  tint_symbol : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(19u) var s3 : sampler;

@group(0u) @binding(20u) var s4 : sampler;

struct tint_symbol_2 {
  tint_symbol_1 : array<u32>,
}

@group(0u) @binding(32u) var<storage, read> t0 : tint_symbol_2;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

@group(0u) @binding(35u) var t3 : texture_2d<f32>;

@group(0u) @binding(36u) var t4 : texture_2d<f32>;

@group(0u) @binding(160u) var u0 : texture_storage_2d<rgba32float, write>;

var<workgroup> g0 : array<u32, 1792u>;

@compute @workgroup_size(256u, 1u, 1u)
fn main(@builtin(workgroup_id) vThreadGroupID : vec3<u32>, @builtin(local_invocation_id) vThreadIDInGroup : vec3<u32>) {
  let v = vec3<i32>(vThreadIDInGroup);
  let v_1 = vec3<i32>(vThreadGroupID);
  r0.x = bitcast<f32>((v.x + -15i));
  r1.x = bitcast<f32>(((v_1.x * 226i) + bitcast<i32>(r0.x)));
  let v_2 = cb12_12.tint_symbol[3u].x;
  let v_3 = max(v_2, -2147483648.0f);
  r0.y = bitcast<f32>(select(select(i32(v_3), 2147483647i, (v_3 >= 2147483648.0f)), 0i, !((v_2 == v_2))));
  r2.x = f32(bitcast<i32>(r1.x));
  r2.y = f32(v_1.y);
  let v_4 = (r2.xy + vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = (r0.zw * cb12_12.tint_symbol[3u].zw);
  r0 = vec4<f32>(r0.xy, v_5.xy);
  r2.x = textureSampleLevel(t4, s4, r0.zwzz.xy, 0.0f).y;
  r3 = textureSampleLevel(t2, s2, r0.zwzz.xy, 0.0f);
  r3 = max(r3, vec4<f32>());
  let v_6 = textureSampleLevel(t3, s3, r0.zwzz.xy, 0.0f).xy;
  r0 = vec4<f32>(r0.xy, v_6.xy);
  r2.z = (cb12_12.tint_symbol[1u].z / r0.z);
  let v_7 = -(cb12_12.tint_symbol[1u].wwww);
  r2.z = (r2.z + v_7.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 1.0f)));
  let v_8 = bitcast<u32>(r2.z);
  r2.y = select(1.0f, cb12_12.tint_symbol[2u].x, (v_8 != 0u));
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.x)));
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.x)));
  r2.z = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r2.z)));
  if ((bitcast<u32>(r2.z) != 0u)) {
  } else {
    r2.x = r0.w;
  }
  let v_9 = r3;
  r4 = vec4<f32>(v_9.xyz, r4.w);
  r4.w = r0.z;
  let v_10 = (bitcast<u32>((v.x * 7i)) + 0u);
  let v_11 = bitcast<vec4<u32>>(r4);
  g0[v_10] = v_11.x;
  g0[(v_10 + 1u)] = v_11.y;
  g0[(v_10 + 2u)] = v_11.z;
  g0[(v_10 + 3u)] = v_11.w;
  let v_12 = (bitcast<u32>((v.x * 7i)) + 4u);
  let v_13 = bitcast<vec2<u32>>(r2.xy);
  g0[v_12] = v_13.x;
  g0[(v_12 + 1u)] = v_13.y;
  workgroupBarrier();
  r0.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) >= 0i)));
  r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) < 226i)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r2.z)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.x) < bitcast<i32>(r0.y))));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.w)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r0.y = (r2.x * 15.0f);
    r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol[4u].x))));
    r2.z = ceil(r0.y);
    let v_14 = bitcast<u32>(r0.w);
    let v_15 = r2.z;
    r0.y = select(r0.y, v_15, (v_14 != 0u));
    let v_16 = r0.y;
    let v_17 = max(v_16, -2147483648.0f);
    r0.y = bitcast<f32>(select(select(i32(v_17), 2147483647i, (v_17 >= 2147483648.0f)), 0i, !((v_16 == v_16))));
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(r0.y))));
    if ((bitcast<u32>(r0.w) != 0u)) {
      r0.w = bitcast<f32>((bitcast<i32>(r0.y) + -1i));
      let v_18 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r0.w) * 1i)) + 0u)];
      r0.w = bitcast<f32>(vec4<u32>(v_18, v_18, v_18, v_18).x);
      let v_19 = r0.w;
      let v_20 = max(v_19, -2147483648.0f);
      r0.w = bitcast<f32>(select(select(i32(v_20), 2147483647i, (v_20 >= 2147483648.0f)), 0i, !((v_19 == v_19))));
      let v_21 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r0.w) * 1i)) + 0u)];
      r2.z = bitcast<f32>(vec4<u32>(v_21, v_21, v_21, v_21).x);
      r2.x = clamp(((r2.xxxx + vec4<f32>(1.0f))).x, 0.0f, 1.0f);
      r2.x = (r2.z * r2.x);
      r2.z = (r2.y * r2.x);
      let v_22 = bitcast<vec2<f32>>((v.xx + vec2<i32>(1i, -1i)));
      r5 = vec4<f32>(v_22.xy, r5.zw);
      r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 1i));
      let v_23 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
      r2.w = bitcast<f32>(vec4<u32>(v_23, v_23, v_23, v_23).x);
      let v_24 = (bitcast<u32>((bitcast<i32>(r5.x) * 7i)) + 0u);
      r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_24], g0[(v_24 + 1u)], g0[(v_24 + 2u)], g0[(v_24 + 3u)]));
      let v_25 = (bitcast<u32>((bitcast<i32>(r5.x) * 7i)) + 4u);
      let v_26 = bitcast<vec2<f32>>(vec2<u32>(g0[v_25], g0[(v_25 + 1u)]));
      let v_27 = r5;
      r5 = vec4<f32>(v_26.x, v_27.y, v_26.y, v_27.w);
      r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
      r4.w = bitcast<f32>((bitcast<u32>(r4.w) & 1065353216u));
      r4.w = clamp(((r5.xxxx + r4.wwww)).w, 0.0f, 1.0f);
      r4.w = (r2.w * r4.w);
      r4.w = (r5.z * r4.w);
      let v_28 = (r4.www * r6.xyz);
      r5 = vec4<f32>(v_28.x, r5.y, v_28.yz);
      let v_29 = fma(r4.xyz, r2.zzz, r5.xzw);
      r4 = vec4<f32>(v_29.xyz, r4.w);
      r2.x = fma(r2.x, r2.y, r4.w);
      let v_30 = (bitcast<u32>((bitcast<i32>(r5.y) * 7i)) + 0u);
      r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_30], g0[(v_30 + 1u)], g0[(v_30 + 2u)], g0[(v_30 + 3u)]));
      let v_31 = (bitcast<u32>((bitcast<i32>(r5.y) * 7i)) + 4u);
      let v_32 = bitcast<vec2<f32>>(vec2<u32>(g0[v_31], g0[(v_31 + 1u)]));
      let v_33 = r2;
      r2 = vec4<f32>(v_33.x, v_32.xy, v_33.w);
      r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
      r4.w = bitcast<f32>((bitcast<u32>(r4.w) & 1065353216u));
      r2.y = clamp(((r2.yyyy + r4.wwww)).y, 0.0f, 1.0f);
      r2.y = (r2.w * r2.y);
      r2.w = (r2.z * r2.y);
      let v_34 = fma(r6.xyz, r2.www, r4.xyz);
      r4 = vec4<f32>(v_34.xyz, r4.w);
      r2.x = fma(r2.y, r2.z, r2.x);
      r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r0.yyyy) >= vec4<i32>(2i, 3i, 4i, 5i))));
      if ((bitcast<u32>(r5.x) != 0u)) {
        let v_35 = bitcast<vec2<f32>>((v.xx + vec2<i32>(2i, -2i)));
        let v_36 = r2;
        r2 = vec4<f32>(v_36.x, v_35.xy, v_36.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 2i));
        let v_37 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_37, v_37, v_37, v_37).x);
        let v_38 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_38], g0[(v_38 + 1u)], g0[(v_38 + 2u)], g0[(v_38 + 3u)]));
        let v_39 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_40 = bitcast<vec2<f32>>(vec2<u32>(g0[v_39], g0[(v_39 + 1u)]));
        r7 = vec4<f32>(v_40.xy, r7.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r7.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r7.y * r2.y);
        let v_41 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_41.xyz, r6.w);
        r2.y = fma(r2.y, r7.y, r2.x);
        let v_42 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_42], g0[(v_42 + 1u)], g0[(v_42 + 2u)], g0[(v_42 + 3u)]));
        let v_43 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_44 = bitcast<vec2<f32>>(vec2<u32>(g0[v_43], g0[(v_43 + 1u)]));
        r8 = vec4<f32>(v_44.xy, r8.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r8.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r8.y * r2.z);
        let v_45 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_45.xyz, r4.w);
        r2.x = fma(r2.z, r8.y, r2.y);
      }
      if ((bitcast<u32>(r5.y) != 0u)) {
        let v_46 = bitcast<vec2<f32>>((v.xx + vec2<i32>(3i, -3i)));
        let v_47 = r2;
        r2 = vec4<f32>(v_47.x, v_46.xy, v_47.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 3i));
        let v_48 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_48, v_48, v_48, v_48).x);
        let v_49 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_49], g0[(v_49 + 1u)], g0[(v_49 + 2u)], g0[(v_49 + 3u)]));
        let v_50 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_51 = bitcast<vec2<f32>>(vec2<u32>(g0[v_50], g0[(v_50 + 1u)]));
        r5 = vec4<f32>(v_51.xy, r5.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r5.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r5.y * r2.y);
        let v_52 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_52.xyz, r6.w);
        r2.y = fma(r2.y, r5.y, r2.x);
        let v_53 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_53], g0[(v_53 + 1u)], g0[(v_53 + 2u)], g0[(v_53 + 3u)]));
        let v_54 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_55 = bitcast<vec2<f32>>(vec2<u32>(g0[v_54], g0[(v_54 + 1u)]));
        r5 = vec4<f32>(v_55.xy, r5.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r5.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r5.y * r2.z);
        let v_56 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_56.xyz, r4.w);
        r2.x = fma(r2.z, r5.y, r2.y);
      }
      if ((bitcast<u32>(r5.z) != 0u)) {
        let v_57 = bitcast<vec2<f32>>((v.xx + vec2<i32>(4i, -4i)));
        let v_58 = r2;
        r2 = vec4<f32>(v_58.x, v_57.xy, v_58.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 4i));
        let v_59 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_59, v_59, v_59, v_59).x);
        let v_60 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_60], g0[(v_60 + 1u)], g0[(v_60 + 2u)], g0[(v_60 + 3u)]));
        let v_61 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_62 = bitcast<vec2<f32>>(vec2<u32>(g0[v_61], g0[(v_61 + 1u)]));
        r5 = vec4<f32>(v_62.xy, r5.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r5.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r5.y * r2.y);
        let v_63 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_63.xyz, r6.w);
        r2.y = fma(r2.y, r5.y, r2.x);
        let v_64 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_64], g0[(v_64 + 1u)], g0[(v_64 + 2u)], g0[(v_64 + 3u)]));
        let v_65 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_66 = bitcast<vec2<f32>>(vec2<u32>(g0[v_65], g0[(v_65 + 1u)]));
        r5 = vec4<f32>(v_66.xy, r5.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r5.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r5.y * r2.z);
        let v_67 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_67.xyz, r4.w);
        r2.x = fma(r2.z, r5.y, r2.y);
      }
      if ((bitcast<u32>(r5.w) != 0u)) {
        let v_68 = bitcast<vec2<f32>>((v.xx + vec2<i32>(5i, -5i)));
        let v_69 = r2;
        r2 = vec4<f32>(v_69.x, v_68.xy, v_69.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 5i));
        let v_70 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_70, v_70, v_70, v_70).x);
        let v_71 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r5 = bitcast<vec4<f32>>(vec4<u32>(g0[v_71], g0[(v_71 + 1u)], g0[(v_71 + 2u)], g0[(v_71 + 3u)]));
        let v_72 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_73 = bitcast<vec2<f32>>(vec2<u32>(g0[v_72], g0[(v_72 + 1u)]));
        r6 = vec4<f32>(v_73.xy, r6.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r5.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r6.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r6.y * r2.y);
        let v_74 = fma(r5.xyz, r4.www, r4.xyz);
        r5 = vec4<f32>(v_74.xyz, r5.w);
        r2.y = fma(r2.y, r6.y, r2.x);
        let v_75 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_75], g0[(v_75 + 1u)], g0[(v_75 + 2u)], g0[(v_75 + 3u)]));
        let v_76 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_77 = bitcast<vec2<f32>>(vec2<u32>(g0[v_76], g0[(v_76 + 1u)]));
        r7 = vec4<f32>(v_77.xy, r7.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r7.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r7.y * r2.z);
        let v_78 = fma(r6.xyz, r2.www, r5.xyz);
        r4 = vec4<f32>(v_78.xyz, r4.w);
        r2.x = fma(r2.z, r7.y, r2.y);
      }
      r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r0.yyyy) >= vec4<i32>(6i, 7i, 8i, 9i))));
      if ((bitcast<u32>(r5.x) != 0u)) {
        let v_79 = bitcast<vec2<f32>>((v.xx + vec2<i32>(6i, -6i)));
        let v_80 = r2;
        r2 = vec4<f32>(v_80.x, v_79.xy, v_80.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 6i));
        let v_81 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_81, v_81, v_81, v_81).x);
        let v_82 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_82], g0[(v_82 + 1u)], g0[(v_82 + 2u)], g0[(v_82 + 3u)]));
        let v_83 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_84 = bitcast<vec2<f32>>(vec2<u32>(g0[v_83], g0[(v_83 + 1u)]));
        r7 = vec4<f32>(v_84.xy, r7.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r7.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r7.y * r2.y);
        let v_85 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_85.xyz, r6.w);
        r2.y = fma(r2.y, r7.y, r2.x);
        let v_86 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_86], g0[(v_86 + 1u)], g0[(v_86 + 2u)], g0[(v_86 + 3u)]));
        let v_87 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_88 = bitcast<vec2<f32>>(vec2<u32>(g0[v_87], g0[(v_87 + 1u)]));
        r8 = vec4<f32>(v_88.xy, r8.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r8.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r8.y * r2.z);
        let v_89 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_89.xyz, r4.w);
        r2.x = fma(r2.z, r8.y, r2.y);
      }
      if ((bitcast<u32>(r5.y) != 0u)) {
        let v_90 = bitcast<vec2<f32>>((v.xx + vec2<i32>(7i, -7i)));
        let v_91 = r2;
        r2 = vec4<f32>(v_91.x, v_90.xy, v_91.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 7i));
        let v_92 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_92, v_92, v_92, v_92).x);
        let v_93 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_93], g0[(v_93 + 1u)], g0[(v_93 + 2u)], g0[(v_93 + 3u)]));
        let v_94 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_95 = bitcast<vec2<f32>>(vec2<u32>(g0[v_94], g0[(v_94 + 1u)]));
        r5 = vec4<f32>(v_95.xy, r5.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r5.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r5.y * r2.y);
        let v_96 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_96.xyz, r6.w);
        r2.y = fma(r2.y, r5.y, r2.x);
        let v_97 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_97], g0[(v_97 + 1u)], g0[(v_97 + 2u)], g0[(v_97 + 3u)]));
        let v_98 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_99 = bitcast<vec2<f32>>(vec2<u32>(g0[v_98], g0[(v_98 + 1u)]));
        r5 = vec4<f32>(v_99.xy, r5.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r5.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r5.y * r2.z);
        let v_100 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_100.xyz, r4.w);
        r2.x = fma(r2.z, r5.y, r2.y);
      }
      if ((bitcast<u32>(r5.z) != 0u)) {
        let v_101 = bitcast<vec2<f32>>((v.xx + vec2<i32>(8i, -8i)));
        let v_102 = r2;
        r2 = vec4<f32>(v_102.x, v_101.xy, v_102.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 8i));
        let v_103 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_103, v_103, v_103, v_103).x);
        let v_104 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_104], g0[(v_104 + 1u)], g0[(v_104 + 2u)], g0[(v_104 + 3u)]));
        let v_105 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_106 = bitcast<vec2<f32>>(vec2<u32>(g0[v_105], g0[(v_105 + 1u)]));
        r5 = vec4<f32>(v_106.xy, r5.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r5.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r5.y * r2.y);
        let v_107 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_107.xyz, r6.w);
        r2.y = fma(r2.y, r5.y, r2.x);
        let v_108 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_108], g0[(v_108 + 1u)], g0[(v_108 + 2u)], g0[(v_108 + 3u)]));
        let v_109 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_110 = bitcast<vec2<f32>>(vec2<u32>(g0[v_109], g0[(v_109 + 1u)]));
        r5 = vec4<f32>(v_110.xy, r5.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r5.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r5.y * r2.z);
        let v_111 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_111.xyz, r4.w);
        r2.x = fma(r2.z, r5.y, r2.y);
      }
      if ((bitcast<u32>(r5.w) != 0u)) {
        let v_112 = bitcast<vec2<f32>>((v.xx + vec2<i32>(9i, -9i)));
        let v_113 = r2;
        r2 = vec4<f32>(v_113.x, v_112.xy, v_113.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 9i));
        let v_114 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_114, v_114, v_114, v_114).x);
        let v_115 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r5 = bitcast<vec4<f32>>(vec4<u32>(g0[v_115], g0[(v_115 + 1u)], g0[(v_115 + 2u)], g0[(v_115 + 3u)]));
        let v_116 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_117 = bitcast<vec2<f32>>(vec2<u32>(g0[v_116], g0[(v_116 + 1u)]));
        r6 = vec4<f32>(v_117.xy, r6.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r5.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r6.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r6.y * r2.y);
        let v_118 = fma(r5.xyz, r4.www, r4.xyz);
        r5 = vec4<f32>(v_118.xyz, r5.w);
        r2.y = fma(r2.y, r6.y, r2.x);
        let v_119 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_119], g0[(v_119 + 1u)], g0[(v_119 + 2u)], g0[(v_119 + 3u)]));
        let v_120 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_121 = bitcast<vec2<f32>>(vec2<u32>(g0[v_120], g0[(v_120 + 1u)]));
        r7 = vec4<f32>(v_121.xy, r7.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r7.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r7.y * r2.z);
        let v_122 = fma(r6.xyz, r2.www, r5.xyz);
        r4 = vec4<f32>(v_122.xyz, r4.w);
        r2.x = fma(r2.z, r7.y, r2.y);
      }
      r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r0.yyyy) >= vec4<i32>(10i, 11i, 12i, 13i))));
      if ((bitcast<u32>(r5.x) != 0u)) {
        let v_123 = bitcast<vec2<f32>>((v.xx + vec2<i32>(10i, -10i)));
        let v_124 = r2;
        r2 = vec4<f32>(v_124.x, v_123.xy, v_124.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 10i));
        let v_125 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_125, v_125, v_125, v_125).x);
        let v_126 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_126], g0[(v_126 + 1u)], g0[(v_126 + 2u)], g0[(v_126 + 3u)]));
        let v_127 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_128 = bitcast<vec2<f32>>(vec2<u32>(g0[v_127], g0[(v_127 + 1u)]));
        r7 = vec4<f32>(v_128.xy, r7.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r7.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r7.y * r2.y);
        let v_129 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_129.xyz, r6.w);
        r2.y = fma(r2.y, r7.y, r2.x);
        let v_130 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_130], g0[(v_130 + 1u)], g0[(v_130 + 2u)], g0[(v_130 + 3u)]));
        let v_131 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_132 = bitcast<vec2<f32>>(vec2<u32>(g0[v_131], g0[(v_131 + 1u)]));
        r8 = vec4<f32>(v_132.xy, r8.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r8.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r8.y * r2.z);
        let v_133 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_133.xyz, r4.w);
        r2.x = fma(r2.z, r8.y, r2.y);
      }
      if ((bitcast<u32>(r5.y) != 0u)) {
        let v_134 = bitcast<vec2<f32>>((v.xx + vec2<i32>(11i, -11i)));
        let v_135 = r2;
        r2 = vec4<f32>(v_135.x, v_134.xy, v_135.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 11i));
        let v_136 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_136, v_136, v_136, v_136).x);
        let v_137 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_137], g0[(v_137 + 1u)], g0[(v_137 + 2u)], g0[(v_137 + 3u)]));
        let v_138 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_139 = bitcast<vec2<f32>>(vec2<u32>(g0[v_138], g0[(v_138 + 1u)]));
        r5 = vec4<f32>(v_139.xy, r5.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r5.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r5.y * r2.y);
        let v_140 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_140.xyz, r6.w);
        r2.y = fma(r2.y, r5.y, r2.x);
        let v_141 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_141], g0[(v_141 + 1u)], g0[(v_141 + 2u)], g0[(v_141 + 3u)]));
        let v_142 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_143 = bitcast<vec2<f32>>(vec2<u32>(g0[v_142], g0[(v_142 + 1u)]));
        r5 = vec4<f32>(v_143.xy, r5.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r5.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r5.y * r2.z);
        let v_144 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_144.xyz, r4.w);
        r2.x = fma(r2.z, r5.y, r2.y);
      }
      if ((bitcast<u32>(r5.z) != 0u)) {
        let v_145 = bitcast<vec2<f32>>((v.xx + vec2<i32>(12i, -12i)));
        let v_146 = r2;
        r2 = vec4<f32>(v_146.x, v_145.xy, v_146.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 12i));
        let v_147 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_147, v_147, v_147, v_147).x);
        let v_148 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_148], g0[(v_148 + 1u)], g0[(v_148 + 2u)], g0[(v_148 + 3u)]));
        let v_149 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_150 = bitcast<vec2<f32>>(vec2<u32>(g0[v_149], g0[(v_149 + 1u)]));
        r5 = vec4<f32>(v_150.xy, r5.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r5.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r5.y * r2.y);
        let v_151 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_151.xyz, r6.w);
        r2.y = fma(r2.y, r5.y, r2.x);
        let v_152 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_152], g0[(v_152 + 1u)], g0[(v_152 + 2u)], g0[(v_152 + 3u)]));
        let v_153 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_154 = bitcast<vec2<f32>>(vec2<u32>(g0[v_153], g0[(v_153 + 1u)]));
        r5 = vec4<f32>(v_154.xy, r5.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r5.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r5.y * r2.z);
        let v_155 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_155.xyz, r4.w);
        r2.x = fma(r2.z, r5.y, r2.y);
      }
      if ((bitcast<u32>(r5.w) != 0u)) {
        let v_156 = bitcast<vec2<f32>>((v.xx + vec2<i32>(13i, -13i)));
        let v_157 = r2;
        r2 = vec4<f32>(v_157.x, v_156.xy, v_157.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 13i));
        let v_158 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_158, v_158, v_158, v_158).x);
        let v_159 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r5 = bitcast<vec4<f32>>(vec4<u32>(g0[v_159], g0[(v_159 + 1u)], g0[(v_159 + 2u)], g0[(v_159 + 3u)]));
        let v_160 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_161 = bitcast<vec2<f32>>(vec2<u32>(g0[v_160], g0[(v_160 + 1u)]));
        r6 = vec4<f32>(v_161.xy, r6.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r5.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r6.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r6.y * r2.y);
        let v_162 = fma(r5.xyz, r4.www, r4.xyz);
        r5 = vec4<f32>(v_162.xyz, r5.w);
        r2.y = fma(r2.y, r6.y, r2.x);
        let v_163 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_163], g0[(v_163 + 1u)], g0[(v_163 + 2u)], g0[(v_163 + 3u)]));
        let v_164 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_165 = bitcast<vec2<f32>>(vec2<u32>(g0[v_164], g0[(v_164 + 1u)]));
        r7 = vec4<f32>(v_165.xy, r7.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r7.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r7.y * r2.z);
        let v_166 = fma(r6.xyz, r2.www, r5.xyz);
        r4 = vec4<f32>(v_166.xyz, r4.w);
        r2.x = fma(r2.z, r7.y, r2.y);
      }
      let v_167 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (bitcast<vec2<i32>>(r0.yy) >= vec2<i32>(14i, 15i))));
      let v_168 = r2;
      r2 = vec4<f32>(v_168.x, v_167.xy, v_168.w);
      if ((bitcast<u32>(r2.y) != 0u)) {
        let v_169 = bitcast<vec2<f32>>((v.xx + vec2<i32>(14i, -14i)));
        let v_170 = r2;
        r2 = vec4<f32>(v_170.x, v_169.x, v_170.z, v_169.y);
        r0.y = bitcast<f32>((bitcast<i32>(r0.w) + 14i));
        let v_171 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r0.y) * 1i)) + 0u)];
        r0.y = bitcast<f32>(vec4<u32>(v_171, v_171, v_171, v_171).x);
        let v_172 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r5 = bitcast<vec4<f32>>(vec4<u32>(g0[v_172], g0[(v_172 + 1u)], g0[(v_172 + 2u)], g0[(v_172 + 3u)]));
        let v_173 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_174 = bitcast<vec2<f32>>(vec2<u32>(g0[v_173], g0[(v_173 + 1u)]));
        r6 = vec4<f32>(v_174.xy, r6.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r5.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r6.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r0.y * r2.y);
        r4.w = (r6.y * r2.y);
        let v_175 = fma(r5.xyz, r4.www, r4.xyz);
        r5 = vec4<f32>(v_175.xyz, r5.w);
        r2.y = fma(r2.y, r6.y, r2.x);
        let v_176 = (bitcast<u32>((bitcast<i32>(r2.w) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_176], g0[(v_176 + 1u)], g0[(v_176 + 2u)], g0[(v_176 + 3u)]));
        let v_177 = (bitcast<u32>((bitcast<i32>(r2.w) * 7i)) + 4u);
        let v_178 = bitcast<vec2<f32>>(vec2<u32>(g0[v_177], g0[(v_177 + 1u)]));
        r7 = vec4<f32>(v_178.xy, r7.zw);
        r2.w = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
        r2.w = clamp(((r7.xxxx + r2.wwww)).w, 0.0f, 1.0f);
        r0.y = (r0.y * r2.w);
        r2.w = (r7.y * r0.y);
        let v_179 = fma(r6.xyz, r2.www, r5.xyz);
        r4 = vec4<f32>(v_179.xyz, r4.w);
        r2.x = fma(r0.y, r7.y, r2.y);
      }
      if ((bitcast<u32>(r2.z) != 0u)) {
        r0.y = bitcast<f32>((v.x + 15i));
        r0.w = bitcast<f32>((bitcast<i32>(r0.w) + 15i));
        let v_180 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r0.w) * 1i)) + 0u)];
        r0.w = bitcast<f32>(vec4<u32>(v_180, v_180, v_180, v_180).x);
        let v_181 = (bitcast<u32>((bitcast<i32>(r0.y) * 7i)) + 0u);
        r5 = bitcast<vec4<f32>>(vec4<u32>(g0[v_181], g0[(v_181 + 1u)], g0[(v_181 + 2u)], g0[(v_181 + 3u)]));
        let v_182 = (bitcast<u32>((bitcast<i32>(r0.y) * 7i)) + 4u);
        let v_183 = bitcast<vec2<f32>>(vec2<u32>(g0[v_182], g0[(v_182 + 1u)]));
        let v_184 = r2;
        r2 = vec4<f32>(v_184.x, v_183.xy, v_184.w);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (r5.w >= r0.z)));
        r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
        r0.y = clamp(((r2.yyyy + r0.yyyy)).y, 0.0f, 1.0f);
        r0.y = (r0.w * r0.y);
        r2.y = (r2.z * r0.y);
        let v_185 = fma(r5.xyz, r2.yyy, r4.xyz);
        r5 = vec4<f32>(v_185.xyz, r5.w);
        r0.y = fma(r0.y, r2.z, r2.x);
        let v_186 = (bitcast<u32>((bitcast<i32>(r0.x) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_186], g0[(v_186 + 1u)], g0[(v_186 + 2u)], g0[(v_186 + 3u)]));
        let v_187 = (bitcast<u32>((bitcast<i32>(r0.x) * 7i)) + 4u);
        let v_188 = bitcast<vec2<f32>>(vec2<u32>(g0[v_187], g0[(v_187 + 1u)]));
        let v_189 = r2;
        r2 = vec4<f32>(v_189.x, v_188.xy, v_189.w);
        r0.x = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
        r0.x = clamp(((r2.yyyy + r0.xxxx)).x, 0.0f, 1.0f);
        r0.x = (r0.w * r0.x);
        r0.z = (r2.z * r0.x);
        let v_190 = fma(r6.xyz, r0.zzz, r5.xyz);
        r4 = vec4<f32>(v_190.xyz, r4.w);
        r2.x = fma(r0.x, r2.z, r0.y);
      }
      let v_191 = (r4.xyz / r2.xxx);
      r3 = vec4<f32>(v_191.xyz, r3.w);
      r3.w = 1.0f;
    }
    let v_192 = bitcast<vec3<f32>>(v_1.yyy);
    r1 = vec4<f32>(r1.x, v_192.xyz);
    textureStore(u0, bitcast<vec2<i32>>(r1.xy), r3);
  }
}
