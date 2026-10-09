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

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb8_struct {
  tint_symbol_3 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb8_struct;

struct cb15_struct {
  tint_symbol_4 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v12 : vec4<f32>;

var<private> v13 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_6;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>, v10 : vec4<f32>, v11 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v12 = v_2;
  x1[0u].x = v13[0u];
  x1[0u].y = v13[1u];
  x1[0u].z = v13[2u];
  x1[0u].w = v13[3u];
  r0 = textureSample(t0, s0, v2.xyxx.xy);
  r1.x = (r0.w * v10.w);
  r0.w = (r1.x * v9.w);
  r1 = textureSample(t4, s4, v2.zwzz.xy);
  r1.x = dot(v1, r1);
  r0 = clamp(fma(r1.xxxx, v0, r0), vec4<f32>(), vec4<f32>(1.0f));
  let v_3 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = (r1.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(r1.xxx, cb6_6.tint_symbol_4[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r1.zzz, cb6_6.tint_symbol_4[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma(r2.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = &(x0[0u]);
  let v_10 = r3;
  *(v_9) = vec4<f32>(v_10.xyz, (*(v_9)).w);
  let v_11 = fma(r2.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = &(x0[1u]);
  let v_13 = r4;
  *(v_12) = vec4<f32>(v_13.xyz, (*(v_12)).w);
  let v_14 = fma(r2.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = &(x0[2u]);
  let v_16 = r5;
  *(v_15) = vec4<f32>(v_16.xyz, (*(v_15)).w);
  let v_17 = fma(r2.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = &(x0[3u]);
  let v_19 = r2;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  r1.w = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).w, 1.5f, 1.0f);
  r1.w = (r1.w * 0.5f);
  let v_20 = abs(r5.yyyy);
  r2.x = max(v_20.x, abs(r5.xxxx).x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.w)));
  let v_21 = (bitcast<u32>(r2.x) != 0u);
  let v_22 = bitcast<f32>(v.tint_symbol_5[0i].x);
  r2.x = select(bitcast<f32>(v.tint_symbol_5[1i].x), v_22, v_21);
  let v_23 = abs(r4.yyyy);
  r2.y = max(v_23.y, abs(r4.xxxx).y);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.y < r1.w)));
  let v_24 = bitcast<u32>(r2.y);
  r2.x = select(r2.x, bitcast<f32>(v.tint_symbol_5[2i].x), (v_24 != 0u));
  let v_25 = abs(r3.yyyy);
  r2.y = max(v_25.y, abs(r3.xxxx).y);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r2.y < r1.w)));
  let v_26 = bitcast<u32>(r1.w);
  r1.w = select(r2.x, 0.0f, (v_26 != 0u));
  let v_27 = x0[bitcast<i32>(r1.w)];
  r2 = vec4<f32>(v_27.xyz, r2.w);
  r1.w = f32(bitcast<i32>(r1.w));
  r2.w = (r1.w + 0.5f);
  r2.w = (r2.w * 0.25f);
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.wwww)));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  r1.w = dot(r3, cb6_6.tint_symbol_4[12u]);
  r3.x = dot(r3, cb6_6.tint_symbol_4[13u]);
  r2.x = (r2.x + 0.5f);
  r2.y = fma(r2.y, 0.25f, r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r1.w == 0.0f))));
  r1.w = ((-(r1.wwww)).w + r2.z);
  r4.x = dpdx(r2.x);
  let v_28 = dpdx(r2.yy);
  let v_29 = r3;
  r3 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
  r4.z = dpdx(r1.w);
  let v_30 = dpdy(r2.yxy);
  r5 = vec4<f32>(v_30.xyz, r5.w);
  r5.w = dpdy(r1.w);
  let v_31 = (r3.yz * r5.yw);
  let v_32 = r3;
  r3 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
  let v_33 = -(r3.yzyy);
  let v_34 = fma(r4.xz, r5.xz, v_33.xy);
  r6 = vec4<f32>(v_34.xy, r6.zw);
  r3.y = (1.0f / r6.x);
  r3.z = (r4.z * r5.y);
  let v_35 = -(r3.zzzz);
  r6.z = fma(r4.x, r5.w, v_35.z);
  let v_36 = (r3.yy * r6.yz);
  let v_37 = r3;
  r3 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
  let v_38 = max(r3.yz, vec2<f32>());
  let v_39 = r3;
  r3 = vec4<f32>(v_39.x, v_38.xy, v_39.w);
  let v_40 = min(r3.yz, vec2<f32>(0.5f));
  let v_41 = r3;
  r3 = vec4<f32>(v_41.x, v_40.xy, v_41.w);
  r1.w = fma((-(r3.xxxx)).w, r3.y, r1.w);
  r1.w = fma((-(r3.xxxx)).w, r3.z, r1.w);
  let v_42 = bitcast<u32>(r2.w);
  let v_43 = r1.w;
  r1.w = select(r2.z, v_43, (v_42 != 0u));
  r3.x = (r2.x + cb6_6.tint_symbol_4[14u].z);
  r3.y = fma(cb6_6.tint_symbol_4[14u].w, 0.25f, r2.y);
  let v_44 = r3.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_44.xy, r1.w);
  let v_45 = fma(v5.xyz, r1.www, v7.xyz);
  r2 = vec4<f32>(v_45.xyz, r2.w);
  let v_46 = fma(v6.xyz, r1.www, v8.xyz);
  r3 = vec4<f32>(v_46.xyz, r3.w);
  let v_47 = fma(v9.xyz, r0.www, r2.xyz);
  r2 = vec4<f32>(v_47.xyz, r2.w);
  let v_48 = fma(v10.xyz, r0.www, r3.xyz);
  r3 = vec4<f32>(v_48.xyz, r3.w);
  let v_49 = fma(r0.xyz, r2.xyz, r3.xyz);
  r2 = vec4<f32>(v_49.xyz, r2.w);
  let v_50 = fma(v11.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  let v_51 = ((-(v3.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_51.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_52 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_52.xyz, r2.w);
  r0.w = dot((-(r2.xyzx)).xyz, v4.xyz);
  r0.w = (r0.w + r0.w);
  let v_53 = -(r0.wwww);
  let v_54 = fma(v4.xyz, v_53.xyz, (-(r2.xyzx)).xyz);
  r2 = vec4<f32>(v_54.xyz, r2.w);
  let v_55 = clamp(((v6.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_55.xy, r3.zw);
  r0.w = ((-(r3.xxxx)).w + 1.0f);
  r1.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.w = (r0.w * cb5_5.tint_symbol_3[6u].z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.w)));
  r3.x = fma(r0.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.w = (r0.w * r0.w);
  r0.w = fma(r0.w, 5.0f, r1.w);
  let v_56 = bitcast<u32>(r2.w);
  let v_57 = r3.x;
  r0.w = select(r0.w, v_57, (v_56 != 0u));
  let v_58 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_58.xy, r2.z, v_58.z);
  r1.w = (abs(r2.zzzz).w + 1.0f);
  let v_59 = (r2.xyw / r1.www);
  r2 = vec4<f32>(v_59.xy, r2.z, v_59.z);
  let v_60 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_60.xy, r2.z, v_60.z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_61 = bitcast<vec2<u32>>(r1.ww);
  let v_62 = r2.xy;
  let v_63 = select(r2.wy, v_62, (v_61 != vec2<u32>()));
  r2 = vec4<f32>(v_63.xy, r2.zw);
  let v_64 = r0.w;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_64);
  r0.w = max(v7.w, v8.w);
  let v_65 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_65.xyz, r2.w);
  let v_66 = (r3.yyy * r2.xyz);
  r3 = vec4<f32>(v_66.xyz, r3.w);
  let v_67 = (r3.xyz * vec3<f32>(0.68169009685516357422f));
  r3 = vec4<f32>(v_67.xyz, r3.w);
  let v_68 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r3.xyz);
  r2 = vec4<f32>(v_68.xyz, r2.w);
  let v_69 = fma(r2.xyz, v5.www, r0.xyz);
  r0 = vec4<f32>(v_69.xyz, r0.w);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r1.xyz, r1.xyz);
    r1.w = sqrt(r0.w);
    let v_70 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_70.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r1.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_71 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_71 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_72 = (r0.www * r1.xyz);
    r3 = vec4<f32>(v_72.xyz, r3.w);
    let v_73 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_73, v_73, v_73, v_73).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_74 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_74, v_74, v_74, v_74).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_75 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_75.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_76 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_76.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_77 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_77.xyz, r3.w);
    let v_78 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_78.xyz, r3.w);
    let v_79 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_79.xyz, r4.w);
    let v_80 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_80.xyz, r3.w);
    let v_81 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_82 = (r3.xyz + v_81.xyz);
    r3 = vec4<f32>(v_82.xyz, r3.w);
    let v_83 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_83.x, r2.y, v_83.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_84 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_84.xyz, r3.w);
    let v_85 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_85.x, r2.y, v_85.yz);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_86 = (v12.xy * cb2_2.tint_symbol_1[18u].zw);
      r3 = vec4<f32>(v_86.xy, r3.zw);
      r3 = textureSample(t11, s11, r3.xyxx.xy);
      r0.w = (r3.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_87 = -(r0.xxyz);
    let v_88 = fma(r2.xzw, r0.www, v_87.xzw);
    r2 = vec4<f32>(v_88.x, r2.y, v_88.yz);
    let v_89 = fma(r2.yyy, r2.xzw, r0.xyz);
    r2 = vec4<f32>(v_89.xyz, r2.w);
  } else {
    r0.w = dot(r1.xyz, r1.xyz);
    r1.w = sqrt(r0.w);
    let v_90 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.w = (r1.w + v_90.w);
    r2.w = max(r2.w, 0.0f);
    r1.w = (r2.w / r1.w);
    r1.w = (r1.w * r1.z);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r3.y = (r3.x * -1.44269502162933349609f);
    r3.y = exp2(r3.y);
    r3.y = ((-(r3.yyyy)).y + 1.0f);
    r3.x = (r3.y / r3.x);
    let v_91 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r3.x, (v_91 != 0u));
    r3.x = (r2.w * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r3.x);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_92 = (r0.www * r1.xyz);
    r1 = vec4<f32>(v_92.xyz, r1.w);
    let v_93 = dot(r1.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_93, v_93, v_93, v_93).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_94 = dot(r1.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.x = clamp(vec4<f32>(v_94, v_94, v_94, v_94).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[53u].w);
    r1.x = exp2(r1.x);
    r1.y = fma((-(r1.wwww)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    let v_95 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r1.z = (r2.w + v_95.z);
    r1.z = max(r1.z, 0.0f);
    let v_96 = (r1.yz * cb3_3.tint_symbol_2[51u].yx);
    let v_97 = r1;
    r1 = vec4<f32>(v_97.x, v_96.xy, v_97.w);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    r1.z = clamp(fma(r1.yyyy, r1.zzzz, r3.xxxx).z, 0.0f, 1.0f);
    let v_98 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.w = (r2.w * v_98.w);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    let v_99 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_99.xyz, r3.w);
    let v_100 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_100.xyz, r3.w);
    let v_101 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_101.xyz, r4.w);
    let v_102 = fma(r1.xxx, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_102.xyz, r3.w);
    let v_103 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_104 = (r3.xyz + v_103.xyz);
    r3 = vec4<f32>(v_104.xyz, r3.w);
    let v_105 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_105.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_106 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_106.xyz, r4.w);
    let v_107 = fma(r1.yyy, r4.xyz, r3.xyz);
    r1 = vec4<f32>(v_107.xy, r1.z, v_107.z);
    let v_108 = ((-(r0.xyxz)).xyw + r1.xyw);
    r1 = vec4<f32>(v_108.xy, r1.z, v_108.z);
    let v_109 = fma(r1.zzz, r1.xyw, r0.xyz);
    r2 = vec4<f32>(v_109.xyz, r2.w);
  }
  let v_110 = (r2.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_110.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>, @location(11u) v11 : vec4<f32>, @builtin(position) v_111 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v_111);
  return o0;
}
