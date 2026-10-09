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
  let v_2 = bitcast<vec2<f32>>((vec3<i32>(vThreadGroupID).xy << vec2<u32>(7u, 1u)));
  let v_3 = r1;
  r1 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  r0.y = bitcast<f32>((bitcast<i32>(r1.y) + -6i));
  r1.x = bitcast<f32>((bitcast<i32>(r0.y) + bitcast<i32>(r0.x)));
  let v_4 = bitcast<vec2<f32>>((v_1.yx * vec2<i32>(1680i, 24i)));
  let v_5 = r0;
  r0 = vec4<f32>(v_4.x, v_5.y, v_4.y, v_5.w);
  let v_6 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r0.xz) + bitcast<vec2<i32>>(r0.zx)));
  r0 = vec4<f32>(r0.xy, v_6.xy);
  r2.x = 0.0f;
  let v_7 = bitcast<vec3<f32>>(v_1.yyy);
  r2 = vec4<f32>(r2.x, v_7.xyz);
  let v_8 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r2.xw) + bitcast<vec2<i32>>(r1.xz)));
  r3 = vec4<f32>(v_8.xy, r3.zw);
  let v_9 = vec2<f32>(bitcast<vec2<i32>>(r3.xy));
  r3 = vec4<f32>(v_9.xy, r3.zw);
  let v_10 = (r3.xy + vec2<f32>(1.0f, 0.5f));
  r3 = vec4<f32>(v_10.xy, r3.zw);
  let v_11 = (r3.xy * cb12_12.tint_symbol[15u].zw);
  r3 = vec4<f32>(v_11.xy, r3.zw);
  let v_12 = textureSampleLevel(t0, s2, r3.xyxx.xy, 0.0f).xyz;
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = (bitcast<u32>(r0.z) >> 2u);
  let v_14 = bitcast<vec3<u32>>(r3.xyz);
  g0[v_13] = v_14.x;
  g0[(v_13 + 1u)] = v_14.y;
  g0[(v_13 + 2u)] = v_14.z;
  r1.y = bitcast<f32>((12i + bitcast<i32>(r0.w)));
  r3.x = bitcast<f32>(v.tint_symbol_1[0i].x);
  r3.y = bitcast<f32>(v_1.y);
  let v_15 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r3.xy) + bitcast<vec2<i32>>(r1.xz)));
  r3 = vec4<f32>(v_15.xy, r3.zw);
  let v_16 = vec2<f32>(bitcast<vec2<i32>>(r3.xy));
  r3 = vec4<f32>(v_16.xy, r3.zw);
  let v_17 = (r3.xy + vec2<f32>(1.0f, 0.5f));
  r3 = vec4<f32>(v_17.xy, r3.zw);
  let v_18 = (r3.xy * cb12_12.tint_symbol[15u].zw);
  r3 = vec4<f32>(v_18.xy, r3.zw);
  let v_19 = textureSampleLevel(t0, s2, r3.xyxx.xy, 0.0f).xyz;
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = (bitcast<u32>(r1.y) >> 2u);
  let v_21 = bitcast<vec3<u32>>(r3.xyz);
  g0[v_20] = v_21.x;
  g0[(v_20 + 1u)] = v_21.y;
  g0[(v_20 + 2u)] = v_21.z;
  r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(v_1.x) < 12u)));
  if ((bitcast<u32>(r3.x) != 0u)) {
    r0.x = bitcast<f32>(((v_1.x * -12i) + bitcast<i32>(r0.x)));
    r0.x = bitcast<f32>((1668i + bitcast<i32>(r0.x)));
    r3.x = bitcast<f32>((bitcast<i32>(r0.y) + (-(v_1.xxxx)).x));
    r1.w = bitcast<f32>(v.tint_symbol_1[1i].x);
    r3.y = bitcast<f32>(v_1.y);
    let v_22 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.wz) + bitcast<vec2<i32>>(r3.xy)));
    r3 = vec4<f32>(v_22.xy, r3.zw);
    let v_23 = vec2<f32>(bitcast<vec2<i32>>(r3.xy));
    r3 = vec4<f32>(v_23.xy, r3.zw);
    let v_24 = (r3.xy + vec2<f32>(1.0f, 0.5f));
    r3 = vec4<f32>(v_24.xy, r3.zw);
    let v_25 = (r3.xy * cb12_12.tint_symbol[15u].zw);
    r3 = vec4<f32>(v_25.xy, r3.zw);
    let v_26 = textureSampleLevel(t0, s2, r3.xyxx.xy, 0.0f).xyz;
    r3 = vec4<f32>(v_26.xyz, r3.w);
    let v_27 = (bitcast<u32>(r0.x) >> 2u);
    let v_28 = bitcast<vec3<u32>>(r3.xyz);
    g0[v_27] = v_28.x;
    g0[(v_27 + 1u)] = v_28.y;
    g0[(v_27 + 2u)] = v_28.z;
  }
  workgroupBarrier();
  r3.x = bitcast<f32>((bitcast<i32>(r1.x) + 6i));
  r0.x = f32(bitcast<i32>(r3.x));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < cb12_12.tint_symbol[15u].x)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    let v_29 = r1;
    r3 = vec4<f32>(r3.x, v_29.zzz);
    r2 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2) + bitcast<vec4<i32>>(r3)));
    let v_30 = vec2<f32>(bitcast<vec2<i32>>(r2.xw));
    r0 = vec4<f32>(v_30.xy, r0.zw);
    let v_31 = (r0.xy + vec2<f32>(0.5f));
    r0 = vec4<f32>(v_31.xy, r0.zw);
    let v_32 = (r0.xy * cb12_12.tint_symbol[15u].zw);
    r0 = vec4<f32>(v_32.xy, r0.zw);
    let v_33 = textureSampleLevel(t0, s1, r0.xyxx.xy, 0.0f).xyz;
    r3 = vec4<f32>(v_33.xyz, r3.w);
    r4 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2.xwww) + vec4<i32>(1i, 0i, 0i, 0i)));
    let v_34 = vec2<f32>(bitcast<vec2<i32>>(r4.xw));
    r0 = vec4<f32>(v_34.xy, r0.zw);
    let v_35 = (r0.xy + vec2<f32>(0.5f));
    r0 = vec4<f32>(v_35.xy, r0.zw);
    let v_36 = (r0.xy * cb12_12.tint_symbol[15u].zw);
    r0 = vec4<f32>(v_36.xy, r0.zw);
    let v_37 = textureSampleLevel(t0, s1, r0.xyxx.xy, 0.0f).xyz;
    r5 = vec4<f32>(v_37.xyz, r5.w);
    let v_38 = (bitcast<u32>(bitcast<i32>(r0.z)) >> 2u);
    let v_39 = bitcast<vec3<f32>>(vec3<u32>(g0[v_38], g0[(v_38 + 1u)], g0[(v_38 + 2u)]));
    r0 = vec4<f32>(v_39.xyz, r0.w);
    let v_40 = (bitcast<u32>(bitcast<i32>(r1.y)) >> 2u);
    let v_41 = bitcast<vec3<f32>>(vec3<u32>(g0[v_40], g0[(v_40 + 1u)], g0[(v_40 + 2u)]));
    r1 = vec4<f32>(r1.x, v_41.xyz);
    let v_42 = (r0.xyz * vec3<f32>(0.03937169164419174194f));
    r0 = vec4<f32>(v_42.xyz, r0.w);
    let v_43 = fma(r3.xyz, vec3<f32>(0.0498677864670753479f), r0.xyz);
    r0 = vec4<f32>(v_43.xyz, r0.w);
    let v_44 = (r1.yzw * vec3<f32>(0.03937169164419174194f));
    r1 = vec4<f32>(r1.x, v_44.xyz);
    let v_45 = fma(r5.xyz, vec3<f32>(0.0498677864670753479f), r1.yzw);
    r1 = vec4<f32>(r1.x, v_45.xyz);
    r3 = bitcast<vec4<f32>>((vec4<i32>(24i, 36i, 48i, 60i) + bitcast<vec4<i32>>(r0.wwww)));
    let v_46 = (bitcast<u32>(bitcast<i32>(r3.x)) >> 2u);
    let v_47 = bitcast<vec3<f32>>(vec3<u32>(g0[v_46], g0[(v_46 + 1u)], g0[(v_46 + 2u)]));
    r5 = vec4<f32>(v_47.xyz, r5.w);
    let v_48 = (bitcast<u32>(bitcast<i32>(r3.y)) >> 2u);
    let v_49 = bitcast<vec3<f32>>(vec3<u32>(g0[v_48], g0[(v_48 + 1u)], g0[(v_48 + 2u)]));
    r6 = vec4<f32>(v_49.xyz, r6.w);
    let v_50 = fma(r5.xyz, vec3<f32>(0.0453165397047996521f), r0.xyz);
    r0 = vec4<f32>(v_50.xyz, r0.w);
    let v_51 = fma(r6.xyz, vec3<f32>(0.0453165397047996521f), r1.yzw);
    r1 = vec4<f32>(r1.x, v_51.xyz);
    let v_52 = (bitcast<u32>(bitcast<i32>(r3.z)) >> 2u);
    let v_53 = bitcast<vec3<f32>>(vec3<u32>(g0[v_52], g0[(v_52 + 1u)], g0[(v_52 + 2u)]));
    r3 = vec4<f32>(v_53.xyz, r3.w);
    let v_54 = (bitcast<u32>(bitcast<i32>(r3.w)) >> 2u);
    let v_55 = bitcast<vec3<f32>>(vec3<u32>(g0[v_54], g0[(v_54 + 1u)], g0[(v_54 + 2u)]));
    r5 = vec4<f32>(v_55.xyz, r5.w);
    let v_56 = fma(r3.xyz, vec3<f32>(0.04899886250495910645f), r0.xyz);
    r0 = vec4<f32>(v_56.xyz, r0.w);
    let v_57 = fma(r5.xyz, vec3<f32>(0.04899886250495910645f), r1.yzw);
    r1 = vec4<f32>(r1.x, v_57.xyz);
    r3 = bitcast<vec4<f32>>((vec4<i32>(84i, 96i, 108i, 120i) + bitcast<vec4<i32>>(r0.wwww)));
    let v_58 = (bitcast<u32>(bitcast<i32>(r3.x)) >> 2u);
    let v_59 = bitcast<vec3<f32>>(vec3<u32>(g0[v_58], g0[(v_58 + 1u)], g0[(v_58 + 2u)]));
    r5 = vec4<f32>(v_59.xyz, r5.w);
    let v_60 = (bitcast<u32>(bitcast<i32>(r3.y)) >> 2u);
    let v_61 = bitcast<vec3<f32>>(vec3<u32>(g0[v_60], g0[(v_60 + 1u)], g0[(v_60 + 2u)]));
    r6 = vec4<f32>(v_61.xyz, r6.w);
    let v_62 = fma(r5.xyz, vec3<f32>(0.04899886250495910645f), r0.xyz);
    r0 = vec4<f32>(v_62.xyz, r0.w);
    let v_63 = fma(r6.xyz, vec3<f32>(0.04899886250495910645f), r1.yzw);
    r1 = vec4<f32>(r1.x, v_63.xyz);
    let v_64 = (bitcast<u32>(bitcast<i32>(r3.z)) >> 2u);
    let v_65 = bitcast<vec3<f32>>(vec3<u32>(g0[v_64], g0[(v_64 + 1u)], g0[(v_64 + 2u)]));
    r3 = vec4<f32>(v_65.xyz, r3.w);
    let v_66 = (bitcast<u32>(bitcast<i32>(r3.w)) >> 2u);
    let v_67 = bitcast<vec3<f32>>(vec3<u32>(g0[v_66], g0[(v_66 + 1u)], g0[(v_66 + 2u)]));
    r5 = vec4<f32>(v_67.xyz, r5.w);
    let v_68 = fma(r3.xyz, vec3<f32>(0.0453165397047996521f), r0.xyz);
    r0 = vec4<f32>(v_68.xyz, r0.w);
    let v_69 = fma(r5.xyz, vec3<f32>(0.0453165397047996521f), r1.yzw);
    r1 = vec4<f32>(r1.x, v_69.xyz);
    let v_70 = bitcast<vec2<f32>>((vec2<i32>(132i, 144i) + bitcast<vec2<i32>>(r0.ww)));
    r3 = vec4<f32>(v_70.xy, r3.zw);
    let v_71 = (bitcast<u32>(bitcast<i32>(r3.x)) >> 2u);
    let v_72 = bitcast<vec3<f32>>(vec3<u32>(g0[v_71], g0[(v_71 + 1u)], g0[(v_71 + 2u)]));
    r3 = vec4<f32>(v_72.x, r3.y, v_72.yz);
    let v_73 = (bitcast<u32>(bitcast<i32>(r3.y)) >> 2u);
    let v_74 = bitcast<vec3<f32>>(vec3<u32>(g0[v_73], g0[(v_73 + 1u)], g0[(v_73 + 2u)]));
    r5 = vec4<f32>(v_74.xyz, r5.w);
    let v_75 = fma(r3.xzw, vec3<f32>(0.03937169164419174194f), r0.xyz);
    r0 = vec4<f32>(v_75.xyz, r0.w);
    let v_76 = fma(r5.xyz, vec3<f32>(0.03937169164419174194f), r1.yzw);
    r1 = vec4<f32>(r1.x, v_76.xyz);
    let v_77 = (r0.xyz * vec3<f32>(3.15216803550720214844f));
    r0 = vec4<f32>(v_77.xyz, r0.w);
    let v_78 = (r1.yzw * vec3<f32>(3.15216803550720214844f));
    r3 = vec4<f32>(v_78.xyz, r3.w);
    r0.w = 1.0f;
    textureStore(u0, bitcast<vec2<i32>>(r2.xy), r0);
    r3.w = 1.0f;
    textureStore(u0, bitcast<vec2<i32>>(r4.xy), r3);
  }
}
