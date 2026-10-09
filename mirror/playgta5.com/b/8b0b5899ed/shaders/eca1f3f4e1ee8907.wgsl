diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

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
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_2 = -(cb5_5.tint_symbol_1[4u].xxxx);
  r1.y = fma(r0.w, cb2_2.tint_symbol[15u].x, v_2.y);
  r1.z = (v_2.z + 1.0f);
  r1.z = (r1.z * 0.10000000149011611938f);
  r1.y = (r1.y / r1.z);
  r1.y = fma((-(r0.wwww)).y, cb2_2.tint_symbol[15u].x, r1.y);
  r1.x = fma(cb12_12.tint_symbol_2[0u].w, r1.y, r1.x);
  r1.y = dot(v0.xy, vec2<f32>(0.5f));
  r1.y = fract(r1.y);
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yx < vec2<f32>(0.5f, 1.0f))));
  let v_4 = r1;
  r1 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r1.x)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.y)));
  v_5((bitcast<u32>(r1.y) != 0u));
  r2 = textureSample(t2, s2, v2.xy.xyxx.xy);
  let v_6 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r1.w = dot(r1.yz, r1.yz);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r2.x = max(cb12_12.tint_symbol_2[0u].x, 0.00100000004749745131f);
  let v_8 = (r1.yz * r2.xx);
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = (r1.zzz * v6.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = fma(r1.yyy, v5.xyz, r2.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = fma(r1.www, v3.xyz, r2.xyz);
  r1 = vec4<f32>(r1.x, v_12.xyz);
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = inverseSqrt(r2.x);
  let v_13 = (r1.yzw * r2.xxx);
  r2 = vec4<f32>(r2.x, v_13.xyz);
  r1.y = dot(v4.xyz, v4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_14 = (r1.yyy * v4.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  r1.y = dot((-(r3.xyzx)).xyz, r2.yzw);
  r1.y = (r1.y + r1.y);
  let v_15 = -(r1.yyyy);
  let v_16 = -(r3.xyzx);
  let v_17 = fma(r2.yzw, v_15.xyz, v_16.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_18 = fma(r3.xz, r1.yy, vec2<f32>(1.0f));
  let v_19 = r1;
  r1 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  let v_20 = (r1.yz * vec2<f32>(-0.5f));
  let v_21 = r1;
  r1 = vec4<f32>(v_21.x, v_20.xy, v_21.w);
  r3 = textureSample(t3, s3, r1.yzyy.xy);
  r0.w = (r0.w * v1.w);
  r1.y = (v1.x * cb2_2.tint_symbol[15u].z);
  let v_22 = fma(r3.xyz, cb12_12.tint_symbol_2[0u].yyy, r0.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_23 = fma(r2.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_23.xyz, o1.w);
  r1.z = fma(r1.w, r2.x, -0.34999999403953552246f);
  r1.z = clamp(((r1.zzzz * vec4<f32>(1.53846156597137451172f))).z, 0.0f, 1.0f);
  r1.z = (r1.z * cb5_5.tint_symbol_1[3u].z);
  r1.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r1.z = (r1.w * r1.z);
  r1.y = (r1.y * r1.z);
  let v_24 = (r1.yy * vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(r1.xy, v_24.xy);
  r1.y = fma(r1.y, -0.5f, 1.0f);
  let v_25 = (r0.xyz * r1.yyy);
  o0 = vec4<f32>(v_25.xyz, o0.w);
  let v_26 = sqrt(r1.zw);
  o2 = vec4<f32>(v_26.xy, o2.zw);
  o0.w = r1.x;
  o1.w = r0.w;
  o2.z = 0.98000001907348632812f;
  o2.w = r0.w;
  o3 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
}

fn v_5(v_27 : bool) {
  if (v_27) {
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
fn main(@builtin(position) v_28 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_28, v1, v2, v3, v4, v5, v6);
  return tint_symbol_3(o0, o1, o2, o3);
}
