diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb22_struct {
  tint_symbol_1 : array<vec4<f32>, 22u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb22_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>) {
  r0 = textureSample(t4, s4, v4.xyxx.xy);
  r0.x = (r0.x + -0.5f);
  r0.x = (r0.x * cb12_12.tint_symbol_1[17u].x);
  r1 = textureSample(t4, s4, v5.zwzz.xy);
  r0.z = (r1.x + -0.5f);
  r0.y = (r0.z * cb12_12.tint_symbol_1[20u].y);
  r1 = textureSample(t4, s4, v4.zwzz.xy);
  r1.x = (r1.x + -0.5f);
  r0.z = (r1.x * cb12_12.tint_symbol_1[19u].z);
  r2 = textureSample(t3, s3, v1.zwzz.xy);
  r0.z = fma(r0.z, cb12_12.tint_symbol_1[17u].z, r2.x);
  r0.z = (r0.z * cb12_12.tint_symbol_1[18u].x);
  r3 = textureSample(t3, s3, v1.xyxx.xy);
  r0.z = (r0.z * r3.x);
  r0.w = clamp(fma(-(r0.zzzz), vec4<f32>(2.0f), vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  let v = (r0.ww * r0.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r3.zz * r0.xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r4.x = cb12_12.tint_symbol_1[17u].z;
  r4.y = cb12_12.tint_symbol_1[20u].y;
  r1.y = ((-(r3.zzzz)).y + 1.0f);
  let v_2 = fma(r1.xy, r4.xy, r0.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.w = (r0.x + r2.y);
  let v_3 = fma(r0.www, cb12_12.tint_symbol_1[16u].xyz, cb12_12.tint_symbol_1[14u].xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(r0.zzz, r1.xyz, cb12_12.tint_symbol_1[15u].xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r3.y = 0.0f;
  let v_5 = (r0.xy + r3.xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r2.x = (r0.x * cb12_12.tint_symbol_1[18u].y);
  r2.y = (r0.y * cb12_12.tint_symbol_1[20u].z);
  r0.y = (-(cb12_12.tint_symbol_1[20u].wwww)).y;
  let v_6 = (-(cb12_12.tint_symbol_1[18u].zzwz)).xz;
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
  let v_11 = -(cb12_12.tint_symbol_1[12u].xyzx);
  r0.w = dot(r2.xyz, v_11.xyz);
  let v_12 = (r0.zz * r0.xy);
  r0 = vec4<f32>(v_12.xy, r0.zw);
  r0.z = fma((-(cb12_12.tint_symbol_1[11u].xxxx)).z, r0.w, cb12_12.tint_symbol_1[11u].y);
  r0.w = fma(r0.w, r0.w, 1.0f);
  r0.z = log2(abs(r0.zzzz).z);
  r0.z = (r0.z * 1.5f);
  r0.z = exp2(r0.z);
  r0.z = (r0.w / r0.z);
  r0.w = (r0.z * cb12_12.tint_symbol_1[11u].z);
  r0.z = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_1[11u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r0.w = clamp(r0.wwww.w, 0.0f, 1.0f);
  let v_13 = (r0.www * cb12_12.tint_symbol_1[9u].xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = (r2.xyz * cb12_12.tint_symbol_1[11u].www);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = fma(v3.xyz, r0.zzz, r2.xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_1[21u].xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = fma(r0.yyy, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = -(r2.xyzx);
  let v_19 = fma(r1.xyz, cb12_12.tint_symbol_1[19u].www, v_18.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  let v_20 = fma(r0.xxx, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  r0.x = (r0.y + r0.x);
  o0.w = clamp(((-(r0.xxxx) + v2.wwww)).w, 0.0f, 1.0f);
  let v_21 = ((-(r1.xyzx)).xyz + v7.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = fma(v7.www, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  r1 = textureSample(t6, s6, v5.xyxx.xy);
  r0.w = (r1.x + -0.5f);
  let v_23 = fma(r0.www, vec3<f32>(0.00009999999747378752f), r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_24.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5, v7);
  return o0;
}
