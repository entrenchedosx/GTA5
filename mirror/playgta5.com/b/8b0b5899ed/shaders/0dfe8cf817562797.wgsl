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

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v3.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_2 = -(cb5_5.tint_symbol_2[4u].xxxx);
  r0.y = fma(r0.w, cb2_2.tint_symbol[15u].x, v_2.y);
  r0.z = (v_2.z + 1.0f);
  r0.z = (r0.z * 0.10000000149011611938f);
  r0.y = (r0.y / r0.z);
  r0.y = fma((-(r0.wwww)).y, cb2_2.tint_symbol[15u].x, r0.y);
  r0.x = fma(cb12_12.tint_symbol_3[3u].y, r0.y, r0.x);
  r0.y = dot(v0.xy, vec2<f32>(0.5f));
  r0.y = fract(r0.y);
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.yx < vec2<f32>(0.5f, 1.0f))));
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.x)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r0.y)));
  v_5((bitcast<u32>(r0.y) != 0u));
  let v_6 = clamp(v3.zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb2_2.tint_symbol[2u].xy == vec2<f32>(1.0f))));
  let v_8 = r0;
  r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  if ((bitcast<u32>(r0.y) != 0u)) {
    r2 = v3.xyxy;
    let v_9 = r0;
    r0 = vec4<f32>(v_9.x, v3.x, v_9.z, v3.y);
  } else {
    r0.w = ((-(r1.xxxx)).w + 1.0f);
    r2.x = ((-(v3.wwww)).x + 1.0f);
    r2.x = max(r2.x, 0.10000000149011611938f);
    r2.x = min(r2.x, 1.0f);
    r3.x = dot(v6.xyz, v5.xyz);
    r3.y = dot(v7.xyz, v5.xyz);
    r3.z = dot(v4.xyz, v5.xyz);
    r2.y = dot(r3.xyz, r3.xyz);
    r2.y = inverseSqrt(r2.y);
    let v_10 = (r2.yyy * r3.xyz);
    r2 = vec4<f32>(r2.x, v_10.xyz);
    r2.x = max(r2.w, r2.x);
    r2.w = dot(v5.xyz, v5.xyz);
    r2.w = inverseSqrt(r2.w);
    let v_11 = (r2.www * v5.xyz);
    r3 = vec4<f32>(v_11.xyz, r3.w);
    r2.w = dot(v4.xyz, v4.xyz);
    r2.w = inverseSqrt(r2.w);
    let v_12 = (r2.www * v4.xyz);
    r4 = vec4<f32>(v_12.xyz, r4.w);
    r2.w = dot(r3.xyz, r4.xyz);
    r3.x = ((-(cb2_2.tint_symbol[3u].wwww)).x + cb2_2.tint_symbol[3u].z);
    r3.x = fma(abs(r2.wwww).x, r3.x, cb2_2.tint_symbol[3u].w);
    r0.w = (r0.w * cb2_2.tint_symbol[1u].x);
    r3.y = clamp(((r3.xxxx + vec4<f32>(-1.0f))).y, 0.0f, 1.0f);
    r0.w = (r0.w * r3.y);
    r2.w = (abs(r2.wwww).w * 4.0f);
    r2.w = min(r2.w, 1.0f);
    r0.w = (r0.w * r2.w);
    let v_13 = ((-(r2.yyzy)).yz / r2.xx);
    let v_14 = r3;
    r3 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
    let v_15 = (r3.yz * cb12_12.tint_symbol_3[2u].xx);
    let v_16 = r3;
    r3 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
    let v_17 = (r0.ww * r3.yz);
    let v_18 = r3;
    r3 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
    let v_19 = (r2.yz / r2.xx);
    r2 = vec4<f32>(v_19.xy, r2.zw);
    let v_20 = (r2.xy * cb12_12.tint_symbol_3[2u].yy);
    r2 = vec4<f32>(v_20.xy, r2.zw);
    let v_21 = (r0.ww * r2.xy);
    r2 = vec4<f32>(v_21.xy, r2.zw);
    let v_22 = r3.x;
    let v_23 = max(v_22, -2147483648.0f);
    r0.w = bitcast<f32>(select(select(i32(v_23), 2147483647i, (v_23 >= 2147483648.0f)), 0i, !((v_22 == v_22))));
    r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) == 0i)));
    r0.y = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r2.z)));
    if ((bitcast<u32>(r0.y) != 0u)) {
      r0.y = 0.0f;
    } else {
      r0.y = trunc(r3.x);
      r0.y = (1.0f / r0.y);
      let v_24 = dpdx(v3.xy);
      r2 = vec4<f32>(r2.xy, v_24.xy);
      let v_25 = dpdy(v3.xy);
      r3 = vec4<f32>(v_25.x, r3.yz, v_25.y);
      r4 = textureSampleGrad(t3, s3, v3.xyxx.xy, r2.zw, r3.xw);
      r4.x = (r4.x + 0.00000099999999747524f);
      let v_26 = r2;
      let v_27 = r4;
      r4 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
      r4.w = 1.0f;
      let v_28 = r4;
      let v_29 = r5;
      r5 = vec4<f32>(v_29.x, v_28.xx, v_29.w);
      r5 = vec4<f32>(1.0f, r5.yz, 0.0f);
      loop {
        r6.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r5.w) >= bitcast<i32>(r0.w))));
        if ((bitcast<u32>(r6.x) != 0u)) {
          break;
        }
        r6.x = bitcast<f32>(select(0u, 4294967295u, (r5.y < r4.w)));
        if ((bitcast<u32>(r6.x) != 0u)) {
          r6.x = ((-(r0.yyyy)).x + r4.w);
          let v_30 = fma(r3.yz, r0.yy, r4.yz);
          let v_31 = r4;
          r4 = vec4<f32>(v_31.x, v_30.xy, v_31.w);
          let v_32 = (r4.yz + v3.xy);
          let v_33 = r6;
          r6 = vec4<f32>(v_33.x, v_32.xy, v_33.w);
          let v_34 = r2.zw;
          let v_35 = r3.xw;
          r7 = textureSampleGrad(t3, s3, r6.yzyy.xy, v_34, v_35);
          r5.x = r4.w;
          let v_36 = r5;
          r5 = vec4<f32>(r5.xy, v_36.yw);
          r4.w = r6.x;
          r5.y = r7.x;
        } else {
          r5.w = r0.w;
        }
        r5.w = bitcast<f32>((bitcast<i32>(r5.w) + 1i));
      }
      let v_37 = -(r5.yyyy);
      r0.y = (r4.w + v_37.y);
      r0.w = ((-(r5.zzzz)).w + r5.x);
      r2.z = ((-(r0.yyyy)).z + r0.w);
      r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
      r0.y = (r0.y * r5.x);
      let v_38 = -(r0.yyyy);
      r0.y = fma(r4.w, r0.w, v_38.y);
      r0.y = (r0.y / r2.z);
      let v_39 = bitcast<vec4<u32>>(r2.wwww);
      let v_40 = r0.yyyy;
      r0.y = clamp(select(r5.yyyy, v_40, (v_39 != vec4<u32>())).y, 0.0f, 1.0f);
    }
    r0.y = ((-(r0.yyyy)).y + 1.0f);
    let v_41 = fma(r3.yz, r0.yy, r2.xy);
    let v_42 = r0;
    r0 = vec4<f32>(v_42.x, v_41.x, v_42.z, v_41.y);
    let v_43 = (r0.yw + v3.xy);
    let v_44 = r0;
    r0 = vec4<f32>(v_44.x, v_43.x, v_44.z, v_43.y);
    r2 = r0.ywyw;
  }
  r3 = textureSample(t0, s0, r2.xyxx.xy);
  r4 = textureSample(t4, s4, r0.ywyy.xy);
  let v_45 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_46 = r0;
  r0 = vec4<f32>(v_46.x, v_45.x, v_46.z, v_45.y);
  r3.w = dot(r0.yw, r0.yw);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = sqrt(abs(r3.wwww).w);
  r4.x = max(cb12_12.tint_symbol_3[1u].w, 0.00100000004749745131f);
  let v_47 = (r0.yw * r4.xx);
  let v_48 = r0;
  r0 = vec4<f32>(v_48.x, v_47.x, v_48.z, v_47.y);
  let v_49 = (r0.www * v7.xyz);
  r4 = vec4<f32>(v_49.xyz, r4.w);
  let v_50 = fma(r0.yyy, v6.xyz, r4.xyz);
  r4 = vec4<f32>(v_50.xyz, r4.w);
  let v_51 = fma(r3.www, v4.xyz, r4.xyz);
  r4 = vec4<f32>(v_51.xyz, r4.w);
  r0.y = dot(r4.xyz, r4.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_52 = (r0.yyy * r4.xyz);
  r4 = vec4<f32>(v_52.xy, r4.z, v_52.z);
  r5 = textureSample(t5, s5, r2.zwzz.xy);
  let v_53 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_53.xy, r5.zw);
  r0.w = dot(r5.xyz, cb12_12.tint_symbol_3[1u].xyz);
  r5.x = (r0.w * cb12_12.tint_symbol_3[0u].z);
  r2.z = (r5.w * cb12_12.tint_symbol_3[0u].y);
  r6.x = dot(v6.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r6.y = dot(v7.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r2.w = dot(v4.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r3.w = ((-(v3.zzzz)).w + 1.0f);
  r5.w = (cb2_2.tint_symbol[1u].x * cb12_12.tint_symbol_3[2u].x);
  let v_54 = (r5.ww * r6.xy);
  r6 = vec4<f32>(v_54.xy, r6.zw);
  let v_55 = (r3.ww * r6.xy);
  r6 = vec4<f32>(v_55.xy, r6.zw);
  let v_56 = (r6.xy / r2.ww);
  r6 = vec4<f32>(v_56.xy, r6.zw);
  r7 = textureSample(t3, s3, r2.xyxx.xy);
  r8 = fma(r6.xyxy, vec4<f32>(0.87999999523162841797f, 0.87999999523162841797f, 0.76999998092651367188f, 0.76999998092651367188f), r2.xyxy);
  r9 = textureSample(t3, s3, r8.xyxx.xy);
  r2.w = ((-(r7.xxxx)).w + r9.x);
  r8 = textureSample(t3, s3, r8.zwzz.xy);
  r3.w = ((-(r7.xxxx)).w + r8.x);
  r3.w = (r3.w + -0.76999998092651367188f);
  r3.w = (r3.w + r3.w);
  r8 = fma(r6.xyxy, vec4<f32>(0.66000002622604370117f, 0.66000002622604370117f, 0.55000001192092895508f, 0.55000001192092895508f), r2.xyxy);
  r9 = textureSample(t3, s3, r8.xyxx.xy);
  r5.w = ((-(r7.xxxx)).w + r9.x);
  r5.w = (r5.w + -0.66000002622604370117f);
  r5.w = (r5.w * 4.0f);
  r8 = textureSample(t3, s3, r8.zwzz.xy);
  r6.z = ((-(r7.xxxx)).z + r8.x);
  r6.z = (r6.z + -0.55000001192092895508f);
  r8 = fma(r6.xyxy, vec4<f32>(0.43999999761581420898f, 0.43999999761581420898f, 0.33000001311302185059f, 0.33000001311302185059f), r2.xyxy);
  r9 = textureSample(t3, s3, r8.xyxx.xy);
  r6.w = ((-(r7.xxxx)).w + r9.x);
  r6.w = (r6.w + -0.43999999761581420898f);
  let v_57 = (r6.zw * vec2<f32>(6.0f, 8.0f));
  r6 = vec4<f32>(r6.xy, v_57.xy);
  r8 = textureSample(t3, s3, r8.zwzz.xy);
  r7.y = ((-(r7.xxxx)).y + r8.x);
  r7.y = (r7.y + -0.33000001311302185059f);
  r7.y = (r7.y * 10.0f);
  let v_58 = fma(r6.xy, vec2<f32>(0.21999999880790710449f), r2.xy);
  r2 = vec4<f32>(v_58.xy, r2.zw);
  r8 = textureSample(t3, s3, r2.xyxx.xy);
  r2.x = ((-(r7.xxxx)).x + r8.x);
  let v_59 = (r2.xw + vec2<f32>(-0.21999999880790710449f, -0.87999999523162841797f));
  r2 = vec4<f32>(v_59.x, r2.yz, v_59.y);
  r2.x = (r2.x * 12.0f);
  r2.y = max(r3.w, r2.w);
  r2.y = max(r5.w, r2.y);
  r2.y = max(r6.z, r2.y);
  r2.y = max(r6.w, r2.y);
  r2.y = max(r7.y, r2.y);
  r2.x = clamp(max(r2.xxxx, r2.yyyy).x, 0.0f, 1.0f);
  o2.w = fma((-(r2.xxxx)).w, cb12_12.tint_symbol_3[2u].z, 1.0f);
  r1.z = ((-(r1.yyyy)).z + 1.0f);
  r1.w = 0.0f;
  let v_60 = bitcast<vec3<u32>>(r0.zzz);
  let v_61 = r1.xzw;
  let v_62 = select(r3.xyz, v_61, (v_60 != vec3<u32>()));
  r1 = vec4<f32>(v_62.xyz, r1.w);
  r0.z = clamp(fma(v4.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).z, 0.0f, 1.0f);
  let v_63 = (r1.xyz * v2.xyz);
  r1 = vec4<f32>(v_63.xyz, r1.w);
  let v_64 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_65 = r3;
  r3 = vec4<f32>(v_65.x, v_64.xy, v_65.w);
  let v_66 = fma(r4.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_66.xyz, o1.w);
  r1.w = (cb12_12.tint_symbol_3[2u].w + -0.20000000298023223877f);
  r1.w = clamp(((r1.wwww * vec4<f32>(10.0f))).w, 0.0f, 1.0f);
  o1.w = (r0.z * r1.w);
  r5.y = (r2.z * 0.001953125f);
  r3.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_67 = (r3.xz * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_67.xy, r2.zw);
  let v_68 = sqrt(r2.xy);
  o3 = vec4<f32>(v_68.xy, o3.zw);
  r0.y = fma(r4.z, r0.y, -0.34999999403953552246f);
  r0.y = clamp(((r0.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r0.y = (r0.y * cb5_5.tint_symbol_2[3u].z);
  r0.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r0.y = (r0.z * r0.y);
  r0.y = (r3.y * r0.y);
  r0.z = fma((-(r5.xxxx)).z, 0.5f, 1.0f);
  r0.z = (r0.z * r0.y);
  r0.y = (r0.y * cb12_12.tint_symbol_3[2u].w);
  r0.z = fma(r0.z, -0.5f, 1.0f);
  let v_69 = (r0.zzz * r1.xyz);
  o0 = vec4<f32>(v_69.xyz, o0.w);
  r0.z = clamp(fma(r0.wwww, cb12_12.tint_symbol_3[0u].zzzz, vec4<f32>(0.40000000596046447754f)).z, 0.0f, 1.0f);
  let v_70 = (r0.zz * vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_70.xy, r1.zw);
  r5.z = cb12_12.tint_symbol_3[0u].x;
  r1.z = 0.97000002861022949219f;
  let v_71 = -(r5.xyzx);
  let v_72 = (r1.xyz + v_71.xyz);
  r1 = vec4<f32>(v_72.xyz, r1.w);
  let v_73 = max(r1.xyz, vec3<f32>());
  r1 = vec4<f32>(v_73.xyz, r1.w);
  let v_74 = fma(r1.xyz, r0.yyy, r5.xyz);
  r0 = vec4<f32>(r0.x, v_74.xyz);
  let v_75 = sqrt(r0.yz);
  o2 = vec4<f32>(v_75.xy, o2.zw);
  o0.w = r0.x;
  o2.z = r0.w;
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
fn main(@builtin(position) v_77 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_77, v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_4(o0, o1, o2, o3);
}
