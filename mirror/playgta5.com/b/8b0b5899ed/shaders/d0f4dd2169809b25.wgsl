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

var<private> r10 : vec4<f32>;

var<private> r11 : vec4<f32>;

var<private> r12 : vec4<f32>;

var<private> r13 : vec4<f32>;

var<private> r14 : vec4<f32>;

var<private> r15 : vec4<f32>;

var<private> r16 : vec4<f32>;

var<private> r17 : vec4<f32>;

var<private> r18 : vec4<f32>;

var<private> r19 : vec4<f32>;

var<private> r20 : vec4<f32>;

var<private> r21 : vec4<f32>;

var<private> r22 : vec4<f32>;

var<private> r23 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb20_struct {
  tint_symbol_1 : array<vec4<f32>, 20u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb20_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb5_struct;

struct cb4_struct {
  tint_symbol_5 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb4_struct;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> icb0 : array<vec4<f32>, 14u> = array<vec4<f32>, 14u>(vec4<f32>(0.0f, 0.25f, 0.25f, 0.0f), vec4<f32>(0x1p-148f, -0.25f, -0.25f, 0.0f), vec4<f32>(0x1.8p-147f, -0.125f, -0.375f, 0.0f), vec4<f32>(0.0f, 0.375f, -0.125f, 0.0f), vec4<f32>(0.0f, -0.375f, 0.125f, 0.0f), vec4<f32>(0.0f, 0.125f, 0.375f, 0.0f), vec4<f32>(0.0f, 0.0625f, -0.1875f, 0.0f), vec4<f32>(0.0f, -0.0625f, 0.1875f, 0.0f), vec4<f32>(0.0f, 0.3125f, 0.0625f, 0.0f), vec4<f32>(0.0f, -0.1875f, -0.3125f, 0.0f), vec4<f32>(0.0f, -0.3125f, 0.3125f, 0.0f), vec4<f32>(0.0f, -0.4375f, -0.0625f, 0.0f), vec4<f32>(0.0f, 0.1875f, 0.4375f, 0.0f), vec4<f32>(0.0f, 0.4375f, -0.4375f, 0.0f));

var<private> v7 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 10u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  x1[0u].x = v7[0u];
  x1[0u].y = v7[1u];
  x1[0u].z = v7[2u];
  x1[0u].w = v7[3u];
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_3[6u].w)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    let v_1 = dpdx(v0.xy);
    r0 = vec4<f32>(v_1.xy, r0.zw);
    let v_2 = dpdy(v0.xy);
    r0 = vec4<f32>(r0.xy, v_2.xy);
    r1.x = bitcast<f32>((bitcast<i32>(cb2_2.tint_symbol_1[19u].x) << 16u));
    let v_3 = bitcast<u32>(r1.x);
    let v_4 = r1.x;
    r1.y = select(cb2_2.tint_symbol_1[19u].x, v_4, (v_3 != 0u));
    r1.z = bitcast<f32>((bitcast<i32>(r1.y) << 8u));
    let v_5 = (bitcast<vec2<u32>>(r1.xx) != vec2<u32>());
    let v_6 = vec2<f32>(bitcast<f32>(v.tint_symbol_7[2i].x), bitcast<f32>(v.tint_symbol_7[3i].x));
    let v_7 = select(vec2<f32>(bitcast<f32>(v.tint_symbol_7[4i].x), bitcast<f32>(v.tint_symbol_7[5i].x)), v_6, v_5);
    r1 = vec4<f32>(v_7.x, r1.yz, v_7.y);
    let v_8 = bitcast<vec2<u32>>(r1.zz);
    let v_9 = r1.wz;
    let v_10 = select(r1.xy, v_9, (v_8 != vec2<u32>()));
    r1 = vec4<f32>(v_10.xy, r1.zw);
    r1.z = bitcast<f32>((bitcast<i32>(r1.y) << 4u));
    r1.w = bitcast<f32>((bitcast<i32>(r1.x) + -4i));
    let v_11 = bitcast<vec2<u32>>(r1.zz);
    let v_12 = r1.wz;
    let v_13 = select(r1.xy, v_12, (v_11 != vec2<u32>()));
    r1 = vec4<f32>(v_13.xy, r1.zw);
    r1.z = bitcast<f32>((bitcast<i32>(r1.y) << 2u));
    r1.w = bitcast<f32>((bitcast<i32>(r1.x) + -2i));
    let v_14 = bitcast<vec2<u32>>(r1.zz);
    let v_15 = r1.wz;
    let v_16 = select(r1.xy, v_15, (v_14 != vec2<u32>()));
    r1 = vec4<f32>(v_16.xy, r1.zw);
    r1.y = bitcast<f32>((bitcast<i32>(r1.y) << 1u));
    r1.z = bitcast<f32>((bitcast<i32>(r1.x) + -1i));
    let v_17 = bitcast<u32>(r1.y);
    let v_18 = r1.z;
    r1.x = select(r1.x, v_18, (v_17 != 0u));
    r1.x = bitcast<f32>((bitcast<i32>(r1.x) + -1i));
    let v_19 = bitcast<u32>(cb2_2.tint_symbol_1[19u].x);
    let v_20 = r1.x;
    r1.x = select(bitcast<f32>(v.tint_symbol_7[6i].x), v_20, (v_19 != 0u));
    let v_21 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<u32>(1u, 2u, 3u) < bitcast<vec3<u32>>(cb2_2.tint_symbol_1[19u].xxx))));
    r1 = vec4<f32>(r1.x, v_21.xyz);
    if ((bitcast<u32>(cb2_2.tint_symbol_1[19u].x) != 0u)) {
      r2.x = icb0[bitcast<i32>(r1.x)].x;
      let v_22 = (r0.zw * icb0[bitcast<i32>(r2.x)].zz);
      let v_23 = r2;
      r2 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
      let v_24 = fma(icb0[bitcast<i32>(r2.x)].yy, r0.xy, r2.yz);
      r2 = vec4<f32>(v_24.xy, r2.zw);
      let v_25 = (r2.xy + v0.xy);
      r2 = vec4<f32>(v_25.xy, r2.zw);
      r2 = textureSample(t0, s0, r2.xyxx.xy);
      r2.x = (r2.w * cb2_2.tint_symbol_1[15u].x);
      r2.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r2.x)));
      r2.x = bitcast<f32>((bitcast<u32>(r2.x) & 1u));
    } else {
      r2.x = 0.0f;
    }
    if ((bitcast<u32>(r1.y) != 0u)) {
      r1.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.x)].x) + 1i));
      let v_26 = (r0.zw * icb0[bitcast<i32>(r1.y)].zz);
      let v_27 = r2;
      r2 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
      let v_28 = fma(icb0[bitcast<i32>(r1.y)].yy, r0.xy, r2.yz);
      let v_29 = r2;
      r2 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
      let v_30 = (r2.yz + v0.xy);
      let v_31 = r2;
      r2 = vec4<f32>(v_31.x, v_30.xy, v_31.w);
      r3 = textureSample(t0, s0, r2.yzyy.xy);
      r1.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.y)));
      r2.y = bitcast<f32>((bitcast<i32>(r2.x) + 2i));
      let v_32 = bitcast<u32>(r1.y);
      let v_33 = r2.y;
      r2.x = select(r2.x, v_33, (v_32 != 0u));
    }
    if ((bitcast<u32>(r1.z) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.x)].x;
      let v_34 = (r0.zw * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 2i))].zz);
      let v_35 = r2;
      r2 = vec4<f32>(v_35.x, v_34.xy, v_35.w);
      let v_36 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 2i))].yy, r0.xy, r2.yz);
      let v_37 = r1;
      r1 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
      let v_38 = (r1.yz + v0.xy);
      let v_39 = r1;
      r1 = vec4<f32>(v_39.x, v_38.xy, v_39.w);
      r3 = textureSample(t0, s0, r1.yzyy.xy);
      r1.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.y)));
      r1.z = bitcast<f32>((bitcast<i32>(r2.x) + 4i));
      let v_40 = bitcast<u32>(r1.y);
      let v_41 = r1.z;
      r2.x = select(r2.x, v_41, (v_40 != 0u));
    }
    if ((bitcast<u32>(r1.w) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.x)].x;
      let v_42 = (r0.zw * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 3i))].zz);
      r1 = vec4<f32>(r1.xy, v_42.xy);
      let v_43 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 3i))].yy, r0.xy, r1.zw);
      let v_44 = r1;
      r1 = vec4<f32>(v_44.x, v_43.xy, v_44.w);
      let v_45 = (r1.yz + v0.xy);
      let v_46 = r1;
      r1 = vec4<f32>(v_46.x, v_45.xy, v_46.w);
      r3 = textureSample(t0, s0, r1.yzyy.xy);
      r1.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.y)));
      r1.z = bitcast<f32>((bitcast<i32>(r2.x) + 8i));
      let v_47 = bitcast<u32>(r1.y);
      let v_48 = r1.z;
      r2.x = select(r2.x, v_48, (v_47 != 0u));
    }
    r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(4u, 5u, 6u, 7u) < bitcast<vec4<u32>>(cb2_2.tint_symbol_1[19u].xxxx))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.x)].x;
      let v_49 = (r0.zw * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].zz);
      r1 = vec4<f32>(r1.xy, v_49.xy);
      let v_50 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].yy, r0.xy, r1.zw);
      let v_51 = r1;
      r1 = vec4<f32>(v_51.x, v_50.xy, v_51.w);
      let v_52 = (r1.yz + v0.xy);
      let v_53 = r1;
      r1 = vec4<f32>(v_53.x, v_52.xy, v_53.w);
      r4 = textureSample(t0, s0, r1.yzyy.xy);
      r1.y = (r4.w * cb2_2.tint_symbol_1[15u].x);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.y)));
      r1.z = bitcast<f32>((bitcast<i32>(r2.x) + 16i));
      let v_54 = bitcast<u32>(r1.y);
      let v_55 = r1.z;
      r2.x = select(r2.x, v_55, (v_54 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.x)].x;
      let v_56 = (r0.zw * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 5i))].zz);
      r1 = vec4<f32>(r1.xy, v_56.xy);
      let v_57 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 5i))].yy, r0.xy, r1.zw);
      let v_58 = r1;
      r1 = vec4<f32>(v_58.x, v_57.xy, v_58.w);
      let v_59 = (r1.yz + v0.xy);
      let v_60 = r1;
      r1 = vec4<f32>(v_60.x, v_59.xy, v_60.w);
      r4 = textureSample(t0, s0, r1.yzyy.xy);
      r1.y = (r4.w * cb2_2.tint_symbol_1[15u].x);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.y)));
      r1.z = bitcast<f32>((bitcast<i32>(r2.x) + 32i));
      let v_61 = bitcast<u32>(r1.y);
      let v_62 = r1.z;
      r2.x = select(r2.x, v_62, (v_61 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.x)].x;
      let v_63 = (r0.zw * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 6i))].zz);
      r1 = vec4<f32>(r1.xy, v_63.xy);
      let v_64 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 6i))].yy, r0.xy, r1.zw);
      let v_65 = r1;
      r1 = vec4<f32>(v_65.x, v_64.xy, v_65.w);
      let v_66 = (r1.yz + v0.xy);
      let v_67 = r1;
      r1 = vec4<f32>(v_67.x, v_66.xy, v_67.w);
      r4 = textureSample(t0, s0, r1.yzyy.xy);
      r1.y = (r4.w * cb2_2.tint_symbol_1[15u].x);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.y)));
      r1.z = bitcast<f32>((bitcast<i32>(r2.x) + 64i));
      let v_68 = bitcast<u32>(r1.y);
      let v_69 = r1.z;
      r2.x = select(r2.x, v_69, (v_68 != 0u));
    }
    if ((bitcast<u32>(r3.w) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.x)].x;
      let v_70 = (r0.zw * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 7i))].zz);
      r1 = vec4<f32>(r1.xy, v_70.xy);
      let v_71 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 7i))].yy, r0.xy, r1.zw);
      let v_72 = r1;
      r1 = vec4<f32>(v_72.x, v_71.xy, v_72.w);
      let v_73 = (r1.yz + v0.xy);
      let v_74 = r1;
      r1 = vec4<f32>(v_74.x, v_73.xy, v_74.w);
      r3 = textureSample(t0, s0, r1.yzyy.xy);
      r1.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.y)));
      r1.z = bitcast<f32>((bitcast<i32>(r2.x) + 128i));
      let v_75 = bitcast<u32>(r1.y);
      let v_76 = r1.z;
      r2.x = select(r2.x, v_76, (v_75 != 0u));
    }
    r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(8u, 9u, 10u, 11u) < bitcast<vec4<u32>>(cb2_2.tint_symbol_1[19u].xxxx))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r1.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.x)].x) + 8i));
      let v_77 = (r0.zw * icb0[bitcast<i32>(r1.y)].zz);
      r1 = vec4<f32>(r1.xy, v_77.xy);
      let v_78 = fma(icb0[bitcast<i32>(r1.y)].yy, r0.xy, r1.zw);
      let v_79 = r1;
      r1 = vec4<f32>(v_79.x, v_78.xy, v_79.w);
      let v_80 = (r1.yz + v0.xy);
      let v_81 = r1;
      r1 = vec4<f32>(v_81.x, v_80.xy, v_81.w);
      r4 = textureSample(t0, s0, r1.yzyy.xy);
      r1.y = (r4.w * cb2_2.tint_symbol_1[15u].x);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.y)));
      r1.z = bitcast<f32>((bitcast<i32>(r2.x) + 256i));
      let v_82 = bitcast<u32>(r1.y);
      let v_83 = r1.z;
      r2.x = select(r2.x, v_83, (v_82 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r1.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.x)].x) + 9i));
      let v_84 = (r0.zw * icb0[bitcast<i32>(r1.y)].zz);
      r1 = vec4<f32>(r1.xy, v_84.xy);
      let v_85 = fma(icb0[bitcast<i32>(r1.y)].yy, r0.xy, r1.zw);
      let v_86 = r1;
      r1 = vec4<f32>(v_86.x, v_85.xy, v_86.w);
      let v_87 = (r1.yz + v0.xy);
      let v_88 = r1;
      r1 = vec4<f32>(v_88.x, v_87.xy, v_88.w);
      r4 = textureSample(t0, s0, r1.yzyy.xy);
      r1.y = (r4.w * cb2_2.tint_symbol_1[15u].x);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.y)));
      r1.z = bitcast<f32>((bitcast<i32>(r2.x) + 512i));
      let v_89 = bitcast<u32>(r1.y);
      let v_90 = r1.z;
      r2.x = select(r2.x, v_90, (v_89 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.x)].x;
      let v_91 = (r0.zw * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 10i))].zz);
      r1 = vec4<f32>(r1.xy, v_91.xy);
      let v_92 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 10i))].yy, r0.xy, r1.zw);
      let v_93 = r1;
      r1 = vec4<f32>(v_93.x, v_92.xy, v_93.w);
      let v_94 = (r1.yz + v0.xy);
      let v_95 = r1;
      r1 = vec4<f32>(v_95.x, v_94.xy, v_95.w);
      r4 = textureSample(t0, s0, r1.yzyy.xy);
      r1.y = (r4.w * cb2_2.tint_symbol_1[15u].x);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.y)));
      r1.z = bitcast<f32>((bitcast<i32>(r2.x) + 1024i));
      let v_96 = bitcast<u32>(r1.y);
      let v_97 = r1.z;
      r2.x = select(r2.x, v_97, (v_96 != 0u));
    }
    if ((bitcast<u32>(r3.w) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.x)].x;
      let v_98 = (r0.zw * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 11i))].zz);
      r1 = vec4<f32>(r1.xy, v_98.xy);
      let v_99 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 11i))].yy, r0.xy, r1.zw);
      let v_100 = r1;
      r1 = vec4<f32>(v_100.x, v_99.xy, v_100.w);
      let v_101 = (r1.yz + v0.xy);
      let v_102 = r1;
      r1 = vec4<f32>(v_102.x, v_101.xy, v_102.w);
      r3 = textureSample(t0, s0, r1.yzyy.xy);
      r1.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.y)));
      r1.z = bitcast<f32>((bitcast<i32>(r2.x) + 2048i));
      let v_103 = bitcast<u32>(r1.y);
      let v_104 = r1.z;
      r2.x = select(r2.x, v_104, (v_103 != 0u));
    }
    let v_105 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<u32>(12u, 13u) < bitcast<vec2<u32>>(cb2_2.tint_symbol_1[19u].xx))));
    let v_106 = r1;
    r1 = vec4<f32>(v_106.x, v_105.xy, v_106.w);
    if ((bitcast<u32>(r1.y) != 0u)) {
      r1.x = icb0[bitcast<i32>(r1.x)].x;
      let v_107 = (r0.zw * icb0[bitcast<u32>((bitcast<i32>(r1.x) + 12i))].zz);
      let v_108 = r1;
      r1 = vec4<f32>(v_108.x, v_107.x, v_108.z, v_107.y);
      let v_109 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.x) + 12i))].yy, r0.xy, r1.yw);
      r1 = vec4<f32>(v_109.xy, r1.zw);
      let v_110 = (r1.xy + v0.xy);
      r1 = vec4<f32>(v_110.xy, r1.zw);
      r3 = textureSample(t0, s0, r1.xyxx.xy);
      r1.x = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.x)));
      r1.y = bitcast<f32>((bitcast<i32>(r2.x) + 4096i));
      let v_111 = bitcast<u32>(r1.x);
      let v_112 = r1.y;
      r2.x = select(r2.x, v_112, (v_111 != 0u));
    }
    if ((bitcast<u32>(r1.z) != 0u)) {
      let v_113 = (r0.zw * vec2<f32>(-0.4375f));
      r0 = vec4<f32>(r0.xy, v_113.xy);
      let v_114 = fma(r0.xy, vec2<f32>(0.4375f), r0.zw);
      r0 = vec4<f32>(v_114.xy, r0.zw);
      let v_115 = (r0.xy + v0.xy);
      r0 = vec4<f32>(v_115.xy, r0.zw);
      r0 = textureSample(t0, s0, r0.xyxx.xy);
      r0.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
      r0.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.x)));
      r0.y = bitcast<f32>((bitcast<i32>(r2.x) + 8192i));
      let v_116 = bitcast<u32>(r0.x);
      let v_117 = r0.y;
      r2.x = select(r2.x, v_117, (v_116 != 0u));
    }
    r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.x) == 0i)));
    v_118((bitcast<u32>(r0.x) != 0u));
  } else {
    r0 = textureSample(t0, s0, v0.xy.xyxx.xy);
    r0.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r0.x)));
    v_118((bitcast<u32>(r0.x) != 0u));
  }
  r0 = textureSample(t0, s0, v0.xy.xyxx.xy);
  r1 = textureSample(t5, s5, v0.xy.xyxx.xy);
  let v_119 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_119.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_120 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_120.xy, r1.zw);
  let v_121 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_121.xyz, r2.w);
  let v_122 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_122.xy, r1.z, v_122.z);
  let v_123 = fma(r1.zzz, v1.xyz, r1.xyw);
  r1 = vec4<f32>(v_123.xyz, r1.w);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = inverseSqrt(r1.x);
  r1.x = (r1.x * r1.z);
  r2 = textureSample(t6, s6, v0.xy.xyxx.xy);
  let v_124 = (r2.xy * r2.xy);
  let v_125 = r1;
  r1 = vec4<f32>(v_125.x, v_124.xy, v_125.w);
  r1.y = (r1.y * cb10_10.tint_symbol_5[3u].w);
  r0.w = (r0.w * v3.w);
  let v_126 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_126.xy, r2.zw);
  r1.x = fma(r1.x, 0.5f, 0.5f);
  r3.x = fma(r1.x, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r3.y = (r1.x + 0.30000001192092895508f);
  let v_127 = (r2.xy * r3.xy);
  r1 = vec4<f32>(v_127.x, r1.yz, v_127.y);
  let v_128 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_128.xyz, r0.w);
  let v_129 = -(v2.xyzx);
  let v_130 = (v_129.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_130.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_131 = (r2.www * r2.xyz);
  r3 = vec4<f32>(v_131.xyz, r3.w);
  let v_132 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_133 = fma(r2.xyz, r2.www, v_132.xyz);
  r4 = vec4<f32>(v_133.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_134 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_134.xyz, r4.w);
  r1.y = clamp(r1.yyyy.y, 0.0f, 1.0f);
  let v_135 = (r1.xw * r1.xw);
  r1 = vec4<f32>(v_135.x, r1.yz, v_135.y);
  r3.w = fma(r1.z, cb10_10.tint_symbol_5[3u].z, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_136 = -(r3.wwww);
  r1.z = fma(r1.z, cb10_10.tint_symbol_5[3u].z, v_136.z);
  r3.w = (r3.w * 558.0f);
  r1.z = fma(r1.z, 3.0f, r3.w);
  let v_137 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_137.xyz, r0.w);
  r3.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_138 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r5 = vec4<f32>(v_138.xyz, r5.w);
  let v_139 = (r5.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r6 = vec4<f32>(v_139.xyz, r6.w);
  let v_140 = fma(r5.xxx, cb6_6.tint_symbol_6[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_140.xyz, r6.w);
  let v_141 = fma(r5.zzz, cb6_6.tint_symbol_6[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_141.xyz, r6.w);
  let v_142 = fma(r6.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_142.xyz, r7.w);
  let v_143 = &(x0[0u]);
  let v_144 = r7;
  *(v_143) = vec4<f32>(v_144.xyz, (*(v_143)).w);
  let v_145 = fma(r6.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_145.xyz, r8.w);
  let v_146 = &(x0[1u]);
  let v_147 = r8;
  *(v_146) = vec4<f32>(v_147.xyz, (*(v_146)).w);
  let v_148 = fma(r6.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_148.xyz, r9.w);
  let v_149 = &(x0[2u]);
  let v_150 = r9;
  *(v_149) = vec4<f32>(v_150.xyz, (*(v_149)).w);
  let v_151 = fma(r6.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r6 = vec4<f32>(v_151.xyz, r6.w);
  let v_152 = &(x0[3u]);
  let v_153 = r6;
  *(v_152) = vec4<f32>(v_153.xyz, (*(v_152)).w);
  let v_154 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_155 = r10;
  r10 = vec4<f32>(v_155.x, v_154.x, v_155.z, v_154.y);
  r4.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_156 = abs(r9.yyyy);
  r5.w = max(v_156.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_157 = (bitcast<u32>(r5.w) != 0u);
  let v_158 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_7[7i].x), v_158, v_157);
  let v_159 = abs(r8.yyyy);
  r6.z = max(v_159.z, abs(r8.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_160 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_7[8i].x), (v_160 != 0u));
  let v_161 = abs(r7.yyyy);
  r6.z = max(v_161.z, abs(r7.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_162 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_162 != 0u));
  let v_163 = x0[bitcast<i32>(r4.w)];
  r7 = vec4<f32>(v_163.xyz, r7.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r4.w = dot(r8, cb6_6.tint_symbol_6[12u]);
  r6.z = dot(r8, cb6_6.tint_symbol_6[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r7.z);
  let v_164 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_164.xy, r9.z, v_164.z);
  r9.z = dpdx(r4.w);
  let v_165 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_165.xyz, r11.w);
  r11.w = dpdy(r4.w);
  let v_166 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_166.xy, r7.zw);
  let v_167 = -(r7.xyxx);
  let v_168 = fma(r9.xz, r11.xz, v_167.xy);
  r12 = vec4<f32>(v_168.xy, r12.zw);
  r6.w = (1.0f / r12.x);
  r7.x = (r9.z * r11.y);
  let v_169 = -(r7.xxxx);
  r12.z = fma(r9.x, r11.w, v_169.z);
  let v_170 = (r6.ww * r12.yz);
  r7 = vec4<f32>(v_170.xy, r7.zw);
  let v_171 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_171.xy, r7.zw);
  let v_172 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_172.xy, r7.zw);
  r4.w = fma((-(r6.zzzz)).w, r7.x, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r7.y, r4.w);
  let v_173 = bitcast<u32>(r5.w);
  let v_174 = r4.w;
  r10.z = select(r7.z, v_174, (v_173 != 0u));
  r8.z = 0.0f;
  let v_175 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_175.xyz, r7.w);
  let v_176 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_176.xy, r10.zw);
  let v_177 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_177.xyz, r9.w);
  let v_178 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_178.xy, r10.zw);
  let v_179 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_179.xyz, r11.w);
  let v_180 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_180.xy, r10.zw);
  let v_181 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_181.xyz, r12.w);
  let v_182 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_182.xy, r10.zw);
  let v_183 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_183.xyz, r13.w);
  let v_184 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_184.xy, r10.zw);
  let v_185 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_185.xyz, r14.w);
  let v_186 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_186.xy, r10.zw);
  let v_187 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_187.xyz, r15.w);
  let v_188 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_188.xy, r10.zw);
  let v_189 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_189.xyz, r16.w);
  let v_190 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_190.xy, r10.zw);
  let v_191 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_191.xyz, r17.w);
  let v_192 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_192.xy, r10.zw);
  let v_193 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_193.xyz, r18.w);
  let v_194 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_194.xy, r10.zw);
  let v_195 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_195.xyz, r19.w);
  let v_196 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_196.xy, r10.zw);
  let v_197 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_197.xyz, r20.w);
  let v_198 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_198.xy, r10.zw);
  let v_199 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_199.xyz, r21.w);
  let v_200 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_200.xy, r10.zw);
  let v_201 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_201.xyz, r22.w);
  let v_202 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_202.xy, r10.zw);
  let v_203 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_203.xyz, r23.w);
  let v_204 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_204.xy, r10.zw);
  let v_205 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_205.xyz, r8.w);
  let v_206 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_206.xy, r7.z);
  let v_207 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_207.xy, r9.z);
  let v_208 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_208.xy, r11.z);
  let v_209 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_209.xy, r12.z);
  let v_210 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_210.xy, r13.z);
  let v_211 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_211.xy, r14.z);
  let v_212 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_212.xy, r15.z);
  let v_213 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_213.xy, r16.z);
  let v_214 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_214.xy, r17.z);
  let v_215 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_215.xy, r18.z);
  let v_216 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_216.xy, r19.z);
  let v_217 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_217.xy, r20.z);
  let v_218 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_218.xy, r21.z);
  let v_219 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_219.xy, r22.z);
  let v_220 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_220.xy, r23.z);
  let v_221 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_221.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r4.w = dot(r7, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_222 = abs(r6.yyyy);
  r5.w = max(v_222.w, abs(r6.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_6[3u].z);
  let v_223 = -(r3.wwww);
  r3.w = fma(r4.w, v_223.w, r3.w);
  r4.w = dot(v_132.xyz, v_132.xyz);
  r4.w = min(r4.w, 1.0f);
  let v_224 = dot(r3.xyz, v_132.xyz);
  r6.x = clamp(vec4<f32>(v_224, v_224, v_224, v_224).x, 0.0f, 1.0f);
  r4.x = dot(r4.xyz, v_132.xyz);
  r6.y = clamp(r4.xxxx.y, 0.0f, 1.0f);
  let v_225 = ((-(r6.xxyx)).yz + vec2<f32>(1.0f));
  let v_226 = r4;
  r4 = vec4<f32>(v_226.x, v_225.xy, v_226.w);
  let v_227 = (r4.yz * r4.yz);
  r6 = vec4<f32>(v_227.xy, r6.zw);
  let v_228 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_228.xy, r6.zw);
  let v_229 = (r4.yz * r6.xy);
  let v_230 = r4;
  r4 = vec4<f32>(v_230.x, v_229.xy, v_230.w);
  r5.w = ((-(cb10_10.tint_symbol_5[3u].yyyy)).w + 1.0f);
  let v_231 = fma(cb10_10.tint_symbol_5[3u].yy, r4.yz, r5.ww);
  let v_232 = r4;
  r4 = vec4<f32>(v_232.x, v_231.xy, v_232.w);
  let v_233 = (r1.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(v_233.xy, r6.zw);
  r1.z = (r6.x * 0.125f);
  r4.y = fma((-(r1.yyyy)).y, r4.y, 1.0f);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r6.y);
  r4.x = exp2(r4.x);
  r4.x = (r4.z * r4.x);
  r4.x = (r1.z * r4.x);
  r4.x = (r1.y * r4.x);
  let v_234 = (r4.wy * r4.xw);
  let v_235 = r4;
  r4 = vec4<f32>(v_234.x, v_235.y, v_234.y, v_235.w);
  let v_236 = fma(r0.xyz, r4.zzz, r4.xxx);
  r4 = vec4<f32>(v_236.x, r4.y, v_236.yz);
  let v_237 = (r4.xzw * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_237.x, r4.y, v_237.yz);
  r6.x = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.x) != 0u)) {
    r8 = vec4<f32>(vec3<f32>(), r8.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_238 = (v_129.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_238.xyz, r7.w);
    let v_239 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_239.xyz, r8.w);
    r6.w = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_2[19u].w);
    let v_240 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.www, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_240.xyz, r8.w);
    let v_241 = (r8.xyz + v_129.xyz);
    r8 = vec4<f32>(v_241.xyz, r8.w);
    let v_242 = bitcast<vec3<u32>>(r6.zzz);
    let v_243 = r7.xyz;
    let v_244 = select(r8.xyz, v_243, (v_242 != vec3<u32>()));
    r7 = vec4<f32>(v_244.xyz, r7.w);
    r6.z = dot(r7.xyz, r7.xyz);
    let v_245 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_245.xyz, r7.w);
    r6.w = dot(r7.xyz, r7.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_246 = (r6.www * r7.xyz);
    r7 = vec4<f32>(v_246.xyz, r7.w);
    r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[11u].w);
    r6.z = (r6.z / r6.w);
    let v_247 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.w = dot(r7.xyz, v_247.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_248 = dot(r7.xyz, v_132.xyz);
    r7.w = clamp(vec4<f32>(v_248, v_248, v_248, v_248).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r7.w = (r6.z * r6.w);
    let v_249 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_249.xyz, r8.w);
    let v_250 = (r0.xyz * r8.xyz);
    r8 = vec4<f32>(v_250.xyz, r8.w);
    let v_251 = fma(r2.xyz, r2.www, r7.xyz);
    r7 = vec4<f32>(v_251.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_252 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_252.xyz, r7.w);
    let v_253 = dot(r7.xyz, r3.xyz);
    r7.w = clamp(vec4<f32>(v_253, v_253, v_253, v_253).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r8.w = (r7.w * r7.w);
    r8.w = (r8.w * r8.w);
    r7.w = (r7.w * r8.w);
    r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
    let v_254 = dot(r7.xyz, v_132.xyz);
    r7.x = clamp(vec4<f32>(v_254, v_254, v_254, v_254).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r6.y * r7.x);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r7.w);
    r6.w = (r6.w * r7.x);
    r6.z = (r6.z * r6.w);
    r6.z = (r1.z * r6.z);
    let v_255 = (r6.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_255.xyz, r7.w);
  }
  r6.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.z) != 0u)) {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    let v_256 = bitcast<u32>(r6.w);
    let v_257 = r6.z;
    r6.x = select(r6.x, v_257, (v_256 != 0u));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_258 = (v_129.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_258.xyz, r9.w);
      let v_259 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_259.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_260 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_260.xyz, r10.w);
      let v_261 = (r10.xyz + v_129.xyz);
      r10 = vec4<f32>(v_261.xyz, r10.w);
      let v_262 = bitcast<vec3<u32>>(r6.zzz);
      let v_263 = r9.xyz;
      let v_264 = select(r10.xyz, v_263, (v_262 != vec3<u32>()));
      r9 = vec4<f32>(v_264.xyz, r9.w);
      r6.z = dot(r9.xyz, r9.xyz);
      let v_265 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_265.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_266 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_266.xyz, r9.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[12u].w);
      r6.z = (r6.z / r6.w);
      let v_267 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r9.xyz, v_267.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_268 = dot(r9.xyz, v_132.xyz);
      r7.w = clamp(vec4<f32>(v_268, v_268, v_268, v_268).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r6.z * r6.w);
      let v_269 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_269.xyz, r10.w);
      let v_270 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_270.xyz, r8.w);
      let v_271 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_271.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_272 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_272.xyz, r9.w);
      let v_273 = dot(r9.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_273, v_273, v_273, v_273).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
      let v_274 = dot(r9.xyz, v_132.xyz);
      r8.w = clamp(vec4<f32>(v_274, v_274, v_274, v_274).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r6.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.z = (r6.z * r6.w);
      r6.z = (r1.z * r6.z);
      let v_275 = fma(r6.zzz, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_275.xyz, r7.w);
    }
  } else {
    r6.x = bitcast<f32>(v.tint_symbol_7[9i].x);
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v.tint_symbol_7[9i].x);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_276 = (v_129.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_276.xyz, r9.w);
      let v_277 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_277.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_278 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_278.xyz, r10.w);
      let v_279 = (r10.xyz + v_129.xyz);
      r10 = vec4<f32>(v_279.xyz, r10.w);
      let v_280 = bitcast<vec3<u32>>(r6.zzz);
      let v_281 = r9.xyz;
      let v_282 = select(r10.xyz, v_281, (v_280 != vec3<u32>()));
      r9 = vec4<f32>(v_282.xyz, r9.w);
      r6.z = dot(r9.xyz, r9.xyz);
      let v_283 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_283.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_284 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_284.xyz, r9.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[13u].w);
      r6.z = (r6.z / r6.w);
      let v_285 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r9.xyz, v_285.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_286 = dot(r9.xyz, v_132.xyz);
      r7.w = clamp(vec4<f32>(v_286, v_286, v_286, v_286).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r6.z * r6.w);
      let v_287 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_287.xyz, r10.w);
      let v_288 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_288.xyz, r8.w);
      let v_289 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_289.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_290 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_290.xyz, r9.w);
      let v_291 = dot(r9.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_291, v_291, v_291, v_291).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
      let v_292 = dot(r9.xyz, v_132.xyz);
      r8.w = clamp(vec4<f32>(v_292, v_292, v_292, v_292).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r6.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.z = (r6.z * r6.w);
      r6.z = (r1.z * r6.z);
      let v_293 = fma(r6.zzz, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_293.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_294 = (v_129.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_294.xyz, r9.w);
      let v_295 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_295.xyz, r10.w);
      r6.z = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r6.z = clamp(((r6.zzzz / r6.wwww)).z, 0.0f, 1.0f);
      r6.z = (r6.z * cb3_3.tint_symbol_2[22u].w);
      let v_296 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_296.xyz, r10.w);
      let v_297 = (r10.xyz + v_129.xyz);
      r10 = vec4<f32>(v_297.xyz, r10.w);
      let v_298 = bitcast<vec3<u32>>(r6.xxx);
      let v_299 = r9.xyz;
      let v_300 = select(r10.xyz, v_299, (v_298 != vec3<u32>()));
      r6 = vec4<f32>(v_300.x, r6.y, v_300.yz);
      r7.w = dot(r6.xzw, r6.xzw);
      let v_301 = (r6.xzw + vec3<f32>(0.00000099999999747524f));
      r6 = vec4<f32>(v_301.x, r6.y, v_301.yz);
      r8.w = dot(r6.xzw, r6.xzw);
      r8.w = inverseSqrt(r8.w);
      let v_302 = (r6.xzw * r8.www);
      r6 = vec4<f32>(v_302.x, r6.y, v_302.yz);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[14u].w);
      r7.w = (r7.w / r8.w);
      let v_303 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.w = dot(r6.xzw, v_303.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_304 = dot(r6.xzw, v_132.xyz);
      r9.x = clamp(vec4<f32>(v_304, v_304, v_304, v_304).x, 0.0f, 1.0f);
      r8.w = (r8.w * r9.x);
      r9.x = (r7.w * r8.w);
      let v_305 = (r9.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r9 = vec4<f32>(v_305.xyz, r9.w);
      let v_306 = fma(r9.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_306.xyz, r8.w);
      let v_307 = fma(r2.xyz, r2.www, r6.xzw);
      r2 = vec4<f32>(v_307.xyz, r2.w);
      r2.w = dot(r2.xyz, r2.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_308 = (r2.www * r2.xyz);
      r2 = vec4<f32>(v_308.xyz, r2.w);
      let v_309 = dot(r2.xyz, r3.xyz);
      r2.w = clamp(vec4<f32>(v_309, v_309, v_309, v_309).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r3.x = (r2.w * r2.w);
      r3.x = (r3.x * r3.x);
      r2.w = (r2.w * r3.x);
      r2.w = fma(cb10_10.tint_symbol_5[3u].y, r2.w, r5.w);
      let v_310 = dot(r2.xyz, v_132.xyz);
      r2.x = clamp(vec4<f32>(v_310, v_310, v_310, v_310).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r6.y);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r2.w);
      r2.x = (r8.w * r2.x);
      r2.x = (r7.w * r2.x);
      r1.z = (r1.z * r2.x);
      let v_311 = fma(r1.zzz, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_311.xyz, r7.w);
    }
  }
  r1.z = (r4.y * r4.y);
  r1.y = (r1.y * r1.y);
  let v_312 = (r7.xyz * r1.yyy);
  r2 = vec4<f32>(v_312.xyz, r2.w);
  let v_313 = fma(r1.zzz, r8.xyz, r2.xyz);
  r2 = vec4<f32>(v_313.xyz, r2.w);
  let v_314 = fma(r4.xzw, r3.www, r2.xyz);
  r2 = vec4<f32>(v_314.xyz, r2.w);
  r1.y = ((-(cb3_3.tint_symbol_2[0u].zzzz)).y + cb3_3.tint_symbol_2[43u].w);
  r1.y = (r1.y * cb3_3.tint_symbol_2[44u].w);
  r1.y = max(r1.y, 0.0f);
  let v_315 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_315.xyz, r3.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_316 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r4 = vec4<f32>(v_316.x, r4.y, v_316.yz);
  let v_317 = (r4.xzw * cb2_2.tint_symbol_1[16u].zzz);
  r4 = vec4<f32>(v_317.x, r4.y, v_317.yz);
  let v_318 = fma(r3.xyz, r1.zzz, r4.xzw);
  r3 = vec4<f32>(v_318.xyz, r3.w);
  let v_319 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_319.xyz, r3.w);
  let v_320 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(r1.x, v_320.xyz);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_321 = dot(r6.xyz, v_132.xyz);
  r2.w = clamp(vec4<f32>(v_321, v_321, v_321, v_321).w, 0.0f, 1.0f);
  let v_322 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.www, r1.yzw);
  r1 = vec4<f32>(r1.x, v_322.xyz);
  let v_323 = fma(r1.yzw, r1.xxx, r3.xyz);
  r1 = vec4<f32>(v_323.xyz, r1.w);
  let v_324 = (r4.yyy * r1.xyz);
  r1 = vec4<f32>(v_324.xyz, r1.w);
  let v_325 = fma(r1.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_325.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.w = dot(r5.xyz, r5.xyz);
  r1.x = sqrt(r0.w);
  let v_326 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_326.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r5.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_327 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_327 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_328 = (r0.www * r5.xyz);
  r2 = vec4<f32>(v_328.xyz, r2.w);
  let v_329 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_329, v_329, v_329, v_329).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_330 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_330, v_330, v_330, v_330).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_331 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_331.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_332 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_332.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_333 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_333.xyz, r2.w);
  let v_334 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_334.xyz, r2.w);
  let v_335 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_335.xyz, r3.w);
  let v_336 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_336.xyz, r2.w);
  let v_337 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_338 = (r2.xyz + v_337.xyz);
  r2 = vec4<f32>(v_338.xyz, r2.w);
  let v_339 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_339.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_340 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_340.xy, r1.z, v_340.z);
  let v_341 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_341.xy, r1.z, v_341.z);
  let v_342 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_342.xyz, r0.w);
  let v_343 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_343.xyz, o0.w);
}

fn v_118(v_344 : bool) {
  if (v_344) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5);
  return o0;
}
