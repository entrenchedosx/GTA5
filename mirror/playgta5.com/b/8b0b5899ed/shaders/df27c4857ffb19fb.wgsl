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

var<private> r25 : vec4<f32>;

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

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> icb0 : array<vec4<f32>, 14u> = array<vec4<f32>, 14u>(vec4<f32>(0.0f, 0.25f, 0.25f, 0.0f), vec4<f32>(0x1p-148f, -0.25f, -0.25f, 0.0f), vec4<f32>(0x1.8p-147f, -0.125f, -0.375f, 0.0f), vec4<f32>(0.0f, 0.375f, -0.125f, 0.0f), vec4<f32>(0.0f, -0.375f, 0.125f, 0.0f), vec4<f32>(0.0f, 0.125f, 0.375f, 0.0f), vec4<f32>(0.0f, 0.0625f, -0.1875f, 0.0f), vec4<f32>(0.0f, -0.0625f, 0.1875f, 0.0f), vec4<f32>(0.0f, 0.3125f, 0.0625f, 0.0f), vec4<f32>(0.0f, -0.1875f, -0.3125f, 0.0f), vec4<f32>(0.0f, -0.3125f, 0.3125f, 0.0f), vec4<f32>(0.0f, -0.4375f, -0.0625f, 0.0f), vec4<f32>(0.0f, 0.1875f, 0.4375f, 0.0f), vec4<f32>(0.0f, 0.4375f, -0.4375f, 0.0f));

var<private> v6 : vec4<f32>;

var<private> v7 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 10u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v6 = v_2;
  x1[0u].x = v7[0u];
  x1[0u].y = v7[1u];
  x1[0u].z = v7[2u];
  x1[0u].w = v7[3u];
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb5_5.tint_symbol_3[6u].w) != 0i)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (1u < bitcast<u32>(cb2_2.tint_symbol_1[19u].x))));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    if ((bitcast<u32>(r0.x) != 0u)) {
      let v_3 = dpdx(v0.xy);
      r0 = vec4<f32>(r0.xy, v_3.xy);
      let v_4 = dpdy(v0.xy);
      r1 = vec4<f32>(v_4.xy, r1.zw);
      r1.z = bitcast<f32>((bitcast<i32>(cb2_2.tint_symbol_1[19u].x) << 16u));
      let v_5 = bitcast<u32>(r1.z);
      let v_6 = r1.z;
      r1.w = select(cb2_2.tint_symbol_1[19u].x, v_6, (v_5 != 0u));
      r2.x = bitcast<f32>((bitcast<i32>(r1.w) << 8u));
      let v_7 = bitcast<u32>(r2.x);
      let v_8 = r2.x;
      r1.w = select(r1.w, v_8, (v_7 != 0u));
      let v_9 = (bitcast<vec2<u32>>(r1.zz) != vec2<u32>());
      let v_10 = vec2<f32>(bitcast<f32>(v.tint_symbol_7[2i].x), bitcast<f32>(v.tint_symbol_7[3i].x));
      let v_11 = select(vec2<f32>(bitcast<f32>(v.tint_symbol_7[4i].x), bitcast<f32>(v.tint_symbol_7[5i].x)), v_10, v_9);
      let v_12 = r2;
      r2 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
      let v_13 = bitcast<u32>(r2.x);
      let v_14 = r2.z;
      r1.z = select(r2.y, v_14, (v_13 != 0u));
      r2.x = bitcast<f32>((bitcast<i32>(r1.w) << 4u));
      r2.y = bitcast<f32>((bitcast<i32>(r1.z) + -4i));
      let v_15 = bitcast<vec2<u32>>(r2.xx);
      let v_16 = r2.yx;
      let v_17 = select(r1.zw, v_16, (v_15 != vec2<u32>()));
      r1 = vec4<f32>(r1.xy, v_17.xy);
      r2.x = bitcast<f32>((bitcast<i32>(r1.w) << 2u));
      r2.y = bitcast<f32>((bitcast<i32>(r1.z) + -2i));
      let v_18 = bitcast<vec2<u32>>(r2.xx);
      let v_19 = r2.yx;
      let v_20 = select(r1.zw, v_19, (v_18 != vec2<u32>()));
      r1 = vec4<f32>(r1.xy, v_20.xy);
      r1.w = bitcast<f32>((bitcast<i32>(r1.w) << 1u));
      r2.x = bitcast<f32>((bitcast<i32>(r1.z) + -1i));
      let v_21 = bitcast<u32>(r1.w);
      let v_22 = r2.x;
      r1.z = select(r1.z, v_22, (v_21 != 0u));
      r1.z = bitcast<f32>((bitcast<i32>(r1.z) + -1i));
      let v_23 = bitcast<u32>(cb2_2.tint_symbol_1[19u].x);
      let v_24 = r1.z;
      r1.z = select(bitcast<f32>(v.tint_symbol_7[6i].x), v_24, (v_23 != 0u));
      let v_25 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<u32>(2u, 3u, 4u) < bitcast<vec3<u32>>(cb2_2.tint_symbol_1[19u].xxx))));
      r2 = vec4<f32>(v_25.xyz, r2.w);
      if ((bitcast<u32>(cb2_2.tint_symbol_1[19u].x) != 0u)) {
        r1.w = icb0[bitcast<i32>(r1.z)].x;
        let v_26 = (r1.xy * icb0[bitcast<i32>(r1.w)].zz);
        r3 = vec4<f32>(v_26.xy, r3.zw);
        let v_27 = fma(icb0[bitcast<i32>(r1.w)].yy, r0.zw, r3.xy);
        r3 = vec4<f32>(v_27.xy, r3.zw);
        let v_28 = (r3.xy + v0.xy);
        r3 = vec4<f32>(v_28.xy, r3.zw);
        r3 = textureSample(t0, s0, r3.xyxx.xy);
        r1.w = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
        r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1u));
      } else {
        r1.w = 0.0f;
      }
      if ((bitcast<u32>(r0.y) != 0u)) {
        r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.z)].x) + 1i));
        let v_29 = (r1.xy * icb0[bitcast<i32>(r0.y)].zz);
        r3 = vec4<f32>(v_29.xy, r3.zw);
        let v_30 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.zw, r3.xy);
        r3 = vec4<f32>(v_30.xy, r3.zw);
        let v_31 = (r3.xy + v0.xy);
        r3 = vec4<f32>(v_31.xy, r3.zw);
        r3 = textureSample(t0, s0, r3.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.w = bitcast<f32>((bitcast<i32>(r1.w) + 2i));
        let v_32 = bitcast<u32>(r0.y);
        let v_33 = r2.w;
        r1.w = select(r1.w, v_33, (v_32 != 0u));
      }
      if ((bitcast<u32>(r2.x) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_34 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 2i))].zz);
        r2 = vec4<f32>(v_34.x, r2.yz, v_34.y);
        let v_35 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 2i))].yy, r0.zw, r2.xw);
        r2 = vec4<f32>(v_35.x, r2.yz, v_35.y);
        let v_36 = (r2.xw + v0.xy);
        r2 = vec4<f32>(v_36.x, r2.yz, v_36.y);
        r3 = textureSample(t0, s0, r2.xwxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 4i));
        let v_37 = bitcast<u32>(r0.y);
        let v_38 = r2.x;
        r1.w = select(r1.w, v_38, (v_37 != 0u));
      }
      if ((bitcast<u32>(r2.y) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_39 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 3i))].zz);
        r2 = vec4<f32>(v_39.xy, r2.zw);
        let v_40 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 3i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_40.xy, r2.zw);
        let v_41 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_41.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 8i));
        let v_42 = bitcast<u32>(r0.y);
        let v_43 = r2.x;
        r1.w = select(r1.w, v_43, (v_42 != 0u));
      }
      if ((bitcast<u32>(r2.z) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_44 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].zz);
        r2 = vec4<f32>(v_44.xy, r2.zw);
        let v_45 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_45.xy, r2.zw);
        let v_46 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_46.xy, r2.zw);
        r2 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 16i));
        let v_47 = bitcast<u32>(r0.y);
        let v_48 = r2.x;
        r1.w = select(r1.w, v_48, (v_47 != 0u));
      }
      r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(5u, 6u, 7u, 8u) < bitcast<vec4<u32>>(cb2_2.tint_symbol_1[19u].xxxx))));
      if ((bitcast<u32>(r2.x) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_49 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 5i))].zz);
        r3 = vec4<f32>(v_49.xy, r3.zw);
        let v_50 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 5i))].yy, r0.zw, r3.xy);
        r3 = vec4<f32>(v_50.xy, r3.zw);
        let v_51 = (r3.xy + v0.xy);
        r3 = vec4<f32>(v_51.xy, r3.zw);
        r3 = textureSample(t0, s0, r3.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 32i));
        let v_52 = bitcast<u32>(r0.y);
        let v_53 = r2.x;
        r1.w = select(r1.w, v_53, (v_52 != 0u));
      }
      if ((bitcast<u32>(r2.y) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_54 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 6i))].zz);
        r2 = vec4<f32>(v_54.xy, r2.zw);
        let v_55 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 6i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_55.xy, r2.zw);
        let v_56 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_56.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 64i));
        let v_57 = bitcast<u32>(r0.y);
        let v_58 = r2.x;
        r1.w = select(r1.w, v_58, (v_57 != 0u));
      }
      if ((bitcast<u32>(r2.z) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_59 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 7i))].zz);
        r2 = vec4<f32>(v_59.xy, r2.zw);
        let v_60 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 7i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_60.xy, r2.zw);
        let v_61 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_61.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 128i));
        let v_62 = bitcast<u32>(r0.y);
        let v_63 = r2.x;
        r1.w = select(r1.w, v_63, (v_62 != 0u));
      }
      if ((bitcast<u32>(r2.w) != 0u)) {
        r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.z)].x) + 8i));
        let v_64 = (r1.xy * icb0[bitcast<i32>(r0.y)].zz);
        r2 = vec4<f32>(v_64.xy, r2.zw);
        let v_65 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_65.xy, r2.zw);
        let v_66 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_66.xy, r2.zw);
        r2 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 256i));
        let v_67 = bitcast<u32>(r0.y);
        let v_68 = r2.x;
        r1.w = select(r1.w, v_68, (v_67 != 0u));
      }
      r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(9u, 10u, 11u, 12u) < bitcast<vec4<u32>>(cb2_2.tint_symbol_1[19u].xxxx))));
      if ((bitcast<u32>(r2.x) != 0u)) {
        r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.z)].x) + 9i));
        let v_69 = (r1.xy * icb0[bitcast<i32>(r0.y)].zz);
        r3 = vec4<f32>(v_69.xy, r3.zw);
        let v_70 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.zw, r3.xy);
        r3 = vec4<f32>(v_70.xy, r3.zw);
        let v_71 = (r3.xy + v0.xy);
        r3 = vec4<f32>(v_71.xy, r3.zw);
        r3 = textureSample(t0, s0, r3.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 512i));
        let v_72 = bitcast<u32>(r0.y);
        let v_73 = r2.x;
        r1.w = select(r1.w, v_73, (v_72 != 0u));
      }
      if ((bitcast<u32>(r2.y) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_74 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 10i))].zz);
        r2 = vec4<f32>(v_74.xy, r2.zw);
        let v_75 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 10i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_75.xy, r2.zw);
        let v_76 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_76.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 1024i));
        let v_77 = bitcast<u32>(r0.y);
        let v_78 = r2.x;
        r1.w = select(r1.w, v_78, (v_77 != 0u));
      }
      if ((bitcast<u32>(r2.z) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_79 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 11i))].zz);
        r2 = vec4<f32>(v_79.xy, r2.zw);
        let v_80 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 11i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_80.xy, r2.zw);
        let v_81 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_81.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 2048i));
        let v_82 = bitcast<u32>(r0.y);
        let v_83 = r2.x;
        r1.w = select(r1.w, v_83, (v_82 != 0u));
      }
      if ((bitcast<u32>(r2.w) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_84 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 12i))].zz);
        r2 = vec4<f32>(v_84.xy, r2.zw);
        let v_85 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 12i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_85.xy, r2.zw);
        let v_86 = (r2.xy + v0.xy);
        r2 = vec4<f32>(v_86.xy, r2.zw);
        r2 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.z = bitcast<f32>((bitcast<i32>(r1.w) + 4096i));
        let v_87 = bitcast<u32>(r0.y);
        let v_88 = r1.z;
        r1.w = select(r1.w, v_88, (v_87 != 0u));
      }
      r0.y = bitcast<f32>(select(0u, 4294967295u, (13u < bitcast<u32>(cb2_2.tint_symbol_1[19u].x))));
      if ((bitcast<u32>(r0.y) != 0u)) {
        let v_89 = (r1.xy * vec2<f32>(-0.4375f));
        r1 = vec4<f32>(v_89.xy, r1.zw);
        let v_90 = fma(r0.zw, vec2<f32>(0.4375f), r1.xy);
        let v_91 = r0;
        r0 = vec4<f32>(v_91.x, v_90.xy, v_91.w);
        let v_92 = (r0.yz + v0.xy);
        let v_93 = r0;
        r0 = vec4<f32>(v_93.x, v_92.xy, v_93.w);
        r2 = textureSample(t0, s0, r0.yzyy.xy);
        r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r0.z = bitcast<f32>((bitcast<i32>(r1.w) + 8192i));
        let v_94 = bitcast<u32>(r0.y);
        let v_95 = r0.z;
        r1.w = select(r1.w, v_95, (v_94 != 0u));
      }
    } else {
      r1.w = 0.0f;
    }
    r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) == 0i)));
    v_96((bitcast<u32>(r0.y) != 0u));
  } else {
    if ((bitcast<u32>(r0.x) != 0u)) {
      r0.x = 1.0f;
    } else {
      r1 = textureSample(t0, s0, v0.xy.xyxx.xy);
      r0.x = (r1.w * cb2_2.tint_symbol_1[15u].x);
    }
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r0.x)));
    v_96((bitcast<u32>(r0.x) != 0u));
  }
  r0 = textureSample(t0, s0, v0.xy.xyxx.xy);
  r1 = textureSample(t4, s4, v0.xy.xyxx.xy);
  let v_97 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_97.xy, r1.zw);
  r0.z = dot(r1.xy, r1.xy);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = sqrt(abs(r0.zzzz).z);
  r1.z = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_98 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_98.xy, r1.zw);
  let v_99 = (r1.yyy * v5.xyz);
  r1 = vec4<f32>(r1.x, v_99.xyz);
  let v_100 = fma(r1.xxx, v4.xyz, r1.yzw);
  r1 = vec4<f32>(v_100.xyz, r1.w);
  let v_101 = fma(r0.zzz, v1.xyz, r1.xyz);
  r1 = vec4<f32>(v_101.xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_102 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_102.xy, r1.z, v_102.z);
  r2 = textureSample(t5, s5, v0.xy.xyxx.xy);
  let v_103 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_103.xy, r2.zw);
  r2.x = (r2.x * cb10_10.tint_symbol_5[3u].w);
  r0.y = cb13_13.tint_symbol_4[3u].x;
  r3 = textureSample(t13, s13, r0.xyxx.xy);
  r0.x = (r0.w * v3.w);
  let v_104 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  let v_105 = r0;
  r0 = vec4<f32>(v_105.x, v_104.x, v_105.z, v_104.y);
  r2.z = fma(r1.w, 0.5f, 0.5f);
  r4.x = fma(r2.z, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r4.y = (r2.z + 0.30000001192092895508f);
  let v_106 = (r0.yw * r4.xy);
  let v_107 = r0;
  r0 = vec4<f32>(v_107.x, v_106.x, v_107.z, v_106.y);
  let v_108 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_108.xyz, r3.w);
  let v_109 = -(v2.xyzx);
  let v_110 = (v_109.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_110.xyz, r4.w);
  r2.z = dot(r4.xyz, r4.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_111 = (r2.zzz * r4.xyz);
  r5 = vec4<f32>(v_111.xyz, r5.w);
  let v_112 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_113 = fma(r4.xyz, r2.zzz, v_112.xyz);
  r6 = vec4<f32>(v_113.xyz, r6.w);
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_114 = (r2.www * r6.xyz);
  r6 = vec4<f32>(v_114.xyz, r6.w);
  r2.x = clamp(r2.xxxx.x, 0.0f, 1.0f);
  let v_115 = (r0.yw * r0.yw);
  let v_116 = r0;
  r0 = vec4<f32>(v_116.x, v_115.x, v_116.z, v_115.y);
  r2.w = fma(r2.y, cb10_10.tint_symbol_5[3u].z, -500.0f);
  r2.w = max(r2.w, 0.0f);
  let v_117 = -(r2.wwww);
  r2.y = fma(r2.y, cb10_10.tint_symbol_5[3u].z, v_117.y);
  r2.w = (r2.w * 558.0f);
  r2.y = fma(r2.y, 3.0f, r2.w);
  r2.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_118 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_118.xyz, r7.w);
  let v_119 = (r7.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r8 = vec4<f32>(v_119.xyz, r8.w);
  let v_120 = fma(r7.xxx, cb6_6.tint_symbol_6[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_120.xyz, r8.w);
  let v_121 = fma(r7.zzz, cb6_6.tint_symbol_6[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_121.xyz, r8.w);
  let v_122 = fma(r8.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r9 = vec4<f32>(v_122.xyz, r9.w);
  let v_123 = &(x0[0u]);
  let v_124 = r9;
  *(v_123) = vec4<f32>(v_124.xyz, (*(v_123)).w);
  let v_125 = fma(r8.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r10 = vec4<f32>(v_125.xyz, r10.w);
  let v_126 = &(x0[1u]);
  let v_127 = r10;
  *(v_126) = vec4<f32>(v_127.xyz, (*(v_126)).w);
  let v_128 = fma(r8.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r11 = vec4<f32>(v_128.xyz, r11.w);
  let v_129 = &(x0[2u]);
  let v_130 = r11;
  *(v_129) = vec4<f32>(v_130.xyz, (*(v_129)).w);
  let v_131 = fma(r8.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r8 = vec4<f32>(v_131.xyz, r8.w);
  let v_132 = &(x0[3u]);
  let v_133 = r8;
  *(v_132) = vec4<f32>(v_133.xyz, (*(v_132)).w);
  let v_134 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_135 = r12;
  r12 = vec4<f32>(v_135.x, v_134.x, v_135.z, v_134.y);
  r3.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_136 = abs(r11.yyyy);
  r4.w = max(v_136.w, abs(r11.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_137 = (bitcast<u32>(r4.w) != 0u);
  let v_138 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_7[7i].x), v_138, v_137);
  let v_139 = abs(r10.yyyy);
  r5.w = max(v_139.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_140 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_7[8i].x), (v_140 != 0u));
  let v_141 = abs(r9.yyyy);
  r5.w = max(v_141.w, abs(r9.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_142 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_142 != 0u));
  let v_143 = x0[bitcast<i32>(r3.w)];
  r9 = vec4<f32>(v_143.xyz, r9.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.w = (r3.w + 0.5f);
  r4.w = (r4.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r3.w = dot(r10, cb6_6.tint_symbol_6[12u]);
  r5.w = dot(r10, cb6_6.tint_symbol_6[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r9.z);
  let v_144 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_144.xy, r11.z, v_144.z);
  r11.z = dpdx(r3.w);
  let v_145 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_145.xyz, r13.w);
  r13.w = dpdy(r3.w);
  let v_146 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_146.xy);
  let v_147 = -(r8.zwzz);
  let v_148 = fma(r11.xz, r13.xz, v_147.xy);
  r14 = vec4<f32>(v_148.xy, r14.zw);
  r6.w = (1.0f / r14.x);
  r7.w = (r11.z * r13.y);
  let v_149 = -(r7.wwww);
  r14.z = fma(r11.x, r13.w, v_149.z);
  let v_150 = (r6.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_150.xy);
  let v_151 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_151.xy);
  let v_152 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_152.xy);
  r3.w = fma((-(r5.wwww)).w, r8.z, r3.w);
  r3.w = fma((-(r5.wwww)).w, r8.w, r3.w);
  let v_153 = bitcast<u32>(r4.w);
  let v_154 = r3.w;
  r12.z = select(r9.z, v_154, (v_153 != 0u));
  r10.z = 0.0f;
  let v_155 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_155.xyz, r9.w);
  let v_156 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_156.xy, r12.zw);
  let v_157 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_157.xyz, r11.w);
  let v_158 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_158.xy, r12.zw);
  let v_159 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_159.xyz, r13.w);
  let v_160 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_160.xy, r12.zw);
  let v_161 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_161.xyz, r14.w);
  let v_162 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_162.xy, r12.zw);
  let v_163 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_163.xyz, r15.w);
  let v_164 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_164.xy, r12.zw);
  let v_165 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_165.xyz, r16.w);
  let v_166 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_166.xy, r12.zw);
  let v_167 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_167.xyz, r17.w);
  let v_168 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_168.xy, r12.zw);
  let v_169 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_169.xyz, r18.w);
  let v_170 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_170.xy, r12.zw);
  let v_171 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_171.xyz, r19.w);
  let v_172 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_172.xy, r12.zw);
  let v_173 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_173.xyz, r20.w);
  let v_174 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_174.xy, r12.zw);
  let v_175 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_175.xyz, r21.w);
  let v_176 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_176.xy, r12.zw);
  let v_177 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_177.xyz, r22.w);
  let v_178 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_178.xy, r12.zw);
  let v_179 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_179.xyz, r23.w);
  let v_180 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_180.xy, r12.zw);
  let v_181 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_181.xyz, r24.w);
  let v_182 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_182.xy, r12.zw);
  let v_183 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_183.xyz, r25.w);
  let v_184 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_184.xy, r12.zw);
  let v_185 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_185.xyz, r10.w);
  let v_186 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_186.xy, r9.z);
  let v_187 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_187.xy, r11.z);
  let v_188 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_188.xy, r13.z);
  let v_189 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_189.xy, r14.z);
  let v_190 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_190.xy, r15.z);
  let v_191 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_191.xy, r16.z);
  let v_192 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_192.xy, r17.z);
  let v_193 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_193.xy, r18.z);
  let v_194 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_194.xy, r19.z);
  let v_195 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_195.xy, r20.z);
  let v_196 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_196.xy, r21.z);
  let v_197 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_197.xy, r22.z);
  let v_198 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_198.xy, r23.z);
  let v_199 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_199.xy, r24.z);
  let v_200 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_200.xy, r25.z);
  let v_201 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_201.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r3.w = dot(r9, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_202 = abs(r8.yyyy);
  r4.w = max(v_202.w, abs(r8.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r4.w * r2.w);
  r2.w = fma(r3.w, 0.0625f, r2.w);
  r2.w = (r2.w * r2.w);
  r2.w = min(r2.w, 1.0f);
  r3.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_6[3u].z);
  let v_203 = -(r2.wwww);
  r2.w = fma(r3.w, v_203.w, r2.w);
  let v_204 = dot(r1.xyw, v_112.xyz);
  r3.w = clamp(vec4<f32>(v_204, v_204, v_204, v_204).w, 0.0f, 1.0f);
  let v_205 = dot(r5.xyz, r1.xyw);
  r8.x = clamp(vec4<f32>(v_205, v_205, v_205, v_205).x, 0.0f, 1.0f);
  let v_206 = dot(r6.xyz, v_112.xyz);
  r8.y = clamp(vec4<f32>(v_206, v_206, v_206, v_206).y, 0.0f, 1.0f);
  let v_207 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_207.xy, r8.zw);
  let v_208 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_208.xy);
  let v_209 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_209.xy);
  let v_210 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_210.xy, r8.zw);
  r4.w = ((-(cb10_10.tint_symbol_5[3u].yyyy)).w + 1.0f);
  let v_211 = fma(cb10_10.tint_symbol_5[3u].yy, r8.xy, r4.ww);
  r8 = vec4<f32>(v_211.xy, r8.zw);
  let v_212 = (r2.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_212.xy);
  r2.y = (r8.z * 0.125f);
  r5.w = fma((-(r2.xxxx)).w, r8.x, 1.0f);
  r6.x = dot(r1.xyw, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r8.w);
  r6.x = exp2(r6.x);
  r6.x = (r8.y * r6.x);
  r6.x = (r2.y * r6.x);
  r6.x = (r2.x * r6.x);
  r6.x = (r3.w * r6.x);
  r3.w = (r3.w * r5.w);
  let v_213 = fma(r3.xyz, r3.www, r6.xxx);
  r6 = vec4<f32>(v_213.xyz, r6.w);
  let v_214 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_214.xyz, r6.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_215 = (v_109.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_215.xyz, r8.w);
    let v_216 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_216.xyz, r9.w);
    r7.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_217 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_217.xyz, r9.w);
    let v_218 = (r9.xyz + v_109.xyz);
    r9 = vec4<f32>(v_218.xyz, r9.w);
    let v_219 = bitcast<vec3<u32>>(r6.www);
    let v_220 = r8.xyz;
    let v_221 = select(r9.xyz, v_220, (v_219 != vec3<u32>()));
    r8 = vec4<f32>(v_221.xyz, r8.w);
    r6.w = dot(r8.xyz, r8.xyz);
    let v_222 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_222.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_223 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_223.xyz, r8.w);
    r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[11u].w);
    r6.w = (r6.w / r7.w);
    let v_224 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r8.xyz, v_224.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_225 = dot(r8.xyz, r1.xyw);
    r9.x = clamp(vec4<f32>(v_225, v_225, v_225, v_225).x, 0.0f, 1.0f);
    r7.w = (r7.w * r9.x);
    r9.x = (r6.w * r7.w);
    let v_226 = (r9.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_226.xyz, r9.w);
    let v_227 = (r3.xyz * r9.xyz);
    r9 = vec4<f32>(v_227.xyz, r9.w);
    let v_228 = fma(r4.xyz, r2.zzz, r8.xyz);
    r8 = vec4<f32>(v_228.xyz, r8.w);
    r9.w = dot(r8.xyz, r8.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_229 = (r8.xyz * r9.www);
    r8 = vec4<f32>(v_229.xyz, r8.w);
    let v_230 = dot(r8.xyz, r5.xyz);
    r9.w = clamp(vec4<f32>(v_230, v_230, v_230, v_230).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.x = (r9.w * r9.w);
    r10.x = (r10.x * r10.x);
    r9.w = (r9.w * r10.x);
    r9.w = fma(cb10_10.tint_symbol_5[3u].y, r9.w, r4.w);
    let v_231 = dot(r8.xyz, r1.xyw);
    r8.x = clamp(vec4<f32>(v_231, v_231, v_231, v_231).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.w);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.w);
    r7.w = (r7.w * r8.x);
    r6.w = (r6.w * r7.w);
    r6.w = (r2.y * r6.w);
    let v_232 = (r6.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_232.xyz, r8.w);
  }
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    let v_233 = bitcast<u32>(r7.w);
    let v_234 = r6.w;
    r3.w = select(r3.w, v_234, (v_233 != 0u));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_235 = (v_109.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_235.xyz, r10.w);
      let v_236 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_236.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_237 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_237.xyz, r11.w);
      let v_238 = (r11.xyz + v_109.xyz);
      r11 = vec4<f32>(v_238.xyz, r11.w);
      let v_239 = bitcast<vec3<u32>>(r6.www);
      let v_240 = r10.xyz;
      let v_241 = select(r11.xyz, v_240, (v_239 != vec3<u32>()));
      r10 = vec4<f32>(v_241.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_242 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_242.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_243 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_243.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[12u].w);
      r6.w = (r6.w / r7.w);
      let v_244 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r10.xyz, v_244.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_245 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_245, v_245, v_245, v_245).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_246 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_246.xyz, r11.w);
      let v_247 = fma(r11.xyz, r3.xyz, r9.xyz);
      r9 = vec4<f32>(v_247.xyz, r9.w);
      let v_248 = fma(r4.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_248.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_249 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_249.xyz, r10.w);
      let v_250 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_250, v_250, v_250, v_250).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb10_10.tint_symbol_5[3u].y, r9.w, r4.w);
      let v_251 = dot(r10.xyz, r1.xyw);
      r10.x = clamp(vec4<f32>(v_251, v_251, v_251, v_251).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r2.y * r6.w);
      let v_252 = fma(r6.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_252.xyz, r8.w);
    }
  } else {
    r3.w = bitcast<f32>(v.tint_symbol_7[9i].x);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_7[9i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_253 = (v_109.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_253.xyz, r10.w);
      let v_254 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_254.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_255 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_255.xyz, r11.w);
      let v_256 = (r11.xyz + v_109.xyz);
      r11 = vec4<f32>(v_256.xyz, r11.w);
      let v_257 = bitcast<vec3<u32>>(r6.www);
      let v_258 = r10.xyz;
      let v_259 = select(r11.xyz, v_258, (v_257 != vec3<u32>()));
      r10 = vec4<f32>(v_259.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_260 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_260.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_261 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_261.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[13u].w);
      r6.w = (r6.w / r7.w);
      let v_262 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r10.xyz, v_262.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_263 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_263, v_263, v_263, v_263).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_264 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_264.xyz, r11.w);
      let v_265 = fma(r11.xyz, r3.xyz, r9.xyz);
      r9 = vec4<f32>(v_265.xyz, r9.w);
      let v_266 = fma(r4.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_266.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_267 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_267.xyz, r10.w);
      let v_268 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_268, v_268, v_268, v_268).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb10_10.tint_symbol_5[3u].y, r9.w, r4.w);
      let v_269 = dot(r10.xyz, r1.xyw);
      r10.x = clamp(vec4<f32>(v_269, v_269, v_269, v_269).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r2.y * r6.w);
      let v_270 = fma(r6.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_270.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_271 = (v_109.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_271.xyz, r10.w);
      let v_272 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_272.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[22u].w);
      let v_273 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_273.xyz, r11.w);
      let v_274 = (r11.xyz + v_109.xyz);
      r11 = vec4<f32>(v_274.xyz, r11.w);
      let v_275 = bitcast<vec3<u32>>(r3.www);
      let v_276 = r10.xyz;
      let v_277 = select(r11.xyz, v_276, (v_275 != vec3<u32>()));
      r10 = vec4<f32>(v_277.xyz, r10.w);
      r3.w = dot(r10.xyz, r10.xyz);
      let v_278 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_278.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_279 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_279.xyz, r10.w);
      r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r3.w, cb3_3.tint_symbol_2[14u].w);
      r3.w = (r3.w / r6.w);
      let v_280 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.w = dot(r10.xyz, v_280.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_281 = dot(r10.xyz, r1.xyw);
      r7.w = clamp(vec4<f32>(v_281, v_281, v_281, v_281).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r3.w * r6.w);
      let v_282 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_282.xyz, r11.w);
      let v_283 = fma(r11.xyz, r3.xyz, r9.xyz);
      r9 = vec4<f32>(v_283.xyz, r9.w);
      let v_284 = fma(r4.xyz, r2.zzz, r10.xyz);
      r4 = vec4<f32>(v_284.xyz, r4.w);
      r2.z = dot(r4.xyz, r4.xyz);
      r2.z = inverseSqrt(r2.z);
      let v_285 = (r2.zzz * r4.xyz);
      r4 = vec4<f32>(v_285.xyz, r4.w);
      let v_286 = dot(r4.xyz, r5.xyz);
      r2.z = clamp(vec4<f32>(v_286, v_286, v_286, v_286).z, 0.0f, 1.0f);
      r2.z = ((-(r2.zzzz)).z + 1.0f);
      r5.x = (r2.z * r2.z);
      r5.x = (r5.x * r5.x);
      r2.z = (r2.z * r5.x);
      r2.z = fma(cb10_10.tint_symbol_5[3u].y, r2.z, r4.w);
      let v_287 = dot(r4.xyz, r1.xyw);
      r4.x = clamp(vec4<f32>(v_287, v_287, v_287, v_287).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r8.w);
      r4.x = exp2(r4.x);
      r2.z = (r2.z * r4.x);
      r2.z = (r6.w * r2.z);
      r2.z = (r3.w * r2.z);
      r2.y = (r2.y * r2.z);
      let v_288 = fma(r2.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_288.xyz, r8.w);
    }
  }
  r2.y = (r5.w * r5.w);
  r2.x = (r2.x * r2.x);
  let v_289 = (r8.xyz * r2.xxx);
  r4 = vec4<f32>(v_289.xyz, r4.w);
  let v_290 = fma(r2.yyy, r9.xyz, r4.xyz);
  r2 = vec4<f32>(v_290.xyz, r2.w);
  let v_291 = fma(r6.xyz, r2.www, r2.xyz);
  r2 = vec4<f32>(v_291.xyz, r2.w);
  r0.z = fma(r1.z, r0.z, cb3_3.tint_symbol_2[43u].w);
  r0.z = (r0.z * cb3_3.tint_symbol_2[44u].w);
  r0.z = max(r0.z, 0.0f);
  let v_292 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_292.xyz, r4.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_293 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_293.xyz, r5.w);
  let v_294 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_294.xyz, r5.w);
  let v_295 = fma(r4.xyz, r1.zzz, r5.xyz);
  r4 = vec4<f32>(v_295.xyz, r4.w);
  let v_296 = (r0.www * r4.xyz);
  r4 = vec4<f32>(v_296.xyz, r4.w);
  let v_297 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_297.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_298 = dot(r6.xyz, r1.xyw);
  r0.z = clamp(vec4<f32>(v_298, v_298, v_298, v_298).z, 0.0f, 1.0f);
  let v_299 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.zzz, r5.xyz);
  r1 = vec4<f32>(v_299.xyz, r1.w);
  let v_300 = fma(r1.xyz, r0.yyy, r4.xyz);
  r0 = vec4<f32>(r0.x, v_300.xyz);
  let v_301 = (r5.www * r0.yzw);
  r0 = vec4<f32>(r0.x, v_301.xyz);
  let v_302 = fma(r0.yzw, r3.xyz, r2.xyz);
  r0 = vec4<f32>(r0.x, v_302.xyz);
  o0.w = (r0.x * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.x = dot(r7.xyz, r7.xyz);
    r1.x = sqrt(r0.x);
    let v_303 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_303.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r7.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_304 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_304 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.x = inverseSqrt(r0.x);
    let v_305 = (r0.xxx * r7.xyz);
    r2 = vec4<f32>(v_305.xyz, r2.w);
    let v_306 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.x = clamp(vec4<f32>(v_306, v_306, v_306, v_306).x, 0.0f, 1.0f);
    r0.x = log2(r0.x);
    r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
    r0.x = exp2(r0.x);
    let v_307 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_307, v_307, v_307, v_307).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_308 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_308.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_309 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_309.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_310 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_310.xyz, r2.w);
    let v_311 = fma(r0.xxx, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_311.xyz, r2.w);
    let v_312 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_312.xyz, r3.w);
    let v_313 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_313.xyz, r2.w);
    let v_314 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_315 = (r2.xyz + v_314.xyz);
    r2 = vec4<f32>(v_315.xyz, r2.w);
    let v_316 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_316.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_317 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_317.xyz, r3.w);
    let v_318 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_318.xy, r1.z, v_318.z);
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.x) != 0u)) {
      let v_319 = (v6.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_319.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.x = (r2.x + -1.0f);
      r0.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r0.x = 1.0f;
    }
    let v_320 = -(r0.yzyw);
    let v_321 = fma(r1.xyw, r0.xxx, v_320.xyw);
    r1 = vec4<f32>(v_321.xy, r1.z, v_321.z);
    let v_322 = fma(r1.zzz, r1.xyw, r0.yzw);
    r1 = vec4<f32>(v_322.xyz, r1.w);
  } else {
    r0.x = dot(r7.xyz, r7.xyz);
    r1.w = sqrt(r0.x);
    let v_323 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_323.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r7.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_324 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_324 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.x = inverseSqrt(r0.x);
    let v_325 = (r0.xxx * r7.xyz);
    r3 = vec4<f32>(v_325.xyz, r3.w);
    let v_326 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.x = clamp(vec4<f32>(v_326, v_326, v_326, v_326).x, 0.0f, 1.0f);
    r0.x = log2(r0.x);
    r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
    r0.x = exp2(r0.x);
    let v_327 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_327, v_327, v_327, v_327).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_328 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_328.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_329 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_329.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_330 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_330.xyz, r3.w);
    let v_331 = fma(r0.xxx, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_331.xyz, r3.w);
    let v_332 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_332.xyz, r4.w);
    let v_333 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_333.xyz, r3.w);
    let v_334 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_335 = (r3.xyz + v_334.xyz);
    r3 = vec4<f32>(v_335.xyz, r3.w);
    let v_336 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_336.x, r2.y, v_336.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_337 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_337.xyz, r3.w);
    let v_338 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_338.x, r2.y, v_338.yz);
    let v_339 = ((-(r0.yyzw)).xzw + r2.xzw);
    r2 = vec4<f32>(v_339.x, r2.y, v_339.yz);
    let v_340 = fma(r2.yyy, r2.xzw, r0.yzw);
    r1 = vec4<f32>(v_340.xyz, r1.w);
  }
  let v_341 = (r1.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_341.xyz, r0.w);
  let v_342 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_342.xyz, o0.w);
}

fn v_96(v_343 : bool) {
  if (v_343) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @builtin(position) v_344 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v_344);
  return o0;
}
