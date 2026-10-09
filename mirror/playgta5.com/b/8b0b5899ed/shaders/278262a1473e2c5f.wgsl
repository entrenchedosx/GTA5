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

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb3_struct {
  tint_symbol_2 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
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
  r1.x = fma(cb12_12.tint_symbol_2[2u].y, r1.y, r1.x);
  r1.y = dot(v0.xy, vec2<f32>(0.5f));
  r1.y = fract(r1.y);
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yx < vec2<f32>(0.5f, 1.0f))));
  let v_4 = r1;
  r1 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r1.x)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.y)));
  v_5((bitcast<u32>(r1.y) != 0u));
  r2 = textureSample(t4, s4, v2.xy.xyxx.xy);
  let v_6 = (v2.xy * cb11_11.tint_symbol_3[0u].zw);
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r3 = textureSample(t2, s2, r1.yzyy.xy);
  let v_8 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_8.xy, r3.zw);
  let v_9 = (r1.yz * vec2<f32>(3.1700000762939453125f));
  let v_10 = r1;
  r1 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  r4 = textureSample(t2, s2, r1.yzyy.xy);
  let v_11 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_12 = r1;
  r1 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  let v_13 = (r1.yz * vec2<f32>(0.5f));
  let v_14 = r1;
  r1 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  let v_15 = fma(r3.xy, vec2<f32>(0.5f), r1.yz);
  let v_16 = r1;
  r1 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  r1.w = ((-(r1.yyyy)).w * cb11_11.tint_symbol_3[0u].x);
  r1.w = fma(r1.w, r2.w, 1.0f);
  let v_17 = (r1.yz * cb11_11.tint_symbol_3[0u].yy);
  let v_18 = r1;
  r1 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  r0 = (r0 * r1.wwww);
  r3 = textureSample(t3, s3, v2.xy.xyxx.xy);
  let v_19 = fma(r1.yz, r2.ww, r3.xy);
  let v_20 = r1;
  r1 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  let v_21 = fma(r1.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_22 = r1;
  r1 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  r3.x = dot(r1.yz, r1.yz);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = sqrt(abs(r3.xxxx).x);
  r3.y = max(cb12_12.tint_symbol_2[1u].w, 0.00100000004749745131f);
  let v_23 = (r1.yz * r3.yy);
  let v_24 = r1;
  r1 = vec4<f32>(v_24.x, v_23.xy, v_24.w);
  let v_25 = (r1.zzz * v5.xyz);
  r3 = vec4<f32>(r3.x, v_25.xyz);
  let v_26 = fma(r1.yyy, v4.xyz, r3.yzw);
  r3 = vec4<f32>(r3.x, v_26.xyz);
  let v_27 = fma(r3.xxx, v3.xyz, r3.yzw);
  r3 = vec4<f32>(v_27.xyz, r3.w);
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_28 = (r1.yyy * r3.xyz);
  r3 = vec4<f32>(v_28.xy, r3.z, v_28.z);
  let v_29 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_29.xy, r2.zw);
  r1.z = dot(r2.xyz, cb12_12.tint_symbol_2[1u].xyz);
  r1.z = (r1.z * cb12_12.tint_symbol_2[0u].z);
  r2.x = (r2.w * cb12_12.tint_symbol_2[0u].y);
  r4.x = (r1.w * r1.z);
  r0.w = (r0.w * v1.w);
  r2.y = (v1.x * cb2_2.tint_symbol[15u].z);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_30 = fma(r3.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_30.xyz, o1.w);
  r4.y = (r2.x * 0.001953125f);
  r1.y = fma(r3.z, r1.y, -0.34999999403953552246f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r1.y = (r1.y * cb5_5.tint_symbol_1[3u].z);
  r2.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r1.y = (r1.y * r2.x);
  r1.y = (r2.y * r1.y);
  r2.x = fma((-(r4.xxxx)).x, 0.5f, 1.0f);
  r2.x = (r1.y * r2.x);
  r2.x = fma(r2.x, -0.5f, 1.0f);
  let v_31 = (r0.xyz * r2.xxx);
  o0 = vec4<f32>(v_31.xyz, o0.w);
  r0.x = clamp(fma(r1.zzzz, r1.wwww, vec4<f32>(0.69999998807907104492f)).x, 0.0f, 1.0f);
  let v_32 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_32.xy, r0.zw);
  r4.z = cb12_12.tint_symbol_2[0u].x;
  r0.z = 0.97000002861022949219f;
  let v_33 = -(r4.xyzx);
  let v_34 = (r0.xyz + v_33.xyz);
  r0 = vec4<f32>(v_34.xyz, r0.w);
  let v_35 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_35.xyz, r0.w);
  let v_36 = fma(r0.xyz, r1.yyy, r4.xyz);
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = sqrt(r0.xy);
  o2 = vec4<f32>(v_37.xy, o2.zw);
  o0.w = r1.x;
  o1.w = r0.w;
  let v_38 = r0;
  o2 = vec4<f32>(o2.xy, v_38.zw);
  o3 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
}

fn v_5(v_39 : bool) {
  if (v_39) {
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
fn main(@builtin(position) v_40 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_40, v1, v2, v3, v4, v5);
  return tint_symbol_4(o0, o1, o2, o3);
}
