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

var<private> r24 : vec4<f32>;

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

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

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
  r0.z = dot(r1.xy, r1.xy);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = sqrt(abs(r0.zzzz).z);
  r1.z = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_120 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_120.xy, r1.zw);
  let v_121 = (r1.yyy * v5.xyz);
  r1 = vec4<f32>(r1.x, v_121.xyz);
  let v_122 = fma(r1.xxx, v4.xyz, r1.yzw);
  r1 = vec4<f32>(v_122.xyz, r1.w);
  let v_123 = fma(r0.zzz, v1.xyz, r1.xyz);
  r1 = vec4<f32>(v_123.xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = inverseSqrt(r0.z);
  r0.z = (r0.z * r1.z);
  r1 = textureSample(t6, s6, v0.xy.xyxx.xy);
  let v_124 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_124.xy, r1.zw);
  r1.x = (r1.x * cb10_10.tint_symbol_5[3u].w);
  r2.x = r0.y;
  r2.y = cb13_13.tint_symbol_4[3u].x;
  r3 = textureSample(t13, s13, r2.xyxx.xy);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_4[3u].y == cb13_13.tint_symbol_4[3u].x))));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r2.z = cb13_13.tint_symbol_4[3u].y;
    r2 = textureSample(t13, s13, r2.xzxx.xy);
    r0.y = ((-(r0.xxxx)).y + 1.0f);
    let v_125 = (r0.yyy * r3.xyz);
    r4 = vec4<f32>(v_125.xyz, r4.w);
    let v_126 = fma(r2.xyz, r0.xxx, r4.xyz);
    r3 = vec4<f32>(v_126.xyz, r3.w);
  }
  r0.x = (r0.w * v3.w);
  let v_127 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  let v_128 = r0;
  r0 = vec4<f32>(v_128.x, v_127.x, v_128.z, v_127.y);
  r0.z = fma(r0.z, 0.5f, 0.5f);
  r2.x = fma(r0.z, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r2.y = (r0.z + 0.30000001192092895508f);
  let v_129 = (r0.yw * r2.xy);
  let v_130 = r0;
  r0 = vec4<f32>(v_130.x, v_129.xy, v_130.w);
  let v_131 = (r3.xyz * r3.xyz);
  r2 = vec4<f32>(v_131.xyz, r2.w);
  let v_132 = -(v2.xyzx);
  let v_133 = (v_132.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_133.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_134 = (r0.www * r3.xyz);
  r4 = vec4<f32>(v_134.xyz, r4.w);
  let v_135 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_136 = fma(r3.xyz, r0.www, v_135.xyz);
  r5 = vec4<f32>(v_136.xyz, r5.w);
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_137 = (r1.zzz * r5.xyz);
  r5 = vec4<f32>(v_137.xyz, r5.w);
  r1.x = clamp(r1.xxxx.x, 0.0f, 1.0f);
  let v_138 = (r0.yz * r0.yz);
  let v_139 = r0;
  r0 = vec4<f32>(v_139.x, v_138.xy, v_139.w);
  r1.z = fma(r1.y, cb10_10.tint_symbol_5[3u].z, -500.0f);
  r1.z = max(r1.z, 0.0f);
  let v_140 = -(r1.zzzz);
  r1.y = fma(r1.y, cb10_10.tint_symbol_5[3u].z, v_140.y);
  r1.z = (r1.z * 558.0f);
  r1.y = fma(r1.y, 3.0f, r1.z);
  let v_141 = (r2.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r2 = vec4<f32>(v_141.xyz, r2.w);
  r1.z = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_142 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_142.xyz, r6.w);
  let v_143 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_143.xyz, r7.w);
  let v_144 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_144.xyz, r7.w);
  let v_145 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_145.xyz, r7.w);
  let v_146 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_146.xyz, r8.w);
  let v_147 = &(x0[0u]);
  let v_148 = r8;
  *(v_147) = vec4<f32>(v_148.xyz, (*(v_147)).w);
  let v_149 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_149.xyz, r9.w);
  let v_150 = &(x0[1u]);
  let v_151 = r9;
  *(v_150) = vec4<f32>(v_151.xyz, (*(v_150)).w);
  let v_152 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_152.xyz, r10.w);
  let v_153 = &(x0[2u]);
  let v_154 = r10;
  *(v_153) = vec4<f32>(v_154.xyz, (*(v_153)).w);
  let v_155 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_155.xyz, r7.w);
  let v_156 = &(x0[3u]);
  let v_157 = r7;
  *(v_156) = vec4<f32>(v_157.xyz, (*(v_156)).w);
  let v_158 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_159 = r11;
  r11 = vec4<f32>(v_159.x, v_158.x, v_159.z, v_158.y);
  r1.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r1.w = (r1.w * 0.5f);
  let v_160 = abs(r10.yyyy);
  r2.w = max(v_160.w, abs(r10.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.w)));
  let v_161 = (bitcast<u32>(r2.w) != 0u);
  let v_162 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r2.w = select(bitcast<f32>(v.tint_symbol_7[7i].x), v_162, v_161);
  let v_163 = abs(r9.yyyy);
  r3.w = max(v_163.w, abs(r9.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r1.w)));
  let v_164 = bitcast<u32>(r3.w);
  r2.w = select(r2.w, bitcast<f32>(v.tint_symbol_7[8i].x), (v_164 != 0u));
  let v_165 = abs(r8.yyyy);
  r3.w = max(v_165.w, abs(r8.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r1.w)));
  let v_166 = bitcast<u32>(r1.w);
  r1.w = select(r2.w, 0.0f, (v_166 != 0u));
  let v_167 = x0[bitcast<i32>(r1.w)];
  r8 = vec4<f32>(v_167.xyz, r8.w);
  r1.w = f32(bitcast<i32>(r1.w));
  r2.w = (r1.w + 0.5f);
  r2.w = (r2.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r1.w = dot(r9, cb6_6.tint_symbol_6[12u]);
  r3.w = dot(r9, cb6_6.tint_symbol_6[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r1.w == 0.0f))));
  r1.w = ((-(r1.wwww)).w + r8.z);
  let v_168 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_168.xy, r10.z, v_168.z);
  r10.z = dpdx(r1.w);
  let v_169 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_169.xyz, r12.w);
  r12.w = dpdy(r1.w);
  let v_170 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_170.xy);
  let v_171 = -(r7.zwzz);
  let v_172 = fma(r10.xz, r12.xz, v_171.xy);
  r13 = vec4<f32>(v_172.xy, r13.zw);
  r4.w = (1.0f / r13.x);
  r5.w = (r10.z * r12.y);
  let v_173 = -(r5.wwww);
  r13.z = fma(r10.x, r12.w, v_173.z);
  let v_174 = (r4.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_174.xy);
  let v_175 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_175.xy);
  let v_176 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_176.xy);
  r1.w = fma((-(r3.wwww)).w, r7.z, r1.w);
  r1.w = fma((-(r3.wwww)).w, r7.w, r1.w);
  let v_177 = bitcast<u32>(r2.w);
  let v_178 = r1.w;
  r11.z = select(r8.z, v_178, (v_177 != 0u));
  r9.z = 0.0f;
  let v_179 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_179.xyz, r8.w);
  let v_180 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_180.xy, r11.zw);
  let v_181 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_181.xyz, r10.w);
  let v_182 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_182.xy, r11.zw);
  let v_183 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_183.xyz, r12.w);
  let v_184 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_184.xy, r11.zw);
  let v_185 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_185.xyz, r13.w);
  let v_186 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_186.xy, r11.zw);
  let v_187 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_187.xyz, r14.w);
  let v_188 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_188.xy, r11.zw);
  let v_189 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_189.xyz, r15.w);
  let v_190 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_190.xy, r11.zw);
  let v_191 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_191.xyz, r16.w);
  let v_192 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_192.xy, r11.zw);
  let v_193 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_193.xyz, r17.w);
  let v_194 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_194.xy, r11.zw);
  let v_195 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_195.xyz, r18.w);
  let v_196 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_196.xy, r11.zw);
  let v_197 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_197.xyz, r19.w);
  let v_198 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_198.xy, r11.zw);
  let v_199 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_199.xyz, r20.w);
  let v_200 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_200.xy, r11.zw);
  let v_201 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_201.xyz, r21.w);
  let v_202 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_202.xy, r11.zw);
  let v_203 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_203.xyz, r22.w);
  let v_204 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_204.xy, r11.zw);
  let v_205 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_205.xyz, r23.w);
  let v_206 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_206.xy, r11.zw);
  let v_207 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_207.xyz, r24.w);
  let v_208 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_208.xy, r11.zw);
  let v_209 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_209.xyz, r9.w);
  let v_210 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_210.xy, r8.z);
  let v_211 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_211.xy, r10.z);
  let v_212 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_212.xy, r12.z);
  let v_213 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_213.xy, r13.z);
  let v_214 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_214.xy, r14.z);
  let v_215 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_215.xy, r15.z);
  let v_216 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_216.xy, r16.z);
  let v_217 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_217.xy, r17.z);
  let v_218 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_218.xy, r18.z);
  let v_219 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_219.xy, r19.z);
  let v_220 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_220.xy, r20.z);
  let v_221 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_221.xy, r21.z);
  let v_222 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_222.xy, r22.z);
  let v_223 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_223.xy, r23.z);
  let v_224 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_224.xy, r24.z);
  let v_225 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_225.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r1.w = dot(r8, vec4<f32>(1.0f));
  r1.z = clamp(fma(r1.zzzz, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).z, 0.0f, 1.0f);
  let v_226 = abs(r7.yyyy);
  r2.w = max(v_226.w, abs(r7.xxxx).w);
  r2.w = clamp(fma(r2.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = (r2.w * r1.z);
  r1.z = fma(r1.w, 0.0625f, r1.z);
  r1.z = (r1.z * r1.z);
  r1.z = min(r1.z, 1.0f);
  r1.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r1.w = sqrt(r1.w);
  r1.w = (r1.w * cb6_6.tint_symbol_6[3u].z);
  let v_227 = -(r1.zzzz);
  r1.z = fma(r1.w, v_227.z, r1.z);
  r1.w = dot(v_135.xyz, v_135.xyz);
  r1.w = min(r1.w, 1.0f);
  let v_228 = dot(r4.xyz, v_135.xyz);
  r7.x = clamp(vec4<f32>(v_228, v_228, v_228, v_228).x, 0.0f, 1.0f);
  r2.w = dot(r5.xyz, v_135.xyz);
  r7.y = clamp(r2.wwww.y, 0.0f, 1.0f);
  let v_229 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r5 = vec4<f32>(v_229.xy, r5.zw);
  let v_230 = (r5.xy * r5.xy);
  r5 = vec4<f32>(r5.xy, v_230.xy);
  let v_231 = (r5.zw * r5.zw);
  r5 = vec4<f32>(r5.xy, v_231.xy);
  let v_232 = (r5.xy * r5.zw);
  r5 = vec4<f32>(v_232.xy, r5.zw);
  r3.w = ((-(cb10_10.tint_symbol_5[3u].yyyy)).w + 1.0f);
  let v_233 = fma(cb10_10.tint_symbol_5[3u].yy, r5.xy, r3.ww);
  r5 = vec4<f32>(v_233.xy, r5.zw);
  let v_234 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(r5.xy, v_234.xy);
  r1.y = (r5.z * 0.125f);
  r4.w = fma((-(r1.xxxx)).w, r5.x, 1.0f);
  r2.w = clamp(((r2.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r2.w = log2(r2.w);
  r2.w = (r2.w * r5.w);
  r2.w = exp2(r2.w);
  r2.w = (r5.y * r2.w);
  r2.w = (r1.y * r2.w);
  r2.w = (r1.x * r2.w);
  r2.w = (r1.w * r2.w);
  r1.w = (r1.w * r4.w);
  let v_235 = fma(r2.xyz, r1.www, r2.www);
  r5 = vec4<f32>(v_235.xyz, r5.w);
  let v_236 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_236.xyz, r5.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r8 = vec4<f32>(vec3<f32>(), r8.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_237 = (v_132.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_237.xyz, r7.w);
    let v_238 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_238.xyz, r8.w);
    r6.w = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_2[19u].w);
    let v_239 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.www, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_239.xyz, r8.w);
    let v_240 = (r8.xyz + v_132.xyz);
    r8 = vec4<f32>(v_240.xyz, r8.w);
    let v_241 = bitcast<vec3<u32>>(r2.www);
    let v_242 = r7.xyz;
    let v_243 = select(r8.xyz, v_242, (v_241 != vec3<u32>()));
    r7 = vec4<f32>(v_243.xyz, r7.w);
    r2.w = dot(r7.xyz, r7.xyz);
    let v_244 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_244.xyz, r7.w);
    r6.w = dot(r7.xyz, r7.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_245 = (r6.www * r7.xyz);
    r7 = vec4<f32>(v_245.xyz, r7.w);
    r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r2.w, cb3_3.tint_symbol_2[11u].w);
    r2.w = (r2.w / r6.w);
    let v_246 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.w = dot(r7.xyz, v_246.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_247 = dot(r7.xyz, v_135.xyz);
    r7.w = clamp(vec4<f32>(v_247, v_247, v_247, v_247).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r7.w = (r2.w * r6.w);
    let v_248 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_248.xyz, r8.w);
    let v_249 = (r2.xyz * r8.xyz);
    r8 = vec4<f32>(v_249.xyz, r8.w);
    let v_250 = fma(r3.xyz, r0.www, r7.xyz);
    r7 = vec4<f32>(v_250.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_251 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_251.xyz, r7.w);
    let v_252 = dot(r7.xyz, r4.xyz);
    r7.w = clamp(vec4<f32>(v_252, v_252, v_252, v_252).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r8.w = (r7.w * r7.w);
    r8.w = (r8.w * r8.w);
    r7.w = (r7.w * r8.w);
    r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r3.w);
    let v_253 = dot(r7.xyz, v_135.xyz);
    r7.x = clamp(vec4<f32>(v_253, v_253, v_253, v_253).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r5.w * r7.x);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r7.w);
    r6.w = (r6.w * r7.x);
    r2.w = (r2.w * r6.w);
    r2.w = (r1.y * r2.w);
    let v_254 = (r2.www * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_254.xyz, r7.w);
  }
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    let v_255 = bitcast<u32>(r6.w);
    let v_256 = r2.w;
    r1.w = select(r1.w, v_256, (v_255 != 0u));
    if ((bitcast<u32>(r1.w) != 0u)) {
    } else {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_257 = (v_132.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_257.xyz, r9.w);
      let v_258 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_258.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_259 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_259.xyz, r10.w);
      let v_260 = (r10.xyz + v_132.xyz);
      r10 = vec4<f32>(v_260.xyz, r10.w);
      let v_261 = bitcast<vec3<u32>>(r2.www);
      let v_262 = r9.xyz;
      let v_263 = select(r10.xyz, v_262, (v_261 != vec3<u32>()));
      r9 = vec4<f32>(v_263.xyz, r9.w);
      r2.w = dot(r9.xyz, r9.xyz);
      let v_264 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_264.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_265 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_265.xyz, r9.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r2.w, cb3_3.tint_symbol_2[12u].w);
      r2.w = (r2.w / r6.w);
      let v_266 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r9.xyz, v_266.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_267 = dot(r9.xyz, v_135.xyz);
      r7.w = clamp(vec4<f32>(v_267, v_267, v_267, v_267).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r2.w * r6.w);
      let v_268 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_268.xyz, r10.w);
      let v_269 = fma(r10.xyz, r2.xyz, r8.xyz);
      r8 = vec4<f32>(v_269.xyz, r8.w);
      let v_270 = fma(r3.xyz, r0.www, r9.xyz);
      r9 = vec4<f32>(v_270.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_271 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_271.xyz, r9.w);
      let v_272 = dot(r9.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_272, v_272, v_272, v_272).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r3.w);
      let v_273 = dot(r9.xyz, v_135.xyz);
      r8.w = clamp(vec4<f32>(v_273, v_273, v_273, v_273).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r5.w * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r2.w = (r2.w * r6.w);
      r2.w = (r1.y * r2.w);
      let v_274 = fma(r2.www, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_274.xyz, r7.w);
    }
  } else {
    r1.w = bitcast<f32>(v.tint_symbol_7[9i].x);
  }
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = bitcast<f32>(v.tint_symbol_7[9i].x);
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    if ((bitcast<u32>(r1.w) != 0u)) {
    } else {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_275 = (v_132.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_275.xyz, r9.w);
      let v_276 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_276.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_277 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_277.xyz, r10.w);
      let v_278 = (r10.xyz + v_132.xyz);
      r10 = vec4<f32>(v_278.xyz, r10.w);
      let v_279 = bitcast<vec3<u32>>(r2.www);
      let v_280 = r9.xyz;
      let v_281 = select(r10.xyz, v_280, (v_279 != vec3<u32>()));
      r9 = vec4<f32>(v_281.xyz, r9.w);
      r2.w = dot(r9.xyz, r9.xyz);
      let v_282 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_282.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_283 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_283.xyz, r9.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r2.w, cb3_3.tint_symbol_2[13u].w);
      r2.w = (r2.w / r6.w);
      let v_284 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r9.xyz, v_284.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_285 = dot(r9.xyz, v_135.xyz);
      r7.w = clamp(vec4<f32>(v_285, v_285, v_285, v_285).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r2.w * r6.w);
      let v_286 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_286.xyz, r10.w);
      let v_287 = fma(r10.xyz, r2.xyz, r8.xyz);
      r8 = vec4<f32>(v_287.xyz, r8.w);
      let v_288 = fma(r3.xyz, r0.www, r9.xyz);
      r9 = vec4<f32>(v_288.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_289 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_289.xyz, r9.w);
      let v_290 = dot(r9.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_290, v_290, v_290, v_290).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r3.w);
      let v_291 = dot(r9.xyz, v_135.xyz);
      r8.w = clamp(vec4<f32>(v_291, v_291, v_291, v_291).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r5.w * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r2.w = (r2.w * r6.w);
      r2.w = (r1.y * r2.w);
      let v_292 = fma(r2.www, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_292.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = bitcast<f32>(v.tint_symbol_7[9i].x);
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    if ((bitcast<u32>(r1.w) != 0u)) {
    } else {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_293 = (v_132.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_293.xyz, r9.w);
      let v_294 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_294.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[22u].w);
      let v_295 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.www, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_295.xyz, r10.w);
      let v_296 = (r10.xyz + v_132.xyz);
      r10 = vec4<f32>(v_296.xyz, r10.w);
      let v_297 = bitcast<vec3<u32>>(r2.www);
      let v_298 = r9.xyz;
      let v_299 = select(r10.xyz, v_298, (v_297 != vec3<u32>()));
      r9 = vec4<f32>(v_299.xyz, r9.w);
      r2.w = dot(r9.xyz, r9.xyz);
      let v_300 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_300.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_301 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_301.xyz, r9.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r2.w, cb3_3.tint_symbol_2[14u].w);
      r2.w = (r2.w / r6.w);
      let v_302 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.w = dot(r9.xyz, v_302.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_303 = dot(r9.xyz, v_135.xyz);
      r7.w = clamp(vec4<f32>(v_303, v_303, v_303, v_303).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r2.w * r6.w);
      let v_304 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_304.xyz, r10.w);
      let v_305 = fma(r10.xyz, r2.xyz, r8.xyz);
      r8 = vec4<f32>(v_305.xyz, r8.w);
      let v_306 = fma(r3.xyz, r0.www, r9.xyz);
      r9 = vec4<f32>(v_306.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_307 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_307.xyz, r9.w);
      let v_308 = dot(r9.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_308, v_308, v_308, v_308).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r3.w);
      let v_309 = dot(r9.xyz, v_135.xyz);
      r8.w = clamp(vec4<f32>(v_309, v_309, v_309, v_309).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r5.w * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r2.w = (r2.w * r6.w);
      r2.w = (r1.y * r2.w);
      let v_310 = fma(r2.www, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_310.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = bitcast<f32>(v.tint_symbol_7[9i].x);
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    if ((bitcast<u32>(r1.w) != 0u)) {
    } else {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_311 = (v_132.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r9 = vec4<f32>(v_311.xyz, r9.w);
      let v_312 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r10 = vec4<f32>(v_312.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r7.w = (cb3_3.tint_symbol_2[23u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[23u].w);
      let v_313 = fma(cb3_3.tint_symbol_2[15u].xyz, r6.www, cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_313.xyz, r10.w);
      let v_314 = (r10.xyz + v_132.xyz);
      r10 = vec4<f32>(v_314.xyz, r10.w);
      let v_315 = bitcast<vec3<u32>>(r2.www);
      let v_316 = r9.xyz;
      let v_317 = select(r10.xyz, v_316, (v_315 != vec3<u32>()));
      r9 = vec4<f32>(v_317.xyz, r9.w);
      r2.w = dot(r9.xyz, r9.xyz);
      let v_318 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_318.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_319 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_319.xyz, r9.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r2.w, cb3_3.tint_symbol_2[15u].w);
      r2.w = (r2.w / r6.w);
      let v_320 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r6.w = dot(r9.xyz, v_320.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_321 = dot(r9.xyz, v_135.xyz);
      r7.w = clamp(vec4<f32>(v_321, v_321, v_321, v_321).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r2.w * r6.w);
      let v_322 = (r7.www * cb3_3.tint_symbol_2[23u].xyz);
      r10 = vec4<f32>(v_322.xyz, r10.w);
      let v_323 = fma(r10.xyz, r2.xyz, r8.xyz);
      r8 = vec4<f32>(v_323.xyz, r8.w);
      let v_324 = fma(r3.xyz, r0.www, r9.xyz);
      r9 = vec4<f32>(v_324.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_325 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_325.xyz, r9.w);
      let v_326 = dot(r9.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_326, v_326, v_326, v_326).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r3.w);
      let v_327 = dot(r9.xyz, v_135.xyz);
      r8.w = clamp(vec4<f32>(v_327, v_327, v_327, v_327).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r5.w * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r2.w = (r2.w * r6.w);
      r2.w = (r1.y * r2.w);
      let v_328 = fma(r2.www, cb3_3.tint_symbol_2[23u].xyz, r7.xyz);
      r7 = vec4<f32>(v_328.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = bitcast<f32>(v.tint_symbol_7[9i].x);
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    if ((bitcast<u32>(r1.w) != 0u)) {
    } else {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_329 = (v_132.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r9 = vec4<f32>(v_329.xyz, r9.w);
      let v_330 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r10 = vec4<f32>(v_330.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r7.w = (cb3_3.tint_symbol_2[24u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[24u].w);
      let v_331 = fma(cb3_3.tint_symbol_2[16u].xyz, r6.www, cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_331.xyz, r10.w);
      let v_332 = (r10.xyz + v_132.xyz);
      r10 = vec4<f32>(v_332.xyz, r10.w);
      let v_333 = bitcast<vec3<u32>>(r2.www);
      let v_334 = r9.xyz;
      let v_335 = select(r10.xyz, v_334, (v_333 != vec3<u32>()));
      r9 = vec4<f32>(v_335.xyz, r9.w);
      r2.w = dot(r9.xyz, r9.xyz);
      let v_336 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_336.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_337 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_337.xyz, r9.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r2.w, cb3_3.tint_symbol_2[16u].w);
      r2.w = (r2.w / r6.w);
      let v_338 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r6.w = dot(r9.xyz, v_338.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_339 = dot(r9.xyz, v_135.xyz);
      r7.w = clamp(vec4<f32>(v_339, v_339, v_339, v_339).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r2.w * r6.w);
      let v_340 = (r7.www * cb3_3.tint_symbol_2[24u].xyz);
      r10 = vec4<f32>(v_340.xyz, r10.w);
      let v_341 = fma(r10.xyz, r2.xyz, r8.xyz);
      r8 = vec4<f32>(v_341.xyz, r8.w);
      let v_342 = fma(r3.xyz, r0.www, r9.xyz);
      r9 = vec4<f32>(v_342.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_343 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_343.xyz, r9.w);
      let v_344 = dot(r9.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_344, v_344, v_344, v_344).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r3.w);
      let v_345 = dot(r9.xyz, v_135.xyz);
      r8.w = clamp(vec4<f32>(v_345, v_345, v_345, v_345).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r5.w * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r2.w = (r2.w * r6.w);
      r2.w = (r1.y * r2.w);
      let v_346 = fma(r2.www, cb3_3.tint_symbol_2[24u].xyz, r7.xyz);
      r7 = vec4<f32>(v_346.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = bitcast<f32>(v.tint_symbol_7[9i].x);
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    if ((bitcast<u32>(r1.w) != 0u)) {
    } else {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_347 = (v_132.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r9 = vec4<f32>(v_347.xyz, r9.w);
      let v_348 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r10 = vec4<f32>(v_348.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r7.w = (cb3_3.tint_symbol_2[25u].w + 0.00009999999747378752f);
      r6.w = clamp(((r6.wwww / r7.wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[25u].w);
      let v_349 = fma(cb3_3.tint_symbol_2[17u].xyz, r6.www, cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_349.xyz, r10.w);
      let v_350 = (r10.xyz + v_132.xyz);
      r10 = vec4<f32>(v_350.xyz, r10.w);
      let v_351 = bitcast<vec3<u32>>(r2.www);
      let v_352 = r9.xyz;
      let v_353 = select(r10.xyz, v_352, (v_351 != vec3<u32>()));
      r9 = vec4<f32>(v_353.xyz, r9.w);
      r2.w = dot(r9.xyz, r9.xyz);
      let v_354 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_354.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_355 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_355.xyz, r9.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r2.w, cb3_3.tint_symbol_2[17u].w);
      r2.w = (r2.w / r6.w);
      let v_356 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r6.w = dot(r9.xyz, v_356.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_357 = dot(r9.xyz, v_135.xyz);
      r7.w = clamp(vec4<f32>(v_357, v_357, v_357, v_357).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r2.w * r6.w);
      let v_358 = (r7.www * cb3_3.tint_symbol_2[25u].xyz);
      r10 = vec4<f32>(v_358.xyz, r10.w);
      let v_359 = fma(r10.xyz, r2.xyz, r8.xyz);
      r8 = vec4<f32>(v_359.xyz, r8.w);
      let v_360 = fma(r3.xyz, r0.www, r9.xyz);
      r9 = vec4<f32>(v_360.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_361 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_361.xyz, r9.w);
      let v_362 = dot(r9.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_362, v_362, v_362, v_362).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r3.w);
      let v_363 = dot(r9.xyz, v_135.xyz);
      r8.w = clamp(vec4<f32>(v_363, v_363, v_363, v_363).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r5.w * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r2.w = (r2.w * r6.w);
      r2.w = (r1.y * r2.w);
      let v_364 = fma(r2.www, cb3_3.tint_symbol_2[25u].xyz, r7.xyz);
      r7 = vec4<f32>(v_364.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r1.w) != 0u)) {
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    if ((bitcast<u32>(r1.w) != 0u)) {
    } else {
      r1.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_365 = (v_132.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r9 = vec4<f32>(v_365.xyz, r9.w);
      let v_366 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r10 = vec4<f32>(v_366.xyz, r10.w);
      r2.w = dot(r10.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r6.w = (cb3_3.tint_symbol_2[26u].w + 0.00009999999747378752f);
      r2.w = clamp(((r2.wwww / r6.wwww)).w, 0.0f, 1.0f);
      r2.w = (r2.w * cb3_3.tint_symbol_2[26u].w);
      let v_367 = fma(cb3_3.tint_symbol_2[18u].xyz, r2.www, cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_367.xyz, r10.w);
      let v_368 = (r10.xyz + v_132.xyz);
      r10 = vec4<f32>(v_368.xyz, r10.w);
      let v_369 = bitcast<vec3<u32>>(r1.www);
      let v_370 = r9.xyz;
      let v_371 = select(r10.xyz, v_370, (v_369 != vec3<u32>()));
      r9 = vec4<f32>(v_371.xyz, r9.w);
      r1.w = dot(r9.xyz, r9.xyz);
      let v_372 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_372.xyz, r9.w);
      r2.w = dot(r9.xyz, r9.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_373 = (r2.www * r9.xyz);
      r9 = vec4<f32>(v_373.xyz, r9.w);
      r1.w = clamp(fma(-(r1.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r2.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r2.w = fma(r2.w, r1.w, cb3_3.tint_symbol_2[18u].w);
      r1.w = (r1.w / r2.w);
      let v_374 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r2.w = dot(r9.xyz, v_374.xyz);
      r2.w = clamp(fma(r2.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_375 = dot(r9.xyz, v_135.xyz);
      r6.w = clamp(vec4<f32>(v_375, v_375, v_375, v_375).w, 0.0f, 1.0f);
      r2.w = (r2.w * r6.w);
      r6.w = (r1.w * r2.w);
      let v_376 = (r6.www * cb3_3.tint_symbol_2[26u].xyz);
      r10 = vec4<f32>(v_376.xyz, r10.w);
      let v_377 = fma(r10.xyz, r2.xyz, r8.xyz);
      r8 = vec4<f32>(v_377.xyz, r8.w);
      let v_378 = fma(r3.xyz, r0.www, r9.xyz);
      r3 = vec4<f32>(v_378.xyz, r3.w);
      r0.w = dot(r3.xyz, r3.xyz);
      r0.w = inverseSqrt(r0.w);
      let v_379 = (r0.www * r3.xyz);
      r3 = vec4<f32>(v_379.xyz, r3.w);
      let v_380 = dot(r3.xyz, r4.xyz);
      r0.w = clamp(vec4<f32>(v_380, v_380, v_380, v_380).w, 0.0f, 1.0f);
      r0.w = ((-(r0.wwww)).w + 1.0f);
      r4.x = (r0.w * r0.w);
      r4.x = (r4.x * r4.x);
      r0.w = (r0.w * r4.x);
      r0.w = fma(cb10_10.tint_symbol_5[3u].y, r0.w, r3.w);
      let v_381 = dot(r3.xyz, v_135.xyz);
      r3.x = clamp(vec4<f32>(v_381, v_381, v_381, v_381).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r5.w);
      r3.x = exp2(r3.x);
      r0.w = (r0.w * r3.x);
      r0.w = (r2.w * r0.w);
      r0.w = (r1.w * r0.w);
      r0.w = (r1.y * r0.w);
      let v_382 = fma(r0.www, cb3_3.tint_symbol_2[26u].xyz, r7.xyz);
      r7 = vec4<f32>(v_382.xyz, r7.w);
    }
  }
  r0.w = (r4.w * r4.w);
  r1.x = (r1.x * r1.x);
  let v_383 = (r7.xyz * r1.xxx);
  r1 = vec4<f32>(v_383.xy, r1.z, v_383.z);
  let v_384 = fma(r0.www, r8.xyz, r1.xyw);
  r1 = vec4<f32>(v_384.xy, r1.z, v_384.z);
  let v_385 = fma(r5.xyz, r1.zzz, r1.xyw);
  r1 = vec4<f32>(v_385.xyz, r1.w);
  r0.w = ((-(cb3_3.tint_symbol_2[0u].zzzz)).w + cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_386 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_386.xyz, r3.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_387 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r4 = vec4<f32>(v_387.xyz, r4.w);
  let v_388 = (r4.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r4 = vec4<f32>(v_388.xyz, r4.w);
  let v_389 = fma(r3.xyz, r1.www, r4.xyz);
  r3 = vec4<f32>(v_389.xyz, r3.w);
  let v_390 = (r0.zzz * r3.xyz);
  r3 = vec4<f32>(v_390.xyz, r3.w);
  let v_391 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_391.xyz, r4.w);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_392 = dot(r5.xyz, v_135.xyz);
  r0.z = clamp(vec4<f32>(v_392, v_392, v_392, v_392).z, 0.0f, 1.0f);
  let v_393 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.zzz, r4.xyz);
  r4 = vec4<f32>(v_393.xyz, r4.w);
  let v_394 = fma(r4.xyz, r0.yyy, r3.xyz);
  r0 = vec4<f32>(r0.x, v_394.xyz);
  let v_395 = (r4.www * r0.yzw);
  r0 = vec4<f32>(r0.x, v_395.xyz);
  let v_396 = fma(r0.yzw, r2.xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_396.xyz);
  o0.w = (r0.x * cb2_2.tint_symbol_1[15u].x);
  r0.x = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.x);
  let v_397 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_397.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_398 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_398 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.x = inverseSqrt(r0.x);
  let v_399 = (r0.xxx * r6.xyz);
  r2 = vec4<f32>(v_399.xyz, r2.w);
  let v_400 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.x = clamp(vec4<f32>(v_400, v_400, v_400, v_400).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
  r0.x = exp2(r0.x);
  let v_401 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_401, v_401, v_401, v_401).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_402 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_402.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_403 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_403.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_404 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_404.xyz, r2.w);
  let v_405 = fma(r0.xxx, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_405.xyz, r2.w);
  let v_406 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_406.xyz, r3.w);
  let v_407 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_407.xyz, r2.w);
  let v_408 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_409 = (r2.xyz + v_408.xyz);
  r2 = vec4<f32>(v_409.xyz, r2.w);
  let v_410 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_410.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_411 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_411.xy, r1.z, v_411.z);
  let v_412 = ((-(r0.yzyw)).xyw + r1.xyw);
  r1 = vec4<f32>(v_412.xy, r1.z, v_412.z);
  let v_413 = fma(r1.zzz, r1.xyw, r0.yzw);
  r0 = vec4<f32>(v_413.xyz, r0.w);
  let v_414 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_414.xyz, o0.w);
}

fn v_118(v_415 : bool) {
  if (v_415) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5);
  return o0;
}
