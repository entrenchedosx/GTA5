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

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb1_struct;

struct cb17_struct {
  tint_symbol_3 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(4u) var<uniform> cb4_4 : cb17_struct;

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

var<private> v3 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>) {
  x0[0u].x = v3[0u];
  x0[0u].y = v3[1u];
  x0[0u].z = v3[2u];
  x0[0u].w = v3[3u];
  let v = (v0.xy * cb10_10.tint_symbol_4[0u].zz);
  r0 = vec4<f32>(v.xy, r0.zw);
  r0 = textureSample(t10, s10, r0.xyxx.xy);
  let v_1 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = (r0.xy * cb10_10.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.z = 1.0f;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_3 = fma((-(r0.xyzx)).xyz, r0.www, vec3<f32>(0.0f, 0.0f, 1.0f));
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(r1.xyz, vec3<f32>(0.8333333134651184082f), r0.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = (v0.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_7 = (r0.www * r2.xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  r1.w = dot(r3.xyz, r1.xyz);
  r1.w = (r1.w + r1.w);
  let v_8 = -(r1.wwww);
  let v_9 = fma(r1.xyz, v_8.xyz, r3.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r1.w = dot((-(r3.xyzx)).xyz, r0.xyz);
  let v_10 = -(r2.zzzz);
  let v_11 = -(r1.zzzz);
  r1.z = fma(v_10.z, r0.w, v_11.z);
  let v_12 = -(r2.zzzz);
  let v_13 = abs(r1.zzzz);
  r1.z = fma(v_12.z, r0.w, v_13.z);
  let v_14 = (r1.yyy * cb4_4.tint_symbol_3[9u].xwy);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = fma(r1.xxx, cb4_4.tint_symbol_3[8u].xwy, r3.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = fma(r1.zzz, cb4_4.tint_symbol_3[10u].xwy, r3.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = (r1.xyz * vec3<f32>(0.5f));
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = -(r3.zzzz);
  r4.y = fma(r1.y, 0.5f, v_18.y);
  r4.x = (r3.y + r3.x);
  let v_19 = (r4.xy / r1.yy);
  r1 = vec4<f32>(v_19.xy, r1.zw);
  r3 = textureSample(t7, s7, r1.xyxx.xy);
  let v_20 = (-(r0.xyxx)).xy;
  r1 = vec4<f32>(v_20.xy, r1.zw);
  r1.z = 0.0f;
  let v_21 = fma(r2.xyz, r0.www, r1.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  let v_22 = fma(r2.xyz, r0.www, cb3_3.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  r4 = vec4<f32>(((v1.xy / v1.ww)).xy, r4.zw);
  r5 = textureSample(t15, s15, r4.xyxx.xy);
  let v_23 = fma(r1.xyz, r5.yyy, v0.xyz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  r4.z = r5.y;
  let v_24 = (r1.yyy * cb4_4.tint_symbol_3[14u].xwy);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = fma(r1.xxx, cb4_4.tint_symbol_3[13u].xwy, r5.xyz);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  let v_26 = fma(r1.zzz, cb4_4.tint_symbol_3[15u].xwy, r5.xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  let v_27 = (r1.xyz + cb4_4.tint_symbol_3[16u].xwy);
  r1 = vec4<f32>(v_27.xyz, r1.w);
  let v_28 = (r1.xyz * vec3<f32>(0.5f));
  r5 = vec4<f32>(v_28.xyz, r5.w);
  let v_29 = -(r5.zzzz);
  r6.y = fma(r1.y, 0.5f, v_29.y);
  r6.x = (r5.y + r5.x);
  let v_30 = (r6.xy / r1.yy);
  r1 = vec4<f32>(v_30.xy, r1.zw);
  r5 = textureSample(t15, s15, r1.xyxx.xy);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r5.z))));
  r1.z = r5.y;
  let v_31 = bitcast<vec3<u32>>(r0.www);
  let v_32 = r4.xyz;
  let v_33 = select(r1.xyz, v_32, (v_31 != vec3<u32>()));
  r1 = vec4<f32>(v_33.xyz, r1.w);
  r4 = textureSample(t12, s12, r1.xyxx.xy);
  let v_34 = -(r4.xyzx);
  let v_35 = (r3.xyz + v_34.xyz);
  r3 = vec4<f32>(v_35.xyz, r3.w);
  r0.w = ((-(r1.wwww)).w + 1.0f);
  r1.x = fma(r0.w, 0.30000001192092895508f, r1.w);
  r1.y = 0.5f;
  r6 = textureSample(t6, s6, r1.xyxx.xy);
  let v_36 = fma(r6.xxx, r3.xyz, r4.xyz);
  r1 = vec4<f32>(v_36.xy, r1.z, v_36.z);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_37 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = dot((-(r2.xyzx)).xyz, r0.xyz);
  r0.x = clamp(vec4<f32>(v_38, v_38, v_38, v_38).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb10_10.tint_symbol_4[1u].x);
  r0.x = exp2(r0.x);
  r0.x = (r0.x * cb10_10.tint_symbol_4[0u].w);
  r0.x = (r5.w * r0.x);
  let v_39 = fma(cb4_4.tint_symbol_3[4u].xyz, r0.xxx, r1.xyw);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  let v_40 = ((-(r4.xyzx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_40.xyz, r0.w);
  let v_41 = fma(r1.zzz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = ((-(r0.xyzx)).xyz + vec3<f32>(0.0f, 0.0f, 64.0f));
  r1 = vec4<f32>(v_42.xyz, r1.w);
  let v_43 = fma(cb4_4.tint_symbol_3[4u].www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_43.xyz, r0.w);
  let v_44 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_44.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1);
  return o0;
}
