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

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

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
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_96 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_96.xy, r1.zw);
  let v_97 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_97.xyz, r2.w);
  let v_98 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_98.xy, r1.z, v_98.z);
  let v_99 = fma(r1.zzz, v1.xyz, r1.xyw);
  r1 = vec4<f32>(v_99.xyz, r1.w);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = inverseSqrt(r1.x);
  r1.x = (r1.x * r1.z);
  r2 = textureSample(t5, s5, v0.xy.xyxx.xy);
  let v_100 = (r2.xy * r2.xy);
  let v_101 = r1;
  r1 = vec4<f32>(v_101.x, v_100.xy, v_101.w);
  r1.y = (r1.y * cb10_10.tint_symbol_5[3u].w);
  r0.w = (r0.w * v3.w);
  let v_102 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_102.xy, r2.zw);
  r1.x = fma(r1.x, 0.5f, 0.5f);
  r3.x = fma(r1.x, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r3.y = (r1.x + 0.30000001192092895508f);
  let v_103 = (r2.xy * r3.xy);
  r1 = vec4<f32>(v_103.x, r1.yz, v_103.y);
  let v_104 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_104.xyz, r0.w);
  let v_105 = -(v2.xyzx);
  let v_106 = (v_105.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_106.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_107 = (r2.www * r2.xyz);
  r3 = vec4<f32>(v_107.xyz, r3.w);
  let v_108 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_109 = fma(r2.xyz, r2.www, v_108.xyz);
  r4 = vec4<f32>(v_109.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_110 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_110.xyz, r4.w);
  r1.y = clamp(r1.yyyy.y, 0.0f, 1.0f);
  let v_111 = (r1.xw * r1.xw);
  r1 = vec4<f32>(v_111.x, r1.yz, v_111.y);
  r3.w = fma(r1.z, cb10_10.tint_symbol_5[3u].z, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_112 = -(r3.wwww);
  r1.z = fma(r1.z, cb10_10.tint_symbol_5[3u].z, v_112.z);
  r3.w = (r3.w * 558.0f);
  r1.z = fma(r1.z, 3.0f, r3.w);
  r3.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_113 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r5 = vec4<f32>(v_113.xyz, r5.w);
  let v_114 = (r5.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r6 = vec4<f32>(v_114.xyz, r6.w);
  let v_115 = fma(r5.xxx, cb6_6.tint_symbol_6[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_115.xyz, r6.w);
  let v_116 = fma(r5.zzz, cb6_6.tint_symbol_6[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_116.xyz, r6.w);
  let v_117 = fma(r6.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_117.xyz, r7.w);
  let v_118 = &(x0[0u]);
  let v_119 = r7;
  *(v_118) = vec4<f32>(v_119.xyz, (*(v_118)).w);
  let v_120 = fma(r6.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_120.xyz, r8.w);
  let v_121 = &(x0[1u]);
  let v_122 = r8;
  *(v_121) = vec4<f32>(v_122.xyz, (*(v_121)).w);
  let v_123 = fma(r6.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_123.xyz, r9.w);
  let v_124 = &(x0[2u]);
  let v_125 = r9;
  *(v_124) = vec4<f32>(v_125.xyz, (*(v_124)).w);
  let v_126 = fma(r6.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r6 = vec4<f32>(v_126.xyz, r6.w);
  let v_127 = &(x0[3u]);
  let v_128 = r6;
  *(v_127) = vec4<f32>(v_128.xyz, (*(v_127)).w);
  let v_129 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_130 = r10;
  r10 = vec4<f32>(v_130.x, v_129.x, v_130.z, v_129.y);
  r4.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_131 = abs(r9.yyyy);
  r5.w = max(v_131.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_132 = (bitcast<u32>(r5.w) != 0u);
  let v_133 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_7[7i].x), v_133, v_132);
  let v_134 = abs(r8.yyyy);
  r6.z = max(v_134.z, abs(r8.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_135 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_7[8i].x), (v_135 != 0u));
  let v_136 = abs(r7.yyyy);
  r6.z = max(v_136.z, abs(r7.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_137 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_137 != 0u));
  let v_138 = x0[bitcast<i32>(r4.w)];
  r7 = vec4<f32>(v_138.xyz, r7.w);
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
  let v_139 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_139.xy, r9.z, v_139.z);
  r9.z = dpdx(r4.w);
  let v_140 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_140.xyz, r11.w);
  r11.w = dpdy(r4.w);
  let v_141 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_141.xy, r7.zw);
  let v_142 = -(r7.xyxx);
  let v_143 = fma(r9.xz, r11.xz, v_142.xy);
  r12 = vec4<f32>(v_143.xy, r12.zw);
  r6.w = (1.0f / r12.x);
  r7.x = (r9.z * r11.y);
  let v_144 = -(r7.xxxx);
  r12.z = fma(r9.x, r11.w, v_144.z);
  let v_145 = (r6.ww * r12.yz);
  r7 = vec4<f32>(v_145.xy, r7.zw);
  let v_146 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_146.xy, r7.zw);
  let v_147 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_147.xy, r7.zw);
  r4.w = fma((-(r6.zzzz)).w, r7.x, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r7.y, r4.w);
  let v_148 = bitcast<u32>(r5.w);
  let v_149 = r4.w;
  r10.z = select(r7.z, v_149, (v_148 != 0u));
  r8.z = 0.0f;
  let v_150 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_150.xyz, r7.w);
  let v_151 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_151.xy, r10.zw);
  let v_152 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_152.xyz, r9.w);
  let v_153 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_153.xy, r10.zw);
  let v_154 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_154.xyz, r11.w);
  let v_155 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_155.xy, r10.zw);
  let v_156 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_156.xyz, r12.w);
  let v_157 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_157.xy, r10.zw);
  let v_158 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_158.xyz, r13.w);
  let v_159 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_159.xy, r10.zw);
  let v_160 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_160.xyz, r14.w);
  let v_161 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_161.xy, r10.zw);
  let v_162 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_162.xyz, r15.w);
  let v_163 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_163.xy, r10.zw);
  let v_164 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_164.xyz, r16.w);
  let v_165 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_165.xy, r10.zw);
  let v_166 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_166.xyz, r17.w);
  let v_167 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_167.xy, r10.zw);
  let v_168 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_168.xyz, r18.w);
  let v_169 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_169.xy, r10.zw);
  let v_170 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_170.xyz, r19.w);
  let v_171 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_171.xy, r10.zw);
  let v_172 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_172.xyz, r20.w);
  let v_173 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_173.xy, r10.zw);
  let v_174 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_174.xyz, r21.w);
  let v_175 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_175.xy, r10.zw);
  let v_176 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_176.xyz, r22.w);
  let v_177 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_177.xy, r10.zw);
  let v_178 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_178.xyz, r23.w);
  let v_179 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_179.xy, r10.zw);
  let v_180 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_180.xyz, r8.w);
  let v_181 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_181.xy, r7.z);
  let v_182 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_182.xy, r9.z);
  let v_183 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_183.xy, r11.z);
  let v_184 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_184.xy, r12.z);
  let v_185 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_185.xy, r13.z);
  let v_186 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_186.xy, r14.z);
  let v_187 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_187.xy, r15.z);
  let v_188 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_188.xy, r16.z);
  let v_189 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_189.xy, r17.z);
  let v_190 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_190.xy, r18.z);
  let v_191 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_191.xy, r19.z);
  let v_192 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_192.xy, r20.z);
  let v_193 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_193.xy, r21.z);
  let v_194 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_194.xy, r22.z);
  let v_195 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_195.xy, r23.z);
  let v_196 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_196.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r4.w = dot(r7, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_197 = abs(r6.yyyy);
  r5.w = max(v_197.w, abs(r6.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_6[3u].z);
  let v_198 = -(r3.wwww);
  r3.w = fma(r4.w, v_198.w, r3.w);
  r4.w = dot(v_108.xyz, v_108.xyz);
  r4.w = min(r4.w, 1.0f);
  let v_199 = dot(r3.xyz, v_108.xyz);
  r6.x = clamp(vec4<f32>(v_199, v_199, v_199, v_199).x, 0.0f, 1.0f);
  r4.x = dot(r4.xyz, v_108.xyz);
  r6.y = clamp(r4.xxxx.y, 0.0f, 1.0f);
  let v_200 = ((-(r6.xxyx)).yz + vec2<f32>(1.0f));
  let v_201 = r4;
  r4 = vec4<f32>(v_201.x, v_200.xy, v_201.w);
  let v_202 = (r4.yz * r4.yz);
  r6 = vec4<f32>(v_202.xy, r6.zw);
  let v_203 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_203.xy, r6.zw);
  let v_204 = (r4.yz * r6.xy);
  let v_205 = r4;
  r4 = vec4<f32>(v_205.x, v_204.xy, v_205.w);
  r5.w = ((-(cb10_10.tint_symbol_5[3u].yyyy)).w + 1.0f);
  let v_206 = fma(cb10_10.tint_symbol_5[3u].yy, r4.yz, r5.ww);
  let v_207 = r4;
  r4 = vec4<f32>(v_207.x, v_206.xy, v_207.w);
  let v_208 = (r1.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(v_208.xy, r6.zw);
  r1.z = (r6.x * 0.125f);
  r4.y = fma((-(r1.yyyy)).y, r4.y, 1.0f);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r6.y);
  r4.x = exp2(r4.x);
  r4.x = (r4.z * r4.x);
  r4.x = (r1.z * r4.x);
  r4.x = (r1.y * r4.x);
  let v_209 = (r4.wy * r4.xw);
  let v_210 = r4;
  r4 = vec4<f32>(v_209.x, v_210.y, v_209.y, v_210.w);
  let v_211 = fma(r0.xyz, r4.zzz, r4.xxx);
  r4 = vec4<f32>(v_211.x, r4.y, v_211.yz);
  let v_212 = (r4.xzw * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_212.x, r4.y, v_212.yz);
  r6.x = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.x) != 0u)) {
    r8 = vec4<f32>(vec3<f32>(), r8.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_213 = (v_105.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_213.xyz, r7.w);
    let v_214 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_214.xyz, r8.w);
    r6.w = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_2[19u].w);
    let v_215 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.www, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_215.xyz, r8.w);
    let v_216 = (r8.xyz + v_105.xyz);
    r8 = vec4<f32>(v_216.xyz, r8.w);
    let v_217 = bitcast<vec3<u32>>(r6.zzz);
    let v_218 = r7.xyz;
    let v_219 = select(r8.xyz, v_218, (v_217 != vec3<u32>()));
    r7 = vec4<f32>(v_219.xyz, r7.w);
    r6.z = dot(r7.xyz, r7.xyz);
    let v_220 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_220.xyz, r7.w);
    r6.w = dot(r7.xyz, r7.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_221 = (r6.www * r7.xyz);
    r7 = vec4<f32>(v_221.xyz, r7.w);
    r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[11u].w);
    r6.z = (r6.z / r6.w);
    let v_222 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.w = dot(r7.xyz, v_222.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_223 = dot(r7.xyz, v_108.xyz);
    r7.w = clamp(vec4<f32>(v_223, v_223, v_223, v_223).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r7.w = (r6.z * r6.w);
    let v_224 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_224.xyz, r8.w);
    let v_225 = (r0.xyz * r8.xyz);
    r8 = vec4<f32>(v_225.xyz, r8.w);
    let v_226 = fma(r2.xyz, r2.www, r7.xyz);
    r7 = vec4<f32>(v_226.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_227 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_227.xyz, r7.w);
    let v_228 = dot(r7.xyz, r3.xyz);
    r7.w = clamp(vec4<f32>(v_228, v_228, v_228, v_228).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r8.w = (r7.w * r7.w);
    r8.w = (r8.w * r8.w);
    r7.w = (r7.w * r8.w);
    r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
    let v_229 = dot(r7.xyz, v_108.xyz);
    r7.x = clamp(vec4<f32>(v_229, v_229, v_229, v_229).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r6.y * r7.x);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r7.w);
    r6.w = (r6.w * r7.x);
    r6.z = (r6.z * r6.w);
    r6.z = (r1.z * r6.z);
    let v_230 = (r6.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_230.xyz, r7.w);
  }
  r6.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.z) != 0u)) {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    let v_231 = bitcast<u32>(r6.w);
    let v_232 = r6.z;
    r6.x = select(r6.x, v_232, (v_231 != 0u));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_233 = (v_105.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_233.xyz, r9.w);
      let v_234 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_234.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_235 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_235.xyz, r10.w);
      let v_236 = (r10.xyz + v_105.xyz);
      r10 = vec4<f32>(v_236.xyz, r10.w);
      let v_237 = bitcast<vec3<u32>>(r6.zzz);
      let v_238 = r9.xyz;
      let v_239 = select(r10.xyz, v_238, (v_237 != vec3<u32>()));
      r9 = vec4<f32>(v_239.xyz, r9.w);
      r6.z = dot(r9.xyz, r9.xyz);
      let v_240 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_240.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_241 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_241.xyz, r9.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[12u].w);
      r6.z = (r6.z / r6.w);
      let v_242 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r9.xyz, v_242.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_243 = dot(r9.xyz, v_108.xyz);
      r7.w = clamp(vec4<f32>(v_243, v_243, v_243, v_243).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r6.z * r6.w);
      let v_244 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_244.xyz, r10.w);
      let v_245 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_245.xyz, r8.w);
      let v_246 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_246.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_247 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_247.xyz, r9.w);
      let v_248 = dot(r9.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_248, v_248, v_248, v_248).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
      let v_249 = dot(r9.xyz, v_108.xyz);
      r8.w = clamp(vec4<f32>(v_249, v_249, v_249, v_249).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r6.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.z = (r6.z * r6.w);
      r6.z = (r1.z * r6.z);
      let v_250 = fma(r6.zzz, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_250.xyz, r7.w);
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
      let v_251 = (v_105.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_251.xyz, r9.w);
      let v_252 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_252.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_253 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_253.xyz, r10.w);
      let v_254 = (r10.xyz + v_105.xyz);
      r10 = vec4<f32>(v_254.xyz, r10.w);
      let v_255 = bitcast<vec3<u32>>(r6.zzz);
      let v_256 = r9.xyz;
      let v_257 = select(r10.xyz, v_256, (v_255 != vec3<u32>()));
      r9 = vec4<f32>(v_257.xyz, r9.w);
      r6.z = dot(r9.xyz, r9.xyz);
      let v_258 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_258.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_259 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_259.xyz, r9.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r6.z, cb3_3.tint_symbol_2[13u].w);
      r6.z = (r6.z / r6.w);
      let v_260 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r9.xyz, v_260.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_261 = dot(r9.xyz, v_108.xyz);
      r7.w = clamp(vec4<f32>(v_261, v_261, v_261, v_261).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r6.z * r6.w);
      let v_262 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_262.xyz, r10.w);
      let v_263 = fma(r10.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_263.xyz, r8.w);
      let v_264 = fma(r2.xyz, r2.www, r9.xyz);
      r9 = vec4<f32>(v_264.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_265 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_265.xyz, r9.w);
      let v_266 = dot(r9.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_266, v_266, v_266, v_266).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r5.w);
      let v_267 = dot(r9.xyz, v_108.xyz);
      r8.w = clamp(vec4<f32>(v_267, v_267, v_267, v_267).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r6.y * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.z = (r6.z * r6.w);
      r6.z = (r1.z * r6.z);
      let v_268 = fma(r6.zzz, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_268.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
  } else {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.z)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_269 = (v_105.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_269.xyz, r9.w);
      let v_270 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_270.xyz, r10.w);
      r6.z = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.z = clamp(((r6.zzzz / cb3_3.tint_symbol_2[22u].wwww)).z, 0.0f, 1.0f);
      r6.z = (r6.z * cb3_3.tint_symbol_2[22u].w);
      let v_271 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_271.xyz, r10.w);
      let v_272 = (r10.xyz + v_105.xyz);
      r10 = vec4<f32>(v_272.xyz, r10.w);
      let v_273 = bitcast<vec3<u32>>(r6.xxx);
      let v_274 = r9.xyz;
      let v_275 = select(r10.xyz, v_274, (v_273 != vec3<u32>()));
      r6 = vec4<f32>(v_275.x, r6.y, v_275.yz);
      r7.w = dot(r6.xzw, r6.xzw);
      let v_276 = (r6.xzw + vec3<f32>(0.00000099999999747524f));
      r6 = vec4<f32>(v_276.x, r6.y, v_276.yz);
      r8.w = dot(r6.xzw, r6.xzw);
      r8.w = inverseSqrt(r8.w);
      let v_277 = (r6.xzw * r8.www);
      r6 = vec4<f32>(v_277.x, r6.y, v_277.yz);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[14u].w);
      r7.w = (r7.w / r8.w);
      let v_278 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.w = dot(r6.xzw, v_278.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_279 = dot(r6.xzw, v_108.xyz);
      r9.x = clamp(vec4<f32>(v_279, v_279, v_279, v_279).x, 0.0f, 1.0f);
      r8.w = (r8.w * r9.x);
      r9.x = (r7.w * r8.w);
      let v_280 = (r9.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r9 = vec4<f32>(v_280.xyz, r9.w);
      let v_281 = fma(r9.xyz, r0.xyz, r8.xyz);
      r8 = vec4<f32>(v_281.xyz, r8.w);
      let v_282 = fma(r2.xyz, r2.www, r6.xzw);
      r2 = vec4<f32>(v_282.xyz, r2.w);
      r2.w = dot(r2.xyz, r2.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_283 = (r2.www * r2.xyz);
      r2 = vec4<f32>(v_283.xyz, r2.w);
      let v_284 = dot(r2.xyz, r3.xyz);
      r2.w = clamp(vec4<f32>(v_284, v_284, v_284, v_284).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r3.x = (r2.w * r2.w);
      r3.x = (r3.x * r3.x);
      r2.w = (r2.w * r3.x);
      r2.w = fma(cb10_10.tint_symbol_5[3u].y, r2.w, r5.w);
      let v_285 = dot(r2.xyz, v_108.xyz);
      r2.x = clamp(vec4<f32>(v_285, v_285, v_285, v_285).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r6.y);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r2.w);
      r2.x = (r8.w * r2.x);
      r2.x = (r7.w * r2.x);
      r1.z = (r1.z * r2.x);
      let v_286 = fma(r1.zzz, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_286.xyz, r7.w);
    }
  }
  r1.z = (r4.y * r4.y);
  r1.y = (r1.y * r1.y);
  let v_287 = (r7.xyz * r1.yyy);
  r2 = vec4<f32>(v_287.xyz, r2.w);
  let v_288 = fma(r1.zzz, r8.xyz, r2.xyz);
  r2 = vec4<f32>(v_288.xyz, r2.w);
  let v_289 = fma(r4.xzw, r3.www, r2.xyz);
  r2 = vec4<f32>(v_289.xyz, r2.w);
  r1.y = ((-(cb3_3.tint_symbol_2[0u].zzzz)).y + cb3_3.tint_symbol_2[43u].w);
  r1.y = (r1.y * cb3_3.tint_symbol_2[44u].w);
  r1.y = max(r1.y, 0.0f);
  let v_290 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_290.xyz, r3.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_291 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r4 = vec4<f32>(v_291.x, r4.y, v_291.yz);
  let v_292 = (r4.xzw * cb2_2.tint_symbol_1[16u].zzz);
  r4 = vec4<f32>(v_292.x, r4.y, v_292.yz);
  let v_293 = fma(r3.xyz, r1.zzz, r4.xzw);
  r3 = vec4<f32>(v_293.xyz, r3.w);
  let v_294 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_294.xyz, r3.w);
  let v_295 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(r1.x, v_295.xyz);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_296 = dot(r6.xyz, v_108.xyz);
  r2.w = clamp(vec4<f32>(v_296, v_296, v_296, v_296).w, 0.0f, 1.0f);
  let v_297 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.www, r1.yzw);
  r1 = vec4<f32>(r1.x, v_297.xyz);
  let v_298 = fma(r1.yzw, r1.xxx, r3.xyz);
  r1 = vec4<f32>(v_298.xyz, r1.w);
  let v_299 = (r4.yyy * r1.xyz);
  r1 = vec4<f32>(v_299.xyz, r1.w);
  let v_300 = fma(r1.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_300.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.w = dot(r5.xyz, r5.xyz);
  r1.x = sqrt(r0.w);
  let v_301 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_301.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r5.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_302 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_302 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_303 = (r0.www * r5.xyz);
  r2 = vec4<f32>(v_303.xyz, r2.w);
  let v_304 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_304, v_304, v_304, v_304).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_305 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_305, v_305, v_305, v_305).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_306 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_306.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_307 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_307.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_308 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_308.xyz, r2.w);
  let v_309 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_309.xyz, r2.w);
  let v_310 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_310.xyz, r3.w);
  let v_311 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_311.xyz, r2.w);
  let v_312 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_313 = (r2.xyz + v_312.xyz);
  r2 = vec4<f32>(v_313.xyz, r2.w);
  let v_314 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_314.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_315 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_315.xy, r1.z, v_315.z);
  let v_316 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_316.xy, r1.z, v_316.z);
  let v_317 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_317.xyz, r0.w);
  let v_318 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_318.xyz, r0.w);
  let v_319 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_319.xyz, o0.w);
}

fn v_94(v_320 : bool) {
  if (v_320) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5);
  return o0;
}
