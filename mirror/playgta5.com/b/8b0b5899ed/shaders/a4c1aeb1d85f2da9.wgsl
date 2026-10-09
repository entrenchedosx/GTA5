diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

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
  r3.w = inverseSqrt(r1.x);
  let v_6 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_6.xyz, r4.w);
  r1.x = clamp(fma(-(r1.xxxx), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r4.w = ((-(cb12_12.tint_symbol_2[7u].xxxx)).w + 1.0f);
  r4.w = fma(r4.w, r1.x, cb12_12.tint_symbol_2[7u].x);
  r1.x = (r1.x / r4.w);
  let v_7 = -(cb12_12.tint_symbol_2[1u].xyzx);
  r4.w = dot(r4.xyz, v_7.xyz);
  r4.w = clamp(fma(r4.wwww, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).w, 0.0f, 1.0f);
  r1.x = (r1.x * r4.w);
  r2.w = 1.0f;
  r2.w = dot(r2, cb12_12.tint_symbol_2[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r1.x = (r1.x * r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.00000099999999747524f)));
  v_8((bitcast<u32>(r2.w) != 0u));
  r2.w = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).y);
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 8u));
  r2.w = f32(bitcast<u32>(r2.w));
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 8.0f)));
  let v_9 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r5 = vec4<f32>(v_9.xyz, r5.w);
  let v_10 = (r5.xyz * r5.xyz);
  r5 = vec4<f32>(v_10.xyz, r5.w);
  let v_11 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r6 = vec4<f32>(v_11.xyz, r6.w);
  let v_12 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_12.xy, r6.zw);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_13 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r7 = vec4<f32>(v_13.xyz, r7.w);
  let v_14 = fract(r7.xyz);
  r7 = vec4<f32>(v_14.xyz, r7.w);
  let v_15 = fma((-(r7.yzyy)).xy, vec2<f32>(0.125f), r7.xy);
  r7 = vec4<f32>(v_15.xy, r7.zw);
  let v_16 = fma(r0.xyz, vec3<f32>(256.0f), r7.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_18 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r0.w = min(r6.x, 1.0f);
  r4.w = fma(r6.y, 512.0f, -500.0f);
  r4.w = max(r4.w, 0.0f);
  let v_19 = -(r4.wwww);
  r5.w = fma(r6.y, 512.0f, v_19.w);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r5.w, 3.0f, r4.w);
  r5.w = dot(r1.yzw, r1.yzw);
  r5.w = inverseSqrt(r5.w);
  let v_20 = (r1.yzw * r5.www);
  r1 = vec4<f32>(r1.x, v_20.xyz);
  let v_21 = -(r1.yzwy);
  let v_22 = fma(r3.xyz, r3.www, v_21.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_23 = (r3.www * r3.xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  r2.w = select(1.0f, 0.0f, (bitcast<u32>(r2.w) != 0u));
  r1.x = (r1.x * r2.w);
  let v_24 = ((-(cb12_12.tint_symbol_2[1u].zxzy)).xyw * cb12_12.tint_symbol_2[2u].yzx);
  r6 = vec4<f32>(v_24.xy, r6.z, v_24.z);
  let v_25 = -(cb12_12.tint_symbol_2[1u].yzyx);
  let v_26 = -(r6.xyxw);
  let v_27 = fma(v_25.xyw, cb12_12.tint_symbol_2[2u].zxy, v_26.xyw);
  r6 = vec4<f32>(v_27.xy, r6.z, v_27.z);
  let v_28 = -(r4.xyzx);
  r6.x = dot(r6.xyw, v_28.xyz);
  let v_29 = -(r4.xyzx);
  r6.y = dot(cb12_12.tint_symbol_2[2u].xyz, v_29.xyz);
  r2.w = dot(v_7.xyz, (-(r4.xyzx)).xyz);
  r3.w = fma((-(cb12_12.tint_symbol_2[5u].xxxx)).w, cb12_12.tint_symbol_2[5u].x, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (cb12_12.tint_symbol_2[5u].x / r3.w);
  r3.w = (r3.w * 0.5f);
  r2.w = (r3.w / r2.w);
  let v_30 = clamp(fma(r6.xyxx, r2.wwww, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r7 = vec4<f32>(v_30.xy, r7.zw);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_2[11u].x == 1.0f)));
  r3.w = ((-(r7.yyyy)).w + 1.0f);
  let v_31 = bitcast<u32>(r2.w);
  let v_32 = r3.w;
  r7.z = select(r7.y, v_32, (v_31 != 0u));
  let v_33 = textureSampleLevel(t2, s2, r7.xzxx.xy, 0.0f).xyz;
  r6 = vec4<f32>(v_33.xy, r6.z, v_33.z);
  let v_34 = fma(r6.xyw, r6.xyw, vec3<f32>(-1.0f));
  r6 = vec4<f32>(v_34.xy, r6.z, v_34.z);
  let v_35 = fma(cb12_12.tint_symbol_2[11u].yyy, r6.xyw, vec3<f32>(1.0f));
  r6 = vec4<f32>(v_35.xy, r6.z, v_35.z);
  let v_36 = (r6.xyw * cb12_12.tint_symbol_2[3u].xyz);
  r6 = vec4<f32>(v_36.xy, r6.z, v_36.z);
  let v_37 = (r6.xyw * cb12_12.tint_symbol_2[3u].www);
  r6 = vec4<f32>(v_37.xy, r6.z, v_37.z);
  let v_38 = dot(r0.xyz, r4.xyz);
  r2.w = clamp(vec4<f32>(v_38, v_38, v_38, v_38).w, 0.0f, 1.0f);
  let v_39 = dot((-(r1.yzwy)).xyz, r0.xyz);
  r7.x = clamp(vec4<f32>(v_39, v_39, v_39, v_39).x, 0.0f, 1.0f);
  let v_40 = dot(r3.xyz, r4.xyz);
  r7.y = clamp(vec4<f32>(v_40, v_40, v_40, v_40).y, 0.0f, 1.0f);
  let v_41 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_42 = r1;
  r1 = vec4<f32>(v_42.x, v_41.xy, v_42.w);
  let v_43 = (r1.yz * r1.yz);
  r7 = vec4<f32>(v_43.xy, r7.zw);
  let v_44 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_44.xy, r7.zw);
  let v_45 = (r1.yz * r7.xy);
  let v_46 = r1;
  r1 = vec4<f32>(v_46.x, v_45.xy, v_46.w);
  r1.w = ((-(r6.zzzz)).w + 1.0f);
  let v_47 = fma(r6.zz, r1.yz, r1.ww);
  let v_48 = r1;
  r1 = vec4<f32>(v_48.x, v_47.xy, v_48.w);
  let v_49 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_49.xy, r7.zw);
  r1.w = (r7.x * 0.125f);
  r1.y = fma((-(r0.wwww)).y, r1.y, 1.0f);
  r0.x = dot(r0.xyz, r3.xyz);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r7.y);
  r0.x = exp2(r0.x);
  r0.x = (r1.z * r0.x);
  r0.x = (r1.w * r0.x);
  r0.x = (r0.w * r0.x);
  r0.x = (r2.w * r0.x);
  r0.y = (r1.y * r2.w);
  r0.z = (r2.z + cb12_12.tint_symbol_2[7u].z);
  r0.z = ((-(r0.zzzz)).z / r4.z);
  r3 = fma(r4.xyyx, r0.zzzz, r2.xyyx);
  r4 = (cb12_12.tint_symbol_2[7u].wwww * vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f));
  r3 = fma(r3, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r4);
  let v_50 = textureSample(t3, s3, r3.xyxx.xy).xyz;
  r1 = vec4<f32>(r1.x, v_50.xyz);
  let v_51 = textureSample(t3, s3, r3.zwzz.xy).xyz;
  r2 = vec4<f32>(v_51.xy, r2.z, v_51.z);
  let v_52 = (r1.yzw * r2.xyw);
  r1 = vec4<f32>(r1.x, v_52.xyz);
  let v_53 = (r1.yzw * vec3<f32>(10.0f));
  r1 = vec4<f32>(r1.x, v_53.xyz);
  r0.w = ((-(r2.zzzz)).w + cb12_12.tint_symbol_2[7u].z);
  r0.w = clamp(((r0.wwww + r0.wwww)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 25.0f);
  r0.z = clamp(((r0.zzzz * vec4<f32>(0.03999999910593032837f))).z, 0.0f, 1.0f);
  let v_54 = (r0.zzz * r1.yzw);
  r1 = vec4<f32>(r1.x, v_54.xyz);
  let v_55 = -(r0.xxxx);
  let v_56 = fma(r0.xxx, r1.yzw, v_55.xyz);
  r2 = vec4<f32>(v_56.xyz, r2.w);
  let v_57 = fma(r0.www, r2.xyz, r0.xxx);
  r2 = vec4<f32>(v_57.xyz, r2.w);
  let v_58 = -(r0.yyyy);
  let v_59 = fma(r0.yyy, r1.yzw, v_58.yzw);
  r1 = vec4<f32>(r1.x, v_59.xyz);
  let v_60 = fma(r0.www, r1.yzw, r0.yyy);
  r0 = vec4<f32>(v_60.xyz, r0.w);
  let v_61 = (r2.xyz * cb12_12.tint_symbol_2[8u].zzz);
  r1 = vec4<f32>(r1.x, v_61.xyz);
  let v_62 = fma(r5.xyz, r0.xyz, r1.yzw);
  r0 = vec4<f32>(v_62.xyz, r0.w);
  let v_63 = (r6.xyw * r0.xyz);
  r0 = vec4<f32>(v_63.xyz, r0.w);
  let v_64 = (r1.xxx * r0.xyz);
  r0 = vec4<f32>(v_64.xyz, r0.w);
  let v_65 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_65.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_8(v_66 : bool) {
  if (v_66) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
