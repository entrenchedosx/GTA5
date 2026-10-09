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

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(4u) var<uniform> cb4_4 : cb17_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v3 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>) {
  x0[0u].x = v3[0u];
  x0[0u].y = v3[1u];
  x0[0u].z = v3[2u];
  x0[0u].w = v3[3u];
  r0.x = (cb4_4.tint_symbol_2[2u].y * cb4_4.tint_symbol_2[2u].y);
  let v = (v0.xy * cb10_10.tint_symbol_3[0u].zz);
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  r1 = textureSample(t10, s10, r0.yzyy.xy);
  let v_2 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  let v_4 = (r0.yz * cb10_10.tint_symbol_3[0u].xx);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1.z = 1.0f;
  let v_5 = -(r1.xyzx);
  r0.y = dot(v_5.xyz, (-(r1.xyzx)).xyz);
  r0.y = inverseSqrt(r0.y);
  let v_6 = -(r1.xyzx);
  let v_7 = (r0.yyy * v_6.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma(r1.xyz, r0.yyy, vec3<f32>(0.0f, 0.0f, -1.0f));
  r0 = vec4<f32>(r0.x, v_8.xyz);
  let v_9 = fma(r0.yzw, vec3<f32>(0.8333333134651184082f), r2.xyz);
  r0 = vec4<f32>(r0.x, v_9.xyz);
  let v_10 = (v0.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_11 = (r1.www * r1.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  r3.w = dot(r3.xyz, r2.xyz);
  r4.x = fma((-(r3.wwww)).x, r3.w, 1.0f);
  r0.x = fma((-(r0.xxxx)).x, r4.x, 1.0f);
  r4.x = sqrt(r0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= 0.0f)));
  r3.w = fma(cb4_4.tint_symbol_2[2u].y, r3.w, r4.x);
  r2.z = (r2.z * r3.w);
  let v_12 = -(r2.zzzz);
  r2.z = fma(cb4_4.tint_symbol_2[2u].y, r3.z, v_12.z);
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r2.z)));
  r0.x = clamp(r0.xxxx.x, 0.0f, 1.0f);
  r4 = vec4<f32>(((v1.xy / v1.ww)).xy, r4.zw);
  r5 = textureSample(t11, s11, r4.xyxx.xy);
  r2.z = (r5.x + (-(v1.wwww)).z);
  r2.z = (r0.x * r2.z);
  r2.z = min(r2.z, 5.0f);
  r2.w = 0.0f;
  let v_13 = fma(r1.xyz, r1.www, r2.xyw);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = fma(r1.xyz, r2.zzz, v0.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = (r1.yyy * cb4_4.tint_symbol_2[14u].xwy);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = fma(r1.xxx, cb4_4.tint_symbol_2[13u].xwy, r2.xyz);
  r1 = vec4<f32>(v_16.xy, r1.z, v_16.z);
  let v_17 = fma(r1.zzz, cb4_4.tint_symbol_2[15u].xwy, r1.xyw);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = (r1.xyz + cb4_4.tint_symbol_2[16u].xwy);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = (r1.xyz * vec3<f32>(0.5f));
  r1 = vec4<f32>(v_19.x, r1.y, v_19.yz);
  let v_20 = -(r1.wwww);
  r2.y = fma(r1.y, 0.5f, v_20.y);
  r2.x = (r1.z + r1.x);
  let v_21 = (r2.xy / r1.yy);
  r1 = vec4<f32>(v_21.xy, r1.zw);
  let v_22 = ((-(r4.xyxx)).xy + r1.xy);
  r1 = vec4<f32>(v_22.xy, r1.zw);
  let v_23 = fma(r0.xx, r1.xy, r4.xy);
  r1 = vec4<f32>(v_23.xy, r1.zw);
  let v_24 = ((-(r1.xxxy)).zw + r4.xy);
  r1 = vec4<f32>(r1.xy, v_24.xy);
  let v_25 = (r4.xy * vec2<f32>(0.10000000149011611938f));
  r2 = vec4<f32>(v_25.xy, r2.zw);
  r4 = textureSample(t11, s11, r1.xyxx.xy);
  r2.z = max(r4.x, 0.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (v1.w >= r2.z)));
  r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
  let v_26 = fma(r2.zz, r1.zw, r1.xy);
  r1 = vec4<f32>(v_26.xy, r1.zw);
  let v_27 = fma(r1.xy, vec2<f32>(0.89999997615814208984f), r2.xy);
  r1 = vec4<f32>(r1.xy, v_27.xy);
  r2 = textureSample(t12, s12, r1.xyxx.xy);
  let v_28 = (r2.xyz * vec3<f32>(1.0f, 0.5f, 0.0f));
  r2 = vec4<f32>(v_28.xyz, r2.w);
  r1 = textureSample(t12, s12, r1.zwzz.xy);
  let v_29 = fma(r1.xyz, vec3<f32>(0.0f, 0.5f, 1.0f), r2.xyz);
  r1 = vec4<f32>(v_29.xyz, r1.w);
  r1.w = dot(r3.xyz, r0.yzw);
  r1.w = (r1.w + r1.w);
  let v_30 = -(r1.wwww);
  let v_31 = fma(r0.yzw, v_30.yzw, r3.xyz);
  r0 = vec4<f32>(r0.x, v_31.xyz);
  let v_32 = (r0.zzz * cb4_4.tint_symbol_2[9u].xwy);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  let v_33 = fma(r0.yyy, cb4_4.tint_symbol_2[8u].xwy, r2.xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  let v_34 = fma(r0.www, cb4_4.tint_symbol_2[10u].xwy, r2.xyz);
  r0 = vec4<f32>(r0.x, v_34.xyz);
  let v_35 = (r0.yzw * vec3<f32>(0.5f));
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = -(r2.zzzz);
  r3.y = fma(r0.z, 0.5f, v_36.y);
  r3.x = (r2.y + r2.x);
  let v_37 = (r3.xy / r0.zz);
  let v_38 = r0;
  r0 = vec4<f32>(v_38.x, v_37.xy, v_38.w);
  r2 = textureSample(t7, s7, r0.yzyy.xy);
  let v_39 = -(r2.xxyz);
  let v_40 = (r1.xyz + v_39.yzw);
  r0 = vec4<f32>(r0.x, v_40.xyz);
  let v_41 = fma(r0.xxx, r0.yzw, r2.xyz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_42.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1);
  return o0;
}
