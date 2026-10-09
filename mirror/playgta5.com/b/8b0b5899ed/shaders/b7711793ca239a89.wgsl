diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = max(v0.xy, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1u)));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) << 1u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) + bitcast<i32>(r0.y)));
  r0.x = dot(cb2_2.tint_symbol[0u], icb0[bitcast<i32>(r0.x)]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  v_5((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  r2 = textureSample(t4, s4, v1.xyxx.xy);
  let v_6 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_6.xy, r2.zw);
  r1.y = dot(r2.xyz, cb11_11.tint_symbol_3[5u].xyz);
  r1.y = (r1.y * v3.x);
  let v_7 = (r0.xyz * cb11_11.tint_symbol_3[0u].xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r0.w = (r0.w * v3.w);
  r1.y = (r1.y * v2.w);
  r1.y = (r1.y * 0.80000001192092895508f);
  let v_8 = ((-(cb11_11.tint_symbol_3[3u].zzzz)).zw + vec2<f32>(1.0f, 2.0f));
  r1 = vec4<f32>(r1.xy, v_8.xy);
  r2.x = (r1.z * v3.z);
  let v_9 = (r1.ww * v1.zw);
  let v_10 = r2;
  r2 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  r3 = textureSample(t3, s3, r2.yzyy.xy);
  r1.w = (cb5_5.tint_symbol_1[3u].z * cb11_11.tint_symbol_3[3u].z);
  r2.y = ((-(r3.xxxx)).y + r3.z);
  r3.x = fma(r1.w, r2.y, r3.x);
  let v_11 = (r3.xy * cb11_11.tint_symbol_3[3u].xx);
  let v_12 = r2;
  r2 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r1.w = fma(v3.z, r1.z, -1.0f);
  r1.z = fma(r1.z, r1.w, 1.0f);
  r1.w = (r1.z * r2.y);
  r2.y = fma((-(cb2_2.tint_symbol[16u].yyyy)).y, 100.0f, 1.0f);
  r1.w = clamp(((r1.wwww * r2.yyyy)).w, 0.0f, 1.0f);
  let v_13 = -(r0.xyxz);
  let v_14 = fma(cb11_11.tint_symbol_3[4u].xyz, cb11_11.tint_symbol_3[3u].yyy, v_13.xyw);
  r3 = vec4<f32>(v_14.xy, r3.z, v_14.z);
  let v_15 = fma(r1.www, r3.xyw, r0.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r1.w = (r2.x * cb11_11.tint_symbol_3[3u].x);
  let v_16 = ((-(r0.xyxz)).xyw + r3.zzz);
  r2 = vec4<f32>(v_16.xy, r2.z, v_16.z);
  let v_17 = fma(r1.www, r2.xyw, r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r1.z = fma((-(r2.zzzz)).z, r1.z, 1.0f);
  r1.y = (r1.z * r1.y);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r2.w = (r0.w * cb2_2.tint_symbol[16u].y);
  r0.w = fma(v2.z, r1.x, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_1[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].z);
  r1.x = fma((-(r1.yyyy)).x, 0.5f, 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = fma(r0.w, -0.5f, 1.0f);
  let v_18 = (r0.www * r0.xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_2[4u].x) | bitcast<u32>(cb12_12.tint_symbol_2[4u].y)));
  let v_19 = bitcast<vec4<u32>>(r0.xxxx);
  r0 = select(r2, v3, (v_19 != vec4<u32>()));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  v_5((bitcast<u32>(r1.x) != 0u));
  o0 = r0;
}

fn v_5(v_20 : bool) {
  if (v_20) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_21 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_21, v1, v2, v3);
  return o0;
}
