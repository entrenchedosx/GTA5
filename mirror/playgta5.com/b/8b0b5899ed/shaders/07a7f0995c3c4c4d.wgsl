diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb19_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[18u].x == 0.0f))));
  r0.z = bitcast<f32>(~(bitcast<u32>(r0.y)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r0.x)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.z)));
  v((bitcast<u32>(r0.z) != 0u));
  r0.z = dot(v2.xyz, v2.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_1 = (r0.zzz * v2.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  r2 = textureSample(t4, s4, v1.xyxx.xy);
  let v_2 = (r2.xy * r2.xy);
  r3 = vec4<f32>(v_2.xy, r3.zw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 0.8125f)));
  let v_3 = (r3.xy * cb10_10.tint_symbol_3[0u].wz);
  r3 = vec4<f32>(r3.xy, v_3.xy);
  r1.w = fract(cb13_13.tint_symbol_1[16u].z);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f >= r1.w)));
  let v_4 = r4;
  r4 = vec4<f32>(v_4.x, (((-(v1.yyxy)).yz + vec2<f32>(1.0f))).xy, v_4.w);
  let v_5 = fma(v1.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  r5 = vec4<f32>(v_5.xy, r5.zw);
  let v_6 = bitcast<vec2<u32>>(r4.xx);
  let v_7 = r4.yz;
  let v_8 = select(r5.xy, v_7, (v_6 != vec2<u32>()));
  r4 = vec4<f32>(v_8.xy, r4.zw);
  r4 = textureSampleLevel(t14, s14, r4.xyxx.xy, 0.0f);
  r4.w = (r4.w * v3.w);
  r5.x = (v5.z * cb13_13.tint_symbol_1[16u].x);
  r5.x = bitcast<f32>(select(0u, 4294967295u, !((r5.x == 0.0f))));
  if ((bitcast<u32>(r5.x) != 0u)) {
    let v_9 = fract(v5.xy);
    r5 = vec4<f32>(v_9.xy, r5.zw);
    let v_10 = abs(v5.zzzz);
    let v_11 = abs(v5.wwww);
    r5.z = fma(r5.y, v_10.z, v_11.z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r1.w)));
    r5.w = ((-(r5.xxxx)).w + 1.0f);
    let v_12 = bitcast<vec2<u32>>(r1.ww);
    let v_13 = r5.zw;
    let v_14 = select(r5.xz, v_13, (v_12 != vec2<u32>()));
    r5 = vec4<f32>(v_14.xy, r5.zw);
    r5 = textureSampleLevel(t15, s15, r5.xyxx.xy, 0.0f).zxyw;
    r1.w = ((-(r5.xxxx)).w + 1.0f);
    r1.w = (r1.w * r1.w);
    r1.w = (r5.y * r1.w);
    r3.y = fma((-(r3.yyyy)).y, cb10_10.tint_symbol_3[0u].z, cb13_13.tint_symbol_1[6u].w);
    r3.w = fma(r1.w, r3.y, r3.w);
    r3.x = fma((-(r3.xxxx)).x, cb10_10.tint_symbol_3[0u].w, cb13_13.tint_symbol_1[7u].w);
    r3.z = fma(r1.w, r3.x, r3.z);
    let v_15 = -(r4.xyzx);
    let v_16 = fma(r4.xyz, cb13_13.tint_symbol_1[7u].xyz, v_15.xyz);
    r6 = vec4<f32>(v_16.xyz, r6.w);
    let v_17 = fma(r5.zzz, r6.xyz, r4.xyz);
    r6 = vec4<f32>(v_17.xyz, r6.w);
    let v_18 = (r5.yyy * cb13_13.tint_symbol_1[6u].xyz);
    r5 = vec4<f32>(r5.x, v_18.xyz);
    let v_19 = fma(r6.xyz, r5.xxx, r5.yzw);
    r4 = vec4<f32>(v_19.xyz, r4.w);
  } else {
    r5.x = 1.0f;
  }
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[3u].z == 0.0f))));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = (r2.w * r5.x);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[5u].x == 1.0f)));
    if ((bitcast<u32>(r2.w) != 0u)) {
      let v_20 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r2 = vec4<f32>(v_20.xy, r2.zw);
      r5 = textureSample(t2, s2, r2.xyzx.xyz);
    } else {
      let v_21 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r2 = vec4<f32>(v_21.xy, r2.zw);
      r6 = textureSample(t2, s2, r2.xyzx.xyz);
      r2.w = select(3.0f, 2.0f, (bitcast<u32>(r0.w) != 0u));
      let v_22 = (r2.ww * v1.xy);
      r2 = vec4<f32>(v_22.xy, r2.zw);
      r2 = textureSample(t2, s2, r2.xyzx.xyz);
      r2.y = ((-(r2.xxxx)).y + r6.x);
      r5.x = fma(cb13_13.tint_symbol_1[5u].x, r2.y, r2.x);
    }
    let v_23 = select(vec2<f32>(1.0f, -1.0f), vec2<f32>(2.0f, -2.0f), (bitcast<vec2<u32>>(r0.ww) != vec2<u32>()));
    r2 = vec4<f32>(v_23.xy, r2.zw);
    r2.z = (r2.y + cb11_11.tint_symbol_2[0u].x);
    r2.z = fma(cb13_13.tint_symbol_1[5u].x, r2.z, r2.x);
    r2.y = (r2.y + cb13_13.tint_symbol_1[3u].z);
    r2.x = fma(cb13_13.tint_symbol_1[5u].x, r2.y, r2.x);
    r2.y = fma(r5.x, 2.0f, -1.0f);
    r2.y = (r2.z * r2.y);
    r1.w = (r1.w * r2.y);
    r1.w = fma(r1.w, r2.x, 1.0f);
    let v_24 = (r1.www * r4.xyz);
    r4 = vec4<f32>(v_24.xyz, r4.w);
  }
  r2 = vec4<f32>(((v1.zz + vec2<f32>(0.0f, -0.75f))).xy, r2.zw);
  let v_25 = clamp(((r2.xyxx * vec4<f32>(4.0f, 4.0f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_25.xy, r2.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) == 0i)));
  let v_26 = (r4.xyz * cb13_13.tint_symbol_1[17u].xxx);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  let v_27 = (r2.xxx * r5.xyz);
  r2 = vec4<f32>(v_27.x, r2.y, v_27.yz);
  let v_28 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r1.www) & bitcast<vec3<u32>>(r2.xzw)));
  r2 = vec4<f32>(v_28.x, r2.y, v_28.yz);
  let v_29 = ((-(r2.xxzw)).xzw + r4.xyz);
  r2 = vec4<f32>(v_29.x, r2.y, v_29.yz);
  let v_30 = fma(cb13_13.tint_symbol_1[17u].yz, r2.yy, r3.wz);
  r3 = vec4<f32>(v_30.xy, r3.zw);
  let v_31 = (r2.xzw * cb13_13.tint_symbol_1[4u].xxx);
  r2 = vec4<f32>(v_31.xyz, r2.w);
  r1.w = bitcast<f32>((bitcast<u32>(r0.w) & 1008981770u));
  r0.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r0.w) != 0u));
  r0.w = (r0.w + r3.y);
  r0.w = fma(cb13_13.tint_symbol_1[4u].z, r0.w, r1.w);
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_32 = (r1.www * v4.xyz);
  r3 = vec4<f32>(r3.x, v_32.xyz);
  let v_33 = dot(r3.yzw, r1.xyz);
  r2.w = clamp(vec4<f32>(v_33, v_33, v_33, v_33).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 0.5f);
  r2.w = clamp(((r2.wwww * vec4<f32>(2.5f))).w, 0.0f, 1.0f);
  r3.y = fma(r2.w, -2.0f, 3.0f);
  r2.w = (r2.w * r2.w);
  r2.w = (r2.w * r3.y);
  r0.z = fma(v2.z, r0.z, 1.0f);
  r0.z = clamp(fma(r0.zzzz, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).z, 0.0f, 1.0f);
  r0.z = (r0.z * 1.42857146263122558594f);
  let v_34 = clamp(v6.xyz.xy, vec2<f32>(), vec2<f32>(1.0f));
  let v_35 = r3;
  r3 = vec4<f32>(v_35.x, v_34.xy, v_35.w);
  r2.w = (r2.w * r3.y);
  r0.z = (r0.z * r2.w);
  let v_36 = (r2.xyz * r0.zzz);
  r4 = vec4<f32>(v_36.xyz, r4.w);
  let v_37 = fma(r4.xyz, cb13_13.tint_symbol_1[4u].yyy, r2.xyz);
  o0 = vec4<f32>(v_37.xyz, o0.w);
  let v_38 = -(r1.xyzx);
  let v_39 = fma(v4.xyz, r1.www, v_38.xyz);
  r2 = vec4<f32>(v_39.xyz, r2.w);
  let v_40 = fma(r3.zzz, r2.xyz, r1.xyz);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  r0.z = (r4.w * cb2_2.tint_symbol[15u].x);
  let v_41 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_41.xyz, o1.w);
  r1.x = (r3.x * 0.001953125f);
  o2.x = sqrt(r0.w);
  o2.y = sqrt(r1.x);
  r0.x = (r0.z * r0.x);
  r0.x = (r0.x * cb13_13.tint_symbol_1[18u].x);
  let v_42 = bitcast<u32>(r0.y);
  let v_43 = r0.x;
  o0.w = select(r0.z, v_43, (v_42 != 0u));
  o1.w = r0.z;
  o2.z = cb10_10.tint_symbol_3[0u].y;
  o2.w = r0.z;
  o3 = vec4<f32>();
}

fn v(v_44 : bool) {
  if (v_44) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
