diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
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
  r0 = textureSample(t0, s0, v3.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[4u].x >= r0.x)));
  v_5((bitcast<u32>(r0.x) != 0u));
  let v_6 = clamp(v3.zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb2_2.tint_symbol[2u].xy == vec2<f32>(1.0f))));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  if ((bitcast<u32>(r1.x) != 0u)) {
    r2 = vec4<f32>(v3.xy, r2.zw);
    let v_8 = r1;
    r1 = vec4<f32>(v3.x, v_8.y, v3.y, v_8.w);
  } else {
    r1.z = ((-(r0.xxxx)).z + 1.0f);
    r1.w = ((-(v3.wwww)).w + 1.0f);
    r1.w = max(r1.w, 0.10000000149011611938f);
    r1.w = min(r1.w, 1.0f);
    r2.x = dot(v6.xyz, v5.xyz);
    r2.y = dot(v7.xyz, v5.xyz);
    r2.z = dot(v4.xyz, v5.xyz);
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = inverseSqrt(r2.w);
    let v_9 = (r2.www * r2.xyz);
    r2 = vec4<f32>(v_9.xyz, r2.w);
    r1.w = max(r1.w, r2.z);
    r2.z = dot(v5.xyz, v5.xyz);
    r2.z = inverseSqrt(r2.z);
    let v_10 = (r2.zzz * v5.xyz);
    r3 = vec4<f32>(v_10.xyz, r3.w);
    r2.z = dot(v4.xyz, v4.xyz);
    r2.z = inverseSqrt(r2.z);
    let v_11 = (r2.zzz * v4.xyz);
    r4 = vec4<f32>(v_11.xyz, r4.w);
    r2.z = dot(r3.xyz, r4.xyz);
    r2.w = ((-(cb2_2.tint_symbol[3u].wwww)).w + cb2_2.tint_symbol[3u].z);
    r2.w = fma(abs(r2.zzzz).w, r2.w, cb2_2.tint_symbol[3u].w);
    r1.z = (r1.z * cb2_2.tint_symbol[1u].x);
    r3.x = clamp(((r2.wwww + vec4<f32>(-1.0f))).x, 0.0f, 1.0f);
    r1.z = (r1.z * r3.x);
    r2.z = (abs(r2.zzzz).z * 4.0f);
    r2.z = min(r2.z, 1.0f);
    r1.z = (r1.z * r2.z);
    let v_12 = ((-(r2.xyxx)).xy / r1.ww);
    r3 = vec4<f32>(v_12.xy, r3.zw);
    let v_13 = (r3.xy * cb12_12.tint_symbol_2[1u].xx);
    r3 = vec4<f32>(v_13.xy, r3.zw);
    let v_14 = (r1.zz * r3.xy);
    r3 = vec4<f32>(v_14.xy, r3.zw);
    let v_15 = (r2.xy / r1.ww);
    r2 = vec4<f32>(v_15.xy, r2.zw);
    let v_16 = (r2.xy * cb12_12.tint_symbol_2[1u].yy);
    r2 = vec4<f32>(v_16.xy, r2.zw);
    let v_17 = (r1.zz * r2.xy);
    r1 = vec4<f32>(r1.xy, v_17.xy);
    let v_18 = r2.w;
    let v_19 = max(v_18, -2147483648.0f);
    r2.x = bitcast<f32>(select(select(i32(v_19), 2147483647i, (v_19 >= 2147483648.0f)), 0i, !((v_18 == v_18))));
    r2.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.x) == 0i)));
    r1.x = bitcast<f32>((bitcast<u32>(r1.x) | bitcast<u32>(r2.y)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      r1.x = 0.0f;
    } else {
      r1.x = trunc(r2.w);
      r1.x = (1.0f / r1.x);
      let v_20 = dpdx(v3.xy);
      let v_21 = r2;
      r2 = vec4<f32>(v_21.x, v_20.xy, v_21.w);
      let v_22 = dpdy(v3.xy);
      r3 = vec4<f32>(r3.xy, v_22.xy);
      r4 = textureSampleGrad(t3, s3, v3.xyxx.xy, r2.yz, r3.zw);
      r2.w = (r4.x + 0.00000099999999747524f);
      let v_23 = r1;
      r4 = vec4<f32>(v_23.zw, r4.zw);
      r4 = vec4<f32>(r4.xy, vec2<f32>(1.0f));
      let v_24 = r2;
      r5 = vec4<f32>(v_24.ww, r5.zw);
      r5.z = 0.0f;
      loop {
        r5.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r5.z) >= bitcast<i32>(r2.x))));
        if ((bitcast<u32>(r5.w) != 0u)) {
          break;
        }
        r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.x < r4.z)));
        if ((bitcast<u32>(r5.w) != 0u)) {
          r5.w = ((-(r1.xxxx)).w + r4.z);
          let v_25 = fma(r3.xy, r1.xx, r4.xy);
          r4 = vec4<f32>(v_25.xy, r4.zw);
          let v_26 = (r4.xy + v3.xy);
          r6 = vec4<f32>(v_26.xy, r6.zw);
          let v_27 = r2.yz;
          let v_28 = r3.zw;
          r6 = textureSampleGrad(t3, s3, r6.xyxx.xy, v_27, v_28);
          r4.w = r4.z;
          let v_29 = r5;
          let v_30 = r5;
          r5 = vec4<f32>(v_30.x, v_29.xz, v_30.w);
          r4.z = r5.w;
          r5.x = r6.x;
        } else {
          r5.z = r2.x;
        }
        r5.z = bitcast<f32>((bitcast<i32>(r5.z) + 1i));
      }
      let v_31 = -(r5.xxxx);
      r1.x = (r4.z + v_31.x);
      let v_32 = -(r5.yyyy);
      r2.x = (r4.w + v_32.x);
      r2.y = ((-(r1.xxxx)).y + r2.x);
      r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.y)));
      r1.x = (r1.x * r4.w);
      let v_33 = -(r1.xxxx);
      r1.x = fma(r4.z, r2.x, v_33.x);
      r1.x = (r1.x / r2.y);
      let v_34 = bitcast<vec4<u32>>(r2.zzzz);
      let v_35 = r1.xxxx;
      r1.x = clamp(select(r5.xxxx, v_35, (v_34 != vec4<u32>())).x, 0.0f, 1.0f);
    }
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    let v_36 = fma(r3.xy, r1.xx, r1.zw);
    let v_37 = r1;
    r1 = vec4<f32>(v_36.x, v_37.y, v_36.y, v_37.w);
    let v_38 = (r1.xz + v3.xy);
    let v_39 = r1;
    r1 = vec4<f32>(v_38.x, v_39.y, v_38.y, v_39.w);
    let v_40 = r1;
    r2 = vec4<f32>(v_40.xz, r2.zw);
  }
  r2 = textureSample(t0, s0, r2.xyxx.xy);
  r3 = textureSample(t4, s4, r1.xzxx.xy);
  let v_41 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_42 = r1;
  r1 = vec4<f32>(v_41.x, v_42.y, v_41.y, v_42.w);
  r1.w = dot(r1.xz, r1.xz);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r3.x = max(cb12_12.tint_symbol_2[0u].w, 0.00100000004749745131f);
  let v_43 = (r1.xz * r3.xx);
  let v_44 = r1;
  r1 = vec4<f32>(v_43.x, v_44.y, v_43.y, v_44.w);
  let v_45 = (r1.zzz * v7.xyz);
  r3 = vec4<f32>(v_45.xyz, r3.w);
  let v_46 = fma(r1.xxx, v6.xyz, r3.xyz);
  r3 = vec4<f32>(v_46.xyz, r3.w);
  let v_47 = fma(r1.www, v4.xyz, r3.xyz);
  r1 = vec4<f32>(v_47.x, r1.y, v_47.yz);
  r3.x = dot(r1.xzw, r1.xzw);
  r3.x = inverseSqrt(r3.x);
  let v_48 = (r1.xzw * r3.xxx);
  r3 = vec4<f32>(r3.x, v_48.xyz);
  r0.z = ((-(r0.yyyy)).z + 1.0f);
  r0.w = 0.0f;
  let v_49 = bitcast<vec3<u32>>(r1.yyy);
  let v_50 = r0.xzw;
  let v_51 = select(r2.xyz, v_50, (v_49 != vec3<u32>()));
  r0 = vec4<f32>(v_51.xyz, r0.w);
  let v_52 = (r0.xyz * v2.xyz);
  r0 = vec4<f32>(v_52.xyz, r0.w);
  r0.w = (r2.w * v1.w);
  r1.x = (v1.x * cb2_2.tint_symbol[15u].z);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_53 = fma(r3.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_53.xyz, o1.w);
  r1.y = fma(r1.w, r3.x, -0.34999999403953552246f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r1.y = (r1.y * cb5_5.tint_symbol_1[3u].z);
  r1.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r1.y = (r1.z * r1.y);
  r1.x = (r1.x * r1.y);
  r1.y = (cb12_12.tint_symbol_2[0u].y * 0.001953125f);
  r2.z = (-(r1.yyyy)).z;
  r1.z = fma((-(cb12_12.tint_symbol_2[0u].zzzz)).z, 0.5f, 1.0f);
  r1.z = (r1.z * r1.x);
  r1.z = fma(r1.z, -0.5f, 1.0f);
  let v_54 = (r0.xyz * r1.zzz);
  o0 = vec4<f32>(v_54.xyz, o0.w);
  r0.x = clamp(((cb12_12.tint_symbol_2[0u].zzzz + vec4<f32>(0.69999998807907104492f))).x, 0.0f, 1.0f);
  let v_55 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_55.xy, r0.zw);
  let v_56 = (-(cb12_12.tint_symbol_2[0u].zzzx)).yw;
  let v_57 = r2;
  r2 = vec4<f32>(v_57.x, v_56.x, v_57.z, v_56.y);
  r0.z = 0.97000002861022949219f;
  let v_58 = (r0.xyz + r2.yzw);
  r0 = vec4<f32>(v_58.xyz, r0.w);
  let v_59 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_59.xyz, r0.w);
  let v_60 = fma(r0.xz, r1.xx, cb12_12.tint_symbol_2[0u].zx);
  let v_61 = r2;
  r2 = vec4<f32>(v_60.x, v_61.y, v_60.y, v_61.w);
  r2.y = fma(r0.y, r1.x, r1.y);
  let v_62 = sqrt(r2.xy);
  o2 = vec4<f32>(v_62.xy, o2.zw);
  o0.w = r0.w;
  o1.w = r0.w;
  o2.z = r2.z;
  o2.w = r0.w;
  o3 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
}

fn v_5(v_63 : bool) {
  if (v_63) {
    discard;
    return;
  }
}

struct tint_symbol_3 {
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
fn main(@builtin(position) v_64 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_64, v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_3(o0, o1, o2, o3);
}
