diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb1_struct;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = max(v0.xy, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r2 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), 0i);
  let v_4 = (r2.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r1 = vec4<f32>(r1.x, v_4.xyz);
  let v_5 = fract(r1.yzw);
  r1 = vec4<f32>(r1.x, v_5.xyz);
  let v_6 = fma((-(r1.zzyz)).yz, vec2<f32>(0.125f), r1.yz);
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = fma(r2.xyz, vec3<f32>(256.0f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_8.xyz);
  let v_9 = (r1.yzw + vec3<f32>(-128.0f));
  r1 = vec4<f32>(r1.x, v_9.xyz);
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = inverseSqrt(r2.x);
  let v_10 = (r1.yzw * r2.xxx);
  r1 = vec4<f32>(r1.x, v_10.xyz);
  r0.x = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r3 = (v0.xyxy + vec4<f32>(1.0f, 0.0f, -1.0f, 0.0f));
  let v_11 = max(r3.zwxy, vec4<f32>());
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(v_11), vec4<u32>(4294967295u), (v_11 >= vec4<f32>(4294967296.0f))));
  let v_12 = r3;
  r4 = vec4<f32>(v_12.zw, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r0.y = textureLoad(t12, bitcast<vec2<i32>>(r4.xy), 1i).x;
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r0.z = textureLoad(t12, bitcast<vec2<i32>>(r3.xy), 1i).x;
  r5 = (v0.xyxy + vec4<f32>(0.0f, 1.0f, 0.0f, -1.0f));
  let v_13 = max(r5.zwxy, vec4<f32>());
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(v_13), vec4<u32>(4294967295u), (v_13 >= vec4<f32>(4294967296.0f))));
  let v_14 = r5;
  r6 = vec4<f32>(v_14.zw, r6.zw);
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r0.w = textureLoad(t12, bitcast<vec2<i32>>(r6.xy), 0i).x;
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r2.x = textureLoad(t12, bitcast<vec2<i32>>(r5.xy), 0i).x;
  let v_15 = ((-(r0.yyzy)).yz + r1.xx);
  let v_16 = r0;
  r0 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  r2.y = bitcast<f32>(select(0u, 4294967295u, !((abs(r0.yyyy).y == 0.0f))));
  if ((bitcast<u32>(r2.y) != 0u)) {
    r7 = textureLoad(t8, bitcast<vec2<i32>>(r4.xy), 1i);
    let v_17 = (r7.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
    r8 = vec4<f32>(v_17.xyz, r8.w);
    let v_18 = fract(r8.xyz);
    r8 = vec4<f32>(v_18.xyz, r8.w);
    let v_19 = fma((-(r8.yxyy)).xy, vec2<f32>(0.125f), r8.xy);
    r8 = vec4<f32>(v_19.xy, r8.zw);
    let v_20 = fma(r7.xyz, vec3<f32>(256.0f), r8.xyz);
    r7 = vec4<f32>(v_20.xyz, r7.w);
    let v_21 = (r7.xyz + vec3<f32>(-128.0f));
    r7 = vec4<f32>(v_21.xyz, r7.w);
    r2.y = dot(r7.xyz, r7.xyz);
    r2.y = inverseSqrt(r2.y);
    let v_22 = (r2.yyy * r7.xyz);
    r7 = vec4<f32>(v_22.xyz, r7.w);
    r2.y = textureLoad(t9, bitcast<vec2<i32>>(r4.xy), 1i).x;
    let v_23 = abs(r0.yyyy);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].w < v_23.y)));
    r2.z = dot(r1.yzw, r7.xyz);
    r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < cb8_8.tint_symbol[0u].y)));
    r4.x = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r2.z)));
    let v_24 = -(r7.wwww);
    r4.y = (r2.w + v_24.y);
    let v_25 = abs(r4.yyyy);
    r4.y = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].z < v_25.y)));
    let v_26 = -(r2.yyyy);
    r2.y = (r0.x + v_26.y);
    let v_27 = abs(r2.yyyy);
    r2.y = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].z < v_27.y)));
    r4.z = bitcast<f32>((bitcast<u32>(r4.x) | bitcast<u32>(r2.y)));
    let v_28 = bitcast<u32>(r4.y);
    let v_29 = r4.z;
    r4.z = select(r4.x, v_29, (v_28 != 0u));
    r2.y = bitcast<f32>((bitcast<u32>(r2.y) & bitcast<u32>(r4.y)));
    r2.y = bitcast<f32>((bitcast<u32>(r4.z) & bitcast<u32>(r2.y)));
    let v_30 = bitcast<u32>(r2.z);
    let v_31 = r4.x;
    r2.y = select(r2.y, v_31, (v_30 != 0u));
    let v_32 = bitcast<u32>(r0.y);
    let v_33 = r0.y;
    r0.y = select(r2.y, v_33, (v_32 != 0u));
  } else {
    r0.y = 0.0f;
  }
  r2.y = bitcast<f32>(select(0u, 4294967295u, !((abs(r0.zzzz).y == 0.0f))));
  if ((bitcast<u32>(r2.y) != 0u)) {
    r4 = textureLoad(t8, bitcast<vec2<i32>>(r3.xy), 1i);
    let v_34 = (r4.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
    r7 = vec4<f32>(v_34.xyz, r7.w);
    let v_35 = fract(r7.xyz);
    r7 = vec4<f32>(v_35.xyz, r7.w);
    let v_36 = fma((-(r7.yxyy)).xy, vec2<f32>(0.125f), r7.xy);
    r7 = vec4<f32>(v_36.xy, r7.zw);
    let v_37 = fma(r4.xyz, vec3<f32>(256.0f), r7.xyz);
    r4 = vec4<f32>(v_37.xyz, r4.w);
    let v_38 = (r4.xyz + vec3<f32>(-128.0f));
    r4 = vec4<f32>(v_38.xyz, r4.w);
    r2.y = dot(r4.xyz, r4.xyz);
    r2.y = inverseSqrt(r2.y);
    let v_39 = (r2.yyy * r4.xyz);
    r4 = vec4<f32>(v_39.xyz, r4.w);
    r2.y = textureLoad(t9, bitcast<vec2<i32>>(r3.xy), 1i).x;
    let v_40 = abs(r0.zzzz);
    r0.z = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].w < v_40.z)));
    r2.z = dot(r1.yzw, r4.xyz);
    r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < cb8_8.tint_symbol[0u].y)));
    r3.x = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r2.z)));
    let v_41 = -(r4.wwww);
    r3.y = (r2.w + v_41.y);
    let v_42 = abs(r3.yyyy);
    r3.y = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].z < v_42.y)));
    let v_43 = -(r2.yyyy);
    r2.y = (r0.x + v_43.y);
    let v_44 = abs(r2.yyyy);
    r2.y = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].z < v_44.y)));
    r3.z = bitcast<f32>((bitcast<u32>(r3.x) | bitcast<u32>(r2.y)));
    let v_45 = bitcast<u32>(r3.y);
    let v_46 = r3.z;
    r3.z = select(r3.x, v_46, (v_45 != 0u));
    r2.y = bitcast<f32>((bitcast<u32>(r2.y) & bitcast<u32>(r3.y)));
    r2.y = bitcast<f32>((bitcast<u32>(r3.z) & bitcast<u32>(r2.y)));
    let v_47 = bitcast<u32>(r2.z);
    let v_48 = r3.x;
    r2.y = select(r2.y, v_48, (v_47 != 0u));
    let v_49 = bitcast<u32>(r0.z);
    let v_50 = r0.z;
    r0.z = select(r2.y, v_50, (v_49 != 0u));
  } else {
    r0.z = 0.0f;
  }
  let v_51 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r0.yz)));
  let v_52 = r0;
  r0 = vec4<f32>(v_52.x, v_51.xy, v_52.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.z = ((-(r0.wwww)).z + r1.x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((abs(r0.zzzz).w == 0.0f))));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r3 = textureLoad(t8, bitcast<vec2<i32>>(r6.xy), 0i);
    let v_53 = (r3.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
    r4 = vec4<f32>(v_53.xyz, r4.w);
    let v_54 = fract(r4.xyz);
    r4 = vec4<f32>(v_54.xyz, r4.w);
    let v_55 = fma((-(r4.yxyy)).xy, vec2<f32>(0.125f), r4.xy);
    r4 = vec4<f32>(v_55.xy, r4.zw);
    let v_56 = fma(r3.xyz, vec3<f32>(256.0f), r4.xyz);
    r3 = vec4<f32>(v_56.xyz, r3.w);
    let v_57 = (r3.xyz + vec3<f32>(-128.0f));
    r3 = vec4<f32>(v_57.xyz, r3.w);
    r0.w = dot(r3.xyz, r3.xyz);
    r0.w = inverseSqrt(r0.w);
    let v_58 = (r0.www * r3.xyz);
    r3 = vec4<f32>(v_58.xyz, r3.w);
    r0.w = textureLoad(t9, bitcast<vec2<i32>>(r6.xy), 0i).x;
    let v_59 = abs(r0.zzzz);
    r0.z = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].w < v_59.z)));
    r2.y = dot(r1.yzw, r3.xyz);
    r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.y < cb8_8.tint_symbol[0u].y)));
    r2.z = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r2.y)));
    let v_60 = -(r3.wwww);
    r3.x = (r2.w + v_60.x);
    let v_61 = abs(r3.xxxx);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].z < v_61.x)));
    r0.w = ((-(r0.wwww)).w + r0.x);
    let v_62 = abs(r0.wwww);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].z < v_62.w)));
    r3.y = bitcast<f32>((bitcast<u32>(r2.z) | bitcast<u32>(r0.w)));
    let v_63 = bitcast<u32>(r3.x);
    let v_64 = r3.y;
    r3.y = select(r2.z, v_64, (v_63 != 0u));
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r3.x)));
    r0.w = bitcast<f32>((bitcast<u32>(r3.y) & bitcast<u32>(r0.w)));
    let v_65 = bitcast<u32>(r2.y);
    let v_66 = r2.z;
    r0.w = select(r0.w, v_66, (v_65 != 0u));
    let v_67 = bitcast<u32>(r0.z);
    let v_68 = r0.z;
    r0.z = select(r0.w, v_68, (v_67 != 0u));
  } else {
    r0.z = 0.0f;
  }
  r0.z = bitcast<f32>(~(bitcast<u32>(r0.z)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  let v_69 = -(r2.xxxx);
  r0.z = (r1.x + v_69.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((abs(r0.zzzz).w == 0.0f))));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r3 = textureLoad(t8, bitcast<vec2<i32>>(r5.xy), 0i);
    let v_70 = (r3.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
    r2 = vec4<f32>(v_70.xyz, r2.w);
    let v_71 = fract(r2.xyz);
    r2 = vec4<f32>(v_71.xyz, r2.w);
    let v_72 = fma((-(r2.yxyy)).xy, vec2<f32>(0.125f), r2.xy);
    r2 = vec4<f32>(v_72.xy, r2.zw);
    let v_73 = fma(r3.xyz, vec3<f32>(256.0f), r2.xyz);
    r2 = vec4<f32>(v_73.xyz, r2.w);
    let v_74 = (r2.xyz + vec3<f32>(-128.0f));
    r2 = vec4<f32>(v_74.xyz, r2.w);
    r0.w = dot(r2.xyz, r2.xyz);
    r0.w = inverseSqrt(r0.w);
    let v_75 = (r0.www * r2.xyz);
    r2 = vec4<f32>(v_75.xyz, r2.w);
    r0.w = textureLoad(t9, bitcast<vec2<i32>>(r5.xy), 0i).x;
    let v_76 = abs(r0.zzzz);
    r0.z = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].w < v_76.z)));
    r1.x = dot(r1.yzw, r2.xyz);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < cb8_8.tint_symbol[0u].y)));
    r1.y = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r1.x)));
    let v_77 = -(r3.wwww);
    r1.z = (r2.w + v_77.z);
    let v_78 = abs(r1.zzzz);
    r1.z = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].z < v_78.z)));
    r0.x = ((-(r0.wwww)).x + r0.x);
    let v_79 = abs(r0.xxxx);
    r0.x = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].z < v_79.x)));
    r0.w = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r0.x)));
    let v_80 = bitcast<u32>(r1.z);
    let v_81 = r0.w;
    r0.w = select(r1.y, v_81, (v_80 != 0u));
    r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r1.z)));
    r0.x = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.x)));
    let v_82 = bitcast<u32>(r1.x);
    let v_83 = r1.y;
    r0.x = select(r0.x, v_83, (v_82 != 0u));
    let v_84 = bitcast<u32>(r0.z);
    let v_85 = r0.z;
    r0.x = select(r0.x, v_85, (v_84 != 0u));
  } else {
    r0.x = 0.0f;
  }
  r0.x = bitcast<f32>(~(bitcast<u32>(r0.x)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r0.y)));
  v_86((bitcast<u32>(r0.x) != 0u));
  o0 = vec4<f32>(1.0f);
}

fn v_86(v_87 : bool) {
  if (v_87) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_88 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_88);
  return o0;
}
