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

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 8u> = array<vec4<f32>, 8u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 0.80000001192092895508f), vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), vec4<f32>(0.0f, 0.0f, 0.0f, 0.10000000149011611938f), vec4<f32>());

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v_1 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  let v_3 = max(v0.xy, vec2<f32>());
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(v_3), vec2<u32>(4294967295u), (v_3 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1u)));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) << 1u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) + bitcast<i32>(r0.y)));
  r0.x = dot(cb2_2.tint_symbol[0u], icb0[bitcast<i32>(r0.x)]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  v_6((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t0, s0, v1.zwzz.xy);
  r0.w = dot(v7.xyz, v7.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_7 = (r0.www * v7.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r0.w = dot(v3.xyz, v3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_8 = (r0.www * v3.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r0.w = dot(r1.xyz, r2.xyz);
  let v_9 = clamp(v8.xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r2.x = ((-(r1.xxxx)).x + 1.0f);
  let v_10 = -(cb2_2.tint_symbol[3u].xxxx);
  r2.y = (v5.w + v_10.y);
  r2.w = clamp(((r2.yyyy / cb2_2.tint_symbol[3u].yyyy)).w, 0.0f, 1.0f);
  r3.x = ((-(cb2_2.tint_symbol[3u].wwww)).x + cb2_2.tint_symbol[3u].z);
  r3.x = fma(abs(r0.wwww).x, r3.x, cb2_2.tint_symbol[3u].w);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb2_2.tint_symbol[2u].zxwy == vec4<f32>(1.0f))));
  if ((bitcast<u32>(r4.x) != 0u)) {
    r3.y = (v_10.y + cb2_2.tint_symbol[3u].y);
    r3.z = (r3.y * 0.34999999403953552246f);
    let v_11 = -(cb2_2.tint_symbol[3u].yyyy);
    r2.y = (r2.y + v_11.y);
    r2.y = fma(r3.y, 0.34999999403953552246f, r2.y);
    r2.y = clamp(((r2.yyyy / r3.zzzz)).y, 0.0f, 1.0f);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r2.x = (r2.y * r2.x);
    r2.y = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 1.0f))));
    if ((bitcast<u32>(r2.y) != 0u)) {
      r2.y = (r2.w * 5.0f);
      let v_12 = r2.y;
      let v_13 = max(v_12, -2147483648.0f);
      r3.y = bitcast<f32>(select(select(i32(v_13), 2147483647i, (v_13 >= 2147483648.0f)), 0i, !((v_12 == v_12))));
      r3.y = bitcast<f32>(min(bitcast<i32>(r3.y), 4i));
      r3.z = bitcast<f32>((bitcast<i32>(r3.y) + 1i));
      r3.z = bitcast<f32>(min(bitcast<i32>(r3.z), 4i));
      r2.y = trunc(r2.y);
      let v_14 = -(r2.yyyy);
      r2.y = fma(r2.w, 5.0f, v_14.y);
      r3.z = ((-(icb0[bitcast<u32>((bitcast<i32>(r3.y) + 3i))].wwww)).z + icb0[bitcast<u32>((bitcast<i32>(r3.z) + 3i))].w);
      r2.y = fma(r2.y, r3.z, icb0[bitcast<u32>((bitcast<i32>(r3.y) + 3i))].w);
    } else {
      r2.y = 0.0f;
    }
    r3.x = (r2.y * r3.x);
  }
  r2.y = clamp(((r3.xxxx + vec4<f32>(-1.0f))).y, 0.0f, 1.0f);
  r0.w = (abs(r0.wwww).w * 4.0f);
  r0.w = min(r0.w, 1.0f);
  r0.w = (r0.w * r2.y);
  r5.x = (r0.w * r2.x);
  let v_15 = r3.x;
  let v_16 = max(v_15, -2147483648.0f);
  r0.w = bitcast<f32>(select(select(i32(v_16), 2147483647i, (v_16 >= 2147483648.0f)), 0i, !((v_15 == v_15))));
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(r0.w))));
  r2.x = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r2.x)));
  if ((bitcast<u32>(r2.x) != 0u)) {
    r3 = vec4<f32>(r3.x, vec3<f32>(0.0f, 0.0f, 1.0f));
  } else {
    r2.x = (r5.x * cb2_2.tint_symbol[1u].x);
    r2.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.x)));
    if ((bitcast<u32>(r2.y) != 0u)) {
      let v_17 = ((-(r0.xxyz)).yzw + vec3<f32>(1.0f));
      r3 = vec4<f32>(r3.x, v_17.xyz);
      r2.y = (r3.z * r3.y);
      r3.z = (r3.w * r2.y);
      r2.y = (r0.z * r2.y);
      r3.y = (r0.y * r3.y);
      r3.w = (r3.w * r3.y);
      r3.y = (r0.z * r3.y);
      let v_18 = (r2.yy * cb12_12.tint_symbol_3[1u].zw);
      r4 = vec4<f32>(v_18.xy, r4.zw);
      let v_19 = fma(cb12_12.tint_symbol_3[1u].xy, r3.zz, r4.xy);
      r4 = vec4<f32>(v_19.xy, r4.zw);
      let v_20 = fma(cb12_12.tint_symbol_3[2u].xy, r3.ww, r4.xy);
      r4 = vec4<f32>(v_20.xy, r4.zw);
      let v_21 = fma(cb12_12.tint_symbol_3[2u].zw, r3.yy, r4.xy);
      r4 = vec4<f32>(v_21.xy, r4.zw);
      r4.x = (r2.x * r4.x);
      r6.x = bitcast<f32>(select(0u, 4294967295u, !((r4.x == 0.0f))));
      if ((bitcast<u32>(r6.x) != 0u)) {
        r6.x = dot(v5.xyz, v7.xyz);
        r6.y = dot(v6.xyz, v7.xyz);
        r6.z = dot(v3.xyz, v7.xyz);
        r6.w = max(v8.y, 0.10000000149011611938f);
        r6.w = min(r6.w, 1.0f);
        r6.w = ((-(r6.wwww)).w + 1.0f);
        r7.x = dot(v5.xyz, cb3_3.tint_symbol_1[0u].xyz);
        r7.y = dot(v6.xyz, cb3_3.tint_symbol_1[0u].xyz);
        r7.z = dot(v3.xyz, cb3_3.tint_symbol_1[0u].xyz);
        r7.w = dot(r7.xyz, r7.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_22 = (r7.www * r7.xyz);
        r7 = vec4<f32>(v_22.xyz, r7.w);
        r7.w = dot(v3.xyz, r7.xyz);
        r7.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r7.w)));
        r8.x = trunc(r3.x);
        r8.x = (1.0f / r8.x);
        r8.y = dot(r6.xyz, r6.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_23 = (r6.xyz * r8.yyy);
        r6 = vec4<f32>(v_23.xyz, r6.w);
        r6.z = max(r6.z, r6.w);
        let v_24 = ((-(r6.xxyx)).yz / r6.zz);
        let v_25 = r8;
        r8 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
        let v_26 = (r4.xx * r8.yz);
        let v_27 = r8;
        r8 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
        let v_28 = (r6.xy / r6.zz);
        r6 = vec4<f32>(v_28.xy, r6.zw);
        let v_29 = (r4.yy * r6.xy);
        r6 = vec4<f32>(v_29.xy, r6.zw);
        let v_30 = (r2.xx * r6.xy);
        r6 = vec4<f32>(v_30.xy, r6.zw);
        r9 = textureSampleLevel(t5, s5, v1.xyxx.xy, 0.0f);
        r10 = textureSampleLevel(t8, s8, v1.xyxx.xy, 0.0f);
        r2.x = (r2.y * r10.x);
        r2.x = fma(r9.x, r3.z, r2.x);
        r9 = textureSampleLevel(t11, s11, v1.xyxx.xy, 0.0f);
        r2.x = fma(r9.x, r3.w, r2.x);
        r9 = textureSampleLevel(t14, s14, v1.xyxx.xy, 0.0f);
        r2.x = fma(r9.x, r3.y, r2.x);
        r2.x = (r2.x + 0.00000099999999747524f);
        let v_31 = r6;
        r6 = vec4<f32>(r6.xy, v_31.xy);
        r4.y = 1.0f;
        r8.w = 1.0f;
        let v_32 = r2;
        r9 = vec4<f32>(v_32.xx, r9.zw);
        r9.z = 0.0f;
        loop {
          r9.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r9.z) >= bitcast<i32>(r0.w))));
          if ((bitcast<u32>(r9.w) != 0u)) {
            break;
          }
          r9.w = bitcast<f32>(select(0u, 4294967295u, (r9.x < r4.y)));
          if ((bitcast<u32>(r9.w) != 0u)) {
            r9.w = ((-(r8.xxxx)).w + r4.y);
            let v_33 = fma(r8.yz, r8.xx, r6.zw);
            r6 = vec4<f32>(r6.xy, v_33.xy);
            let v_34 = (r6.zw + v1.xy);
            r10 = vec4<f32>(v_34.xy, r10.zw);
            r11 = textureSampleLevel(t5, s5, r10.xyxx.xy, 0.0f);
            r12 = textureSampleLevel(t8, s8, r10.xyxx.xy, 0.0f);
            r10.z = (r2.y * r12.x);
            r10.z = fma(r11.x, r3.z, r10.z);
            r11 = textureSampleLevel(t11, s11, r10.xyxx.xy, 0.0f);
            r10.z = fma(r11.x, r3.w, r10.z);
            r11 = textureSampleLevel(t14, s14, r10.xyxx.xy, 0.0f);
            r10.x = fma(r11.x, r3.y, r10.z);
            r8.w = r4.y;
            let v_35 = r9;
            let v_36 = r9;
            r9 = vec4<f32>(v_36.x, v_35.xz, v_36.w);
            r4.y = r9.w;
            r9.x = r10.x;
          } else {
            r9.z = r0.w;
          }
          r9.z = bitcast<f32>((bitcast<i32>(r9.z) + 1i));
        }
        let v_37 = -(r9.xxxx);
        r0.w = (r4.y + v_37.w);
        let v_38 = -(r9.yyyy);
        r6.z = (r8.w + v_38.z);
        r6.w = ((-(r0.wwww)).w + r6.z);
        r8.x = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 0.0f))));
        r0.w = (r0.w * r8.w);
        let v_39 = -(r0.wwww);
        r0.w = fma(r4.y, r6.z, v_39.w);
        r0.w = (r0.w / r6.w);
        r0.w = ((-(r0.wwww)).w + 1.0f);
        r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r8.x)));
        let v_40 = fma(r8.yz, r0.ww, r6.xy);
        r6 = vec4<f32>(v_40.xy, r6.zw);
        r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[0u].w)));
        r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r7.w)));
        if ((bitcast<u32>(r0.w) != 0u)) {
          let v_41 = (r7.xy / r7.zz);
          r7 = vec4<f32>(v_41.xy, r7.zw);
          let v_42 = (r4.xx * r7.xy);
          r4 = vec4<f32>(v_42.xy, r4.zw);
          r0.w = 0.0f;
          r6.w = 0.0f;
          loop {
            r7.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r6.w) >= 7i)));
            if ((bitcast<u32>(r7.x) != 0u)) {
              break;
            }
            r7.x = f32(bitcast<i32>(r6.w));
            r7.x = fma((-(r7.xxxx)).x, 0.14285714924335479736f, 1.0f);
            let v_43 = fma(r4.xy, r7.xx, v1.xy);
            let v_44 = r7;
            r7 = vec4<f32>(v_44.x, v_43.xy, v_44.w);
            r8 = textureSampleLevel(t5, s5, r7.yzyy.xy, 0.0f);
            r9 = textureSampleLevel(t8, s8, r7.yzyy.xy, 0.0f);
            r7.w = (r2.y * r9.x);
            r7.w = fma(r8.x, r3.z, r7.w);
            r8 = textureSampleLevel(t11, s11, r7.yzyy.xy, 0.0f);
            r7.w = fma(r8.x, r3.w, r7.w);
            r8 = textureSampleLevel(t14, s14, r7.yzyy.xy, 0.0f);
            r7.y = fma(r8.x, r3.y, r7.w);
            r7.y = ((-(r2.xxxx)).y + r7.y);
            r7.x = ((-(r7.xxxx)).x + r7.y);
            r6.w = bitcast<f32>((bitcast<i32>(r6.w) + 1i));
            r7.y = f32(bitcast<i32>(r6.w));
            r7.x = (r7.y * r7.x);
            r0.w = max(r0.w, r7.x);
          }
          r0.w = min(r0.w, 1.0f);
          r6.z = fma((-(r0.wwww)).z, cb12_12.tint_symbol_3[0u].w, 1.0f);
        } else {
          r6.z = 1.0f;
        }
      } else {
        r6 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r6.w);
      }
      r0.w = bitcast<f32>(v.tint_symbol_4[0i].x);
    } else {
      r6 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r6.w);
      r0.w = 0.0f;
    }
    let v_45 = bitcast<vec3<u32>>(r0.www);
    let v_46 = select(vec3<f32>(0.0f, 0.0f, 1.0f), r6.xyz, (v_45 != vec3<u32>()));
    r3 = vec4<f32>(r3.x, v_46.xyz);
  }
  let v_47 = (r3.yz + v1.xy);
  r2 = vec4<f32>(v_47.xy, r2.zw);
  let v_48 = clamp(r0.xyzx.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r6 = vec4<f32>(v_48.xyz, r6.w);
  let v_49 = ((-(r6.xyzx)).xyz + vec3<f32>(1.0f));
  r7 = vec4<f32>(v_49.xyz, r7.w);
  r0.w = (r7.y * r7.x);
  r3.y = (r7.z * r0.w);
  r0.w = (r6.z * r0.w);
  r3.z = (r6.y * r7.x);
  r4.x = (r7.z * r3.z);
  r3.z = (r6.z * r3.z);
  r6 = textureSample(t3, s3, r2.xyxx.xy);
  r7 = textureSample(t6, s6, r2.xyxx.xy);
  let v_50 = (r0.www * r7.xyz);
  r7 = vec4<f32>(v_50.xyz, r7.w);
  let v_51 = fma(r6.xyz, r3.yyy, r7.xyz);
  r6 = vec4<f32>(v_51.xyz, r6.w);
  r7 = textureSample(t9, s9, r2.xyxx.xy);
  let v_52 = fma(r7.xyz, r4.xxx, r6.xyz);
  r6 = vec4<f32>(v_52.xyz, r6.w);
  r7 = textureSample(t12, s12, r2.xyxx.xy);
  let v_53 = fma(r7.xyz, r3.zzz, r6.xyz);
  r6 = vec4<f32>(v_53.xyz, r6.w);
  let v_54 = ((-(r0.xyzx)).xyz + vec3<f32>(1.0f));
  r7 = vec4<f32>(v_54.xyz, r7.w);
  r0.x = (r7.y * r7.x);
  r0.w = (r7.z * r0.x);
  r0.y = (r0.y * r7.x);
  r3.y = (r7.z * r0.y);
  let v_55 = (r0.zz * r0.xy);
  r0 = vec4<f32>(v_55.xy, r0.zw);
  r7 = textureSample(t4, s4, r2.xyxx.xy);
  r8 = textureSample(t7, s7, r2.xyxx.xy);
  let v_56 = (r0.xx * r8.xy);
  r4 = vec4<f32>(v_56.xy, r4.zw);
  let v_57 = fma(r7.xy, r0.ww, r4.xy);
  r4 = vec4<f32>(v_57.xy, r4.zw);
  r7 = textureSample(t10, s10, r2.xyxx.xy);
  let v_58 = fma(r7.xy, r3.yy, r4.xy);
  r4 = vec4<f32>(v_58.xy, r4.zw);
  r7 = textureSample(t13, s13, r2.xyxx.xy);
  let v_59 = fma(r7.xy, r0.yy, r4.xy);
  r2 = vec4<f32>(v_59.xy, r2.zw);
  let v_60 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_60.xy, r2.zw);
  r0.z = dot(r2.xy, r2.xy);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = sqrt(abs(r0.zzzz).z);
  r3.z = max(cb12_12.tint_symbol_3[0u].z, 0.00100000004749745131f);
  let v_61 = (r2.xy * r3.zz);
  r2 = vec4<f32>(v_61.xy, r2.zw);
  let v_62 = (r2.yyy * v6.xyz);
  r7 = vec4<f32>(v_62.xyz, r7.w);
  let v_63 = fma(r2.xxx, v5.xyz, r7.xyz);
  r7 = vec4<f32>(v_63.xyz, r7.w);
  let v_64 = fma(r0.zzz, v3.xyz, r7.xyz);
  r7 = vec4<f32>(v_64.xyz, r7.w);
  r0.z = dot(r7.xyz, r7.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_65 = (r0.zzz * r7.xyz);
  r7 = vec4<f32>(v_65.xy, r7.z, v_65.z);
  r0.x = (r0.x * cb12_12.tint_symbol_3[4u].y);
  r0.x = fma(cb12_12.tint_symbol_3[4u].x, r0.w, r0.x);
  r0.x = fma(cb12_12.tint_symbol_3[4u].z, r3.y, r0.x);
  r0.x = fma(cb12_12.tint_symbol_3[4u].w, r0.y, r0.x);
  let v_66 = (r6.xyz * v2.xyz);
  r8 = vec4<f32>(v_66.xyz, r8.w);
  r0.y = (cb12_12.tint_symbol_3[0u].y * cb12_12.tint_symbol_3[0u].y);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < 1.0f)));
  r5.y = (r3.x / cb2_2.tint_symbol[3u].w);
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r8.w = 1.0f;
  let v_67 = bitcast<vec4<u32>>(r0.wwww);
  let v_68 = r5;
  r5 = select(r8, v_68, (v_67 != vec4<u32>()));
  let v_69 = bitcast<vec4<u32>>(r4.zzzz);
  let v_70 = r5;
  r5 = select(r8, v_70, (v_69 != vec4<u32>()));
  r1.z = ((-(r1.yyyy)).z + 1.0f);
  r1.w = 0.0f;
  let v_71 = bitcast<vec3<u32>>(r4.www);
  let v_72 = r1.xzw;
  let v_73 = select(r5.xyz, v_72, (v_71 != vec3<u32>()));
  r1 = vec4<f32>(v_73.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r2.w == 1.0f)));
  r1.w = dot(r6.xyz, vec3<f32>(1.27499997615814208984f, 4.29239988327026367188f, 0.4325999915599822998f));
  r1.w = ((-(r1.wwww)).w + 0.5f);
  r1.w = clamp(((-(r1.wwww) + v3.wwww)).w, 0.0f, 1.0f);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0.80000001192092895508f < r2.w)));
  r2.y = (r2.w + -0.80000001192092895508f);
  r2.y = (r2.y * 5.0f);
  r2.w = ((-(r3.wwww)).w + r1.w);
  r2.y = fma(r2.y, r2.w, r3.w);
  let v_74 = bitcast<u32>(r2.x);
  let v_75 = r2.y;
  r2.x = select(r3.w, v_75, (v_74 != 0u));
  let v_76 = bitcast<u32>(r0.w);
  let v_77 = r1.w;
  o2.w = select(r2.x, v_77, (v_76 != 0u));
  r0.w = clamp(fma(r2.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  o0.w = (r5.w * cb2_2.tint_symbol[15u].x);
  let v_78 = fma(r7.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_78.xyz, o1.w);
  r1.w = (r0.x + -0.10000000149011611938f);
  r1.w = clamp(((r1.wwww * vec4<f32>(10.0f))).w, 0.0f, 1.0f);
  o1.w = (r0.w * r1.w);
  r0.w = (cb12_12.tint_symbol_3[0u].x * 0.001953125f);
  r2.x = (v4.x + cb3_3.tint_symbol_1[45u].w);
  r2.y = v4.y;
  let v_79 = (r2.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_79.xy, r2.zw);
  let v_80 = sqrt(r2.xy);
  o3 = vec4<f32>(v_80.xy, o3.zw);
  r0.z = fma(r7.z, r0.z, -0.34999999403953552246f);
  r0.z = clamp(((r0.zzzz * vec4<f32>(1.53846156597137451172f))).z, 0.0f, 1.0f);
  r0.z = (r0.z * cb5_5.tint_symbol_2[3u].z);
  r1.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r0.z = (r0.z * r1.w);
  r0.z = (r0.z * v4.x);
  r1.w = fma((-(r0.yyyy)).w, 0.5f, 1.0f);
  r1.w = (r0.z * r1.w);
  r2.x = ((-(r0.xxxx)).x + 1.0f);
  r1.w = (r1.w * r2.x);
  r0.x = (r0.x * r0.z);
  r0.z = fma(r1.w, -0.5f, 1.0f);
  let v_81 = (r0.zzz * r1.xyz);
  o0 = vec4<f32>(v_81.xyz, o0.w);
  let v_82 = (-(r0.ywyy)).xy;
  r1 = vec4<f32>(v_82.xy, r1.zw);
  let v_83 = (r1.xy + vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_83.xy, r1.zw);
  let v_84 = max(r1.xy, vec2<f32>());
  r1 = vec4<f32>(v_84.xy, r1.zw);
  r2.x = fma(r1.x, r0.x, r0.y);
  r2.y = fma(r1.y, r0.x, r0.w);
  o2.z = 0.98000001907348632812f;
  let v_85 = sqrt(r2.xy);
  o2 = vec4<f32>(v_85.xy, o2.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_6(v_86 : bool) {
  if (v_86) {
    discard;
    return;
  }
}

struct tint_symbol_6 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@fragment
fn main(@builtin(position) v_87 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v_87, v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_6(o0, o1, o2, o3);
}
