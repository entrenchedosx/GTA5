diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb17_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb17_struct_1;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r0.w = (r0.w * v3.w);
  r1.x = (v4.z * cb13_13.tint_symbol_3[16u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((r1.x == 0.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    let v_2 = fract(v4.yx);
    let v_3 = r1;
    r1 = vec4<f32>(v_2.x, v_3.y, v_2.y, v_3.w);
    let v_4 = abs(v4.zzzz);
    let v_5 = abs(v4.wwww);
    r1.w = fma(r1.x, v_4.w, v_5.w);
    r1.x = fma(r1.x, v1.w, v2.w);
    r2.x = fract(cb13_13.tint_symbol_3[16u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r2.x)));
    r1.y = ((-(r1.zzzz)).y + 1.0f);
    let v_6 = bitcast<vec2<u32>>(r2.xx);
    let v_7 = r1.wy;
    let v_8 = select(r1.zw, v_7, (v_6 != vec2<u32>()));
    r2 = vec4<f32>(v_8.xy, r2.zw);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[16u].z >= 1.0f)));
    let v_9 = bitcast<vec2<u32>>(r1.ww);
    let v_10 = r1.xy;
    let v_11 = select(r1.zx, v_10, (v_9 != vec2<u32>()));
    r1 = vec4<f32>(v_11.xy, r1.zw);
    r1 = textureSampleLevel(t14, s14, r1.xyxx.xy, 0.0f);
    r2 = textureSampleLevel(t15, s15, r2.xyxx.xy, 0.0f).zxyw;
    r2.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r1.w)));
    r3.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_3[16u].x)));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r3.x)));
    let v_12 = bitcast<vec4<u32>>(r2.wwww);
    r1 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r1, (v_12 != vec4<u32>()));
    r1.w = fma(r1.w, 2.0f, -1.0f);
    r1.w = ((-(abs(r1.wwww))).w + 1.0f);
    let v_13 = fma(r0.xyz, r1.www, r1.xyz);
    r1 = vec4<f32>(v_13.xyz, r1.w);
    let v_14 = -(r1.xyzx);
    let v_15 = fma(r1.xyz, cb13_13.tint_symbol_3[7u].xyz, v_14.xyz);
    r3 = vec4<f32>(v_15.xyz, r3.w);
    let v_16 = fma(r2.zzz, r3.xyz, r1.xyz);
    r1 = vec4<f32>(v_16.xyz, r1.w);
    let v_17 = (r2.yyy * cb13_13.tint_symbol_3[6u].xyz);
    r2 = vec4<f32>(r2.x, v_17.xyz);
    let v_18 = fma(r1.xyz, r2.xxx, r2.yzw);
    r0 = vec4<f32>(v_18.xyz, r0.w);
  } else {
    r2.x = 1.0f;
  }
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[3u].z == 0.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[5u].x == 1.0f)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      let v_19 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r1 = vec4<f32>(v_19.xy, r1.zw);
      r1.z = 0.0f;
      r1 = textureSample(t2, s2, r1.xyzx.xyz);
    } else {
      let v_20 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r3 = vec4<f32>(v_20.xy, r3.zw);
      r3.z = 0.0f;
      r3 = textureSample(t2, s2, r3.xyzx.xyz);
      r4 = vec4<f32>(((v1.xy * vec2<f32>(2.0f))).xy, r4.zw);
      r4.z = 0.0f;
      r4 = textureSample(t2, s2, r4.xyzx.xyz);
      let v_21 = -(r4.xxxx);
      r1.y = (r3.x + v_21.y);
      r1.x = fma(cb13_13.tint_symbol_3[5u].x, r1.y, r4.x);
    }
    r1.y = (cb11_11.tint_symbol_4[0u].x + -2.0f);
    r1.y = fma(cb13_13.tint_symbol_3[5u].x, r1.y, 2.0f);
    r1.z = (cb13_13.tint_symbol_3[3u].z + -2.0f);
    r1.z = fma(cb13_13.tint_symbol_3[5u].x, r1.z, 2.0f);
    r1.x = fma(r1.x, 2.0f, -1.0f);
    r1.x = (r1.y * r1.x);
    r1.x = (r2.x * r1.x);
    r1.x = fma(r1.x, r1.z, 1.0f);
    let v_22 = (r0.xyz * r1.xxx);
    r0 = vec4<f32>(v_22.xyz, r0.w);
  }
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.x = dot(v0.xy, vec2<f32>(0.5f));
  r1.x = fract(r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.5f)));
  let v_23 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(0.94999998807907104492f, 0.50196081399917602539f) >= r0.ww)));
  let v_24 = r1;
  r1 = vec4<f32>(v_24.x, v_23.xy, v_24.w);
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.x)));
  v_25((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  r1 = (r1.xxxx * v2.zxyz);
  let v_26 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r2 = vec4<f32>(v_26.xy, r2.zw);
  r1 = fma(r1, vec4<f32>(0.5f), vec4<f32>(0.5f));
  r2.z = fma(r1.x, cb5_5.tint_symbol_2[3u].y, cb5_5.tint_symbol_2[3u].x);
  r1.x = (r1.x + 0.30000001192092895508f);
  r1.x = (r2.y * r1.x);
  let v_27 = (r0.xyz * cb13_13.tint_symbol_3[4u].xxx);
  o0 = vec4<f32>(v_27.xyz, o0.w);
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r1.x);
  let v_28 = (r1.yzw * vec3<f32>(256.0f));
  r3 = vec4<f32>(v_28.xyz, r3.w);
  let v_29 = floor(r3.xyz);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  let v_30 = -(r3.xyzx);
  let v_31 = fma(r1.yzw, vec3<f32>(256.0f), v_30.xyz);
  r1 = vec4<f32>(v_31.xyz, r1.w);
  let v_32 = (r1.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r1 = vec4<f32>(v_32.xyz, r1.w);
  let v_33 = floor(r1.xyz);
  r1 = vec4<f32>(v_33.xyz, r1.w);
  r0.z = dot(r1.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.z * 0.0039215688593685627f);
  let v_34 = (r3.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_34.xyz, o1.w);
  r0.x = fma(r2.z, r2.x, cb3_3.tint_symbol_1[45u].w);
  let v_35 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_35.xy, r0.zw);
  let v_36 = sqrt(r0.xy);
  o3 = vec4<f32>(v_36.xy, o3.zw);
  r0.x = fma(r0.w, 1.33000004291534423828f, -0.50196081399917602539f);
  o0.w = clamp(fma(r0.xxxx, vec4<f32>(2.23194742202758789062f), vec4<f32>(0.0078431377187371254f)).w, 0.0f, 1.0f);
  o2 = vec4<f32>(0.0f, 0.0f, 0.98000001907348632812f, 1.0f);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.0f));
}

fn v_25(v_37 : bool) {
  if (v_37) {
    discard;
    return;
  }
}

struct tint_symbol_5 {
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
fn main(@builtin(position) v_38 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v_38, v1, v2, v3, v4);
  return tint_symbol_5(o0, o1, o2, o3);
}
