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

struct cb8_struct {
  tint_symbol_3 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb8_struct;

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

var<private> icb0 : array<vec4<f32>, 5u> = array<vec4<f32>, 5u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.80000001192092895508f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.5f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.10000000149011611938f, 0.0f, 0.0f, 0.0f), vec4<f32>());

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>) {
  r0 = textureSample(t14, s14, v1.zwzz.xy);
  let v_1 = ((-(r0.xyzx)).xyz + v2.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = fma(v2.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.w = dot(v7.xyz, v7.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_3 = (r0.www * v7.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r0.w = dot(v3.xyz, v3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_4 = (r0.www * v3.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  r0.w = dot(r1.xyz, r2.xyz);
  let v_5 = clamp(v9.xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r2.x = ((-(r1.xxxx)).x + 1.0f);
  let v_6 = -(cb2_2.tint_symbol[3u].xxxx);
  r2.y = (v8.z + v_6.y);
  r2.w = clamp(((r2.yyyy / cb2_2.tint_symbol[3u].yyyy)).w, 0.0f, 1.0f);
  r3.x = ((-(cb2_2.tint_symbol[3u].wwww)).x + cb2_2.tint_symbol[3u].z);
  r3.x = fma(abs(r0.wwww).x, r3.x, cb2_2.tint_symbol[3u].w);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb2_2.tint_symbol[2u].zxwy == vec4<f32>(1.0f))));
  if ((bitcast<u32>(r4.x) != 0u)) {
    r3.y = (v_6.y + cb2_2.tint_symbol[3u].y);
    r3.z = (r3.y * 0.34999999403953552246f);
    let v_7 = -(cb2_2.tint_symbol[3u].yyyy);
    r2.y = (r2.y + v_7.y);
    r2.y = fma(r3.y, 0.34999999403953552246f, r2.y);
    r2.y = clamp(((r2.yyyy / r3.zzzz)).y, 0.0f, 1.0f);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r2.x = (r2.y * r2.x);
    r2.y = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 1.0f))));
    if ((bitcast<u32>(r2.y) != 0u)) {
      r2.y = (r2.w * 5.0f);
      let v_8 = r2.y;
      let v_9 = max(v_8, -2147483648.0f);
      r3.y = bitcast<f32>(select(select(i32(v_9), 2147483647i, (v_9 >= 2147483648.0f)), 0i, !((v_8 == v_8))));
      r3.y = bitcast<f32>(min(bitcast<i32>(r3.y), 4i));
      r3.w = bitcast<f32>((bitcast<i32>(r3.y) + 1i));
      r3.w = bitcast<f32>(min(bitcast<i32>(r3.w), 4i));
      r2.y = trunc(r2.y);
      let v_10 = -(r2.yyyy);
      r2.y = fma(r2.w, 5.0f, v_10.y);
      r3.w = ((-(icb0[bitcast<i32>(r3.y)].xxxx)).w + icb0[bitcast<i32>(r3.w)].x);
      r2.y = fma(r2.y, r3.w, icb0[bitcast<i32>(r3.y)].x);
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
  let v_11 = r3.x;
  let v_12 = max(v_11, -2147483648.0f);
  r0.w = bitcast<f32>(select(select(i32(v_12), 2147483647i, (v_12 >= 2147483648.0f)), 0i, !((v_11 == v_11))));
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(r0.w))));
  r2.x = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r2.x)));
  if ((bitcast<u32>(r2.x) != 0u)) {
    r3 = vec4<f32>(r3.x, vec3<f32>(0.0f, 0.0f, 1.0f));
  } else {
    r2.x = (r5.x * cb2_2.tint_symbol[1u].x);
    r2.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.x)));
    if ((bitcast<u32>(r2.y) != 0u)) {
      let v_13 = ((-(r0.xyzx)).xyz + vec3<f32>(1.0f));
      r6 = vec4<f32>(v_13.xyz, r6.w);
      r2.y = (r6.y * r6.x);
      r3.w = (r6.z * r2.y);
      r2.y = (r0.z * r2.y);
      r4.x = (r0.y * r6.x);
      r4.y = (r6.z * r4.x);
      r4.x = (r0.z * r4.x);
      r6.x = (r2.y * cb12_12.tint_symbol_3[2u].w);
      r6.y = (r2.y * cb12_12.tint_symbol_3[3u].x);
      let v_14 = fma(cb12_12.tint_symbol_3[2u].yz, r3.ww, r6.xy);
      r6 = vec4<f32>(v_14.xy, r6.zw);
      let v_15 = fma(cb12_12.tint_symbol_3[3u].yz, r4.yy, r6.xy);
      r6 = vec4<f32>(v_15.xy, r6.zw);
      r7.x = (r4.x * cb12_12.tint_symbol_3[3u].w);
      r7.y = (r4.x * cb12_12.tint_symbol_3[4u].x);
      let v_16 = (r6.xy + r7.xy);
      r6 = vec4<f32>(v_16.xy, r6.zw);
      r6.x = (r2.x * r6.x);
      r6.z = bitcast<f32>(select(0u, 4294967295u, !((r6.x == 0.0f))));
      if ((bitcast<u32>(r6.z) != 0u)) {
        r7.x = dot(v5.xyz, v7.xyz);
        r7.y = dot(v6.xyz, v7.xyz);
        r7.z = dot(v3.xyz, v7.xyz);
        r6.z = max(v9.y, 0.10000000149011611938f);
        r6.z = min(r6.z, 1.0f);
        r6.z = ((-(r6.zzzz)).z + 1.0f);
        r8.x = dot(v5.xyz, cb3_3.tint_symbol_1[0u].xyz);
        r8.y = dot(v6.xyz, cb3_3.tint_symbol_1[0u].xyz);
        r8.z = dot(v3.xyz, cb3_3.tint_symbol_1[0u].xyz);
        r6.w = dot(r8.xyz, r8.xyz);
        r6.w = inverseSqrt(r6.w);
        let v_17 = (r6.www * r8.xyz);
        r8 = vec4<f32>(v_17.xyz, r8.w);
        r6.w = dot(v3.xyz, r8.xyz);
        r6.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r6.w)));
        r7.w = trunc(r3.x);
        r7.w = (1.0f / r7.w);
        r8.w = dot(r7.xyz, r7.xyz);
        r8.w = inverseSqrt(r8.w);
        let v_18 = (r7.xyz * r8.www);
        r7 = vec4<f32>(v_18.xyz, r7.w);
        r6.z = max(r6.z, r7.z);
        let v_19 = ((-(r7.xyxx)).xy / r6.zz);
        r9 = vec4<f32>(v_19.xy, r9.zw);
        let v_20 = (r6.xx * r9.xy);
        r9 = vec4<f32>(v_20.xy, r9.zw);
        let v_21 = (r7.xy / r6.zz);
        r7 = vec4<f32>(v_21.xy, r7.zw);
        let v_22 = (r6.yy * r7.xy);
        let v_23 = r6;
        r6 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
        let v_24 = (r2.xx * r6.yz);
        let v_25 = r6;
        r6 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
        r10 = textureSampleLevel(t4, s4, v1.xyxx.xy, 0.0f);
        r11 = textureSampleLevel(t7, s7, v1.xyxx.xy, 0.0f);
        r2.x = (r2.y * r11.x);
        r2.x = fma(r10.x, r3.w, r2.x);
        r10 = textureSampleLevel(t10, s10, v1.xyxx.xy, 0.0f);
        r2.x = fma(r10.x, r4.y, r2.x);
        r10 = textureSampleLevel(t13, s13, v1.xyxx.xy, 0.0f);
        r2.x = fma(r10.x, r4.x, r2.x);
        r2.x = (r2.x + 0.00000099999999747524f);
        let v_26 = r6;
        let v_27 = r3;
        r3 = vec4<f32>(v_27.x, v_26.yz, v_27.w);
        r7 = vec4<f32>(vec2<f32>(1.0f), r7.zw);
        r7.z = r2.x;
        r8.w = r2.x;
        r9.z = 0.0f;
        loop {
          r9.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r9.z) >= bitcast<i32>(r0.w))));
          if ((bitcast<u32>(r9.w) != 0u)) {
            break;
          }
          r9.w = bitcast<f32>(select(0u, 4294967295u, (r7.z < r7.x)));
          if ((bitcast<u32>(r9.w) != 0u)) {
            r9.w = ((-(r7.wwww)).w + r7.x);
            let v_28 = fma(r9.xy, r7.ww, r3.yz);
            let v_29 = r3;
            r3 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
            let v_30 = (r3.yz + v1.xy);
            r10 = vec4<f32>(v_30.xy, r10.zw);
            r11 = textureSampleLevel(t4, s4, r10.xyxx.xy, 0.0f);
            r12 = textureSampleLevel(t7, s7, r10.xyxx.xy, 0.0f);
            r10.z = (r2.y * r12.x);
            r10.z = fma(r11.x, r3.w, r10.z);
            r11 = textureSampleLevel(t10, s10, r10.xyxx.xy, 0.0f);
            r10.z = fma(r11.x, r4.y, r10.z);
            r11 = textureSampleLevel(t13, s13, r10.xyxx.xy, 0.0f);
            r10.x = fma(r11.x, r4.x, r10.z);
            r7.y = r7.x;
            r8.w = r7.z;
            r7.x = r9.w;
            r7.z = r10.x;
          } else {
            r9.z = r0.w;
          }
          r9.z = bitcast<f32>((bitcast<i32>(r9.z) + 1i));
        }
        r0.w = ((-(r7.zzzz)).w + r7.x);
        let v_31 = -(r8.wwww);
        r3.y = (r7.y + v_31.y);
        r3.z = ((-(r0.wwww)).z + r3.y);
        r7.z = bitcast<f32>(select(0u, 4294967295u, !((r3.z == 0.0f))));
        r0.w = (r0.w * r7.y);
        let v_32 = -(r0.wwww);
        r0.w = fma(r7.x, r3.y, v_32.w);
        r0.w = (r0.w / r3.z);
        r0.w = ((-(r0.wwww)).w + 1.0f);
        r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r7.z)));
        let v_33 = fma(r9.xy, r0.ww, r6.yz);
        r7 = vec4<f32>(v_33.xy, r7.zw);
        r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[2u].x)));
        r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r6.w)));
        if ((bitcast<u32>(r0.w) != 0u)) {
          let v_34 = (r8.xy / r8.zz);
          let v_35 = r3;
          r3 = vec4<f32>(v_35.x, v_34.xy, v_35.w);
          let v_36 = (r6.xx * r3.yz);
          let v_37 = r3;
          r3 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
          r0.w = 0.0f;
          r6.x = 0.0f;
          loop {
            r6.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r6.x) >= 7i)));
            if ((bitcast<u32>(r6.y) != 0u)) {
              break;
            }
            r6.y = f32(bitcast<i32>(r6.x));
            r6.y = fma((-(r6.yyyy)).y, 0.14285714924335479736f, 1.0f);
            let v_38 = fma(r3.yz, r6.yy, v1.xy);
            r6 = vec4<f32>(r6.xy, v_38.xy);
            r8 = textureSampleLevel(t4, s4, r6.zwzz.xy, 0.0f);
            r9 = textureSampleLevel(t7, s7, r6.zwzz.xy, 0.0f);
            r7.w = (r2.y * r9.x);
            r7.w = fma(r8.x, r3.w, r7.w);
            r8 = textureSampleLevel(t10, s10, r6.zwzz.xy, 0.0f);
            r7.w = fma(r8.x, r4.y, r7.w);
            r8 = textureSampleLevel(t13, s13, r6.zwzz.xy, 0.0f);
            r6.z = fma(r8.x, r4.x, r7.w);
            r6.z = ((-(r2.xxxx)).z + r6.z);
            r6.y = ((-(r6.yyyy)).y + r6.z);
            r6.x = bitcast<f32>((bitcast<i32>(r6.x) + 1i));
            r6.z = f32(bitcast<i32>(r6.x));
            r6.y = (r6.z * r6.y);
            r0.w = max(r0.w, r6.y);
          }
          r0.w = min(r0.w, 1.0f);
          r7.z = fma((-(r0.wwww)).z, cb12_12.tint_symbol_3[2u].x, 1.0f);
        } else {
          r7.z = 1.0f;
        }
      } else {
        r7 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r7.w);
      }
      r0.w = bitcast<f32>(v.tint_symbol_4[0i].x);
    } else {
      r7 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r7.w);
      r0.w = 0.0f;
    }
    let v_39 = bitcast<vec3<u32>>(r0.www);
    let v_40 = select(vec3<f32>(0.0f, 0.0f, 1.0f), r7.xyz, (v_39 != vec3<u32>()));
    r3 = vec4<f32>(r3.x, v_40.xyz);
  }
  let v_41 = (r3.yz + v1.xy);
  r2 = vec4<f32>(v_41.xy, r2.zw);
  let v_42 = (r3.yz + v8.xyz.xy);
  let v_43 = r3;
  r3 = vec4<f32>(v_43.x, v_42.xy, v_43.w);
  let v_44 = ((-(r0.xyzx)).xyz + vec3<f32>(1.0f));
  r6 = vec4<f32>(v_44.xyz, r6.w);
  r0.x = (r6.y * r6.x);
  r0.w = (r6.z * r0.x);
  r0.y = (r0.y * r6.x);
  r4.x = (r6.z * r0.y);
  let v_45 = (r0.zz * r0.xy);
  r0 = vec4<f32>(v_45.xy, r0.zw);
  r6 = textureSample(t2, s2, r2.xyxx.xy);
  r7 = textureSample(t15, s15, r3.yzyy.xy);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_3[6u].x))));
  r4.y = (r7.y + r7.x);
  r4.y = (r7.z + r4.y);
  r6.w = (r4.y * 0.3333333432674407959f);
  let v_46 = fma((-(r4.yyyy)).xyz, vec3<f32>(0.3333333432674407959f), r7.xyz);
  r8 = vec4<f32>(v_46.xyz, r8.w);
  let v_47 = fma(cb12_12.tint_symbol_3[6u].yyy, r8.xyz, r6.www);
  r9 = vec4<f32>(v_47.xyz, r9.w);
  let v_48 = (r6.xyz * r9.xyz);
  r9 = vec4<f32>(v_48.xyz, r9.w);
  r4.y = (r6.y + r6.x);
  r4.y = (r6.z + r4.y);
  r4.y = (r4.y * 0.3333333432674407959f);
  let v_49 = (r7.xyz * r4.yyy);
  r10 = vec4<f32>(v_49.xyz, r10.w);
  let v_50 = bitcast<vec3<u32>>(r0.zzz);
  let v_51 = r9.xyz;
  let v_52 = select(r10.xyz, v_51, (v_50 != vec3<u32>()));
  r9 = vec4<f32>(v_52.xyz, r9.w);
  let v_53 = ((-(r6.xyzx)).xyz + r9.xyz);
  r9 = vec4<f32>(v_53.xyz, r9.w);
  let v_54 = fma(cb12_12.tint_symbol_3[6u].yyy, r9.xyz, r6.xyz);
  r6 = vec4<f32>(v_54.xyz, r6.w);
  r9 = textureSample(t5, s5, r2.xyxx.xy);
  let v_55 = fma(cb12_12.tint_symbol_3[6u].zzz, r8.xyz, r6.www);
  r10 = vec4<f32>(v_55.xyz, r10.w);
  let v_56 = (r9.xyz * r10.xyz);
  r10 = vec4<f32>(v_56.xyz, r10.w);
  r4.y = (r9.y + r9.x);
  r4.y = (r9.z + r4.y);
  r4.y = (r4.y * 0.3333333432674407959f);
  let v_57 = (r7.xyz * r4.yyy);
  r11 = vec4<f32>(v_57.xyz, r11.w);
  let v_58 = bitcast<vec3<u32>>(r0.zzz);
  let v_59 = r10.xyz;
  let v_60 = select(r11.xyz, v_59, (v_58 != vec3<u32>()));
  r10 = vec4<f32>(v_60.xyz, r10.w);
  let v_61 = ((-(r9.xyzx)).xyz + r10.xyz);
  r10 = vec4<f32>(v_61.xyz, r10.w);
  let v_62 = fma(cb12_12.tint_symbol_3[6u].zzz, r10.xyz, r9.xyz);
  r9 = vec4<f32>(v_62.xyz, r9.w);
  let v_63 = (r0.xxx * r9.xyz);
  r9 = vec4<f32>(v_63.xyz, r9.w);
  let v_64 = fma(r6.xyz, r0.www, r9.xyz);
  r6 = vec4<f32>(v_64.xyz, r6.w);
  r9 = textureSample(t8, s8, r2.xyxx.xy);
  let v_65 = fma(cb12_12.tint_symbol_3[6u].www, r8.xyz, r6.www);
  r10 = vec4<f32>(v_65.xyz, r10.w);
  let v_66 = (r9.xyz * r10.xyz);
  r10 = vec4<f32>(v_66.xyz, r10.w);
  r4.y = (r9.y + r9.x);
  r4.y = (r9.z + r4.y);
  r4.y = (r4.y * 0.3333333432674407959f);
  let v_67 = (r7.xyz * r4.yyy);
  r11 = vec4<f32>(v_67.xyz, r11.w);
  let v_68 = bitcast<vec3<u32>>(r0.zzz);
  let v_69 = r10.xyz;
  let v_70 = select(r11.xyz, v_69, (v_68 != vec3<u32>()));
  r10 = vec4<f32>(v_70.xyz, r10.w);
  let v_71 = ((-(r9.xyzx)).xyz + r10.xyz);
  r10 = vec4<f32>(v_71.xyz, r10.w);
  let v_72 = fma(cb12_12.tint_symbol_3[6u].www, r10.xyz, r9.xyz);
  r9 = vec4<f32>(v_72.xyz, r9.w);
  let v_73 = fma(r9.xyz, r4.xxx, r6.xyz);
  r6 = vec4<f32>(v_73.xyz, r6.w);
  r9 = textureSample(t11, s11, r2.xyxx.xy);
  let v_74 = fma(cb12_12.tint_symbol_3[7u].xxx, r8.xyz, r6.www);
  r8 = vec4<f32>(v_74.xyz, r8.w);
  let v_75 = (r8.xyz * r9.xyz);
  r8 = vec4<f32>(v_75.xyz, r8.w);
  r4.y = (r9.y + r9.x);
  r4.y = (r9.z + r4.y);
  r4.y = (r4.y * 0.3333333432674407959f);
  let v_76 = (r7.xyz * r4.yyy);
  r7 = vec4<f32>(v_76.xyz, r7.w);
  let v_77 = bitcast<vec3<u32>>(r0.zzz);
  let v_78 = r8.xyz;
  let v_79 = select(r7.xyz, v_78, (v_77 != vec3<u32>()));
  r7 = vec4<f32>(v_79.xyz, r7.w);
  let v_80 = ((-(r9.xyzx)).xyz + r7.xyz);
  r7 = vec4<f32>(v_80.xyz, r7.w);
  let v_81 = fma(cb12_12.tint_symbol_3[7u].xxx, r7.xyz, r9.xyz);
  r7 = vec4<f32>(v_81.xyz, r7.w);
  let v_82 = fma(r7.xyz, r0.yyy, r6.xyz);
  r6 = vec4<f32>(v_82.xyz, r6.w);
  r8 = textureSample(t3, s3, r2.xyxx.xy);
  r8.z = 1.0f;
  r9 = textureSample(t6, s6, r2.xyxx.xy);
  r9.z = 1.0f;
  let v_83 = (r0.xxx * r9.xyz);
  r7 = vec4<f32>(v_83.xyz, r7.w);
  let v_84 = fma(r8.xyz, r0.www, r7.xyz);
  r7 = vec4<f32>(v_84.xyz, r7.w);
  r8 = textureSample(t9, s9, r2.xyxx.xy);
  r8.z = 1.0f;
  let v_85 = fma(r8.xyz, r4.xxx, r7.xyz);
  r7 = vec4<f32>(v_85.xyz, r7.w);
  r8 = textureSample(t12, s12, r2.xyxx.xy);
  r8.z = 1.0f;
  let v_86 = fma(r8.xyz, r0.yyy, r7.xyz);
  r7 = vec4<f32>(v_86.xyz, r7.w);
  r8 = textureSample(t0, s0, r3.yzyy.xy);
  let v_87 = fma(r7.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
  r7 = vec4<f32>(v_87.xyz, r7.w);
  let v_88 = (r8.xy * vec2<f32>(-2.0f));
  r8 = vec4<f32>(v_88.xy, r8.zw);
  r8.z = 2.0f;
  let v_89 = (r8.xyz + vec3<f32>(1.0f, 1.0f, -1.0f));
  r8 = vec4<f32>(v_89.xyz, r8.w);
  r0.z = ((-(r7.wwww)).z + 1.0f);
  let v_90 = (r0.zzz * vec3<f32>(0.0f, 0.0f, 1.0f));
  r9 = vec4<f32>(v_90.xyz, r9.w);
  let v_91 = fma(r7.www, r8.xyz, r9.xyz);
  r8 = vec4<f32>(v_91.xyz, r8.w);
  r0.z = dot(r7.xyz, r8.xyz);
  let v_92 = (r0.zzz * r7.xyz);
  r9 = vec4<f32>(v_92.xyz, r9.w);
  let v_93 = (r9.xyz / r7.zzz);
  r7 = vec4<f32>(v_93.xyz, r7.w);
  let v_94 = ((-(r8.xyzx)).xyz + r7.xyz);
  r7 = vec4<f32>(v_94.xyz, r7.w);
  r0.z = dot(r7.xyz, r7.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_95 = (r0.zz * r7.xy);
  let v_96 = r3;
  r3 = vec4<f32>(v_96.x, v_95.xy, v_96.w);
  let v_97 = fma(r3.yz, vec2<f32>(0.5f), vec2<f32>(0.5f));
  let v_98 = r3;
  r3 = vec4<f32>(v_98.x, v_97.xy, v_98.w);
  r0.z = ((-(cb12_12.tint_symbol_3[1u].zzzz)).z + cb12_12.tint_symbol_3[1u].w);
  r0.z = fma(r7.w, r0.z, cb12_12.tint_symbol_3[1u].z);
  let v_99 = fma(r3.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_100 = r3;
  r3 = vec4<f32>(v_100.x, v_99.xy, v_100.w);
  r4.y = dot(r3.yz, r3.yz);
  r4.y = ((-(r4.yyyy)).y + 1.0f);
  r4.y = sqrt(abs(r4.yyyy).y);
  r0.z = max(r0.z, 0.00100000004749745131f);
  let v_101 = (r0.zz * r3.yz);
  let v_102 = r3;
  r3 = vec4<f32>(v_102.x, v_101.xy, v_102.w);
  let v_103 = (r3.zzz * v6.xyz);
  r7 = vec4<f32>(v_103.xyz, r7.w);
  let v_104 = fma(r3.yyy, v5.xyz, r7.xyz);
  r7 = vec4<f32>(v_104.xyz, r7.w);
  let v_105 = fma(r4.yyy, v3.xyz, r7.xyz);
  r7 = vec4<f32>(v_105.xyz, r7.w);
  r0.z = dot(r7.xyz, r7.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_106 = (r0.zzz * r7.xyz);
  r7 = vec4<f32>(v_106.xy, r7.z, v_106.z);
  r3.y = (r0.x * cb12_12.tint_symbol_3[5u].y);
  r3.y = fma(cb12_12.tint_symbol_3[5u].x, r0.w, r3.y);
  r3.y = fma(cb12_12.tint_symbol_3[5u].z, r4.x, r3.y);
  r3.y = fma(cb12_12.tint_symbol_3[5u].w, r0.y, r3.y);
  r8 = textureSample(t4, s4, r2.xyxx.xy);
  r9 = textureSample(t7, s7, r2.xyxx.xy);
  r0.x = (r0.x * r9.y);
  r0.x = fma(r8.y, r0.w, r0.x);
  r8 = textureSample(t10, s10, r2.xyxx.xy);
  r0.x = fma(r8.y, r4.x, r0.x);
  r8 = textureSample(t13, s13, r2.xyxx.xy);
  r0.x = fma(r8.y, r0.y, r0.x);
  r0.x = fma(r0.x, r0.x, -1.0f);
  r0.y = fma(cb12_12.tint_symbol_3[1u].y, r0.x, 1.0f);
  r2.x = (r0.y * cb12_12.tint_symbol_3[1u].x);
  r0.x = fma(cb12_12.tint_symbol_3[0u].z, r0.x, 1.0f);
  r0.x = (r0.x * cb12_12.tint_symbol_3[0u].y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r2.w < 1.0f)));
  r5.y = (r3.x / cb2_2.tint_symbol[3u].w);
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r6.w = 1.0f;
  let v_107 = bitcast<vec4<u32>>(r0.yyyy);
  let v_108 = r5;
  r5 = select(r6, v_108, (v_107 != vec4<u32>()));
  let v_109 = bitcast<vec4<u32>>(r4.zzzz);
  let v_110 = r5;
  r5 = select(r6, v_110, (v_109 != vec4<u32>()));
  r1.z = ((-(r1.yyyy)).z + 1.0f);
  r1.w = 0.0f;
  let v_111 = bitcast<vec3<u32>>(r4.www);
  let v_112 = r1.xzw;
  let v_113 = select(r5.xyz, v_112, (v_111 != vec3<u32>()));
  r1 = vec4<f32>(v_113.xyz, r1.w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r2.w == 1.0f)));
  r0.w = dot(r6.xyz, vec3<f32>(1.27499997615814208984f, 4.29239988327026367188f, 0.4325999915599822998f));
  r0.w = ((-(r0.wwww)).w + 0.5f);
  r0.w = clamp(((-(r0.wwww) + v3.wwww)).w, 0.0f, 1.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.80000001192092895508f < r2.w)));
  r2.w = (r2.w + -0.80000001192092895508f);
  r2.w = (r2.w * 5.0f);
  r3.x = ((-(r3.wwww)).x + r0.w);
  r2.w = fma(r2.w, r3.x, r3.w);
  let v_114 = bitcast<u32>(r1.w);
  let v_115 = r2.w;
  r1.w = select(r3.w, v_115, (v_114 != 0u));
  let v_116 = bitcast<u32>(r0.y);
  let v_117 = r0.w;
  o2.w = select(r1.w, v_117, (v_116 != 0u));
  r0.y = clamp(fma(r2.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).y, 0.0f, 1.0f);
  o0.w = (r5.w * cb2_2.tint_symbol[15u].x);
  let v_118 = fma(r7.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_118.xyz, o1.w);
  r0.w = (r3.y + -0.10000000149011611938f);
  r0.w = clamp(((r0.wwww * vec4<f32>(10.0f))).w, 0.0f, 1.0f);
  o1.w = (r0.w * r0.y);
  r2.y = (r0.x * 0.001953125f);
  r0.x = (v4.x + cb3_3.tint_symbol_1[45u].w);
  r0.y = v4.y;
  let v_119 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_119.xy, r0.zw);
  let v_120 = sqrt(r0.xy);
  o3 = vec4<f32>(v_120.xy, o3.zw);
  r0.x = fma(r7.z, r0.z, -0.34999999403953552246f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * v4.x);
  r0.y = fma((-(r2.xxxx)).y, 0.5f, 1.0f);
  r0.y = (r0.y * r0.x);
  r0.z = ((-(r3.yyyy)).z + 1.0f);
  r0.y = (r0.z * r0.y);
  r0.x = (r3.y * r0.x);
  r0.y = fma(r0.y, -0.5f, 1.0f);
  let v_121 = (r0.yyy * r1.xyz);
  o0 = vec4<f32>(v_121.xyz, o0.w);
  let v_122 = ((-(r2.xxyx)).yz + vec2<f32>(0.5f, 0.48828125f));
  let v_123 = r0;
  r0 = vec4<f32>(v_123.x, v_122.xy, v_123.w);
  let v_124 = max(r0.yz, vec2<f32>());
  let v_125 = r0;
  r0 = vec4<f32>(v_125.x, v_124.xy, v_125.w);
  let v_126 = fma(r0.yz, r0.xx, r2.xy);
  r0 = vec4<f32>(v_126.xy, r0.zw);
  let v_127 = sqrt(r0.xy);
  o2 = vec4<f32>(v_127.xy, o2.zw);
  o2.z = 0.98000001907348632812f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  return tint_symbol_6(o0, o1, o2, o3);
}
