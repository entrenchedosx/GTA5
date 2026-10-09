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

struct cb3_struct {
  tint_symbol_4 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v8 : vec4<f32>;

var<private> v9 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v8 = v_2;
  x1[0u].x = v9[0u];
  x1[0u].y = v9[1u];
  x1[0u].z = v9[2u];
  x1[0u].w = v9[3u];
  let v_3 = clamp(v2.zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb2_2.tint_symbol_1[2u].xy == vec2<f32>(1.0f))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  if ((bitcast<u32>(r1.x) != 0u)) {
    r2 = v2.xyxy;
    let v_5 = r1;
    r1 = vec4<f32>(v2.x, v_5.y, v2.y, v_5.w);
  } else {
    r1.z = ((-(r0.xxxx)).z + 1.0f);
    r1.w = ((-(v2.wwww)).w + 1.0f);
    r1.w = max(r1.w, 0.10000000149011611938f);
    r1.w = min(r1.w, 1.0f);
    r2.x = dot(v5.xyz, v4.xyz);
    r2.y = dot(v6.xyz, v4.xyz);
    r2.z = dot(v3.xyz, v4.xyz);
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = inverseSqrt(r2.w);
    let v_6 = (r2.www * r2.xyz);
    r2 = vec4<f32>(v_6.xyz, r2.w);
    r1.w = max(r1.w, r2.z);
    r2.z = dot(v4.xyz, v4.xyz);
    r2.z = inverseSqrt(r2.z);
    let v_7 = (r2.zzz * v4.xyz);
    r3 = vec4<f32>(v_7.xyz, r3.w);
    r2.z = dot(v3.xyz, v3.xyz);
    r2.z = inverseSqrt(r2.z);
    let v_8 = (r2.zzz * v3.xyz);
    r4 = vec4<f32>(v_8.xyz, r4.w);
    r2.z = dot(r3.xyz, r4.xyz);
    r2.w = ((-(cb2_2.tint_symbol_1[3u].wwww)).w + cb2_2.tint_symbol_1[3u].z);
    r2.w = fma(abs(r2.zzzz).w, r2.w, cb2_2.tint_symbol_1[3u].w);
    r1.z = (r1.z * cb2_2.tint_symbol_1[1u].x);
    r3.x = clamp(((r2.wwww + vec4<f32>(-1.0f))).x, 0.0f, 1.0f);
    r1.z = (r1.z * r3.x);
    r2.z = clamp(((abs(r2.zzzz) * vec4<f32>(4.0f))).z, 0.0f, 1.0f);
    r1.z = (r1.z * r2.z);
    let v_9 = ((-(r2.xyxx)).xy / r1.ww);
    r3 = vec4<f32>(v_9.xy, r3.zw);
    let v_10 = (r3.xy * cb12_12.tint_symbol_4[2u].xx);
    r3 = vec4<f32>(v_10.xy, r3.zw);
    let v_11 = (r1.zz * r3.xy);
    r3 = vec4<f32>(v_11.xy, r3.zw);
    let v_12 = (r2.xy / r1.ww);
    r2 = vec4<f32>(v_12.xy, r2.zw);
    let v_13 = (r2.xy * cb12_12.tint_symbol_4[2u].yy);
    r2 = vec4<f32>(v_13.xy, r2.zw);
    let v_14 = (r1.zz * r2.xy);
    r1 = vec4<f32>(r1.xy, v_14.xy);
    let v_15 = r2.w;
    let v_16 = max(v_15, -2147483648.0f);
    r2.x = bitcast<f32>(select(select(i32(v_16), 2147483647i, (v_16 >= 2147483648.0f)), 0i, !((v_15 == v_15))));
    r2.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.x) == 0i)));
    r1.x = bitcast<f32>((bitcast<u32>(r1.x) | bitcast<u32>(r2.y)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      r1.x = 0.0f;
    } else {
      r1.x = trunc(r2.w);
      r1.x = (1.0f / r1.x);
      let v_17 = dpdx(v2.xy);
      let v_18 = r2;
      r2 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
      let v_19 = dpdy(v2.xy);
      r3 = vec4<f32>(r3.xy, v_19.xy);
      r4 = textureSampleGrad(t3, s3, v2.xyxx.xy, r2.yz, r3.zw);
      r2.w = (r4.x + 0.00000099999999747524f);
      let v_20 = r1;
      r4 = vec4<f32>(v_20.zw, r4.zw);
      r4 = vec4<f32>(r4.xy, vec2<f32>(1.0f));
      let v_21 = r2;
      r5 = vec4<f32>(v_21.ww, r5.zw);
      r5.z = 0.0f;
      loop {
        r5.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r5.z) >= bitcast<i32>(r2.x))));
        if ((bitcast<u32>(r5.w) != 0u)) {
          break;
        }
        r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.x < r4.z)));
        if ((bitcast<u32>(r5.w) != 0u)) {
          r5.w = ((-(r1.xxxx)).w + r4.z);
          let v_22 = fma(r3.xy, r1.xx, r4.xy);
          r4 = vec4<f32>(v_22.xy, r4.zw);
          let v_23 = (r4.xy + v2.xy);
          r6 = vec4<f32>(v_23.xy, r6.zw);
          let v_24 = r2.yz;
          let v_25 = r3.zw;
          r6 = textureSampleGrad(t3, s3, r6.xyxx.xy, v_24, v_25);
          r4.w = r4.z;
          let v_26 = r5;
          let v_27 = r5;
          r5 = vec4<f32>(v_27.x, v_26.xz, v_27.w);
          r4.z = r5.w;
          r5.x = r6.x;
        } else {
          r5.z = r2.x;
        }
        r5.z = bitcast<f32>((bitcast<i32>(r5.z) + 1i));
      }
      let v_28 = -(r5.xxxx);
      r1.x = (r4.z + v_28.x);
      let v_29 = -(r5.yyyy);
      r2.x = (r4.w + v_29.x);
      r2.y = ((-(r1.xxxx)).y + r2.x);
      r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.y)));
      r1.x = (r1.x * r4.w);
      let v_30 = -(r1.xxxx);
      r1.x = fma(r4.z, r2.x, v_30.x);
      r1.x = (r1.x / r2.y);
      let v_31 = bitcast<vec4<u32>>(r2.zzzz);
      let v_32 = r1.xxxx;
      r1.x = clamp(select(r5.xxxx, v_32, (v_31 != vec4<u32>())).x, 0.0f, 1.0f);
    }
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    let v_33 = fma(r3.xy, r1.xx, r1.zw);
    let v_34 = r1;
    r1 = vec4<f32>(v_33.x, v_34.y, v_33.y, v_34.w);
    let v_35 = (r1.xz + v2.xy);
    let v_36 = r1;
    r1 = vec4<f32>(v_35.x, v_36.y, v_35.y, v_36.w);
    r2 = r1.xzxz;
  }
  r3 = textureSample(t0, s0, r2.xyxx.xy);
  r4 = textureSample(t4, s4, r1.xzxx.xy);
  let v_37 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_38 = r1;
  r1 = vec4<f32>(v_37.x, v_38.y, v_37.y, v_38.w);
  r1.w = dot(r1.xz, r1.xz);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r4.x = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_39 = (r1.xz * r4.xx);
  let v_40 = r1;
  r1 = vec4<f32>(v_39.x, v_40.y, v_39.y, v_40.w);
  let v_41 = (r1.zzz * v6.xyz);
  r4 = vec4<f32>(v_41.xyz, r4.w);
  let v_42 = fma(r1.xxx, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_42.xyz, r4.w);
  let v_43 = fma(r1.www, v3.xyz, r4.xyz);
  r1 = vec4<f32>(v_43.x, r1.y, v_43.yz);
  r4.x = dot(r1.xzw, r1.xzw);
  r4.x = inverseSqrt(r4.x);
  let v_44 = (r1.xzw * r4.xxx);
  r4 = vec4<f32>(r4.x, v_44.xyz);
  r5 = textureSample(t5, s5, r2.zwzz.xy);
  let v_45 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_45.xy, r5.zw);
  r1.x = dot(r5.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  r5.x = dot(v5.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r5.y = dot(v6.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r1.z = dot(v3.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r2.z = ((-(v2.zzzz)).z + 1.0f);
  r2.w = (cb2_2.tint_symbol_1[1u].x * cb12_12.tint_symbol_4[2u].x);
  let v_46 = (r2.ww * r5.xy);
  r5 = vec4<f32>(v_46.xy, r5.zw);
  let v_47 = (r2.zz * r5.xy);
  r2 = vec4<f32>(r2.xy, v_47.xy);
  let v_48 = (r2.zw / r1.zz);
  r2 = vec4<f32>(r2.xy, v_48.xy);
  r6 = textureSample(t3, s3, r2.xyxx.xy);
  r7 = fma(r2.zwzw, vec4<f32>(0.87999999523162841797f, 0.87999999523162841797f, 0.76999998092651367188f, 0.76999998092651367188f), r2.xyxy);
  r8 = textureSample(t3, s3, r7.xyxx.xy);
  r1.z = ((-(r6.xxxx)).z + r8.x);
  r1.z = (r1.z + -0.87999999523162841797f);
  r7 = textureSample(t3, s3, r7.zwzz.xy);
  r5.x = ((-(r6.xxxx)).x + r7.x);
  r5.x = (r5.x + -0.76999998092651367188f);
  r5.x = (r5.x + r5.x);
  r7 = fma(r2.zwzw, vec4<f32>(0.66000002622604370117f, 0.66000002622604370117f, 0.55000001192092895508f, 0.55000001192092895508f), r2.xyxy);
  r8 = textureSample(t3, s3, r7.xyxx.xy);
  r5.y = ((-(r6.xxxx)).y + r8.x);
  r5.y = (r5.y + -0.66000002622604370117f);
  r7 = textureSample(t3, s3, r7.zwzz.xy);
  r5.z = ((-(r6.xxxx)).z + r7.x);
  r5.z = (r5.z + -0.55000001192092895508f);
  let v_49 = (r5.yz * vec2<f32>(4.0f, 6.0f));
  let v_50 = r5;
  r5 = vec4<f32>(v_50.x, v_49.xy, v_50.w);
  r7 = fma(r2.zwzw, vec4<f32>(0.43999999761581420898f, 0.43999999761581420898f, 0.33000001311302185059f, 0.33000001311302185059f), r2.xyxy);
  r8 = textureSample(t3, s3, r7.xyxx.xy);
  r6.y = ((-(r6.xxxx)).y + r8.x);
  r6.y = (r6.y + -0.43999999761581420898f);
  r7 = textureSample(t3, s3, r7.zwzz.xy);
  r6.z = ((-(r6.xxxx)).z + r7.x);
  r6.z = (r6.z + -0.33000001311302185059f);
  let v_51 = (r6.yz * vec2<f32>(8.0f, 10.0f));
  let v_52 = r6;
  r6 = vec4<f32>(v_52.x, v_51.xy, v_52.w);
  let v_53 = fma(r2.zw, vec2<f32>(0.21999999880790710449f), r2.xy);
  r2 = vec4<f32>(v_53.xy, r2.zw);
  r2 = textureSample(t3, s3, r2.xyxx.xy);
  r2.x = ((-(r6.xxxx)).x + r2.x);
  r2.x = (r2.x + -0.21999999880790710449f);
  r2.x = (r2.x * 12.0f);
  r1.z = max(r1.z, r5.x);
  r1.z = max(r5.y, r1.z);
  r1.z = max(r5.z, r1.z);
  r1.z = max(r6.y, r1.z);
  r1.z = max(r6.z, r1.z);
  r1.z = clamp(max(r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  r1.z = fma((-(r1.zzzz)).z, cb12_12.tint_symbol_4[2u].z, 1.0f);
  r0.z = ((-(r0.yyyy)).z + 1.0f);
  r0.w = 0.0f;
  let v_54 = bitcast<vec3<u32>>(r1.yyy);
  let v_55 = r0.xzw;
  let v_56 = select(r3.xyz, v_55, (v_54 != vec3<u32>()));
  r0 = vec4<f32>(v_56.xyz, r0.w);
  let v_57 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_57.xyz, r0.w);
  r0.w = (r3.w * v0.w);
  let v_58 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_58.xy, r2.zw);
  let v_59 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_59.xyz, r0.w);
  let v_60 = ((-(v7.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_60.xyz, r3.w);
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_61 = (r1.yyy * r3.xyz);
  r5 = vec4<f32>(v_61.xyz, r5.w);
  let v_62 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_63 = fma(r3.xyz, r1.yyy, v_62.xyz);
  r6 = vec4<f32>(v_63.xyz, r6.w);
  r1.y = dot(r6.xyz, r6.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_64 = (r1.yyy * r6.xyz);
  r6 = vec4<f32>(v_64.xyz, r6.w);
  r1.y = fma(r5.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r1.y = max(r1.y, 0.0f);
  let v_65 = -(r1.yyyy);
  r2.z = fma(r5.w, cb12_12.tint_symbol_4[0u].y, v_65.z);
  r1.y = (r1.y * 558.0f);
  r1.y = fma(r2.z, 3.0f, r1.y);
  r2.z = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_66 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_66.xyz, r3.w);
  let v_67 = (r3.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_67.xyz, r7.w);
  let v_68 = fma(r3.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_68.xyz, r7.w);
  let v_69 = fma(r3.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_69.xyz, r7.w);
  let v_70 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_70.xyz, r8.w);
  let v_71 = &(x0[0u]);
  let v_72 = r8;
  *(v_71) = vec4<f32>(v_72.xyz, (*(v_71)).w);
  let v_73 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_73.xyz, r9.w);
  let v_74 = &(x0[1u]);
  let v_75 = r9;
  *(v_74) = vec4<f32>(v_75.xyz, (*(v_74)).w);
  let v_76 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_76.xyz, r10.w);
  let v_77 = &(x0[2u]);
  let v_78 = r10;
  *(v_77) = vec4<f32>(v_78.xyz, (*(v_77)).w);
  let v_79 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_79.xyz, r7.w);
  let v_80 = &(x0[3u]);
  let v_81 = r7;
  *(v_80) = vec4<f32>(v_81.xyz, (*(v_80)).w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_83 = r11;
  r11 = vec4<f32>(v_83.x, v_82.x, v_83.z, v_82.y);
  r2.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_84 = abs(r10.yyyy);
  r3.w = max(v_84.w, abs(r10.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_85 = (bitcast<u32>(r3.w) != 0u);
  let v_86 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_86, v_85);
  let v_87 = abs(r9.yyyy);
  r5.w = max(v_87.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r2.w)));
  let v_88 = bitcast<u32>(r5.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_88 != 0u));
  let v_89 = abs(r8.yyyy);
  r5.w = max(v_89.w, abs(r8.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r2.w)));
  let v_90 = bitcast<u32>(r2.w);
  r2.w = select(r3.w, 0.0f, (v_90 != 0u));
  let v_91 = x0[bitcast<i32>(r2.w)];
  r8 = vec4<f32>(v_91.xyz, r8.w);
  r2.w = f32(bitcast<i32>(r2.w));
  r3.w = (r2.w + 0.5f);
  r3.w = (r3.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r2.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r5.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  r2.w = ((-(r2.wwww)).w + r8.z);
  let v_92 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_92.xy, r10.z, v_92.z);
  r10.z = dpdx(r2.w);
  let v_93 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_93.xyz, r12.w);
  r12.w = dpdy(r2.w);
  let v_94 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_94.xy);
  let v_95 = -(r7.zwzz);
  let v_96 = fma(r10.xz, r12.xz, v_95.xy);
  r13 = vec4<f32>(v_96.xy, r13.zw);
  r6.w = (1.0f / r13.x);
  r7.z = (r10.z * r12.y);
  let v_97 = -(r7.zzzz);
  r13.z = fma(r10.x, r12.w, v_97.z);
  let v_98 = (r6.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_98.xy);
  let v_99 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_99.xy);
  let v_100 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_100.xy);
  r2.w = fma((-(r5.wwww)).w, r7.z, r2.w);
  r2.w = fma((-(r5.wwww)).w, r7.w, r2.w);
  let v_101 = bitcast<u32>(r3.w);
  let v_102 = r2.w;
  r11.z = select(r8.z, v_102, (v_101 != 0u));
  r9.z = 0.0f;
  let v_103 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_103.xyz, r8.w);
  let v_104 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_104.xy, r11.zw);
  let v_105 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_105.xyz, r10.w);
  let v_106 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_106.xy, r11.zw);
  let v_107 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_107.xyz, r12.w);
  let v_108 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_108.xy, r11.zw);
  let v_109 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_109.xyz, r13.w);
  let v_110 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_110.xy, r11.zw);
  let v_111 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_111.xyz, r14.w);
  let v_112 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_112.xy, r11.zw);
  let v_113 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_113.xyz, r15.w);
  let v_114 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_114.xy, r11.zw);
  let v_115 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_115.xyz, r16.w);
  let v_116 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_116.xy, r11.zw);
  let v_117 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_117.xyz, r17.w);
  let v_118 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_118.xy, r11.zw);
  let v_119 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_119.xyz, r18.w);
  let v_120 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_120.xy, r11.zw);
  let v_121 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_121.xyz, r19.w);
  let v_122 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_122.xy, r11.zw);
  let v_123 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_123.xyz, r20.w);
  let v_124 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_124.xy, r11.zw);
  let v_125 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_125.xyz, r21.w);
  let v_126 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_126.xy, r11.zw);
  let v_127 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_127.xyz, r22.w);
  let v_128 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_128.xy, r11.zw);
  let v_129 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_129.xyz, r23.w);
  let v_130 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_130.xy, r11.zw);
  let v_131 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_131.xyz, r24.w);
  let v_132 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_132.xy, r11.zw);
  let v_133 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_133.xyz, r9.w);
  let v_134 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_134.xy, r8.z);
  let v_135 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_135.xy, r10.z);
  let v_136 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_136.xy, r12.z);
  let v_137 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_137.xy, r13.z);
  let v_138 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_138.xy, r14.z);
  let v_139 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_139.xy, r15.z);
  let v_140 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_140.xy, r16.z);
  let v_141 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_141.xy, r17.z);
  let v_142 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_142.xy, r18.z);
  let v_143 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_143.xy, r19.z);
  let v_144 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_144.xy, r20.z);
  let v_145 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_145.xy, r21.z);
  let v_146 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_146.xy, r22.z);
  let v_147 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_147.xy, r23.z);
  let v_148 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_148.xy, r24.z);
  let v_149 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_149.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r2.w = dot(r8, vec4<f32>(1.0f));
  r2.z = clamp(fma(r2.zzzz, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).z, 0.0f, 1.0f);
  let v_150 = abs(r7.yyyy);
  r3.w = max(v_150.w, abs(r7.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.z = (r3.w * r2.z);
  r2.z = fma(r2.w, 0.0625f, r2.z);
  let v_151 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_151.xyz, r2.w);
  r2.z = min(r2.z, 1.0f);
  r2.w = clamp(fma(v7.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_5[3u].z);
  let v_152 = -(r2.zzzz);
  r2.z = fma(r2.w, v_152.z, r2.z);
  r1.z = (r1.z * r2.z);
  let v_153 = dot(r4.yzw, v_62.xyz);
  r2.z = clamp(vec4<f32>(v_153, v_153, v_153, v_153).z, 0.0f, 1.0f);
  let v_154 = dot(r5.xyz, r4.yzw);
  r7.x = clamp(vec4<f32>(v_154, v_154, v_154, v_154).x, 0.0f, 1.0f);
  let v_155 = dot(r6.xyz, v_62.xyz);
  r7.y = clamp(vec4<f32>(v_155, v_155, v_155, v_155).y, 0.0f, 1.0f);
  let v_156 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_156.xy, r7.zw);
  let v_157 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_157.xy);
  let v_158 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_158.xy);
  let v_159 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_159.xy, r7.zw);
  r2.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_160 = fma(cb12_12.tint_symbol_4[0u].xx, r7.xy, r2.ww);
  r7 = vec4<f32>(v_160.xy, r7.zw);
  let v_161 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_161.xy);
  r2.w = (r7.z * 0.125f);
  r3.w = fma((-(r1.xxxx)).w, r7.x, 1.0f);
  r5.w = dot(r4.yzw, r6.xyz);
  r5.w = clamp(((r5.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r5.w = log2(r5.w);
  r5.w = (r5.w * r7.w);
  r5.w = exp2(r5.w);
  r5.w = (r7.y * r5.w);
  r2.w = (r2.w * r5.w);
  r1.x = (r1.x * r2.w);
  r1.x = (r2.z * r1.x);
  r2.z = (r2.z * r3.w);
  let v_162 = fma(r0.xyz, r2.zzz, r1.xxx);
  r6 = vec4<f32>(v_162.xyz, r6.w);
  let v_163 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_163.xyz, r6.w);
  r1.x = fma(r1.w, r4.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_164 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(v_164.xyz, r7.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_165 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_165.xyz, r8.w);
  let v_166 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_166.xyz, r8.w);
  let v_167 = fma(r7.xyz, r1.www, r8.xyz);
  r7 = vec4<f32>(v_167.xyz, r7.w);
  let v_168 = (r2.yyy * r7.xyz);
  r7 = vec4<f32>(v_168.xyz, r7.w);
  let v_169 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r8 = vec4<f32>(v_169.xyz, r8.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_170 = dot(r9.xyz, r4.yzw);
  r1.x = clamp(vec4<f32>(v_170, v_170, v_170, v_170).x, 0.0f, 1.0f);
  let v_171 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r8.xyz);
  r8 = vec4<f32>(v_171.xyz, r8.w);
  let v_172 = fma(r8.xyz, r2.xxx, r7.xyz);
  r7 = vec4<f32>(v_172.xyz, r7.w);
  let v_173 = (r3.www * r7.xyz);
  r7 = vec4<f32>(v_173.xyz, r7.w);
  let v_174 = (r0.xyz * r7.xyz);
  r0 = vec4<f32>(v_174.xyz, r0.w);
  let v_175 = fma(r6.xyz, r1.zzz, r0.xyz);
  r0 = vec4<f32>(v_175.xyz, r0.w);
  r1.x = ((-(r3.wwww)).x + 1.0f);
  r1.z = dot((-(r5.xyzx)).xyz, r4.yzw);
  r1.z = (r1.z + r1.z);
  let v_176 = -(r1.zzzz);
  let v_177 = -(r5.xyzx);
  let v_178 = fma(r4.yzw, v_176.xyz, v_177.xyz);
  r4 = vec4<f32>(v_178.xyz, r4.w);
  let v_179 = clamp(((r1.yyyy * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_180 = r1;
  r1 = vec4<f32>(v_180.x, v_179.xy, v_180.w);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.z = (r1.y * cb5_5.tint_symbol_3[6u].z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r1.w)));
  r2.w = fma(r1.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.y = (r1.y * r1.y);
  r1.y = fma(r1.y, 5.0f, r1.w);
  let v_181 = bitcast<u32>(r2.z);
  let v_182 = r2.w;
  r1.y = select(r1.y, v_182, (v_181 != 0u));
  let v_183 = (r4.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_183.xy, r4.z, v_183.z);
  r1.w = (abs(r4.zzzz).w + 1.0f);
  let v_184 = (r4.xyw / r1.www);
  r4 = vec4<f32>(v_184.xy, r4.z, v_184.z);
  let v_185 = ((-(r4.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_185.xy, r4.z, v_185.z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.z)));
  let v_186 = bitcast<vec2<u32>>(r1.ww);
  let v_187 = r4.xy;
  let v_188 = select(r4.wy, v_187, (v_186 != vec2<u32>()));
  r2 = vec4<f32>(r2.xy, v_188.xy);
  let v_189 = r1.y;
  r4 = textureSampleLevel(t1, s1, r2.zwzz.xy, v_189);
  r1.y = max(r2.y, r2.x);
  let v_190 = (r1.yyy * r4.xyz);
  r2 = vec4<f32>(v_190.xyz, r2.w);
  let v_191 = (r1.zzz * r2.xyz);
  r1 = vec4<f32>(r1.x, v_191.xyz);
  let v_192 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_192.xyz);
  let v_193 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_193.xyz);
  let v_194 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_194.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.x = sqrt(r0.w);
    let v_195 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_195.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r3.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_196 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_196 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_197 = (r0.www * r3.xyz);
    r2 = vec4<f32>(v_197.xyz, r2.w);
    let v_198 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_198, v_198, v_198, v_198).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_199 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_199, v_199, v_199, v_199).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_200 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_200.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_201 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_201.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_202 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_202.xyz, r2.w);
    let v_203 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_203.xyz, r2.w);
    let v_204 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_204.xyz, r4.w);
    let v_205 = fma(r1.www, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_205.xyz, r2.w);
    let v_206 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_207 = (r2.xyz + v_206.xyz);
    r2 = vec4<f32>(v_207.xyz, r2.w);
    let v_208 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_208.xyz, r2.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_209 = ((-(r2.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_209.xyz, r4.w);
    let v_210 = fma(r1.xxx, r4.xyz, r2.xyz);
    r1 = vec4<f32>(v_210.xy, r1.z, v_210.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_211 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_211.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_212 = -(r0.xyxz);
    let v_213 = fma(r1.xyw, r0.www, v_212.xyw);
    r1 = vec4<f32>(v_213.xy, r1.z, v_213.z);
    let v_214 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_214.xyz, r1.w);
  } else {
    r0.w = dot(r3.xyz, r3.xyz);
    r1.w = sqrt(r0.w);
    let v_215 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_215.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r3.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_216 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_216 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_217 = (r0.www * r3.xyz);
    r3 = vec4<f32>(v_217.xyz, r3.w);
    let v_218 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_218, v_218, v_218, v_218).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_219 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_219, v_219, v_219, v_219).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_220 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_220.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_221 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_221.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_222 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_222.xyz, r3.w);
    let v_223 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_223.xyz, r3.w);
    let v_224 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_224.xyz, r4.w);
    let v_225 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_225.xyz, r3.w);
    let v_226 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_227 = (r3.xyz + v_226.xyz);
    r3 = vec4<f32>(v_227.xyz, r3.w);
    let v_228 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_228.x, r2.y, v_228.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_229 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_229.xyz, r3.w);
    let v_230 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_230.x, r2.y, v_230.yz);
    let v_231 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_231.x, r2.y, v_231.yz);
    let v_232 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_232.xyz, r1.w);
  }
  let v_233 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_233.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_234 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7, v_234);
  return o0;
}
