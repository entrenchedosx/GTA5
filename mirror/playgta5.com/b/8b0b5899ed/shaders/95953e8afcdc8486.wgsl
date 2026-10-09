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

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb6_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

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

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

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

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

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
  r0.x = (v2.y + v2.x);
  r0.x = (r0.x + v2.z);
  r0.w = clamp(((-(r0.xxxx) + vec4<f32>(1.0f))).w, 0.0f, 1.0f);
  r1.x = dot(v8.xyz, v8.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_7 = (r1.xxx * v8.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_8 = (r1.www * v4.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r1.x = dot(r1.xyz, r2.xyz);
  let v_9 = -(cb2_2.tint_symbol[3u].xxxx);
  r1.y = (v1.z + v_9.y);
  r1.z = clamp(((r1.yyyy / cb2_2.tint_symbol[3u].yyyy)).z, 0.0f, 1.0f);
  r1.w = ((-(cb2_2.tint_symbol[3u].wwww)).w + cb2_2.tint_symbol[3u].z);
  r1.w = fma(abs(r1.xxxx).w, r1.w, cb2_2.tint_symbol[3u].w);
  let v_10 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (cb2_2.tint_symbol[2u].zxw == vec3<f32>(1.0f))));
  r2 = vec4<f32>(v_10.xy, r2.z, v_10.z);
  if ((bitcast<u32>(r2.x) != 0u)) {
    r2.x = (v_9.x + cb2_2.tint_symbol[3u].y);
    r3.x = (r2.x * 0.34999999403953552246f);
    let v_11 = -(cb2_2.tint_symbol[3u].yyyy);
    r1.y = (r1.y + v_11.y);
    r1.y = fma(r2.x, 0.34999999403953552246f, r1.y);
    r1.y = clamp(((r1.yyyy / r3.xxxx)).y, 0.0f, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r2.x = bitcast<f32>(select(0u, 4294967295u, !((r1.z == 1.0f))));
    if ((bitcast<u32>(r2.x) != 0u)) {
      r2.x = (r1.z * 5.0f);
      let v_12 = r2.x;
      let v_13 = max(v_12, -2147483648.0f);
      r3.x = bitcast<f32>(select(select(i32(v_13), 2147483647i, (v_13 >= 2147483648.0f)), 0i, !((v_12 == v_12))));
      r3.x = bitcast<f32>(min(bitcast<i32>(r3.x), 4i));
      r3.y = bitcast<f32>((bitcast<i32>(r3.x) + 1i));
      r3.y = bitcast<f32>(min(bitcast<i32>(r3.y), 4i));
      r2.x = trunc(r2.x);
      let v_14 = -(r2.xxxx);
      r2.x = fma(r1.z, 5.0f, v_14.x);
      r3.y = ((-(icb0[bitcast<u32>((bitcast<i32>(r3.x) + 3i))].wwww)).y + icb0[bitcast<u32>((bitcast<i32>(r3.y) + 3i))].w);
      r2.x = fma(r2.x, r3.y, icb0[bitcast<u32>((bitcast<i32>(r3.x) + 3i))].w);
    } else {
      r2.x = 0.0f;
    }
    r1.w = (r1.w * r2.x);
  } else {
    r1.y = 1.0f;
  }
  r2.x = clamp(((r1.wwww + vec4<f32>(-1.0f))).x, 0.0f, 1.0f);
  r1.x = (abs(r1.xxxx).x * 4.0f);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * r2.x);
  r3.x = (r1.x * r1.y);
  let v_15 = r1.w;
  let v_16 = max(v_15, -2147483648.0f);
  r1.x = bitcast<f32>(select(select(i32(v_16), 2147483647i, (v_16 >= 2147483648.0f)), 0i, !((v_15 == v_15))));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(r1.x))));
  r1.y = bitcast<f32>((bitcast<u32>(r2.y) | bitcast<u32>(r1.y)));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r4 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r4.w);
  } else {
    r1.y = (r3.x * cb2_2.tint_symbol[1u].x);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      r4 = textureSample(t14, s14, v1.xyz.xyxx.xy);
      r2.x = (r4.y + r4.x);
      r2.x = (r4.z + r2.x);
      r4.w = clamp(((-(r2.xxxx) + vec4<f32>(1.0f))).w, 0.0f, 1.0f);
      r0 = vec4<f32>(v2.xyz, r0.w);
      let v_17 = -(r4);
      r5 = (r0 + v_17);
      r4 = fma(v2.wwww, r5, r4);
      let v_18 = (r4.xxy * cb12_12.tint_symbol_3[1u].yzw);
      r5 = vec4<f32>(v_18.xyz, r5.w);
      r5.w = (r4.y * cb12_12.tint_symbol_3[2u].x);
      let v_19 = (r5.zw + r5.xy);
      r2 = vec4<f32>(v_19.xy, r2.zw);
      r5.z = (r4.w * cb12_12.tint_symbol_3[2u].w);
      let v_20 = fma(r4.zz, cb12_12.tint_symbol_3[2u].yz, r2.xy);
      r2 = vec4<f32>(v_20.xy, r2.zw);
      r5.w = (r4.w * cb12_12.tint_symbol_3[3u].x);
      let v_21 = (r2.xy + r5.zw);
      r2 = vec4<f32>(v_21.xy, r2.zw);
      r2.x = (r1.y * r2.x);
      r5.x = bitcast<f32>(select(0u, 4294967295u, !((r2.x == 0.0f))));
      if ((bitcast<u32>(r5.x) != 0u)) {
        r5.x = dot(v6.xyz, v8.xyz);
        r5.y = dot(v7.xyz, v8.xyz);
        r5.z = dot(v4.xyz, v8.xyz);
        r6.x = dot(v6.xyz, cb3_3.tint_symbol_1[0u].xyz);
        r6.y = dot(v7.xyz, cb3_3.tint_symbol_1[0u].xyz);
        r6.z = dot(v4.xyz, cb3_3.tint_symbol_1[0u].xyz);
        r5.w = dot(r6.xyz, r6.xyz);
        r5.w = inverseSqrt(r5.w);
        let v_22 = (r5.www * r6.xyz);
        r6 = vec4<f32>(v_22.xyz, r6.w);
        r5.w = dot(v4.xyz, r6.xyz);
        r5.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r5.w)));
        r6.w = trunc(r1.w);
        r6.w = (1.0f / r6.w);
        r7.x = dot(r5.xyz, r5.xyz);
        r7.x = inverseSqrt(r7.x);
        let v_23 = (r5.xyz * r7.xxx);
        r5 = vec4<f32>(v_23.xyz, r5.w);
        r5.z = max(r5.z, 0.10000000149011611938f);
        let v_24 = ((-(r5.xyxx)).xy / r5.zz);
        r7 = vec4<f32>(v_24.xy, r7.zw);
        let v_25 = (r2.xx * r7.xy);
        r7 = vec4<f32>(v_25.xy, r7.zw);
        let v_26 = (r5.xy / r5.zz);
        r5 = vec4<f32>(v_26.xy, r5.zw);
        let v_27 = (r2.yy * r5.xy);
        r5 = vec4<f32>(v_27.xy, r5.zw);
        let v_28 = (r1.yy * r5.xy);
        r5 = vec4<f32>(v_28.xy, r5.zw);
        r8 = textureSampleLevel(t4, s4, v1.xyz.xyxx.xy, 0.0f);
        r9 = textureSampleLevel(t7, s7, v1.xyz.xyxx.xy, 0.0f);
        r1.y = (r4.y * r9.x);
        r1.y = fma(r4.x, r8.x, r1.y);
        r8 = textureSampleLevel(t10, s10, v1.xyz.xyxx.xy, 0.0f);
        r1.y = fma(r4.z, r8.x, r1.y);
        r8 = textureSampleLevel(t13, s13, v1.xyz.xyxx.xy, 0.0f);
        r1.y = fma(r4.w, r8.x, r1.y);
        r1.y = (r1.y + 0.00000099999999747524f);
        let v_29 = r5;
        r7 = vec4<f32>(r7.xy, v_29.xy);
        r2.y = 1.0f;
        r5.z = 1.0f;
        let v_30 = r1;
        r8 = vec4<f32>(v_30.yy, r8.zw);
        r8.z = 0.0f;
        loop {
          r8.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r8.z) >= bitcast<i32>(r1.x))));
          if ((bitcast<u32>(r8.w) != 0u)) {
            break;
          }
          r8.w = bitcast<f32>(select(0u, 4294967295u, (r8.x < r2.y)));
          if ((bitcast<u32>(r8.w) != 0u)) {
            r8.w = ((-(r6.wwww)).w + r2.y);
            let v_31 = fma(r7.xy, r6.ww, r7.zw);
            r7 = vec4<f32>(r7.xy, v_31.xy);
            let v_32 = (r7.zw + v1.xyz.xy);
            r9 = vec4<f32>(v_32.xy, r9.zw);
            r10 = textureSampleLevel(t4, s4, r9.xyxx.xy, 0.0f);
            r11 = textureSampleLevel(t7, s7, r9.xyxx.xy, 0.0f);
            r9.z = (r4.y * r11.x);
            r9.z = fma(r4.x, r10.x, r9.z);
            r10 = textureSampleLevel(t10, s10, r9.xyxx.xy, 0.0f);
            r9.z = fma(r4.z, r10.x, r9.z);
            r10 = textureSampleLevel(t13, s13, r9.xyxx.xy, 0.0f);
            r9.x = fma(r4.w, r10.x, r9.z);
            r5.z = r2.y;
            let v_33 = r8;
            let v_34 = r8;
            r8 = vec4<f32>(v_34.x, v_33.xz, v_34.w);
            r2.y = r8.w;
            r8.x = r9.x;
          } else {
            r8.z = r1.x;
          }
          r8.z = bitcast<f32>((bitcast<i32>(r8.z) + 1i));
        }
        let v_35 = -(r8.xxxx);
        r1.x = (r2.y + v_35.x);
        let v_36 = -(r8.yyyy);
        r6.w = (r5.z + v_36.w);
        r7.z = ((-(r1.xxxx)).z + r6.w);
        r7.w = bitcast<f32>(select(0u, 4294967295u, !((r7.z == 0.0f))));
        r1.x = (r1.x * r5.z);
        let v_37 = -(r1.xxxx);
        r1.x = fma(r2.y, r6.w, v_37.x);
        r1.x = (r1.x / r7.z);
        r1.x = ((-(r1.xxxx)).x + 1.0f);
        r1.x = bitcast<f32>((bitcast<u32>(r1.x) & bitcast<u32>(r7.w)));
        let v_38 = fma(r7.xy, r1.xx, r5.xy);
        r5 = vec4<f32>(v_38.xy, r5.zw);
        r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[1u].x)));
        r1.x = bitcast<f32>((bitcast<u32>(r1.x) & bitcast<u32>(r5.w)));
        if ((bitcast<u32>(r1.x) != 0u)) {
          let v_39 = (r6.xy / r6.zz);
          r6 = vec4<f32>(v_39.xy, r6.zw);
          let v_40 = (r2.xx * r6.xy);
          r2 = vec4<f32>(v_40.xy, r2.zw);
          r1.x = 0.0f;
          r5.w = 0.0f;
          loop {
            r6.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r5.w) >= 7i)));
            if ((bitcast<u32>(r6.x) != 0u)) {
              break;
            }
            r6.x = f32(bitcast<i32>(r5.w));
            r6.x = fma((-(r6.xxxx)).x, 0.14285714924335479736f, 1.0f);
            let v_41 = fma(r2.xy, r6.xx, v1.xyz.xy);
            let v_42 = r6;
            r6 = vec4<f32>(v_42.x, v_41.xy, v_42.w);
            r7 = textureSampleLevel(t4, s4, r6.yzyy.xy, 0.0f);
            r8 = textureSampleLevel(t7, s7, r6.yzyy.xy, 0.0f);
            r6.w = (r4.y * r8.x);
            r6.w = fma(r4.x, r7.x, r6.w);
            r7 = textureSampleLevel(t10, s10, r6.yzyy.xy, 0.0f);
            r6.w = fma(r4.z, r7.x, r6.w);
            r7 = textureSampleLevel(t13, s13, r6.yzyy.xy, 0.0f);
            r6.y = fma(r4.w, r7.x, r6.w);
            r6.y = ((-(r1.yyyy)).y + r6.y);
            r6.x = ((-(r6.xxxx)).x + r6.y);
            r5.w = bitcast<f32>((bitcast<i32>(r5.w) + 1i));
            r6.y = f32(bitcast<i32>(r5.w));
            r6.x = (r6.y * r6.x);
            r1.x = max(r1.x, r6.x);
          }
          r1.x = min(r1.x, 1.0f);
          r5.z = fma((-(r1.xxxx)).z, cb12_12.tint_symbol_3[1u].x, 1.0f);
        } else {
          r5.z = 1.0f;
        }
      } else {
        r5 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r5.w);
      }
      r1.x = bitcast<f32>(v.tint_symbol_4[0i].x);
    } else {
      r5 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r5.w);
      r1.x = 0.0f;
    }
    let v_43 = bitcast<vec3<u32>>(r1.xxx);
    let v_44 = select(vec3<f32>(0.0f, 0.0f, 1.0f), r5.xyz, (v_43 != vec3<u32>()));
    r4 = vec4<f32>(v_44.xyz, r4.w);
  }
  let v_45 = (r4.xy + v1.xyz.xy);
  r1 = vec4<f32>(v_45.xy, r1.zw);
  r5 = textureSample(t14, s14, r1.xyxx.xy);
  r2.x = (r5.y + r5.x);
  r2.x = (r5.z + r2.x);
  r5.w = clamp(((-(r2.xxxx) + vec4<f32>(1.0f))).w, 0.0f, 1.0f);
  r0 = vec4<f32>(v2.xyz, r0.w);
  r0 = (-(r5) + r0);
  r0 = fma(v2.wwww, r0, r5);
  r5 = textureSample(t3, s3, r1.xyxx.xy);
  r6 = textureSample(t6, s6, r1.xyxx.xy);
  r7 = textureSample(t9, s9, r1.xyxx.xy);
  r8 = textureSample(t12, s12, r1.xyxx.xy);
  r9.x = r5.w;
  r9.y = r6.w;
  r9.z = r7.w;
  r9.w = r8.w;
  r9 = (r0 * r9);
  r9 = (r9 * r9);
  r10 = (r9 * r9);
  r10 = (r10 * r10);
  r9 = (r9 * r10);
  r9 = (r0 * r9);
  r2.x = dot(r9, r9);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.x)));
  r2.x = inverseSqrt(r2.x);
  r9 = (r2.xxxx * r9);
  let v_46 = bitcast<vec4<u32>>(r2.yyyy);
  let v_47 = r9;
  r0 = select(r0, v_47, (v_46 != vec4<u32>()));
  r9 = textureSample(t2, s2, r1.xyxx.xy);
  r10 = textureSample(t5, s5, r1.xyxx.xy);
  let v_48 = (r0.yyy * r10.xyz);
  r4 = vec4<f32>(v_48.xy, r4.z, v_48.z);
  let v_49 = fma(r0.xxx, r9.xyz, r4.xyw);
  r4 = vec4<f32>(v_49.xy, r4.z, v_49.z);
  r9 = textureSample(t8, s8, r1.xyxx.xy);
  let v_50 = fma(r0.zzz, r9.xyz, r4.xyw);
  r4 = vec4<f32>(v_50.xy, r4.z, v_50.z);
  r9 = textureSample(t11, s11, r1.xyxx.xy);
  let v_51 = fma(r0.www, r9.xyz, r4.xyw);
  r4 = vec4<f32>(v_51.xy, r4.z, v_51.z);
  r9 = textureSample(t15, s15, r1.xyxx.xy);
  let v_52 = ((-(r9.xyzx)).xyz + v3.xyz);
  r10 = vec4<f32>(v_52.xyz, r10.w);
  let v_53 = fma(v3.www, r10.xyz, r9.xyz);
  r9 = vec4<f32>(v_53.xyz, r9.w);
  r2.x = dot(r4.xyw, vec3<f32>(0.30000001192092895508f, 0.58999997377395629883f, 0.10999999940395355225f));
  let v_54 = (r9.xyz * r2.xxx);
  r10 = vec4<f32>(v_54.xyz, r10.w);
  let v_55 = -(r4.xywx);
  let v_56 = fma(r10.xyz, cb12_12.tint_symbol_3[5u].xxx, v_55.xyz);
  r10 = vec4<f32>(v_56.xyz, r10.w);
  let v_57 = fma(cb12_12.tint_symbol_3[5u].yyy, r10.xyz, r4.xyw);
  r4 = vec4<f32>(v_57.xy, r4.z, v_57.z);
  r2.x = (v1.z + (-(cb2_2.tint_symbol[5u].xxxx)).x);
  r2.x = clamp(((r2.xxxx / cb2_2.tint_symbol[5u].yyyy)).x, 0.0f, 1.0f);
  let v_58 = ((-(r4.xywx)).xyz + r9.xyz);
  r9 = vec4<f32>(v_58.xyz, r9.w);
  let v_59 = fma(r2.xxx, r9.xyz, r4.xyw);
  r9 = vec4<f32>(v_59.xyz, r9.w);
  let v_60 = (r0.yy * r6.xy);
  r4 = vec4<f32>(v_60.xy, r4.zw);
  let v_61 = fma(r5.xy, r0.xx, r4.xy);
  r4 = vec4<f32>(v_61.xy, r4.zw);
  let v_62 = fma(r7.xy, r0.zz, r4.xy);
  r4 = vec4<f32>(v_62.xy, r4.zw);
  let v_63 = fma(r8.xy, r0.ww, r4.xy);
  r4 = vec4<f32>(v_63.xy, r4.zw);
  let v_64 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r4 = vec4<f32>(v_64.xy, r4.zw);
  r2.y = dot(r4.xy, r4.xy);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r2.y = sqrt(abs(r2.yyyy).y);
  let v_65 = max(cb12_12.tint_symbol_3[0u].zw, vec2<f32>(0.00100000004749745131f));
  r5 = vec4<f32>(v_65.xy, r5.zw);
  let v_66 = (r4.xy * r5.xx);
  r4 = vec4<f32>(v_66.xy, r4.zw);
  let v_67 = (r4.yyy * v7.xyz);
  r5 = vec4<f32>(v_67.x, r5.y, v_67.yz);
  let v_68 = fma(r4.xxx, v6.xyz, r5.xzw);
  r4 = vec4<f32>(v_68.xy, r4.z, v_68.z);
  let v_69 = fma(r2.yyy, v4.xyz, r4.xyw);
  r4 = vec4<f32>(v_69.xy, r4.z, v_69.z);
  r2.y = dot(r4.xyw, r4.xyw);
  r2.y = inverseSqrt(r2.y);
  let v_70 = (r2.yyy * r4.xyw);
  r4 = vec4<f32>(v_70.xy, r4.z, v_70.z);
  r6 = textureSample(t0, s0, r1.xyxx.xy);
  let v_71 = fma(r6.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_71.xy, r1.zw);
  r2.y = dot(r1.xy, r1.xy);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r2.y = sqrt(abs(r2.yyyy).y);
  let v_72 = (r5.yy * r1.xy);
  r1 = vec4<f32>(v_72.xy, r1.zw);
  let v_73 = (r1.yyy * v7.xyz);
  r5 = vec4<f32>(v_73.xyz, r5.w);
  let v_74 = fma(r1.xxx, v6.xyz, r5.xyz);
  r5 = vec4<f32>(v_74.xyz, r5.w);
  let v_75 = fma(r2.yyy, v4.xyz, r5.xyz);
  r5 = vec4<f32>(v_75.xyz, r5.w);
  r1.x = dot(r5.xyz, r5.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_76 = -(r4.xywx);
  let v_77 = fma(r5.xyz, r1.xxx, v_76.xyz);
  r6 = vec4<f32>(v_77.xyz, r6.w);
  let v_78 = fma(r6.xyz, vec3<f32>(0.5f), r4.xyw);
  r4 = vec4<f32>(v_78.xy, r4.z, v_78.z);
  let v_79 = -(r4.xywx);
  let v_80 = fma(r5.xyz, r1.xxx, v_79.xyz);
  r5 = vec4<f32>(v_80.xyz, r5.w);
  let v_81 = fma(r2.xxx, r5.xyz, r4.xyw);
  r4 = vec4<f32>(v_81.xy, r4.z, v_81.z);
  r1.x = dot(r4.xyw, r4.xyw);
  r1.x = inverseSqrt(r1.x);
  let v_82 = (r1.xxx * r4.xyw);
  r5 = vec4<f32>(v_82.xyz, r5.w);
  r0.x = dot(cb12_12.tint_symbol_3[4u], r0);
  r0.y = (cb12_12.tint_symbol_3[0u].y * cb12_12.tint_symbol_3[0u].y);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.z < 1.0f)));
  r3.y = (r1.w / cb2_2.tint_symbol[3u].w);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r9.w = 1.0f;
  let v_83 = bitcast<vec4<u32>>(r0.zzzz);
  let v_84 = r3;
  r3 = select(r9, v_84, (v_83 != vec4<u32>()));
  let v_85 = bitcast<vec4<u32>>(r2.wwww);
  let v_86 = r3;
  r3 = select(r9, v_86, (v_85 != vec4<u32>()));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.z == 1.0f)));
  r0.w = dot(r9.xyz, vec3<f32>(1.27499997615814208984f, 4.29239988327026367188f, 0.4325999915599822998f));
  r0.w = ((-(r0.wwww)).w + 0.5f);
  r0.w = clamp(((-(r0.wwww) + v4.wwww)).w, 0.0f, 1.0f);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.80000001192092895508f < r1.z)));
  r1.z = (r1.z + -0.80000001192092895508f);
  r1.z = (r1.z * 5.0f);
  r1.w = ((-(r4.zzzz)).w + r0.w);
  r1.z = fma(r1.z, r1.w, r4.z);
  let v_87 = bitcast<u32>(r1.y);
  let v_88 = r1.z;
  r1.y = select(r4.z, v_88, (v_87 != 0u));
  let v_89 = bitcast<u32>(r0.z);
  let v_90 = r0.w;
  o2.w = select(r1.y, v_90, (v_89 != 0u));
  r0.z = clamp(fma(r2.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).z, 0.0f, 1.0f);
  o0.w = (r3.w * cb2_2.tint_symbol[15u].x);
  let v_91 = fma(r5.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_91.xyz, o1.w);
  r0.w = (r0.x + -0.10000000149011611938f);
  r0.w = clamp(((r0.wwww * vec4<f32>(10.0f))).w, 0.0f, 1.0f);
  o1.w = (r0.w * r0.z);
  r0.z = (cb12_12.tint_symbol_3[0u].x * 0.001953125f);
  r2.x = (v5.x + cb3_3.tint_symbol_1[45u].w);
  r2.y = v5.y;
  let v_92 = (r2.xy * vec2<f32>(0.5f));
  let v_93 = r1;
  r1 = vec4<f32>(v_93.x, v_92.xy, v_93.w);
  let v_94 = sqrt(r1.yz);
  o3 = vec4<f32>(v_94.xy, o3.zw);
  r0.w = fma(r4.w, r1.x, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r0.w * v5.x);
  r1.x = fma((-(r0.yyyy)).x, 0.5f, 1.0f);
  r1.x = (r0.w * r1.x);
  r1.y = ((-(r0.xxxx)).y + 1.0f);
  r1.x = (r1.y * r1.x);
  r0.x = (r0.x * r0.w);
  r0.w = fma(r1.x, -0.5f, 1.0f);
  let v_95 = (r0.www * r3.xyz);
  o0 = vec4<f32>(v_95.xyz, o0.w);
  let v_96 = (-(r0.yzyy)).xy;
  r1 = vec4<f32>(v_96.xy, r1.zw);
  let v_97 = (r1.xy + vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_97.xy, r1.zw);
  let v_98 = max(r1.xy, vec2<f32>());
  r1 = vec4<f32>(v_98.xy, r1.zw);
  r2.x = fma(r1.x, r0.x, r0.y);
  r2.y = fma(r1.y, r0.x, r0.z);
  o2.z = 0.98000001907348632812f;
  let v_99 = sqrt(r2.xy);
  o2 = vec4<f32>(v_99.xy, o2.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_6(v_100 : bool) {
  if (v_100) {
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
fn main(@builtin(position) v_101 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v_101, v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_6(o0, o1, o2, o3);
}
