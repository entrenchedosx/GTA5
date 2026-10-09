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

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

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
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb5_5.tint_symbol_3[6u].w) != 0i)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (1u < bitcast<u32>(cb2_2.tint_symbol_1[19u].x))));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    if ((bitcast<u32>(r0.x) != 0u)) {
      let v_1 = dpdx(v0.xy);
      r0 = vec4<f32>(r0.xy, v_1.xy);
      let v_2 = dpdy(v0.xy);
      r1 = vec4<f32>(v_2.xy, r1.zw);
      r1.z = bitcast<f32>((bitcast<i32>(cb2_2.tint_symbol_1[19u].x) << 16u));
      let v_3 = bitcast<u32>(r1.z);
      let v_4 = r1.z;
      r1.w = select(cb2_2.tint_symbol_1[19u].x, v_4, (v_3 != 0u));
      r2.x = bitcast<f32>((bitcast<i32>(r1.w) << 8u));
      let v_5 = bitcast<u32>(r2.x);
      let v_6 = r2.x;
      r1.w = select(r1.w, v_6, (v_5 != 0u));
      let v_7 = (bitcast<vec2<u32>>(r1.zz) != vec2<u32>());
      let v_8 = vec2<f32>(bitcast<f32>(v.tint_symbol_7[2i].x), bitcast<f32>(v.tint_symbol_7[3i].x));
      let v_9 = select(vec2<f32>(bitcast<f32>(v.tint_symbol_7[4i].x), bitcast<f32>(v.tint_symbol_7[5i].x)), v_8, v_7);
      let v_10 = r2;
      r2 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
      let v_11 = bitcast<u32>(r2.x);
      let v_12 = r2.z;
      r1.z = select(r2.y, v_12, (v_11 != 0u));
      r2.x = bitcast<f32>((bitcast<i32>(r1.w) << 4u));
      r2.y = bitcast<f32>((bitcast<i32>(r1.z) + -4i));
      let v_13 = bitcast<vec2<u32>>(r2.xx);
      let v_14 = r2.yx;
      let v_15 = select(r1.zw, v_14, (v_13 != vec2<u32>()));
      r1 = vec4<f32>(r1.xy, v_15.xy);
      r2.x = bitcast<f32>((bitcast<i32>(r1.w) << 2u));
      r2.y = bitcast<f32>((bitcast<i32>(r1.z) + -2i));
      let v_16 = bitcast<vec2<u32>>(r2.xx);
      let v_17 = r2.yx;
      let v_18 = select(r1.zw, v_17, (v_16 != vec2<u32>()));
      r1 = vec4<f32>(r1.xy, v_18.xy);
      r1.w = bitcast<f32>((bitcast<i32>(r1.w) << 1u));
      r2.x = bitcast<f32>((bitcast<i32>(r1.z) + -1i));
      let v_19 = bitcast<u32>(r1.w);
      let v_20 = r2.x;
      r1.z = select(r1.z, v_20, (v_19 != 0u));
      r1.z = bitcast<f32>((bitcast<i32>(r1.z) + -1i));
      let v_21 = bitcast<u32>(cb2_2.tint_symbol_1[19u].x);
      let v_22 = r1.z;
      r1.z = select(bitcast<f32>(v.tint_symbol_7[6i].x), v_22, (v_21 != 0u));
      let v_23 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<u32>(2u, 3u, 4u) < bitcast<vec3<u32>>(cb2_2.tint_symbol_1[19u].xxx))));
      r2 = vec4<f32>(v_23.xyz, r2.w);
      if ((bitcast<u32>(cb2_2.tint_symbol_1[19u].x) != 0u)) {
        r1.w = icb0[bitcast<i32>(r1.z)].x;
        let v_24 = (r1.xy * icb0[bitcast<i32>(r1.w)].zz);
        r3 = vec4<f32>(v_24.xy, r3.zw);
        let v_25 = fma(icb0[bitcast<i32>(r1.w)].yy, r0.zw, r3.xy);
        r3 = vec4<f32>(v_25.xy, r3.zw);
        let v_26 = (r3.xy + v0.xy);
        r3 = vec4<f32>(v_26.xy, r3.zw);
        r3 = textureSample(t0, s0, r3.xyxx.xy);
        r1.w = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
        r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1u));
      } else {
        r1.w = 0.0f;
      }
      if ((bitcast<u32>(r0.y) != 0u)) {
        r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.z)].x) + 1i));
        let v_27 = (r1.xy * icb0[bitcast<i32>(r0.y)].zz);
        r3 = vec4<f32>(v_27.xy, r3.zw);
        let v_28 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.zw, r3.xy);
        r3 = vec4<f32>(v_28.xy, r3.zw);
        let v_29 = (r3.xy + v0.xy);
        r3 = vec4<f32>(v_29.xy, r3.zw);
        r3 = textureSample(t0, s0, r3.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.w = bitcast<f32>((bitcast<i32>(r1.w) + 2i));
        let v_30 = bitcast<u32>(r0.y);
        let v_31 = r2.w;
        r1.w = select(r1.w, v_31, (v_30 != 0u));
      }
      if ((bitcast<u32>(r2.x) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_32 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 2i))].zz);
        r2 = vec4<f32>(v_32.x, r2.yz, v_32.y);
        let v_33 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 2i))].yy, r0.zw, r2.xw);
        r2 = vec4<f32>(v_33.x, r2.yz, v_33.y);
        let v_34 = (r2.xw + v0.xy);
        r2 = vec4<f32>(v_34.x, r2.yz, v_34.y);
        r3 = textureSample(t0, s0, r2.xwxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 4i));
        let v_35 = bitcast<u32>(r0.y);
        let v_36 = r2.x;
        r1.w = select(r1.w, v_36, (v_35 != 0u));
      }
      if ((bitcast<u32>(r2.y) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_37 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 3i))].zz);
        r2 = vec4<f32>(v_37.xy, r2.zw);
        let v_38 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 3i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_38.xy, r2.zw);
        let v_39 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_39.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 8i));
        let v_40 = bitcast<u32>(r0.y);
        let v_41 = r2.x;
        r1.w = select(r1.w, v_41, (v_40 != 0u));
      }
      if ((bitcast<u32>(r2.z) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_42 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].zz);
        r2 = vec4<f32>(v_42.xy, r2.zw);
        let v_43 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_43.xy, r2.zw);
        let v_44 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_44.xy, r2.zw);
        r2 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 16i));
        let v_45 = bitcast<u32>(r0.y);
        let v_46 = r2.x;
        r1.w = select(r1.w, v_46, (v_45 != 0u));
      }
      r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(5u, 6u, 7u, 8u) < bitcast<vec4<u32>>(cb2_2.tint_symbol_1[19u].xxxx))));
      if ((bitcast<u32>(r2.x) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_47 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 5i))].zz);
        r3 = vec4<f32>(v_47.xy, r3.zw);
        let v_48 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 5i))].yy, r0.zw, r3.xy);
        r3 = vec4<f32>(v_48.xy, r3.zw);
        let v_49 = (r3.xy + v0.xy);
        r3 = vec4<f32>(v_49.xy, r3.zw);
        r3 = textureSample(t0, s0, r3.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 32i));
        let v_50 = bitcast<u32>(r0.y);
        let v_51 = r2.x;
        r1.w = select(r1.w, v_51, (v_50 != 0u));
      }
      if ((bitcast<u32>(r2.y) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_52 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 6i))].zz);
        r2 = vec4<f32>(v_52.xy, r2.zw);
        let v_53 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 6i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_53.xy, r2.zw);
        let v_54 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_54.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 64i));
        let v_55 = bitcast<u32>(r0.y);
        let v_56 = r2.x;
        r1.w = select(r1.w, v_56, (v_55 != 0u));
      }
      if ((bitcast<u32>(r2.z) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_57 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 7i))].zz);
        r2 = vec4<f32>(v_57.xy, r2.zw);
        let v_58 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 7i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_58.xy, r2.zw);
        let v_59 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_59.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 128i));
        let v_60 = bitcast<u32>(r0.y);
        let v_61 = r2.x;
        r1.w = select(r1.w, v_61, (v_60 != 0u));
      }
      if ((bitcast<u32>(r2.w) != 0u)) {
        r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.z)].x) + 8i));
        let v_62 = (r1.xy * icb0[bitcast<i32>(r0.y)].zz);
        r2 = vec4<f32>(v_62.xy, r2.zw);
        let v_63 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_63.xy, r2.zw);
        let v_64 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_64.xy, r2.zw);
        r2 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 256i));
        let v_65 = bitcast<u32>(r0.y);
        let v_66 = r2.x;
        r1.w = select(r1.w, v_66, (v_65 != 0u));
      }
      r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(9u, 10u, 11u, 12u) < bitcast<vec4<u32>>(cb2_2.tint_symbol_1[19u].xxxx))));
      if ((bitcast<u32>(r2.x) != 0u)) {
        r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.z)].x) + 9i));
        let v_67 = (r1.xy * icb0[bitcast<i32>(r0.y)].zz);
        r3 = vec4<f32>(v_67.xy, r3.zw);
        let v_68 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.zw, r3.xy);
        r3 = vec4<f32>(v_68.xy, r3.zw);
        let v_69 = (r3.xy + v0.xy);
        r3 = vec4<f32>(v_69.xy, r3.zw);
        r3 = textureSample(t0, s0, r3.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 512i));
        let v_70 = bitcast<u32>(r0.y);
        let v_71 = r2.x;
        r1.w = select(r1.w, v_71, (v_70 != 0u));
      }
      if ((bitcast<u32>(r2.y) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_72 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 10i))].zz);
        r2 = vec4<f32>(v_72.xy, r2.zw);
        let v_73 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 10i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_73.xy, r2.zw);
        let v_74 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_74.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 1024i));
        let v_75 = bitcast<u32>(r0.y);
        let v_76 = r2.x;
        r1.w = select(r1.w, v_76, (v_75 != 0u));
      }
      if ((bitcast<u32>(r2.z) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_77 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 11i))].zz);
        r2 = vec4<f32>(v_77.xy, r2.zw);
        let v_78 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 11i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_78.xy, r2.zw);
        let v_79 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_79.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 2048i));
        let v_80 = bitcast<u32>(r0.y);
        let v_81 = r2.x;
        r1.w = select(r1.w, v_81, (v_80 != 0u));
      }
      if ((bitcast<u32>(r2.w) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_82 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 12i))].zz);
        r2 = vec4<f32>(v_82.xy, r2.zw);
        let v_83 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 12i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_83.xy, r2.zw);
        let v_84 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_84.xy, r2.zw);
        r2 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.z = bitcast<f32>((bitcast<i32>(r1.w) + 4096i));
        let v_85 = bitcast<u32>(r0.y);
        let v_86 = r1.z;
        r1.w = select(r1.w, v_86, (v_85 != 0u));
      }
      r0.y = bitcast<f32>(select(0u, 4294967295u, (13u < bitcast<u32>(cb2_2.tint_symbol_1[19u].x))));
      if ((bitcast<u32>(r0.y) != 0u)) {
        let v_87 = (r1.xy * vec2<f32>(-0.4375f));
        r1 = vec4<f32>(v_87.xy, r1.zw);
        let v_88 = fma(r0.zw, vec2<f32>(0.4375f), r1.xy);
        let v_89 = r0;
        r0 = vec4<f32>(v_89.x, v_88.xy, v_89.w);
        let v_90 = (r0.yz + v0.xy);
        let v_91 = r0;
        r0 = vec4<f32>(v_91.x, v_90.xy, v_91.w);
        r2 = textureSample(t0, s0, r0.yzyy.xy);
        r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r0.z = bitcast<f32>((bitcast<i32>(r1.w) + 8192i));
        let v_92 = bitcast<u32>(r0.y);
        let v_93 = r0.z;
        r1.w = select(r1.w, v_93, (v_92 != 0u));
      }
    } else {
      r1.w = 0.0f;
    }
    r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) == 0i)));
    v_94((bitcast<u32>(r0.y) != 0u));
  } else {
    if ((bitcast<u32>(r0.x) != 0u)) {
      r0.x = 1.0f;
    } else {
      r1 = textureSample(t0, s0, v0.xy.xyxx.xy);
      r0.x = (r1.w * cb2_2.tint_symbol_1[15u].x);
    }
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r0.x)));
    v_94((bitcast<u32>(r0.x) != 0u));
  }
  r0 = textureSample(t0, s0, v0.xy.xyxx.xy);
  r1 = textureSample(t4, s4, v0.xy.xyxx.xy);
  let v_95 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_95.xy, r1.zw);
  r0.z = dot(r1.xy, r1.xy);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = sqrt(abs(r0.zzzz).z);
  r1.z = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_96 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_96.xy, r1.zw);
  let v_97 = (r1.yyy * v5.xyz);
  r1 = vec4<f32>(r1.x, v_97.xyz);
  let v_98 = fma(r1.xxx, v4.xyz, r1.yzw);
  r1 = vec4<f32>(v_98.xyz, r1.w);
  let v_99 = fma(r0.zzz, v1.xyz, r1.xyz);
  r1 = vec4<f32>(v_99.xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = inverseSqrt(r0.z);
  r0.z = (r0.z * r1.z);
  r1 = textureSample(t5, s5, v0.xy.xyxx.xy);
  let v_100 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_100.xy, r1.zw);
  r1.x = (r1.x * cb10_10.tint_symbol_5[3u].w);
  r0.y = cb13_13.tint_symbol_4[3u].x;
  r2 = textureSample(t13, s13, r0.xyxx.xy);
  r0.x = (r0.w * v3.w);
  let v_101 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  let v_102 = r0;
  r0 = vec4<f32>(v_102.x, v_101.x, v_102.z, v_101.y);
  r0.z = fma(r0.z, 0.5f, 0.5f);
  r3.x = fma(r0.z, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r3.y = (r0.z + 0.30000001192092895508f);
  let v_103 = (r0.yw * r3.xy);
  let v_104 = r0;
  r0 = vec4<f32>(v_104.x, v_103.xy, v_104.w);
  let v_105 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_105.xyz, r2.w);
  let v_106 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_106.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_107 = (r0.www * r3.xyz);
  r4 = vec4<f32>(v_107.xyz, r4.w);
  let v_108 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_109 = fma(r3.xyz, r0.www, v_108.xyz);
  r5 = vec4<f32>(v_109.xyz, r5.w);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_110 = (r0.www * r5.xyz);
  r5 = vec4<f32>(v_110.xyz, r5.w);
  r1.x = clamp(r1.xxxx.x, 0.0f, 1.0f);
  let v_111 = (r0.yz * r0.yz);
  let v_112 = r0;
  r0 = vec4<f32>(v_112.x, v_111.xy, v_112.w);
  r0.w = fma(r1.y, cb10_10.tint_symbol_5[3u].z, -500.0f);
  r0.w = max(r0.w, 0.0f);
  let v_113 = -(r0.wwww);
  r1.y = fma(r1.y, cb10_10.tint_symbol_5[3u].z, v_113.y);
  r0.w = (r0.w * 558.0f);
  r0.w = fma(r1.y, 3.0f, r0.w);
  r1.y = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_114 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_114.xyz, r3.w);
  let v_115 = (r3.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r6 = vec4<f32>(v_115.xyz, r6.w);
  let v_116 = fma(r3.xxx, cb6_6.tint_symbol_6[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_116.xyz, r6.w);
  let v_117 = fma(r3.zzz, cb6_6.tint_symbol_6[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_117.xyz, r6.w);
  let v_118 = fma(r6.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_118.xyz, r7.w);
  let v_119 = &(x0[0u]);
  let v_120 = r7;
  *(v_119) = vec4<f32>(v_120.xyz, (*(v_119)).w);
  let v_121 = fma(r6.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_121.xyz, r8.w);
  let v_122 = &(x0[1u]);
  let v_123 = r8;
  *(v_122) = vec4<f32>(v_123.xyz, (*(v_122)).w);
  let v_124 = fma(r6.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_124.xyz, r9.w);
  let v_125 = &(x0[2u]);
  let v_126 = r9;
  *(v_125) = vec4<f32>(v_126.xyz, (*(v_125)).w);
  let v_127 = fma(r6.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r6 = vec4<f32>(v_127.xyz, r6.w);
  let v_128 = &(x0[3u]);
  let v_129 = r6;
  *(v_128) = vec4<f32>(v_129.xyz, (*(v_128)).w);
  let v_130 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_131 = r10;
  r10 = vec4<f32>(v_131.x, v_130.x, v_131.z, v_130.y);
  r1.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r1.z = (r1.z * 0.5f);
  let v_132 = abs(r9.yyyy);
  r1.w = max(v_132.w, abs(r9.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.z)));
  let v_133 = (bitcast<u32>(r1.w) != 0u);
  let v_134 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r1.w = select(bitcast<f32>(v.tint_symbol_7[7i].x), v_134, v_133);
  let v_135 = abs(r8.yyyy);
  r2.w = max(v_135.w, abs(r8.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.z)));
  let v_136 = bitcast<u32>(r2.w);
  r1.w = select(r1.w, bitcast<f32>(v.tint_symbol_7[8i].x), (v_136 != 0u));
  let v_137 = abs(r7.yyyy);
  r2.w = max(v_137.w, abs(r7.xxxx).w);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.z)));
  let v_138 = bitcast<u32>(r1.z);
  r1.z = select(r1.w, 0.0f, (v_138 != 0u));
  let v_139 = x0[bitcast<i32>(r1.z)];
  r7 = vec4<f32>(v_139.xyz, r7.w);
  r1.z = f32(bitcast<i32>(r1.z));
  r1.w = (r1.z + 0.5f);
  r1.w = (r1.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.zzzz)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r1.z = dot(r8, cb6_6.tint_symbol_6[12u]);
  r2.w = dot(r8, cb6_6.tint_symbol_6[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((r1.z == 0.0f))));
  r1.z = ((-(r1.zzzz)).z + r7.z);
  let v_140 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_140.xy, r9.z, v_140.z);
  r9.z = dpdx(r1.z);
  let v_141 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_141.xyz, r11.w);
  r11.w = dpdy(r1.z);
  let v_142 = (r9.yw * r11.yw);
  r6 = vec4<f32>(r6.xy, v_142.xy);
  let v_143 = -(r6.zwzz);
  let v_144 = fma(r9.xz, r11.xz, v_143.xy);
  r12 = vec4<f32>(v_144.xy, r12.zw);
  r3.w = (1.0f / r12.x);
  r4.w = (r9.z * r11.y);
  let v_145 = -(r4.wwww);
  r12.z = fma(r9.x, r11.w, v_145.z);
  let v_146 = (r3.ww * r12.yz);
  r6 = vec4<f32>(r6.xy, v_146.xy);
  let v_147 = max(r6.zw, vec2<f32>());
  r6 = vec4<f32>(r6.xy, v_147.xy);
  let v_148 = min(r6.zw, vec2<f32>(0.5f));
  r6 = vec4<f32>(r6.xy, v_148.xy);
  r1.z = fma((-(r2.wwww)).z, r6.z, r1.z);
  r1.z = fma((-(r2.wwww)).z, r6.w, r1.z);
  let v_149 = bitcast<u32>(r1.w);
  let v_150 = r1.z;
  r10.z = select(r7.z, v_150, (v_149 != 0u));
  r8.z = 0.0f;
  let v_151 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_151.xyz, r7.w);
  let v_152 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_152.xy, r10.zw);
  let v_153 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_153.xyz, r9.w);
  let v_154 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_154.xy, r10.zw);
  let v_155 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_155.xyz, r11.w);
  let v_156 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_156.xy, r10.zw);
  let v_157 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_157.xyz, r12.w);
  let v_158 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_158.xy, r10.zw);
  let v_159 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_159.xyz, r13.w);
  let v_160 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_160.xy, r10.zw);
  let v_161 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_161.xyz, r14.w);
  let v_162 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_162.xy, r10.zw);
  let v_163 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_163.xyz, r15.w);
  let v_164 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_164.xy, r10.zw);
  let v_165 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_165.xyz, r16.w);
  let v_166 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_166.xy, r10.zw);
  let v_167 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_167.xyz, r17.w);
  let v_168 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_168.xy, r10.zw);
  let v_169 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_169.xyz, r18.w);
  let v_170 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_170.xy, r10.zw);
  let v_171 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_171.xyz, r19.w);
  let v_172 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_172.xy, r10.zw);
  let v_173 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_173.xyz, r20.w);
  let v_174 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_174.xy, r10.zw);
  let v_175 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_175.xyz, r21.w);
  let v_176 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_176.xy, r10.zw);
  let v_177 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_177.xyz, r22.w);
  let v_178 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_178.xy, r10.zw);
  let v_179 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_179.xyz, r23.w);
  let v_180 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_180.xy, r10.zw);
  let v_181 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_181.xyz, r8.w);
  let v_182 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_182.xy, r7.z);
  let v_183 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_183.xy, r9.z);
  let v_184 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_184.xy, r11.z);
  let v_185 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_185.xy, r12.z);
  let v_186 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_186.xy, r13.z);
  let v_187 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_187.xy, r14.z);
  let v_188 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_188.xy, r15.z);
  let v_189 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_189.xy, r16.z);
  let v_190 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_190.xy, r17.z);
  let v_191 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_191.xy, r18.z);
  let v_192 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_192.xy, r19.z);
  let v_193 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_193.xy, r20.z);
  let v_194 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_194.xy, r21.z);
  let v_195 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_195.xy, r22.z);
  let v_196 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_196.xy, r23.z);
  let v_197 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_197.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r1.z = dot(r7, vec4<f32>(1.0f));
  r1.y = clamp(fma(r1.yyyy, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).y, 0.0f, 1.0f);
  let v_198 = abs(r6.yyyy);
  r1.w = max(v_198.w, abs(r6.xxxx).w);
  r1.w = clamp(fma(r1.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.y = (r1.w * r1.y);
  r1.y = fma(r1.z, 0.0625f, r1.y);
  r1.y = (r1.y * r1.y);
  r1.y = min(r1.y, 1.0f);
  r1.z = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).z, 0.0f, 1.0f);
  r1.z = sqrt(r1.z);
  r1.z = (r1.z * cb6_6.tint_symbol_6[3u].z);
  let v_199 = -(r1.yyyy);
  r1.y = fma(r1.z, v_199.y, r1.y);
  r1.z = dot(v_108.xyz, v_108.xyz);
  r1.z = min(r1.z, 1.0f);
  let v_200 = dot(r4.xyz, v_108.xyz);
  r4.x = clamp(vec4<f32>(v_200, v_200, v_200, v_200).x, 0.0f, 1.0f);
  r1.w = dot(r5.xyz, v_108.xyz);
  r4.y = clamp(r1.wwww.y, 0.0f, 1.0f);
  let v_201 = ((-(r4.xyxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_201.xy, r4.zw);
  let v_202 = (r4.xy * r4.xy);
  r4 = vec4<f32>(r4.xy, v_202.xy);
  let v_203 = (r4.zw * r4.zw);
  r4 = vec4<f32>(r4.xy, v_203.xy);
  let v_204 = (r4.xy * r4.zw);
  r4 = vec4<f32>(v_204.xy, r4.zw);
  r2.w = ((-(cb10_10.tint_symbol_5[3u].yyyy)).w + 1.0f);
  let v_205 = fma(cb10_10.tint_symbol_5[3u].yy, r4.xy, r2.ww);
  r4 = vec4<f32>(v_205.xy, r4.zw);
  let v_206 = (r0.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(r4.xy, v_206.xy);
  r0.w = (r4.z * 0.125f);
  r2.w = fma((-(r1.xxxx)).w, r4.x, 1.0f);
  r1.w = clamp(((r1.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * r4.w);
  r1.w = exp2(r1.w);
  r1.w = (r4.y * r1.w);
  r0.w = (r0.w * r1.w);
  r0.w = (r1.x * r0.w);
  r0.w = (r1.z * r0.w);
  r1.x = (r1.z * r2.w);
  let v_207 = fma(r2.xyz, r1.xxx, r0.www);
  r1 = vec4<f32>(v_207.x, r1.y, v_207.yz);
  let v_208 = (r1.xzw * cb3_3.tint_symbol_2[1u].xyz);
  r1 = vec4<f32>(v_208.x, r1.y, v_208.yz);
  r0.w = ((-(cb3_3.tint_symbol_2[0u].zzzz)).w + cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_209 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_209.xyz, r4.w);
  r3.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_210 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_210.xyz, r5.w);
  let v_211 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_211.xyz, r5.w);
  let v_212 = fma(r4.xyz, r3.www, r5.xyz);
  r4 = vec4<f32>(v_212.xyz, r4.w);
  let v_213 = (r0.zzz * r4.xyz);
  r4 = vec4<f32>(v_213.xyz, r4.w);
  let v_214 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_214.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_215 = dot(r6.xyz, v_108.xyz);
  r0.z = clamp(vec4<f32>(v_215, v_215, v_215, v_215).z, 0.0f, 1.0f);
  let v_216 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.zzz, r5.xyz);
  r5 = vec4<f32>(v_216.xyz, r5.w);
  let v_217 = fma(r5.xyz, r0.yyy, r4.xyz);
  r0 = vec4<f32>(r0.x, v_217.xyz);
  let v_218 = (r2.www * r0.yzw);
  r0 = vec4<f32>(r0.x, v_218.xyz);
  let v_219 = (r2.xyz * r0.yzw);
  r0 = vec4<f32>(r0.x, v_219.xyz);
  let v_220 = fma(r1.xzw, r1.yyy, r0.yzw);
  r0 = vec4<f32>(r0.x, v_220.xyz);
  o0.w = (r0.x * cb2_2.tint_symbol_1[15u].x);
  r0.x = dot(r3.xyz, r3.xyz);
  r1.x = sqrt(r0.x);
  let v_221 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_221.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r3.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_222 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_222 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.x = inverseSqrt(r0.x);
  let v_223 = (r0.xxx * r3.xyz);
  r2 = vec4<f32>(v_223.xyz, r2.w);
  let v_224 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.x = clamp(vec4<f32>(v_224, v_224, v_224, v_224).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
  r0.x = exp2(r0.x);
  let v_225 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_225, v_225, v_225, v_225).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_226 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_226.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_227 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_227.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_228 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_228.xyz, r2.w);
  let v_229 = fma(r0.xxx, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_229.xyz, r2.w);
  let v_230 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_230.xyz, r3.w);
  let v_231 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_231.xyz, r2.w);
  let v_232 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_233 = (r2.xyz + v_232.xyz);
  r2 = vec4<f32>(v_233.xyz, r2.w);
  let v_234 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_234.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_235 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_235.xy, r1.z, v_235.z);
  let v_236 = ((-(r0.yzyw)).xyw + r1.xyw);
  r1 = vec4<f32>(v_236.xy, r1.z, v_236.z);
  let v_237 = fma(r1.zzz, r1.xyw, r0.yzw);
  r0 = vec4<f32>(v_237.xyz, r0.w);
  let v_238 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_238.xyz, r0.w);
  let v_239 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_239.xyz, o0.w);
}

fn v_94(v_240 : bool) {
  if (v_240) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5);
  return o0;
}
