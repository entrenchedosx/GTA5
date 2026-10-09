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

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
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
    let v_7 = (r3.xy * cb12_12.tint_symbol_2[1u].xx);
    r3 = vec4<f32>(v_7.xy, r3.zw);
    let v_8 = (r1.zz * r3.xy);
    r3 = vec4<f32>(v_8.xy, r3.zw);
    let v_9 = (r2.xy / r1.ww);
    r2 = vec4<f32>(v_9.xy, r2.zw);
    let v_10 = (r2.xy * cb12_12.tint_symbol_2[1u].yy);
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
  r2 = textureSample(t0, s0, r2.xyxx.xy);
  r3 = textureSample(t3, s3, r1.xzxx.xy);
  let v_35 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_36 = r1;
  r1 = vec4<f32>(v_35.x, v_36.y, v_35.y, v_36.w);
  r1.w = dot(r1.xz, r1.xz);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r3.x = max(cb12_12.tint_symbol_2[0u].w, 0.00100000004749745131f);
  let v_37 = (r1.xz * r3.xx);
  let v_38 = r1;
  r1 = vec4<f32>(v_37.x, v_38.y, v_37.y, v_38.w);
  let v_39 = (r1.zzz * v6.xyz);
  r3 = vec4<f32>(v_39.xyz, r3.w);
  let v_40 = fma(r1.xxx, v5.xyz, r3.xyz);
  r3 = vec4<f32>(v_40.xyz, r3.w);
  let v_41 = fma(r1.www, v3.xyz, r3.xyz);
  r1 = vec4<f32>(v_41.x, r1.y, v_41.yz);
  r3.x = dot(r1.xzw, r1.xzw);
  r3.x = inverseSqrt(r3.x);
  let v_42 = (r1.xzw * r3.xxx);
  r3 = vec4<f32>(r3.x, v_42.xyz);
  r0.z = ((-(r0.yyyy)).z + 1.0f);
  r0.w = 0.0f;
  let v_43 = bitcast<vec3<u32>>(r1.yyy);
  let v_44 = r0.xzw;
  let v_45 = select(r2.xyz, v_44, (v_43 != vec3<u32>()));
  r0 = vec4<f32>(v_45.xyz, r0.w);
  r0.w = (r2.w * v1.w);
  r1.x = (v1.x * cb2_2.tint_symbol[15u].z);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_46 = fma(r3.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_46.xyz, o1.w);
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
  r1.x = (r1.x * cb12_12.tint_symbol_2[1u].w);
  r1.z = fma(r1.z, -0.5f, 1.0f);
  let v_47 = (r0.xyz * r1.zzz);
  o0 = vec4<f32>(v_47.xyz, o0.w);
  r0.x = clamp(((cb12_12.tint_symbol_2[0u].zzzz + vec4<f32>(0.69999998807907104492f))).x, 0.0f, 1.0f);
  let v_48 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_48.xy, r0.zw);
  let v_49 = (-(cb12_12.tint_symbol_2[0u].zzzx)).yw;
  let v_50 = r2;
  r2 = vec4<f32>(v_50.x, v_49.x, v_50.z, v_49.y);
  r0.z = 0.97000002861022949219f;
  let v_51 = (r0.xyz + r2.yzw);
  r0 = vec4<f32>(v_51.xyz, r0.w);
  let v_52 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_52.xyz, r0.w);
  let v_53 = fma(r0.xz, r1.xx, cb12_12.tint_symbol_2[0u].zx);
  let v_54 = r2;
  r2 = vec4<f32>(v_53.x, v_54.y, v_53.y, v_54.w);
  r2.y = fma(r0.y, r1.x, r1.y);
  let v_55 = sqrt(r2.xy);
  o2 = vec4<f32>(v_55.xy, o2.zw);
  o0.w = r0.w;
  o1.w = r0.w;
  o2.z = r2.z;
  o2.w = r0.w;
  o3 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_3(o0, o1, o2, o3);
}
