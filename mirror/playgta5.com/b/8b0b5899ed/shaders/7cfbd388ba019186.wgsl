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
  let v_106 = -(v2.xyzx);
  let v_107 = (v_106.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_107.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_108 = (r0.www * r3.xyz);
  r4 = vec4<f32>(v_108.xyz, r4.w);
  let v_109 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_110 = fma(r3.xyz, r0.www, v_109.xyz);
  r5 = vec4<f32>(v_110.xyz, r5.w);
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_111 = (r1.zzz * r5.xyz);
  r5 = vec4<f32>(v_111.xyz, r5.w);
  r1.x = clamp(r1.xxxx.x, 0.0f, 1.0f);
  let v_112 = (r0.yz * r0.yz);
  let v_113 = r0;
  r0 = vec4<f32>(v_113.x, v_112.xy, v_113.w);
  r1.z = fma(r1.y, cb10_10.tint_symbol_5[3u].z, -500.0f);
  r1.z = max(r1.z, 0.0f);
  let v_114 = -(r1.zzzz);
  r1.y = fma(r1.y, cb10_10.tint_symbol_5[3u].z, v_114.y);
  r1.z = (r1.z * 558.0f);
  r1.y = fma(r1.y, 3.0f, r1.z);
  r1.z = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_115 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_115.xyz, r6.w);
  let v_116 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_116.xyz, r7.w);
  let v_117 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_117.xyz, r7.w);
  let v_118 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_118.xyz, r7.w);
  let v_119 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_119.xyz, r8.w);
  let v_120 = &(x0[0u]);
  let v_121 = r8;
  *(v_120) = vec4<f32>(v_121.xyz, (*(v_120)).w);
  let v_122 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_122.xyz, r9.w);
  let v_123 = &(x0[1u]);
  let v_124 = r9;
  *(v_123) = vec4<f32>(v_124.xyz, (*(v_123)).w);
  let v_125 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_125.xyz, r10.w);
  let v_126 = &(x0[2u]);
  let v_127 = r10;
  *(v_126) = vec4<f32>(v_127.xyz, (*(v_126)).w);
  let v_128 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_128.xyz, r7.w);
  let v_129 = &(x0[3u]);
  let v_130 = r7;
  *(v_129) = vec4<f32>(v_130.xyz, (*(v_129)).w);
  let v_131 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_132 = r11;
  r11 = vec4<f32>(v_132.x, v_131.x, v_132.z, v_131.y);
  r1.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r1.w = (r1.w * 0.5f);
  let v_133 = abs(r10.yyyy);
  r2.w = max(v_133.w, abs(r10.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.w)));
  let v_134 = (bitcast<u32>(r2.w) != 0u);
  let v_135 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r2.w = select(bitcast<f32>(v.tint_symbol_7[7i].x), v_135, v_134);
  let v_136 = abs(r9.yyyy);
  r3.w = max(v_136.w, abs(r9.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r1.w)));
  let v_137 = bitcast<u32>(r3.w);
  r2.w = select(r2.w, bitcast<f32>(v.tint_symbol_7[8i].x), (v_137 != 0u));
  let v_138 = abs(r8.yyyy);
  r3.w = max(v_138.w, abs(r8.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r1.w)));
  let v_139 = bitcast<u32>(r1.w);
  r1.w = select(r2.w, 0.0f, (v_139 != 0u));
  let v_140 = x0[bitcast<i32>(r1.w)];
  r8 = vec4<f32>(v_140.xyz, r8.w);
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
  let v_141 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_141.xy, r10.z, v_141.z);
  r10.z = dpdx(r1.w);
  let v_142 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_142.xyz, r12.w);
  r12.w = dpdy(r1.w);
  let v_143 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_143.xy);
  let v_144 = -(r7.zwzz);
  let v_145 = fma(r10.xz, r12.xz, v_144.xy);
  r13 = vec4<f32>(v_145.xy, r13.zw);
  r4.w = (1.0f / r13.x);
  r5.w = (r10.z * r12.y);
  let v_146 = -(r5.wwww);
  r13.z = fma(r10.x, r12.w, v_146.z);
  let v_147 = (r4.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_147.xy);
  let v_148 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_148.xy);
  let v_149 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_149.xy);
  r1.w = fma((-(r3.wwww)).w, r7.z, r1.w);
  r1.w = fma((-(r3.wwww)).w, r7.w, r1.w);
  let v_150 = bitcast<u32>(r2.w);
  let v_151 = r1.w;
  r11.z = select(r8.z, v_151, (v_150 != 0u));
  r9.z = 0.0f;
  let v_152 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_152.xyz, r8.w);
  let v_153 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_153.xy, r11.zw);
  let v_154 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_154.xyz, r10.w);
  let v_155 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_155.xy, r11.zw);
  let v_156 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_156.xyz, r12.w);
  let v_157 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_157.xy, r11.zw);
  let v_158 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_158.xyz, r13.w);
  let v_159 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_159.xy, r11.zw);
  let v_160 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_160.xyz, r14.w);
  let v_161 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_161.xy, r11.zw);
  let v_162 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_162.xyz, r15.w);
  let v_163 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_163.xy, r11.zw);
  let v_164 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_164.xyz, r16.w);
  let v_165 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_165.xy, r11.zw);
  let v_166 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_166.xyz, r17.w);
  let v_167 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_167.xy, r11.zw);
  let v_168 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_168.xyz, r18.w);
  let v_169 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_169.xy, r11.zw);
  let v_170 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_170.xyz, r19.w);
  let v_171 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_171.xy, r11.zw);
  let v_172 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_172.xyz, r20.w);
  let v_173 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_173.xy, r11.zw);
  let v_174 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_174.xyz, r21.w);
  let v_175 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_175.xy, r11.zw);
  let v_176 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_176.xyz, r22.w);
  let v_177 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_177.xy, r11.zw);
  let v_178 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_178.xyz, r23.w);
  let v_179 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_179.xy, r11.zw);
  let v_180 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_180.xyz, r24.w);
  let v_181 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_181.xy, r11.zw);
  let v_182 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_182.xyz, r9.w);
  let v_183 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_183.xy, r8.z);
  let v_184 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_184.xy, r10.z);
  let v_185 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_185.xy, r12.z);
  let v_186 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_186.xy, r13.z);
  let v_187 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_187.xy, r14.z);
  let v_188 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_188.xy, r15.z);
  let v_189 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_189.xy, r16.z);
  let v_190 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_190.xy, r17.z);
  let v_191 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_191.xy, r18.z);
  let v_192 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_192.xy, r19.z);
  let v_193 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_193.xy, r20.z);
  let v_194 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_194.xy, r21.z);
  let v_195 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_195.xy, r22.z);
  let v_196 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_196.xy, r23.z);
  let v_197 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_197.xy, r24.z);
  let v_198 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_198.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r1.w = dot(r8, vec4<f32>(1.0f));
  r1.z = clamp(fma(r1.zzzz, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).z, 0.0f, 1.0f);
  let v_199 = abs(r7.yyyy);
  r2.w = max(v_199.w, abs(r7.xxxx).w);
  r2.w = clamp(fma(r2.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = (r2.w * r1.z);
  r1.z = fma(r1.w, 0.0625f, r1.z);
  r1.z = (r1.z * r1.z);
  r1.z = min(r1.z, 1.0f);
  r1.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r1.w = sqrt(r1.w);
  r1.w = (r1.w * cb6_6.tint_symbol_6[3u].z);
  let v_200 = -(r1.zzzz);
  r1.z = fma(r1.w, v_200.z, r1.z);
  r1.w = dot(v_109.xyz, v_109.xyz);
  r1.w = min(r1.w, 1.0f);
  let v_201 = dot(r4.xyz, v_109.xyz);
  r7.x = clamp(vec4<f32>(v_201, v_201, v_201, v_201).x, 0.0f, 1.0f);
  r2.w = dot(r5.xyz, v_109.xyz);
  r7.y = clamp(r2.wwww.y, 0.0f, 1.0f);
  let v_202 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r5 = vec4<f32>(v_202.xy, r5.zw);
  let v_203 = (r5.xy * r5.xy);
  r5 = vec4<f32>(r5.xy, v_203.xy);
  let v_204 = (r5.zw * r5.zw);
  r5 = vec4<f32>(r5.xy, v_204.xy);
  let v_205 = (r5.xy * r5.zw);
  r5 = vec4<f32>(v_205.xy, r5.zw);
  r3.w = ((-(cb10_10.tint_symbol_5[3u].yyyy)).w + 1.0f);
  let v_206 = fma(cb10_10.tint_symbol_5[3u].yy, r5.xy, r3.ww);
  r5 = vec4<f32>(v_206.xy, r5.zw);
  let v_207 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(r5.xy, v_207.xy);
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
  let v_208 = fma(r2.xyz, r1.www, r2.www);
  r5 = vec4<f32>(v_208.xyz, r5.w);
  let v_209 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_209.xyz, r5.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r8 = vec4<f32>(vec3<f32>(), r8.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_210 = (v_106.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_210.xyz, r7.w);
    let v_211 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r8 = vec4<f32>(v_211.xyz, r8.w);
    r6.w = dot(r8.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_2[19u].w);
    let v_212 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.www, cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_212.xyz, r8.w);
    let v_213 = (r8.xyz + v_106.xyz);
    r8 = vec4<f32>(v_213.xyz, r8.w);
    let v_214 = bitcast<vec3<u32>>(r2.www);
    let v_215 = r7.xyz;
    let v_216 = select(r8.xyz, v_215, (v_214 != vec3<u32>()));
    r7 = vec4<f32>(v_216.xyz, r7.w);
    r2.w = dot(r7.xyz, r7.xyz);
    let v_217 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_217.xyz, r7.w);
    r6.w = dot(r7.xyz, r7.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_218 = (r6.www * r7.xyz);
    r7 = vec4<f32>(v_218.xyz, r7.w);
    r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r2.w, cb3_3.tint_symbol_2[11u].w);
    r2.w = (r2.w / r6.w);
    let v_219 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.w = dot(r7.xyz, v_219.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_220 = dot(r7.xyz, v_109.xyz);
    r7.w = clamp(vec4<f32>(v_220, v_220, v_220, v_220).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r7.w = (r2.w * r6.w);
    let v_221 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_221.xyz, r8.w);
    let v_222 = (r2.xyz * r8.xyz);
    r8 = vec4<f32>(v_222.xyz, r8.w);
    let v_223 = fma(r3.xyz, r0.www, r7.xyz);
    r7 = vec4<f32>(v_223.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_224 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_224.xyz, r7.w);
    let v_225 = dot(r7.xyz, r4.xyz);
    r7.w = clamp(vec4<f32>(v_225, v_225, v_225, v_225).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r8.w = (r7.w * r7.w);
    r8.w = (r8.w * r8.w);
    r7.w = (r7.w * r8.w);
    r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r3.w);
    let v_226 = dot(r7.xyz, v_109.xyz);
    r7.x = clamp(vec4<f32>(v_226, v_226, v_226, v_226).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r5.w * r7.x);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r7.w);
    r6.w = (r6.w * r7.x);
    r2.w = (r2.w * r6.w);
    r2.w = (r1.y * r2.w);
    let v_227 = (r2.www * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_227.xyz, r7.w);
  }
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    let v_228 = bitcast<u32>(r6.w);
    let v_229 = r2.w;
    r1.w = select(r1.w, v_229, (v_228 != 0u));
    if ((bitcast<u32>(r1.w) != 0u)) {
    } else {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_230 = (v_106.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(v_230.xyz, r9.w);
      let v_231 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_231.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_232 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_232.xyz, r10.w);
      let v_233 = (r10.xyz + v_106.xyz);
      r10 = vec4<f32>(v_233.xyz, r10.w);
      let v_234 = bitcast<vec3<u32>>(r2.www);
      let v_235 = r9.xyz;
      let v_236 = select(r10.xyz, v_235, (v_234 != vec3<u32>()));
      r9 = vec4<f32>(v_236.xyz, r9.w);
      r2.w = dot(r9.xyz, r9.xyz);
      let v_237 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_237.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_238 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_238.xyz, r9.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r2.w, cb3_3.tint_symbol_2[12u].w);
      r2.w = (r2.w / r6.w);
      let v_239 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r9.xyz, v_239.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_240 = dot(r9.xyz, v_109.xyz);
      r7.w = clamp(vec4<f32>(v_240, v_240, v_240, v_240).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r2.w * r6.w);
      let v_241 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_241.xyz, r10.w);
      let v_242 = fma(r10.xyz, r2.xyz, r8.xyz);
      r8 = vec4<f32>(v_242.xyz, r8.w);
      let v_243 = fma(r3.xyz, r0.www, r9.xyz);
      r9 = vec4<f32>(v_243.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_244 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_244.xyz, r9.w);
      let v_245 = dot(r9.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_245, v_245, v_245, v_245).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r3.w);
      let v_246 = dot(r9.xyz, v_109.xyz);
      r8.w = clamp(vec4<f32>(v_246, v_246, v_246, v_246).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r5.w * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r2.w = (r2.w * r6.w);
      r2.w = (r1.y * r2.w);
      let v_247 = fma(r2.www, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_247.xyz, r7.w);
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
      let v_248 = (v_106.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(v_248.xyz, r9.w);
      let v_249 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_249.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_250 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_250.xyz, r10.w);
      let v_251 = (r10.xyz + v_106.xyz);
      r10 = vec4<f32>(v_251.xyz, r10.w);
      let v_252 = bitcast<vec3<u32>>(r2.www);
      let v_253 = r9.xyz;
      let v_254 = select(r10.xyz, v_253, (v_252 != vec3<u32>()));
      r9 = vec4<f32>(v_254.xyz, r9.w);
      r2.w = dot(r9.xyz, r9.xyz);
      let v_255 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_255.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_256 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_256.xyz, r9.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r2.w, cb3_3.tint_symbol_2[13u].w);
      r2.w = (r2.w / r6.w);
      let v_257 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r9.xyz, v_257.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_258 = dot(r9.xyz, v_109.xyz);
      r7.w = clamp(vec4<f32>(v_258, v_258, v_258, v_258).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r2.w * r6.w);
      let v_259 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_259.xyz, r10.w);
      let v_260 = fma(r10.xyz, r2.xyz, r8.xyz);
      r8 = vec4<f32>(v_260.xyz, r8.w);
      let v_261 = fma(r3.xyz, r0.www, r9.xyz);
      r9 = vec4<f32>(v_261.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_262 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_262.xyz, r9.w);
      let v_263 = dot(r9.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_263, v_263, v_263, v_263).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r3.w);
      let v_264 = dot(r9.xyz, v_109.xyz);
      r8.w = clamp(vec4<f32>(v_264, v_264, v_264, v_264).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r5.w * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r2.w = (r2.w * r6.w);
      r2.w = (r1.y * r2.w);
      let v_265 = fma(r2.www, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_265.xyz, r7.w);
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
      let v_266 = (v_106.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_266.xyz, r9.w);
      let v_267 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_267.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[22u].w);
      let v_268 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.www, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_268.xyz, r10.w);
      let v_269 = (r10.xyz + v_106.xyz);
      r10 = vec4<f32>(v_269.xyz, r10.w);
      let v_270 = bitcast<vec3<u32>>(r2.www);
      let v_271 = r9.xyz;
      let v_272 = select(r10.xyz, v_271, (v_270 != vec3<u32>()));
      r9 = vec4<f32>(v_272.xyz, r9.w);
      r2.w = dot(r9.xyz, r9.xyz);
      let v_273 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_273.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_274 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_274.xyz, r9.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r2.w, cb3_3.tint_symbol_2[14u].w);
      r2.w = (r2.w / r6.w);
      let v_275 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.w = dot(r9.xyz, v_275.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_276 = dot(r9.xyz, v_109.xyz);
      r7.w = clamp(vec4<f32>(v_276, v_276, v_276, v_276).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r2.w * r6.w);
      let v_277 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_277.xyz, r10.w);
      let v_278 = fma(r10.xyz, r2.xyz, r8.xyz);
      r8 = vec4<f32>(v_278.xyz, r8.w);
      let v_279 = fma(r3.xyz, r0.www, r9.xyz);
      r9 = vec4<f32>(v_279.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_280 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_280.xyz, r9.w);
      let v_281 = dot(r9.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_281, v_281, v_281, v_281).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r3.w);
      let v_282 = dot(r9.xyz, v_109.xyz);
      r8.w = clamp(vec4<f32>(v_282, v_282, v_282, v_282).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r5.w * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r2.w = (r2.w * r6.w);
      r2.w = (r1.y * r2.w);
      let v_283 = fma(r2.www, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_283.xyz, r7.w);
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
      let v_284 = (v_106.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r9 = vec4<f32>(v_284.xyz, r9.w);
      let v_285 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r10 = vec4<f32>(v_285.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[23u].w);
      let v_286 = fma(cb3_3.tint_symbol_2[15u].xyz, r6.www, cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_286.xyz, r10.w);
      let v_287 = (r10.xyz + v_106.xyz);
      r10 = vec4<f32>(v_287.xyz, r10.w);
      let v_288 = bitcast<vec3<u32>>(r2.www);
      let v_289 = r9.xyz;
      let v_290 = select(r10.xyz, v_289, (v_288 != vec3<u32>()));
      r9 = vec4<f32>(v_290.xyz, r9.w);
      r2.w = dot(r9.xyz, r9.xyz);
      let v_291 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_291.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_292 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_292.xyz, r9.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r2.w, cb3_3.tint_symbol_2[15u].w);
      r2.w = (r2.w / r6.w);
      let v_293 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r6.w = dot(r9.xyz, v_293.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_294 = dot(r9.xyz, v_109.xyz);
      r7.w = clamp(vec4<f32>(v_294, v_294, v_294, v_294).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r2.w * r6.w);
      let v_295 = (r7.www * cb3_3.tint_symbol_2[23u].xyz);
      r10 = vec4<f32>(v_295.xyz, r10.w);
      let v_296 = fma(r10.xyz, r2.xyz, r8.xyz);
      r8 = vec4<f32>(v_296.xyz, r8.w);
      let v_297 = fma(r3.xyz, r0.www, r9.xyz);
      r9 = vec4<f32>(v_297.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_298 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_298.xyz, r9.w);
      let v_299 = dot(r9.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_299, v_299, v_299, v_299).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r3.w);
      let v_300 = dot(r9.xyz, v_109.xyz);
      r8.w = clamp(vec4<f32>(v_300, v_300, v_300, v_300).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r5.w * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r2.w = (r2.w * r6.w);
      r2.w = (r1.y * r2.w);
      let v_301 = fma(r2.www, cb3_3.tint_symbol_2[23u].xyz, r7.xyz);
      r7 = vec4<f32>(v_301.xyz, r7.w);
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
      let v_302 = (v_106.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r9 = vec4<f32>(v_302.xyz, r9.w);
      let v_303 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r10 = vec4<f32>(v_303.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[24u].w);
      let v_304 = fma(cb3_3.tint_symbol_2[16u].xyz, r6.www, cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_304.xyz, r10.w);
      let v_305 = (r10.xyz + v_106.xyz);
      r10 = vec4<f32>(v_305.xyz, r10.w);
      let v_306 = bitcast<vec3<u32>>(r2.www);
      let v_307 = r9.xyz;
      let v_308 = select(r10.xyz, v_307, (v_306 != vec3<u32>()));
      r9 = vec4<f32>(v_308.xyz, r9.w);
      r2.w = dot(r9.xyz, r9.xyz);
      let v_309 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_309.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_310 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_310.xyz, r9.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r2.w, cb3_3.tint_symbol_2[16u].w);
      r2.w = (r2.w / r6.w);
      let v_311 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r6.w = dot(r9.xyz, v_311.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_312 = dot(r9.xyz, v_109.xyz);
      r7.w = clamp(vec4<f32>(v_312, v_312, v_312, v_312).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r2.w * r6.w);
      let v_313 = (r7.www * cb3_3.tint_symbol_2[24u].xyz);
      r10 = vec4<f32>(v_313.xyz, r10.w);
      let v_314 = fma(r10.xyz, r2.xyz, r8.xyz);
      r8 = vec4<f32>(v_314.xyz, r8.w);
      let v_315 = fma(r3.xyz, r0.www, r9.xyz);
      r9 = vec4<f32>(v_315.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_316 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_316.xyz, r9.w);
      let v_317 = dot(r9.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_317, v_317, v_317, v_317).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r3.w);
      let v_318 = dot(r9.xyz, v_109.xyz);
      r8.w = clamp(vec4<f32>(v_318, v_318, v_318, v_318).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r5.w * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r2.w = (r2.w * r6.w);
      r2.w = (r1.y * r2.w);
      let v_319 = fma(r2.www, cb3_3.tint_symbol_2[24u].xyz, r7.xyz);
      r7 = vec4<f32>(v_319.xyz, r7.w);
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
      let v_320 = (v_106.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r9 = vec4<f32>(v_320.xyz, r9.w);
      let v_321 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r10 = vec4<f32>(v_321.xyz, r10.w);
      r6.w = dot(r10.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[25u].w);
      let v_322 = fma(cb3_3.tint_symbol_2[17u].xyz, r6.www, cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_322.xyz, r10.w);
      let v_323 = (r10.xyz + v_106.xyz);
      r10 = vec4<f32>(v_323.xyz, r10.w);
      let v_324 = bitcast<vec3<u32>>(r2.www);
      let v_325 = r9.xyz;
      let v_326 = select(r10.xyz, v_325, (v_324 != vec3<u32>()));
      r9 = vec4<f32>(v_326.xyz, r9.w);
      r2.w = dot(r9.xyz, r9.xyz);
      let v_327 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_327.xyz, r9.w);
      r6.w = dot(r9.xyz, r9.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_328 = (r6.www * r9.xyz);
      r9 = vec4<f32>(v_328.xyz, r9.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r2.w, cb3_3.tint_symbol_2[17u].w);
      r2.w = (r2.w / r6.w);
      let v_329 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r6.w = dot(r9.xyz, v_329.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_330 = dot(r9.xyz, v_109.xyz);
      r7.w = clamp(vec4<f32>(v_330, v_330, v_330, v_330).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r2.w * r6.w);
      let v_331 = (r7.www * cb3_3.tint_symbol_2[25u].xyz);
      r10 = vec4<f32>(v_331.xyz, r10.w);
      let v_332 = fma(r10.xyz, r2.xyz, r8.xyz);
      r8 = vec4<f32>(v_332.xyz, r8.w);
      let v_333 = fma(r3.xyz, r0.www, r9.xyz);
      r9 = vec4<f32>(v_333.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_334 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_334.xyz, r9.w);
      let v_335 = dot(r9.xyz, r4.xyz);
      r7.w = clamp(vec4<f32>(v_335, v_335, v_335, v_335).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb10_10.tint_symbol_5[3u].y, r7.w, r3.w);
      let v_336 = dot(r9.xyz, v_109.xyz);
      r8.w = clamp(vec4<f32>(v_336, v_336, v_336, v_336).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r5.w * r8.w);
      r8.w = exp2(r8.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r2.w = (r2.w * r6.w);
      r2.w = (r1.y * r2.w);
      let v_337 = fma(r2.www, cb3_3.tint_symbol_2[25u].xyz, r7.xyz);
      r7 = vec4<f32>(v_337.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r1.w) != 0u)) {
  } else {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.w)));
    if ((bitcast<u32>(r1.w) != 0u)) {
    } else {
      r1.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_338 = (v_106.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r9 = vec4<f32>(v_338.xyz, r9.w);
      let v_339 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r10 = vec4<f32>(v_339.xyz, r10.w);
      r2.w = dot(r10.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r2.w = clamp(((r2.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r2.w = (r2.w * cb3_3.tint_symbol_2[26u].w);
      let v_340 = fma(cb3_3.tint_symbol_2[18u].xyz, r2.www, cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_340.xyz, r10.w);
      let v_341 = (r10.xyz + v_106.xyz);
      r10 = vec4<f32>(v_341.xyz, r10.w);
      let v_342 = bitcast<vec3<u32>>(r1.www);
      let v_343 = r9.xyz;
      let v_344 = select(r10.xyz, v_343, (v_342 != vec3<u32>()));
      r9 = vec4<f32>(v_344.xyz, r9.w);
      r1.w = dot(r9.xyz, r9.xyz);
      let v_345 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_345.xyz, r9.w);
      r2.w = dot(r9.xyz, r9.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_346 = (r2.www * r9.xyz);
      r9 = vec4<f32>(v_346.xyz, r9.w);
      r1.w = clamp(fma(-(r1.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r2.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r2.w = fma(r2.w, r1.w, cb3_3.tint_symbol_2[18u].w);
      r1.w = (r1.w / r2.w);
      let v_347 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r2.w = dot(r9.xyz, v_347.xyz);
      r2.w = clamp(fma(r2.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_348 = dot(r9.xyz, v_109.xyz);
      r6.w = clamp(vec4<f32>(v_348, v_348, v_348, v_348).w, 0.0f, 1.0f);
      r2.w = (r2.w * r6.w);
      r6.w = (r1.w * r2.w);
      let v_349 = (r6.www * cb3_3.tint_symbol_2[26u].xyz);
      r10 = vec4<f32>(v_349.xyz, r10.w);
      let v_350 = fma(r10.xyz, r2.xyz, r8.xyz);
      r8 = vec4<f32>(v_350.xyz, r8.w);
      let v_351 = fma(r3.xyz, r0.www, r9.xyz);
      r3 = vec4<f32>(v_351.xyz, r3.w);
      r0.w = dot(r3.xyz, r3.xyz);
      r0.w = inverseSqrt(r0.w);
      let v_352 = (r0.www * r3.xyz);
      r3 = vec4<f32>(v_352.xyz, r3.w);
      let v_353 = dot(r3.xyz, r4.xyz);
      r0.w = clamp(vec4<f32>(v_353, v_353, v_353, v_353).w, 0.0f, 1.0f);
      r0.w = ((-(r0.wwww)).w + 1.0f);
      r4.x = (r0.w * r0.w);
      r4.x = (r4.x * r4.x);
      r0.w = (r0.w * r4.x);
      r0.w = fma(cb10_10.tint_symbol_5[3u].y, r0.w, r3.w);
      let v_354 = dot(r3.xyz, v_109.xyz);
      r3.x = clamp(vec4<f32>(v_354, v_354, v_354, v_354).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r5.w);
      r3.x = exp2(r3.x);
      r0.w = (r0.w * r3.x);
      r0.w = (r2.w * r0.w);
      r0.w = (r1.w * r0.w);
      r0.w = (r1.y * r0.w);
      let v_355 = fma(r0.www, cb3_3.tint_symbol_2[26u].xyz, r7.xyz);
      r7 = vec4<f32>(v_355.xyz, r7.w);
    }
  }
  r0.w = (r4.w * r4.w);
  r1.x = (r1.x * r1.x);
  let v_356 = (r7.xyz * r1.xxx);
  r1 = vec4<f32>(v_356.xy, r1.z, v_356.z);
  let v_357 = fma(r0.www, r8.xyz, r1.xyw);
  r1 = vec4<f32>(v_357.xy, r1.z, v_357.z);
  let v_358 = fma(r5.xyz, r1.zzz, r1.xyw);
  r1 = vec4<f32>(v_358.xyz, r1.w);
  r0.w = ((-(cb3_3.tint_symbol_2[0u].zzzz)).w + cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_359 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_359.xyz, r3.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_360 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r4 = vec4<f32>(v_360.xyz, r4.w);
  let v_361 = (r4.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r4 = vec4<f32>(v_361.xyz, r4.w);
  let v_362 = fma(r3.xyz, r1.www, r4.xyz);
  r3 = vec4<f32>(v_362.xyz, r3.w);
  let v_363 = (r0.zzz * r3.xyz);
  r3 = vec4<f32>(v_363.xyz, r3.w);
  let v_364 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_364.xyz, r4.w);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_365 = dot(r5.xyz, v_109.xyz);
  r0.z = clamp(vec4<f32>(v_365, v_365, v_365, v_365).z, 0.0f, 1.0f);
  let v_366 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.zzz, r4.xyz);
  r4 = vec4<f32>(v_366.xyz, r4.w);
  let v_367 = fma(r4.xyz, r0.yyy, r3.xyz);
  r0 = vec4<f32>(r0.x, v_367.xyz);
  let v_368 = (r4.www * r0.yzw);
  r0 = vec4<f32>(r0.x, v_368.xyz);
  let v_369 = fma(r0.yzw, r2.xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_369.xyz);
  o0.w = (r0.x * cb2_2.tint_symbol_1[15u].x);
  r0.x = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.x);
  let v_370 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_370.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_371 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_371 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.x = inverseSqrt(r0.x);
  let v_372 = (r0.xxx * r6.xyz);
  r2 = vec4<f32>(v_372.xyz, r2.w);
  let v_373 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.x = clamp(vec4<f32>(v_373, v_373, v_373, v_373).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
  r0.x = exp2(r0.x);
  let v_374 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_374, v_374, v_374, v_374).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_375 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_375.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_376 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_376.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_377 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_377.xyz, r2.w);
  let v_378 = fma(r0.xxx, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_378.xyz, r2.w);
  let v_379 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_379.xyz, r3.w);
  let v_380 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_380.xyz, r2.w);
  let v_381 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_382 = (r2.xyz + v_381.xyz);
  r2 = vec4<f32>(v_382.xyz, r2.w);
  let v_383 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_383.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_384 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_384.xy, r1.z, v_384.z);
  let v_385 = ((-(r0.yzyw)).xyw + r1.xyw);
  r1 = vec4<f32>(v_385.xy, r1.z, v_385.z);
  let v_386 = fma(r1.zzz, r1.xyw, r0.yzw);
  r0 = vec4<f32>(v_386.xyz, r0.w);
  let v_387 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_387.xyz, r0.w);
  let v_388 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_388.xyz, o0.w);
}

fn v_94(v_389 : bool) {
  if (v_389) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5);
  return o0;
}
