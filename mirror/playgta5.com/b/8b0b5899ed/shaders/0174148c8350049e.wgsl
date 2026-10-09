diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

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

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  let v = clamp(v2.zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb2_2.tint_symbol[2u].xy == vec2<f32>(1.0f))));
  r1 = vec4<f32>(v_1.xy, r1.zw);
  if ((bitcast<u32>(r1.x) != 0u)) {
    r2 = vec4<f32>(v2.xy, r2.zw);
    let v_2 = r1;
    r1 = vec4<f32>(v2.x, v_2.y, v2.y, v_2.w);
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
    let v_3 = (r2.www * r2.xyz);
    r2 = vec4<f32>(v_3.xyz, r2.w);
    r1.w = max(r1.w, r2.z);
    r2.z = dot(v4.xyz, v4.xyz);
    r2.z = inverseSqrt(r2.z);
    let v_4 = (r2.zzz * v4.xyz);
    r3 = vec4<f32>(v_4.xyz, r3.w);
    r2.z = dot(v3.xyz, v3.xyz);
    r2.z = inverseSqrt(r2.z);
    let v_5 = (r2.zzz * v3.xyz);
    r4 = vec4<f32>(v_5.xyz, r4.w);
    r2.z = dot(r3.xyz, r4.xyz);
    r2.w = ((-(cb2_2.tint_symbol[3u].wwww)).w + cb2_2.tint_symbol[3u].z);
    r2.w = fma(abs(r2.zzzz).w, r2.w, cb2_2.tint_symbol[3u].w);
    r1.z = (r1.z * cb2_2.tint_symbol[1u].x);
    r3.x = clamp(((r2.wwww + vec4<f32>(-1.0f))).x, 0.0f, 1.0f);
    r1.z = (r1.z * r3.x);
    r2.z = (abs(r2.zzzz).z * 4.0f);
    r2.z = min(r2.z, 1.0f);
    r1.z = (r1.z * r2.z);
    let v_6 = ((-(r2.xyxx)).xy / r1.ww);
    r3 = vec4<f32>(v_6.xy, r3.zw);
    let v_7 = (r3.xy * cb12_12.tint_symbol_3[1u].xx);
    r3 = vec4<f32>(v_7.xy, r3.zw);
    let v_8 = (r1.zz * r3.xy);
    r3 = vec4<f32>(v_8.xy, r3.zw);
    let v_9 = (r2.xy / r1.ww);
    r2 = vec4<f32>(v_9.xy, r2.zw);
    let v_10 = (r2.xy * cb12_12.tint_symbol_3[1u].yy);
    r2 = vec4<f32>(v_10.xy, r2.zw);
    let v_11 = (r1.zz * r2.xy);
    r1 = vec4<f32>(r1.xy, v_11.xy);
    let v_12 = r2.w;
    let v_13 = max(v_12, -2147483648.0f);
    r2.x = bitcast<f32>(select(select(i32(v_13), 2147483647i, (v_13 >= 2147483648.0f)), 0i, !((v_12 == v_12))));
    r2.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.x) == 0i)));
    r1.x = bitcast<f32>((bitcast<u32>(r1.x) | bitcast<u32>(r2.y)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      r1.x = 0.0f;
    } else {
      r1.x = trunc(r2.w);
      r1.x = (1.0f / r1.x);
      let v_14 = dpdx(v2.xy);
      let v_15 = r2;
      r2 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
      let v_16 = dpdy(v2.xy);
      r3 = vec4<f32>(r3.xy, v_16.xy);
      r4 = textureSampleGrad(t2, s2, v2.xyxx.xy, r2.yz, r3.zw);
      r2.w = (r4.x + 0.00000099999999747524f);
      let v_17 = r1;
      r4 = vec4<f32>(v_17.zw, r4.zw);
      r4 = vec4<f32>(r4.xy, vec2<f32>(1.0f));
      let v_18 = r2;
      r5 = vec4<f32>(v_18.ww, r5.zw);
      r5.z = 0.0f;
      loop {
        r5.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r5.z) >= bitcast<i32>(r2.x))));
        if ((bitcast<u32>(r5.w) != 0u)) {
          break;
        }
        r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.x < r4.z)));
        if ((bitcast<u32>(r5.w) != 0u)) {
          r5.w = ((-(r1.xxxx)).w + r4.z);
          let v_19 = fma(r3.xy, r1.xx, r4.xy);
          r4 = vec4<f32>(v_19.xy, r4.zw);
          let v_20 = (r4.xy + v2.xy);
          r6 = vec4<f32>(v_20.xy, r6.zw);
          let v_21 = r2.yz;
          let v_22 = r3.zw;
          r6 = textureSampleGrad(t2, s2, r6.xyxx.xy, v_21, v_22);
          r4.w = r4.z;
          let v_23 = r5;
          let v_24 = r5;
          r5 = vec4<f32>(v_24.x, v_23.xz, v_24.w);
          r4.z = r5.w;
          r5.x = r6.x;
        } else {
          r5.z = r2.x;
        }
        r5.z = bitcast<f32>((bitcast<i32>(r5.z) + 1i));
      }
      let v_25 = -(r5.xxxx);
      r1.x = (r4.z + v_25.x);
      let v_26 = -(r5.yyyy);
      r2.x = (r4.w + v_26.x);
      r2.y = ((-(r1.xxxx)).y + r2.x);
      r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.y)));
      r1.x = (r1.x * r4.w);
      let v_27 = -(r1.xxxx);
      r1.x = fma(r4.z, r2.x, v_27.x);
      r1.x = (r1.x / r2.y);
      let v_28 = bitcast<vec4<u32>>(r2.zzzz);
      let v_29 = r1.xxxx;
      r1.x = clamp(select(r5.xxxx, v_29, (v_28 != vec4<u32>())).x, 0.0f, 1.0f);
    }
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    let v_30 = fma(r3.xy, r1.xx, r1.zw);
    let v_31 = r1;
    r1 = vec4<f32>(v_30.x, v_31.y, v_30.y, v_31.w);
    let v_32 = (r1.xz + v2.xy);
    let v_33 = r1;
    r1 = vec4<f32>(v_32.x, v_33.y, v_32.y, v_33.w);
    let v_34 = r1;
    r2 = vec4<f32>(v_34.xz, r2.zw);
  }
  r3 = textureSample(t0, s0, r2.xyxx.xy);
  r4 = textureSample(t3, s3, r1.xzxx.xy);
  let v_35 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_36 = r1;
  r1 = vec4<f32>(v_35.x, v_36.y, v_35.y, v_36.w);
  r1.w = dot(r1.xz, r1.xz);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r2.z = max(cb12_12.tint_symbol_3[0u].w, 0.00100000004749745131f);
  let v_37 = (r1.xz * r2.zz);
  let v_38 = r1;
  r1 = vec4<f32>(v_37.x, v_38.y, v_37.y, v_38.w);
  let v_39 = (r1.zzz * v6.xyz);
  r4 = vec4<f32>(v_39.xyz, r4.w);
  let v_40 = fma(r1.xxx, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_40.xyz, r4.w);
  let v_41 = fma(r1.www, v3.xyz, r4.xyz);
  r1 = vec4<f32>(v_41.x, r1.y, v_41.yz);
  r2.z = dot(r1.xzw, r1.xzw);
  r2.z = inverseSqrt(r2.z);
  let v_42 = (r1.xzw * r2.zzz);
  r4 = vec4<f32>(v_42.xyz, r4.w);
  r5.x = dot(v5.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r5.y = dot(v6.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r1.x = dot(v3.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r1.z = ((-(v2.zzzz)).z + 1.0f);
  r2.w = (cb2_2.tint_symbol[1u].x * cb12_12.tint_symbol_3[1u].x);
  let v_43 = (r2.ww * r5.xy);
  r5 = vec4<f32>(v_43.xy, r5.zw);
  let v_44 = (r1.zz * r5.xy);
  r5 = vec4<f32>(v_44.xy, r5.zw);
  let v_45 = (r5.xy / r1.xx);
  let v_46 = r1;
  r1 = vec4<f32>(v_45.x, v_46.y, v_45.y, v_46.w);
  r5 = textureSample(t2, s2, r2.xyxx.xy);
  r6 = fma(r1.xzxz, vec4<f32>(0.87999999523162841797f, 0.87999999523162841797f, 0.76999998092651367188f, 0.76999998092651367188f), r2.xyxy);
  r7 = textureSample(t2, s2, r6.xyxx.xy);
  r2.w = ((-(r5.xxxx)).w + r7.x);
  r2.w = (r2.w + -0.87999999523162841797f);
  r6 = textureSample(t2, s2, r6.zwzz.xy);
  r4.w = ((-(r5.xxxx)).w + r6.x);
  r4.w = (r4.w + -0.76999998092651367188f);
  r4.w = (r4.w + r4.w);
  r6 = fma(r1.xzxz, vec4<f32>(0.66000002622604370117f, 0.66000002622604370117f, 0.55000001192092895508f, 0.55000001192092895508f), r2.xyxy);
  r7 = textureSample(t2, s2, r6.xyxx.xy);
  r5.y = ((-(r5.xxxx)).y + r7.x);
  r5.y = (r5.y + -0.66000002622604370117f);
  r6 = textureSample(t2, s2, r6.zwzz.xy);
  r5.z = ((-(r5.xxxx)).z + r6.x);
  r5.z = (r5.z + -0.55000001192092895508f);
  r6 = fma(r1.xzxz, vec4<f32>(0.43999999761581420898f, 0.43999999761581420898f, 0.33000001311302185059f, 0.33000001311302185059f), r2.xyxy);
  r7 = textureSample(t2, s2, r6.xyxx.xy);
  r5.w = ((-(r5.xxxx)).w + r7.x);
  r5.w = (r5.w + -0.43999999761581420898f);
  let v_47 = (r5.yzw * vec3<f32>(4.0f, 6.0f, 8.0f));
  r5 = vec4<f32>(r5.x, v_47.xyz);
  r6 = textureSample(t2, s2, r6.zwzz.xy);
  r6.x = ((-(r5.xxxx)).x + r6.x);
  r6.x = (r6.x + -0.33000001311302185059f);
  r6.x = (r6.x * 10.0f);
  let v_48 = fma(r1.xz, vec2<f32>(0.21999999880790710449f), r2.xy);
  let v_49 = r1;
  r1 = vec4<f32>(v_48.x, v_49.y, v_48.y, v_49.w);
  r7 = textureSample(t2, s2, r1.xzxx.xy);
  r1.x = ((-(r5.xxxx)).x + r7.x);
  r1.x = (r1.x + -0.21999999880790710449f);
  r1.x = (r1.x * 12.0f);
  r1.z = max(r2.w, r4.w);
  r1.z = max(r5.y, r1.z);
  r1.z = max(r5.z, r1.z);
  r1.z = max(r5.w, r1.z);
  r1.z = max(r6.x, r1.z);
  r1.x = clamp(max(r1.xxxx, r1.zzzz).x, 0.0f, 1.0f);
  o2.w = fma((-(r1.xxxx)).w, cb12_12.tint_symbol_3[1u].z, 1.0f);
  r0.z = ((-(r0.yyyy)).z + 1.0f);
  r0.w = 0.0f;
  let v_50 = bitcast<vec3<u32>>(r1.yyy);
  let v_51 = r0.xzw;
  let v_52 = select(r3.xyz, v_51, (v_50 != vec3<u32>()));
  r0 = vec4<f32>(v_52.xyz, r0.w);
  r0.w = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r1.x = (r3.w * v1.w);
  let v_53 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_54 = r3;
  r3 = vec4<f32>(v_54.x, v_53.xy, v_54.w);
  o0.w = (r1.x * cb2_2.tint_symbol[15u].x);
  let v_55 = fma(r4.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_55.xyz, o1.w);
  r1.x = (cb12_12.tint_symbol_3[1u].w + -0.20000000298023223877f);
  r1.x = clamp(((r1.xxxx * vec4<f32>(10.0f))).x, 0.0f, 1.0f);
  o1.w = (r0.w * r1.x);
  r3.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_56 = (r3.xz * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_56.xy, r1.zw);
  let v_57 = sqrt(r1.xy);
  o3 = vec4<f32>(v_57.xy, o3.zw);
  r0.w = fma(r1.w, r2.z, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r3.y * r0.w);
  r1.x = (cb12_12.tint_symbol_3[0u].y * 0.001953125f);
  r1.z = (-(r1.xxxx)).z;
  r2.x = fma((-(cb12_12.tint_symbol_3[0u].zzzz)).x, 0.5f, 1.0f);
  r2.x = (r0.w * r2.x);
  r2.y = ((-(cb12_12.tint_symbol_3[1u].wwww)).y + 1.0f);
  r2.x = (r2.y * r2.x);
  r0.w = (r0.w * cb12_12.tint_symbol_3[1u].w);
  r2.x = fma(r2.x, -0.5f, 1.0f);
  let v_58 = (r0.xyz * r2.xxx);
  o0 = vec4<f32>(v_58.xyz, o0.w);
  let v_59 = (-(cb12_12.tint_symbol_3[0u].zzzx)).yw;
  let v_60 = r1;
  r1 = vec4<f32>(v_60.x, v_59.x, v_60.z, v_59.y);
  let v_61 = (r1.yzw + vec3<f32>(0.5f, 0.48828125f, 0.97000002861022949219f));
  r0 = vec4<f32>(v_61.xyz, r0.w);
  let v_62 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_62.xyz, r0.w);
  let v_63 = fma(r0.xz, r0.ww, cb12_12.tint_symbol_3[0u].zx);
  let v_64 = r2;
  r2 = vec4<f32>(v_63.x, v_64.y, v_63.y, v_64.w);
  r2.y = fma(r0.y, r0.w, r1.x);
  let v_65 = sqrt(r2.xy);
  o2 = vec4<f32>(v_65.xy, o2.zw);
  o2.z = r2.z;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

struct tint_symbol_4 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
