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

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

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
  let v_10 = (r1.xy * vec2<f32>(0.25f, 0.5f));
  r1 = vec4<f32>(v_10.xy, r1.zw);
  r2.w = (abs(r1.zzzz).w + 1.0f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_11 = (r1.xy / r2.ww);
  r1 = vec4<f32>(v_11.xy, r1.zw);
  let v_12 = ((-(r1.xxyx)).yz + vec2<f32>(0.25f, 0.5f));
  let v_13 = r3;
  r3 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  r1.x = ((-(r3.yyyy)).x + 1.0f);
  let v_14 = bitcast<u32>(r1.z);
  let v_15 = r1.x;
  r3.x = select(r3.y, v_15, (v_14 != 0u));
  r3 = textureSample(t1, s1, r3.xzxx.xy);
  let v_16 = (-(r0.xyxx)).xy;
  r1 = vec4<f32>(v_16.xy, r1.zw);
  r1.z = 0.0f;
  let v_17 = fma(r2.xyz, r0.www, r1.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = fma(r2.xyz, r0.www, cb3_3.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r4 = vec4<f32>(((v1.xy / v1.ww)).xy, r4.zw);
  r5 = textureSample(t15, s15, r4.xyxx.xy);
  let v_19 = fma(r1.xyz, r5.yyy, v0.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  r4.z = r5.y;
  let v_20 = (r1.yyy * cb4_4.tint_symbol_3[14u].xwy);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = fma(r1.xxx, cb4_4.tint_symbol_3[13u].xwy, r5.xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  let v_22 = fma(r1.zzz, cb4_4.tint_symbol_3[15u].xwy, r5.xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  let v_23 = (r1.xyz + cb4_4.tint_symbol_3[16u].xwy);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  let v_24 = (r1.xyz * vec3<f32>(0.5f));
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = -(r5.zzzz);
  r6.y = fma(r1.y, 0.5f, v_25.y);
  r6.x = (r5.y + r5.x);
  let v_26 = (r6.xy / r1.yy);
  r1 = vec4<f32>(v_26.xy, r1.zw);
  r5 = textureSample(t15, s15, r1.xyxx.xy);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r5.z))));
  r1.z = r5.y;
  let v_27 = bitcast<vec3<u32>>(r0.www);
  let v_28 = r4.xyz;
  let v_29 = select(r1.xyz, v_28, (v_27 != vec3<u32>()));
  r1 = vec4<f32>(v_29.xyz, r1.w);
  r4 = textureSample(t12, s12, r1.xyxx.xy);
  let v_30 = -(r4.xyzx);
  let v_31 = (r3.xyz + v_30.xyz);
  r3 = vec4<f32>(v_31.xyz, r3.w);
  r0.w = ((-(r1.wwww)).w + 1.0f);
  r1.x = fma(r0.w, 0.30000001192092895508f, r1.w);
  r1.y = 0.5f;
  r6 = textureSample(t6, s6, r1.xyxx.xy);
  let v_32 = fma(r6.xxx, r3.xyz, r4.xyz);
  r1 = vec4<f32>(v_32.xy, r1.z, v_32.z);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_33 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  let v_34 = dot((-(r2.xyzx)).xyz, r0.xyz);
  r0.x = clamp(vec4<f32>(v_34, v_34, v_34, v_34).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb10_10.tint_symbol_4[1u].x);
  r0.x = exp2(r0.x);
  r0.x = (r0.x * cb10_10.tint_symbol_4[0u].w);
  r0.x = (r5.w * r0.x);
  let v_35 = fma(cb4_4.tint_symbol_3[4u].xyz, r0.xxx, r1.xyw);
  r0 = vec4<f32>(v_35.xyz, r0.w);
  let v_36 = ((-(r4.xyzx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = fma(r1.zzz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = ((-(r0.xyzx)).xyz + vec3<f32>(0.0f, 0.0f, 64.0f));
  r1 = vec4<f32>(v_38.xyz, r1.w);
  let v_39 = fma(cb4_4.tint_symbol_3[4u].www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  let v_40 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_40.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1);
  return o0;
}
