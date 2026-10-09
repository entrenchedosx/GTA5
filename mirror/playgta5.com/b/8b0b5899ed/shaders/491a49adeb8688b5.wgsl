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

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v4 : vec4<f32>;

var<private> v5 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_6;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v4 = v_2;
  x1[0u].x = v5[0u];
  x1[0u].y = v5[1u];
  x1[0u].z = v5[2u];
  x1[0u].w = v5[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.5f)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_4 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  r0.w = (r0.w * v0.w);
  let v_5 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  let v_6 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = ((-(v3.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  r2.z = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_8 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = (r3.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = fma(r3.xxx, cb6_6.tint_symbol_4[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = fma(r3.zzz, cb6_6.tint_symbol_4[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = fma(r4.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = &(x0[0u]);
  let v_14 = r5;
  *(v_13) = vec4<f32>(v_14.xyz, (*(v_13)).w);
  let v_15 = fma(r4.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r6 = vec4<f32>(v_15.xyz, r6.w);
  let v_16 = &(x0[1u]);
  let v_17 = r6;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = fma(r4.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r7 = vec4<f32>(v_18.xyz, r7.w);
  let v_19 = &(x0[2u]);
  let v_20 = r7;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = fma(r4.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = &(x0[3u]);
  let v_23 = r4;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  r2.w = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_24 = abs(r7.yyyy);
  r3.w = max(v_24.w, abs(r7.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_25 = (bitcast<u32>(r3.w) != 0u);
  let v_26 = bitcast<f32>(v.tint_symbol_5[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_5[1i].x), v_26, v_25);
  let v_27 = abs(r6.yyyy);
  r4.z = max(v_27.z, abs(r6.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r2.w)));
  let v_28 = bitcast<u32>(r4.z);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_5[2i].x), (v_28 != 0u));
  let v_29 = abs(r5.yyyy);
  r4.z = max(v_29.z, abs(r5.xxxx).z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r4.z < r2.w)));
  let v_30 = bitcast<u32>(r2.w);
  r2.w = select(r3.w, 0.0f, (v_30 != 0u));
  let v_31 = x0[bitcast<i32>(r2.w)];
  r5 = vec4<f32>(v_31.xyz, r5.w);
  r2.w = f32(bitcast<i32>(r2.w));
  r3.w = (r2.w + 0.5f);
  r3.w = (r3.w * 0.25f);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(1065353216u)));
  r2.w = dot(r6, cb6_6.tint_symbol_4[12u]);
  r4.z = dot(r6, cb6_6.tint_symbol_4[13u]);
  r4.w = (r5.x + 0.5f);
  r3.w = fma(r5.y, 0.25f, r3.w);
  r5.x = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  r2.w = ((-(r2.wwww)).w + r5.z);
  r6.x = dpdx(r4.w);
  let v_32 = dpdx(r3.ww);
  let v_33 = r5;
  r5 = vec4<f32>(v_33.x, v_32.x, v_33.z, v_32.y);
  r6.z = dpdx(r2.w);
  r7.y = dpdy(r4.w);
  let v_34 = dpdy(r3.ww);
  let v_35 = r7;
  r7 = vec4<f32>(v_34.x, v_35.y, v_34.y, v_35.w);
  r7.w = dpdy(r2.w);
  let v_36 = (r5.yw * r7.yw);
  let v_37 = r5;
  r5 = vec4<f32>(v_37.x, v_36.x, v_37.z, v_36.y);
  let v_38 = -(r5.ywyy);
  let v_39 = fma(r6.xz, r7.xz, v_38.xy);
  r8 = vec4<f32>(v_39.xy, r8.zw);
  r5.y = (1.0f / r8.x);
  r5.w = (r6.z * r7.y);
  let v_40 = -(r5.wwww);
  r8.z = fma(r6.x, r7.w, v_40.z);
  let v_41 = (r5.yy * r8.yz);
  let v_42 = r5;
  r5 = vec4<f32>(v_42.x, v_41.x, v_42.z, v_41.y);
  let v_43 = max(r5.yw, vec2<f32>());
  let v_44 = r5;
  r5 = vec4<f32>(v_44.x, v_43.x, v_44.z, v_43.y);
  let v_45 = min(r5.yw, vec2<f32>(0.5f));
  let v_46 = r5;
  r5 = vec4<f32>(v_46.x, v_45.x, v_46.z, v_45.y);
  r2.w = fma((-(r4.zzzz)).w, r5.y, r2.w);
  r2.w = fma((-(r4.zzzz)).w, r5.w, r2.w);
  let v_47 = bitcast<u32>(r5.x);
  let v_48 = r2.w;
  r2.w = select(r5.z, v_48, (v_47 != 0u));
  r5.x = (r4.w + cb6_6.tint_symbol_4[14u].z);
  r5.y = fma(cb6_6.tint_symbol_4[14u].w, 0.25f, r3.w);
  let v_49 = r5.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_49.xy, r2.w);
  r2.z = clamp(fma(r2.zzzz, cb6_6.tint_symbol_4[0u].wwww, cb6_6.tint_symbol_4[1u].wwww).z, 0.0f, 1.0f);
  let v_50 = abs(r4.yyyy);
  r3.w = max(v_50.w, abs(r4.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.z = fma(r2.z, r3.w, r2.w);
  let v_51 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_51.xyz, r2.w);
  r2.z = min(r2.z, 1.0f);
  r2.w = clamp(fma(v3.xyz.zzzz, cb6_6.tint_symbol_4[3u].xxxx, cb6_6.tint_symbol_4[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_4[3u].z);
  let v_52 = -(r2.zzzz);
  r2.z = fma(r2.w, v_52.z, r2.z);
  let v_53 = -(cb3_3.tint_symbol_2[0u].xyzx);
  r2.w = dot(r1.yzw, v_53.xyz);
  r3.w = clamp(r2.wwww.w, 0.0f, 1.0f);
  r3.w = ((-(abs(r2.wwww))).w + r3.w);
  let v_54 = abs(r2.wwww);
  r2.w = fma(r0.w, r3.w, v_54.w);
  let v_55 = (r0.xyz * r2.www);
  r4 = vec4<f32>(v_55.xyz, r4.w);
  let v_56 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_56.xyz, r4.w);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_57 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_57.xyz, r5.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_58 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_58.xyz, r6.w);
  let v_59 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_59.xyz, r6.w);
  let v_60 = fma(r5.xyz, r2.www, r6.xyz);
  r5 = vec4<f32>(v_60.xyz, r5.w);
  let v_61 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_61.xyz, r5.w);
  let v_62 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_62.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_63 = dot(r7.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_63, v_63, v_63, v_63).x, 0.0f, 1.0f);
  let v_64 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r1 = vec4<f32>(v_64.xyz, r1.w);
  let v_65 = fma(r1.xyz, r2.xxx, r5.xyz);
  r1 = vec4<f32>(v_65.xyz, r1.w);
  let v_66 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_66.xyz, r0.w);
  let v_67 = fma(r4.xyz, r2.zzz, r0.xyz);
  r0 = vec4<f32>(v_67.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.x = sqrt(r0.w);
    let v_68 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_68.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r3.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_69 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_69 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_70 = (r0.www * r3.xyz);
    r2 = vec4<f32>(v_70.xyz, r2.w);
    let v_71 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_71, v_71, v_71, v_71).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_72 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_72, v_72, v_72, v_72).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_73 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_73.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_74 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_74.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_75 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_75.xyz, r2.w);
    let v_76 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_76.xyz, r2.w);
    let v_77 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_77.xyz, r4.w);
    let v_78 = fma(r1.www, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_78.xyz, r2.w);
    let v_79 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_80 = (r2.xyz + v_79.xyz);
    r2 = vec4<f32>(v_80.xyz, r2.w);
    let v_81 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_81.xyz, r2.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_82 = ((-(r2.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_82.xyz, r4.w);
    let v_83 = fma(r1.xxx, r4.xyz, r2.xyz);
    r1 = vec4<f32>(v_83.xy, r1.z, v_83.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_84 = (v4.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_84.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_85 = -(r0.xyxz);
    let v_86 = fma(r1.xyw, r0.www, v_85.xyw);
    r1 = vec4<f32>(v_86.xy, r1.z, v_86.z);
    let v_87 = fma(r1.zzz, r1.xyw, r0.xyz);
    o0 = vec4<f32>(v_87.xyz, o0.w);
  } else {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.x = sqrt(r0.w);
    let v_88 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_88.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r3.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_89 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_89 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_90 = (r0.www * r3.xyz);
    r2 = vec4<f32>(v_90.xyz, r2.w);
    let v_91 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_91, v_91, v_91, v_91).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_92 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_92, v_92, v_92, v_92).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_93 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_93.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_94 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_94.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_95 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_95.xyz, r2.w);
    let v_96 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_96.xyz, r2.w);
    let v_97 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_97.xyz, r3.w);
    let v_98 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_98.xyz, r2.w);
    let v_99 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_100 = (r2.xyz + v_99.xyz);
    r2 = vec4<f32>(v_100.xyz, r2.w);
    let v_101 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_101.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_102 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_102.xyz, r3.w);
    let v_103 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_103.xy, r1.z, v_103.z);
    let v_104 = ((-(r0.xyxz)).xyw + r1.xyw);
    r1 = vec4<f32>(v_104.xy, r1.z, v_104.z);
    let v_105 = fma(r1.zzz, r1.xyw, r0.xyz);
    o0 = vec4<f32>(v_105.xyz, o0.w);
  }
}

fn v_3(v_106 : bool) {
  if (v_106) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @builtin(position) v_107 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v_107);
  return o0;
}
