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

struct cb4_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct_1;

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

var<private> icb0 : array<vec4<f32>, 5u> = array<vec4<f32>, 5u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.80000001192092895508f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.5f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.10000000149011611938f, 0.0f, 0.0f, 0.0f), vec4<f32>());

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  r0.x = dot(v7.xyz, v7.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_1 = (r0.xxx * v7.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r0.w = dot(v3.xyz, v3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_2 = (r0.www * v3.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r0.x = dot(r0.xyz, r1.xyz);
  let v_3 = clamp(v8.xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_3.xy, r2.zw);
  r0.y = ((-(r2.xxxx)).y + 1.0f);
  let v_4 = -(cb2_2.tint_symbol[3u].xxxx);
  r0.z = (v5.w + v_4.z);
  r0.w = clamp(((r0.zzzz / cb2_2.tint_symbol[3u].yyyy)).w, 0.0f, 1.0f);
  r1.x = ((-(cb2_2.tint_symbol[3u].wwww)).x + cb2_2.tint_symbol[3u].z);
  r1.x = fma(abs(r0.xxxx).x, r1.x, cb2_2.tint_symbol[3u].w);
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb2_2.tint_symbol[2u].zxwy == vec4<f32>(1.0f))));
  if ((bitcast<u32>(r3.x) != 0u)) {
    r1.y = (v_4.y + cb2_2.tint_symbol[3u].y);
    r1.w = (r1.y * 0.34999999403953552246f);
    let v_5 = -(cb2_2.tint_symbol[3u].yyyy);
    r0.z = (r0.z + v_5.z);
    r0.z = fma(r1.y, 0.34999999403953552246f, r0.z);
    r0.z = clamp(((r0.zzzz / r1.wwww)).z, 0.0f, 1.0f);
    r0.z = ((-(r0.zzzz)).z + 1.0f);
    r0.y = (r0.z * r0.y);
    r0.z = bitcast<f32>(select(0u, 4294967295u, !((r0.w == 1.0f))));
    if ((bitcast<u32>(r0.z) != 0u)) {
      r0.z = (r0.w * 5.0f);
      let v_6 = r0.z;
      let v_7 = max(v_6, -2147483648.0f);
      r1.y = bitcast<f32>(select(select(i32(v_7), 2147483647i, (v_7 >= 2147483648.0f)), 0i, !((v_6 == v_6))));
      r1.y = bitcast<f32>(min(bitcast<i32>(r1.y), 4i));
      r1.w = bitcast<f32>((bitcast<i32>(r1.y) + 1i));
      r1.w = bitcast<f32>(min(bitcast<i32>(r1.w), 4i));
      r0.z = trunc(r0.z);
      let v_8 = -(r0.zzzz);
      r0.z = fma(r0.w, 5.0f, v_8.z);
      r1.w = ((-(icb0[bitcast<i32>(r1.y)].xxxx)).w + icb0[bitcast<i32>(r1.w)].x);
      r0.z = fma(r0.z, r1.w, icb0[bitcast<i32>(r1.y)].x);
    } else {
      r0.z = 0.0f;
    }
    r1.x = (r0.z * r1.x);
  }
  r0.z = clamp(((r1.xxxx + vec4<f32>(-1.0f))).z, 0.0f, 1.0f);
  r0.x = (abs(r0.xxxx).x * 4.0f);
  r0.x = min(r0.x, 1.0f);
  r0.x = (r0.x * r0.z);
  r4.x = (r0.x * r0.y);
  let v_9 = r1.x;
  let v_10 = max(v_9, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_10), 2147483647i, (v_10 >= 2147483648.0f)), 0i, !((v_9 == v_9))));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(r0.x))));
  r0.y = bitcast<f32>((bitcast<u32>(r3.y) | bitcast<u32>(r0.y)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r0 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r0.w);
  } else {
    r0.y = (r4.x * cb2_2.tint_symbol[1u].x);
    r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
    if ((bitcast<u32>(r0.z) != 0u)) {
      r5 = vec4<f32>((((-(v2.xyzx)).xyz + vec3<f32>(1.0f))).xyz, r5.w);
      r0.z = (r5.y * r5.x);
      r1.y = (r5.z * r0.z);
      r0.z = (r0.z * v2.z);
      r1.w = (r5.x * v2.y);
      r3.x = (r5.z * r1.w);
      r1.w = (r1.w * v2.z);
      let v_11 = (r0.zz * cb12_12.tint_symbol_3[1u].zw);
      r5 = vec4<f32>(v_11.xy, r5.zw);
      let v_12 = fma(cb12_12.tint_symbol_3[1u].xy, r1.yy, r5.xy);
      r5 = vec4<f32>(v_12.xy, r5.zw);
      let v_13 = fma(cb12_12.tint_symbol_3[2u].xy, r3.xx, r5.xy);
      r5 = vec4<f32>(v_13.xy, r5.zw);
      let v_14 = fma(cb12_12.tint_symbol_3[2u].zw, r1.ww, r5.xy);
      r5 = vec4<f32>(v_14.xy, r5.zw);
      r3.y = (r0.y * r5.x);
      r5.x = bitcast<f32>(select(0u, 4294967295u, !((r3.y == 0.0f))));
      if ((bitcast<u32>(r5.x) != 0u)) {
        r6.x = dot(v5.xyz, v7.xyz);
        r6.y = dot(v6.xyz, v7.xyz);
        r6.z = dot(v3.xyz, v7.xyz);
        r5.x = max(v8.y, 0.10000000149011611938f);
        r5.x = min(r5.x, 1.0f);
        r5.x = ((-(r5.xxxx)).x + 1.0f);
        r7.x = dot(v5.xyz, cb3_3.tint_symbol_1[0u].xyz);
        r7.y = dot(v6.xyz, cb3_3.tint_symbol_1[0u].xyz);
        r7.z = dot(v3.xyz, cb3_3.tint_symbol_1[0u].xyz);
        r5.z = dot(r7.xyz, r7.xyz);
        r5.z = inverseSqrt(r5.z);
        let v_15 = (r5.zzz * r7.xyz);
        r7 = vec4<f32>(v_15.xyz, r7.w);
        r5.z = dot(v3.xyz, r7.xyz);
        r5.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r5.z)));
        r5.w = trunc(r1.x);
        r5.w = (1.0f / r5.w);
        r6.w = dot(r6.xyz, r6.xyz);
        r6.w = inverseSqrt(r6.w);
        let v_16 = (r6.www * r6.xyz);
        r6 = vec4<f32>(v_16.xyz, r6.w);
        r5.x = max(r5.x, r6.z);
        let v_17 = ((-(r6.xxxy)).zw / r5.xx);
        r6 = vec4<f32>(r6.xy, v_17.xy);
        let v_18 = (r3.yy * r6.zw);
        r6 = vec4<f32>(r6.xy, v_18.xy);
        let v_19 = (r6.xy / r5.xx);
        r6 = vec4<f32>(v_19.xy, r6.zw);
        let v_20 = (r5.yy * r6.xy);
        r5 = vec4<f32>(v_20.xy, r5.zw);
        let v_21 = (r0.yy * r5.xy);
        r5 = vec4<f32>(v_21.xy, r5.zw);
        r8 = textureSampleLevel(t4, s4, v1.xyxx.xy, 0.0f);
        r9 = textureSampleLevel(t7, s7, v1.zwzz.xy, 0.0f);
        r0.y = (r0.z * r9.x);
        r0.y = fma(r8.x, r1.y, r0.y);
        r8 = textureSampleLevel(t10, s10, v1.zwzz.xy, 0.0f);
        r0.y = fma(r8.x, r3.x, r0.y);
        r8 = textureSampleLevel(t13, s13, v1.zwzz.xy, 0.0f);
        r0.y = fma(r8.x, r1.w, r0.y);
        r0.y = (r0.y + 0.00000099999999747524f);
        let v_22 = r5;
        r6 = vec4<f32>(v_22.xy, r6.zw);
        r7.w = 1.0f;
        let v_23 = r0;
        let v_24 = r8;
        r8 = vec4<f32>(v_24.x, v_23.yy, v_24.w);
        r8 = vec4<f32>(1.0f, r8.yz, 0.0f);
        loop {
          r9.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r8.w) >= bitcast<i32>(r0.x))));
          if ((bitcast<u32>(r9.x) != 0u)) {
            break;
          }
          r9.x = bitcast<f32>(select(0u, 4294967295u, (r8.y < r7.w)));
          if ((bitcast<u32>(r9.x) != 0u)) {
            r9.x = ((-(r5.wwww)).x + r7.w);
            let v_25 = fma(r6.zw, r5.ww, r6.xy);
            r6 = vec4<f32>(v_25.xy, r6.zw);
            r10 = (r6.xyxy + v1);
            r11 = textureSampleLevel(t4, s4, r10.xyxx.xy, 0.0f);
            r12 = textureSampleLevel(t7, s7, r10.zwzz.xy, 0.0f);
            r9.y = (r0.z * r12.x);
            r9.y = fma(r11.x, r1.y, r9.y);
            r11 = textureSampleLevel(t10, s10, r10.zwzz.xy, 0.0f);
            r9.y = fma(r11.x, r3.x, r9.y);
            r10 = textureSampleLevel(t13, s13, r10.zwzz.xy, 0.0f);
            r9.y = fma(r10.x, r1.w, r9.y);
            r8.x = r7.w;
            let v_26 = r8;
            r8 = vec4<f32>(r8.xy, v_26.yw);
            r7.w = r9.x;
            r8.y = r9.y;
          } else {
            r8.w = r0.x;
          }
          r8.w = bitcast<f32>((bitcast<i32>(r8.w) + 1i));
        }
        let v_27 = -(r8.yyyy);
        r0.x = (r7.w + v_27.x);
        r5.w = ((-(r8.zzzz)).w + r8.x);
        r6.x = ((-(r0.xxxx)).x + r5.w);
        r6.y = bitcast<f32>(select(0u, 4294967295u, !((r6.x == 0.0f))));
        r0.x = (r0.x * r8.x);
        let v_28 = -(r0.xxxx);
        r0.x = fma(r7.w, r5.w, v_28.x);
        r0.x = (r0.x / r6.x);
        r0.x = ((-(r0.xxxx)).x + 1.0f);
        r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r6.y)));
        let v_29 = fma(r6.zw, r0.xx, r5.xy);
        r6 = vec4<f32>(v_29.xy, r6.zw);
        r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[0u].w)));
        r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r5.z)));
        if ((bitcast<u32>(r0.x) != 0u)) {
          r5 = (r7.xyxy / r7.zzzz);
          r5 = (r3.yyyy * r5);
          r0.x = 0.0f;
          r3.y = 0.0f;
          loop {
            r6.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.y) >= 7i)));
            if ((bitcast<u32>(r6.w) != 0u)) {
              break;
            }
            r6.w = f32(bitcast<i32>(r3.y));
            r6.w = fma((-(r6.wwww)).w, 0.14285714924335479736f, 1.0f);
            r7 = fma(r5, r6.wwww, v1);
            r8 = textureSampleLevel(t4, s4, r7.xyxx.xy, 0.0f);
            r9 = textureSampleLevel(t7, s7, r7.zwzz.xy, 0.0f);
            r7.x = (r0.z * r9.x);
            r7.x = fma(r8.x, r1.y, r7.x);
            r8 = textureSampleLevel(t10, s10, r7.zwzz.xy, 0.0f);
            r7.x = fma(r8.x, r3.x, r7.x);
            r8 = textureSampleLevel(t13, s13, r7.zwzz.xy, 0.0f);
            r7.x = fma(r8.x, r1.w, r7.x);
            r7.x = ((-(r0.yyyy)).x + r7.x);
            r6.w = ((-(r6.wwww)).w + r7.x);
            r3.y = bitcast<f32>((bitcast<i32>(r3.y) + 1i));
            r7.x = f32(bitcast<i32>(r3.y));
            r6.w = (r6.w * r7.x);
            r0.x = max(r0.x, r6.w);
          }
          r0.x = min(r0.x, 1.0f);
          r6.z = fma((-(r0.xxxx)).z, cb12_12.tint_symbol_3[0u].w, 1.0f);
        } else {
          r6.z = 1.0f;
        }
      } else {
        r6 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r6.w);
      }
      r0.x = bitcast<f32>(v.tint_symbol_4[0i].x);
    } else {
      r6 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r6.w);
      r0.x = 0.0f;
    }
    let v_30 = bitcast<vec3<u32>>(r0.xxx);
    let v_31 = select(vec3<f32>(0.0f, 0.0f, 1.0f), r6.xyz, (v_30 != vec3<u32>()));
    r0 = vec4<f32>(v_31.xyz, r0.w);
  }
  r5 = (r0.xyxy + v1);
  let v_32 = clamp(v2.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r6 = vec4<f32>(v_32.xyz, r6.w);
  let v_33 = ((-(r6.xyzx)).xyz + vec3<f32>(1.0f));
  r7 = vec4<f32>(v_33.xyz, r7.w);
  r0.x = (r7.y * r7.x);
  r0.y = (r7.z * r0.x);
  r0.x = (r6.z * r0.x);
  r1.y = (r6.y * r7.x);
  r1.w = (r7.z * r1.y);
  r1.y = (r6.z * r1.y);
  r6 = textureSample(t2, s2, r5.xyxx.xy);
  r7 = textureSample(t5, s5, r5.zwzz.xy);
  let v_34 = (r0.xxx * r7.xyz);
  r7 = vec4<f32>(v_34.xyz, r7.w);
  let v_35 = fma(r6.xyz, r0.yyy, r7.xyz);
  r6 = vec4<f32>(v_35.xyz, r6.w);
  r7 = textureSample(t8, s8, r5.zwzz.xy);
  let v_36 = fma(r7.xyz, r1.www, r6.xyz);
  r6 = vec4<f32>(v_36.xyz, r6.w);
  r7 = textureSample(t11, s11, r5.zwzz.xy);
  let v_37 = fma(r7.xyz, r1.yyy, r6.xyz);
  r6 = vec4<f32>(v_37.xyz, r6.w);
  r7 = vec4<f32>((((-(v2.xyzx)).xyz + vec3<f32>(1.0f))).xyz, r7.w);
  r0.x = (r7.y * r7.x);
  r0.y = (r7.z * r0.x);
  r0.x = (r0.x * v2.z);
  r1.y = (r7.x * v2.y);
  r1.w = (r7.z * r1.y);
  r1.y = (r1.y * v2.z);
  r7 = textureSample(t3, s3, r5.xyxx.xy);
  r8 = textureSample(t6, s6, r5.zwzz.xy);
  let v_38 = (r0.xx * r8.xy);
  r3 = vec4<f32>(v_38.xy, r3.zw);
  let v_39 = fma(r7.xy, r0.yy, r3.xy);
  r0 = vec4<f32>(v_39.xy, r0.zw);
  r7 = textureSample(t9, s9, r5.zwzz.xy);
  let v_40 = fma(r7.xy, r1.ww, r0.xy);
  r0 = vec4<f32>(v_40.xy, r0.zw);
  r5 = textureSample(t12, s12, r5.zwzz.xy);
  let v_41 = fma(r5.xy, r1.yy, r0.xy);
  r0 = vec4<f32>(v_41.xy, r0.zw);
  let v_42 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_42.xy, r0.zw);
  r1.y = dot(r0.xy, r0.xy);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.y = sqrt(abs(r1.yyyy).y);
  r1.w = max(cb12_12.tint_symbol_3[0u].z, 0.00100000004749745131f);
  let v_43 = (r0.xy * r1.ww);
  r0 = vec4<f32>(v_43.xy, r0.zw);
  let v_44 = (r0.yyy * v6.xyz);
  r5 = vec4<f32>(v_44.xyz, r5.w);
  let v_45 = fma(r0.xxx, v5.xyz, r5.xyz);
  r5 = vec4<f32>(v_45.xyz, r5.w);
  let v_46 = fma(r1.yyy, v3.xyz, r5.xyz);
  r5 = vec4<f32>(v_46.xyz, r5.w);
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_47 = (r0.xxx * r5.xyz);
  r5 = vec4<f32>(v_47.xy, r5.z, v_47.z);
  r0.y = (cb12_12.tint_symbol_3[0u].y * cb12_12.tint_symbol_3[0u].y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.w < 1.0f)));
  r4.y = (r1.x / cb2_2.tint_symbol[3u].w);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r6.w = 1.0f;
  let v_48 = bitcast<vec4<u32>>(r1.yyyy);
  let v_49 = r4;
  r4 = select(r6, v_49, (v_48 != vec4<u32>()));
  let v_50 = bitcast<vec4<u32>>(r3.zzzz);
  let v_51 = r4;
  r4 = select(r6, v_51, (v_50 != vec4<u32>()));
  r2.z = ((-(r2.yyyy)).z + 1.0f);
  r2.w = 0.0f;
  let v_52 = bitcast<vec3<u32>>(r3.www);
  let v_53 = r2.xzw;
  let v_54 = select(r4.xyz, v_53, (v_52 != vec3<u32>()));
  r1 = vec4<f32>(v_54.xy, r1.z, v_54.z);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r0.w == 1.0f)));
  r2.y = dot(r6.xyz, vec3<f32>(1.27499997615814208984f, 4.29239988327026367188f, 0.4325999915599822998f));
  r2.y = ((-(r2.yyyy)).y + 0.5f);
  r2.y = clamp(((-(r2.yyyy) + v3.wwww)).y, 0.0f, 1.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.80000001192092895508f < r0.w)));
  r0.w = (r0.w + -0.80000001192092895508f);
  r0.w = (r0.w * 5.0f);
  r2.w = ((-(r0.zzzz)).w + r2.y);
  r0.w = fma(r0.w, r2.w, r0.z);
  let v_55 = bitcast<u32>(r2.z);
  let v_56 = r0.w;
  r0.z = select(r0.z, v_56, (v_55 != 0u));
  let v_57 = bitcast<u32>(r2.x);
  let v_58 = r2.y;
  o2.w = select(r0.z, v_58, (v_57 != 0u));
  r0.z = clamp(fma(r1.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).z, 0.0f, 1.0f);
  o0.w = (r4.w * cb2_2.tint_symbol[15u].x);
  let v_59 = fma(r5.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_59.xyz, o1.w);
  r0.w = (cb12_12.tint_symbol_3[3u].y + -0.10000000149011611938f);
  r0.w = clamp(((r0.wwww * vec4<f32>(10.0f))).w, 0.0f, 1.0f);
  o1.w = (r0.w * r0.z);
  r0.z = (cb12_12.tint_symbol_3[0u].x * 0.001953125f);
  r2.x = (v4.x + cb3_3.tint_symbol_1[45u].w);
  r2.y = v4.y;
  let v_60 = (r2.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_60.xy, r2.zw);
  let v_61 = sqrt(r2.xy);
  o3 = vec4<f32>(v_61.xy, o3.zw);
  r0.x = fma(r5.z, r0.x, -0.34999999403953552246f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r0.x = (r0.w * r0.x);
  r0.x = (r0.x * v4.x);
  r0.w = fma((-(r0.yyyy)).w, 0.5f, 1.0f);
  r0.w = (r0.w * r0.x);
  r1.z = ((-(cb12_12.tint_symbol_3[3u].yyyy)).z + 1.0f);
  r0.w = (r0.w * r1.z);
  r0.x = (r0.x * cb12_12.tint_symbol_3[3u].y);
  r0.w = fma(r0.w, -0.5f, 1.0f);
  let v_62 = (r0.www * r1.xyw);
  o0 = vec4<f32>(v_62.xyz, o0.w);
  let v_63 = (-(r0.yzyy)).xy;
  r1 = vec4<f32>(v_63.xy, r1.zw);
  let v_64 = (r1.xy + vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_64.xy, r1.zw);
  let v_65 = max(r1.xy, vec2<f32>());
  r1 = vec4<f32>(v_65.xy, r1.zw);
  r2.x = fma(r1.x, r0.x, r0.y);
  r2.y = fma(r1.y, r0.x, r0.z);
  o2.z = 0.98000001907348632812f;
  let v_66 = sqrt(r2.xy);
  o2 = vec4<f32>(v_66.xy, o2.zw);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_6(o0, o1, o2, o3);
}
