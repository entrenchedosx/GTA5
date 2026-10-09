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

struct cb2_struct {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

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
  r0 = textureSample(t0, s0, v2.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r0.x)));
  v_3((bitcast<u32>(r0.x) != 0u));
  let v_4 = clamp(v2.zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb2_2.tint_symbol_1[2u].xy == vec2<f32>(1.0f))));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  if ((bitcast<u32>(r1.x) != 0u)) {
    r2 = vec4<f32>(v2.xy, r2.zw);
    let v_6 = r1;
    r1 = vec4<f32>(v2.x, v_6.y, v2.y, v_6.w);
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
    let v_7 = (r2.www * r2.xyz);
    r2 = vec4<f32>(v_7.xyz, r2.w);
    r1.w = max(r1.w, r2.z);
    r2.z = dot(v4.xyz, v4.xyz);
    r2.z = inverseSqrt(r2.z);
    let v_8 = (r2.zzz * v4.xyz);
    r3 = vec4<f32>(v_8.xyz, r3.w);
    r2.z = dot(v3.xyz, v3.xyz);
    r2.z = inverseSqrt(r2.z);
    let v_9 = (r2.zzz * v3.xyz);
    r4 = vec4<f32>(v_9.xyz, r4.w);
    r2.z = dot(r3.xyz, r4.xyz);
    r2.w = ((-(cb2_2.tint_symbol_1[3u].wwww)).w + cb2_2.tint_symbol_1[3u].z);
    r2.w = fma(abs(r2.zzzz).w, r2.w, cb2_2.tint_symbol_1[3u].w);
    r1.z = (r1.z * cb2_2.tint_symbol_1[1u].x);
    r3.x = clamp(((r2.wwww + vec4<f32>(-1.0f))).x, 0.0f, 1.0f);
    r1.z = (r1.z * r3.x);
    r2.z = (abs(r2.zzzz).z * 4.0f);
    r2.z = min(r2.z, 1.0f);
    r1.z = (r1.z * r2.z);
    let v_10 = ((-(r2.xyxx)).xy / r1.ww);
    r3 = vec4<f32>(v_10.xy, r3.zw);
    let v_11 = (r3.xy * cb12_12.tint_symbol_4[1u].xx);
    r3 = vec4<f32>(v_11.xy, r3.zw);
    let v_12 = (r1.zz * r3.xy);
    r3 = vec4<f32>(v_12.xy, r3.zw);
    let v_13 = (r2.xy / r1.ww);
    r2 = vec4<f32>(v_13.xy, r2.zw);
    let v_14 = (r2.xy * cb12_12.tint_symbol_4[1u].yy);
    r2 = vec4<f32>(v_14.xy, r2.zw);
    let v_15 = (r1.zz * r2.xy);
    r1 = vec4<f32>(r1.xy, v_15.xy);
    let v_16 = r2.w;
    let v_17 = max(v_16, -2147483648.0f);
    r2.x = bitcast<f32>(select(select(i32(v_17), 2147483647i, (v_17 >= 2147483648.0f)), 0i, !((v_16 == v_16))));
    r2.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.x) == 0i)));
    r1.x = bitcast<f32>((bitcast<u32>(r1.x) | bitcast<u32>(r2.y)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      r1.x = 0.0f;
    } else {
      r1.x = trunc(r2.w);
      r1.x = (1.0f / r1.x);
      let v_18 = dpdx(v2.xy);
      let v_19 = r2;
      r2 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
      let v_20 = dpdy(v2.xy);
      r3 = vec4<f32>(r3.xy, v_20.xy);
      r4 = textureSampleGrad(t3, s3, v2.xyxx.xy, r2.yz, r3.zw);
      r2.w = (r4.x + 0.00000099999999747524f);
      let v_21 = r1;
      r4 = vec4<f32>(v_21.zw, r4.zw);
      r4 = vec4<f32>(r4.xy, vec2<f32>(1.0f));
      let v_22 = r2;
      r5 = vec4<f32>(v_22.ww, r5.zw);
      r5.z = 0.0f;
      loop {
        r5.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r5.z) >= bitcast<i32>(r2.x))));
        if ((bitcast<u32>(r5.w) != 0u)) {
          break;
        }
        r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.x < r4.z)));
        if ((bitcast<u32>(r5.w) != 0u)) {
          r5.w = ((-(r1.xxxx)).w + r4.z);
          let v_23 = fma(r3.xy, r1.xx, r4.xy);
          r4 = vec4<f32>(v_23.xy, r4.zw);
          let v_24 = (r4.xy + v2.xy);
          r6 = vec4<f32>(v_24.xy, r6.zw);
          let v_25 = r2.yz;
          let v_26 = r3.zw;
          r6 = textureSampleGrad(t3, s3, r6.xyxx.xy, v_25, v_26);
          r4.w = r4.z;
          let v_27 = r5;
          let v_28 = r5;
          r5 = vec4<f32>(v_28.x, v_27.xz, v_28.w);
          r4.z = r5.w;
          r5.x = r6.x;
        } else {
          r5.z = r2.x;
        }
        r5.z = bitcast<f32>((bitcast<i32>(r5.z) + 1i));
      }
      let v_29 = -(r5.xxxx);
      r1.x = (r4.z + v_29.x);
      let v_30 = -(r5.yyyy);
      r2.x = (r4.w + v_30.x);
      r2.y = ((-(r1.xxxx)).y + r2.x);
      r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.y)));
      r1.x = (r1.x * r4.w);
      let v_31 = -(r1.xxxx);
      r1.x = fma(r4.z, r2.x, v_31.x);
      r1.x = (r1.x / r2.y);
      let v_32 = bitcast<vec4<u32>>(r2.zzzz);
      let v_33 = r1.xxxx;
      r1.x = clamp(select(r5.xxxx, v_33, (v_32 != vec4<u32>())).x, 0.0f, 1.0f);
    }
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    let v_34 = fma(r3.xy, r1.xx, r1.zw);
    let v_35 = r1;
    r1 = vec4<f32>(v_34.x, v_35.y, v_34.y, v_35.w);
    let v_36 = (r1.xz + v2.xy);
    let v_37 = r1;
    r1 = vec4<f32>(v_36.x, v_37.y, v_36.y, v_37.w);
    let v_38 = r1;
    r2 = vec4<f32>(v_38.xz, r2.zw);
  }
  r3 = textureSample(t0, s0, r2.xyxx.xy);
  r4 = textureSample(t4, s4, r1.xzxx.xy);
  let v_39 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_40 = r1;
  r1 = vec4<f32>(v_39.x, v_40.y, v_39.y, v_40.w);
  r1.w = dot(r1.xz, r1.xz);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r2.z = max(cb12_12.tint_symbol_4[0u].w, 0.00100000004749745131f);
  let v_41 = (r1.xz * r2.zz);
  let v_42 = r1;
  r1 = vec4<f32>(v_41.x, v_42.y, v_41.y, v_42.w);
  let v_43 = (r1.zzz * v6.xyz);
  r4 = vec4<f32>(v_43.xyz, r4.w);
  let v_44 = fma(r1.xxx, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_44.xyz, r4.w);
  let v_45 = fma(r1.www, v3.xyz, r4.xyz);
  r1 = vec4<f32>(v_45.x, r1.y, v_45.yz);
  r2.z = dot(r1.xzw, r1.xzw);
  r2.z = inverseSqrt(r2.z);
  let v_46 = (r1.xzw * r2.zzz);
  r4 = vec4<f32>(v_46.xyz, r4.w);
  r5.x = dot(v5.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r5.y = dot(v6.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r1.x = dot(v3.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r1.z = ((-(v2.zzzz)).z + 1.0f);
  r2.w = (cb2_2.tint_symbol_1[1u].x * cb12_12.tint_symbol_4[1u].x);
  let v_47 = (r2.ww * r5.xy);
  r5 = vec4<f32>(v_47.xy, r5.zw);
  let v_48 = (r1.zz * r5.xy);
  r5 = vec4<f32>(v_48.xy, r5.zw);
  let v_49 = (r5.xy / r1.xx);
  let v_50 = r1;
  r1 = vec4<f32>(v_49.x, v_50.y, v_49.y, v_50.w);
  r5 = textureSample(t3, s3, r2.xyxx.xy);
  r6 = fma(r1.xzxz, vec4<f32>(0.87999999523162841797f, 0.87999999523162841797f, 0.76999998092651367188f, 0.76999998092651367188f), r2.xyxy);
  r7 = textureSample(t3, s3, r6.xyxx.xy);
  r2.w = ((-(r5.xxxx)).w + r7.x);
  r2.w = (r2.w + -0.87999999523162841797f);
  r6 = textureSample(t3, s3, r6.zwzz.xy);
  r4.w = ((-(r5.xxxx)).w + r6.x);
  r4.w = (r4.w + -0.76999998092651367188f);
  r4.w = (r4.w + r4.w);
  r6 = fma(r1.xzxz, vec4<f32>(0.66000002622604370117f, 0.66000002622604370117f, 0.55000001192092895508f, 0.55000001192092895508f), r2.xyxy);
  r7 = textureSample(t3, s3, r6.xyxx.xy);
  r5.y = ((-(r5.xxxx)).y + r7.x);
  r5.y = (r5.y + -0.66000002622604370117f);
  r6 = textureSample(t3, s3, r6.zwzz.xy);
  r5.z = ((-(r5.xxxx)).z + r6.x);
  r5.z = (r5.z + -0.55000001192092895508f);
  r6 = fma(r1.xzxz, vec4<f32>(0.43999999761581420898f, 0.43999999761581420898f, 0.33000001311302185059f, 0.33000001311302185059f), r2.xyxy);
  r7 = textureSample(t3, s3, r6.xyxx.xy);
  r5.w = ((-(r5.xxxx)).w + r7.x);
  r5.w = (r5.w + -0.43999999761581420898f);
  let v_51 = (r5.yzw * vec3<f32>(4.0f, 6.0f, 8.0f));
  r5 = vec4<f32>(r5.x, v_51.xyz);
  r6 = textureSample(t3, s3, r6.zwzz.xy);
  r6.x = ((-(r5.xxxx)).x + r6.x);
  r6.x = (r6.x + -0.33000001311302185059f);
  r6.x = (r6.x * 10.0f);
  let v_52 = fma(r1.xz, vec2<f32>(0.21999999880790710449f), r2.xy);
  let v_53 = r1;
  r1 = vec4<f32>(v_52.x, v_53.y, v_52.y, v_53.w);
  r7 = textureSample(t3, s3, r1.xzxx.xy);
  r1.x = ((-(r5.xxxx)).x + r7.x);
  r1.x = (r1.x + -0.21999999880790710449f);
  r1.x = (r1.x * 12.0f);
  r1.z = max(r2.w, r4.w);
  r1.z = max(r5.y, r1.z);
  r1.z = max(r5.z, r1.z);
  r1.z = max(r5.w, r1.z);
  r1.z = max(r6.x, r1.z);
  r1.x = clamp(max(r1.xxxx, r1.zzzz).x, 0.0f, 1.0f);
  r1.x = fma((-(r1.xxxx)).x, cb12_12.tint_symbol_4[1u].z, 1.0f);
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
  let v_59 = r1;
  r1 = vec4<f32>(v_59.x, v_58.xy, v_59.w);
  let v_60 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_60.xyz, r0.w);
  let v_61 = ((-(v7.xyxz)).xyw + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_61.xy, r2.z, v_61.z);
  r3.x = dot(r2.xyw, r2.xyw);
  r3.x = inverseSqrt(r3.x);
  let v_62 = (r2.xyw * r3.xxx);
  r3 = vec4<f32>(r3.x, v_62.xyz);
  let v_63 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_64 = fma(r2.xyw, r3.xxx, v_63.xyz);
  r5 = vec4<f32>(v_64.xyz, r5.w);
  r3.x = dot(r5.xyz, r5.xyz);
  r3.x = inverseSqrt(r3.x);
  let v_65 = (r3.xxx * r5.xyz);
  r5 = vec4<f32>(v_65.xyz, r5.w);
  r3.x = clamp(cb12_12.tint_symbol_4[0u].z, 0.0f, 1.0f);
  let v_66 = (r1.yz * r1.yz);
  let v_67 = r1;
  r1 = vec4<f32>(v_67.x, v_66.xy, v_67.w);
  r4.w = (cb12_12.tint_symbol_4[0u].y + -500.0f);
  r4.w = max(r4.w, 0.0f);
  r5.w = ((-(r4.wwww)).w + cb12_12.tint_symbol_4[0u].y);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r5.w, 3.0f, r4.w);
  r2.x = dot(r2.xyw, cb1_1.tint_symbol[14u].xyz);
  let v_68 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_68.xyz, r6.w);
  let v_69 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_69.xyz, r7.w);
  let v_70 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_70.xyz, r7.w);
  let v_71 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_71.xyz, r7.w);
  let v_72 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_72.xyz, r8.w);
  let v_73 = &(x0[0u]);
  let v_74 = r8;
  *(v_73) = vec4<f32>(v_74.xyz, (*(v_73)).w);
  let v_75 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_75.xyz, r9.w);
  let v_76 = &(x0[1u]);
  let v_77 = r9;
  *(v_76) = vec4<f32>(v_77.xyz, (*(v_76)).w);
  let v_78 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_78.xyz, r10.w);
  let v_79 = &(x0[2u]);
  let v_80 = r10;
  *(v_79) = vec4<f32>(v_80.xyz, (*(v_79)).w);
  let v_81 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_81.xyz, r7.w);
  let v_82 = &(x0[3u]);
  let v_83 = r7;
  *(v_82) = vec4<f32>(v_83.xyz, (*(v_82)).w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_85 = r11;
  r11 = vec4<f32>(v_85.x, v_84.x, v_85.z, v_84.y);
  r2.y = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).y, 1.5f, 1.0f);
  r2.y = (r2.y * 0.5f);
  let v_86 = abs(r10.yyyy);
  r2.w = max(v_86.w, abs(r10.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r2.y)));
  let v_87 = (bitcast<u32>(r2.w) != 0u);
  let v_88 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r2.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_88, v_87);
  let v_89 = abs(r9.yyyy);
  r5.w = max(v_89.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r2.y)));
  let v_90 = bitcast<u32>(r5.w);
  r2.w = select(r2.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_90 != 0u));
  let v_91 = abs(r8.yyyy);
  r5.w = max(v_91.w, abs(r8.xxxx).w);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r5.w < r2.y)));
  let v_92 = bitcast<u32>(r2.y);
  r2.y = select(r2.w, 0.0f, (v_92 != 0u));
  let v_93 = x0[bitcast<i32>(r2.y)];
  r8 = vec4<f32>(v_93.xyz, r8.w);
  r2.y = f32(bitcast<i32>(r2.y));
  r2.w = (r2.y + 0.5f);
  r2.w = (r2.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.yyyy)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r2.y = dot(r9, cb6_6.tint_symbol_5[12u]);
  r5.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r2.y == 0.0f))));
  r2.y = ((-(r2.yyyy)).y + r8.z);
  let v_94 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_94.xy, r10.z, v_94.z);
  r10.z = dpdx(r2.y);
  let v_95 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_95.xyz, r12.w);
  r12.w = dpdy(r2.y);
  let v_96 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_96.xy);
  let v_97 = -(r7.zwzz);
  let v_98 = fma(r10.xz, r12.xz, v_97.xy);
  r13 = vec4<f32>(v_98.xy, r13.zw);
  r6.w = (1.0f / r13.x);
  r7.z = (r10.z * r12.y);
  let v_99 = -(r7.zzzz);
  r13.z = fma(r10.x, r12.w, v_99.z);
  let v_100 = (r6.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_100.xy);
  let v_101 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_101.xy);
  let v_102 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_102.xy);
  r2.y = fma((-(r5.wwww)).y, r7.z, r2.y);
  r2.y = fma((-(r5.wwww)).y, r7.w, r2.y);
  let v_103 = bitcast<u32>(r2.w);
  let v_104 = r2.y;
  r11.z = select(r8.z, v_104, (v_103 != 0u));
  r9.z = 0.0f;
  let v_105 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_105.xyz, r8.w);
  let v_106 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_106.xy, r11.zw);
  let v_107 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_107.xyz, r10.w);
  let v_108 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_108.xy, r11.zw);
  let v_109 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_109.xyz, r12.w);
  let v_110 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_110.xy, r11.zw);
  let v_111 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_111.xyz, r13.w);
  let v_112 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_112.xy, r11.zw);
  let v_113 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_113.xyz, r14.w);
  let v_114 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_114.xy, r11.zw);
  let v_115 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_115.xyz, r15.w);
  let v_116 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_116.xy, r11.zw);
  let v_117 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_117.xyz, r16.w);
  let v_118 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_118.xy, r11.zw);
  let v_119 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_119.xyz, r17.w);
  let v_120 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_120.xy, r11.zw);
  let v_121 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_121.xyz, r18.w);
  let v_122 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_122.xy, r11.zw);
  let v_123 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_123.xyz, r19.w);
  let v_124 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_124.xy, r11.zw);
  let v_125 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_125.xyz, r20.w);
  let v_126 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_126.xy, r11.zw);
  let v_127 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_127.xyz, r21.w);
  let v_128 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_128.xy, r11.zw);
  let v_129 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_129.xyz, r22.w);
  let v_130 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_130.xy, r11.zw);
  let v_131 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_131.xyz, r23.w);
  let v_132 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_132.xy, r11.zw);
  let v_133 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_133.xyz, r24.w);
  let v_134 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_134.xy, r11.zw);
  let v_135 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_135.xyz, r9.w);
  let v_136 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_136.xy, r8.z);
  let v_137 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_137.xy, r10.z);
  let v_138 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_138.xy, r12.z);
  let v_139 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_139.xy, r13.z);
  let v_140 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_140.xy, r14.z);
  let v_141 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_141.xy, r15.z);
  let v_142 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_142.xy, r16.z);
  let v_143 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_143.xy, r17.z);
  let v_144 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_144.xy, r18.z);
  let v_145 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_145.xy, r19.z);
  let v_146 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_146.xy, r20.z);
  let v_147 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_147.xy, r21.z);
  let v_148 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_148.xy, r22.z);
  let v_149 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_149.xy, r23.z);
  let v_150 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_150.xy, r24.z);
  let v_151 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_151.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r2.y = dot(r8, vec4<f32>(1.0f));
  r2.x = clamp(fma(r2.xxxx, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).x, 0.0f, 1.0f);
  let v_152 = abs(r7.yyyy);
  r2.w = max(v_152.w, abs(r7.xxxx).w);
  r2.w = clamp(fma(r2.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = (r2.w * r2.x);
  r2.x = fma(r2.y, 0.0625f, r2.x);
  r2.x = (r2.x * r2.x);
  r2.x = min(r2.x, 1.0f);
  r2.y = clamp(fma(v7.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).y, 0.0f, 1.0f);
  r2.y = sqrt(r2.y);
  r2.y = (r2.y * cb6_6.tint_symbol_5[3u].z);
  let v_153 = -(r2.xxxx);
  r2.x = fma(r2.y, v_153.x, r2.x);
  r1.x = (r1.x * r2.x);
  let v_154 = dot(r4.xyz, v_63.xyz);
  r2.x = clamp(vec4<f32>(v_154, v_154, v_154, v_154).x, 0.0f, 1.0f);
  let v_155 = dot(r3.yzw, r4.xyz);
  r7.x = clamp(vec4<f32>(v_155, v_155, v_155, v_155).x, 0.0f, 1.0f);
  let v_156 = dot(r5.xyz, v_63.xyz);
  r7.y = clamp(vec4<f32>(v_156, v_156, v_156, v_156).y, 0.0f, 1.0f);
  let v_157 = ((-(r7.xxxy)).yw + vec2<f32>(1.0f));
  let v_158 = r2;
  r2 = vec4<f32>(v_158.x, v_157.x, v_158.z, v_157.y);
  let v_159 = (r2.yw * r2.yw);
  r7 = vec4<f32>(v_159.xy, r7.zw);
  let v_160 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_160.xy, r7.zw);
  let v_161 = (r2.yw * r7.xy);
  let v_162 = r2;
  r2 = vec4<f32>(v_162.x, v_161.x, v_162.z, v_161.y);
  r5.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_163 = fma(cb12_12.tint_symbol_4[0u].xx, r2.yw, r5.ww);
  let v_164 = r2;
  r2 = vec4<f32>(v_164.x, v_163.x, v_164.z, v_163.y);
  let v_165 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_165.xy, r7.zw);
  r5.w = (r7.x * 0.125f);
  r2.y = fma((-(r3.xxxx)).y, r2.y, 1.0f);
  r5.x = dot(r4.xyz, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.y);
  r5.x = exp2(r5.x);
  r2.w = (r2.w * r5.x);
  r2.w = (r5.w * r2.w);
  r2.w = (r3.x * r2.w);
  r2.w = (r2.x * r2.w);
  r2.x = (r2.y * r2.x);
  let v_166 = fma(r0.xyz, r2.xxx, r2.www);
  r5 = vec4<f32>(v_166.xyz, r5.w);
  let v_167 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_167.xyz, r5.w);
  r1.w = fma(r1.w, r2.z, cb3_3.tint_symbol_2[43u].w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[44u].w);
  r1.w = max(r1.w, 0.0f);
  let v_168 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.www, cb3_3.tint_symbol_2[48u].xyz);
  r2 = vec4<f32>(v_168.x, r2.y, v_168.yz);
  r3.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_169 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.www, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_169.xyz, r7.w);
  let v_170 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_170.xyz, r7.w);
  let v_171 = fma(r2.xzw, r3.xxx, r7.xyz);
  r2 = vec4<f32>(v_171.x, r2.y, v_171.yz);
  let v_172 = (r1.zzz * r2.xzw);
  r2 = vec4<f32>(v_172.x, r2.y, v_172.yz);
  let v_173 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.www, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(v_173.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_174 = dot(r8.xyz, r4.xyz);
  r1.w = clamp(vec4<f32>(v_174, v_174, v_174, v_174).w, 0.0f, 1.0f);
  let v_175 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.www, r7.xyz);
  r7 = vec4<f32>(v_175.xyz, r7.w);
  let v_176 = fma(r7.xyz, r1.yyy, r2.xzw);
  r2 = vec4<f32>(v_176.x, r2.y, v_176.yz);
  let v_177 = (r2.yyy * r2.xzw);
  r2 = vec4<f32>(v_177.x, r2.y, v_177.yz);
  let v_178 = (r0.xyz * r2.xzw);
  r0 = vec4<f32>(v_178.xyz, r0.w);
  let v_179 = fma(r5.xyz, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_179.xyz, r0.w);
  r1.x = ((-(r2.yyyy)).x + 1.0f);
  r1.w = dot((-(r3.yzwy)).xyz, r4.xyz);
  r1.w = (r1.w + r1.w);
  let v_180 = -(r1.wwww);
  let v_181 = -(r3.yzwy);
  let v_182 = fma(r4.xyz, v_180.xyz, v_181.xyz);
  r2 = vec4<f32>(v_182.xyz, r2.w);
  let v_183 = clamp(((r4.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_183.xy, r3.zw);
  r1.w = ((-(r3.xxxx)).w + 1.0f);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.x = (r1.w * cb5_5.tint_symbol_3[6u].z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.w)));
  r3.z = fma(r1.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.w = (r1.w * r1.w);
  r1.w = fma(r1.w, 5.0f, r2.w);
  let v_184 = bitcast<u32>(r3.x);
  let v_185 = r3.z;
  r1.w = select(r1.w, v_185, (v_184 != 0u));
  let v_186 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_186.xy, r2.z, v_186.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_187 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_187.xy, r2.z, v_187.z);
  let v_188 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_188.xy, r2.z, v_188.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_189 = bitcast<vec2<u32>>(r2.zz);
  let v_190 = r2.xy;
  let v_191 = select(r2.wy, v_190, (v_189 != vec2<u32>()));
  r2 = vec4<f32>(v_191.xy, r2.zw);
  let v_192 = r1.w;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_192);
  r1.y = max(r1.z, r1.y);
  let v_193 = (r1.yyy * r2.xyz);
  r1 = vec4<f32>(r1.x, v_193.xyz);
  let v_194 = (r3.yyy * r1.yzw);
  r2 = vec4<f32>(v_194.xyz, r2.w);
  let v_195 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_195.xyz, r2.w);
  let v_196 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_196.xyz);
  let v_197 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_197.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_198 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_198.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_199 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_199 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_200 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_200.xyz, r2.w);
    let v_201 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_201, v_201, v_201, v_201).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_202 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_202, v_202, v_202, v_202).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_203 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_203.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_204 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_204.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_205 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_205.xyz, r2.w);
    let v_206 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_206.xyz, r2.w);
    let v_207 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_207.xyz, r3.w);
    let v_208 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_208.xyz, r2.w);
    let v_209 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_210 = (r2.xyz + v_209.xyz);
    r2 = vec4<f32>(v_210.xyz, r2.w);
    let v_211 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_211.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_212 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_212.xyz, r3.w);
    let v_213 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_213.xy, r1.z, v_213.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_214 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_214.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_215 = -(r0.xyxz);
    let v_216 = fma(r1.xyw, r0.www, v_215.xyw);
    r1 = vec4<f32>(v_216.xy, r1.z, v_216.z);
    let v_217 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_217.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_218 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_218.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_219 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_219 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_220 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_220.xyz, r3.w);
    let v_221 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_221, v_221, v_221, v_221).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_222 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_222, v_222, v_222, v_222).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_223 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_223.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_224 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_224.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_225 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_225.xyz, r3.w);
    let v_226 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_226.xyz, r3.w);
    let v_227 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_227.xyz, r4.w);
    let v_228 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_228.xyz, r3.w);
    let v_229 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_230 = (r3.xyz + v_229.xyz);
    r3 = vec4<f32>(v_230.xyz, r3.w);
    let v_231 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_231.x, r2.y, v_231.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_232 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_232.xyz, r3.w);
    let v_233 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_233.x, r2.y, v_233.yz);
    let v_234 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_234.x, r2.y, v_234.yz);
    let v_235 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_235.xyz, r1.w);
  }
  let v_236 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_236.xyz, o0.w);
}

fn v_3(v_237 : bool) {
  if (v_237) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_238 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7, v_238);
  return o0;
}
