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

struct cb3_struct {
  tint_symbol_4 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v4 : vec4<f32>;

var<private> v5 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

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
  r2.x = (r0.w * 255.0099945068359375f);
  r2.x = floor(r2.x);
  r2.y = (r2.x + -32.0f);
  r3.x = (r2.y * 0.0078125f);
  r3.y = cb12_12.tint_symbol_4[2u].w;
  r3 = textureSample(t5, s5, r3.xyxx.xy);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.x >= 32.0f)));
  r2.x = bitcast<f32>(select(0u, 4294967295u, (160.0f >= r2.x)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & bitcast<u32>(r2.y)));
  let v_5 = (r0.xyz * r3.xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  r3.w = 1.0f;
  let v_6 = bitcast<vec4<u32>>(r2.xxxx);
  let v_7 = r3;
  r0 = select(r0, v_7, (v_6 != vec4<u32>()));
  r0.w = (r0.w * v0.w);
  let v_8 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_8.xy, r2.zw);
  let v_9 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = ((-(v3.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r2.z = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_11 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = (r3.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = fma(r3.xxx, cb6_6.tint_symbol_5[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = fma(r3.zzz, cb6_6.tint_symbol_5[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = fma(r4.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = &(x0[0u]);
  let v_17 = r5;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = fma(r4.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  let v_19 = &(x0[1u]);
  let v_20 = r6;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = fma(r4.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r7 = vec4<f32>(v_21.xyz, r7.w);
  let v_22 = &(x0[2u]);
  let v_23 = r7;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  let v_24 = fma(r4.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = &(x0[3u]);
  let v_26 = r4;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  r2.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_27 = abs(r7.yyyy);
  r3.w = max(v_27.w, abs(r7.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_28 = (bitcast<u32>(r3.w) != 0u);
  let v_29 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_29, v_28);
  let v_30 = abs(r6.yyyy);
  r4.z = max(v_30.z, abs(r6.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r2.w)));
  let v_31 = bitcast<u32>(r4.z);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_31 != 0u));
  let v_32 = abs(r5.yyyy);
  r4.z = max(v_32.z, abs(r5.xxxx).z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r4.z < r2.w)));
  let v_33 = bitcast<u32>(r2.w);
  r2.w = select(r3.w, 0.0f, (v_33 != 0u));
  let v_34 = x0[bitcast<i32>(r2.w)];
  r5 = vec4<f32>(v_34.xyz, r5.w);
  r2.w = f32(bitcast<i32>(r2.w));
  r3.w = (r2.w + 0.5f);
  r3.w = (r3.w * 0.25f);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(1065353216u)));
  r2.w = dot(r6, cb6_6.tint_symbol_5[12u]);
  r4.z = dot(r6, cb6_6.tint_symbol_5[13u]);
  r4.w = (r5.x + 0.5f);
  r3.w = fma(r5.y, 0.25f, r3.w);
  r5.x = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  r2.w = ((-(r2.wwww)).w + r5.z);
  r6.x = dpdx(r4.w);
  let v_35 = dpdx(r3.ww);
  let v_36 = r5;
  r5 = vec4<f32>(v_36.x, v_35.x, v_36.z, v_35.y);
  r6.z = dpdx(r2.w);
  r7.y = dpdy(r4.w);
  let v_37 = dpdy(r3.ww);
  let v_38 = r7;
  r7 = vec4<f32>(v_37.x, v_38.y, v_37.y, v_38.w);
  r7.w = dpdy(r2.w);
  let v_39 = (r5.yw * r7.yw);
  let v_40 = r5;
  r5 = vec4<f32>(v_40.x, v_39.x, v_40.z, v_39.y);
  let v_41 = -(r5.ywyy);
  let v_42 = fma(r6.xz, r7.xz, v_41.xy);
  r8 = vec4<f32>(v_42.xy, r8.zw);
  r5.y = (1.0f / r8.x);
  r5.w = (r6.z * r7.y);
  let v_43 = -(r5.wwww);
  r8.z = fma(r6.x, r7.w, v_43.z);
  let v_44 = (r5.yy * r8.yz);
  let v_45 = r5;
  r5 = vec4<f32>(v_45.x, v_44.x, v_45.z, v_44.y);
  let v_46 = max(r5.yw, vec2<f32>());
  let v_47 = r5;
  r5 = vec4<f32>(v_47.x, v_46.x, v_47.z, v_46.y);
  let v_48 = min(r5.yw, vec2<f32>(0.5f));
  let v_49 = r5;
  r5 = vec4<f32>(v_49.x, v_48.x, v_49.z, v_48.y);
  r2.w = fma((-(r4.zzzz)).w, r5.y, r2.w);
  r2.w = fma((-(r4.zzzz)).w, r5.w, r2.w);
  let v_50 = bitcast<u32>(r5.x);
  let v_51 = r2.w;
  r2.w = select(r5.z, v_51, (v_50 != 0u));
  r5.x = (r4.w + cb6_6.tint_symbol_5[14u].z);
  r5.y = fma(cb6_6.tint_symbol_5[14u].w, 0.25f, r3.w);
  let v_52 = r5.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_52.xy, r2.w);
  r2.z = clamp(fma(r2.zzzz, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).z, 0.0f, 1.0f);
  let v_53 = abs(r4.yyyy);
  r3.w = max(v_53.w, abs(r4.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.z = fma(r2.z, r3.w, r2.w);
  let v_54 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_54.xyz, r2.w);
  r2.z = min(r2.z, 1.0f);
  r2.w = clamp(fma(v3.xyz.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_5[3u].z);
  let v_55 = -(r2.zzzz);
  r2.z = fma(r2.w, v_55.z, r2.z);
  let v_56 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_57 = dot(r1.yzw, v_56.xyz);
  r2.w = clamp(vec4<f32>(v_57, v_57, v_57, v_57).w, 0.0f, 1.0f);
  let v_58 = (r0.xyz * r2.www);
  r4 = vec4<f32>(v_58.xyz, r4.w);
  let v_59 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_59.xyz, r4.w);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_60 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_60.xyz, r5.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_61 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_61.xyz, r6.w);
  let v_62 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_62.xyz, r6.w);
  let v_63 = fma(r5.xyz, r2.www, r6.xyz);
  r5 = vec4<f32>(v_63.xyz, r5.w);
  let v_64 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_64.xyz, r5.w);
  let v_65 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_65.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_66 = dot(r7.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_66, v_66, v_66, v_66).x, 0.0f, 1.0f);
  let v_67 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r1 = vec4<f32>(v_67.xyz, r1.w);
  let v_68 = fma(r1.xyz, r2.xxx, r5.xyz);
  r1 = vec4<f32>(v_68.xyz, r1.w);
  let v_69 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_69.xyz, r0.w);
  let v_70 = fma(r4.xyz, r2.zzz, r0.xyz);
  r0 = vec4<f32>(v_70.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.x = sqrt(r0.w);
    let v_71 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_71.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r3.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_72 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_72 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_73 = (r0.www * r3.xyz);
    r2 = vec4<f32>(v_73.xyz, r2.w);
    let v_74 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_74, v_74, v_74, v_74).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_75 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_75, v_75, v_75, v_75).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_76 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_76.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_77 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_77.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_78 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_78.xyz, r2.w);
    let v_79 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_79.xyz, r2.w);
    let v_80 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_80.xyz, r4.w);
    let v_81 = fma(r1.www, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_81.xyz, r2.w);
    let v_82 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_83 = (r2.xyz + v_82.xyz);
    r2 = vec4<f32>(v_83.xyz, r2.w);
    let v_84 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_84.xyz, r2.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_85 = ((-(r2.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_85.xyz, r4.w);
    let v_86 = fma(r1.xxx, r4.xyz, r2.xyz);
    r1 = vec4<f32>(v_86.xy, r1.z, v_86.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_87 = (v4.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_87.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_88 = -(r0.xyxz);
    let v_89 = fma(r1.xyw, r0.www, v_88.xyw);
    r1 = vec4<f32>(v_89.xy, r1.z, v_89.z);
    let v_90 = fma(r1.zzz, r1.xyw, r0.xyz);
    o0 = vec4<f32>(v_90.xyz, o0.w);
  } else {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.x = sqrt(r0.w);
    let v_91 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_91.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r3.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_92 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_92 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_93 = (r0.www * r3.xyz);
    r2 = vec4<f32>(v_93.xyz, r2.w);
    let v_94 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_94, v_94, v_94, v_94).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_95 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_95, v_95, v_95, v_95).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_96 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_96.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_97 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_97.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_98 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_98.xyz, r2.w);
    let v_99 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_99.xyz, r2.w);
    let v_100 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_100.xyz, r3.w);
    let v_101 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_101.xyz, r2.w);
    let v_102 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_103 = (r2.xyz + v_102.xyz);
    r2 = vec4<f32>(v_103.xyz, r2.w);
    let v_104 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_104.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_105 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_105.xyz, r3.w);
    let v_106 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_106.xy, r1.z, v_106.z);
    let v_107 = ((-(r0.xyxz)).xyw + r1.xyw);
    r1 = vec4<f32>(v_107.xy, r1.z, v_107.z);
    let v_108 = fma(r1.zzz, r1.xyw, r0.xyz);
    o0 = vec4<f32>(v_108.xyz, o0.w);
  }
}

fn v_3(v_109 : bool) {
  if (v_109) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @builtin(position) v_110 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v_110);
  return o0;
}
