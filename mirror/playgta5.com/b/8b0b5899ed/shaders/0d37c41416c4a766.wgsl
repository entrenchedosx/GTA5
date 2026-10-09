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

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb18_struct {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : u32) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).x;
  r1.x = ((-(r1.xxxx)).x + cb12_12.tint_symbol_2[17u].w);
  r1.x = (r1.x + 1.0f);
  r1.x = (cb12_12.tint_symbol_2[17u].z / r1.x);
  r1 = vec4<f32>(r1.x, ((v2.xyz / v2.www)).xyz);
  let v_4 = fma(r1.yzw, r1.xxx, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r3.w = clamp(fma(-(r1.xxxx), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.x = ((-(cb12_12.tint_symbol_2[7u].xxxx)).x + 1.0f);
  r4.x = fma(r4.x, r3.w, cb12_12.tint_symbol_2[7u].x);
  r3.w = (r3.w / r4.x);
  r2.w = 1.0f;
  r2.x = dot(r2, cb12_12.tint_symbol_2[6u]);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x >= 0.0f)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & 1065353216u));
  r2.x = (r2.x * r3.w);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.x < 0.00000099999999747524f)));
  v_6((bitcast<u32>(r2.y) != 0u));
  r2.y = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).y);
  r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 8u));
  r2.y = f32(bitcast<u32>(r2.y));
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.y >= 8.0f)));
  let v_7 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r4 = vec4<f32>(v_7.xyz, r4.w);
  let v_8 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_8.xyz, r4.w);
  let v_9 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r5 = vec4<f32>(v_9.xyz, r5.w);
  let v_10 = (r5.xy * r5.xy);
  r2 = vec4<f32>(r2.xy, v_10.xy);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_11 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_11.xy, r5.z, v_11.z);
  let v_12 = fract(r5.xyw);
  r5 = vec4<f32>(v_12.xy, r5.z, v_12.z);
  let v_13 = fma((-(r5.ywyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_13.xy, r5.zw);
  let v_14 = fma(r0.xyz, vec3<f32>(256.0f), r5.xyw);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_16 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r0.w = min(r2.z, 1.0f);
  r2.z = fma(r2.w, 512.0f, -500.0f);
  r2.z = max(r2.z, 0.0f);
  let v_17 = -(r2.zzzz);
  r2.w = fma(r2.w, 512.0f, v_17.w);
  r2.z = (r2.z * 558.0f);
  r2.z = fma(r2.w, 3.0f, r2.z);
  r1.x = inverseSqrt(r1.x);
  let v_18 = (r1.xxx * r3.xyz);
  r5 = vec4<f32>(v_18.xy, r5.z, v_18.z);
  r2.w = dot(r1.yzw, r1.yzw);
  r2.w = inverseSqrt(r2.w);
  let v_19 = (r1.yzw * r2.www);
  r1 = vec4<f32>(r1.x, v_19.xyz);
  let v_20 = -(r1.yzwy);
  let v_21 = fma(r3.xyz, r1.xxx, v_20.xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_22 = (r1.xxx * r3.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  r1.x = select(1.0f, 0.0f, (bitcast<u32>(r2.y) != 0u));
  r1.x = (r1.x * r2.x);
  let v_23 = ((-(cb12_12.tint_symbol_2[1u].zxzy)).xyw * cb12_12.tint_symbol_2[2u].yzx);
  r2 = vec4<f32>(v_23.xy, r2.z, v_23.z);
  let v_24 = -(cb12_12.tint_symbol_2[1u].yzyx);
  let v_25 = -(r2.xyxw);
  let v_26 = fma(v_24.xyw, cb12_12.tint_symbol_2[2u].zxy, v_25.xyw);
  r2 = vec4<f32>(v_26.xy, r2.z, v_26.z);
  let v_27 = -(r5.xywx);
  r2.x = dot(r2.xyw, v_27.xyz);
  let v_28 = -(r5.xywx);
  r2.y = dot(cb12_12.tint_symbol_2[2u].xyz, v_28.xyz);
  let v_29 = -(cb12_12.tint_symbol_2[1u].xyzx);
  r2.w = dot(v_29.xyz, (-(r5.xywx)).xyz);
  let v_30 = -(r5.xywx);
  r3.w = dot(v_30.xyz, (-(r5.xywx)).xyz);
  r3.w = sqrt(r3.w);
  r2.w = (r2.w / r3.w);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r2.w * r3.w);
  r2.w = (1.0f / r2.w);
  let v_31 = (r2.ww * r2.xy);
  r2 = vec4<f32>(v_31.xy, r2.zw);
  let v_32 = fma(r2.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
  r2 = vec4<f32>(v_32.xy, r2.zw);
  let v_33 = textureSampleLevel(t2, s2, r2.xyxx.xy, 0.0f).xyz;
  r2 = vec4<f32>(v_33.xy, r2.z, v_33.z);
  let v_34 = fma(r2.xyw, r2.xyw, vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_34.xy, r2.z, v_34.z);
  let v_35 = fma(cb12_12.tint_symbol_2[11u].yyy, r2.xyw, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_35.xy, r2.z, v_35.z);
  let v_36 = (r2.xyw * cb12_12.tint_symbol_2[3u].xyz);
  r2 = vec4<f32>(v_36.xy, r2.z, v_36.z);
  let v_37 = (r2.xyw * cb12_12.tint_symbol_2[3u].www);
  r2 = vec4<f32>(v_37.xy, r2.z, v_37.z);
  let v_38 = dot(r0.xyz, r5.xyw);
  r3.w = clamp(vec4<f32>(v_38, v_38, v_38, v_38).w, 0.0f, 1.0f);
  let v_39 = dot((-(r1.yzwy)).xyz, r0.xyz);
  r6.x = clamp(vec4<f32>(v_39, v_39, v_39, v_39).x, 0.0f, 1.0f);
  let v_40 = dot(r3.xyz, r5.xyw);
  r6.y = clamp(vec4<f32>(v_40, v_40, v_40, v_40).y, 0.0f, 1.0f);
  let v_41 = ((-(r6.xxyx)).yz + vec2<f32>(1.0f));
  let v_42 = r1;
  r1 = vec4<f32>(v_42.x, v_41.xy, v_42.w);
  let v_43 = (r1.yz * r1.yz);
  r5 = vec4<f32>(v_43.xy, r5.zw);
  let v_44 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_44.xy, r5.zw);
  let v_45 = (r1.yz * r5.xy);
  let v_46 = r1;
  r1 = vec4<f32>(v_46.x, v_45.xy, v_46.w);
  r1.w = ((-(r5.zzzz)).w + 1.0f);
  let v_47 = fma(r5.zz, r1.yz, r1.ww);
  let v_48 = r1;
  r1 = vec4<f32>(v_48.x, v_47.xy, v_48.w);
  let v_49 = (r2.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(v_49.xy, r5.zw);
  r1.w = (r5.x * 0.125f);
  r1.y = fma((-(r0.wwww)).y, r1.y, 1.0f);
  r0.x = dot(r0.xyz, r3.xyz);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r5.y);
  r0.x = exp2(r0.x);
  r0.x = (r1.z * r0.x);
  r0.x = (r1.w * r0.x);
  r0.x = (r0.w * r0.x);
  r0.x = (r3.w * r0.x);
  r0.y = (r1.y * r3.w);
  r0.x = (r0.x * cb12_12.tint_symbol_2[8u].z);
  let v_50 = fma(r4.xyz, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  let v_51 = (r2.xyw * r0.xyz);
  r0 = vec4<f32>(v_51.xyz, r0.w);
  let v_52 = (r1.xxx * r0.xyz);
  r0 = vec4<f32>(v_52.xyz, r0.w);
  let v_53 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_53.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_6(v_54 : bool) {
  if (v_54) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
