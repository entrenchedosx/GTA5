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

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb3_struct {
  tint_symbol_3 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = max(v0.xy, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1u)));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) << 1u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) + bitcast<i32>(r0.y)));
  r0.x = dot(cb2_2.tint_symbol[0u], icb0[bitcast<i32>(r0.x)]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  v_5((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t0, s0, v2.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[4u].x >= r0.x)));
  v_5((bitcast<u32>(r0.x) != 0u));
  let v_6 = clamp(v2.zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb2_2.tint_symbol[2u].xy == vec2<f32>(1.0f))));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  if ((bitcast<u32>(r1.x) != 0u)) {
    r2 = v2.xyxy;
    let v_8 = r1;
    r1 = vec4<f32>(v2.x, v_8.y, v2.y, v_8.w);
  } else {
    r1.z = ((-(r0.xxxx)).z + 1.0f);
    r1.w = ((-(v2.wwww)).w + 1.0f);
    r1.w = max(r1.w, 0.10000000149011611938f);
    r1.w = min(r1.w, 1.0f);
    r2.x = dot(v5.xyz, v4.xyz);
    r2.y = dot(v6.xyz, v4.xyz);
    r2.z = dot(v3.xyz, v4.xyz);
    r3.x = dot(r2.xyz, r2.xyz);
    r2.w = inverseSqrt(r3.x);
    let v_9 = (r2.www * r2.xyz);
    r2 = vec4<f32>(v_9.xyz, r2.w);
    r1.w = max(r1.w, r2.z);
    r2.z = dot(v4.xyz, v4.xyz);
    r2.z = inverseSqrt(r2.z);
    let v_10 = (r2.zzz * v4.xyz);
    r3 = vec4<f32>(v_10.x, r3.y, v_10.yz);
    r2.z = dot(v3.xyz, v3.xyz);
    r2.z = inverseSqrt(r2.z);
    let v_11 = (r2.zzz * v3.xyz);
    r4 = vec4<f32>(v_11.xyz, r4.w);
    r2.z = dot(r3.xzw, r4.xyz);
    r2.w = ((-(cb2_2.tint_symbol[3u].wwww)).w + cb2_2.tint_symbol[3u].z);
    r2.w = fma(abs(r2.zzzz).w, r2.w, cb2_2.tint_symbol[3u].w);
    r1.z = (r1.z * cb2_2.tint_symbol[1u].x);
    r3.x = clamp(((r2.wwww + vec4<f32>(-1.0f))).x, 0.0f, 1.0f);
    r1.z = (r1.z * r3.x);
    r2.z = (abs(r2.zzzz).z * 4.0f);
    r2.z = min(r2.z, 1.0f);
    r1.z = (r1.z * r2.z);
    let v_12 = ((-(r2.xxyx)).xz / r1.ww);
    let v_13 = r3;
    r3 = vec4<f32>(v_12.x, v_13.y, v_12.y, v_13.w);
    let v_14 = (r3.xz * cb12_12.tint_symbol_3[2u].xx);
    let v_15 = r3;
    r3 = vec4<f32>(v_14.x, v_15.y, v_14.y, v_15.w);
    let v_16 = (r1.zz * r3.xz);
    let v_17 = r3;
    r3 = vec4<f32>(v_16.x, v_17.y, v_16.y, v_17.w);
    let v_18 = (r2.xy / r1.ww);
    r2 = vec4<f32>(v_18.xy, r2.zw);
    let v_19 = (r2.xy * cb12_12.tint_symbol_3[2u].yy);
    r2 = vec4<f32>(v_19.xy, r2.zw);
    let v_20 = (r1.zz * r2.xy);
    r1 = vec4<f32>(r1.xy, v_20.xy);
    let v_21 = r2.w;
    let v_22 = max(v_21, -2147483648.0f);
    r2.x = bitcast<f32>(select(select(i32(v_22), 2147483647i, (v_22 >= 2147483648.0f)), 0i, !((v_21 == v_21))));
    r2.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.x) == 0i)));
    r1.x = bitcast<f32>((bitcast<u32>(r1.x) | bitcast<u32>(r2.y)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      r1.x = 0.0f;
    } else {
      r1.x = trunc(r2.w);
      r1.x = (1.0f / r1.x);
      let v_23 = dpdx(v2.xy);
      let v_24 = r2;
      r2 = vec4<f32>(v_24.x, v_23.xy, v_24.w);
      let v_25 = dpdy(v2.xy);
      r4 = vec4<f32>(v_25.xy, r4.zw);
      r5 = textureSampleGrad(t2, s2, v2.xyxx.xy, r2.yz, r4.xy);
      r2.w = (r5.x + 0.00000099999999747524f);
      let v_26 = r1;
      let v_27 = r3;
      r3 = vec4<f32>(v_27.x, v_26.z, v_27.z, v_26.w);
      r4 = vec4<f32>(r4.xy, vec2<f32>(1.0f));
      let v_28 = r2;
      r5 = vec4<f32>(v_28.ww, r5.zw);
      r5.z = 0.0f;
      loop {
        r5.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r5.z) >= bitcast<i32>(r2.x))));
        if ((bitcast<u32>(r5.w) != 0u)) {
          break;
        }
        r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.x < r4.z)));
        if ((bitcast<u32>(r5.w) != 0u)) {
          r5.w = ((-(r1.xxxx)).w + r4.z);
          let v_29 = fma(r3.xz, r1.xx, r3.yw);
          let v_30 = r3;
          r3 = vec4<f32>(v_30.x, v_29.x, v_30.z, v_29.y);
          let v_31 = (r3.yw + v2.xy);
          r6 = vec4<f32>(v_31.xy, r6.zw);
          let v_32 = r2.yz;
          let v_33 = r4.xy;
          r6 = textureSampleGrad(t2, s2, r6.xyxx.xy, v_32, v_33);
          r4.w = r4.z;
          let v_34 = r5;
          let v_35 = r5;
          r5 = vec4<f32>(v_35.x, v_34.xz, v_35.w);
          r4.z = r5.w;
          r5.x = r6.x;
        } else {
          r5.z = r2.x;
        }
        r5.z = bitcast<f32>((bitcast<i32>(r5.z) + 1i));
      }
      let v_36 = -(r5.xxxx);
      r1.x = (r4.z + v_36.x);
      let v_37 = -(r5.yyyy);
      r2.x = (r4.w + v_37.x);
      r2.y = ((-(r1.xxxx)).y + r2.x);
      r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.y)));
      r1.x = (r1.x * r4.w);
      let v_38 = -(r1.xxxx);
      r1.x = fma(r4.z, r2.x, v_38.x);
      r1.x = (r1.x / r2.y);
      let v_39 = bitcast<vec4<u32>>(r2.zzzz);
      let v_40 = r1.xxxx;
      r1.x = clamp(select(r5.xxxx, v_40, (v_39 != vec4<u32>())).x, 0.0f, 1.0f);
    }
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    let v_41 = fma(r3.xz, r1.xx, r1.zw);
    let v_42 = r1;
    r1 = vec4<f32>(v_41.x, v_42.y, v_41.y, v_42.w);
    let v_43 = (r1.xz + v2.xy);
    let v_44 = r1;
    r1 = vec4<f32>(v_43.x, v_44.y, v_43.y, v_44.w);
    r2 = r1.xzxz;
  }
  r3 = textureSample(t0, s0, r2.xyxx.xy);
  r4 = textureSample(t3, s3, r1.xzxx.xy);
  let v_45 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_46 = r1;
  r1 = vec4<f32>(v_45.x, v_46.y, v_45.y, v_46.w);
  r1.w = dot(r1.xz, r1.xz);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r4.x = max(cb12_12.tint_symbol_3[1u].w, 0.00100000004749745131f);
  let v_47 = (r1.xz * r4.xx);
  let v_48 = r1;
  r1 = vec4<f32>(v_47.x, v_48.y, v_47.y, v_48.w);
  let v_49 = (r1.zzz * v6.xyz);
  r4 = vec4<f32>(v_49.xyz, r4.w);
  let v_50 = fma(r1.xxx, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_50.xyz, r4.w);
  let v_51 = fma(r1.www, v3.xyz, r4.xyz);
  r1 = vec4<f32>(v_51.x, r1.y, v_51.yz);
  r4.x = dot(r1.xzw, r1.xzw);
  r4.x = inverseSqrt(r4.x);
  let v_52 = (r1.xzw * r4.xxx);
  r4 = vec4<f32>(r4.x, v_52.xyz);
  r5 = textureSample(t4, s4, r2.zwzz.xy);
  let v_53 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_53.xy, r5.zw);
  r1.x = dot(r5.xyz, cb12_12.tint_symbol_3[1u].xyz);
  r5.x = (r1.x * cb12_12.tint_symbol_3[0u].z);
  r1.z = (r5.w * cb12_12.tint_symbol_3[0u].y);
  r6.x = dot(v5.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r6.y = dot(v6.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r2.z = dot(v3.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r2.w = ((-(v2.zzzz)).w + 1.0f);
  r5.w = (cb2_2.tint_symbol[1u].x * cb12_12.tint_symbol_3[2u].x);
  let v_54 = (r5.ww * r6.xy);
  r6 = vec4<f32>(v_54.xy, r6.zw);
  let v_55 = (r2.ww * r6.xy);
  r6 = vec4<f32>(v_55.xy, r6.zw);
  let v_56 = (r6.xy / r2.zz);
  r2 = vec4<f32>(r2.xy, v_56.xy);
  r6 = textureSample(t2, s2, r2.xyxx.xy);
  r7 = fma(r2.zwzw, vec4<f32>(0.87999999523162841797f, 0.87999999523162841797f, 0.76999998092651367188f, 0.76999998092651367188f), r2.xyxy);
  r8 = textureSample(t2, s2, r7.xyxx.xy);
  r5.w = ((-(r6.xxxx)).w + r8.x);
  r5.w = (r5.w + -0.87999999523162841797f);
  r7 = textureSample(t2, s2, r7.zwzz.xy);
  r6.y = ((-(r6.xxxx)).y + r7.x);
  r6.y = (r6.y + -0.76999998092651367188f);
  r6.y = (r6.y + r6.y);
  r7 = fma(r2.zwzw, vec4<f32>(0.66000002622604370117f, 0.66000002622604370117f, 0.55000001192092895508f, 0.55000001192092895508f), r2.xyxy);
  r8 = textureSample(t2, s2, r7.xyxx.xy);
  r6.z = ((-(r6.xxxx)).z + r8.x);
  r6.z = (r6.z + -0.66000002622604370117f);
  r7 = textureSample(t2, s2, r7.zwzz.xy);
  r6.w = ((-(r6.xxxx)).w + r7.x);
  r6.w = (r6.w + -0.55000001192092895508f);
  let v_57 = (r6.zw * vec2<f32>(4.0f, 6.0f));
  r6 = vec4<f32>(r6.xy, v_57.xy);
  r7 = fma(r2.zwzw, vec4<f32>(0.43999999761581420898f, 0.43999999761581420898f, 0.33000001311302185059f, 0.33000001311302185059f), r2.xyxy);
  r8 = textureSample(t2, s2, r7.xyxx.xy);
  r7.x = ((-(r6.xxxx)).x + r8.x);
  r7.x = (r7.x + -0.43999999761581420898f);
  r8 = textureSample(t2, s2, r7.zwzz.xy);
  r7.y = ((-(r6.xxxx)).y + r8.x);
  r7.y = (r7.y + -0.33000001311302185059f);
  let v_58 = (r7.xy * vec2<f32>(8.0f, 10.0f));
  r7 = vec4<f32>(v_58.xy, r7.zw);
  let v_59 = fma(r2.zw, vec2<f32>(0.21999999880790710449f), r2.xy);
  r2 = vec4<f32>(v_59.xy, r2.zw);
  r2 = textureSample(t2, s2, r2.xyxx.xy);
  r2.x = ((-(r6.xxxx)).x + r2.x);
  r2.x = (r2.x + -0.21999999880790710449f);
  r2.x = (r2.x * 12.0f);
  r2.y = max(r5.w, r6.y);
  r2.y = max(r6.z, r2.y);
  r2.y = max(r6.w, r2.y);
  r2.y = max(r7.x, r2.y);
  r2.y = max(r7.y, r2.y);
  r2.x = clamp(max(r2.xxxx, r2.yyyy).x, 0.0f, 1.0f);
  o2.w = fma((-(r2.xxxx)).w, cb12_12.tint_symbol_3[2u].z, 1.0f);
  r0.z = ((-(r0.yyyy)).z + 1.0f);
  r0.w = 0.0f;
  let v_60 = bitcast<vec3<u32>>(r1.yyy);
  let v_61 = r0.xzw;
  let v_62 = select(r3.xyz, v_61, (v_60 != vec3<u32>()));
  r0 = vec4<f32>(v_62.xyz, r0.w);
  r0.w = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r1.y = (r3.w * v1.w);
  let v_63 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_64 = r2;
  r2 = vec4<f32>(v_64.x, v_63.xy, v_64.w);
  o0.w = (r1.y * cb2_2.tint_symbol[15u].x);
  let v_65 = fma(r4.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_65.xyz, o1.w);
  r1.y = (cb12_12.tint_symbol_3[2u].w + -0.20000000298023223877f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(10.0f))).y, 0.0f, 1.0f);
  o1.w = (r0.w * r1.y);
  r5.y = (r1.z * 0.001953125f);
  r2.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_66 = (r2.xz * vec2<f32>(0.5f));
  let v_67 = r1;
  r1 = vec4<f32>(v_67.x, v_66.xy, v_67.w);
  let v_68 = sqrt(r1.yz);
  o3 = vec4<f32>(v_68.xy, o3.zw);
  r0.w = fma(r1.w, r4.x, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.w = (r0.w * r1.y);
  r0.w = (r2.y * r0.w);
  r1.y = fma((-(r5.xxxx)).y, 0.5f, 1.0f);
  r1.y = (r0.w * r1.y);
  r0.w = (r0.w * cb12_12.tint_symbol_3[2u].w);
  r1.y = fma(r1.y, -0.5f, 1.0f);
  let v_69 = (r0.xyz * r1.yyy);
  o0 = vec4<f32>(v_69.xyz, o0.w);
  r0.x = clamp(fma(r1.xxxx, cb12_12.tint_symbol_3[0u].zzzz, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_70 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_70.xy, r0.zw);
  r5.z = cb12_12.tint_symbol_3[0u].x;
  r0.z = 0.97000002861022949219f;
  let v_71 = -(r5.xyzx);
  let v_72 = (r0.xyz + v_71.xyz);
  r0 = vec4<f32>(v_72.xyz, r0.w);
  let v_73 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_73.xyz, r0.w);
  let v_74 = fma(r0.xyz, r0.www, r5.xyz);
  r0 = vec4<f32>(v_74.xyz, r0.w);
  let v_75 = sqrt(r0.xy);
  o2 = vec4<f32>(v_75.xy, o2.zw);
  o2.z = r0.z;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_5(v_76 : bool) {
  if (v_76) {
    discard;
    return;
  }
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
fn main(@builtin(position) v_77 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_77, v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
