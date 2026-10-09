diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb25_struct {
  tint_symbol : array<vec4<f32>, 25u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb25_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0 = textureSample(t4, s4, v4.xyxx.xy);
  r0.x = (r0.x + -0.5f);
  r0.x = (r0.x * cb12_12.tint_symbol[17u].x);
  r1 = textureSample(t4, s4, v5.zwzz.xy);
  r0.z = (r1.x + -0.5f);
  r0.y = (r0.z * cb12_12.tint_symbol[20u].y);
  r1 = textureSample(t4, s4, v4.zwzz.xy);
  r1.x = (r1.x + -0.5f);
  r0.z = (r1.x * cb12_12.tint_symbol[19u].z);
  r2 = textureSample(t3, s3, v1.zwzz.xy);
  r0.z = fma(r0.z, cb12_12.tint_symbol[17u].z, r2.x);
  r0.z = (r0.z * cb12_12.tint_symbol[18u].x);
  r3 = textureSample(t3, s3, v1.xyxx.xy);
  r0.z = (r0.z * r3.x);
  r0.w = clamp(fma(-(r0.zzzz), vec4<f32>(2.0f), vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  let v = (r0.ww * r0.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r3.zz * r0.xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r4.x = cb12_12.tint_symbol[17u].z;
  r4.y = cb12_12.tint_symbol[20u].y;
  r1.y = ((-(r3.zzzz)).y + 1.0f);
  let v_2 = fma(r1.xy, r4.xy, r0.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.w = (r0.x + r2.y);
  let v_3 = fma(r0.www, cb12_12.tint_symbol[16u].xyz, cb12_12.tint_symbol[14u].xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(r0.zzz, r1.xyz, cb12_12.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r3.y = 0.0f;
  let v_5 = (r0.xy + r3.xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r2.x = (r0.x * cb12_12.tint_symbol[18u].y);
  r2.y = (r0.y * cb12_12.tint_symbol[20u].z);
  r0.y = (-(cb12_12.tint_symbol[20u].wwww)).y;
  let v_6 = (-(cb12_12.tint_symbol[18u].zzwz)).xz;
  let v_7 = r0;
  r0 = vec4<f32>(v_6.x, v_7.y, v_6.y, v_7.w);
  let v_8 = clamp(((r0.xyxx + r2.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  let v_9 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_9.xy, r0.zw);
  r0.w = dot(v2, v2);
  r0.w = inverseSqrt(r0.w);
  let v_10 = (r0.www * v2.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r0.z = clamp(fma(r2.zzzz, vec4<f32>(5.0f), r0.zzzz).z, 0.0f, 1.0f);
  let v_11 = (r0.zz * r0.xy);
  let v_12 = r0;
  r0 = vec4<f32>(v_12.x, v_11.x, v_12.z, v_11.y);
  r0.x = fma((-(r0.xxxx)).x, r0.z, 1.0f);
  r0.x = (r0.x * r0.w);
  r0.x = fma(r0.x, 0.30000001192092895508f, r0.y);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_13 = -(cb12_12.tint_symbol[12u].xyzx);
  r0.z = dot(r2.xyz, v_13.xyz);
  r1.w = dot(r2.xyz, cb12_12.tint_symbol[24u].yzw);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.00054475001525133848f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r2.x = fma((-(cb12_12.tint_symbol[11u].xxxx)).x, r0.z, cb12_12.tint_symbol[11u].y);
  r0.z = fma(r0.z, r0.z, 1.0f);
  r2.x = log2(abs(r2.xxxx).x);
  r2.x = (r2.x * 1.5f);
  r2.x = exp2(r2.x);
  r0.z = (r0.z / r2.x);
  r2.x = (r0.z * cb12_12.tint_symbol[11u].z);
  r0.z = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol[11u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r2.x = clamp(r2.xxxx.x, 0.0f, 1.0f);
  let v_14 = (r2.xxx * cb12_12.tint_symbol[9u].xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = (r2.xyz * cb12_12.tint_symbol[11u].www);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = fma(v3.xyz, r0.zzz, r2.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  let v_17 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol[21u].xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = fma(r0.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = -(r2.xyzx);
  let v_20 = fma(r1.xyz, cb12_12.tint_symbol[19u].www, v_19.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = fma(r0.yyy, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  r0.y = (r0.w + r0.y);
  o0.w = clamp(((-(r0.yyyy) + v2.wwww)).w, 0.0f, 1.0f);
  r2 = textureSample(t5, s5, v6.xy.xyxx.xy);
  let v_22 = clamp(fma(r2.xxyz, vec4<f32>(0.0f, 2.0f, 2.0f, 2.0f), vec4<f32>(0.0f, -0.10000000149011611938f, -0.10000000149011611938f, -0.10000000149011611938f)).yzw, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(r0.x, v_22.xyz);
  let v_23 = (r0.yzw * cb12_12.tint_symbol[24u].xxx);
  r0 = vec4<f32>(r0.x, v_23.xyz);
  let v_24 = (r1.www * r0.yzw);
  r0 = vec4<f32>(r0.x, v_24.xyz);
  let v_25 = fma(r0.yzw, r0.xxx, r1.xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = ((-(r0.xyzx)).xyz + v7.xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  let v_27 = fma(v7.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  r1 = textureSample(t6, s6, v5.xyxx.xy);
  r0.w = (r1.x + -0.5f);
  let v_28 = fma(r0.www, vec3<f32>(0.00009999999747378752f), r0.xyz);
  o0 = vec4<f32>(v_28.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return o0;
}
