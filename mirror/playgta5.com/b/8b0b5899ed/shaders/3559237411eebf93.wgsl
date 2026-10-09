diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb28_struct {
  tint_symbol : array<vec4<f32>, 28u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb28_struct;

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
  r0.x = clamp(((-(r0.xxxx) + vec4<f32>(1.0f))).x, 0.0f, 1.0f);
  r3.y = (-(cb12_12.tint_symbol[20u].wwww)).y;
  let v_6 = (-(cb12_12.tint_symbol[18u].zzwz)).xz;
  let v_7 = r3;
  r3 = vec4<f32>(v_6.x, v_7.y, v_6.y, v_7.w);
  let v_8 = clamp(((r2.xxyx + r3.xxyx)).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = (r0.yz * r0.yz);
  let v_11 = r0;
  r0 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  r0.w = dot(v2, v2);
  r0.w = inverseSqrt(r0.w);
  let v_12 = (r0.www * v2.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  r0.w = clamp(fma(r2.zzzz, vec4<f32>(5.0f), r3.zzzz).w, 0.0f, 1.0f);
  let v_13 = (r0.ww * r0.yz);
  r3 = vec4<f32>(v_13.xy, r3.zw);
  r0.y = fma((-(r0.yyyy)).y, r0.w, 1.0f);
  r0.y = (r0.y * r3.y);
  r0.y = fma(r0.y, 0.30000001192092895508f, r3.x);
  let v_14 = -(cb12_12.tint_symbol[12u].xyzx);
  r0.z = dot(r2.xyz, v_14.xyz);
  r0.w = dot(r2.xyz, cb12_12.tint_symbol[24u].yzw);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = (r0.w / cb12_12.tint_symbol[22u].z);
  r0.w = clamp(((r0.wwww * vec4<f32>(100.0f))).w, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.y = (r0.y * r0.w);
  r0.x = (r0.x * r0.y);
  r0.x = (r0.x * r0.x);
  r0.x = (r0.x * r0.x);
  r0.y = fma((-(cb12_12.tint_symbol[11u].xxxx)).y, r0.z, cb12_12.tint_symbol[11u].y);
  r0.z = fma(r0.z, r0.z, 1.0f);
  r0.y = log2(abs(r0.yyyy).y);
  r0.y = (r0.y * 1.5f);
  r0.y = exp2(r0.y);
  r0.y = (r0.z / r0.y);
  r0.z = (r0.y * cb12_12.tint_symbol[11u].z);
  r0.y = clamp(fma(-(r0.yyyy), cb12_12.tint_symbol[11u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r0.z = clamp(r0.zzzz.z, 0.0f, 1.0f);
  let v_15 = (r0.zzz * cb12_12.tint_symbol[9u].xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = (r2.xyz * cb12_12.tint_symbol[11u].www);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  let v_17 = fma(v3.xyz, r0.yyy, r2.xyz);
  r0 = vec4<f32>(r0.x, v_17.xyz);
  let v_18 = ((-(r0.yzwy)).xyz + cb12_12.tint_symbol[21u].xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = fma(r3.yyy, r2.xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_19.xyz);
  let v_20 = -(r0.yzwy);
  let v_21 = fma(r1.xyz, cb12_12.tint_symbol[19u].www, v_20.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  let v_22 = fma(r3.xxx, r1.xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_22.xyz);
  r1.x = (r3.y + r3.x);
  o0.w = clamp(((-(r1.xxxx) + v2.wwww)).w, 0.0f, 1.0f);
  r1.x = fma(cb12_12.tint_symbol[26u].y, 0.5f, 0.5f);
  r1.x = (r1.x * cb12_12.tint_symbol[22u].w);
  r0.x = (r0.x * r1.x);
  let v_23 = fma(cb12_12.tint_symbol[27u].xyz, r0.xxx, r0.yzw);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = ((-(r0.xyzx)).xyz + v7.xyz);
  r1 = vec4<f32>(v_24.xyz, r1.w);
  let v_25 = fma(v7.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  r1 = textureSample(t6, s6, v5.xyxx.xy);
  r0.w = (r1.x + -0.5f);
  let v_26 = fma(r0.www, vec3<f32>(0.00009999999747378752f), r0.xyz);
  o0 = vec4<f32>(v_26.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5, v7);
  return o0;
}
