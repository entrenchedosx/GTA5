diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(v.xyz, r1.w);
  r0.w = (r0.w * v3.w);
  r1.w = (v4.z * cb13_13.tint_symbol_1[16u].x);
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((r1.w == 0.0f))));
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_1 = fract(v4.yx);
    let v_2 = r2;
    r2 = vec4<f32>(v_1.x, v_2.y, v_1.y, v_2.w);
    let v_3 = abs(v4.zzzz);
    let v_4 = abs(v4.wwww);
    r2.w = fma(r2.x, v_3.w, v_4.w);
    r2.x = fma(r2.x, v1.w, v2.w);
    r1.w = fract(cb13_13.tint_symbol_1[16u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r1.w)));
    r2.y = ((-(r2.zzzz)).y + 1.0f);
    let v_5 = bitcast<vec2<u32>>(r1.ww);
    let v_6 = r2.wy;
    let v_7 = select(r2.zw, v_6, (v_5 != vec2<u32>()));
    r3 = vec4<f32>(v_7.xy, r3.zw);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[16u].z >= 1.0f)));
    let v_8 = bitcast<vec2<u32>>(r1.ww);
    let v_9 = r2.xy;
    let v_10 = select(r2.zx, v_9, (v_8 != vec2<u32>()));
    r2 = vec4<f32>(v_10.xy, r2.zw);
    r2 = textureSampleLevel(t14, s14, r2.xyxx.xy, 0.0f);
    r3 = textureSampleLevel(t15, s15, r3.xyxx.xy, 0.0f).zxyw;
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r2.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_1[16u].x)));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r3.w)));
    let v_11 = bitcast<vec4<u32>>(r1.wwww);
    r2 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r2, (v_11 != vec4<u32>()));
    r1.w = fma(r2.w, 2.0f, -1.0f);
    r1.w = ((-(abs(r1.wwww))).w + 1.0f);
    let v_12 = fma(r0.xyz, r1.www, r2.xyz);
    r2 = vec4<f32>(v_12.xyz, r2.w);
    let v_13 = -(r2.xyzx);
    let v_14 = fma(r2.xyz, cb13_13.tint_symbol_1[7u].xyz, v_13.xyz);
    r4 = vec4<f32>(v_14.xyz, r4.w);
    let v_15 = fma(r3.zzz, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_15.xyz, r2.w);
    let v_16 = (r3.yyy * cb13_13.tint_symbol_1[6u].xyz);
    r3 = vec4<f32>(r3.x, v_16.xyz);
    let v_17 = fma(r2.xyz, r3.xxx, r3.yzw);
    r0 = vec4<f32>(v_17.xyz, r0.w);
  } else {
    r3.x = 1.0f;
  }
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[3u].z == 0.0f))));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[5u].x == 1.0f)));
    if ((bitcast<u32>(r1.w) != 0u)) {
      let v_18 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r2 = vec4<f32>(v_18.xy, r2.zw);
      r2.z = 0.0f;
      r2 = textureSample(t2, s2, r2.xyzx.xyz);
    } else {
      let v_19 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r4 = vec4<f32>(v_19.xy, r4.zw);
      r4.z = 0.0f;
      r4 = textureSample(t2, s2, r4.xyzx.xyz);
      r5 = vec4<f32>(((v1.xy * vec2<f32>(2.0f))).xy, r5.zw);
      r5.z = 0.0f;
      r5 = textureSample(t2, s2, r5.xyzx.xyz);
      let v_20 = -(r5.xxxx);
      r1.w = (r4.x + v_20.w);
      r2.x = fma(cb13_13.tint_symbol_1[5u].x, r1.w, r5.x);
    }
    r1.w = (cb11_11.tint_symbol_2[0u].x + -2.0f);
    r1.w = fma(cb13_13.tint_symbol_1[5u].x, r1.w, 2.0f);
    r2.y = (cb13_13.tint_symbol_1[3u].z + -2.0f);
    r2.y = fma(cb13_13.tint_symbol_1[5u].x, r2.y, 2.0f);
    r2.x = fma(r2.x, 2.0f, -1.0f);
    r1.w = (r1.w * r2.x);
    r1.w = (r3.x * r1.w);
    r1.w = fma(r1.w, r2.y, 1.0f);
    let v_21 = (r0.xyz * r1.www);
    r0 = vec4<f32>(v_21.xyz, r0.w);
  }
  r1.w = clamp(((v1.zzzz * vec4<f32>(4.0f))).w, 0.0f, 1.0f);
  let v_22 = (r0.xyz * cb13_13.tint_symbol_1[17u].xxx);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  let v_23 = fma((-(r2.xyzx)).xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = (r0.xyz * cb13_13.tint_symbol_1[4u].xxx);
  o0 = vec4<f32>(v_24.xyz, o0.w);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_25 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_25.xyz, o1.w);
  o0.w = r0.x;
  o1.w = r0.x;
  o2 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 0.98000001907348632812f), o2.w);
  o2.w = r0.x;
  o3 = vec4<f32>();
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
