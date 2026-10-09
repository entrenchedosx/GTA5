diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb18_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct_1;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = inverseSqrt(r0.x);
  let v = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(r0.x, v.xyz);
  r1 = textureSample(t4, s4, v1.xyxx.xy);
  let v_1 = (r1.xy * r1.xy);
  r2 = vec4<f32>(v_1.xy, r2.zw);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r1.z >= 0.8125f)));
  let v_2 = (r2.xy * cb10_10.tint_symbol_3[0u].wz);
  r3 = vec4<f32>(v_2.xy, r3.zw);
  r2.w = fract(cb13_13.tint_symbol_1[16u].z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f >= r2.w)));
  r4 = vec4<f32>((((-(v1.yxyy)).xy + vec2<f32>(1.0f))).xy, r4.zw);
  let v_3 = fma(v1.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  r4 = vec4<f32>(r4.xy, v_3.xy);
  let v_4 = bitcast<vec2<u32>>(r3.zz);
  let v_5 = r4.xy;
  let v_6 = select(r4.zw, v_5, (v_4 != vec2<u32>()));
  r3 = vec4<f32>(r3.xy, v_6.xy);
  r4 = textureSampleLevel(t14, s14, r3.zwzz.xy, 0.0f);
  r3.z = (r4.w * v3.w);
  r3.w = (v5.z * cb13_13.tint_symbol_1[16u].x);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    let v_7 = fract(v5.xy);
    r5 = vec4<f32>(v_7.xy, r5.zw);
    let v_8 = abs(v5.zzzz);
    let v_9 = abs(v5.wwww);
    r5.z = fma(r5.y, v_8.z, v_9.z);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r2.w)));
    r5.w = ((-(r5.xxxx)).w + 1.0f);
    let v_10 = bitcast<vec2<u32>>(r2.ww);
    let v_11 = r5.zw;
    let v_12 = select(r5.xz, v_11, (v_10 != vec2<u32>()));
    r5 = vec4<f32>(v_12.xy, r5.zw);
    r5 = textureSampleLevel(t15, s15, r5.xyxx.xy, 0.0f).zxyw;
    r2.w = ((-(r5.xxxx)).w + 1.0f);
    r2.w = (r2.w * r2.w);
    r2.w = (r5.y * r2.w);
    r2.y = fma((-(r2.yyyy)).y, cb10_10.tint_symbol_3[0u].z, cb13_13.tint_symbol_1[6u].w);
    r3.y = fma(r2.w, r2.y, r3.y);
    r2.x = fma((-(r2.xxxx)).x, cb10_10.tint_symbol_3[0u].w, cb13_13.tint_symbol_1[7u].w);
    r3.x = fma(r2.w, r2.x, r3.x);
    let v_13 = -(r4.xyxz);
    let v_14 = fma(r4.xyz, cb13_13.tint_symbol_1[7u].xyz, v_13.xyw);
    r2 = vec4<f32>(v_14.xy, r2.z, v_14.z);
    let v_15 = fma(r5.zzz, r2.xyw, r4.xyz);
    r2 = vec4<f32>(v_15.xy, r2.z, v_15.z);
    let v_16 = (r5.yyy * cb13_13.tint_symbol_1[6u].xyz);
    r5 = vec4<f32>(r5.x, v_16.xyz);
    let v_17 = fma(r2.xyw, r5.xxx, r5.yzw);
    r4 = vec4<f32>(v_17.xyz, r4.w);
  } else {
    r5.x = 1.0f;
  }
  r2.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[3u].z == 0.0f))));
  if ((bitcast<u32>(r2.x) != 0u)) {
    r1.w = (r1.w * r5.x);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[5u].x == 1.0f)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_18 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r1 = vec4<f32>(v_18.xy, r1.zw);
      r5 = textureSample(t2, s2, r1.xyzx.xyz);
    } else {
      let v_19 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r1 = vec4<f32>(v_19.xy, r1.zw);
      r6 = textureSample(t2, s2, r1.xyzx.xyz);
      r2.x = select(3.0f, 2.0f, (bitcast<u32>(r2.z) != 0u));
      let v_20 = (r2.xx * v1.xy);
      r1 = vec4<f32>(v_20.xy, r1.zw);
      r7 = textureSample(t2, s2, r1.xyzx.xyz);
      let v_21 = -(r7.xxxx);
      r1.x = (r6.x + v_21.x);
      r5.x = fma(cb13_13.tint_symbol_1[5u].x, r1.x, r7.x);
    }
    let v_22 = select(vec2<f32>(1.0f, -1.0f), vec2<f32>(2.0f, -2.0f), (bitcast<vec2<u32>>(r2.zz) != vec2<u32>()));
    r1 = vec4<f32>(v_22.xy, r1.zw);
    r1.z = (r1.y + cb11_11.tint_symbol_2[0u].x);
    r1.z = fma(cb13_13.tint_symbol_1[5u].x, r1.z, r1.x);
    r1.y = (r1.y + cb13_13.tint_symbol_1[3u].z);
    r1.x = fma(cb13_13.tint_symbol_1[5u].x, r1.y, r1.x);
    r1.y = fma(r5.x, 2.0f, -1.0f);
    r1.y = (r1.z * r1.y);
    r1.y = (r1.w * r1.y);
    r1.x = fma(r1.y, r1.x, 1.0f);
    let v_23 = (r1.xxx * r4.xyz);
    r4 = vec4<f32>(v_23.xyz, r4.w);
  }
  r1 = vec4<f32>(((v1.zz + vec2<f32>(0.0f, -0.75f))).xy, r1.zw);
  let v_24 = clamp(((r1.xyxx * vec4<f32>(4.0f, 4.0f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_24.xy, r1.zw);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.z) == 0i)));
  let v_25 = (r4.xyz * cb13_13.tint_symbol_1[17u].xxx);
  r2 = vec4<f32>(v_25.xy, r2.z, v_25.z);
  let v_26 = (r1.xxx * r2.xyw);
  r2 = vec4<f32>(v_26.xy, r2.z, v_26.z);
  let v_27 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r1.zzz) & bitcast<vec3<u32>>(r2.xyw)));
  r1 = vec4<f32>(v_27.x, r1.y, v_27.yz);
  let v_28 = ((-(r1.xxzw)).xzw + r4.xyz);
  r1 = vec4<f32>(v_28.x, r1.y, v_28.yz);
  let v_29 = fma(cb13_13.tint_symbol_1[17u].yz, r1.yy, r3.yx);
  r2 = vec4<f32>(v_29.xy, r2.zw);
  let v_30 = (r1.xzw * cb13_13.tint_symbol_1[4u].xxx);
  r1 = vec4<f32>(v_30.xyz, r1.w);
  r1.w = bitcast<f32>((bitcast<u32>(r2.z) & 1008981770u));
  r2.z = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r2.z) != 0u));
  r2.y = (r2.z + r2.y);
  r1.w = fma(cb13_13.tint_symbol_1[4u].z, r2.y, r1.w);
  r2.y = dot(v4.xyz, v4.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_31 = (r2.yyy * v4.xyz);
  r3 = vec4<f32>(v_31.xy, r3.z, v_31.z);
  let v_32 = dot(r3.xyw, r0.yzw);
  r2.z = clamp(vec4<f32>(v_32, v_32, v_32, v_32).z, 0.0f, 1.0f);
  r2.z = ((-(r2.zzzz)).z + 0.5f);
  r2.z = clamp(((r2.zzzz * vec4<f32>(2.5f))).z, 0.0f, 1.0f);
  r2.w = fma(r2.z, -2.0f, 3.0f);
  r2.z = (r2.z * r2.z);
  r2.z = (r2.z * r2.w);
  r0.x = fma(v2.z, r0.x, 1.0f);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).x, 0.0f, 1.0f);
  r0.x = (r0.x * 1.42857146263122558594f);
  let v_33 = clamp(v6.xyz.xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_33.xy, r3.zw);
  r2.z = (r2.z * r3.x);
  r0.x = (r0.x * r2.z);
  let v_34 = (r1.xyz * r0.xxx);
  r4 = vec4<f32>(v_34.xyz, r4.w);
  let v_35 = fma(r4.xyz, cb13_13.tint_symbol_1[4u].yyy, r1.xyz);
  o0 = vec4<f32>(v_35.xyz, o0.w);
  let v_36 = -(r0.yzwy);
  let v_37 = fma(v4.xyz, r2.yyy, v_36.xyz);
  r1 = vec4<f32>(v_37.xyz, r1.w);
  let v_38 = fma(r3.yyy, r1.xyz, r0.yzw);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  r0.w = (r3.z * cb2_2.tint_symbol[15u].x);
  let v_39 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_39.xyz, o1.w);
  r0.x = (r2.x * 0.001953125f);
  o2.x = sqrt(r1.w);
  o2.y = sqrt(r0.x);
  o0.w = r0.w;
  o1.w = r0.w;
  o2.z = cb10_10.tint_symbol_3[0u].y;
  o2.w = r0.w;
  o3 = vec4<f32>();
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
