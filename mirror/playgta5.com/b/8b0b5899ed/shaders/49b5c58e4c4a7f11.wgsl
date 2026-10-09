diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb3_struct {
  tint_symbol_3 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

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
  let v_2 = -(cb5_5.tint_symbol_2[4u].xxxx);
  r1.y = fma(r0.w, cb2_2.tint_symbol[15u].x, v_2.y);
  r1.z = (v_2.z + 1.0f);
  r1.z = (r1.z * 0.10000000149011611938f);
  r1.y = (r1.y / r1.z);
  r1.y = fma((-(r0.wwww)).y, cb2_2.tint_symbol[15u].x, r1.y);
  r1.x = fma(cb12_12.tint_symbol_3[2u].z, r1.y, r1.x);
  r1.y = dot(v0.xy, vec2<f32>(0.5f));
  r1.y = fract(r1.y);
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yx < vec2<f32>(0.5f, 1.0f))));
  let v_4 = r1;
  r1 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r1.x)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.y)));
  v_5((bitcast<u32>(r1.y) != 0u));
  r2 = textureSample(t3, s3, v2.xy.xyxx.xy);
  let v_6 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r1.w = dot(r1.yz, r1.yz);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r2.x = max(cb12_12.tint_symbol_3[2u].x, 0.00100000004749745131f);
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
  r3 = textureSample(t4, s4, v2.xy.xyxx.xy);
  r3 = (r3.xyxy * r3.xyxy);
  o1.w = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r0.w = (r0.w * 255.0099945068359375f);
  r0.w = floor(r0.w);
  r1.y = (r0.w + -32.0f);
  r4.x = (r1.y * 0.0078125f);
  r4.y = cb12_12.tint_symbol_3[2u].w;
  r4 = textureSample(t5, s5, r4.xyxx.xy);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 32.0f)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (160.0f >= r0.w)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.y)));
  let v_14 = (r0.xyz * r4.xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = bitcast<vec3<u32>>(r0.www);
  let v_16 = r4.xyz;
  let v_17 = select(r0.xyz, v_16, (v_15 != vec3<u32>()));
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_19 = r4;
  r4 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  let v_20 = (r3.xyz * cb12_12.tint_symbol_3[0u].zyx);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  r0.w = (r5.z * cb12_12.tint_symbol_3[1u].x);
  r1.y = dot(v4.xyz, v4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_21 = (r0.www * cb12_12.tint_symbol_3[1u].yzw);
  r6 = vec4<f32>(v_21.xyz, r6.w);
  let v_22 = -(cb3_3.tint_symbol_1[0u].xyzx);
  let v_23 = fma(v4.xyz, r1.yyy, v_22.xyz);
  r7 = vec4<f32>(v_23.xyz, r7.w);
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_24 = (r0.www * r7.xyz);
  r7 = vec4<f32>(v_24.xyz, r7.w);
  r0.w = dot(r2.yzw, r7.xyz);
  r0.w = clamp(((r0.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  let v_25 = fma(r3.xw, cb12_12.tint_symbol_3[0u].zw, vec2<f32>(0.40000000596046447754f, 0.00000000999999993923f));
  let v_26 = r1;
  r1 = vec4<f32>(v_26.x, v_25.xy, v_26.w);
  r0.w = log2(r0.w);
  r0.w = (r0.w * r1.z);
  r0.w = exp2(r0.w);
  let v_27 = fma(r6.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = fma(r2.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_28.xyz, o1.w);
  r4.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_29 = (r4.xz * vec2<f32>(0.5f));
  let v_30 = r2;
  r2 = vec4<f32>(v_30.x, v_29.xy, v_30.w);
  let v_31 = sqrt(r2.yz);
  o3 = vec4<f32>(v_31.xy, o3.zw);
  r0.w = fma(r1.w, r2.x, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r0.w = (r0.w * r1.z);
  r0.w = (r4.y * r0.w);
  let v_32 = (r5.xy * vec2<f32>(1.0f, 0.001953125f));
  let v_33 = r2;
  r2 = vec4<f32>(v_33.x, v_32.xy, v_33.w);
  r1.z = fma((-(r5.xxxx)).z, 0.5f, 1.0f);
  r1.z = (r0.w * r1.z);
  r1.z = fma(r1.z, -0.5f, 1.0f);
  let v_34 = (r0.xyz * r1.zzz);
  o0 = vec4<f32>(v_34.xyz, o0.w);
  r1.y = clamp(r1.yyyy.y, 0.0f, 1.0f);
  let v_35 = (r1.yy * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_35.xy, r0.zw);
  r2.w = cb12_12.tint_symbol_3[0u].x;
  r0.z = 0.97000002861022949219f;
  let v_36 = -(r2.yzwy);
  let v_37 = (r0.xyz + v_36.xyz);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_38.xyz, r0.w);
  let v_39 = fma(r0.xyz, r0.www, r2.yzw);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  let v_40 = sqrt(r0.xy);
  o2 = vec4<f32>(v_40.xy, o2.zw);
  o0.w = r1.x;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_5(v_41 : bool) {
  if (v_41) {
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
fn main(@builtin(position) v_42 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_42, v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
