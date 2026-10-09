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

var<private> r9 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb60_struct {
  tint_symbol_2 : array<vec4<f32>, 60u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb60_struct;

struct cb8_struct {
  tint_symbol_3 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb8_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v5 : vec4<f32>;

var<private> v6 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v5 = v_2;
  x1[0u].x = v6[0u];
  x1[0u].y = v6[1u];
  x1[0u].z = v6[2u];
  x1[0u].w = v6[3u];
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xxx * v3.xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  r2.x = (cb2_2.tint_symbol_1[15u].w * cb12_12.tint_symbol_4[0u].x);
  let v_4 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0.w = (r0.w * v0.w);
  let v_5 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_6 = r2;
  r2 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  let v_7 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = ((-(v4.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r2.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_9 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = (r3.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = fma(r3.xxx, cb6_6.tint_symbol_5[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = fma(r3.zzz, cb6_6.tint_symbol_5[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = fma(r4.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = &(x0[0u]);
  let v_15 = r5;
  *(v_14) = vec4<f32>(v_15.xyz, (*(v_14)).w);
  let v_16 = fma(r4.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r6 = vec4<f32>(v_16.xyz, r6.w);
  let v_17 = &(x0[1u]);
  let v_18 = r6;
  *(v_17) = vec4<f32>(v_18.xyz, (*(v_17)).w);
  let v_19 = fma(r4.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r7 = vec4<f32>(v_19.xyz, r7.w);
  let v_20 = &(x0[2u]);
  let v_21 = r7;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r4.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = &(x0[3u]);
  let v_24 = r4;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_25 = abs(r7.yyyy);
  r4.z = max(v_25.z, abs(r7.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r3.w)));
  let v_26 = (bitcast<u32>(r4.z) != 0u);
  let v_27 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_27, v_26);
  let v_28 = abs(r6.yyyy);
  r4.w = max(v_28.w, abs(r6.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_29 = bitcast<u32>(r4.w);
  r4.z = select(r4.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_29 != 0u));
  let v_30 = abs(r5.yyyy);
  r4.w = max(v_30.w, abs(r5.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_31 = bitcast<u32>(r3.w);
  r3.w = select(r4.z, 0.0f, (v_31 != 0u));
  let v_32 = x0[bitcast<i32>(r3.w)];
  r5 = vec4<f32>(v_32.xyz, r5.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.z = (r3.w + 0.5f);
  r4.z = (r4.z * 0.25f);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(1065353216u)));
  r3.w = dot(r6, cb6_6.tint_symbol_5[12u]);
  r4.w = dot(r6, cb6_6.tint_symbol_5[13u]);
  r6.x = (r5.x + 0.5f);
  r6.y = fma(r5.y, 0.25f, r4.z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r5.z);
  let v_33 = dpdx(r6.xyy);
  r7 = vec4<f32>(v_33.xy, r7.z, v_33.z);
  r7.z = dpdx(r3.w);
  let v_34 = dpdy(r6.yxy);
  r8 = vec4<f32>(v_34.xyz, r8.w);
  r8.w = dpdy(r3.w);
  let v_35 = (r7.yw * r8.yw);
  r5 = vec4<f32>(v_35.xy, r5.zw);
  let v_36 = -(r5.xyxx);
  let v_37 = fma(r7.xz, r8.xz, v_36.xy);
  r9 = vec4<f32>(v_37.xy, r9.zw);
  r5.x = (1.0f / r9.x);
  r5.y = (r7.z * r8.y);
  let v_38 = -(r5.yyyy);
  r9.z = fma(r7.x, r8.w, v_38.z);
  let v_39 = (r5.xx * r9.yz);
  r5 = vec4<f32>(v_39.xy, r5.zw);
  let v_40 = max(r5.xy, vec2<f32>());
  r5 = vec4<f32>(v_40.xy, r5.zw);
  let v_41 = min(r5.xy, vec2<f32>(0.5f));
  r5 = vec4<f32>(v_41.xy, r5.zw);
  r3.w = fma((-(r4.wwww)).w, r5.x, r3.w);
  r3.w = fma((-(r4.wwww)).w, r5.y, r3.w);
  let v_42 = bitcast<u32>(r4.z);
  let v_43 = r3.w;
  r3.w = select(r5.z, v_43, (v_42 != 0u));
  let v_44 = r6.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_44.xy, r3.w);
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_45 = abs(r4.yyyy);
  r4.x = max(v_45.x, abs(r4.xxxx).x);
  r4.x = clamp(fma(r4.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = fma(r2.w, r4.x, r3.w);
  let v_46 = (r2.yzw * r2.yzw);
  r2 = vec4<f32>(r2.x, v_46.xyz);
  r2.w = min(r2.w, 1.0f);
  r3.w = clamp(fma(v4.xyz.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_5[3u].z);
  let v_47 = -(r2.wwww);
  r2.w = fma(r3.w, v_47.w, r2.w);
  let v_48 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_49 = dot(r1.yzw, v_48.xyz);
  r3.w = clamp(vec4<f32>(v_49, v_49, v_49, v_49).w, 0.0f, 1.0f);
  let v_50 = (r0.xyz * r3.www);
  r4 = vec4<f32>(v_50.xyz, r4.w);
  let v_51 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_51.xyz, r4.w);
  r1.x = fma(v3.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_52 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_52.xyz, r5.w);
  r3.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_53 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_53.xyz, r6.w);
  let v_54 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_54.xyz, r6.w);
  let v_55 = fma(r5.xyz, r3.www, r6.xyz);
  r5 = vec4<f32>(v_55.xyz, r5.w);
  let v_56 = (r2.zzz * r5.xyz);
  r5 = vec4<f32>(v_56.xyz, r5.w);
  let v_57 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_57.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_58 = dot(r7.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_58, v_58, v_58, v_58).x, 0.0f, 1.0f);
  let v_59 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r1 = vec4<f32>(v_59.xyz, r1.w);
  let v_60 = fma(r1.xyz, r2.yyy, r5.xyz);
  r1 = vec4<f32>(v_60.xyz, r1.w);
  let v_61 = (r0.xyz * r1.xyz);
  r1 = vec4<f32>(v_61.xyz, r1.w);
  let v_62 = fma(r4.xyz, r2.www, r1.xyz);
  r1 = vec4<f32>(v_62.xyz, r1.w);
  r1.w = (r2.x * cb3_3.tint_symbol_2[59u].w);
  let v_63 = fma(r0.xyz, r1.www, r1.xyz);
  r0 = vec4<f32>(v_63.xyz, r0.w);
  o0.w = clamp(((r0.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.x = sqrt(r0.w);
    let v_64 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_64.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r3.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_65 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_65 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_66 = (r0.www * r3.xyz);
    r2 = vec4<f32>(v_66.xyz, r2.w);
    let v_67 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_67, v_67, v_67, v_67).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_68 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_68, v_68, v_68, v_68).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_69 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_69.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_70 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_70.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_71 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_71.xyz, r2.w);
    let v_72 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_72.xyz, r2.w);
    let v_73 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_73.xyz, r4.w);
    let v_74 = fma(r1.www, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_74.xyz, r2.w);
    let v_75 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_76 = (r2.xyz + v_75.xyz);
    r2 = vec4<f32>(v_76.xyz, r2.w);
    let v_77 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_77.xyz, r2.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_78 = ((-(r2.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_78.xyz, r4.w);
    let v_79 = fma(r1.xxx, r4.xyz, r2.xyz);
    r1 = vec4<f32>(v_79.xy, r1.z, v_79.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_80 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_80.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_81 = -(r0.xyxz);
    let v_82 = fma(r1.xyw, r0.www, v_81.xyw);
    r1 = vec4<f32>(v_82.xy, r1.z, v_82.z);
    let v_83 = fma(r1.zzz, r1.xyw, r0.xyz);
    o0 = vec4<f32>(v_83.xyz, o0.w);
  } else {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.x = sqrt(r0.w);
    let v_84 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_84.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r3.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_85 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_85 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_86 = (r0.www * r3.xyz);
    r2 = vec4<f32>(v_86.xyz, r2.w);
    let v_87 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_87, v_87, v_87, v_87).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_88 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_88, v_88, v_88, v_88).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_89 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_89.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_90 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_90.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_91 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_91.xyz, r2.w);
    let v_92 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_92.xyz, r2.w);
    let v_93 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_93.xyz, r3.w);
    let v_94 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_94.xyz, r2.w);
    let v_95 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_96 = (r2.xyz + v_95.xyz);
    r2 = vec4<f32>(v_96.xyz, r2.w);
    let v_97 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_97.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_98 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_98.xyz, r3.w);
    let v_99 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_99.xy, r1.z, v_99.z);
    let v_100 = ((-(r0.xyxz)).xyw + r1.xyw);
    r1 = vec4<f32>(v_100.xy, r1.z, v_100.z);
    let v_101 = fma(r1.zzz, r1.xyw, r0.xyz);
    o0 = vec4<f32>(v_101.xyz, o0.w);
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_102 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_102);
  return o0;
}
