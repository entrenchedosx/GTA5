diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb16_struct;

@group(0u) @binding(17u) var s1 : sampler;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(32u) var t0 : texture_2d<f32>;

@group(0u) @binding(160u) var u0 : texture_storage_2d<rgba32float, write>;

var<workgroup> g0 : array<u32, 840u>;

struct tint_symbol_2 {
  tint_symbol_1 : array<vec4<u32>, 2u>,
}

@group(0u) @binding(15u) var<uniform> v : tint_symbol_2;

@compute @workgroup_size(64u, 2u, 1u)
fn main(@builtin(workgroup_id) vThreadGroupID : vec3<u32>, @builtin(local_invocation_id) vThreadIDInGroup : vec3<u32>) {
  let v_1 = vec3<i32>(vThreadIDInGroup);
  r0.x = bitcast<f32>((v_1.x << 1u));
  let v_2 = bitcast<vec2<f32>>((vec3<i32>(vThreadGroupID).xy << vec2<u32>(1u, 7u)));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r0.y = bitcast<f32>((bitcast<i32>(r1.y) + -6i));
  r1.z = bitcast<f32>((bitcast<i32>(r0.y) + bitcast<i32>(r0.x)));
  let v_3 = bitcast<vec2<f32>>((v_1.yx * vec2<i32>(1680i, 24i)));
  let v_4 = r0;
  r0 = vec4<f32>(v_3.x, v_4.y, v_3.y, v_4.w);
  let v_5 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r0.xz) + bitcast<vec2<i32>>(r0.zx)));
  r0 = vec4<f32>(r0.xy, v_5.xy);
  r2.x = bitcast<f32>(v_1.y);
  r2 = vec4<f32>(r2.x, vec3<f32>());
  let v_6 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r2.xw) + bitcast<vec2<i32>>(r1.xz)));
  r3 = vec4<f32>(v_6.xy, r3.zw);
  let v_7 = vec2<f32>(bitcast<vec2<i32>>(r3.xy));
  r3 = vec4<f32>(v_7.xy, r3.zw);
  let v_8 = (r3.xy + vec2<f32>(0.5f, 1.0f));
  r3 = vec4<f32>(v_8.xy, r3.zw);
  let v_9 = (r3.xy * cb12_12.tint_symbol[15u].zw);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  let v_10 = textureSampleLevel(t0, s2, r3.xyxx.xy, 0.0f).xyz;
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = (bitcast<u32>(r0.z) >> 2u);
  let v_12 = bitcast<vec3<u32>>(r3.xyz);
  g0[v_11] = v_12.x;
  g0[(v_11 + 1u)] = v_12.y;
  g0[(v_11 + 2u)] = v_12.z;
  r1.y = bitcast<f32>((12i + bitcast<i32>(r0.w)));
  r3.x = bitcast<f32>(v_1.y);
  r3.y = bitcast<f32>(v.tint_symbol_1[0i].x);
  let v_13 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r3.xy) + bitcast<vec2<i32>>(r1.xz)));
  r3 = vec4<f32>(v_13.xy, r3.zw);
  let v_14 = vec2<f32>(bitcast<vec2<i32>>(r3.xy));
  r3 = vec4<f32>(v_14.xy, r3.zw);
  let v_15 = (r3.xy + vec2<f32>(0.5f, 1.0f));
  r3 = vec4<f32>(v_15.xy, r3.zw);
  let v_16 = (r3.xy * cb12_12.tint_symbol[15u].zw);
  r3 = vec4<f32>(v_16.xy, r3.zw);
  let v_17 = textureSampleLevel(t0, s2, r3.xyxx.xy, 0.0f).xyz;
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = (bitcast<u32>(r1.y) >> 2u);
  let v_19 = bitcast<vec3<u32>>(r3.xyz);
  g0[v_18] = v_19.x;
  g0[(v_18 + 1u)] = v_19.y;
  g0[(v_18 + 2u)] = v_19.z;
  r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(v_1.x) < 12u)));
  if ((bitcast<u32>(r3.x) != 0u)) {
    r0.x = bitcast<f32>(((v_1.x * -12i) + bitcast<i32>(r0.x)));
    r0.x = bitcast<f32>((1668i + bitcast<i32>(r0.x)));
    r3.y = bitcast<f32>((bitcast<i32>(r0.y) + (-(v_1.xxxx)).y));
    r1.w = bitcast<f32>(v.tint_symbol_1[1i].x);
    r3.x = bitcast<f32>(v_1.y);
    let v_20 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xw) + bitcast<vec2<i32>>(r3.xy)));
    r3 = vec4<f32>(v_20.xy, r3.zw);
    let v_21 = vec2<f32>(bitcast<vec2<i32>>(r3.xy));
    r3 = vec4<f32>(v_21.xy, r3.zw);
    let v_22 = (r3.xy + vec2<f32>(0.5f, 1.0f));
    r3 = vec4<f32>(v_22.xy, r3.zw);
    let v_23 = (r3.xy * cb12_12.tint_symbol[15u].zw);
    r3 = vec4<f32>(v_23.xy, r3.zw);
    let v_24 = textureSampleLevel(t0, s2, r3.xyxx.xy, 0.0f).xyz;
    r3 = vec4<f32>(v_24.xyz, r3.w);
    let v_25 = (bitcast<u32>(r0.x) >> 2u);
    let v_26 = bitcast<vec3<u32>>(r3.xyz);
    g0[v_25] = v_26.x;
    g0[(v_25 + 1u)] = v_26.y;
    g0[(v_25 + 2u)] = v_26.z;
  }
  workgroupBarrier();
  let v_27 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r1.zzz) + vec3<i32>(6i)));
  r3 = vec4<f32>(r3.x, v_27.xyz);
  r0.x = f32(bitcast<i32>(r3.w));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < cb12_12.tint_symbol[15u].y)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r3.x = r1.x;
    r2 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2) + bitcast<vec4<i32>>(r3)));
    let v_28 = vec2<f32>(bitcast<vec2<i32>>(r2.xw));
    r0 = vec4<f32>(v_28.xy, r0.zw);
    let v_29 = (r0.xy + vec2<f32>(0.5f));
    r0 = vec4<f32>(v_29.xy, r0.zw);
    let v_30 = (r0.xy * cb12_12.tint_symbol[15u].zw);
    r0 = vec4<f32>(v_30.xy, r0.zw);
    let v_31 = textureSampleLevel(t0, s1, r0.xyxx.xy, 0.0f).xyz;
    r3 = vec4<f32>(v_31.xyz, r3.w);
    r4 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2.xwww) + vec4<i32>(0i, 1i, 1i, 1i)));
    let v_32 = vec2<f32>(bitcast<vec2<i32>>(r4.xw));
    r0 = vec4<f32>(v_32.xy, r0.zw);
    let v_33 = (r0.xy + vec2<f32>(0.5f));
    r0 = vec4<f32>(v_33.xy, r0.zw);
    let v_34 = (r0.xy * cb12_12.tint_symbol[15u].zw);
    r0 = vec4<f32>(v_34.xy, r0.zw);
    let v_35 = textureSampleLevel(t0, s1, r0.xyxx.xy, 0.0f).xyz;
    r5 = vec4<f32>(v_35.xyz, r5.w);
    let v_36 = (bitcast<u32>(bitcast<i32>(r0.z)) >> 2u);
    let v_37 = bitcast<vec3<f32>>(vec3<u32>(g0[v_36], g0[(v_36 + 1u)], g0[(v_36 + 2u)]));
    r0 = vec4<f32>(v_37.xyz, r0.w);
    let v_38 = (bitcast<u32>(bitcast<i32>(r1.y)) >> 2u);
    let v_39 = bitcast<vec3<f32>>(vec3<u32>(g0[v_38], g0[(v_38 + 1u)], g0[(v_38 + 2u)]));
    r1 = vec4<f32>(v_39.xy, r1.z, v_39.z);
    let v_40 = (r0.xyz * vec3<f32>(0.03937169164419174194f));
    r0 = vec4<f32>(v_40.xyz, r0.w);
    let v_41 = fma(r3.xyz, vec3<f32>(0.0498677864670753479f), r0.xyz);
    r0 = vec4<f32>(v_41.xyz, r0.w);
    let v_42 = (r1.xyw * vec3<f32>(0.03937169164419174194f));
    r1 = vec4<f32>(v_42.xy, r1.z, v_42.z);
    let v_43 = fma(r5.xyz, vec3<f32>(0.0498677864670753479f), r1.xyw);
    r1 = vec4<f32>(v_43.xy, r1.z, v_43.z);
    r3 = bitcast<vec4<f32>>((vec4<i32>(24i, 36i, 48i, 60i) + bitcast<vec4<i32>>(r0.wwww)));
    let v_44 = (bitcast<u32>(bitcast<i32>(r3.x)) >> 2u);
    let v_45 = bitcast<vec3<f32>>(vec3<u32>(g0[v_44], g0[(v_44 + 1u)], g0[(v_44 + 2u)]));
    r5 = vec4<f32>(v_45.xyz, r5.w);
    let v_46 = (bitcast<u32>(bitcast<i32>(r3.y)) >> 2u);
    let v_47 = bitcast<vec3<f32>>(vec3<u32>(g0[v_46], g0[(v_46 + 1u)], g0[(v_46 + 2u)]));
    r6 = vec4<f32>(v_47.xyz, r6.w);
    let v_48 = fma(r5.xyz, vec3<f32>(0.0453165397047996521f), r0.xyz);
    r0 = vec4<f32>(v_48.xyz, r0.w);
    let v_49 = fma(r6.xyz, vec3<f32>(0.0453165397047996521f), r1.xyw);
    r1 = vec4<f32>(v_49.xy, r1.z, v_49.z);
    let v_50 = (bitcast<u32>(bitcast<i32>(r3.z)) >> 2u);
    let v_51 = bitcast<vec3<f32>>(vec3<u32>(g0[v_50], g0[(v_50 + 1u)], g0[(v_50 + 2u)]));
    r3 = vec4<f32>(v_51.xyz, r3.w);
    let v_52 = (bitcast<u32>(bitcast<i32>(r3.w)) >> 2u);
    let v_53 = bitcast<vec3<f32>>(vec3<u32>(g0[v_52], g0[(v_52 + 1u)], g0[(v_52 + 2u)]));
    r5 = vec4<f32>(v_53.xyz, r5.w);
    let v_54 = fma(r3.xyz, vec3<f32>(0.04899886250495910645f), r0.xyz);
    r0 = vec4<f32>(v_54.xyz, r0.w);
    let v_55 = fma(r5.xyz, vec3<f32>(0.04899886250495910645f), r1.xyw);
    r1 = vec4<f32>(v_55.xy, r1.z, v_55.z);
    r3 = bitcast<vec4<f32>>((vec4<i32>(84i, 96i, 108i, 120i) + bitcast<vec4<i32>>(r0.wwww)));
    let v_56 = (bitcast<u32>(bitcast<i32>(r3.x)) >> 2u);
    let v_57 = bitcast<vec3<f32>>(vec3<u32>(g0[v_56], g0[(v_56 + 1u)], g0[(v_56 + 2u)]));
    r5 = vec4<f32>(v_57.xyz, r5.w);
    let v_58 = (bitcast<u32>(bitcast<i32>(r3.y)) >> 2u);
    let v_59 = bitcast<vec3<f32>>(vec3<u32>(g0[v_58], g0[(v_58 + 1u)], g0[(v_58 + 2u)]));
    r6 = vec4<f32>(v_59.xyz, r6.w);
    let v_60 = fma(r5.xyz, vec3<f32>(0.04899886250495910645f), r0.xyz);
    r0 = vec4<f32>(v_60.xyz, r0.w);
    let v_61 = fma(r6.xyz, vec3<f32>(0.04899886250495910645f), r1.xyw);
    r1 = vec4<f32>(v_61.xy, r1.z, v_61.z);
    let v_62 = (bitcast<u32>(bitcast<i32>(r3.z)) >> 2u);
    let v_63 = bitcast<vec3<f32>>(vec3<u32>(g0[v_62], g0[(v_62 + 1u)], g0[(v_62 + 2u)]));
    r3 = vec4<f32>(v_63.xyz, r3.w);
    let v_64 = (bitcast<u32>(bitcast<i32>(r3.w)) >> 2u);
    let v_65 = bitcast<vec3<f32>>(vec3<u32>(g0[v_64], g0[(v_64 + 1u)], g0[(v_64 + 2u)]));
    r5 = vec4<f32>(v_65.xyz, r5.w);
    let v_66 = fma(r3.xyz, vec3<f32>(0.0453165397047996521f), r0.xyz);
    r0 = vec4<f32>(v_66.xyz, r0.w);
    let v_67 = fma(r5.xyz, vec3<f32>(0.0453165397047996521f), r1.xyw);
    r1 = vec4<f32>(v_67.xy, r1.z, v_67.z);
    let v_68 = bitcast<vec2<f32>>((vec2<i32>(132i, 144i) + bitcast<vec2<i32>>(r0.ww)));
    r3 = vec4<f32>(v_68.xy, r3.zw);
    let v_69 = (bitcast<u32>(bitcast<i32>(r3.x)) >> 2u);
    let v_70 = bitcast<vec3<f32>>(vec3<u32>(g0[v_69], g0[(v_69 + 1u)], g0[(v_69 + 2u)]));
    r3 = vec4<f32>(v_70.x, r3.y, v_70.yz);
    let v_71 = (bitcast<u32>(bitcast<i32>(r3.y)) >> 2u);
    let v_72 = bitcast<vec3<f32>>(vec3<u32>(g0[v_71], g0[(v_71 + 1u)], g0[(v_71 + 2u)]));
    r5 = vec4<f32>(v_72.xyz, r5.w);
    let v_73 = fma(r3.xzw, vec3<f32>(0.03937169164419174194f), r0.xyz);
    r0 = vec4<f32>(v_73.xyz, r0.w);
    let v_74 = fma(r5.xyz, vec3<f32>(0.03937169164419174194f), r1.xyw);
    r1 = vec4<f32>(v_74.xy, r1.z, v_74.z);
    let v_75 = (r0.xyz * vec3<f32>(3.15216803550720214844f));
    r0 = vec4<f32>(v_75.xyz, r0.w);
    let v_76 = (r1.xyw * vec3<f32>(3.15216803550720214844f));
    r3 = vec4<f32>(v_76.xyz, r3.w);
    r0.w = 1.0f;
    textureStore(u0, bitcast<vec2<i32>>(r2.xy), r0);
    r3.w = 1.0f;
    textureStore(u0, bitcast<vec2<i32>>(r4.xy), r3);
  }
}
