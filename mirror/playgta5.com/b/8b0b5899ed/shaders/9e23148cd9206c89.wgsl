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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[18u].x == 0.0f))));
  r1.z = bitcast<f32>(~(bitcast<u32>(r1.y)));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r1.x)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r1.z)));
  v((bitcast<u32>(r1.z) != 0u));
  r2 = textureSample(t3, s3, v1.xyz.xyxx.xy);
  let v_1 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_1.xy);
  r2.x = dot(r1.zw, r1.zw);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = sqrt(abs(r2.xxxx).x);
  r2.y = max(cb10_10.tint_symbol_3[0u].x, 0.00100000004749745131f);
  let v_2 = (r1.zw * r2.yy);
  r1 = vec4<f32>(r1.xy, v_2.xy);
  let v_3 = (r1.www * v6.xyz);
  r2 = vec4<f32>(r2.x, v_3.xyz);
  let v_4 = fma(r1.zzz, v5.xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_4.xyz);
  let v_5 = fma(r2.xxx, v2.xyz, r2.yzw);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_6 = (r1.zzz * r2.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r3 = textureSample(t4, s4, v1.xyz.xyxx.xy);
  let v_7 = (r3.yx * r3.yx);
  r1 = vec4<f32>(r1.xy, v_7.xy);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
  r0.w = (r0.w * v3.w);
  r4.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[3u].z == 0.0f))));
  if ((bitcast<u32>(r4.x) != 0u)) {
    r4.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[5u].x == 1.0f)));
    if ((bitcast<u32>(r4.x) != 0u)) {
      let v_8 = (v1.xyz.xy * cb11_11.tint_symbol_2[0u].zz);
      r3 = vec4<f32>(v_8.xy, r3.zw);
      r4 = textureSample(t2, s2, r3.xyzx.xyz).yzxw;
      let v_9 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
      r4 = vec4<f32>(v_9.xy, r4.zw);
    } else {
      let v_10 = (v1.xyz.xy * cb11_11.tint_symbol_2[0u].zz);
      r3 = vec4<f32>(v_10.xy, r3.zw);
      r5 = textureSample(t2, s2, r3.xyzx.xyz);
      r4.w = select(3.0f, 2.0f, (bitcast<u32>(r2.w) != 0u));
      let v_11 = (r4.ww * v1.xyz.xy);
      r3 = vec4<f32>(v_11.xy, r3.zw);
      r6 = textureSample(t2, s2, r3.xyzx.xyz);
      let v_12 = fma(r6.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r3 = vec4<f32>(v_12.xyz, r3.w);
      let v_13 = fma(r5.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r5 = vec4<f32>(v_13.xyz, r5.w);
      let v_14 = ((-(r3.xyzx)).xyz + r5.xyz);
      r5 = vec4<f32>(v_14.xyz, r5.w);
      let v_15 = fma(cb13_13.tint_symbol_1[5u].xxx, r5.xyz, r3.xyz);
      r4 = vec4<f32>(v_15.xyz, r4.w);
    }
    r5 = select(vec4<f32>(1.0f, -1.0f, 1.5f, -1.5f), vec4<f32>(2.0f, -2.0f, 2.0f, -2.0f), (bitcast<vec4<u32>>(r2.wwww) != vec4<u32>()));
    let v_16 = (r5.yw + cb11_11.tint_symbol_2[0u].xy);
    r3 = vec4<f32>(v_16.xy, r3.zw);
    let v_17 = fma(cb13_13.tint_symbol_1[5u].xx, r3.xy, r5.xz);
    r3 = vec4<f32>(v_17.xy, r3.zw);
    r3.z = (r5.y + cb13_13.tint_symbol_1[3u].z);
    r3.z = fma(cb13_13.tint_symbol_1[5u].x, r3.z, r5.x);
    r4.z = fma(r4.z, 2.0f, -1.0f);
    r3.x = (r3.x * r4.z);
    r3.x = (r3.w * r3.x);
    r3.x = fma(r3.x, r3.z, 1.0f);
    let v_18 = (r0.xyz * r3.xxx);
    r0 = vec4<f32>(v_18.xyz, r0.w);
    let v_19 = (r4.yyy * v6.xyz);
    r4 = vec4<f32>(r4.x, v_19.xyz);
    let v_20 = fma(v5.xyz, r4.xxx, r4.yzw);
    r4 = vec4<f32>(v_20.xyz, r4.w);
    let v_21 = (r3.yyy * r4.xyz);
    r4 = vec4<f32>(v_21.xyz, r4.w);
    let v_22 = (r3.www * r4.xyz);
    r3 = vec4<f32>(v_22.xy, r3.z, v_22.z);
    let v_23 = fma(r3.xyw, r3.zzz, r2.xyz);
    r3 = vec4<f32>(v_23.xyz, r3.w);
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_24 = (r3.www * r3.xyz);
    r2 = vec4<f32>(v_24.xyz, r2.w);
  }
  r3 = vec4<f32>(((v1.xyz.zz + vec2<f32>(0.0f, -0.75f))).xy, r3.zw);
  let v_25 = clamp(((r3.xyxx * vec4<f32>(4.0f, 4.0f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_25.xy, r3.zw);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 0i)));
  let v_26 = (r0.xyz * cb13_13.tint_symbol_1[17u].xxx);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  let v_27 = (r3.xxx * r4.xyz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  let v_28 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.zzz) & bitcast<vec3<u32>>(r4.xyz)));
  r3 = vec4<f32>(v_28.x, r3.y, v_28.yz);
  let v_29 = -(r3.xzwx);
  let v_30 = (r0.xyz + v_29.xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = (r3.yy * cb13_13.tint_symbol_1[17u].yz);
  r3 = vec4<f32>(v_31.xy, r3.zw);
  let v_32 = fma(r1.zw, cb10_10.tint_symbol_3[0u].zw, r3.xy);
  r1 = vec4<f32>(r1.xy, v_32.xy);
  let v_33 = (r0.xyz * cb13_13.tint_symbol_1[4u].xxx);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  r3.x = bitcast<f32>((bitcast<u32>(r2.w) & 1008981770u));
  r2.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r2.w) != 0u));
  r1.w = (r1.w + r2.w);
  r1.w = fma(cb13_13.tint_symbol_1[4u].z, r1.w, r3.x);
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_34 = (r2.www * v4.xyz);
  r3 = vec4<f32>(v_34.xyz, r3.w);
  r3.w = dot(r2.xyz, r2.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_35 = (r2.xyz * r3.www);
  r4 = vec4<f32>(v_35.xyz, r4.w);
  let v_36 = dot(r3.xyz, r4.xyz);
  r3.x = clamp(vec4<f32>(v_36, v_36, v_36, v_36).x, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 0.5f);
  r3.x = clamp(((r3.xxxx * vec4<f32>(2.5f))).x, 0.0f, 1.0f);
  r3.y = fma(r3.x, -2.0f, 3.0f);
  r3.x = (r3.x * r3.x);
  r3.x = (r3.x * r3.y);
  r3.y = (r2.z + 1.0f);
  r3.y = clamp(fma(r3.yyyy, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).y, 0.0f, 1.0f);
  r3.y = (r3.y * 1.42857146263122558594f);
  let v_37 = clamp(v7.xyz.xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(r3.xy, v_37.xy);
  r3.x = (r3.z * r3.x);
  r3.x = (r3.y * r3.x);
  let v_38 = (r0.xyz * r3.xxx);
  r3 = vec4<f32>(v_38.xyz, r3.w);
  let v_39 = fma(r3.xyz, cb13_13.tint_symbol_1[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_39.xyz, o0.w);
  let v_40 = -(r2.xyzx);
  let v_41 = fma(v4.xyz, r2.www, v_40.xyz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = fma(r3.www, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_42.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_43 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_43.xyz, o1.w);
  r0.x = (r1.z * 0.001953125f);
  o2.x = sqrt(r1.w);
  o2.y = sqrt(r0.x);
  r0.x = (r0.w * r1.x);
  r0.x = (r0.x * cb13_13.tint_symbol_1[18u].x);
  let v_44 = bitcast<u32>(r1.y);
  let v_45 = r0.x;
  o0.w = select(r0.w, v_45, (v_44 != 0u));
  o1.w = r0.w;
  o2.z = cb10_10.tint_symbol_3[0u].y;
  o2.w = r0.w;
  o3 = vec4<f32>();
}

fn v(v_46 : bool) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_4(o0, o1, o2, o3);
}
