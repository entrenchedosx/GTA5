diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb7_struct {
  tint_symbol_2 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb18_struct {
  tint_symbol_3 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct;

struct cb3_struct {
  tint_symbol_4 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb3_struct;

struct cb2_struct {
  tint_symbol_5 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb2_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_multisampled_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : u32) {
  let v = (v1.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).x;
  r1.x = ((-(r1.xxxx)).x + cb12_12.tint_symbol_3[17u].w);
  r1.x = (r1.x + 1.0f);
  r1.x = (cb12_12.tint_symbol_3[17u].z / r1.x);
  let v_4 = r1;
  r1 = vec4<f32>(v_4.x, ((v2.xy / v2.ww)).xy, v_4.w);
  let v_5 = fma(r1.yz, r1.xx, cb1_1.tint_symbol[15u].xy);
  let v_6 = r1;
  r1 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  r1.w = (r1.x + -140.0f);
  r2.x = (r1.w * 0.01250000018626451492f);
  r1.w = clamp(fma(-(r1.wwww), vec4<f32>(0.01250000018626451492f), vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  let v_7 = (r1.yz * cb10_10.tint_symbol_4[0u].xx);
  let v_8 = r1;
  r1 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  r1.y = textureSample(t5, s5, r1.yzyy.xy).x;
  let v_9 = -(cb10_10.tint_symbol_4[1u].xxxx);
  r1.y = clamp(((r1.yyyy + v_9)).y, 0.0f, 1.0f);
  r1.y = (r1.w * r1.y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.y)));
  r2 = vec4<f32>(r2.x, ((v2.xyz / v2.www)).xyz);
  let v_10 = fma(r2.yzw, r1.xxx, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_10.x, r1.y, v_10.yz);
  let v_11 = (r1.xz * cb10_10.tint_symbol_4[0u].xx);
  let v_12 = r2;
  r2 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r2.y = textureSample(t5, s5, r2.yzyy.xy).x;
  let v_13 = (r1.xz * vec2<f32>(0.5f));
  r2 = vec4<f32>(r2.xy, v_13.xy);
  let v_14 = textureSample(t6, s6, r2.zwzz.xy).xy;
  r2 = vec4<f32>(r2.xy, v_14.xy);
  let v_15 = fma(r1.xz, cb9_9.tint_symbol_5[1u].xy, cb9_9.tint_symbol_5[1u].zw);
  r3 = vec4<f32>(v_15.xy, r3.zw);
  let v_16 = fma(r3.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  r3 = vec4<f32>(v_16.xy, r3.zw);
  let v_17 = textureSample(t7, s7, r3.xyxx.xy).xy;
  r3 = vec4<f32>(v_17.xy, r3.zw);
  if ((bitcast<u32>(r1.y) != 0u)) {
    r1.y = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).w;
    r0.x = textureLoad(t10, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).x;
    r0.y = textureSample(t4, s4, v1.xyxx.xy).x;
    r0.x = (r0.y * r0.x);
    r0.x = dot(r0.xx, r0.xx);
    r2.x = clamp(r2.xxxx.x, 0.0f, 1.0f);
    r0.y = ((-(r2.xxxx)).y + 1.0f);
    r0.z = (r1.y + cb10_10.tint_symbol_4[0u].y);
    r0.z = clamp(((r0.zzzz * cb10_10.tint_symbol_4[0u].zzzz)).z, 0.0f, 1.0f);
    r0.y = (r0.y * r0.z);
    let v_18 = (v1.xy * cb10_10.tint_symbol_4[2u].xy);
    r0 = vec4<f32>(r0.xy, v_18.xy);
    let v_19 = r0.zw;
    let v_20 = max(v_19, vec2<f32>(-2147483648.0f));
    let v_21 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_20), vec2<i32>(2147483647i), (v_20 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_19 == v_19))));
    r4 = vec4<f32>(v_21.xy, r4.zw);
    r4 = vec4<f32>(r4.xy, vec2<f32>());
    r0.z = textureLoad(t10, bitcast<vec2<i32>>(r4.xy), 0i).x;
    r0.w = (r0.z + -0.5f);
    r0.z = clamp(((r0.zzzz + r0.zzzz)).z, 0.0f, 1.0f);
    r0.z = (r0.z * r0.z);
    r0.z = (r0.z * r0.z);
    r0.y = (r0.z * r0.y);
    r0.z = clamp(((r2.yyyy + v_9)).z, 0.0f, 1.0f);
    r0.y = fma(r0.z, r0.y, -0.078125f);
    let v_22 = clamp(((r0.yyyw * vec4<f32>(0.0f, 1.18518519401550292969f, 0.0f, 8.0f))).yw, vec2<f32>(), vec2<f32>(1.0f));
    let v_23 = r0;
    r0 = vec4<f32>(v_23.x, v_22.x, v_23.z, v_22.y);
    let v_24 = ((-(r1.xzwx)).xyz + cb1_1.tint_symbol[15u].xyz);
    r1 = vec4<f32>(v_24.xyz, r1.w);
    r0.z = dot(r1.xyz, r1.xyz);
    r0.z = inverseSqrt(r0.z);
    let v_25 = (r0.zzz * r1.xyz);
    r1 = vec4<f32>(v_25.xyz, r1.w);
    let v_26 = fma(r2.zw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r2 = vec4<f32>(v_26.xy, r2.zw);
    let v_27 = (r3.xy + vec2<f32>(-0.00196078442968428135f));
    r2 = vec4<f32>(r2.xy, v_27.xy);
    let v_28 = fma(r2.zw, vec2<f32>(2.0f), r2.xy);
    r2 = vec4<f32>(v_28.xy, r2.zw);
    let v_29 = (r2.xy + vec2<f32>(-1.0f));
    r2 = vec4<f32>(v_29.xy, r2.zw);
    let v_30 = (r0.ww * r2.xy);
    r2 = vec4<f32>(v_30.xy, r2.zw);
    r0.z = dot(r2.xy, r2.xy);
    r0.z = ((-(r0.zzzz)).z + 1.0f);
    r2.z = sqrt(abs(r0.zzzz).z);
    let v_31 = dot(r1.xyz, r2.xyz);
    r0.z = clamp(vec4<f32>(v_31, v_31, v_31, v_31).z, 0.0f, 1.0f);
    r0.z = ((-(r0.zzzz)).z + 1.0f);
    r0.w = (r0.z * r0.z);
    r0.w = (r0.w * r0.w);
    r0.z = (r0.w * r0.z);
    r0.z = fma(r0.z, 0.97962999343872070312f, 0.02036999911069869995f);
    r0.w = dot((-(r1.xyzx)).xyz, r2.xyz);
    r0.w = min(r0.w, 0.0f);
    let v_32 = (r0.www * r2.xyz);
    r2 = vec4<f32>(v_32.xyz, r2.w);
    let v_33 = -(r2.xyxz);
    let v_34 = fma(v_33.xyw, vec3<f32>(2.0f), (-(r1.xyxz)).xyw);
    r1 = vec4<f32>(v_34.xy, r1.z, v_34.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < 0.0f)));
    let v_35 = bitcast<u32>(r0.w);
    let v_36 = r1.z;
    r0.w = select(r1.w, v_36, (v_35 != 0u));
    r1.z = (cb5_5.tint_symbol_2[6u].z + -5.0f);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
    let v_37 = bitcast<u32>(r1.w);
    r1.z = select(r1.z, -5.0f, (v_37 != 0u));
    let v_38 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
    r1 = vec4<f32>(v_38.xy, r1.z, v_38.z);
    r2.x = (abs(r0.wwww).x + 1.0f);
    let v_39 = (r1.xyw / r2.xxx);
    r1 = vec4<f32>(v_39.xy, r1.z, v_39.z);
    let v_40 = ((-(r1.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
    r1 = vec4<f32>(v_40.xy, r1.z, v_40.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
    let v_41 = bitcast<vec2<u32>>(r0.ww);
    let v_42 = r1.xy;
    let v_43 = select(r1.wy, v_42, (v_41 != vec2<u32>()));
    r1 = vec4<f32>(v_43.xy, r1.zw);
    let v_44 = r1.z;
    let v_45 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_44).xyz;
    r1 = vec4<f32>(v_45.xyz, r1.w);
    let v_46 = (r0.zzz * r1.xyz);
    r1 = vec4<f32>(v_46.xyz, r1.w);
    let v_47 = -(cb10_10.tint_symbol_4[1u].wwww);
    r0.x = (r0.x + v_47.x);
    r0.x = clamp(((r0.xxxx * vec4<f32>(1.5f))).x, 0.0f, 1.0f);
    r0.w = ((-(cb10_10.tint_symbol_4[1u].zzzz)).w + 1.0f);
    r0.z = fma(r0.w, r0.z, cb10_10.tint_symbol_4[1u].z);
    r0.y = (r0.y * 3.0f);
    r0.y = min(r0.y, 1.0f);
    r0.y = (r0.y * r0.z);
    o0.w = (r0.x * r0.y);
    let v_48 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
    o0 = vec4<f32>(v_48.xyz, o0.w);
  } else {
    o0 = vec4<f32>();
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
