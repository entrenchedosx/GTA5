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

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t4, s4, v1.xyxx.xy);
  let v_2 = (r0.xy * r0.xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.8125f)));
  let v_3 = (r1.xy * cb10_10.tint_symbol_3[0u].wz);
  r2 = vec4<f32>(v_3.xy, r2.zw);
  r1.w = fract(cb13_13.tint_symbol_1[16u].z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f >= r1.w)));
  r3 = vec4<f32>((((-(v1.yxyy)).xy + vec2<f32>(1.0f))).xy, r3.zw);
  let v_4 = fma(v1.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  r3 = vec4<f32>(r3.xy, v_4.xy);
  let v_5 = bitcast<vec2<u32>>(r2.zz);
  let v_6 = r3.xy;
  let v_7 = select(r3.zw, v_6, (v_5 != vec2<u32>()));
  r2 = vec4<f32>(r2.xy, v_7.xy);
  r3 = textureSampleLevel(t14, s14, r2.zwzz.xy, 0.0f);
  r2.z = (r3.w * v3.w);
  r2.w = (v5.z * cb13_13.tint_symbol_1[16u].x);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    let v_8 = fract(v5.xy);
    r4 = vec4<f32>(v_8.xy, r4.zw);
    let v_9 = abs(v5.zzzz);
    let v_10 = abs(v5.wwww);
    r4.z = fma(r4.y, v_9.z, v_10.z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r1.w)));
    r4.w = ((-(r4.xxxx)).w + 1.0f);
    let v_11 = bitcast<vec2<u32>>(r1.ww);
    let v_12 = r4.zw;
    let v_13 = select(r4.xz, v_12, (v_11 != vec2<u32>()));
    r4 = vec4<f32>(v_13.xy, r4.zw);
    r4 = textureSampleLevel(t15, s15, r4.xyxx.xy, 0.0f).zxyw;
    r1.w = ((-(r4.xxxx)).w + 1.0f);
    r1.w = (r1.w * r1.w);
    r1.w = (r4.y * r1.w);
    r1.y = fma((-(r1.yyyy)).y, cb10_10.tint_symbol_3[0u].z, cb13_13.tint_symbol_1[6u].w);
    r2.y = fma(r1.w, r1.y, r2.y);
    r1.x = fma((-(r1.xxxx)).x, cb10_10.tint_symbol_3[0u].w, cb13_13.tint_symbol_1[7u].w);
    r2.x = fma(r1.w, r1.x, r2.x);
    let v_14 = -(r3.xyxz);
    let v_15 = fma(r3.xyz, cb13_13.tint_symbol_1[7u].xyz, v_14.xyw);
    r1 = vec4<f32>(v_15.xy, r1.z, v_15.z);
    let v_16 = fma(r4.zzz, r1.xyw, r3.xyz);
    r1 = vec4<f32>(v_16.xy, r1.z, v_16.z);
    let v_17 = (r4.yyy * cb13_13.tint_symbol_1[6u].xyz);
    r4 = vec4<f32>(r4.x, v_17.xyz);
    let v_18 = fma(r1.xyw, r4.xxx, r4.yzw);
    r3 = vec4<f32>(v_18.xyz, r3.w);
  } else {
    r4.x = 1.0f;
  }
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[3u].z == 0.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r0.w = (r0.w * r4.x);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[5u].x == 1.0f)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      let v_19 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r0 = vec4<f32>(v_19.xy, r0.zw);
      r4 = textureSample(t2, s2, r0.xyzx.xyz);
    } else {
      let v_20 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r0 = vec4<f32>(v_20.xy, r0.zw);
      r5 = textureSample(t2, s2, r0.xyzx.xyz);
      r1.x = select(3.0f, 2.0f, (bitcast<u32>(r1.z) != 0u));
      let v_21 = (r1.xx * v1.xy);
      r0 = vec4<f32>(v_21.xy, r0.zw);
      r6 = textureSample(t2, s2, r0.xyzx.xyz);
      let v_22 = -(r6.xxxx);
      r0.x = (r5.x + v_22.x);
      r4.x = fma(cb13_13.tint_symbol_1[5u].x, r0.x, r6.x);
    }
    let v_23 = select(vec2<f32>(1.0f, -1.0f), vec2<f32>(2.0f, -2.0f), (bitcast<vec2<u32>>(r1.zz) != vec2<u32>()));
    r0 = vec4<f32>(v_23.xy, r0.zw);
    r0.z = (r0.y + cb11_11.tint_symbol_2[0u].x);
    r0.z = fma(cb13_13.tint_symbol_1[5u].x, r0.z, r0.x);
    r0.y = (r0.y + cb13_13.tint_symbol_1[3u].z);
    r0.x = fma(cb13_13.tint_symbol_1[5u].x, r0.y, r0.x);
    r0.y = fma(r4.x, 2.0f, -1.0f);
    r0.y = (r0.z * r0.y);
    r0.y = (r0.w * r0.y);
    r0.x = fma(r0.y, r0.x, 1.0f);
    let v_24 = (r0.xxx * r3.xyz);
    r3 = vec4<f32>(v_24.xyz, r3.w);
  }
  r0.x = (r2.z * cb2_2.tint_symbol[15u].x);
  r0.y = dot(v0.xy, vec2<f32>(0.5f));
  r0.y = fract(r0.y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < 0.5f)));
  let v_25 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(0.94999998807907104492f, 0.50196081399917602539f) >= r0.xx)));
  r0 = vec4<f32>(r0.xy, v_25.xy);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r0.y)));
  v_26((bitcast<u32>(r0.y) != 0u));
  r0.y = dot(v2.xyz, v2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_27 = (r0.yyy * v2.xyz);
  r1 = vec4<f32>(v_27.xy, r1.z, v_27.z);
  r0 = vec4<f32>(r0.xy, ((v1.zz + vec2<f32>(0.0f, -0.75f))).xy);
  let v_28 = clamp(((r0.zzzw * vec4<f32>(0.0f, 0.0f, 4.0f, 4.0f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(r0.xy, v_28.xy);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.z) == 0i)));
  let v_29 = (r3.xyz * cb13_13.tint_symbol_1[17u].xxx);
  r4 = vec4<f32>(v_29.xyz, r4.w);
  let v_30 = (r0.zzz * r4.xyz);
  r4 = vec4<f32>(v_30.xyz, r4.w);
  let v_31 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r2.zzz) & bitcast<vec3<u32>>(r4.xyz)));
  r4 = vec4<f32>(v_31.xyz, r4.w);
  let v_32 = -(r4.xyzx);
  let v_33 = (r3.xyz + v_32.xyz);
  r3 = vec4<f32>(v_33.xyz, r3.w);
  let v_34 = fma(cb13_13.tint_symbol_1[17u].yz, r0.ww, r2.yx);
  r0 = vec4<f32>(r0.xy, v_34.xy);
  let v_35 = (r3.xyz * cb13_13.tint_symbol_1[4u].xxx);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  r2.w = bitcast<f32>((bitcast<u32>(r1.z) & 1008981770u));
  r1.z = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r1.z) != 0u));
  r0.w = (r0.w + r1.z);
  r0.w = fma(cb13_13.tint_symbol_1[4u].z, r0.w, r2.w);
  r1.z = dot(v4.xyz, v4.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_36 = (r1.zzz * v4.xyz);
  r3 = vec4<f32>(v_36.xyz, r3.w);
  let v_37 = dot(r3.xyz, r1.xyw);
  r2.w = clamp(vec4<f32>(v_37, v_37, v_37, v_37).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 0.5f);
  r2.w = clamp(((r2.wwww * vec4<f32>(2.5f))).w, 0.0f, 1.0f);
  r3.x = fma(r2.w, -2.0f, 3.0f);
  r2.w = (r2.w * r2.w);
  r2.w = (r2.w * r3.x);
  r0.y = fma(v2.z, r0.y, 1.0f);
  r0.y = clamp(fma(r0.yyyy, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).y, 0.0f, 1.0f);
  r0.y = (r0.y * 1.42857146263122558594f);
  let v_38 = clamp(v6.xyz.xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_38.xy, r3.zw);
  r2.w = (r2.w * r3.x);
  r0.y = (r0.y * r2.w);
  let v_39 = (r2.xyz * r0.yyy);
  r3 = vec4<f32>(v_39.x, r3.y, v_39.yz);
  let v_40 = fma(r3.xzw, cb13_13.tint_symbol_1[4u].yyy, r2.xyz);
  o0 = vec4<f32>(v_40.xyz, o0.w);
  let v_41 = -(r1.xywx);
  let v_42 = fma(v4.xyz, r1.zzz, v_41.xyz);
  r2 = vec4<f32>(v_42.xyz, r2.w);
  let v_43 = fma(r3.yyy, r2.xyz, r1.xyw);
  r1 = vec4<f32>(v_43.xyz, r1.w);
  let v_44 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_44.xyz, o1.w);
  r0.y = (r0.z * 0.001953125f);
  let v_45 = sqrt(r0.wy);
  o2 = vec4<f32>(v_45.xy, o2.zw);
  r0.y = fma(r0.x, 1.33000004291534423828f, -0.50196081399917602539f);
  o0.w = clamp(fma(r0.yyyy, vec4<f32>(2.23194742202758789062f), vec4<f32>(0.0078431377187371254f)).w, 0.0f, 1.0f);
  o1.w = r0.x;
  o2.z = cb10_10.tint_symbol_3[0u].y;
  o2.w = 1.0f;
  o3 = vec4<f32>();
}

fn v_26(v_46 : bool) {
  if (v_46) {
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
fn main(@builtin(position) v_47 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_47, v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
