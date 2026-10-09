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

@compute @workgroup_size(1u, 256u, 1u)
fn main(@builtin(workgroup_id) vThreadGroupID : vec3<u32>, @builtin(local_invocation_id) vThreadIDInGroup : vec3<u32>) {
  let v = vec3<i32>(vThreadIDInGroup);
  let v_1 = vec3<i32>(vThreadGroupID);
  r0.x = bitcast<f32>((v.y + -15i));
  let v_2 = bitcast<vec3<f32>>(((v_1.yyy * vec3<i32>(226i)) + bitcast<vec3<i32>>(r0.xxx)));
  r1 = vec4<f32>(r1.x, v_2.xyz);
  let v_3 = cb12_12.tint_symbol[3u].y;
  let v_4 = max(v_3, -2147483648.0f);
  r0.y = bitcast<f32>(select(select(i32(v_4), 2147483647i, (v_4 >= 2147483648.0f)), 0i, !((v_3 == v_3))));
  r2.x = f32(v_1.x);
  r2.y = f32(bitcast<i32>(r1.w));
  let v_5 = (r2.xy + vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_5.xy);
  let v_6 = (r0.zw * cb12_12.tint_symbol[3u].zw);
  r0 = vec4<f32>(r0.xy, v_6.xy);
  r2.x = textureSampleLevel(t4, s4, r0.zwzz.xy, 0.0f).y;
  r3 = textureSampleLevel(t2, s2, r0.zwzz.xy, 0.0f);
  r3 = max(r3, vec4<f32>());
  let v_7 = textureSampleLevel(t3, s3, r0.zwzz.xy, 0.0f).xy;
  r0 = vec4<f32>(r0.xy, v_7.xy);
  r2.z = (cb12_12.tint_symbol[1u].z / r0.z);
  let v_8 = -(cb12_12.tint_symbol[1u].wwww);
  r2.z = (r2.z + v_8.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 1.0f)));
  let v_9 = bitcast<u32>(r2.z);
  r2.y = select(1.0f, cb12_12.tint_symbol[2u].x, (v_9 != 0u));
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.x)));
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.x)));
  r2.z = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r2.z)));
  if ((bitcast<u32>(r2.z) != 0u)) {
  } else {
    r2.x = r0.w;
  }
  let v_10 = r3;
  r4 = vec4<f32>(v_10.xyz, r4.w);
  r4.w = r0.z;
  let v_11 = (bitcast<u32>((v.y * 7i)) + 0u);
  let v_12 = bitcast<vec4<u32>>(r4);
  g0[v_11] = v_12.x;
  g0[(v_11 + 1u)] = v_12.y;
  g0[(v_11 + 2u)] = v_12.z;
  g0[(v_11 + 3u)] = v_12.w;
  let v_13 = (bitcast<u32>((v.y * 7i)) + 4u);
  let v_14 = bitcast<vec2<u32>>(r2.xy);
  g0[v_13] = v_14.x;
  g0[(v_13 + 1u)] = v_14.y;
  workgroupBarrier();
  r0.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) >= 0i)));
  r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) < 226i)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r2.z)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) < bitcast<i32>(r0.y))));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.w)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r0.y = (r2.x * cb12_12.tint_symbol[0u].x);
    r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol[4u].x))));
    r2.z = ceil(r0.y);
    let v_15 = bitcast<u32>(r0.w);
    let v_16 = r2.z;
    r0.y = select(r0.y, v_16, (v_15 != 0u));
    let v_17 = r0.y;
    let v_18 = max(v_17, -2147483648.0f);
    r0.y = bitcast<f32>(select(select(i32(v_18), 2147483647i, (v_18 >= 2147483648.0f)), 0i, !((v_17 == v_17))));
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(r0.y))));
    if ((bitcast<u32>(r0.w) != 0u)) {
      r0.w = bitcast<f32>((bitcast<i32>(r0.y) + -1i));
      let v_19 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r0.w) * 1i)) + 0u)];
      r0.w = bitcast<f32>(vec4<u32>(v_19, v_19, v_19, v_19).x);
      let v_20 = r0.w;
      let v_21 = max(v_20, -2147483648.0f);
      r0.w = bitcast<f32>(select(select(i32(v_21), 2147483647i, (v_21 >= 2147483648.0f)), 0i, !((v_20 == v_20))));
      let v_22 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r0.w) * 1i)) + 0u)];
      r2.z = bitcast<f32>(vec4<u32>(v_22, v_22, v_22, v_22).x);
      r2.x = clamp(((r2.xxxx + vec4<f32>(1.0f))).x, 0.0f, 1.0f);
      r2.x = (r2.z * r2.x);
      r2.z = (r2.y * r2.x);
      let v_23 = bitcast<vec2<f32>>((v.yy + vec2<i32>(1i, -1i)));
      r5 = vec4<f32>(v_23.xy, r5.zw);
      r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 1i));
      let v_24 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
      r2.w = bitcast<f32>(vec4<u32>(v_24, v_24, v_24, v_24).x);
      let v_25 = (bitcast<u32>((bitcast<i32>(r5.x) * 7i)) + 0u);
      r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_25], g0[(v_25 + 1u)], g0[(v_25 + 2u)], g0[(v_25 + 3u)]));
      let v_26 = (bitcast<u32>((bitcast<i32>(r5.x) * 7i)) + 4u);
      let v_27 = bitcast<vec2<f32>>(vec2<u32>(g0[v_26], g0[(v_26 + 1u)]));
      let v_28 = r5;
      r5 = vec4<f32>(v_27.x, v_28.y, v_27.y, v_28.w);
      r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
      r4.w = bitcast<f32>((bitcast<u32>(r4.w) & 1065353216u));
      r4.w = clamp(((r5.xxxx + r4.wwww)).w, 0.0f, 1.0f);
      r4.w = (r2.w * r4.w);
      r4.w = (r5.z * r4.w);
      let v_29 = (r4.www * r6.xyz);
      r5 = vec4<f32>(v_29.x, r5.y, v_29.yz);
      let v_30 = fma(r4.xyz, r2.zzz, r5.xzw);
      r4 = vec4<f32>(v_30.xyz, r4.w);
      r2.x = fma(r2.x, r2.y, r4.w);
      let v_31 = (bitcast<u32>((bitcast<i32>(r5.y) * 7i)) + 0u);
      r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_31], g0[(v_31 + 1u)], g0[(v_31 + 2u)], g0[(v_31 + 3u)]));
      let v_32 = (bitcast<u32>((bitcast<i32>(r5.y) * 7i)) + 4u);
      let v_33 = bitcast<vec2<f32>>(vec2<u32>(g0[v_32], g0[(v_32 + 1u)]));
      let v_34 = r2;
      r2 = vec4<f32>(v_34.x, v_33.xy, v_34.w);
      r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
      r4.w = bitcast<f32>((bitcast<u32>(r4.w) & 1065353216u));
      r2.y = clamp(((r2.yyyy + r4.wwww)).y, 0.0f, 1.0f);
      r2.y = (r2.w * r2.y);
      r2.w = (r2.z * r2.y);
      let v_35 = fma(r6.xyz, r2.www, r4.xyz);
      r4 = vec4<f32>(v_35.xyz, r4.w);
      r2.x = fma(r2.y, r2.z, r2.x);
      r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r0.yyyy) >= vec4<i32>(2i, 3i, 4i, 5i))));
      if ((bitcast<u32>(r5.x) != 0u)) {
        let v_36 = bitcast<vec2<f32>>((v.yy + vec2<i32>(2i, -2i)));
        let v_37 = r2;
        r2 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 2i));
        let v_38 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_38, v_38, v_38, v_38).x);
        let v_39 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_39], g0[(v_39 + 1u)], g0[(v_39 + 2u)], g0[(v_39 + 3u)]));
        let v_40 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_41 = bitcast<vec2<f32>>(vec2<u32>(g0[v_40], g0[(v_40 + 1u)]));
        r7 = vec4<f32>(v_41.xy, r7.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r7.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r7.y * r2.y);
        let v_42 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_42.xyz, r6.w);
        r2.y = fma(r2.y, r7.y, r2.x);
        let v_43 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_43], g0[(v_43 + 1u)], g0[(v_43 + 2u)], g0[(v_43 + 3u)]));
        let v_44 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_45 = bitcast<vec2<f32>>(vec2<u32>(g0[v_44], g0[(v_44 + 1u)]));
        r8 = vec4<f32>(v_45.xy, r8.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r8.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r8.y * r2.z);
        let v_46 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_46.xyz, r4.w);
        r2.x = fma(r2.z, r8.y, r2.y);
      }
      if ((bitcast<u32>(r5.y) != 0u)) {
        let v_47 = bitcast<vec2<f32>>((v.yy + vec2<i32>(3i, -3i)));
        let v_48 = r2;
        r2 = vec4<f32>(v_48.x, v_47.xy, v_48.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 3i));
        let v_49 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_49, v_49, v_49, v_49).x);
        let v_50 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_50], g0[(v_50 + 1u)], g0[(v_50 + 2u)], g0[(v_50 + 3u)]));
        let v_51 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_52 = bitcast<vec2<f32>>(vec2<u32>(g0[v_51], g0[(v_51 + 1u)]));
        r5 = vec4<f32>(v_52.xy, r5.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r5.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r5.y * r2.y);
        let v_53 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_53.xyz, r6.w);
        r2.y = fma(r2.y, r5.y, r2.x);
        let v_54 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_54], g0[(v_54 + 1u)], g0[(v_54 + 2u)], g0[(v_54 + 3u)]));
        let v_55 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_56 = bitcast<vec2<f32>>(vec2<u32>(g0[v_55], g0[(v_55 + 1u)]));
        r5 = vec4<f32>(v_56.xy, r5.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r5.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r5.y * r2.z);
        let v_57 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_57.xyz, r4.w);
        r2.x = fma(r2.z, r5.y, r2.y);
      }
      if ((bitcast<u32>(r5.z) != 0u)) {
        let v_58 = bitcast<vec2<f32>>((v.yy + vec2<i32>(4i, -4i)));
        let v_59 = r2;
        r2 = vec4<f32>(v_59.x, v_58.xy, v_59.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 4i));
        let v_60 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_60, v_60, v_60, v_60).x);
        let v_61 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_61], g0[(v_61 + 1u)], g0[(v_61 + 2u)], g0[(v_61 + 3u)]));
        let v_62 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_63 = bitcast<vec2<f32>>(vec2<u32>(g0[v_62], g0[(v_62 + 1u)]));
        r5 = vec4<f32>(v_63.xy, r5.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r5.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r5.y * r2.y);
        let v_64 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_64.xyz, r6.w);
        r2.y = fma(r2.y, r5.y, r2.x);
        let v_65 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_65], g0[(v_65 + 1u)], g0[(v_65 + 2u)], g0[(v_65 + 3u)]));
        let v_66 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_67 = bitcast<vec2<f32>>(vec2<u32>(g0[v_66], g0[(v_66 + 1u)]));
        r5 = vec4<f32>(v_67.xy, r5.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r5.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r5.y * r2.z);
        let v_68 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_68.xyz, r4.w);
        r2.x = fma(r2.z, r5.y, r2.y);
      }
      if ((bitcast<u32>(r5.w) != 0u)) {
        let v_69 = bitcast<vec2<f32>>((v.yy + vec2<i32>(5i, -5i)));
        let v_70 = r2;
        r2 = vec4<f32>(v_70.x, v_69.xy, v_70.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 5i));
        let v_71 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_71, v_71, v_71, v_71).x);
        let v_72 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r5 = bitcast<vec4<f32>>(vec4<u32>(g0[v_72], g0[(v_72 + 1u)], g0[(v_72 + 2u)], g0[(v_72 + 3u)]));
        let v_73 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_74 = bitcast<vec2<f32>>(vec2<u32>(g0[v_73], g0[(v_73 + 1u)]));
        r6 = vec4<f32>(v_74.xy, r6.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r5.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r6.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r6.y * r2.y);
        let v_75 = fma(r5.xyz, r4.www, r4.xyz);
        r5 = vec4<f32>(v_75.xyz, r5.w);
        r2.y = fma(r2.y, r6.y, r2.x);
        let v_76 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_76], g0[(v_76 + 1u)], g0[(v_76 + 2u)], g0[(v_76 + 3u)]));
        let v_77 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_78 = bitcast<vec2<f32>>(vec2<u32>(g0[v_77], g0[(v_77 + 1u)]));
        r7 = vec4<f32>(v_78.xy, r7.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r7.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r7.y * r2.z);
        let v_79 = fma(r6.xyz, r2.www, r5.xyz);
        r4 = vec4<f32>(v_79.xyz, r4.w);
        r2.x = fma(r2.z, r7.y, r2.y);
      }
      r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r0.yyyy) >= vec4<i32>(6i, 7i, 8i, 9i))));
      if ((bitcast<u32>(r5.x) != 0u)) {
        let v_80 = bitcast<vec2<f32>>((v.yy + vec2<i32>(6i, -6i)));
        let v_81 = r2;
        r2 = vec4<f32>(v_81.x, v_80.xy, v_81.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 6i));
        let v_82 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_82, v_82, v_82, v_82).x);
        let v_83 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_83], g0[(v_83 + 1u)], g0[(v_83 + 2u)], g0[(v_83 + 3u)]));
        let v_84 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_85 = bitcast<vec2<f32>>(vec2<u32>(g0[v_84], g0[(v_84 + 1u)]));
        r7 = vec4<f32>(v_85.xy, r7.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r7.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r7.y * r2.y);
        let v_86 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_86.xyz, r6.w);
        r2.y = fma(r2.y, r7.y, r2.x);
        let v_87 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_87], g0[(v_87 + 1u)], g0[(v_87 + 2u)], g0[(v_87 + 3u)]));
        let v_88 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_89 = bitcast<vec2<f32>>(vec2<u32>(g0[v_88], g0[(v_88 + 1u)]));
        r8 = vec4<f32>(v_89.xy, r8.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r8.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r8.y * r2.z);
        let v_90 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_90.xyz, r4.w);
        r2.x = fma(r2.z, r8.y, r2.y);
      }
      if ((bitcast<u32>(r5.y) != 0u)) {
        let v_91 = bitcast<vec2<f32>>((v.yy + vec2<i32>(7i, -7i)));
        let v_92 = r2;
        r2 = vec4<f32>(v_92.x, v_91.xy, v_92.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 7i));
        let v_93 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_93, v_93, v_93, v_93).x);
        let v_94 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_94], g0[(v_94 + 1u)], g0[(v_94 + 2u)], g0[(v_94 + 3u)]));
        let v_95 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_96 = bitcast<vec2<f32>>(vec2<u32>(g0[v_95], g0[(v_95 + 1u)]));
        r5 = vec4<f32>(v_96.xy, r5.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r5.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r5.y * r2.y);
        let v_97 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_97.xyz, r6.w);
        r2.y = fma(r2.y, r5.y, r2.x);
        let v_98 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_98], g0[(v_98 + 1u)], g0[(v_98 + 2u)], g0[(v_98 + 3u)]));
        let v_99 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_100 = bitcast<vec2<f32>>(vec2<u32>(g0[v_99], g0[(v_99 + 1u)]));
        r5 = vec4<f32>(v_100.xy, r5.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r5.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r5.y * r2.z);
        let v_101 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_101.xyz, r4.w);
        r2.x = fma(r2.z, r5.y, r2.y);
      }
      if ((bitcast<u32>(r5.z) != 0u)) {
        let v_102 = bitcast<vec2<f32>>((v.yy + vec2<i32>(8i, -8i)));
        let v_103 = r2;
        r2 = vec4<f32>(v_103.x, v_102.xy, v_103.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 8i));
        let v_104 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_104, v_104, v_104, v_104).x);
        let v_105 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_105], g0[(v_105 + 1u)], g0[(v_105 + 2u)], g0[(v_105 + 3u)]));
        let v_106 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_107 = bitcast<vec2<f32>>(vec2<u32>(g0[v_106], g0[(v_106 + 1u)]));
        r5 = vec4<f32>(v_107.xy, r5.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r5.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r5.y * r2.y);
        let v_108 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_108.xyz, r6.w);
        r2.y = fma(r2.y, r5.y, r2.x);
        let v_109 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_109], g0[(v_109 + 1u)], g0[(v_109 + 2u)], g0[(v_109 + 3u)]));
        let v_110 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_111 = bitcast<vec2<f32>>(vec2<u32>(g0[v_110], g0[(v_110 + 1u)]));
        r5 = vec4<f32>(v_111.xy, r5.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r5.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r5.y * r2.z);
        let v_112 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_112.xyz, r4.w);
        r2.x = fma(r2.z, r5.y, r2.y);
      }
      if ((bitcast<u32>(r5.w) != 0u)) {
        let v_113 = bitcast<vec2<f32>>((v.yy + vec2<i32>(9i, -9i)));
        let v_114 = r2;
        r2 = vec4<f32>(v_114.x, v_113.xy, v_114.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 9i));
        let v_115 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_115, v_115, v_115, v_115).x);
        let v_116 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r5 = bitcast<vec4<f32>>(vec4<u32>(g0[v_116], g0[(v_116 + 1u)], g0[(v_116 + 2u)], g0[(v_116 + 3u)]));
        let v_117 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_118 = bitcast<vec2<f32>>(vec2<u32>(g0[v_117], g0[(v_117 + 1u)]));
        r6 = vec4<f32>(v_118.xy, r6.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r5.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r6.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r6.y * r2.y);
        let v_119 = fma(r5.xyz, r4.www, r4.xyz);
        r5 = vec4<f32>(v_119.xyz, r5.w);
        r2.y = fma(r2.y, r6.y, r2.x);
        let v_120 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_120], g0[(v_120 + 1u)], g0[(v_120 + 2u)], g0[(v_120 + 3u)]));
        let v_121 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_122 = bitcast<vec2<f32>>(vec2<u32>(g0[v_121], g0[(v_121 + 1u)]));
        r7 = vec4<f32>(v_122.xy, r7.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r7.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r7.y * r2.z);
        let v_123 = fma(r6.xyz, r2.www, r5.xyz);
        r4 = vec4<f32>(v_123.xyz, r4.w);
        r2.x = fma(r2.z, r7.y, r2.y);
      }
      r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r0.yyyy) >= vec4<i32>(10i, 11i, 12i, 13i))));
      if ((bitcast<u32>(r5.x) != 0u)) {
        let v_124 = bitcast<vec2<f32>>((v.yy + vec2<i32>(10i, -10i)));
        let v_125 = r2;
        r2 = vec4<f32>(v_125.x, v_124.xy, v_125.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 10i));
        let v_126 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_126, v_126, v_126, v_126).x);
        let v_127 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_127], g0[(v_127 + 1u)], g0[(v_127 + 2u)], g0[(v_127 + 3u)]));
        let v_128 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_129 = bitcast<vec2<f32>>(vec2<u32>(g0[v_128], g0[(v_128 + 1u)]));
        r7 = vec4<f32>(v_129.xy, r7.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r7.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r7.y * r2.y);
        let v_130 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_130.xyz, r6.w);
        r2.y = fma(r2.y, r7.y, r2.x);
        let v_131 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_131], g0[(v_131 + 1u)], g0[(v_131 + 2u)], g0[(v_131 + 3u)]));
        let v_132 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_133 = bitcast<vec2<f32>>(vec2<u32>(g0[v_132], g0[(v_132 + 1u)]));
        r8 = vec4<f32>(v_133.xy, r8.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r8.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r8.y * r2.z);
        let v_134 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_134.xyz, r4.w);
        r2.x = fma(r2.z, r8.y, r2.y);
      }
      if ((bitcast<u32>(r5.y) != 0u)) {
        let v_135 = bitcast<vec2<f32>>((v.yy + vec2<i32>(11i, -11i)));
        let v_136 = r2;
        r2 = vec4<f32>(v_136.x, v_135.xy, v_136.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 11i));
        let v_137 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_137, v_137, v_137, v_137).x);
        let v_138 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_138], g0[(v_138 + 1u)], g0[(v_138 + 2u)], g0[(v_138 + 3u)]));
        let v_139 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_140 = bitcast<vec2<f32>>(vec2<u32>(g0[v_139], g0[(v_139 + 1u)]));
        r5 = vec4<f32>(v_140.xy, r5.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r5.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r5.y * r2.y);
        let v_141 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_141.xyz, r6.w);
        r2.y = fma(r2.y, r5.y, r2.x);
        let v_142 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_142], g0[(v_142 + 1u)], g0[(v_142 + 2u)], g0[(v_142 + 3u)]));
        let v_143 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_144 = bitcast<vec2<f32>>(vec2<u32>(g0[v_143], g0[(v_143 + 1u)]));
        r5 = vec4<f32>(v_144.xy, r5.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r5.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r5.y * r2.z);
        let v_145 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_145.xyz, r4.w);
        r2.x = fma(r2.z, r5.y, r2.y);
      }
      if ((bitcast<u32>(r5.z) != 0u)) {
        let v_146 = bitcast<vec2<f32>>((v.yy + vec2<i32>(12i, -12i)));
        let v_147 = r2;
        r2 = vec4<f32>(v_147.x, v_146.xy, v_147.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 12i));
        let v_148 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_148, v_148, v_148, v_148).x);
        let v_149 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_149], g0[(v_149 + 1u)], g0[(v_149 + 2u)], g0[(v_149 + 3u)]));
        let v_150 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_151 = bitcast<vec2<f32>>(vec2<u32>(g0[v_150], g0[(v_150 + 1u)]));
        r5 = vec4<f32>(v_151.xy, r5.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r5.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r5.y * r2.y);
        let v_152 = fma(r6.xyz, r4.www, r4.xyz);
        r6 = vec4<f32>(v_152.xyz, r6.w);
        r2.y = fma(r2.y, r5.y, r2.x);
        let v_153 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r7 = bitcast<vec4<f32>>(vec4<u32>(g0[v_153], g0[(v_153 + 1u)], g0[(v_153 + 2u)], g0[(v_153 + 3u)]));
        let v_154 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_155 = bitcast<vec2<f32>>(vec2<u32>(g0[v_154], g0[(v_154 + 1u)]));
        r5 = vec4<f32>(v_155.xy, r5.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r7.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r5.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r5.y * r2.z);
        let v_156 = fma(r7.xyz, r2.www, r6.xyz);
        r4 = vec4<f32>(v_156.xyz, r4.w);
        r2.x = fma(r2.z, r5.y, r2.y);
      }
      if ((bitcast<u32>(r5.w) != 0u)) {
        let v_157 = bitcast<vec2<f32>>((v.yy + vec2<i32>(13i, -13i)));
        let v_158 = r2;
        r2 = vec4<f32>(v_158.x, v_157.xy, v_158.w);
        r2.w = bitcast<f32>((bitcast<i32>(r0.w) + 13i));
        let v_159 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r2.w) * 1i)) + 0u)];
        r2.w = bitcast<f32>(vec4<u32>(v_159, v_159, v_159, v_159).x);
        let v_160 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r5 = bitcast<vec4<f32>>(vec4<u32>(g0[v_160], g0[(v_160 + 1u)], g0[(v_160 + 2u)], g0[(v_160 + 3u)]));
        let v_161 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_162 = bitcast<vec2<f32>>(vec2<u32>(g0[v_161], g0[(v_161 + 1u)]));
        r6 = vec4<f32>(v_162.xy, r6.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r5.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r6.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r2.w * r2.y);
        r4.w = (r6.y * r2.y);
        let v_163 = fma(r5.xyz, r4.www, r4.xyz);
        r5 = vec4<f32>(v_163.xyz, r5.w);
        r2.y = fma(r2.y, r6.y, r2.x);
        let v_164 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_164], g0[(v_164 + 1u)], g0[(v_164 + 2u)], g0[(v_164 + 3u)]));
        let v_165 = (bitcast<u32>((bitcast<i32>(r2.z) * 7i)) + 4u);
        let v_166 = bitcast<vec2<f32>>(vec2<u32>(g0[v_165], g0[(v_165 + 1u)]));
        r7 = vec4<f32>(v_166.xy, r7.zw);
        r2.z = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
        r2.z = clamp(((r7.xxxx + r2.zzzz)).z, 0.0f, 1.0f);
        r2.z = (r2.w * r2.z);
        r2.w = (r7.y * r2.z);
        let v_167 = fma(r6.xyz, r2.www, r5.xyz);
        r4 = vec4<f32>(v_167.xyz, r4.w);
        r2.x = fma(r2.z, r7.y, r2.y);
      }
      let v_168 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (bitcast<vec2<i32>>(r0.yy) >= vec2<i32>(14i, 15i))));
      let v_169 = r2;
      r2 = vec4<f32>(v_169.x, v_168.xy, v_169.w);
      if ((bitcast<u32>(r2.y) != 0u)) {
        let v_170 = bitcast<vec2<f32>>((v.yy + vec2<i32>(14i, -14i)));
        let v_171 = r2;
        r2 = vec4<f32>(v_171.x, v_170.x, v_171.z, v_170.y);
        r0.y = bitcast<f32>((bitcast<i32>(r0.w) + 14i));
        let v_172 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r0.y) * 1i)) + 0u)];
        r0.y = bitcast<f32>(vec4<u32>(v_172, v_172, v_172, v_172).x);
        let v_173 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 0u);
        r5 = bitcast<vec4<f32>>(vec4<u32>(g0[v_173], g0[(v_173 + 1u)], g0[(v_173 + 2u)], g0[(v_173 + 3u)]));
        let v_174 = (bitcast<u32>((bitcast<i32>(r2.y) * 7i)) + 4u);
        let v_175 = bitcast<vec2<f32>>(vec2<u32>(g0[v_174], g0[(v_174 + 1u)]));
        r6 = vec4<f32>(v_175.xy, r6.zw);
        r2.y = bitcast<f32>(select(0u, 4294967295u, (r5.w >= r0.z)));
        r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
        r2.y = clamp(((r6.xxxx + r2.yyyy)).y, 0.0f, 1.0f);
        r2.y = (r0.y * r2.y);
        r4.w = (r6.y * r2.y);
        let v_176 = fma(r5.xyz, r4.www, r4.xyz);
        r5 = vec4<f32>(v_176.xyz, r5.w);
        r2.y = fma(r2.y, r6.y, r2.x);
        let v_177 = (bitcast<u32>((bitcast<i32>(r2.w) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_177], g0[(v_177 + 1u)], g0[(v_177 + 2u)], g0[(v_177 + 3u)]));
        let v_178 = (bitcast<u32>((bitcast<i32>(r2.w) * 7i)) + 4u);
        let v_179 = bitcast<vec2<f32>>(vec2<u32>(g0[v_178], g0[(v_178 + 1u)]));
        r7 = vec4<f32>(v_179.xy, r7.zw);
        r2.w = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
        r2.w = clamp(((r7.xxxx + r2.wwww)).w, 0.0f, 1.0f);
        r0.y = (r0.y * r2.w);
        r2.w = (r7.y * r0.y);
        let v_180 = fma(r6.xyz, r2.www, r5.xyz);
        r4 = vec4<f32>(v_180.xyz, r4.w);
        r2.x = fma(r0.y, r7.y, r2.y);
      }
      if ((bitcast<u32>(r2.z) != 0u)) {
        r0.y = bitcast<f32>((v.y + 15i));
        r0.w = bitcast<f32>((bitcast<i32>(r0.w) + 15i));
        let v_181 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r0.w) * 1i)) + 0u)];
        r0.w = bitcast<f32>(vec4<u32>(v_181, v_181, v_181, v_181).x);
        let v_182 = (bitcast<u32>((bitcast<i32>(r0.y) * 7i)) + 0u);
        r5 = bitcast<vec4<f32>>(vec4<u32>(g0[v_182], g0[(v_182 + 1u)], g0[(v_182 + 2u)], g0[(v_182 + 3u)]));
        let v_183 = (bitcast<u32>((bitcast<i32>(r0.y) * 7i)) + 4u);
        let v_184 = bitcast<vec2<f32>>(vec2<u32>(g0[v_183], g0[(v_183 + 1u)]));
        let v_185 = r2;
        r2 = vec4<f32>(v_185.x, v_184.xy, v_185.w);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (r5.w >= r0.z)));
        r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
        r0.y = clamp(((r2.yyyy + r0.yyyy)).y, 0.0f, 1.0f);
        r0.y = (r0.w * r0.y);
        r2.y = (r2.z * r0.y);
        let v_186 = fma(r5.xyz, r2.yyy, r4.xyz);
        r5 = vec4<f32>(v_186.xyz, r5.w);
        r0.y = fma(r0.y, r2.z, r2.x);
        let v_187 = (bitcast<u32>((bitcast<i32>(r0.x) * 7i)) + 0u);
        r6 = bitcast<vec4<f32>>(vec4<u32>(g0[v_187], g0[(v_187 + 1u)], g0[(v_187 + 2u)], g0[(v_187 + 3u)]));
        let v_188 = (bitcast<u32>((bitcast<i32>(r0.x) * 7i)) + 4u);
        let v_189 = bitcast<vec2<f32>>(vec2<u32>(g0[v_188], g0[(v_188 + 1u)]));
        let v_190 = r2;
        r2 = vec4<f32>(v_190.x, v_189.xy, v_190.w);
        r0.x = bitcast<f32>(select(0u, 4294967295u, (r6.w >= r0.z)));
        r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
        r0.x = clamp(((r2.yyyy + r0.xxxx)).x, 0.0f, 1.0f);
        r0.x = (r0.w * r0.x);
        r0.z = (r2.z * r0.x);
        let v_191 = fma(r6.xyz, r0.zzz, r5.xyz);
        r4 = vec4<f32>(v_191.xyz, r4.w);
        r2.x = fma(r0.x, r2.z, r0.y);
      }
      let v_192 = (r4.xyz / r2.xxx);
      r3 = vec4<f32>(v_192.xyz, r3.w);
      r3.w = 1.0f;
    }
    r1.x = bitcast<f32>(v_1.x);
    textureStore(u0, bitcast<vec2<i32>>(r1.xy), r3);
  }
}
