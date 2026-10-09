diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb18_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t2, s2, v1.xyxx.xy);
  let v = (cb11_11.tint_symbol[7u].xyz + cb11_11.tint_symbol[8u].xyz);
  r1 = vec4<f32>(v.xyz, r1.w);
  let v_1 = (r0.xyz + r1.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = -(cb11_11.tint_symbol[9u].zzzz);
  r0.w = (r0.w + v_2.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f >= r0.w)));
  let v_3 = fma(r0.xy, vec2<f32>(0.0625f), v1.xy);
  let v_4 = r1;
  r1 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r2 = textureSample(t5, s5, r1.yzyy.xy);
  let v_5 = (r2.wzy + vec3<f32>(-0.5f));
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = (cb11_11.tint_symbol[5u].xyz * cb11_11.tint_symbol[10u].yyy);
  r1 = vec4<f32>(r1.x, v_6.xyz);
  let v_7 = fma(r1.yzw, r3.xxx, cb11_11.tint_symbol[6u].xyz);
  r4 = vec4<f32>(v_7.xyz, r4.w);
  let v_8 = (cb11_11.tint_symbol[4u].xyz * cb11_11.tint_symbol[10u].zzz);
  r5 = vec4<f32>(v_8.xyz, r5.w);
  let v_9 = fma(r5.xyz, r3.yyy, r4.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  r3 = vec4<f32>(vec2<f32>(), r3.z, 1.0f);
  let v_10 = (r3.zzw * cb11_11.tint_symbol[10u].www);
  r6 = vec4<f32>(v_10.xyz, r6.w);
  let v_11 = fma(r6.xyz, r3.xyz, r4.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = (r3.yy * cb11_11.tint_symbol[1u].xy);
  let v_13 = r2;
  r2 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  let v_14 = fma(r3.xx, cb11_11.tint_symbol[0u].xy, r2.yz);
  let v_15 = r2;
  r2 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  let v_16 = fma(r3.zz, cb11_11.tint_symbol[2u].xy, r2.yz);
  let v_17 = r2;
  r2 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  let v_18 = (r2.yz + cb11_11.tint_symbol[3u].xy);
  r4 = vec4<f32>(v_18.xy, r4.zw);
  r4.z = ((-(r4.yyyy)).z + 1.0f);
  r4 = textureSample(t4, s4, r4.xzxx.xy);
  if ((bitcast<u32>(r1.x) != 0u)) {
    r6 = textureSample(t5, s5, v1.xyxx.xy);
    let v_19 = -(cb11_11.tint_symbol[3u].zzzz);
    r1.x = (r4.x + v_19.x);
    r3.w = (r1.x / cb11_11.tint_symbol[2u].z);
    let v_20 = ((-(cb11_11.tint_symbol[12u].xyzx)).xyz + cb11_11.tint_symbol[13u].xyz);
    r4 = vec4<f32>(v_20.xyz, r4.w);
    let v_21 = fma(r4.xyz, r6.xyz, cb11_11.tint_symbol[12u].xyz);
    r4 = vec4<f32>(v_21.xyz, r4.w);
    r1.x = ((-(cb11_11.tint_symbol[11u].xxxx)).x + cb11_11.tint_symbol[11u].y);
    r0.w = fma(r1.x, r2.w, cb11_11.tint_symbol[11u].x);
    r1.x = max(r0.w, 0.0f);
    r2.x = clamp(((r2.xxxx + vec4<f32>(-0.00400000018998980522f))).x, 0.0f, 1.0f);
    let v_22 = r3;
    r0 = vec4<f32>(v_22.xyw, r0.w);
  } else {
    r4 = textureSample(t3, s3, v1.xyxx.xy);
    r2.x = fract(r4.w);
    r2.y = ((-(r2.xxxx)).y + r4.w);
    r2.y = (r2.y * cb11_11.tint_symbol[11u].y);
    r1.x = (r2.y * 0.0039215688593685627f);
  }
  let v_23 = fma(r4.xyz, cb11_11.tint_symbol[9u].zzz, r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = -(cb11_11.tint_symbol[6u].xxyz);
  let v_25 = (r0.xyz + v_24.yzw);
  r2 = vec4<f32>(r2.x, v_25.xyz);
  r3.x = dot(cb11_11.tint_symbol[5u].xyz, r2.yzw);
  r2.y = dot(cb11_11.tint_symbol[4u].xyz, r2.yzw);
  r2.z = (r3.x / cb11_11.tint_symbol[10u].y);
  r2.z = (r2.z + -0.5f);
  r2.z = ceil(r2.z);
  let v_26 = fma((-(r1.yyzw)).yzw, r2.zzz, r0.xyz);
  r1 = vec4<f32>(r1.x, v_26.xyz);
  r2.y = (r2.y / cb11_11.tint_symbol[10u].z);
  r2.y = (r2.y + -0.5f);
  r2.y = ceil(r2.y);
  let v_27 = fma((-(r5.zzxy)).xzw, r2.yyy, r1.wyz);
  r3 = vec4<f32>(v_27.x, r3.y, v_27.yz);
  let v_28 = ((-(r0.xyzx)).xyz + r3.zwx);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < r0.x)));
  r0.y = ((-(r0.wwww)).y + r1.x);
  r0.y = fma(r0.y, cb11_11.tint_symbol[9u].w, r0.w);
  let v_29 = bitcast<u32>(r0.x);
  let v_30 = r0.y;
  r5.z = select(r0.w, v_30, (v_29 != 0u));
  let v_31 = (r3.www * cb11_11.tint_symbol[1u].xyz);
  r0 = vec4<f32>(r0.x, v_31.xyz);
  let v_32 = fma(r3.zzz, cb11_11.tint_symbol[0u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_32.xyz);
  let v_33 = fma(r3.xxx, cb11_11.tint_symbol[2u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_33.xyz);
  let v_34 = (r0.yzw + cb11_11.tint_symbol[3u].xyz);
  r6 = vec4<f32>(v_34.xyz, r6.w);
  r6.w = ((-(r6.yyyy)).w + 1.0f);
  r7 = textureSample(t4, s4, r6.xwxx.xy);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r6.z < r7.x)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol[11u].z)));
  let v_35 = -(cb11_11.tint_symbol[3u].zzzz);
  r0.w = (r7.x + v_35.w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.y) == 0i)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) | bitcast<u32>(r0.y)));
  r5.x = (r0.w / cb11_11.tint_symbol[2u].z);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol[9u].w == 0.0f)));
  r0.w = ((-(r3.xxxx)).w + r5.x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (1.0f < r0.w)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f >= r7.x)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r1.y)));
  r1.y = (r3.x + 0.05000000074505805969f);
  r5.y = min(r5.x, r1.y);
  r3.y = 0.0f;
  let v_36 = bitcast<vec2<u32>>(r0.ww);
  let v_37 = r3.xy;
  let v_38 = select(r5.yz, v_37, (v_36 != vec2<u32>()));
  let v_39 = r1;
  r1 = vec4<f32>(v_39.x, v_38.xy, v_39.w);
  let v_40 = bitcast<vec2<u32>>(r0.yy);
  let v_41 = r5.xz;
  let v_42 = select(r1.yz, v_41, (v_40 != vec2<u32>()));
  let v_43 = r0;
  r0 = vec4<f32>(v_43.x, v_42.x, v_43.z, v_42.y);
  r5.w = r3.x;
  let v_44 = bitcast<vec2<u32>>(r0.xx);
  let v_45 = r0.yw;
  let v_46 = select(r5.wz, v_45, (v_44 != vec2<u32>()));
  r0 = vec4<f32>(v_46.xy, r0.zw);
  let v_47 = bitcast<vec2<u32>>(r0.zz);
  let v_48 = r5.xz;
  let v_49 = select(r0.xy, v_48, (v_47 != vec2<u32>()));
  r3 = vec4<f32>(v_49.xy, r3.zw);
  let v_50 = r0;
  r0 = vec4<f32>(v_50.x, vec2<f32>(), v_50.w);
  let v_51 = (cb11_11.tint_symbol[9u].zz * cb11_11.tint_symbol[9u].yx);
  r0 = vec4<f32>(v_51.x, r0.yz, v_51.y);
  let v_52 = (r0.yzw + r4.xyz);
  r0 = vec4<f32>(r0.x, v_52.xyz);
  let v_53 = (cb11_11.tint_symbol[14u].xyz + cb11_11.tint_symbol[15u].xyz);
  r1 = vec4<f32>(r1.x, v_53.xyz);
  let v_54 = (cb11_11.tint_symbol[9u].zz * cb11_11.tint_symbol[17u].yw);
  let v_55 = r2;
  r2 = vec4<f32>(v_55.x, v_54.xy, v_55.w);
  let v_56 = fma(r3.zw, cb11_11.tint_symbol[17u].xz, r2.yz);
  let v_57 = r2;
  r2 = vec4<f32>(v_57.x, v_56.xy, v_57.w);
  let v_58 = sin(r2.yyzy.yz);
  let v_59 = r2;
  r2 = vec4<f32>(v_59.x, v_58.xy, v_59.w);
  let v_60 = (r2.yz + vec2<f32>(1.0f));
  let v_61 = r2;
  r2 = vec4<f32>(v_61.x, v_60.xy, v_61.w);
  let v_62 = (r2.yz * cb11_11.tint_symbol[16u].xy);
  let v_63 = r2;
  r2 = vec4<f32>(v_63.x, v_62.xy, v_63.w);
  let v_64 = (r2.yz * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_64.xy, r4.zw);
  r4.z = cb11_11.tint_symbol[16u].z;
  let v_65 = (r1.yzw + r4.xyz);
  r1 = vec4<f32>(r1.x, v_65.xyz);
  let v_66 = fma(r3.zw, vec2<f32>(0.0625f), v1.xy);
  let v_67 = r2;
  r2 = vec4<f32>(v_67.x, v_66.xy, v_67.w);
  r4 = textureSample(t5, s5, r2.yzyy.xy);
  let v_68 = fma(r4.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r2 = vec4<f32>(r2.x, v_68.xyz);
  r4.x = dot(r2.yzw, r2.yzw);
  r4.x = inverseSqrt(r4.x);
  let v_69 = (r2.yzw * r4.xxx);
  r2 = vec4<f32>(r2.x, v_69.xyz);
  let v_70 = (r2.yzw * cb11_11.tint_symbol[14u].www);
  r2 = vec4<f32>(r2.x, v_70.xyz);
  let v_71 = fma(r2.yzw, cb11_11.tint_symbol[16u].www, r1.yzw);
  r1 = vec4<f32>(r1.x, v_71.xyz);
  let v_72 = ((-(r0.yyzw)).yzw + r1.yzw);
  r1 = vec4<f32>(r1.x, v_72.xyz);
  r0.x = clamp(r0.xxxx.x, 0.0f, 1.0f);
  let v_73 = fma(r1.yzw, r0.xxx, r0.yzw);
  o1 = vec4<f32>(v_73.xyz, o1.w);
  let v_74 = -(cb11_11.tint_symbol[7u].xyzx);
  let v_75 = (r3.zwx + v_74.xyz);
  o0 = vec4<f32>(v_75.xyz, o0.w);
  r0.x = (r1.x / cb11_11.tint_symbol[11u].y);
  r0.x = (r0.x * 255.0f);
  r0.x = ceil(r0.x);
  o1.w = (r2.x + r0.x);
  o0.w = r3.y;
}

struct tint_symbol_1 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v1);
  return tint_symbol_1(o0, o1);
}
