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
  r1 = textureSample(t3, s3, v1.xyz.xyxx.xy);
  let v = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_3[0u].x, 0.00100000004749745131f);
  let v_1 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  let v_2 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_2.xyz, r2.w);
  let v_3 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_3.xy, r1.z, v_3.z);
  let v_4 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_5 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r2 = textureSample(t4, s4, v1.xyz.xyxx.xy);
  let v_6 = (r2.yx * r2.yx);
  r3 = vec4<f32>(v_6.xy, r3.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 0.8125f)));
  r0.w = (r0.w * v3.w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[3u].z == 0.0f))));
  if ((bitcast<u32>(r3.z) != 0u)) {
    r3.z = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[5u].x == 1.0f)));
    if ((bitcast<u32>(r3.z) != 0u)) {
      let v_7 = (v1.xyz.xy * cb11_11.tint_symbol_2[0u].zz);
      r2 = vec4<f32>(v_7.xy, r2.zw);
      r4 = textureSample(t2, s2, r2.xyzx.xyz).yzxw;
      let v_8 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
      r4 = vec4<f32>(v_8.xy, r4.zw);
    } else {
      let v_9 = (v1.xyz.xy * cb11_11.tint_symbol_2[0u].zz);
      r2 = vec4<f32>(v_9.xy, r2.zw);
      r5 = textureSample(t2, s2, r2.xyzx.xyz);
      r3.z = select(3.0f, 2.0f, (bitcast<u32>(r1.w) != 0u));
      let v_10 = (r3.zz * v1.xyz.xy);
      r2 = vec4<f32>(v_10.xy, r2.zw);
      r6 = textureSample(t2, s2, r2.xyzx.xyz);
      let v_11 = fma(r6.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r2 = vec4<f32>(v_11.xyz, r2.w);
      let v_12 = fma(r5.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r5 = vec4<f32>(v_12.xyz, r5.w);
      let v_13 = ((-(r2.xyzx)).xyz + r5.xyz);
      r5 = vec4<f32>(v_13.xyz, r5.w);
      let v_14 = fma(cb13_13.tint_symbol_1[5u].xxx, r5.xyz, r2.xyz);
      r4 = vec4<f32>(v_14.xyz, r4.w);
    }
    r5 = select(vec4<f32>(1.0f, -1.0f, 1.5f, -1.5f), vec4<f32>(2.0f, -2.0f, 2.0f, -2.0f), (bitcast<vec4<u32>>(r1.wwww) != vec4<u32>()));
    let v_15 = (r5.yw + cb11_11.tint_symbol_2[0u].xy);
    r2 = vec4<f32>(v_15.xy, r2.zw);
    let v_16 = fma(cb13_13.tint_symbol_1[5u].xx, r2.xy, r5.xz);
    r2 = vec4<f32>(v_16.xy, r2.zw);
    r2.z = (r5.y + cb13_13.tint_symbol_1[3u].z);
    r2.z = fma(cb13_13.tint_symbol_1[5u].x, r2.z, r5.x);
    r3.z = fma(r4.z, 2.0f, -1.0f);
    r2.x = (r2.x * r3.z);
    r2.x = (r2.w * r2.x);
    r2.x = fma(r2.x, r2.z, 1.0f);
    let v_17 = (r0.xyz * r2.xxx);
    r0 = vec4<f32>(v_17.xyz, r0.w);
    let v_18 = (r4.yyy * v6.xyz);
    r4 = vec4<f32>(r4.x, v_18.xyz);
    let v_19 = fma(v5.xyz, r4.xxx, r4.yzw);
    r4 = vec4<f32>(v_19.xyz, r4.w);
    let v_20 = (r2.yyy * r4.xyz);
    r4 = vec4<f32>(v_20.xyz, r4.w);
    let v_21 = (r2.www * r4.xyz);
    r2 = vec4<f32>(v_21.xy, r2.z, v_21.z);
    let v_22 = fma(r2.xyw, r2.zzz, r1.xyz);
    r2 = vec4<f32>(v_22.xyz, r2.w);
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = inverseSqrt(r2.w);
    let v_23 = (r2.www * r2.xyz);
    r1 = vec4<f32>(v_23.xyz, r1.w);
  }
  r2 = vec4<f32>(((v1.xyz.zz + vec2<f32>(0.0f, -0.75f))).xy, r2.zw);
  let v_24 = clamp(((r2.xyxx * vec4<f32>(4.0f, 4.0f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_24.xy, r2.zw);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) == 0i)));
  let v_25 = (r0.xyz * cb13_13.tint_symbol_1[17u].xxx);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  let v_26 = (r2.xxx * r4.xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  let v_27 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r2.zzz) & bitcast<vec3<u32>>(r4.xyz)));
  r2 = vec4<f32>(v_27.x, r2.y, v_27.yz);
  let v_28 = -(r2.xzwx);
  let v_29 = (r0.xyz + v_28.xyz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = (r2.yy * cb13_13.tint_symbol_1[17u].yz);
  r2 = vec4<f32>(v_30.xy, r2.zw);
  let v_31 = fma(r3.xy, cb10_10.tint_symbol_3[0u].zw, r2.xy);
  r2 = vec4<f32>(v_31.xy, r2.zw);
  let v_32 = (r0.xyz * cb13_13.tint_symbol_1[4u].xxx);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  r2.z = bitcast<f32>((bitcast<u32>(r1.w) & 1008981770u));
  r1.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r1.w) != 0u));
  r1.w = (r1.w + r2.y);
  r1.w = fma(cb13_13.tint_symbol_1[4u].z, r1.w, r2.z);
  r2.y = dot(v4.xyz, v4.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_33 = (r2.yyy * v4.xyz);
  r3 = vec4<f32>(v_33.xyz, r3.w);
  r2.z = dot(r1.xyz, r1.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_34 = (r1.xyz * r2.zzz);
  r4 = vec4<f32>(v_34.xyz, r4.w);
  let v_35 = dot(r3.xyz, r4.xyz);
  r2.z = clamp(vec4<f32>(v_35, v_35, v_35, v_35).z, 0.0f, 1.0f);
  r2.z = ((-(r2.zzzz)).z + 0.5f);
  r2.z = clamp(((r2.zzzz * vec4<f32>(2.5f))).z, 0.0f, 1.0f);
  r2.w = fma(r2.z, -2.0f, 3.0f);
  r2.z = (r2.z * r2.z);
  r2.z = (r2.z * r2.w);
  r2.w = (r1.z + 1.0f);
  r2.w = clamp(fma(r2.wwww, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).w, 0.0f, 1.0f);
  r2.w = (r2.w * 1.42857146263122558594f);
  let v_36 = clamp(v7.xyz.xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_36.xy, r3.zw);
  r2.z = (r2.z * r3.x);
  r2.z = (r2.w * r2.z);
  let v_37 = (r0.xyz * r2.zzz);
  r3 = vec4<f32>(v_37.x, r3.y, v_37.yz);
  let v_38 = fma(r3.xzw, cb13_13.tint_symbol_1[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_38.xyz, o0.w);
  let v_39 = -(r1.xyzx);
  let v_40 = fma(v4.xyz, r2.yyy, v_39.xyz);
  r0 = vec4<f32>(v_40.xyz, r0.w);
  let v_41 = fma(r3.yyy, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_42 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_42.xyz, o1.w);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_4(o0, o1, o2, o3);
}
