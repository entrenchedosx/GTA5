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

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

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
  let v_1 = -(cb12_12.tint_symbol_2[0u].xyzx);
  let v_2 = (r2.xyz + v_1.xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  r0.z = dot(r3.xyz, cb12_12.tint_symbol_2[1u].xyz);
  r0.z = clamp(((r0.zzzz / cb12_12.tint_symbol_2[5u].xxxx)).z, 0.0f, 1.0f);
  r0.z = (r0.z * cb12_12.tint_symbol_2[5u].x);
  let v_3 = fma(cb12_12.tint_symbol_2[1u].xyz, r0.zzz, cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  let v_4 = ((-(r2.xyzx)).xyz + r3.xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.w = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r1.w = ((-(cb12_12.tint_symbol_2[7u].xxxx)).w + 1.0f);
  r1.w = fma(r1.w, r0.w, cb12_12.tint_symbol_2[7u].x);
  r0.w = (r0.w / r1.w);
  r2.w = 1.0f;
  r1.w = dot(r2, cb12_12.tint_symbol_2[6u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r0.w = (r0.w * r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_5((bitcast<u32>(r1.w) != 0u));
  r2 = textureSample(t7, s7, r0.xyxx.xy);
  let v_6 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r4 = textureSample(t9, s9, r0.xyxx.xy);
  r1.w = (r4.x * r4.x);
  r5 = textureSample(t8, s8, r0.xyxx.xy);
  let v_7 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_7.xy, r4.z, v_7.z);
  let v_8 = fract(r4.xyw);
  r4 = vec4<f32>(v_8.xy, r4.z, v_8.z);
  let v_9 = fma((-(r4.ywyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_9.xy, r4.zw);
  let v_10 = fma(r5.xyz, vec3<f32>(256.0f), r4.xyw);
  r4 = vec4<f32>(v_10.xy, r4.z, v_10.z);
  let v_11 = (r4.xyw + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_11.xy, r4.z, v_11.z);
  r0.x = dot(r4.xyw, r4.xyw);
  r0.x = inverseSqrt(r0.x);
  let v_12 = (r0.xxx * r4.xyw);
  r4 = vec4<f32>(v_12.xy, r4.z, v_12.z);
  r0.x = min(r1.w, 1.0f);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_13 = (r0.yyy * r1.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  r0.y = inverseSqrt(r0.z);
  let v_14 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = (cb12_12.tint_symbol_2[3u].www * cb12_12.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = dot(r4.xyw, r3.xyz);
  r0.y = clamp(vec4<f32>(v_16, v_16, v_16, v_16).y, 0.0f, 1.0f);
  let v_17 = dot((-(r1.xyzx)).xyz, r4.xyw);
  r0.z = clamp(vec4<f32>(v_17, v_17, v_17, v_17).z, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r1.x = (r0.z * r0.z);
  r1.x = (r1.x * r1.x);
  r0.z = (r0.z * r1.x);
  r1.x = ((-(r4.zzzz)).x + 1.0f);
  r0.z = fma(r4.z, r0.z, r1.x);
  r0.x = fma((-(r0.xxxx)).x, r0.z, 1.0f);
  r0.x = (r0.x * r0.y);
  let v_18 = (r0.xxx * r2.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = (r5.xyz * r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_21.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_5(v_22 : bool) {
  if (v_22) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
