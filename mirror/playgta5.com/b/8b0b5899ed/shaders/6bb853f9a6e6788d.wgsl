diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb21_struct {
  tint_symbol_2 : array<vec4<f32>, 21u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb21_struct;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v = fma(r0.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.z = 1.0f;
  r2.x = dot(r1.xyz, cb12_12.tint_symbol_2[18u].xyz);
  r2.y = dot(r1.xyz, cb12_12.tint_symbol_2[19u].xyz);
  r2.z = dot(r1.xyz, cb12_12.tint_symbol_2[20u].xyz);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + cb12_12.tint_symbol_2[17u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb12_12.tint_symbol_2[17u].z / r0.z);
  let v_1 = fma(r2.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = -(cb12_12.tint_symbol_2[0u].xyzx);
  let v_3 = (r1.xyz + v_2.xyz);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  r0.z = dot(r3.xyz, cb12_12.tint_symbol_2[1u].xyz);
  r0.z = clamp(((r0.zzzz / cb12_12.tint_symbol_2[5u].xxxx)).z, 0.0f, 1.0f);
  r0.z = (r0.z * cb12_12.tint_symbol_2[5u].x);
  let v_4 = fma(cb12_12.tint_symbol_2[1u].xyz, r0.zzz, cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = ((-(r1.xyzx)).xyz + r3.xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.w = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.w = ((-(cb12_12.tint_symbol_2[7u].xxxx)).w + 1.0f);
  r2.w = fma(r2.w, r0.w, cb12_12.tint_symbol_2[7u].x);
  r0.w = (r0.w / r2.w);
  r1.w = 1.0f;
  r1.x = dot(r1, cb12_12.tint_symbol_2[6u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r0.w = (r0.w * r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_6((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t7, s7, r0.xyxx.xy);
  let v_7 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r4 = textureSample(t9, s9, r0.xyxx.xy);
  let v_8 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_8.xy, r4.zw);
  r5 = textureSample(t8, s8, r0.xyxx.xy);
  let v_9 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r6 = vec4<f32>(v_9.xyz, r6.w);
  let v_10 = fract(r6.xyz);
  r6 = vec4<f32>(v_10.xyz, r6.w);
  let v_11 = fma((-(r6.yzyy)).xy, vec2<f32>(0.125f), r6.xy);
  r6 = vec4<f32>(v_11.xy, r6.zw);
  let v_12 = fma(r5.xyz, vec3<f32>(256.0f), r6.xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = (r5.xyz + vec3<f32>(-128.0f));
  r5 = vec4<f32>(v_13.xyz, r5.w);
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_14 = (r0.xxx * r5.xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  r0.x = min(r4.x, 1.0f);
  r0.y = fma(r4.y, 512.0f, -500.0f);
  r0.y = max(r0.y, 0.0f);
  let v_15 = -(r0.yyyy);
  r1.w = fma(r4.y, 512.0f, v_15.w);
  r0.y = (r0.y * 558.0f);
  r0.y = fma(r1.w, 3.0f, r0.y);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_16 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  r0.z = inverseSqrt(r0.z);
  let v_17 = (r0.zzz * r3.xyz);
  r4 = vec4<f32>(v_17.xy, r4.z, v_17.z);
  let v_18 = -(r2.xyzx);
  let v_19 = fma(r3.xyz, r0.zzz, v_18.xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_20 = (r0.zzz * r3.xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  let v_21 = (cb12_12.tint_symbol_2[3u].www * cb12_12.tint_symbol_2[3u].xyz);
  r6 = vec4<f32>(v_21.xyz, r6.w);
  let v_22 = dot(r5.xyz, r4.xyw);
  r0.z = clamp(vec4<f32>(v_22, v_22, v_22, v_22).z, 0.0f, 1.0f);
  let v_23 = dot((-(r2.xyzx)).xyz, r5.xyz);
  r2.x = clamp(vec4<f32>(v_23, v_23, v_23, v_23).x, 0.0f, 1.0f);
  let v_24 = dot(r3.xyz, r4.xyw);
  r2.y = clamp(vec4<f32>(v_24, v_24, v_24, v_24).y, 0.0f, 1.0f);
  let v_25 = ((-(r2.xyxx)).xy + vec2<f32>(1.0f));
  r2 = vec4<f32>(v_25.xy, r2.zw);
  let v_26 = (r2.xy * r2.xy);
  r2 = vec4<f32>(r2.xy, v_26.xy);
  let v_27 = (r2.zw * r2.zw);
  r2 = vec4<f32>(r2.xy, v_27.xy);
  let v_28 = (r2.xy * r2.zw);
  r2 = vec4<f32>(v_28.xy, r2.zw);
  r1.w = ((-(r4.zzzz)).w + 1.0f);
  let v_29 = fma(r4.zz, r2.xy, r1.ww);
  r2 = vec4<f32>(v_29.xy, r2.zw);
  let v_30 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r2 = vec4<f32>(r2.xy, v_30.xy);
  r0.y = (r2.z * 0.125f);
  r1.w = fma((-(r0.xxxx)).w, r2.x, 1.0f);
  r2.x = dot(r5.xyz, r3.xyz);
  r2.x = clamp(((r2.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r2.x = log2(r2.x);
  r2.x = (r2.x * r2.w);
  r2.x = exp2(r2.x);
  r2.x = (r2.y * r2.x);
  r0.y = (r0.y * r2.x);
  r0.x = (r0.x * r0.y);
  r0.x = (r0.z * r0.x);
  r0.y = (r0.z * r1.w);
  r0.x = (r0.x * cb12_12.tint_symbol_2[8u].z);
  let v_31 = fma(r1.xyz, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = (r6.xyz * r0.xyz);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  let v_33 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  let v_34 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_34.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_6(v_35 : bool) {
  if (v_35) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
