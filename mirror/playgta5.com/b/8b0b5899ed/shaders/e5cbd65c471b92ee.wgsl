diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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
  let v_2 = (cb11_11.tint_symbol[4u].yzx * cb11_11.tint_symbol[5u].zxy);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = -(r1.xyzx);
  let v_4 = fma(cb11_11.tint_symbol[5u].yzx, cb11_11.tint_symbol[4u].zxy, v_3.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_5 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = abs(r0.wwww);
  r0.w = (v_6.w + (-(cb11_11.tint_symbol[9u].zzzz)).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f >= r0.w)));
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol[10u].x)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.x)));
  let v_7 = fma(r0.xy, vec2<f32>(0.0625f), v1.xy);
  r2 = vec4<f32>(v_7.xy, r2.zw);
  r2 = textureSample(t5, s5, r2.xyxx.xy);
  if ((bitcast<u32>(r1.w) != 0u)) {
    r3 = textureSample(t5, s5, v1.xyxx.xy);
    r4 = (r2.xwzy + vec4<f32>(-0.00400000018998980522f, -0.5f, -0.5f, -0.5f));
    let v_8 = (cb11_11.tint_symbol[5u].xyz * cb11_11.tint_symbol[10u].yyy);
    r2 = vec4<f32>(v_8.xyz, r2.w);
    let v_9 = fma(r2.xyz, r4.yyy, cb11_11.tint_symbol[6u].xyz);
    r2 = vec4<f32>(v_9.xyz, r2.w);
    let v_10 = (cb11_11.tint_symbol[4u].xyz * cb11_11.tint_symbol[10u].zzz);
    r5 = vec4<f32>(v_10.xyz, r5.w);
    let v_11 = fma(r5.xyz, r4.zzz, r2.xyz);
    r2 = vec4<f32>(v_11.xyz, r2.w);
    let v_12 = (r1.xyz * cb11_11.tint_symbol[10u].www);
    r5 = vec4<f32>(v_12.xyz, r5.w);
    let v_13 = fma(r5.xyz, r4.www, r2.xyz);
    r0 = vec4<f32>(v_13.xyz, r0.w);
    let v_14 = ((-(cb11_11.tint_symbol[12u].xyzx)).xyz + cb11_11.tint_symbol[13u].xyz);
    r2 = vec4<f32>(v_14.xyz, r2.w);
    let v_15 = fma(r2.xyz, r3.xyz, cb11_11.tint_symbol[12u].xyz);
    r3 = vec4<f32>(v_15.xyz, r3.w);
    r1.w = ((-(cb11_11.tint_symbol[11u].xxxx)).w + cb11_11.tint_symbol[11u].y);
    r0.w = fma(r1.w, r2.w, cb11_11.tint_symbol[11u].x);
    r4.x = clamp(r4.xxxx.x, 0.0f, 1.0f);
    r1.w = r0.w;
  } else {
    r3 = textureSample(t3, s3, v1.xyxx.xy);
    r4.x = fract(r3.w);
    let v_16 = -(r4.xxxx);
    r2.x = (r3.w + v_16.x);
    r2.x = (r2.x * cb11_11.tint_symbol[11u].y);
    r1.w = (r2.x * 0.0039215688593685627f);
  }
  let v_17 = fma(r3.xyz, cb11_11.tint_symbol[9u].zzz, r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = -(cb11_11.tint_symbol[6u].xyzx);
  let v_19 = (r0.xyz + v_18.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r2.w = dot(cb11_11.tint_symbol[5u].xyz, r2.xyz);
  r3.w = dot(cb11_11.tint_symbol[4u].xyz, r2.xyz);
  r2.x = dot(r1.xyz, r2.xyz);
  let v_20 = (cb11_11.tint_symbol[5u].xyz * cb11_11.tint_symbol[10u].yyy);
  r4 = vec4<f32>(r4.x, v_20.xyz);
  let v_21 = (r2.xw / cb11_11.tint_symbol[10u].wy);
  r2 = vec4<f32>(v_21.xy, r2.zw);
  let v_22 = (r2.xy + vec2<f32>(-0.5f));
  r2 = vec4<f32>(v_22.xy, r2.zw);
  let v_23 = ceil(r2.xy);
  r2 = vec4<f32>(v_23.xy, r2.zw);
  let v_24 = fma((-(r4.yzwy)).xyz, r2.yyy, r0.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = (cb11_11.tint_symbol[4u].xyz * cb11_11.tint_symbol[10u].zzz);
  r2 = vec4<f32>(r2.x, v_25.xyz);
  r3.w = (r3.w / cb11_11.tint_symbol[10u].z);
  r3.w = (r3.w + -0.5f);
  r3.w = ceil(r3.w);
  let v_26 = fma((-(r2.yzwy)).xyz, r3.www, r0.xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = (r1.xyz * cb11_11.tint_symbol[10u].www);
  r1 = vec4<f32>(v_27.xyz, r1.w);
  let v_28 = fma((-(r1.xyzx)).xyz, r2.xxx, r0.xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = (r0.yyy * cb11_11.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_29.xyz, r1.w);
  let v_30 = fma(r0.xxx, cb11_11.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_30.xyz, r1.w);
  let v_31 = fma(r0.zzz, cb11_11.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_31.xyz, r1.w);
  let v_32 = (r1.xyz + cb11_11.tint_symbol[3u].xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  r2.w = ((-(r2.yyyy)).w + 1.0f);
  r5 = textureSample(t4, s4, r2.xwxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r2.z < r5.x)));
  r1.x = select(-1.0f, 1.0f, (bitcast<u32>(r1.x) != 0u));
  let v_33 = r2;
  r2 = vec4<f32>(v_33.x, vec2<f32>(), v_33.w);
  let v_34 = (cb11_11.tint_symbol[9u].zz * cb11_11.tint_symbol[9u].yx);
  r2 = vec4<f32>(v_34.x, r2.yz, v_34.y);
  let v_35 = (r2.yzw + r3.xyz);
  r2 = vec4<f32>(r2.x, v_35.xyz);
  let v_36 = (cb11_11.tint_symbol[14u].xyz + cb11_11.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_36.xyz, r3.w);
  let v_37 = (cb11_11.tint_symbol[9u].zz * cb11_11.tint_symbol[17u].yw);
  let v_38 = r1;
  r1 = vec4<f32>(v_38.x, v_37.xy, v_38.w);
  let v_39 = fma(r0.xy, cb11_11.tint_symbol[17u].xz, r1.yz);
  let v_40 = r1;
  r1 = vec4<f32>(v_40.x, v_39.xy, v_40.w);
  let v_41 = sin(r1.yyzy.yz);
  let v_42 = r1;
  r1 = vec4<f32>(v_42.x, v_41.xy, v_42.w);
  let v_43 = (r1.yz + vec2<f32>(1.0f));
  let v_44 = r1;
  r1 = vec4<f32>(v_44.x, v_43.xy, v_44.w);
  let v_45 = (r1.yz * cb11_11.tint_symbol[16u].xy);
  let v_46 = r1;
  r1 = vec4<f32>(v_46.x, v_45.xy, v_46.w);
  let v_47 = (r1.yz * vec2<f32>(0.5f));
  r5 = vec4<f32>(v_47.xy, r5.zw);
  r5.z = cb11_11.tint_symbol[16u].z;
  let v_48 = (r3.xyz + r5.xyz);
  r3 = vec4<f32>(v_48.xyz, r3.w);
  let v_49 = fma(r0.xy, vec2<f32>(0.0625f), v1.xy);
  let v_50 = r1;
  r1 = vec4<f32>(v_50.x, v_49.xy, v_50.w);
  r5 = textureSample(t5, s5, r1.yzyy.xy);
  let v_51 = fma(r5.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r4 = vec4<f32>(r4.x, v_51.xyz);
  r1.y = dot(r4.yzw, r4.yzw);
  r1.y = inverseSqrt(r1.y);
  let v_52 = (r1.yyy * r4.yzw);
  r4 = vec4<f32>(r4.x, v_52.xyz);
  let v_53 = (r4.yzw * cb11_11.tint_symbol[14u].www);
  r4 = vec4<f32>(r4.x, v_53.xyz);
  let v_54 = fma(r4.yzw, cb11_11.tint_symbol[16u].www, r3.xyz);
  r3 = vec4<f32>(v_54.xyz, r3.w);
  let v_55 = ((-(r2.yzwy)).xyz + r3.xyz);
  r3 = vec4<f32>(v_55.xyz, r3.w);
  r2.x = clamp(r2.xxxx.x, 0.0f, 1.0f);
  let v_56 = fma(r3.xyz, r2.xxx, r2.yzw);
  o1 = vec4<f32>(v_56.xyz, o1.w);
  let v_57 = -(cb11_11.tint_symbol[7u].xyzx);
  let v_58 = (r0.xyz + v_57.xyz);
  o0 = vec4<f32>(v_58.xyz, o0.w);
  o0.w = (r0.w * r1.x);
  r0.x = (r1.w / cb11_11.tint_symbol[11u].y);
  r0.x = (r0.x * 255.0f);
  r0.x = ceil(r0.x);
  o1.w = (r4.x + r0.x);
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
