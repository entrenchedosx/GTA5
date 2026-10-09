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
  tint_symbol_7 : array<vec4<u32>, 9u>,
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
  let v_132 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_132.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_133 = (r0.www * r3.xyz);
  r4 = vec4<f32>(v_133.xyz, r4.w);
  let v_134 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_135 = fma(r3.xyz, r0.www, v_134.xyz);
  r5 = vec4<f32>(v_135.xyz, r5.w);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_136 = (r0.www * r5.xyz);
  r5 = vec4<f32>(v_136.xyz, r5.w);
  r1.x = clamp(r1.xxxx.x, 0.0f, 1.0f);
  let v_137 = (r0.yz * r0.yz);
  let v_138 = r0;
  r0 = vec4<f32>(v_138.x, v_137.xy, v_138.w);
  r0.w = fma(r1.y, cb10_10.tint_symbol_5[3u].z, -500.0f);
  r0.w = max(r0.w, 0.0f);
  let v_139 = -(r0.wwww);
  r1.y = fma(r1.y, cb10_10.tint_symbol_5[3u].z, v_139.y);
  r0.w = (r0.w * 558.0f);
  r0.w = fma(r1.y, 3.0f, r0.w);
  let v_140 = (r2.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r1 = vec4<f32>(r1.x, v_140.xyz);
  r2.x = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_141 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r2 = vec4<f32>(r2.x, v_141.xyz);
  let v_142 = (r2.zzz * cb6_6.tint_symbol_6[1u].xyz);
  r3 = vec4<f32>(v_142.xyz, r3.w);
  let v_143 = fma(r2.yyy, cb6_6.tint_symbol_6[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_143.xyz, r3.w);
  let v_144 = fma(r2.www, cb6_6.tint_symbol_6[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_144.xyz, r3.w);
  let v_145 = fma(r3.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r6 = vec4<f32>(v_145.xyz, r6.w);
  let v_146 = &(x0[0u]);
  let v_147 = r6;
  *(v_146) = vec4<f32>(v_147.xyz, (*(v_146)).w);
  let v_148 = fma(r3.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r7 = vec4<f32>(v_148.xyz, r7.w);
  let v_149 = &(x0[1u]);
  let v_150 = r7;
  *(v_149) = vec4<f32>(v_150.xyz, (*(v_149)).w);
  let v_151 = fma(r3.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r8 = vec4<f32>(v_151.xyz, r8.w);
  let v_152 = &(x0[2u]);
  let v_153 = r8;
  *(v_152) = vec4<f32>(v_153.xyz, (*(v_152)).w);
  let v_154 = fma(r3.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r3 = vec4<f32>(v_154.xyz, r3.w);
  let v_155 = &(x0[3u]);
  let v_156 = r3;
  *(v_155) = vec4<f32>(v_156.xyz, (*(v_155)).w);
  let v_157 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_158 = r9;
  r9 = vec4<f32>(v_158.x, v_157.x, v_158.z, v_157.y);
  r3.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_159 = abs(r8.yyyy);
  r3.w = max(v_159.w, abs(r8.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_160 = (bitcast<u32>(r3.w) != 0u);
  let v_161 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_7[7i].x), v_161, v_160);
  let v_162 = abs(r7.yyyy);
  r4.w = max(v_162.w, abs(r7.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_163 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_7[8i].x), (v_163 != 0u));
  let v_164 = abs(r6.yyyy);
  r4.w = max(v_164.w, abs(r6.xxxx).w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_165 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_165 != 0u));
  let v_166 = x0[bitcast<i32>(r3.z)];
  r6 = vec4<f32>(v_166.xyz, r6.w);
  r3.z = f32(bitcast<i32>(r3.z));
  r3.w = (r3.z + 0.5f);
  r3.w = (r3.w * 0.25f);
  r7 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.zzzz)));
  r7 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r7) & vec4<u32>(1065353216u)));
  r3.z = dot(r7, cb6_6.tint_symbol_6[12u]);
  r4.w = dot(r7, cb6_6.tint_symbol_6[13u]);
  r7.x = (r6.x + 0.5f);
  r7.y = fma(r6.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r3.z == 0.0f))));
  r3.z = ((-(r3.zzzz)).z + r6.z);
  let v_167 = dpdx(r7.xyy);
  r8 = vec4<f32>(v_167.xy, r8.z, v_167.z);
  r8.z = dpdx(r3.z);
  let v_168 = dpdy(r7.yxy);
  r10 = vec4<f32>(v_168.xyz, r10.w);
  r10.w = dpdy(r3.z);
  let v_169 = (r8.yw * r10.yw);
  r6 = vec4<f32>(v_169.xy, r6.zw);
  let v_170 = -(r6.xyxx);
  let v_171 = fma(r8.xz, r10.xz, v_170.xy);
  r11 = vec4<f32>(v_171.xy, r11.zw);
  r5.w = (1.0f / r11.x);
  r6.x = (r8.z * r10.y);
  let v_172 = -(r6.xxxx);
  r11.z = fma(r8.x, r10.w, v_172.z);
  let v_173 = (r5.ww * r11.yz);
  r6 = vec4<f32>(v_173.xy, r6.zw);
  let v_174 = max(r6.xy, vec2<f32>());
  r6 = vec4<f32>(v_174.xy, r6.zw);
  let v_175 = min(r6.xy, vec2<f32>(0.5f));
  r6 = vec4<f32>(v_175.xy, r6.zw);
  r3.z = fma((-(r4.wwww)).z, r6.x, r3.z);
  r3.z = fma((-(r4.wwww)).z, r6.y, r3.z);
  let v_176 = bitcast<u32>(r3.w);
  let v_177 = r3.z;
  r9.z = select(r6.z, v_177, (v_176 != 0u));
  r7.z = 0.0f;
  let v_178 = (r7.xyz + r9.ywz);
  r6 = vec4<f32>(v_178.xyz, r6.w);
  let v_179 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r9 = vec4<f32>(v_179.xy, r9.zw);
  let v_180 = (r7.xyz + r9.xyz);
  r8 = vec4<f32>(v_180.xyz, r8.w);
  let v_181 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r9 = vec4<f32>(v_181.xy, r9.zw);
  let v_182 = (r7.xyz + r9.xyz);
  r10 = vec4<f32>(v_182.xyz, r10.w);
  let v_183 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r9 = vec4<f32>(v_183.xy, r9.zw);
  let v_184 = (r7.xyz + r9.xyz);
  r11 = vec4<f32>(v_184.xyz, r11.w);
  let v_185 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r9 = vec4<f32>(v_185.xy, r9.zw);
  let v_186 = (r7.xyz + r9.xyz);
  r12 = vec4<f32>(v_186.xyz, r12.w);
  let v_187 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r9 = vec4<f32>(v_187.xy, r9.zw);
  let v_188 = (r7.xyz + r9.xyz);
  r13 = vec4<f32>(v_188.xyz, r13.w);
  let v_189 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r9 = vec4<f32>(v_189.xy, r9.zw);
  let v_190 = (r7.xyz + r9.xyz);
  r14 = vec4<f32>(v_190.xyz, r14.w);
  let v_191 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r9 = vec4<f32>(v_191.xy, r9.zw);
  let v_192 = (r7.xyz + r9.xyz);
  r15 = vec4<f32>(v_192.xyz, r15.w);
  let v_193 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r9 = vec4<f32>(v_193.xy, r9.zw);
  let v_194 = (r7.xyz + r9.xyz);
  r16 = vec4<f32>(v_194.xyz, r16.w);
  let v_195 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r9 = vec4<f32>(v_195.xy, r9.zw);
  let v_196 = (r7.xyz + r9.xyz);
  r17 = vec4<f32>(v_196.xyz, r17.w);
  let v_197 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r9 = vec4<f32>(v_197.xy, r9.zw);
  let v_198 = (r7.xyz + r9.xyz);
  r18 = vec4<f32>(v_198.xyz, r18.w);
  let v_199 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r9 = vec4<f32>(v_199.xy, r9.zw);
  let v_200 = (r7.xyz + r9.xyz);
  r19 = vec4<f32>(v_200.xyz, r19.w);
  let v_201 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r9 = vec4<f32>(v_201.xy, r9.zw);
  let v_202 = (r7.xyz + r9.xyz);
  r20 = vec4<f32>(v_202.xyz, r20.w);
  let v_203 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r9 = vec4<f32>(v_203.xy, r9.zw);
  let v_204 = (r7.xyz + r9.xyz);
  r21 = vec4<f32>(v_204.xyz, r21.w);
  let v_205 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r9 = vec4<f32>(v_205.xy, r9.zw);
  let v_206 = (r7.xyz + r9.xyz);
  r22 = vec4<f32>(v_206.xyz, r22.w);
  let v_207 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r9 = vec4<f32>(v_207.xy, r9.zw);
  let v_208 = (r7.xyz + r9.xyz);
  r7 = vec4<f32>(v_208.xyz, r7.w);
  let v_209 = r6.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_209.xy, r6.z);
  let v_210 = r8.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_210.xy, r8.z);
  let v_211 = r10.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_211.xy, r10.z);
  let v_212 = r11.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_212.xy, r11.z);
  let v_213 = r12.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_213.xy, r12.z);
  let v_214 = r13.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_214.xy, r13.z);
  let v_215 = r14.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_215.xy, r14.z);
  let v_216 = r15.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_216.xy, r15.z);
  let v_217 = r16.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_217.xy, r16.z);
  let v_218 = r17.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_218.xy, r17.z);
  let v_219 = r18.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_219.xy, r18.z);
  let v_220 = r19.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_220.xy, r19.z);
  let v_221 = r20.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_221.xy, r20.z);
  let v_222 = r21.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_222.xy, r21.z);
  let v_223 = r22.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_223.xy, r22.z);
  let v_224 = r7.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_224.xy, r7.z);
  r6 = (r6 + r8);
  r6 = (r9 + r6);
  r6 = (r10 + r6);
  r3.z = dot(r6, vec4<f32>(1.0f));
  r2.x = clamp(fma(r2.xxxx, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).x, 0.0f, 1.0f);
  let v_225 = abs(r3.yyyy);
  r3.x = max(v_225.x, abs(r3.xxxx).x);
  r3.x = clamp(fma(r3.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = (r3.x * r2.x);
  r2.x = fma(r3.z, 0.0625f, r2.x);
  r2.x = (r2.x * r2.x);
  r2.x = min(r2.x, 1.0f);
  r3.x = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).x, 0.0f, 1.0f);
  r3.x = sqrt(r3.x);
  r3.x = (r3.x * cb6_6.tint_symbol_6[3u].z);
  let v_226 = -(r2.xxxx);
  r2.x = fma(r3.x, v_226.x, r2.x);
  let v_227 = dot(v_134.xyz, v_134.xyz);
  r3.x = clamp(vec4<f32>(v_227, v_227, v_227, v_227).x, 0.0f, 1.0f);
  let v_228 = dot(r4.xyz, v_134.xyz);
  r4.x = clamp(vec4<f32>(v_228, v_228, v_228, v_228).x, 0.0f, 1.0f);
  r3.y = dot(r5.xyz, v_134.xyz);
  r4.y = clamp(r3.yyyy.y, 0.0f, 1.0f);
  let v_229 = ((-(r4.xxxy)).zw + vec2<f32>(1.0f));
  r3 = vec4<f32>(r3.xy, v_229.xy);
  let v_230 = (r3.zw * r3.zw);
  r4 = vec4<f32>(v_230.xy, r4.zw);
  let v_231 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_231.xy, r4.zw);
  let v_232 = (r3.zw * r4.xy);
  r3 = vec4<f32>(r3.xy, v_232.xy);
  r4.x = ((-(cb10_10.tint_symbol_5[3u].yyyy)).x + 1.0f);
  let v_233 = fma(cb10_10.tint_symbol_5[3u].yy, r3.zw, r4.xx);
  r3 = vec4<f32>(r3.xy, v_233.xy);
  let v_234 = (r0.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(v_234.xy, r4.zw);
  r0.w = (r4.x * 0.125f);
  r3.z = fma((-(r1.xxxx)).z, r3.z, 1.0f);
  r3.y = clamp(((r3.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r3.y = log2(r3.y);
  r3.y = (r3.y * r4.y);
  r3.y = exp2(r3.y);
  r3.y = (r3.w * r3.y);
  r0.w = (r0.w * r3.y);
  r0.w = (r1.x * r0.w);
  r0.w = (r3.x * r0.w);
  r1.x = (r3.z * r3.x);
  let v_235 = fma(r1.yzw, r1.xxx, r0.www);
  r3 = vec4<f32>(v_235.xy, r3.z, v_235.z);
  let v_236 = (r3.xyw * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_236.xy, r3.z, v_236.z);
  r0.w = ((-(cb3_3.tint_symbol_2[0u].zzzz)).w + cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_237 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_237.xyz, r4.w);
  r1.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_238 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_238.xyz, r5.w);
  let v_239 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_239.xyz, r5.w);
  let v_240 = fma(r4.xyz, r1.xxx, r5.xyz);
  r4 = vec4<f32>(v_240.xyz, r4.w);
  let v_241 = (r0.zzz * r4.xyz);
  r4 = vec4<f32>(v_241.xyz, r4.w);
  let v_242 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_242.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_243 = dot(r6.xyz, v_134.xyz);
  r0.z = clamp(vec4<f32>(v_243, v_243, v_243, v_243).z, 0.0f, 1.0f);
  let v_244 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.zzz, r5.xyz);
  r5 = vec4<f32>(v_244.xyz, r5.w);
  let v_245 = fma(r5.xyz, r0.yyy, r4.xyz);
  r0 = vec4<f32>(r0.x, v_245.xyz);
  let v_246 = (r3.zzz * r0.yzw);
  r0 = vec4<f32>(r0.x, v_246.xyz);
  let v_247 = (r1.yzw * r0.yzw);
  r0 = vec4<f32>(r0.x, v_247.xyz);
  let v_248 = fma(r3.xyw, r2.xxx, r0.yzw);
  r0 = vec4<f32>(r0.x, v_248.xyz);
  o0.w = (r0.x * cb2_2.tint_symbol_1[15u].x);
  r0.x = dot(r2.yzw, r2.yzw);
  r1.x = sqrt(r0.x);
  let v_249 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_249.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r2.w);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_250 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_250 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.x = inverseSqrt(r0.x);
  let v_251 = (r0.xxx * r2.yzw);
  r2 = vec4<f32>(v_251.xyz, r2.w);
  let v_252 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.x = clamp(vec4<f32>(v_252, v_252, v_252, v_252).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
  r0.x = exp2(r0.x);
  let v_253 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_253, v_253, v_253, v_253).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_254 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_254.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_255 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_255.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_256 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_256.xyz, r2.w);
  let v_257 = fma(r0.xxx, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_257.xyz, r2.w);
  let v_258 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_258.xyz, r3.w);
  let v_259 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_259.xyz, r2.w);
  let v_260 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_261 = (r2.xyz + v_260.xyz);
  r2 = vec4<f32>(v_261.xyz, r2.w);
  let v_262 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_262.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_263 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_263.xy, r1.z, v_263.z);
  let v_264 = ((-(r0.yzyw)).xyw + r1.xyw);
  r1 = vec4<f32>(v_264.xy, r1.z, v_264.z);
  let v_265 = fma(r1.zzz, r1.xyw, r0.yzw);
  r0 = vec4<f32>(v_265.xyz, r0.w);
  let v_266 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_266.xyz, o0.w);
}

fn v_118(v_267 : bool) {
  if (v_267) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5);
  return o0;
}
