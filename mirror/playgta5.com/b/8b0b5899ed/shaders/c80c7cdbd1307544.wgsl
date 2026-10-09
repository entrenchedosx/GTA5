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

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb18_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct_1;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + cb12_12.tint_symbol_2[17u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb12_12.tint_symbol_2[17u].z / r0.z);
  r1 = vec4<f32>(((v2.xyz / v2.www)).xyz, r1.w);
  let v = fma(r1.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  let v_1 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_1.xyz, r3.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.z);
  let v_2 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  r0.z = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r0.w = ((-(cb12_12.tint_symbol_2[7u].xxxx)).w + 1.0f);
  r0.w = fma(r0.w, r0.z, cb12_12.tint_symbol_2[7u].x);
  r0.z = (r0.z / r0.w);
  let v_3 = -(cb12_12.tint_symbol_2[1u].xyzx);
  r0.w = dot(r3.xyz, v_3.xyz);
  r0.w = clamp(fma(r0.wwww, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).w, 0.0f, 1.0f);
  r0.z = (r0.w * r0.z);
  r2.w = 1.0f;
  r0.w = dot(r2, cb12_12.tint_symbol_2[6u]);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  r0.z = (r0.w * r0.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.z < 0.00000099999999747524f)));
  v_4((bitcast<u32>(r0.w) != 0u));
  r2 = textureSample(t7, s7, r0.xyxx.xy);
  let v_5 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r4 = textureSample(t9, s9, r0.xyxx.xy);
  r0.w = (r4.x * r4.x);
  r5 = textureSample(t8, s8, r0.xyxx.xy);
  let v_6 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_6.xy, r4.z, v_6.z);
  let v_7 = fract(r4.xyw);
  r4 = vec4<f32>(v_7.xy, r4.z, v_7.z);
  let v_8 = fma((-(r4.ywyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_8.xy, r4.zw);
  let v_9 = fma(r5.xyz, vec3<f32>(256.0f), r4.xyw);
  r4 = vec4<f32>(v_9.xy, r4.z, v_9.z);
  let v_10 = (r4.xyw + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_10.xy, r4.z, v_10.z);
  r0.x = dot(r4.xyw, r4.xyw);
  r0.x = inverseSqrt(r0.x);
  let v_11 = (r0.xxx * r4.xyw);
  r4 = vec4<f32>(v_11.xy, r4.z, v_11.z);
  r0.x = min(r0.w, 1.0f);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_12 = (r0.yyy * r1.xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = ((-(cb12_12.tint_symbol_2[1u].zxyz)).xyz * cb12_12.tint_symbol_2[2u].yzx);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = -(cb12_12.tint_symbol_2[1u].yzxy);
  let v_15 = -(r5.xyzx);
  let v_16 = fma(v_14.xyz, cb12_12.tint_symbol_2[2u].zxy, v_15.xyz);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = -(r3.xyzx);
  r5.x = dot(r5.xyz, v_17.xyz);
  let v_18 = -(r3.xyzx);
  r5.y = dot(cb12_12.tint_symbol_2[2u].xyz, v_18.xyz);
  r0.y = dot(v_3.xyz, (-(r3.xyzx)).xyz);
  r0.w = fma((-(cb12_12.tint_symbol_2[5u].xxxx)).w, cb12_12.tint_symbol_2[5u].x, 1.0f);
  r0.w = sqrt(r0.w);
  r0.w = (cb12_12.tint_symbol_2[5u].x / r0.w);
  r0.w = (r0.w * 0.5f);
  r0.y = (r0.w / r0.y);
  let v_19 = clamp(fma(r5.xyxx, r0.yyyy, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r5 = vec4<f32>(v_19.xy, r5.zw);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_2[11u].x == 1.0f)));
  r0.w = ((-(r5.yyyy)).w + 1.0f);
  let v_20 = bitcast<u32>(r0.y);
  let v_21 = r0.w;
  r5.z = select(r5.y, v_21, (v_20 != 0u));
  r5 = textureSampleLevel(t2, s2, r5.xzxx.xy, 0.0f);
  let v_22 = fma(r5.xyz, r5.xyz, vec3<f32>(-1.0f));
  r5 = vec4<f32>(v_22.xyz, r5.w);
  let v_23 = fma(cb12_12.tint_symbol_2[11u].yyy, r5.xyz, vec3<f32>(1.0f));
  r5 = vec4<f32>(v_23.xyz, r5.w);
  let v_24 = (r5.xyz * cb12_12.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = (r5.xyz * cb12_12.tint_symbol_2[3u].www);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  let v_26 = dot(r4.xyw, r3.xyz);
  r0.y = clamp(vec4<f32>(v_26, v_26, v_26, v_26).y, 0.0f, 1.0f);
  let v_27 = dot((-(r1.xyzx)).xyz, r4.xyw);
  r0.w = clamp(vec4<f32>(v_27, v_27, v_27, v_27).w, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r1.x = (r0.w * r0.w);
  r1.x = (r1.x * r1.x);
  r0.w = (r0.w * r1.x);
  r1.x = ((-(r4.zzzz)).x + 1.0f);
  r0.w = fma(r4.z, r0.w, r1.x);
  r0.x = fma((-(r0.xxxx)).x, r0.w, 1.0f);
  r0.x = (r0.x * r0.y);
  let v_28 = (r0.xxx * r2.xyz);
  r0 = vec4<f32>(v_28.xy, r0.z, v_28.z);
  let v_29 = (r5.xyz * r0.xyw);
  r0 = vec4<f32>(v_29.xy, r0.z, v_29.z);
  let v_30 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_31.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_4(v_32 : bool) {
  if (v_32) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
