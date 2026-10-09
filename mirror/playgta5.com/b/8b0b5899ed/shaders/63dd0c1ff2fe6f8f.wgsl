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

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_2 = -(cb5_5.tint_symbol_1[4u].xxxx);
  r0.y = fma(r0.w, cb2_2.tint_symbol[15u].x, v_2.y);
  r0.z = (v_2.z + 1.0f);
  r0.z = (r0.z * 0.10000000149011611938f);
  r0.y = (r0.y / r0.z);
  r0.y = fma((-(r0.wwww)).y, cb2_2.tint_symbol[15u].x, r0.y);
  r0.x = fma(cb12_12.tint_symbol_2[1u].w, r0.y, r0.x);
  r0.y = dot(v0.xy, vec2<f32>(0.5f));
  r0.y = fract(r0.y);
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.yx < vec2<f32>(0.5f, 1.0f))));
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.x)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r0.y)));
  v_5((bitcast<u32>(r0.y) != 0u));
  r1 = textureSample(t3, s3, v2.xy.xyxx.xy);
  r0.y = dot(v6.xyz, v6.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_6 = (r0.yy * v6.xy);
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = (cb12_12.tint_symbol_2[0u].yw * vec2<f32>(0.5f, 0.001953125f));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = (-(r1.xxyx)).xz;
  let v_10 = r2;
  r2 = vec4<f32>(v_9.x, v_10.y, v_9.y, v_10.w);
  r0.w = fma(r1.w, cb12_12.tint_symbol_2[0u].y, r2.x);
  let v_11 = fma(r0.ww, r0.yz, v2.xy);
  let v_12 = r0;
  r0 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r3 = textureSample(t3, s3, r0.yzyy.xy);
  r4 = textureSample(t0, s0, r0.yzyy.xy);
  let v_13 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_14 = r0;
  r0 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r0.w = dot(r0.yz, r0.yz);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.x = max(cb12_12.tint_symbol_2[1u].y, 0.00100000004749745131f);
  let v_15 = (r0.yz * r1.xx);
  let v_16 = r0;
  r0 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  let v_17 = (r0.zzz * v5.xyz);
  r1 = vec4<f32>(v_17.x, r1.y, v_17.yz);
  let v_18 = fma(r0.yyy, v4.xyz, r1.xzw);
  r1 = vec4<f32>(v_18.x, r1.y, v_18.yz);
  let v_19 = fma(r0.www, v3.xyz, r1.xzw);
  r0 = vec4<f32>(r0.x, v_19.xyz);
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = inverseSqrt(r1.x);
  let v_20 = (r0.yzw * r1.xxx);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  r0.y = dot(r3.xy, r3.xy);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= 0.00200000009499490261f)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  let v_21 = (r0.yyy * r4.xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = (r0.yyy * v1.xyz);
  r6 = vec4<f32>(v_22.xyz, r6.w);
  r0.z = (r0.y * cb12_12.tint_symbol_2[1u].x);
  r6.w = v1.w;
  r4 = (r4 * r6);
  o2.w = (r4.w * cb2_2.tint_symbol[15u].x);
  r1.z = (r3.z * r4.w);
  o1.w = (r1.z * cb2_2.tint_symbol[15u].x);
  let v_23 = fma(r5.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_23.xyz, o1.w);
  r0.w = fma(r0.w, r1.x, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_1[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].z);
  r1.x = fma((-(r0.zzzz)).x, 0.5f, 1.0f);
  r1.x = (r0.w * r1.x);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_24 = (r1.xxx * r4.xyz);
  o0 = vec4<f32>(v_24.xyz, o0.w);
  r0.y = clamp(fma(cb12_12.tint_symbol_2[1u].xxxx, r0.yyyy, vec4<f32>(0.69999998807907104492f)).y, 0.0f, 1.0f);
  let v_25 = (r0.yy * vec2<f32>(0.5f, 0.48828125f));
  r3 = vec4<f32>(v_25.xy, r3.zw);
  r2.y = (-(r0.zzzz)).y;
  r2.w = (-(cb12_12.tint_symbol_2[0u].zzzz)).w;
  r3.z = 0.97000002861022949219f;
  let v_26 = (r2.yzw + r3.xyz);
  r1 = vec4<f32>(v_26.x, r1.y, v_26.yz);
  let v_27 = max(r1.xzw, vec3<f32>());
  r1 = vec4<f32>(v_27.x, r1.y, v_27.yz);
  r2.x = fma(r1.x, r0.w, r0.z);
  r2.y = fma(r1.z, r0.w, r1.y);
  o2.z = fma(r1.w, r0.w, cb12_12.tint_symbol_2[0u].z);
  let v_28 = sqrt(r2.xy);
  o2 = vec4<f32>(v_28.xy, o2.zw);
  o0.w = r0.x;
  o3 = vec4<f32>();
}

fn v_5(v_29 : bool) {
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
fn main(@builtin(position) v_30 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_30, v1, v2, v3, v4, v5, v6);
  return tint_symbol_3(o0, o1, o2, o3);
}
