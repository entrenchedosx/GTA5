diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

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

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v3 : vec4<f32>;

var<private> v4 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_6;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v3 = v_2;
  x1[0u].x = v4[0u];
  x1[0u].y = v4[1u];
  x1[0u].z = v4[2u];
  x1[0u].w = v4[3u];
  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_3 = (r0.xxx * v1.xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = ((-(v2.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r1.z = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_6 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = (r2.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  let v_8 = fma(r2.xxx, cb6_6.tint_symbol_4[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = fma(r2.zzz, cb6_6.tint_symbol_4[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = fma(r3.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = &(x0[0u]);
  let v_12 = r4;
  *(v_11) = vec4<f32>(v_12.xyz, (*(v_11)).w);
  let v_13 = fma(r3.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = &(x0[1u]);
  let v_15 = r5;
  *(v_14) = vec4<f32>(v_15.xyz, (*(v_14)).w);
  let v_16 = fma(r3.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r6 = vec4<f32>(v_16.xyz, r6.w);
  let v_17 = &(x0[2u]);
  let v_18 = r6;
  *(v_17) = vec4<f32>(v_18.xyz, (*(v_17)).w);
  let v_19 = fma(r3.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = &(x0[3u]);
  let v_21 = r3;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  r1.w = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).w, 1.5f, 1.0f);
  r1.w = (r1.w * 0.5f);
  let v_22 = abs(r6.yyyy);
  r2.w = max(v_22.w, abs(r6.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.w)));
  let v_23 = (bitcast<u32>(r2.w) != 0u);
  let v_24 = bitcast<f32>(v.tint_symbol_5[0i].x);
  r2.w = select(bitcast<f32>(v.tint_symbol_5[1i].x), v_24, v_23);
  let v_25 = abs(r5.yyyy);
  r3.z = max(v_25.z, abs(r5.xxxx).z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r1.w)));
  let v_26 = bitcast<u32>(r3.z);
  r2.w = select(r2.w, bitcast<f32>(v.tint_symbol_5[2i].x), (v_26 != 0u));
  let v_27 = abs(r4.yyyy);
  r3.z = max(v_27.z, abs(r4.xxxx).z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r3.z < r1.w)));
  let v_28 = bitcast<u32>(r1.w);
  r1.w = select(r2.w, 0.0f, (v_28 != 0u));
  let v_29 = x0[bitcast<i32>(r1.w)];
  r4 = vec4<f32>(v_29.xyz, r4.w);
  r1.w = f32(bitcast<i32>(r1.w));
  r2.w = (r1.w + 0.5f);
  r2.w = (r2.w * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.wwww)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r1.w = dot(r5, cb6_6.tint_symbol_4[12u]);
  r3.z = dot(r5, cb6_6.tint_symbol_4[13u]);
  r3.w = (r4.x + 0.5f);
  r2.w = fma(r4.y, 0.25f, r2.w);
  r4.x = bitcast<f32>(select(0u, 4294967295u, !((r1.w == 0.0f))));
  r1.w = ((-(r1.wwww)).w + r4.z);
  r5.x = dpdx(r3.w);
  let v_30 = dpdx(r2.ww);
  let v_31 = r4;
  r4 = vec4<f32>(v_31.x, v_30.x, v_31.z, v_30.y);
  r5.z = dpdx(r1.w);
  r6.y = dpdy(r3.w);
  let v_32 = dpdy(r2.ww);
  let v_33 = r6;
  r6 = vec4<f32>(v_32.x, v_33.y, v_32.y, v_33.w);
  r6.w = dpdy(r1.w);
  let v_34 = (r4.yw * r6.yw);
  let v_35 = r4;
  r4 = vec4<f32>(v_35.x, v_34.x, v_35.z, v_34.y);
  let v_36 = -(r4.ywyy);
  let v_37 = fma(r5.xz, r6.xz, v_36.xy);
  r7 = vec4<f32>(v_37.xy, r7.zw);
  r4.y = (1.0f / r7.x);
  r4.w = (r5.z * r6.y);
  let v_38 = -(r4.wwww);
  r7.z = fma(r5.x, r6.w, v_38.z);
  let v_39 = (r4.yy * r7.yz);
  let v_40 = r4;
  r4 = vec4<f32>(v_40.x, v_39.x, v_40.z, v_39.y);
  let v_41 = max(r4.yw, vec2<f32>());
  let v_42 = r4;
  r4 = vec4<f32>(v_42.x, v_41.x, v_42.z, v_41.y);
  let v_43 = min(r4.yw, vec2<f32>(0.5f));
  let v_44 = r4;
  r4 = vec4<f32>(v_44.x, v_43.x, v_44.z, v_43.y);
  r1.w = fma((-(r3.zzzz)).w, r4.y, r1.w);
  r1.w = fma((-(r3.zzzz)).w, r4.w, r1.w);
  let v_45 = bitcast<u32>(r4.x);
  let v_46 = r1.w;
  r1.w = select(r4.z, v_46, (v_45 != 0u));
  r4.x = (r3.w + cb6_6.tint_symbol_4[14u].z);
  r4.y = fma(cb6_6.tint_symbol_4[14u].w, 0.25f, r2.w);
  let v_47 = r4.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_47.xy, r1.w);
  r1.z = clamp(fma(r1.zzzz, cb6_6.tint_symbol_4[0u].wwww, cb6_6.tint_symbol_4[1u].wwww).z, 0.0f, 1.0f);
  let v_48 = abs(r3.yyyy);
  r2.w = max(v_48.w, abs(r3.xxxx).w);
  r2.w = clamp(fma(r2.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = fma(r1.z, r2.w, r1.w);
  let v_49 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_49.xyz, r1.w);
  r1.z = min(r1.z, 1.0f);
  r1.w = clamp(fma(v2.xyz.zzzz, cb6_6.tint_symbol_4[3u].xxxx, cb6_6.tint_symbol_4[3u].yyyy).w, 0.0f, 1.0f);
  r1.w = sqrt(r1.w);
  r1.w = (r1.w * cb6_6.tint_symbol_4[3u].z);
  let v_50 = -(r1.zzzz);
  r1.z = fma(r1.w, v_50.z, r1.z);
  let v_51 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_52 = dot(r0.yzw, v_51.xyz);
  r1.w = clamp(vec4<f32>(v_52, v_52, v_52, v_52).w, 0.0f, 1.0f);
  let v_53 = (r1.www * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_53.xyz, r3.w);
  r0.x = fma(v1.z, r0.x, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_54 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_54.xyz, r4.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_55 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_55.xyz, r5.w);
  let v_56 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_56.xyz, r5.w);
  let v_57 = fma(r4.xyz, r1.www, r5.xyz);
  r4 = vec4<f32>(v_57.xyz, r4.w);
  let v_58 = (r1.yyy * r4.xyz);
  r4 = vec4<f32>(v_58.xyz, r4.w);
  let v_59 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_59.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_60 = dot(r6.xyz, r0.yzw);
  r0.x = clamp(vec4<f32>(v_60, v_60, v_60, v_60).x, 0.0f, 1.0f);
  let v_61 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.xxx, r5.xyz);
  r0 = vec4<f32>(v_61.xyz, r0.w);
  let v_62 = fma(r0.xyz, r1.xxx, r4.xyz);
  r0 = vec4<f32>(v_62.xyz, r0.w);
  let v_63 = fma(r3.xyz, r1.zzz, r0.xyz);
  r0 = vec4<f32>(v_63.xyz, r0.w);
  o0.w = (v0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r2.xyz, r2.xyz);
    r1.x = sqrt(r0.w);
    let v_64 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_64.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r2.z);
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
    let v_66 = (r0.www * r2.xyz);
    r3 = vec4<f32>(v_66.xyz, r3.w);
    let v_67 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_67, v_67, v_67, v_67).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_68 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_68, v_68, v_68, v_68).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_69 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r1.y + v_69.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.wwww, r1.zzzz).z, 0.0f, 1.0f);
    let v_70 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_70.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_71 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_71.xyz, r3.w);
    let v_72 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_72.xyz, r3.w);
    let v_73 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_73.xyz, r4.w);
    let v_74 = fma(r1.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_74.xyz, r3.w);
    let v_75 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_76 = (r3.xyz + v_75.xyz);
    r3 = vec4<f32>(v_76.xyz, r3.w);
    let v_77 = fma(r1.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_77.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_78 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_78.xyz, r4.w);
    let v_79 = fma(r1.xxx, r4.xyz, r3.xyz);
    r1 = vec4<f32>(v_79.xy, r1.z, v_79.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_80 = (v3.xy * cb2_2.tint_symbol_1[18u].zw);
      r3 = vec4<f32>(v_80.xy, r3.zw);
      r3 = textureSample(t11, s11, r3.xyxx.xy);
      r0.w = (r3.x + -1.0f);
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
    r0.w = dot(r2.xyz, r2.xyz);
    r1.x = sqrt(r0.w);
    let v_84 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_84.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r2.z);
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
    let v_86 = (r0.www * r2.xyz);
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(position) v_102 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v_102);
  return o0;
}
