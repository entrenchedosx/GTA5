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

struct cb13_struct {
  tint_symbol_1 : array<vec4<f32>, 13u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb13_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  let v = -(v1.xyz.xyzx);
  let v_1 = (v.xyz + cb2_2.tint_symbol_1[6u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = sqrt(r0.w);
  let v_2 = (r0.xyz / r0.www);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r0.w))));
  let v_3 = bitcast<vec3<u32>>(r0.www);
  let v_4 = r1.xyz;
  let v_5 = select(r0.xyz, v_4, (v_3 != vec3<u32>()));
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (r0.xyz + cb2_2.tint_symbol_1[6u].xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = min(cb2_2.tint_symbol_1[0u].xyz, vec3<f32>(1.0f));
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = -(cb2_2.tint_symbol_1[6u].xyzx);
  let v_9 = fma(r1.xxx, r0.xyz, v_8.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (v.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_11 = fma(r2.xyz, r0.www, r0.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_12 = (r1.xxx * r3.xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_13 = (r1.xxx * v3.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = dot(r3.xyz, r4.xyz);
  r3.x = clamp(vec4<f32>(v_14, v_14, v_14, v_14).x, 0.0f, 1.0f);
  let v_15 = (v.xyz + cb2_2.tint_symbol_1[7u].xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  r1.x = dot(r5.xyz, r5.xyz);
  r1.x = sqrt(r1.x);
  let v_16 = (r5.xyz / r1.xxx);
  r6 = vec4<f32>(v_16.xyz, r6.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r1.x))));
  let v_17 = bitcast<vec3<u32>>(r1.xxx);
  let v_18 = r6.xyz;
  let v_19 = select(r5.xyz, v_18, (v_17 != vec3<u32>()));
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = (r5.xyz + cb2_2.tint_symbol_1[7u].xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = -(cb2_2.tint_symbol_1[7u].xyxz);
  let v_22 = fma(r1.yyy, r5.xyz, v_21.xyw);
  r1 = vec4<f32>(v_22.xy, r1.z, v_22.z);
  let v_23 = fma(r2.xyz, r0.www, r1.xyw);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_24 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = dot(r5.xyz, r4.xyz);
  r3.y = clamp(vec4<f32>(v_25, v_25, v_25, v_25).y, 0.0f, 1.0f);
  let v_26 = (v.xyz + cb2_2.tint_symbol_1[8u].xyz);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  let v_27 = (r5.xyz / r2.www);
  r6 = vec4<f32>(v_27.xyz, r6.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r2.w))));
  let v_28 = bitcast<vec3<u32>>(r2.www);
  let v_29 = r6.xyz;
  let v_30 = select(r5.xyz, v_29, (v_28 != vec3<u32>()));
  r5 = vec4<f32>(v_30.xyz, r5.w);
  let v_31 = (r5.xyz + cb2_2.tint_symbol_1[8u].xyz);
  r5 = vec4<f32>(v_31.xyz, r5.w);
  let v_32 = -(cb2_2.tint_symbol_1[8u].xyzx);
  let v_33 = fma(r1.zzz, r5.xyz, v_32.xyz);
  r5 = vec4<f32>(v_33.xyz, r5.w);
  let v_34 = fma(r2.xyz, r0.www, r5.xyz);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_35 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = dot(r2.xyz, r4.xyz);
  r3.z = clamp(vec4<f32>(v_36, v_36, v_36, v_36).z, 0.0f, 1.0f);
  let v_37 = (r3.xyz * r3.xyz);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_38.xyz, r2.w);
  let v_39 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_39.xyz, r2.w);
  let v_40 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  let v_41 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_41.xyz, r2.w);
  let v_42 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_42.xyz, r2.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_43 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_43.xyz, r0.w);
  let v_44 = dot(r0.xyz, r4.xyz);
  r0.x = clamp(vec4<f32>(v_44, v_44, v_44, v_44).x, 0.0f, 1.0f);
  r0.w = dot(r1.xyw, r1.xyw);
  r0.w = inverseSqrt(r0.w);
  let v_45 = (r0.www * r1.xyw);
  r1 = vec4<f32>(v_45.xyz, r1.w);
  let v_46 = dot(r1.xyz, r4.xyz);
  r0.y = clamp(vec4<f32>(v_46, v_46, v_46, v_46).y, 0.0f, 1.0f);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_47 = (r0.www * r5.xyz);
  r1 = vec4<f32>(v_47.xyz, r1.w);
  let v_48 = dot(r1.xyz, r4.xyz);
  r0.z = clamp(vec4<f32>(v_48, v_48, v_48, v_48).z, 0.0f, 1.0f);
  let v_49 = fma(r0.xyz, vec3<f32>(0.5f), r2.xyz);
  r0 = vec4<f32>(v_49.xyz, r0.w);
  let v_50 = (r0.yyy * cb2_2.tint_symbol_1[11u].xyz);
  r1 = vec4<f32>(v_50.xyz, r1.w);
  let v_51 = fma(r0.xxx, cb2_2.tint_symbol_1[10u].xyz, r1.xyz);
  r0 = vec4<f32>(v_51.xy, r0.z, v_51.z);
  let v_52 = fma(r0.zzz, cb2_2.tint_symbol_1[12u].xyz, r0.xyw);
  r0 = vec4<f32>(v_52.xyz, r0.w);
  let v_53 = (r0.xyz + vec3<f32>(0.10000000149011611938f));
  r0 = vec4<f32>(v_53.xyz, r0.w);
  r1 = textureSample(t0, s0, v2.xy.yxyy.xy);
  let v_54 = (r0.xyz * r1.xyz);
  o0 = vec4<f32>(v_54.xyz, o0.w);
  o0.w = v4.w;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
