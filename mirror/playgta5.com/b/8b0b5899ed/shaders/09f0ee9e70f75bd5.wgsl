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
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.5f)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_4 = (r1.xxx * v3.xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  r2.x = (cb2_2.tint_symbol_1[15u].w * cb12_12.tint_symbol_4[0u].x);
  let v_5 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = (r0.w * v0.w);
  let v_6 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_7 = r2;
  r2 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = ((-(v4.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r2.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_10 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = (r3.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = fma(r3.xxx, cb6_6.tint_symbol_5[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = fma(r3.zzz, cb6_6.tint_symbol_5[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = fma(r4.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = &(x0[0u]);
  let v_16 = r5;
  *(v_15) = vec4<f32>(v_16.xyz, (*(v_15)).w);
  let v_17 = fma(r4.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  let v_18 = &(x0[1u]);
  let v_19 = r6;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = fma(r4.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r7 = vec4<f32>(v_20.xyz, r7.w);
  let v_21 = &(x0[2u]);
  let v_22 = r7;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  let v_23 = fma(r4.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = &(x0[3u]);
  let v_25 = r4;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_26 = abs(r7.yyyy);
  r4.z = max(v_26.z, abs(r7.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r3.w)));
  let v_27 = (bitcast<u32>(r4.z) != 0u);
  let v_28 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_28, v_27);
  let v_29 = abs(r6.yyyy);
  r4.w = max(v_29.w, abs(r6.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_30 = bitcast<u32>(r4.w);
  r4.z = select(r4.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_30 != 0u));
  let v_31 = abs(r5.yyyy);
  r4.w = max(v_31.w, abs(r5.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_32 = bitcast<u32>(r3.w);
  r3.w = select(r4.z, 0.0f, (v_32 != 0u));
  let v_33 = x0[bitcast<i32>(r3.w)];
  r5 = vec4<f32>(v_33.xyz, r5.w);
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
  let v_34 = dpdx(r6.xyy);
  r7 = vec4<f32>(v_34.xy, r7.z, v_34.z);
  r7.z = dpdx(r3.w);
  let v_35 = dpdy(r6.yxy);
  r8 = vec4<f32>(v_35.xyz, r8.w);
  r8.w = dpdy(r3.w);
  let v_36 = (r7.yw * r8.yw);
  r5 = vec4<f32>(v_36.xy, r5.zw);
  let v_37 = -(r5.xyxx);
  let v_38 = fma(r7.xz, r8.xz, v_37.xy);
  r9 = vec4<f32>(v_38.xy, r9.zw);
  r5.x = (1.0f / r9.x);
  r5.y = (r7.z * r8.y);
  let v_39 = -(r5.yyyy);
  r9.z = fma(r7.x, r8.w, v_39.z);
  let v_40 = (r5.xx * r9.yz);
  r5 = vec4<f32>(v_40.xy, r5.zw);
  let v_41 = max(r5.xy, vec2<f32>());
  r5 = vec4<f32>(v_41.xy, r5.zw);
  let v_42 = min(r5.xy, vec2<f32>(0.5f));
  r5 = vec4<f32>(v_42.xy, r5.zw);
  r3.w = fma((-(r4.wwww)).w, r5.x, r3.w);
  r3.w = fma((-(r4.wwww)).w, r5.y, r3.w);
  let v_43 = bitcast<u32>(r4.z);
  let v_44 = r3.w;
  r3.w = select(r5.z, v_44, (v_43 != 0u));
  let v_45 = r6.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_45.xy, r3.w);
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_46 = abs(r4.yyyy);
  r4.x = max(v_46.x, abs(r4.xxxx).x);
  r4.x = clamp(fma(r4.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = fma(r2.w, r4.x, r3.w);
  let v_47 = (r2.yzw * r2.yzw);
  r2 = vec4<f32>(r2.x, v_47.xyz);
  r2.w = min(r2.w, 1.0f);
  r3.w = clamp(fma(v4.xyz.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_5[3u].z);
  let v_48 = -(r2.wwww);
  r2.w = fma(r3.w, v_48.w, r2.w);
  let v_49 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_50 = dot(r1.yzw, v_49.xyz);
  r3.w = clamp(vec4<f32>(v_50, v_50, v_50, v_50).w, 0.0f, 1.0f);
  let v_51 = (r0.xyz * r3.www);
  r4 = vec4<f32>(v_51.xyz, r4.w);
  let v_52 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_52.xyz, r4.w);
  r1.x = fma(v3.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_53 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_53.xyz, r5.w);
  r3.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_54 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_54.xyz, r6.w);
  let v_55 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_55.xyz, r6.w);
  let v_56 = fma(r5.xyz, r3.www, r6.xyz);
  r5 = vec4<f32>(v_56.xyz, r5.w);
  let v_57 = (r2.zzz * r5.xyz);
  r5 = vec4<f32>(v_57.xyz, r5.w);
  let v_58 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_58.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_59 = dot(r7.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_59, v_59, v_59, v_59).x, 0.0f, 1.0f);
  let v_60 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r1 = vec4<f32>(v_60.xyz, r1.w);
  let v_61 = fma(r1.xyz, r2.yyy, r5.xyz);
  r1 = vec4<f32>(v_61.xyz, r1.w);
  let v_62 = (r0.xyz * r1.xyz);
  r1 = vec4<f32>(v_62.xyz, r1.w);
  let v_63 = fma(r4.xyz, r2.www, r1.xyz);
  r1 = vec4<f32>(v_63.xyz, r1.w);
  r1.w = (r2.x * cb3_3.tint_symbol_2[59u].w);
  let v_64 = fma(r0.xyz, r1.www, r1.xyz);
  r0 = vec4<f32>(v_64.xyz, r0.w);
  o0.w = clamp(((r0.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.x = sqrt(r0.w);
    let v_65 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_65.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r3.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_66 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_66 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_67 = (r0.www * r3.xyz);
    r2 = vec4<f32>(v_67.xyz, r2.w);
    let v_68 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_68, v_68, v_68, v_68).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_69 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_69, v_69, v_69, v_69).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_70 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_70.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_71 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_71.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_72 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_72.xyz, r2.w);
    let v_73 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_73.xyz, r2.w);
    let v_74 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_74.xyz, r4.w);
    let v_75 = fma(r1.www, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_75.xyz, r2.w);
    let v_76 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_77 = (r2.xyz + v_76.xyz);
    r2 = vec4<f32>(v_77.xyz, r2.w);
    let v_78 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_78.xyz, r2.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_79 = ((-(r2.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_79.xyz, r4.w);
    let v_80 = fma(r1.xxx, r4.xyz, r2.xyz);
    r1 = vec4<f32>(v_80.xy, r1.z, v_80.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_81 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_81.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_82 = -(r0.xyxz);
    let v_83 = fma(r1.xyw, r0.www, v_82.xyw);
    r1 = vec4<f32>(v_83.xy, r1.z, v_83.z);
    let v_84 = fma(r1.zzz, r1.xyw, r0.xyz);
    o0 = vec4<f32>(v_84.xyz, o0.w);
  } else {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.x = sqrt(r0.w);
    let v_85 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_85.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r3.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_86 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_86 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_87 = (r0.www * r3.xyz);
    r2 = vec4<f32>(v_87.xyz, r2.w);
    let v_88 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_88, v_88, v_88, v_88).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_89 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_89, v_89, v_89, v_89).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_90 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_90.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_91 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_91.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_92 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_92.xyz, r2.w);
    let v_93 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_93.xyz, r2.w);
    let v_94 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_94.xyz, r3.w);
    let v_95 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_95.xyz, r2.w);
    let v_96 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_97 = (r2.xyz + v_96.xyz);
    r2 = vec4<f32>(v_97.xyz, r2.w);
    let v_98 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_98.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_99 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_99.xyz, r3.w);
    let v_100 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_100.xy, r1.z, v_100.z);
    let v_101 = ((-(r0.xyxz)).xyw + r1.xyw);
    r1 = vec4<f32>(v_101.xy, r1.z, v_101.z);
    let v_102 = fma(r1.zzz, r1.xyw, r0.xyz);
    o0 = vec4<f32>(v_102.xyz, o0.w);
  }
}

fn v_3(v_103 : bool) {
  if (v_103) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_104 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_104);
  return o0;
}
