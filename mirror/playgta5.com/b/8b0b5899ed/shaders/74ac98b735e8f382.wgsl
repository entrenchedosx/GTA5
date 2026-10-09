diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
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
  let v_6 = clamp(v2.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = ((-(r0.xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r0.x = (r1.y * r1.x);
  r0.w = (r1.z * r0.x);
  r0.y = (r0.y * r1.x);
  r1.x = (r1.z * r0.y);
  let v_8 = (r0.zz * r0.xy);
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r2 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r3 = textureSample(t3, s3, v1.xy.xyxx.xy);
  let v_9 = (r0.xxx * r3.xyz);
  r1 = vec4<f32>(r1.x, v_9.xyz);
  let v_10 = fma(r2.xyz, r0.www, r1.yzw);
  r0 = vec4<f32>(v_10.x, r0.y, v_10.yz);
  r2 = textureSample(t4, s4, v1.xy.xyxx.xy);
  let v_11 = fma(r2.xyz, r1.xxx, r0.xzw);
  r0 = vec4<f32>(v_11.x, r0.y, v_11.yz);
  r1 = textureSample(t5, s5, v1.xy.xyxx.xy);
  let v_12 = fma(r1.xyz, r0.yyy, r0.xzw);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r0.w = (cb12_12.tint_symbol_3[0u].y * cb12_12.tint_symbol_3[0u].y);
  r1.x = dot(r0.xyz, vec3<f32>(1.27499997615814208984f, 4.29239988327026367188f, 0.4325999915599822998f));
  r1.x = ((-(r1.xxxx)).x + 0.5f);
  o2.w = clamp(((-(r1.xxxx) + v3.wwww)).w, 0.0f, 1.0f);
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = inverseSqrt(r1.x);
  r1.x = (r1.x * v3.z);
  r1.x = clamp(fma(r1.xxxx, vec4<f32>(128.0f), vec4<f32>(-127.0f)).x, 0.0f, 1.0f);
  let v_13 = fma(v3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_13.xyz, o1.w);
  r1.y = (cb12_12.tint_symbol_3[0u].w + -0.10000000149011611938f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(10.0f))).y, 0.0f, 1.0f);
  o1.w = (r1.y * r1.x);
  r1.x = (cb12_12.tint_symbol_3[0u].x * 0.001953125f);
  r2.x = (v4.x + cb3_3.tint_symbol_1[45u].w);
  r2.y = v4.y;
  let v_14 = (r2.xy * vec2<f32>(0.5f));
  let v_15 = r1;
  r1 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  let v_16 = sqrt(r1.yz);
  o3 = vec4<f32>(v_16.xy, o3.zw);
  r1.y = (v3.z + -0.34999999403953552246f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r1.y = (r1.y * cb5_5.tint_symbol_2[3u].z);
  r1.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r1.y = (r1.z * r1.y);
  r1.y = (r1.y * v4.x);
  r1.z = fma((-(r0.wwww)).z, 0.5f, 1.0f);
  r1.z = (r1.z * r1.y);
  r1.w = ((-(cb12_12.tint_symbol_3[0u].wwww)).w + 1.0f);
  r1.z = (r1.w * r1.z);
  r1.y = (r1.y * cb12_12.tint_symbol_3[0u].w);
  r1.z = fma(r1.z, -0.5f, 1.0f);
  let v_17 = (r0.xyz * r1.zzz);
  o0 = vec4<f32>(v_17.xyz, o0.w);
  r0.x = (-(r0.wwww)).x;
  r0.y = (-(r1.xxxx)).y;
  let v_18 = (r0.xy + vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_18.xy, r0.zw);
  let v_19 = max(r0.xy, vec2<f32>());
  r0 = vec4<f32>(v_19.xy, r0.zw);
  r2.x = fma(r0.x, r1.y, r0.w);
  r2.y = fma(r0.y, r1.y, r1.x);
  o2.z = 0.98000001907348632812f;
  let v_20 = sqrt(r2.xy);
  o2 = vec4<f32>(v_20.xy, o2.zw);
  o0.w = cb2_2.tint_symbol[15u].x;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_5(v_21 : bool) {
  if (v_21) {
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
fn main(@builtin(position) v_22 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_22, v1, v2, v3, v4);
  return tint_symbol_4(o0, o1, o2, o3);
}
