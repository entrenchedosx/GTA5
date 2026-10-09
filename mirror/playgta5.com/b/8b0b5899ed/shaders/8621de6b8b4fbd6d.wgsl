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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  let v_3 = clamp(v1.zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb2_2.tint_symbol_1[2u].xy == vec2<f32>(1.0f))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  if ((bitcast<u32>(r1.x) != 0u)) {
    r2 = v1.xyxy;
    let v_5 = r1;
    r1 = vec4<f32>(v1.x, v_5.y, v1.y, v_5.w);
  } else {
    r1.z = ((-(r0.xxxx)).z + 1.0f);
    r1.w = ((-(v1.wwww)).w + 1.0f);
    r1.w = max(r1.w, 0.10000000149011611938f);
    r1.w = min(r1.w, 1.0f);
    r2.x = dot(v4.xyz, v3.xyz);
    r2.y = dot(v5.xyz, v3.xyz);
    r2.z = dot(v2.xyz, v3.xyz);
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = inverseSqrt(r2.w);
    let v_6 = (r2.www * r2.xyz);
    r2 = vec4<f32>(v_6.xyz, r2.w);
    r1.w = max(r1.w, r2.z);
    r2.z = dot(v3.xyz, v3.xyz);
    r2.z = inverseSqrt(r2.z);
    let v_7 = (r2.zzz * v3.xyz);
    r3 = vec4<f32>(v_7.xyz, r3.w);
    r2.z = dot(v2.xyz, v2.xyz);
    r2.z = inverseSqrt(r2.z);
    let v_8 = (r2.zzz * v2.xyz);
    r4 = vec4<f32>(v_8.xyz, r4.w);
    r2.z = dot(r3.xyz, r4.xyz);
    r2.w = ((-(cb2_2.tint_symbol_1[3u].wwww)).w + cb2_2.tint_symbol_1[3u].z);
    r2.w = fma(abs(r2.zzzz).w, r2.w, cb2_2.tint_symbol_1[3u].w);
    r1.z = (r1.z * cb2_2.tint_symbol_1[1u].x);
    r3.x = clamp(((r2.wwww + vec4<f32>(-1.0f))).x, 0.0f, 1.0f);
    r1.z = (r1.z * r3.x);
    r2.z = (abs(r2.zzzz).z * 4.0f);
    r2.z = min(r2.z, 1.0f);
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
      let v_17 = dpdx(v1.xy);
      let v_18 = r2;
      r2 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
      let v_19 = dpdy(v1.xy);
      r3 = vec4<f32>(r3.xy, v_19.xy);
      r4 = textureSampleGrad(t2, s2, v1.xyxx.xy, r2.yz, r3.zw);
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
          let v_23 = (r4.xy + v1.xy);
          r6 = vec4<f32>(v_23.xy, r6.zw);
          let v_24 = r2.yz;
          let v_25 = r3.zw;
          r6 = textureSampleGrad(t2, s2, r6.xyxx.xy, v_24, v_25);
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
    let v_35 = (r1.xz + v1.xy);
    let v_36 = r1;
    r1 = vec4<f32>(v_35.x, v_36.y, v_35.y, v_36.w);
    r2 = r1.xzxz;
  }
  r3 = textureSample(t0, s0, r2.xyxx.xy);
  r4 = textureSample(t3, s3, r1.xzxx.xy);
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
  let v_41 = (r1.zzz * v5.xyz);
  r4 = vec4<f32>(v_41.xyz, r4.w);
  let v_42 = fma(r1.xxx, v4.xyz, r4.xyz);
  r4 = vec4<f32>(v_42.xyz, r4.w);
  let v_43 = fma(r1.www, v2.xyz, r4.xyz);
  r1 = vec4<f32>(v_43.x, r1.y, v_43.yz);
  r4.x = dot(r1.xzw, r1.xzw);
  r4.x = inverseSqrt(r4.x);
  let v_44 = (r1.xzw * r4.xxx);
  r4 = vec4<f32>(r4.x, v_44.xyz);
  r5 = textureSample(t4, s4, r2.zwzz.xy);
  let v_45 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_45.xy, r5.zw);
  r1.x = dot(r5.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  r5.x = dot(v4.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r5.y = dot(v5.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r1.z = dot(v2.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r2.z = ((-(v1.zzzz)).z + 1.0f);
  r2.w = (cb2_2.tint_symbol_1[1u].x * cb12_12.tint_symbol_4[2u].x);
  let v_46 = (r2.ww * r5.xy);
  r5 = vec4<f32>(v_46.xy, r5.zw);
  let v_47 = (r2.zz * r5.xy);
  r2 = vec4<f32>(r2.xy, v_47.xy);
  let v_48 = (r2.zw / r1.zz);
  r2 = vec4<f32>(r2.xy, v_48.xy);
  r6 = textureSample(t2, s2, r2.xyxx.xy);
  r7 = fma(r2.zwzw, vec4<f32>(0.87999999523162841797f, 0.87999999523162841797f, 0.76999998092651367188f, 0.76999998092651367188f), r2.xyxy);
  r8 = textureSample(t2, s2, r7.xyxx.xy);
  r1.z = ((-(r6.xxxx)).z + r8.x);
  r1.z = (r1.z + -0.87999999523162841797f);
  r7 = textureSample(t2, s2, r7.zwzz.xy);
  r5.x = ((-(r6.xxxx)).x + r7.x);
  r5.x = (r5.x + -0.76999998092651367188f);
  r5.x = (r5.x + r5.x);
  r7 = fma(r2.zwzw, vec4<f32>(0.66000002622604370117f, 0.66000002622604370117f, 0.55000001192092895508f, 0.55000001192092895508f), r2.xyxy);
  r8 = textureSample(t2, s2, r7.xyxx.xy);
  r5.y = ((-(r6.xxxx)).y + r8.x);
  r5.y = (r5.y + -0.66000002622604370117f);
  r7 = textureSample(t2, s2, r7.zwzz.xy);
  r5.z = ((-(r6.xxxx)).z + r7.x);
  r5.z = (r5.z + -0.55000001192092895508f);
  let v_49 = (r5.yz * vec2<f32>(4.0f, 6.0f));
  let v_50 = r5;
  r5 = vec4<f32>(v_50.x, v_49.xy, v_50.w);
  r7 = fma(r2.zwzw, vec4<f32>(0.43999999761581420898f, 0.43999999761581420898f, 0.33000001311302185059f, 0.33000001311302185059f), r2.xyxy);
  r8 = textureSample(t2, s2, r7.xyxx.xy);
  r6.y = ((-(r6.xxxx)).y + r8.x);
  r6.y = (r6.y + -0.43999999761581420898f);
  r7 = textureSample(t2, s2, r7.zwzz.xy);
  r6.z = ((-(r6.xxxx)).z + r7.x);
  r6.z = (r6.z + -0.33000001311302185059f);
  let v_51 = (r6.yz * vec2<f32>(8.0f, 10.0f));
  let v_52 = r6;
  r6 = vec4<f32>(v_52.x, v_51.xy, v_52.w);
  let v_53 = fma(r2.zw, vec2<f32>(0.21999999880790710449f), r2.xy);
  r2 = vec4<f32>(v_53.xy, r2.zw);
  r2 = textureSample(t2, s2, r2.xyxx.xy);
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
  r0.w = (r3.w * v0.w);
  let v_57 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_57.xy, r2.zw);
  let v_58 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_58.xyz, r0.w);
  let v_59 = -(v6.xyzx);
  let v_60 = (v_59.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_60.xyz, r3.w);
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_61 = (r1.yyy * r3.xyz);
  r5 = vec4<f32>(v_61.xyz, r5.w);
  let v_62 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_63 = fma(r3.xyz, r1.yyy, v_62.xyz);
  r6 = vec4<f32>(v_63.xyz, r6.w);
  r2.z = dot(r6.xyz, r6.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_64 = (r2.zzz * r6.xyz);
  r6 = vec4<f32>(v_64.xyz, r6.w);
  r2.z = fma(r5.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r2.z = max(r2.z, 0.0f);
  let v_65 = -(r2.zzzz);
  r2.w = fma(r5.w, cb12_12.tint_symbol_4[0u].y, v_65.w);
  r2.z = (r2.z * 558.0f);
  r2.z = fma(r2.w, 3.0f, r2.z);
  r2.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_66 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_66.xyz, r7.w);
  let v_67 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_67.xyz, r8.w);
  let v_68 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_68.xyz, r8.w);
  let v_69 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_69.xyz, r8.w);
  let v_70 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_70.xyz, r9.w);
  let v_71 = &(x0[0u]);
  let v_72 = r9;
  *(v_71) = vec4<f32>(v_72.xyz, (*(v_71)).w);
  let v_73 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_73.xyz, r10.w);
  let v_74 = &(x0[1u]);
  let v_75 = r10;
  *(v_74) = vec4<f32>(v_75.xyz, (*(v_74)).w);
  let v_76 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_76.xyz, r11.w);
  let v_77 = &(x0[2u]);
  let v_78 = r11;
  *(v_77) = vec4<f32>(v_78.xyz, (*(v_77)).w);
  let v_79 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_79.xyz, r8.w);
  let v_80 = &(x0[3u]);
  let v_81 = r8;
  *(v_80) = vec4<f32>(v_81.xyz, (*(v_80)).w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_83 = r12;
  r12 = vec4<f32>(v_83.x, v_82.x, v_83.z, v_82.y);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_84 = abs(r11.yyyy);
  r5.w = max(v_84.w, abs(r11.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_85 = (bitcast<u32>(r5.w) != 0u);
  let v_86 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_86, v_85);
  let v_87 = abs(r10.yyyy);
  r6.w = max(v_87.w, abs(r10.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r3.w)));
  let v_88 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_88 != 0u));
  let v_89 = abs(r9.yyyy);
  r6.w = max(v_89.w, abs(r9.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r3.w)));
  let v_90 = bitcast<u32>(r3.w);
  r3.w = select(r5.w, 0.0f, (v_90 != 0u));
  let v_91 = x0[bitcast<i32>(r3.w)];
  r9 = vec4<f32>(v_91.xyz, r9.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r5.w = (r3.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r3.w = dot(r10, cb6_6.tint_symbol_5[12u]);
  r6.w = dot(r10, cb6_6.tint_symbol_5[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r9.z);
  let v_92 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_92.xy, r11.z, v_92.z);
  r11.z = dpdx(r3.w);
  let v_93 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_93.xyz, r13.w);
  r13.w = dpdy(r3.w);
  let v_94 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_94.xy);
  let v_95 = -(r8.zwzz);
  let v_96 = fma(r11.xz, r13.xz, v_95.xy);
  r14 = vec4<f32>(v_96.xy, r14.zw);
  r7.w = (1.0f / r14.x);
  r8.z = (r11.z * r13.y);
  let v_97 = -(r8.zzzz);
  r14.z = fma(r11.x, r13.w, v_97.z);
  let v_98 = (r7.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_98.xy);
  let v_99 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_99.xy);
  let v_100 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_100.xy);
  r3.w = fma((-(r6.wwww)).w, r8.z, r3.w);
  r3.w = fma((-(r6.wwww)).w, r8.w, r3.w);
  let v_101 = bitcast<u32>(r5.w);
  let v_102 = r3.w;
  r12.z = select(r9.z, v_102, (v_101 != 0u));
  r10.z = 0.0f;
  let v_103 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_103.xyz, r9.w);
  let v_104 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_104.xy, r12.zw);
  let v_105 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_105.xyz, r11.w);
  let v_106 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_106.xy, r12.zw);
  let v_107 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_107.xyz, r13.w);
  let v_108 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_108.xy, r12.zw);
  let v_109 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_109.xyz, r14.w);
  let v_110 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_110.xy, r12.zw);
  let v_111 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_111.xyz, r15.w);
  let v_112 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_112.xy, r12.zw);
  let v_113 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_113.xyz, r16.w);
  let v_114 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_114.xy, r12.zw);
  let v_115 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_115.xyz, r17.w);
  let v_116 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_116.xy, r12.zw);
  let v_117 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_117.xyz, r18.w);
  let v_118 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_118.xy, r12.zw);
  let v_119 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_119.xyz, r19.w);
  let v_120 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_120.xy, r12.zw);
  let v_121 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_121.xyz, r20.w);
  let v_122 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_122.xy, r12.zw);
  let v_123 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_123.xyz, r21.w);
  let v_124 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_124.xy, r12.zw);
  let v_125 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_125.xyz, r22.w);
  let v_126 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_126.xy, r12.zw);
  let v_127 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_127.xyz, r23.w);
  let v_128 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_128.xy, r12.zw);
  let v_129 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_129.xyz, r24.w);
  let v_130 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_130.xy, r12.zw);
  let v_131 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_131.xyz, r25.w);
  let v_132 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_132.xy, r12.zw);
  let v_133 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_133.xyz, r10.w);
  let v_134 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_134.xy, r9.z);
  let v_135 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_135.xy, r11.z);
  let v_136 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_136.xy, r13.z);
  let v_137 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_137.xy, r14.z);
  let v_138 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_138.xy, r15.z);
  let v_139 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_139.xy, r16.z);
  let v_140 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_140.xy, r17.z);
  let v_141 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_141.xy, r18.z);
  let v_142 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_142.xy, r19.z);
  let v_143 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_143.xy, r20.z);
  let v_144 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_144.xy, r21.z);
  let v_145 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_145.xy, r22.z);
  let v_146 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_146.xy, r23.z);
  let v_147 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_147.xy, r24.z);
  let v_148 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_148.xy, r25.z);
  let v_149 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_149.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r3.w = dot(r9, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_150 = abs(r8.yyyy);
  r5.w = max(v_150.w, abs(r8.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r5.w * r2.w);
  r2.w = fma(r3.w, 0.0625f, r2.w);
  let v_151 = (r2.xyw * r2.xyw);
  r2 = vec4<f32>(v_151.xy, r2.z, v_151.z);
  r2.w = min(r2.w, 1.0f);
  r3.w = clamp(fma(v6.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_5[3u].z);
  let v_152 = -(r2.wwww);
  r2.w = fma(r3.w, v_152.w, r2.w);
  r1.z = (r1.z * r2.w);
  let v_153 = dot(r4.yzw, v_62.xyz);
  r2.w = clamp(vec4<f32>(v_153, v_153, v_153, v_153).w, 0.0f, 1.0f);
  let v_154 = dot(r5.xyz, r4.yzw);
  r8.x = clamp(vec4<f32>(v_154, v_154, v_154, v_154).x, 0.0f, 1.0f);
  let v_155 = dot(r6.xyz, v_62.xyz);
  r8.y = clamp(vec4<f32>(v_155, v_155, v_155, v_155).y, 0.0f, 1.0f);
  let v_156 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_156.xy, r8.zw);
  let v_157 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_157.xy);
  let v_158 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_158.xy);
  let v_159 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_159.xy, r8.zw);
  r3.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_160 = fma(cb12_12.tint_symbol_4[0u].xx, r8.xy, r3.ww);
  r8 = vec4<f32>(v_160.xy, r8.zw);
  let v_161 = (r2.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_161.xy);
  r5.w = (r8.z * 0.125f);
  r6.w = fma((-(r1.xxxx)).w, r8.x, 1.0f);
  r6.x = dot(r4.yzw, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r8.w);
  r6.x = exp2(r6.x);
  r6.x = (r8.y * r6.x);
  r6.x = (r5.w * r6.x);
  r6.x = (r1.x * r6.x);
  r6.x = (r2.w * r6.x);
  r2.w = (r2.w * r6.w);
  let v_162 = fma(r0.xyz, r2.www, r6.xxx);
  r6 = vec4<f32>(v_162.xyz, r6.w);
  let v_163 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_163.xyz, r6.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r9 = vec4<f32>(r9.x, vec3<f32>());
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_164 = (v_59.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_164.xyz, r8.w);
    let v_165 = (v6.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_165.xyz, r9.w);
    r9.x = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[19u].wwww)).x, 0.0f, 1.0f);
    r9.x = (r9.x * cb3_3.tint_symbol_2[19u].w);
    let v_166 = fma(cb3_3.tint_symbol_2[11u].xyz, r9.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_166.xyz, r9.w);
    let v_167 = (r9.xyz + v_59.xyz);
    r9 = vec4<f32>(v_167.xyz, r9.w);
    let v_168 = bitcast<vec3<u32>>(r7.www);
    let v_169 = r8.xyz;
    let v_170 = select(r9.xyz, v_169, (v_168 != vec3<u32>()));
    r8 = vec4<f32>(v_170.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    let v_171 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_171.xyz, r8.w);
    r9.x = dot(r8.xyz, r8.xyz);
    r9.x = inverseSqrt(r9.x);
    let v_172 = (r8.xyz * r9.xxx);
    r8 = vec4<f32>(v_172.xyz, r8.w);
    r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r9.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[11u].w);
    r7.w = (r7.w / r9.x);
    let v_173 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.x = dot(r8.xyz, v_173.xyz);
    r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_174 = dot(r8.xyz, r4.yzw);
    r9.y = clamp(vec4<f32>(v_174, v_174, v_174, v_174).y, 0.0f, 1.0f);
    r9.x = (r9.x * r9.y);
    r9.y = (r7.w * r9.x);
    let v_175 = (r9.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(r9.x, v_175.xyz);
    let v_176 = (r0.xyz * r9.yzw);
    r9 = vec4<f32>(r9.x, v_176.xyz);
    let v_177 = fma(r3.xyz, r1.yyy, r8.xyz);
    r8 = vec4<f32>(v_177.xyz, r8.w);
    r10.x = dot(r8.xyz, r8.xyz);
    r10.x = inverseSqrt(r10.x);
    let v_178 = (r8.xyz * r10.xxx);
    r8 = vec4<f32>(v_178.xyz, r8.w);
    let v_179 = dot(r8.xyz, r5.xyz);
    r10.x = clamp(vec4<f32>(v_179, v_179, v_179, v_179).x, 0.0f, 1.0f);
    r10.x = ((-(r10.xxxx)).x + 1.0f);
    r10.y = (r10.x * r10.x);
    r10.y = (r10.y * r10.y);
    r10.x = (r10.y * r10.x);
    r10.x = fma(cb12_12.tint_symbol_4[0u].x, r10.x, r3.w);
    let v_180 = dot(r8.xyz, r4.yzw);
    r8.x = clamp(vec4<f32>(v_180, v_180, v_180, v_180).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.w);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r10.x);
    r8.x = (r9.x * r8.x);
    r7.w = (r7.w * r8.x);
    r7.w = (r5.w * r7.w);
    let v_181 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_181.xyz, r8.w);
  }
  r7.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.w) != 0u)) {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r7.w)));
    let v_182 = bitcast<u32>(r9.x);
    let v_183 = r7.w;
    r2.w = select(r2.w, v_183, (v_182 != 0u));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_184 = (v_59.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_184.xyz, r10.w);
      let v_185 = (v6.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_185.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[20u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[20u].w);
      let v_186 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.xxx, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      let v_187 = (r11.xyz + v_59.xyz);
      r11 = vec4<f32>(v_187.xyz, r11.w);
      let v_188 = bitcast<vec3<u32>>(r7.www);
      let v_189 = r10.xyz;
      let v_190 = select(r11.xyz, v_189, (v_188 != vec3<u32>()));
      r10 = vec4<f32>(v_190.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_191 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_191.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_192 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_192.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[12u].w);
      r7.w = (r7.w / r9.x);
      let v_193 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.x = dot(r10.xyz, v_193.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_194 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_194, v_194, v_194, v_194).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_195 = (r10.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      let v_196 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_196.xyz);
      let v_197 = fma(r3.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_197.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_198 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_198.xyz, r10.w);
      let v_199 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_199, v_199, v_199, v_199).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r3.w);
      let v_200 = dot(r10.xyz, r4.yzw);
      r10.x = clamp(vec4<f32>(v_200, v_200, v_200, v_200).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_201 = fma(r7.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_201.xyz, r8.w);
    }
  } else {
    r2.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_202 = (v_59.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_202.xyz, r10.w);
      let v_203 = (v6.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_203.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[21u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[21u].w);
      let v_204 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.xxx, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_204.xyz, r11.w);
      let v_205 = (r11.xyz + v_59.xyz);
      r11 = vec4<f32>(v_205.xyz, r11.w);
      let v_206 = bitcast<vec3<u32>>(r7.www);
      let v_207 = r10.xyz;
      let v_208 = select(r11.xyz, v_207, (v_206 != vec3<u32>()));
      r10 = vec4<f32>(v_208.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_209 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_209.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_210 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_210.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[13u].w);
      r7.w = (r7.w / r9.x);
      let v_211 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.x = dot(r10.xyz, v_211.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_212 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_212, v_212, v_212, v_212).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_213 = (r10.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_213.xyz, r11.w);
      let v_214 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_214.xyz);
      let v_215 = fma(r3.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_215.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_216 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_216.xyz, r10.w);
      let v_217 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_217, v_217, v_217, v_217).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r3.w);
      let v_218 = dot(r10.xyz, r4.yzw);
      r10.x = clamp(vec4<f32>(v_218, v_218, v_218, v_218).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_219 = fma(r7.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_219.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_220 = (v_59.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_220.xyz, r10.w);
      let v_221 = (v6.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_221.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[22u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[22u].w);
      let v_222 = fma(cb3_3.tint_symbol_2[14u].xyz, r9.xxx, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_222.xyz, r11.w);
      let v_223 = (r11.xyz + v_59.xyz);
      r11 = vec4<f32>(v_223.xyz, r11.w);
      let v_224 = bitcast<vec3<u32>>(r7.www);
      let v_225 = r10.xyz;
      let v_226 = select(r11.xyz, v_225, (v_224 != vec3<u32>()));
      r10 = vec4<f32>(v_226.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_227 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_227.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_228 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_228.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[14u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[14u].w);
      r7.w = (r7.w / r9.x);
      let v_229 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r9.x = dot(r10.xyz, v_229.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).x, 0.0f, 1.0f);
      let v_230 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_230, v_230, v_230, v_230).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_231 = (r10.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_231.xyz, r11.w);
      let v_232 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_232.xyz);
      let v_233 = fma(r3.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_233.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_234 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_234.xyz, r10.w);
      let v_235 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_235, v_235, v_235, v_235).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r3.w);
      let v_236 = dot(r10.xyz, r4.yzw);
      r10.x = clamp(vec4<f32>(v_236, v_236, v_236, v_236).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_237 = fma(r7.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_237.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_238 = (v_59.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_238.xyz, r10.w);
      let v_239 = (v6.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_239.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[23u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[23u].w);
      let v_240 = fma(cb3_3.tint_symbol_2[15u].xyz, r9.xxx, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_240.xyz, r11.w);
      let v_241 = (r11.xyz + v_59.xyz);
      r11 = vec4<f32>(v_241.xyz, r11.w);
      let v_242 = bitcast<vec3<u32>>(r7.www);
      let v_243 = r10.xyz;
      let v_244 = select(r11.xyz, v_243, (v_242 != vec3<u32>()));
      r10 = vec4<f32>(v_244.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_245 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_245.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_246 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_246.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[15u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[15u].w);
      r7.w = (r7.w / r9.x);
      let v_247 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r9.x = dot(r10.xyz, v_247.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).x, 0.0f, 1.0f);
      let v_248 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_248, v_248, v_248, v_248).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_249 = (r10.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_249.xyz, r11.w);
      let v_250 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_250.xyz);
      let v_251 = fma(r3.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_251.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_252 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_252.xyz, r10.w);
      let v_253 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_253, v_253, v_253, v_253).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r3.w);
      let v_254 = dot(r10.xyz, r4.yzw);
      r10.x = clamp(vec4<f32>(v_254, v_254, v_254, v_254).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_255 = fma(r7.www, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_255.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_256 = (v_59.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_256.xyz, r10.w);
      let v_257 = (v6.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_257.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[24u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[24u].w);
      let v_258 = fma(cb3_3.tint_symbol_2[16u].xyz, r9.xxx, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_258.xyz, r11.w);
      let v_259 = (r11.xyz + v_59.xyz);
      r11 = vec4<f32>(v_259.xyz, r11.w);
      let v_260 = bitcast<vec3<u32>>(r7.www);
      let v_261 = r10.xyz;
      let v_262 = select(r11.xyz, v_261, (v_260 != vec3<u32>()));
      r10 = vec4<f32>(v_262.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_263 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_263.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_264 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_264.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[16u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[16u].w);
      r7.w = (r7.w / r9.x);
      let v_265 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r9.x = dot(r10.xyz, v_265.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).x, 0.0f, 1.0f);
      let v_266 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_266, v_266, v_266, v_266).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_267 = (r10.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_267.xyz, r11.w);
      let v_268 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_268.xyz);
      let v_269 = fma(r3.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_269.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_270 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_270.xyz, r10.w);
      let v_271 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_271, v_271, v_271, v_271).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r3.w);
      let v_272 = dot(r10.xyz, r4.yzw);
      r10.x = clamp(vec4<f32>(v_272, v_272, v_272, v_272).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_273 = fma(r7.www, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_273.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_274 = (v_59.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_274.xyz, r10.w);
      let v_275 = (v6.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_275.xyz, r11.w);
      r9.x = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_2[25u].wwww)).x, 0.0f, 1.0f);
      r9.x = (r9.x * cb3_3.tint_symbol_2[25u].w);
      let v_276 = fma(cb3_3.tint_symbol_2[17u].xyz, r9.xxx, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_276.xyz, r11.w);
      let v_277 = (r11.xyz + v_59.xyz);
      r11 = vec4<f32>(v_277.xyz, r11.w);
      let v_278 = bitcast<vec3<u32>>(r7.www);
      let v_279 = r10.xyz;
      let v_280 = select(r11.xyz, v_279, (v_278 != vec3<u32>()));
      r10 = vec4<f32>(v_280.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      let v_281 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_281.xyz, r10.w);
      r9.x = dot(r10.xyz, r10.xyz);
      r9.x = inverseSqrt(r9.x);
      let v_282 = (r9.xxx * r10.xyz);
      r10 = vec4<f32>(v_282.xyz, r10.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.x = ((-(cb3_3.tint_symbol_2[17u].wwww)).x + 1.0f);
      r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_2[17u].w);
      r7.w = (r7.w / r9.x);
      let v_283 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r9.x = dot(r10.xyz, v_283.xyz);
      r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).x, 0.0f, 1.0f);
      let v_284 = dot(r10.xyz, r4.yzw);
      r10.w = clamp(vec4<f32>(v_284, v_284, v_284, v_284).w, 0.0f, 1.0f);
      r9.x = (r9.x * r10.w);
      r10.w = (r7.w * r9.x);
      let v_285 = (r10.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_285.xyz, r11.w);
      let v_286 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_286.xyz);
      let v_287 = fma(r3.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_287.xyz, r10.w);
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_288 = (r10.www * r10.xyz);
      r10 = vec4<f32>(v_288.xyz, r10.w);
      let v_289 = dot(r10.xyz, r5.xyz);
      r10.w = clamp(vec4<f32>(v_289, v_289, v_289, v_289).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.x = (r10.w * r10.w);
      r11.x = (r11.x * r11.x);
      r10.w = (r10.w * r11.x);
      r10.w = fma(cb12_12.tint_symbol_4[0u].x, r10.w, r3.w);
      let v_290 = dot(r10.xyz, r4.yzw);
      r10.x = clamp(vec4<f32>(v_290, v_290, v_290, v_290).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r10.x = (r10.x * r10.w);
      r9.x = (r9.x * r10.x);
      r7.w = (r7.w * r9.x);
      r7.w = (r5.w * r7.w);
      let v_291 = fma(r7.www, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_291.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_292 = (v_59.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_292.xyz, r10.w);
      let v_293 = (v6.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_293.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[26u].w);
      let v_294 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.www, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_294.xyz, r11.w);
      let v_295 = (r11.xyz + v_59.xyz);
      r11 = vec4<f32>(v_295.xyz, r11.w);
      let v_296 = bitcast<vec3<u32>>(r2.www);
      let v_297 = r10.xyz;
      let v_298 = select(r11.xyz, v_297, (v_296 != vec3<u32>()));
      r10 = vec4<f32>(v_298.xyz, r10.w);
      r2.w = dot(r10.xyz, r10.xyz);
      let v_299 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_299.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_300 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_300.xyz, r10.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r2.w, cb3_3.tint_symbol_2[18u].w);
      r2.w = (r2.w / r7.w);
      let v_301 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.w = dot(r10.xyz, v_301.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_302 = dot(r10.xyz, r4.yzw);
      r9.x = clamp(vec4<f32>(v_302, v_302, v_302, v_302).x, 0.0f, 1.0f);
      r7.w = (r7.w * r9.x);
      r9.x = (r2.w * r7.w);
      let v_303 = (r9.xxx * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_303.xyz, r11.w);
      let v_304 = fma(r11.xyz, r0.xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_304.xyz);
      let v_305 = fma(r3.xyz, r1.yyy, r10.xyz);
      r3 = vec4<f32>(v_305.xyz, r3.w);
      r1.y = dot(r3.xyz, r3.xyz);
      r1.y = inverseSqrt(r1.y);
      let v_306 = (r1.yyy * r3.xyz);
      r3 = vec4<f32>(v_306.xyz, r3.w);
      let v_307 = dot(r3.xyz, r5.xyz);
      r1.y = clamp(vec4<f32>(v_307, v_307, v_307, v_307).y, 0.0f, 1.0f);
      r1.y = ((-(r1.yyyy)).y + 1.0f);
      r9.x = (r1.y * r1.y);
      r9.x = (r9.x * r9.x);
      r1.y = (r1.y * r9.x);
      r1.y = fma(cb12_12.tint_symbol_4[0u].x, r1.y, r3.w);
      let v_308 = dot(r3.xyz, r4.yzw);
      r3.x = clamp(vec4<f32>(v_308, v_308, v_308, v_308).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r8.w);
      r3.x = exp2(r3.x);
      r1.y = (r1.y * r3.x);
      r1.y = (r7.w * r1.y);
      r1.y = (r2.w * r1.y);
      r1.y = (r5.w * r1.y);
      let v_309 = fma(r1.yyy, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_309.xyz, r8.w);
    }
  }
  r1.y = (r6.w * r6.w);
  r1.x = (r1.x * r1.x);
  let v_310 = (r8.xyz * r1.xxx);
  r3 = vec4<f32>(v_310.xyz, r3.w);
  let v_311 = fma(r1.yyy, r9.yzw, r3.xyz);
  r3 = vec4<f32>(v_311.xyz, r3.w);
  let v_312 = fma(r6.xyz, r1.zzz, r3.xyz);
  r1 = vec4<f32>(v_312.xyz, r1.w);
  r1.w = fma(r1.w, r4.x, cb3_3.tint_symbol_2[43u].w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[44u].w);
  r1.w = max(r1.w, 0.0f);
  let v_313 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.www, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_313.xyz, r3.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_314 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_314.xyz, r6.w);
  let v_315 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_315.xyz, r6.w);
  let v_316 = fma(r3.xyz, r2.www, r6.xyz);
  r3 = vec4<f32>(v_316.xyz, r3.w);
  let v_317 = (r2.yyy * r3.xyz);
  r3 = vec4<f32>(v_317.xyz, r3.w);
  let v_318 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.www, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_318.xyz, r6.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_319 = dot(r8.xyz, r4.yzw);
  r1.w = clamp(vec4<f32>(v_319, v_319, v_319, v_319).w, 0.0f, 1.0f);
  let v_320 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.www, r6.xyz);
  r6 = vec4<f32>(v_320.xyz, r6.w);
  let v_321 = fma(r6.xyz, r2.xxx, r3.xyz);
  r3 = vec4<f32>(v_321.xyz, r3.w);
  let v_322 = (r6.www * r3.xyz);
  r3 = vec4<f32>(v_322.xyz, r3.w);
  let v_323 = fma(r3.xyz, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_323.xyz, r0.w);
  r1.x = ((-(r6.wwww)).x + 1.0f);
  r1.y = dot((-(r5.xyzx)).xyz, r4.yzw);
  r1.y = (r1.y + r1.y);
  let v_324 = -(r1.yyyy);
  let v_325 = -(r5.xxyz);
  let v_326 = fma(r4.yzw, v_324.yzw, v_325.yzw);
  r1 = vec4<f32>(r1.x, v_326.xyz);
  let v_327 = clamp(((r2.zzzz * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, v_327.xy);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r3.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.y = (r2.z * cb5_5.tint_symbol_3[6u].z);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r3.x)));
  r3.z = fma(r2.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.z = (r2.z * r2.z);
  r2.z = fma(r2.z, 5.0f, r3.x);
  let v_328 = bitcast<u32>(r3.y);
  let v_329 = r3.z;
  r2.z = select(r2.z, v_329, (v_328 != 0u));
  let v_330 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_330.xyz, r3.w);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_331 = (r3.xyz / r1.yyy);
  r3 = vec4<f32>(v_331.xyz, r3.w);
  let v_332 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_332.xyz, r3.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_333 = bitcast<vec2<u32>>(r1.yy);
  let v_334 = r3.xy;
  let v_335 = select(r3.zy, v_334, (v_333 != vec2<u32>()));
  let v_336 = r1;
  r1 = vec4<f32>(v_336.x, v_335.xy, v_336.w);
  let v_337 = r2.z;
  r3 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_337);
  r1.y = max(r2.y, r2.x);
  let v_338 = (r1.yyy * r3.xyz);
  r1 = vec4<f32>(r1.x, v_338.xyz);
  let v_339 = (r2.www * r1.yzw);
  r2 = vec4<f32>(v_339.xyz, r2.w);
  let v_340 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_340.xyz, r2.w);
  let v_341 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_341.xyz);
  let v_342 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_342.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.x = sqrt(r0.w);
    let v_343 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_343.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r7.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_344 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_344 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_345 = (r0.www * r7.xyz);
    r2 = vec4<f32>(v_345.xyz, r2.w);
    let v_346 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_346, v_346, v_346, v_346).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_347 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_347, v_347, v_347, v_347).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_348 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_348.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_349 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_349.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_350 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_350.xyz, r2.w);
    let v_351 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_351.xyz, r2.w);
    let v_352 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_352.xyz, r3.w);
    let v_353 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_353.xyz, r2.w);
    let v_354 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_355 = (r2.xyz + v_354.xyz);
    r2 = vec4<f32>(v_355.xyz, r2.w);
    let v_356 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_356.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_357 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_357.xyz, r3.w);
    let v_358 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_358.xy, r1.z, v_358.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_359 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_359.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_360 = -(r0.xyxz);
    let v_361 = fma(r1.xyw, r0.www, v_360.xyw);
    r1 = vec4<f32>(v_361.xy, r1.z, v_361.z);
    let v_362 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_362.xyz, r1.w);
  } else {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.w = sqrt(r0.w);
    let v_363 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_363.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r7.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_364 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_364 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_365 = (r0.www * r7.xyz);
    r3 = vec4<f32>(v_365.xyz, r3.w);
    let v_366 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_366, v_366, v_366, v_366).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_367 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_367, v_367, v_367, v_367).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_368 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_368.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_369 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_369.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_370 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_370.xyz, r3.w);
    let v_371 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_371.xyz, r3.w);
    let v_372 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_372.xyz, r4.w);
    let v_373 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_373.xyz, r3.w);
    let v_374 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_375 = (r3.xyz + v_374.xyz);
    r3 = vec4<f32>(v_375.xyz, r3.w);
    let v_376 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_376.x, r2.y, v_376.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_377 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_377.xyz, r3.w);
    let v_378 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_378.x, r2.y, v_378.yz);
    let v_379 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_379.x, r2.y, v_379.yz);
    let v_380 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_380.xyz, r1.w);
  }
  let v_381 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_381.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_382 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_382);
  return o0;
}
