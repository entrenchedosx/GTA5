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

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[18u].x == 0.0f))));
  r1.z = bitcast<f32>(~(bitcast<u32>(r1.y)));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r1.x)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r1.z)));
  v((bitcast<u32>(r1.z) != 0u));
  r1.z = dot(v2.xyz, v2.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_1 = (r1.zzz * v2.xyz);
  r2 = vec4<f32>(v_1.xyz, r2.w);
  r0.w = (r0.w * v3.w);
  r1.z = (v4.z * cb13_13.tint_symbol_1[16u].x);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((r1.z == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    let v_2 = fract(v4.yx);
    let v_3 = r3;
    r3 = vec4<f32>(v_2.x, v_3.y, v_2.y, v_3.w);
    let v_4 = abs(v4.zzzz);
    let v_5 = abs(v4.wwww);
    r3.w = fma(r3.x, v_4.w, v_5.w);
    r3.x = fma(r3.x, v1.w, v2.w);
    r1.z = fract(cb13_13.tint_symbol_1[16u].z);
    r1.z = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r1.z)));
    r3.y = ((-(r3.zzzz)).y + 1.0f);
    let v_6 = bitcast<vec2<u32>>(r1.zz);
    let v_7 = r3.wy;
    let v_8 = select(r3.zw, v_7, (v_6 != vec2<u32>()));
    r1 = vec4<f32>(r1.xy, v_8.xy);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[16u].z >= 1.0f)));
    let v_9 = bitcast<vec2<u32>>(r2.ww);
    let v_10 = r3.xy;
    let v_11 = select(r3.zx, v_10, (v_9 != vec2<u32>()));
    r3 = vec4<f32>(v_11.xy, r3.zw);
    r3 = textureSampleLevel(t14, s14, r3.xyxx.xy, 0.0f);
    r4 = textureSampleLevel(t15, s15, r1.zwzz.xy, 0.0f).zxyw;
    r1.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r3.w)));
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_1[16u].x)));
    r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.w)));
    let v_12 = bitcast<vec4<u32>>(r1.zzzz);
    r3 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r3, (v_12 != vec4<u32>()));
    r1.z = fma(r3.w, 2.0f, -1.0f);
    r1.z = ((-(abs(r1.zzzz))).z + 1.0f);
    let v_13 = fma(r0.xyz, r1.zzz, r3.xyz);
    r3 = vec4<f32>(v_13.xyz, r3.w);
    let v_14 = -(r3.xyzx);
    let v_15 = fma(r3.xyz, cb13_13.tint_symbol_1[7u].xyz, v_14.xyz);
    r5 = vec4<f32>(v_15.xyz, r5.w);
    let v_16 = fma(r4.zzz, r5.xyz, r3.xyz);
    r3 = vec4<f32>(v_16.xyz, r3.w);
    let v_17 = (r4.yyy * cb13_13.tint_symbol_1[6u].xyz);
    r4 = vec4<f32>(r4.x, v_17.xyz);
    let v_18 = fma(r3.xyz, r4.xxx, r4.yzw);
    r0 = vec4<f32>(v_18.xyz, r0.w);
  } else {
    r4.x = 1.0f;
  }
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[3u].z == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r1.z = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[5u].x == 1.0f)));
    if ((bitcast<u32>(r1.z) != 0u)) {
      let v_19 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r3 = vec4<f32>(v_19.xy, r3.zw);
      r3.z = 0.0f;
      r3 = textureSample(t2, s2, r3.xyzx.xyz);
    } else {
      let v_20 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r5 = vec4<f32>(v_20.xy, r5.zw);
      r5.z = 0.0f;
      r5 = textureSample(t2, s2, r5.xyzx.xyz);
      r6 = vec4<f32>(((v1.xy * vec2<f32>(2.0f))).xy, r6.zw);
      r6.z = 0.0f;
      r6 = textureSample(t2, s2, r6.xyzx.xyz);
      let v_21 = -(r6.xxxx);
      r1.z = (r5.x + v_21.z);
      r3.x = fma(cb13_13.tint_symbol_1[5u].x, r1.z, r6.x);
    }
    r1.z = (cb11_11.tint_symbol_2[0u].x + -2.0f);
    r1.z = fma(cb13_13.tint_symbol_1[5u].x, r1.z, 2.0f);
    r1.w = (cb13_13.tint_symbol_1[3u].z + -2.0f);
    r1.w = fma(cb13_13.tint_symbol_1[5u].x, r1.w, 2.0f);
    r2.w = fma(r3.x, 2.0f, -1.0f);
    r1.z = (r1.z * r2.w);
    r1.z = (r4.x * r1.z);
    r1.z = fma(r1.z, r1.w, 1.0f);
    let v_22 = (r0.xyz * r1.zzz);
    r0 = vec4<f32>(v_22.xyz, r0.w);
  }
  r1.z = clamp(((v1.zzzz * vec4<f32>(4.0f))).z, 0.0f, 1.0f);
  let v_23 = (r0.xyz * cb13_13.tint_symbol_1[17u].xxx);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  let v_24 = fma((-(r3.xyzx)).xyz, r1.zzz, r0.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = (r0.xyz * cb13_13.tint_symbol_1[4u].xxx);
  o0 = vec4<f32>(v_25.xyz, o0.w);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_26 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_26.xyz, o1.w);
  r0.y = (r0.x * r1.x);
  r0.y = (r0.y * cb13_13.tint_symbol_1[18u].x);
  let v_27 = bitcast<u32>(r1.y);
  let v_28 = r0.y;
  o0.w = select(r0.x, v_28, (v_27 != 0u));
  o1.w = r0.x;
  o2 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 0.98000001907348632812f), o2.w);
  o2.w = r0.x;
  o3 = vec4<f32>();
}

fn v(v_29 : bool) {
  if (v_29) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2, v3, v4);
  return tint_symbol_3(o0, o1, o2, o3);
}
