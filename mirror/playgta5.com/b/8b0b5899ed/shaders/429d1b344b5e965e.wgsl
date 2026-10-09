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

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

struct cb4_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct_1;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  let v = fma(v2.xyz.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.y = (r0.y * cb11_11.tint_symbol_3[1u].w);
  r0.x = (r0.x * cb11_11.tint_symbol_3[0u].w);
  r0.y = (r0.y * -1.0f);
  let v_1 = (r0.yyy * cb11_11.tint_symbol_3[1u].xyz);
  r0 = vec4<f32>(r0.x, v_1.xyz);
  let v_2 = fma(r0.xxx, cb11_11.tint_symbol_3[0u].xyz, r0.yzw);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = -(cb11_11.tint_symbol_3[2u].xyzx);
  let v_4 = (r0.xyz + v_3.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r1 = textureSample(t3, s3, v2.xyz.xyxx.xy);
  let v_5 = -(r1.xxxx);
  r0.w = (r0.w + v_5.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.99994999170303344727f < r1.x)));
  r1.x = select(1.0f, 0.0f, (bitcast<u32>(r1.x) != 0u));
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_6 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_8 = (r0.xyz + v_7.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = (r0.yy * cb6_6.tint_symbol_1[1u].xy);
  let v_10 = r0;
  r0 = vec4<f32>(v_10.x, v_9.x, v_10.z, v_9.y);
  let v_11 = fma(r0.xx, cb6_6.tint_symbol_1[0u].xy, r0.yw);
  r0 = vec4<f32>(v_11.xy, r0.zw);
  let v_12 = fma(r0.zz, cb6_6.tint_symbol_1[2u].xy, r0.xy);
  r0 = vec4<f32>(v_12.xy, r0.zw);
  let v_13 = fma(r0.xy, cb6_6.tint_symbol_1[7u].xy, cb6_6.tint_symbol_1[11u].xy);
  r2 = vec4<f32>(v_13.xy, r2.zw);
  let v_14 = fma(r0.xy, cb6_6.tint_symbol_1[6u].xy, cb6_6.tint_symbol_1[10u].xy);
  r3 = vec4<f32>(v_14.xy, r3.zw);
  let v_15 = abs(r3.yyyy);
  r0.z = max(v_15.z, abs(r3.xxxx).z);
  r0.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  r0.w = (r0.w * 0.5f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z < r0.w)));
  r3.z = 2.0f;
  r2.z = 3.0f;
  let v_16 = bitcast<vec3<u32>>(r0.zzz);
  let v_17 = r3.xyz;
  let v_18 = select(r2.xyz, v_17, (v_16 != vec3<u32>()));
  r1 = vec4<f32>(r1.x, v_18.xyz);
  let v_19 = fma(r0.xy, cb6_6.tint_symbol_1[5u].xy, cb6_6.tint_symbol_1[9u].xy);
  r2 = vec4<f32>(v_19.xy, r2.zw);
  let v_20 = fma(r0.xy, cb6_6.tint_symbol_1[4u].xy, cb6_6.tint_symbol_1[8u].xy);
  r0 = vec4<f32>(v_20.xy, r0.zw);
  let v_21 = abs(r2.yyyy);
  r2.w = max(v_21.w, abs(r2.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r0.w)));
  r2.z = 1.0f;
  let v_22 = bitcast<vec3<u32>>(r2.www);
  let v_23 = r2.xyz;
  let v_24 = select(r1.yzw, v_23, (v_22 != vec3<u32>()));
  r1 = vec4<f32>(r1.x, v_24.xyz);
  let v_25 = abs(r0.yyyy);
  r2.x = max(v_25.x, abs(r0.xxxx).x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r2.x < r0.w)));
  r0.z = 0.0f;
  let v_26 = bitcast<vec3<u32>>(r0.www);
  let v_27 = r0.xyz;
  let v_28 = select(r1.yzw, v_27, (v_26 != vec3<u32>()));
  r0 = vec4<f32>(v_28.xyz, r0.w);
  r2 = (r0.xyxy + vec4<f32>(0.5f));
  r0.w = (r2.w * cb6_6.tint_symbol_1[14u].y);
  let v_29 = (r0.ww * vec2<f32>(4.0f));
  let v_30 = r3;
  r3 = vec4<f32>(v_30.x, v_29.x, v_30.z, v_29.y);
  let v_31 = (r2.zz * cb6_6.tint_symbol_1[14u].xx);
  let v_32 = r3;
  r3 = vec4<f32>(v_31.x, v_32.y, v_31.y, v_32.w);
  r2 = fma(r2, vec4<f32>(2.0f), vec4<f32>(-1.0f));
  r3 = (r3 * cb12_12.tint_symbol_2[2u].xxyy);
  r3 = fract(r3);
  r4 = (-(r3) + vec4<f32>(1.0f));
  let v_33 = min(r3.yw, r3.xz);
  let v_34 = r1;
  r1 = vec4<f32>(v_34.x, v_33.xy, v_34.w);
  let v_35 = min(r4.yw, r4.xz);
  r3 = vec4<f32>(v_35.xy, r3.zw);
  let v_36 = min(r1.yz, r3.xy);
  let v_37 = r1;
  r1 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
  let v_38 = ((-(r1.yyzy)).yz + vec2<f32>(1.0f));
  let v_39 = r1;
  r1 = vec4<f32>(v_39.x, v_38.xy, v_39.w);
  let v_40 = log2(r1.yz);
  let v_41 = r1;
  r1 = vec4<f32>(v_41.x, v_40.xy, v_41.w);
  let v_42 = (r1.yz * vec2<f32>(20.0f));
  let v_43 = r1;
  r1 = vec4<f32>(v_43.x, v_42.xy, v_43.w);
  let v_44 = exp2(r1.yz);
  let v_45 = r1;
  r1 = vec4<f32>(v_45.x, v_44.xy, v_45.w);
  r0.w = fma(r1.y, 0.25f, r1.z);
  r0.w = min(r0.w, 1.0f);
  let v_46 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(1.0f) >= abs(r2.zzwz).yz)));
  let v_47 = r1;
  r1 = vec4<f32>(v_47.x, v_46.xy, v_47.w);
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.y)));
  let v_48 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r0.zzz == vec3<f32>(0.0f, 1.0f, 2.0f))));
  r1 = vec4<f32>(r1.x, v_48.xyz);
  let v_49 = abs(r0.yyyy);
  r0.x = max(v_49.x, abs(r0.xxxx).x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.5f < r0.x)));
  let v_50 = select(vec3<f32>(1.0f, 0.0f, 1.0f), vec3<f32>(1.0f, 0.0f, 0.0f), (bitcast<vec3<u32>>(r1.www) != vec3<u32>()));
  r3 = vec4<f32>(v_50.xyz, r3.w);
  let v_51 = bitcast<vec3<u32>>(r1.zzz);
  let v_52 = select(r3.xyz, vec3<f32>(0.0f, 1.0f, 0.0f), (v_51 != vec3<u32>()));
  r3 = vec4<f32>(v_52.xyz, r3.w);
  let v_53 = bitcast<vec3<u32>>(r1.yyy);
  let v_54 = select(r3.xyz, vec3<f32>(0.0f, 0.0f, 1.0f), (v_53 != vec3<u32>()));
  r1 = vec4<f32>(r1.x, v_54.xyz);
  let v_55 = (r1.yzw * vec3<f32>(0.75f));
  r3 = vec4<f32>(v_55.xyz, r3.w);
  let v_56 = fma((-(r1.yzwy)).xyz, vec3<f32>(0.75f), vec3<f32>(1.0f));
  r4 = vec4<f32>(v_56.xyz, r4.w);
  let v_57 = fma(r0.www, r4.xyz, r3.xyz);
  r0 = vec4<f32>(r0.x, v_57.xyz);
  let v_58 = abs(r2.yyyy);
  r2.z = min(v_58.z, abs(r2.xxxx).z);
  let v_59 = abs(r2.yyyy);
  r2.x = max(v_59.x, abs(r2.xxxx).x);
  r2.x = log2(r2.x);
  let v_60 = (r2.xx * vec2<f32>(12.0f, 20.0f));
  r2 = vec4<f32>(v_60.xy, r2.zw);
  let v_61 = exp2(r2.xy);
  r2 = vec4<f32>(v_61.xy, r2.zw);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.z = log2(r2.z);
  r2.z = (r2.z * 200.0f);
  r2.z = exp2(r2.z);
  r2.z = fma((-(r2.zzzz)).z, 0.5f, 1.0f);
  let v_62 = (r0.yzw * r2.zzz);
  r0 = vec4<f32>(r0.x, v_62.xyz);
  let v_63 = fma((-(r0.yyzw)).yzw, cb12_12.tint_symbol_2[1u].www, r1.yzw);
  r1 = vec4<f32>(r1.x, v_63.xyz);
  let v_64 = (r0.yzw * cb12_12.tint_symbol_2[1u].www);
  r0 = vec4<f32>(r0.x, v_64.xyz);
  let v_65 = (r2.xy * cb12_12.tint_symbol_2[1u].zz);
  r2 = vec4<f32>(r2.xy, v_65.xy);
  let v_66 = fma((-(r2.xyxx)).xy, cb12_12.tint_symbol_2[1u].zz, vec2<f32>(1.0f));
  r2 = vec4<f32>(v_66.xy, r2.zw);
  let v_67 = fma(r2.zzz, r1.yzw, r0.yzw);
  r0 = vec4<f32>(r0.x, v_67.xyz);
  let v_68 = ((-(r0.yyzw)).yzw + vec3<f32>(1.0f));
  r1 = vec4<f32>(r1.x, v_68.xyz);
  let v_69 = fma(r2.www, r1.yzw, r0.yzw);
  r3 = vec4<f32>(v_69.xyz, r3.w);
  r0.y = ((-(cb12_12.tint_symbol_2[1u].wwww)).y + 1.0f);
  r0.y = fma((-(r0.yyyy)).y, r2.x, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r3.w = fma((-(r0.yyyy)).w, r2.y, 1.0f);
  let v_70 = bitcast<vec4<u32>>(r0.xxxx);
  r0 = select(r3, vec4<f32>(), (v_70 != vec4<u32>()));
  let v_71 = (r0.xyz + vec3<f32>(-1.0f));
  r1 = vec4<f32>(r1.x, v_71.xyz);
  let v_72 = fma(cb12_12.tint_symbol_2[3u].xxx, r1.yzw, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_72.xyz, r0.w);
  r0 = (r0 * v1.wwww);
  o0 = (r1.xxxx * r0);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
