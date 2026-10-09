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

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb1_struct;

struct cb11_struct {
  tint_symbol_3 : array<vec4<f32>, 11u>,
}

@group(1u) @binding(4u) var<uniform> cb4_4 : cb11_struct;

struct cb2_struct {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb2_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  r0 = (v5.xy.xyxy * cb10_10.tint_symbol_4[0u].yyyy);
  r0 = fma(-(r0), cb4_4.tint_symbol_3[1u].xxyy, v2.xyxy);
  let v = (r0.xy * cb10_10.tint_symbol_4[0u].zz);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma(r0.zw, cb10_10.tint_symbol_4[0u].zz, vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_1.xy);
  r1 = textureSample(t10, s10, r0.zwzz.xy).zwxy;
  r0 = textureSample(t10, s10, r0.xyxx.xy);
  let v_2 = r0;
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r0 = fma(r1, vec4<f32>(2.0f), vec4<f32>(-1.0f));
  r0 = (r0 * cb4_4.tint_symbol_3[1u].zzww);
  let v_3 = (r0.zw + r0.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = (r0.xy * cb10_10.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = fma(r0.xy, v2.ww, v4.xyz.xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0.z = v4.z;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_6 = fma((-(r0.xyzx)).xyz, r0.www, vec3<f32>(0.0f, 0.0f, 1.0f));
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = fma(r1.xyz, vec3<f32>(0.8333333134651184082f), r0.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_10 = (r0.www * r2.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r1.w = dot(r3.xyz, r1.xyz);
  r1.w = (r1.w + r1.w);
  let v_11 = -(r1.wwww);
  let v_12 = fma(r1.xyz, v_11.xyz, r3.xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  r1.w = dot((-(r3.xyzx)).xyz, r0.xyz);
  let v_13 = -(r2.zzzz);
  let v_14 = -(r1.zzzz);
  r1.z = fma(v_13.z, r0.w, v_14.z);
  let v_15 = -(r2.zzzz);
  let v_16 = abs(r1.zzzz);
  r1.z = fma(v_15.z, r0.w, v_16.z);
  let v_17 = fma(r2.xyz, r0.www, cb3_3.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = (r1.yyy * cb4_4.tint_symbol_3[9u].xwy);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = fma(r1.xxx, cb4_4.tint_symbol_3[8u].xwy, r3.xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = fma(r1.zzz, cb4_4.tint_symbol_3[10u].xwy, r3.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = (r1.xyz * vec3<f32>(0.5f));
  r3 = vec4<f32>(v_21.xyz, r3.w);
  let v_22 = -(r3.zzzz);
  r4.y = fma(r1.y, 0.5f, v_22.y);
  r4.x = (r3.y + r3.x);
  let v_23 = (r4.xy / r1.yy);
  r1 = vec4<f32>(v_23.xy, r1.zw);
  r3 = textureSample(t7, s7, r1.xyxx.xy);
  r1 = vec4<f32>(((v1.xy / v1.zz)).xy, r1.zw);
  r4 = textureSample(t12, s12, r1.xyxx.xy);
  r5 = textureSample(t15, s15, r1.xyxx.xy);
  let v_24 = -(r4.xyzx);
  let v_25 = (r3.xyz + v_24.xyz);
  r1 = vec4<f32>(v_25.xyz, r1.w);
  r0.w = ((-(r1.wwww)).w + 1.0f);
  r3.x = fma(r0.w, 0.30000001192092895508f, r1.w);
  r3.y = 0.5f;
  r3 = textureSample(t6, s6, r3.xyxx.xy);
  let v_26 = fma(r3.xxx, r1.xyz, r4.xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_27 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_27.xyz, r2.w);
  let v_28 = dot((-(r2.xyzx)).xyz, r0.xyz);
  r0.x = clamp(vec4<f32>(v_28, v_28, v_28, v_28).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb10_10.tint_symbol_4[1u].x);
  r0.x = exp2(r0.x);
  r0.x = (r0.x * cb10_10.tint_symbol_4[0u].w);
  r0.x = (r5.w * r0.x);
  let v_29 = fma(cb4_4.tint_symbol_3[4u].xyz, r0.xxx, r1.xyz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = ((-(r4.xyzx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = fma(r5.yyy, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = ((-(r0.xyzx)).xyz + vec3<f32>(0.0f, 0.0f, 64.0f));
  r1 = vec4<f32>(v_32.xyz, r1.w);
  let v_33 = fma(cb4_4.tint_symbol_3[4u].www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  let v_34 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_34.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v4, v5);
  return o0;
}
